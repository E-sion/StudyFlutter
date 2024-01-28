import 'package:flutter/material.dart';

// 用来接受命名参数变量的页面
//  1. 先配置接受函数
//  2. widget.arguments 即可输出传递值

class Change extends StatefulWidget {
  final Map arguments;
  // 1. 配置接受函数
  const Change({super.key,required this.arguments });

  @override
  _ChangeState createState() {
    return _ChangeState();
  }
}

class _ChangeState extends State<Change> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        // 2. 可以直接调用传递过来的数值,widget.arguments
        child: Text('${widget.arguments['Text']}'),
      ),
    );
  }
}