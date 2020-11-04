import 'package:flutter/cupertino.dart';
import 'package:flutter_plugin_baseframwork/base_framework/utils/platform_utils.dart';
import 'package:package_info/package_info.dart';

/*
 *应用的缓存
 *@author zln
 *create at 2020/10/27 下午5:46
 */
class AppCacheModel extends ChangeNotifier{

  //以下只是DEMO 演示，
  PackageInfo packageInfo;
  String appVersion;
  String buildNum;

  AppCacheModel(){
    ///这里只是demo使用
    initAppInfo();
  }


  initAppInfo()async{
    packageInfo = await PlatformUtils.getAppPackageInfo();
    appVersion = await PlatformUtils.getAppVersion();
    buildNum = await PlatformUtils.getBuildNum();
  }


}