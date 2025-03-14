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


import com.dao.DiscusszaixianshangchengDao;
import com.entity.DiscusszaixianshangchengEntity;
import com.service.DiscusszaixianshangchengService;
import com.entity.vo.DiscusszaixianshangchengVO;
import com.entity.view.DiscusszaixianshangchengView;

@Service("discusszaixianshangchengService")
public class DiscusszaixianshangchengServiceImpl extends ServiceImpl<DiscusszaixianshangchengDao, DiscusszaixianshangchengEntity> implements DiscusszaixianshangchengService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<DiscusszaixianshangchengEntity> page = this.selectPage(
                new Query<DiscusszaixianshangchengEntity>(params).getPage(),
                new EntityWrapper<DiscusszaixianshangchengEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<DiscusszaixianshangchengEntity> wrapper) {
		  Page<DiscusszaixianshangchengView> page =new Query<DiscusszaixianshangchengView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<DiscusszaixianshangchengVO> selectListVO(Wrapper<DiscusszaixianshangchengEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public DiscusszaixianshangchengVO selectVO(Wrapper<DiscusszaixianshangchengEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<DiscusszaixianshangchengView> selectListView(Wrapper<DiscusszaixianshangchengEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public DiscusszaixianshangchengView selectView(Wrapper<DiscusszaixianshangchengEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
