import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text('Push Button学习')),
      body: PushButton(),
      ),
    )
  );
}

class PushButton extends StatelessWidget{
  const PushButton({super.key});


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment:MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
            onPressed: (){
              print('普通按钮被点击');
            },
            child: const Text('普通按钮')),

          ElevatedButton.icon( // 带图标的按钮，使用label替代child
              onPressed: (){},
              icon: const Icon(Icons.send),
              label: const Text('发送')),

          TextButton(
              onPressed: (){},
              child: Text('TextButton组件，默认背景透明并不带阴影。按下后，会有背景色')
          )
        ],
      ),
    );
  }
}