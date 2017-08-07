package cn.itcast.utils;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.beanutils.ConvertUtils;
import org.apache.commons.beanutils.Converter;

import javax.servlet.http.HttpServletRequest;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;
import java.util.UUID;

public class WebUtils {
    public static <T> T request2Bean(HttpServletRequest request, Class<T> beanClass) {
        try {
            T bean = beanClass.newInstance();
            //得到request里面所有数据
            Map map = request.getParameterMap();
            ConvertUtils.register(new Converter() {
                public Object convert(Class Type, Object value) {
                    if (value == null) {
                        return null;
                    }
                    String str = (String) value;
                    if (str.trim().equals("")) {
                        return null;
                    }
                    SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
                    try {
                        return df.parse(str);
                    } catch (ParseException e) {
                        throw new RuntimeException(e);
                    }
                }

            }, Date.class);
            BeanUtils.populate(bean, map);//map里的数据填充到bean里去
            return bean;

        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    //产生唯一ID
    public static String genarateID() {
        return UUID.randomUUID().toString();
    }

}
