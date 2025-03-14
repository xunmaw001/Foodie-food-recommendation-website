package com.dao;

import com.entity.DiscussmeishifenxiangEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.DiscussmeishifenxiangVO;
import com.entity.view.DiscussmeishifenxiangView;


/**
 * 美食分享评论表
 * 
 * @author 
 * @email 
 * @date 2021-01-29 09:04:13
 */
public interface DiscussmeishifenxiangDao extends BaseMapper<DiscussmeishifenxiangEntity> {
	
	List<DiscussmeishifenxiangVO> selectListVO(@Param("ew") Wrapper<DiscussmeishifenxiangEntity> wrapper);
	
	DiscussmeishifenxiangVO selectVO(@Param("ew") Wrapper<DiscussmeishifenxiangEntity> wrapper);
	
	List<DiscussmeishifenxiangView> selectListView(@Param("ew") Wrapper<DiscussmeishifenxiangEntity> wrapper);

	List<DiscussmeishifenxiangView> selectListView(Pagination page,@Param("ew") Wrapper<DiscussmeishifenxiangEntity> wrapper);
	
	DiscussmeishifenxiangView selectView(@Param("ew") Wrapper<DiscussmeishifenxiangEntity> wrapper);
	
}
