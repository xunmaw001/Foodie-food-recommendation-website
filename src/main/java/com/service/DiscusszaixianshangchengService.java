package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.DiscusszaixianshangchengEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.DiscusszaixianshangchengVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.DiscusszaixianshangchengView;


/**
 * 在线商城评论表
 *
 * @author 
 * @email 
 * @date 2021-01-29 09:04:13
 */
public interface DiscusszaixianshangchengService extends IService<DiscusszaixianshangchengEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<DiscusszaixianshangchengVO> selectListVO(Wrapper<DiscusszaixianshangchengEntity> wrapper);
   	
   	DiscusszaixianshangchengVO selectVO(@Param("ew") Wrapper<DiscusszaixianshangchengEntity> wrapper);
   	
   	List<DiscusszaixianshangchengView> selectListView(Wrapper<DiscusszaixianshangchengEntity> wrapper);
   	
   	DiscusszaixianshangchengView selectView(@Param("ew") Wrapper<DiscusszaixianshangchengEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<DiscusszaixianshangchengEntity> wrapper);
   	
}

