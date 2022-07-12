//package com.controller;
//
//import java.io.File;
//import java.io.IOException;
//import java.util.UUID;
//
//public class uploadServlet {
//    public static String fileFolder = "/Users/zhangyunpeng/Downloads/public/";
//    @RequestParam("file") MultipartFile multipartFile
//    public void upload(MultipartFile multipartFile) throws IOException {
//    //获取原始⽂件名
//        String baseFileName = multipartFile.getOriginalFilename();
//        //通过字符串截取最后⼀个.来获取⽂件后缀
//        String ext = baseFileName.substring(baseFileName.lastIndexOf("."));
//        //⽣成随机⽂件名防⽌同名⽂件覆盖
//        String newFileName = UUID.randomUUID().toString()+ext;
//        //创建⽂件对象
//        File f = new File(fileFolder+newFileName);
//        //将⽂件转存到我们创建的静态资源⽂件夹中
//        multipartFile.transferTo(f);
//        return null;
//    }
//}
