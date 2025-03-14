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


import com.dao.DiscussmeishifenxiangDao;
import com.entity.DiscussmeishifenxiangEntity;
import com.service.DiscussmeishifenxiangService;
import com.entity.vo.DiscussmeishifenxiangVO;
import com.entity.view.DiscussmeishifenxiangView;

@Service("discussmeishifenxiangService")
public class DiscussmeishifenxiangServiceImpl extends ServiceImpl<DiscussmeishifenxiangDao, DiscussmeishifenxiangEntity> implements DiscussmeishifenxiangService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<DiscussmeishifenxiangEntity> page = this.selectPage(
                new Query<DiscussmeishifenxiangEntity>(params).getPage(),
                new EntityWrapper<DiscussmeishifenxiangEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<DiscussmeishifenxiangEntity> wrapper) {
		  Page<DiscussmeishifenxiangView> page =new Query<DiscussmeishifenxiangView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<DiscussmeishifenxiangVO> selectListVO(Wrapper<DiscussmeishifenxiangEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public DiscussmeishifenxiangVO selectVO(Wrapper<DiscussmeishifenxiangEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<DiscussmeishifenxiangView> selectListView(Wrapper<DiscussmeishifenxiangEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public DiscussmeishifenxiangView selectView(Wrapper<DiscussmeishifenxiangEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
