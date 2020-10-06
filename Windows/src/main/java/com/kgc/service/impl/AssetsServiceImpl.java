package com.kgc.service.impl;

import com.kgc.entity.Assets;
import com.kgc.entity.AssetsExample;
import com.kgc.mapper.AssetsMapper;
import com.kgc.service.AssetsService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
@Service("assetsService")
public class AssetsServiceImpl implements AssetsService {
    @Resource
    AssetsMapper assetsMapper;

    @Override
    public List<Assets> selectAll(String assetid, String assettype) {
        AssetsExample example = new AssetsExample();
        AssetsExample.Criteria criteria = example.createCriteria();
        if (assetid!=""&&assettype != ""){
            criteria.andAssetidLike("%"+assetid+"%");
          /*  criteria.andAssetidEqualTo(assetid);*/
        }
        if (assettype != "") {
           /* criteria.andAssettypeLike("%"+assettype+"%");*/
            criteria.andAssettypeEqualTo(assettype);
        }
        List<Assets> assets=assetsMapper.selectByExample(example);
        return assets;
    }
    @Override
    public void insert(Assets assets) {
        assetsMapper.insert(assets);
    }
}
