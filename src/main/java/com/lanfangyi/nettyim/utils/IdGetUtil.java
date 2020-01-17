package com.lanfangyi.nettyim.utils;

import java.util.concurrent.atomic.AtomicInteger;

/**
 * @author lanfangyi@haodf.com
 * @version 1.0
 * @since 2019/8/4 12:39 AM
 */
public class IdGetUtil {

    private static AtomicInteger atomicInteger = new AtomicInteger();

    private static String getRandomNum() {
        long randomNum = atomicInteger.getAndIncrement();
        //同一毫秒内，最大并发值
        int max = 99999;
        if (randomNum == max) {
            atomicInteger.set(0);
        }
        //补全长度
        int intMaxLength = 5;
        int len = intMaxLength - String.valueOf(randomNum).length();
        StringBuilder zeroStr = new StringBuilder();
        for (int i = 0; i < len; i++) {
            zeroStr.append("0");
        }
        return zeroStr.append(randomNum).toString();
    }

    /**
     * 最大并发：99999，大于此并发量，会导致出现重复id
     */
    public static long get() {
        return Long.valueOf(System.currentTimeMillis() + getRandomNum());
    }
}
