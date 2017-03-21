package party.chenshuangjzh.controller;

import party.chenshuangjzh.controller.base.BaseController;
import party.chenshuangjzh.pojo.Picture;
import party.chenshuangjzh.service.PictureService;
import party.chenshuangjzh.util.picture.QiniuUpload;
import party.chenshuangjzh.util.picture.UploadBatch;
import party.chenshuangjzh.util.properties.PropertyUtil;
import com.qiniu.common.QiniuException;
import com.qiniu.storage.model.FileInfo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import javax.inject.Inject;
import java.util.List;

/**
 * Created by ninemax-jzh on 2015/12/25.
 */
@Controller
@RequestMapping("/picture/")
public class PictureController extends BaseController {

    @Inject
    private PictureService pictureService;

    @RequestMapping(value = "search",method = RequestMethod.GET)
    public String search(Model model,@RequestParam String q){
        List<Picture> pictureList = pictureService.search(q);
        model.addAttribute("pictureList",pictureList);
        return "picture/home";
    }

    @RequestMapping(value = "all",method = RequestMethod.GET)
    public String getAll(Model model){
        List<Picture> pictureList = pictureService.findAll();
        model.addAttribute("pictureList",pictureList);
        return "picture/home";
    }

    @RequestMapping(value = "uploadPctures",method = RequestMethod.GET)
    public void uploadPictures(){
        String pictureLocation = PropertyUtil.getPropertyValue("picture.properties","location");
        if(pictureLocation != null){
            UploadBatch uploadBatch = new UploadBatch(pictureLocation);
            try {
                uploadBatch.batchUpload();
            } catch (QiniuException e) {
                e.printStackTrace();
            }
        }
    }

    @RequestMapping(value = "saveFromQiniu",method = RequestMethod.GET)
    public void savePictureFromQiniu(){
        QiniuUpload qiniuUpload = new QiniuUpload();
        FileInfo[] fileInfos = qiniuUpload.getFileInfos("chenshuangjzh","IMG");
        List<Picture> pictureList = qiniuUpload.transfromFileInfo2Picture(fileInfos);
        if (pictureList != null && pictureList.size() != 0){
            for (Picture picture : pictureList){
                pictureService.save(picture);
            }
        }
    }

    @RequestMapping(value = "correctPictureTime",method = RequestMethod.GET)
    public void correctPictureTime(){
        pictureService.correctUploadTime();
    }

    @RequestMapping(value = "fillPictureWH",method = RequestMethod.GET)
    public void fillPictureWH(){
        pictureService.fillWH();
    }
}
