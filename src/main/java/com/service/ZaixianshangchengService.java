package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.ZaixianshangchengEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.ZaixianshangchengVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.ZaixianshangchengView;


/**
 * 在线商城
 *
 * @author 
 * @email 
 * @date 2021-01-29 09:04:13
 */
public interface ZaixianshangchengService extends IService<ZaixianshangchengEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<ZaixianshangchengVO> selectListVO(Wrapper<ZaixianshangchengEntity> wrapper);
   	
   	ZaixianshangchengVO selectVO(@Param("ew") Wrapper<ZaixianshangchengEntity> wrapper);
   	
   	List<ZaixianshangchengView> selectListView(Wrapper<ZaixianshangchengEntity> wrapper);
   	
   	ZaixianshangchengView selectView(@Param("ew") Wrapper<ZaixianshangchengEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<ZaixianshangchengEntity> wrapper);
   	
}

