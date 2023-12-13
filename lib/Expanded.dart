import 'package:flutter/material.dart';

// 结构目录图: main->runAPP->MaterialApp->home/title...->Scaffold->appBar/body...
// 第二层，可以额外进行定义处理的组件结构StatelessWidget；
// class name extends StatelessWidget 定义好一个组件的类，然后再深度自定义内容
// Center->child（单个子界面）->Container(设置一个容器)->(自定义容器内部的参数)->容器内新建child—>Text/OR MORE...

void main(){
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: const Text('Expanded弹性布局学习')),
      body: const FlexExample(),
      ),
    )
  );
}

// 弹性布局也就是可以在一个补一句里面详细设定单个组件的占比大小
// 在Row横向布局或者Column纵向布局里面添加Expanded组件，再设置Flex的值

class FlexExample extends StatelessWidget{
  const FlexExample({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(    // SizeBox 用于设置内部组件的大小
      height: 150,
      width: double.infinity,
      child: Row(
        children: [
          Expanded(
            flex: 2, // 占两份大小
            child: Image.network('https://s2.loli.net/2023/09/12/kcprXWNbOvw9iKh.png')
          ),
          Column(  // 以横排排列的情况下添加一个竖行
           children: [
              Expanded(
                  flex: 1,  // 一份大小
                  child: Image.network('https://s2.loli.net/2023/09/12/kcprXWNbOvw9iKh.png')
              ),
              Expanded(
                flex: 1, // 一份大小
                child: Image.network('https://s2.loli.net/2023/09/12/kcprXWNbOvw9iKh.png')
              )
           ]
          )
        ]
      )
    );
  }
}