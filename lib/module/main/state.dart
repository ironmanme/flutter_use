import 'package:flutter/material.dart';
import 'package:flutter_use/app/utils/ui/keep_alive_page.dart';
import 'package:flutter_use/bean/common/btn_info.dart';
import 'package:flutter_use/module/example/view.dart';
import 'package:flutter_use/module/function/view.dart';
import 'package:flutter_use/module/setting/view.dart';
import 'package:get/get.dart';

class MainState {
  ///选择index - 响应式
  RxInt selectedIndex;

  ///控制是否展开 - 响应式
  RxBool isUnfold;

  ///分类按钮数据源
  List<BtnInfo> list;

  ///Navigation的item信息
  List<BtnInfo> itemList;

  ///PageView页面
  List<Widget> pageList;
  PageController pageController;

  MainState() {
    //初始化index
    selectedIndex = 0.obs;
    //默认不展开
    isUnfold = false.obs;
    //PageView页面
    pageList = [
      keepAliveWrapper(FunctionPage()),
      keepAliveWrapper(ExamplePage()),
      keepAliveWrapper(SettingPage()),
    ];
    //item栏目
    itemList = [
      BtnInfo(
        title: "功能",
        icon: Icon(Icons.bubble_chart),
      ),
      BtnInfo(
        title: "范例",
        icon: Icon(Icons.opacity),
      ),
      BtnInfo(
        title: "设置",
        icon: Icon(Icons.settings),
      ),
    ];
    //页面控制器
    pageController = PageController();
  }
}
