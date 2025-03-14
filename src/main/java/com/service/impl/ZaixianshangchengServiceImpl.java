package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.ZaixianshangchengDao;
import com.entity.ZaixianshangchengEntity;
import com.service.ZaixianshangchengService;
import com.entity.vo.ZaixianshangchengVO;
import com.entity.view.ZaixianshangchengView;

@Service("zaixianshangchengService")
public class ZaixianshangchengServiceImpl extends ServiceImpl<ZaixianshangchengDao, ZaixianshangchengEntity> implements ZaixianshangchengService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<ZaixianshangchengEntity> page = this.selectPage(
                new Query<ZaixianshangchengEntity>(params).getPage(),
                new EntityWrapper<ZaixianshangchengEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<ZaixianshangchengEntity> wrapper) {
		  Page<ZaixianshangchengView> page =new Query<ZaixianshangchengView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<ZaixianshangchengVO> selectListVO(Wrapper<ZaixianshangchengEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public ZaixianshangchengVO selectVO(Wrapper<ZaixianshangchengEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<ZaixianshangchengView> selectListView(Wrapper<ZaixianshangchengEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public ZaixianshangchengView selectView(Wrapper<ZaixianshangchengEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
