package com.sunshine.springbootinit.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.sunshine.springbootinit.model.entity.Chart;
import com.sunshine.springbootinit.service.ChartService;
import com.sunshine.springbootinit.mapper.ChartMapper;
import org.springframework.stereotype.Service;

/**
* @author ZhangJw
* @description 针对表【chart(图表信息表)】的数据库操作Service实现
* @createDate 2024-03-10 10:05:41
*/
@Service
public class ChartServiceImpl extends ServiceImpl<ChartMapper, Chart>
    implements ChartService{

}




