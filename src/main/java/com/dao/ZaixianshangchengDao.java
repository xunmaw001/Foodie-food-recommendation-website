package com.dao;

import com.entity.ZaixianshangchengEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.ZaixianshangchengVO;
import com.entity.view.ZaixianshangchengView;


/**
 * 在线商城
 * 
 * @author 
 * @email 
 * @date 2021-01-29 09:04:13
 */
public interface ZaixianshangchengDao extends BaseMapper<ZaixianshangchengEntity> {
	
	List<ZaixianshangchengVO> selectListVO(@Param("ew") Wrapper<ZaixianshangchengEntity> wrapper);
	
	ZaixianshangchengVO selectVO(@Param("ew") Wrapper<ZaixianshangchengEntity> wrapper);
	
	List<ZaixianshangchengView> selectListView(@Param("ew") Wrapper<ZaixianshangchengEntity> wrapper);

	List<ZaixianshangchengView> selectListView(Pagination page,@Param("ew") Wrapper<ZaixianshangchengEntity> wrapper);
	
	ZaixianshangchengView selectView(@Param("ew") Wrapper<ZaixianshangchengEntity> wrapper);
	
}
