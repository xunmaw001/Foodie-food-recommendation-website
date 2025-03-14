package com.dao;

import com.entity.DiscusszaixianshangchengEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.DiscusszaixianshangchengVO;
import com.entity.view.DiscusszaixianshangchengView;


/**
 * 在线商城评论表
 * 
 * @author 
 * @email 
 * @date 2021-01-29 09:04:13
 */
public interface DiscusszaixianshangchengDao extends BaseMapper<DiscusszaixianshangchengEntity> {
	
	List<DiscusszaixianshangchengVO> selectListVO(@Param("ew") Wrapper<DiscusszaixianshangchengEntity> wrapper);
	
	DiscusszaixianshangchengVO selectVO(@Param("ew") Wrapper<DiscusszaixianshangchengEntity> wrapper);
	
	List<DiscusszaixianshangchengView> selectListView(@Param("ew") Wrapper<DiscusszaixianshangchengEntity> wrapper);

	List<DiscusszaixianshangchengView> selectListView(Pagination page,@Param("ew") Wrapper<DiscusszaixianshangchengEntity> wrapper);
	
	DiscusszaixianshangchengView selectView(@Param("ew") Wrapper<DiscusszaixianshangchengEntity> wrapper);
	
}
