package party.chenshuangjzh.service;

import party.chenshuangjzh.dao.WritingDao;
import org.springframework.transaction.annotation.Transactional;

import javax.inject.Inject;
import javax.inject.Named;

/**
 * Created by ninemax-jzh on 2016/1/29.
 */
@Named
@Transactional
public class WritingService {
    @SuppressWarnings("unused")
	@Inject
    private WritingDao writingDao;
}
