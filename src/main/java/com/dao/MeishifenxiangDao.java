package com.dao;

import com.entity.MeishifenxiangEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.MeishifenxiangVO;
import com.entity.view.MeishifenxiangView;


/**
 * 美食分享
 * 
 * @author 
 * @email 
 * @date 2021-01-29 09:04:13
 */
public interface MeishifenxiangDao extends BaseMapper<MeishifenxiangEntity> {
	
	List<MeishifenxiangVO> selectListVO(@Param("ew") Wrapper<MeishifenxiangEntity> wrapper);
	
	MeishifenxiangVO selectVO(@Param("ew") Wrapper<MeishifenxiangEntity> wrapper);
	
	List<MeishifenxiangView> selectListView(@Param("ew") Wrapper<MeishifenxiangEntity> wrapper);

	List<MeishifenxiangView> selectListView(Pagination page,@Param("ew") Wrapper<MeishifenxiangEntity> wrapper);
	
	MeishifenxiangView selectView(@Param("ew") Wrapper<MeishifenxiangEntity> wrapper);
	
}
