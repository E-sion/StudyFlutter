import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text('Push Button学习')),
      body: PushButton(),
    ),
  ));
}

class PushButton extends StatelessWidget {
  const PushButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
              onPressed: () {
                print('普通按钮被点击');
              },
              child: const Text('普通按钮')),

          ElevatedButton.icon(
              // 带图标的按钮，使用label替代child
              onPressed: () {},
              icon: const Icon(Icons.send),
              label: const Text('发送')),

          TextButton(
              onPressed: () {},
              child: const Text('TextButton组件，默认背景透明并不带阴影。按下后，会有背景色')),

          OutlinedButton(child: Text("边框按钮"), onPressed: () {}),

          //IconButton 是一个可点击的Icon，不包括文字，默认没有背景，点击后会出现背景
          IconButton(
            icon: const Icon(Icons.thumb_up),
            onPressed: () {},
          ),

          // 使用SizedBox自定义按钮的大小
          SizedBox(
            height: 80,
            width: 200,
            child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red),
                  foregroundColor: MaterialStateProperty.all(Colors.black)),
              onPressed: () {},
              child: const Text('宽度高度'),
            ),
          ),

          // 自适应按钮
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Container(
                  height: 60,
                  margin: const EdgeInsets.all(10),
                  child: ElevatedButton(
                    child: const Text('自适应按钮'),
                    onPressed: () {
                      print("自适应按钮");
                    },
                  ),
                ),
              )
            ],
          ),

          // 圆角按钮
          ElevatedButton(
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Colors.blue), // 设置背景颜色
                foregroundColor:
                    MaterialStateProperty.all(Colors.white), // 设置字体颜色
                elevation:
                    MaterialStateProperty.all(20), // 阴影范围 shadowColor为设置阴影颜色
                shape: MaterialStateProperty.all(// shape为设置按钮形状
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
              onPressed: () {
                print("圆角按钮");
              },
              child: const Text('圆角')),

          Container(
            height: 80,
            child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue),
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                    elevation: MaterialStateProperty.all(20),
                    shape: MaterialStateProperty.all(
                      const CircleBorder(
                          side: BorderSide(
                              color: Colors.white)), // CircleBorder设置圆形的按钮
                    )),
                onPressed: () {
                  print("圆形按钮");
                },
                child: const Text('圆形按钮')),
          ),

          // 设置边框  side
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(20),
                  height: 50,
                  child: OutlinedButton(
                      style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all(Colors.black),
                          side: MaterialStateProperty.all(
                              const BorderSide(width: 1, color: Colors.red))),
                      onPressed: () {},
                      child: const Text("注册 配置边框")),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
