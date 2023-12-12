import 'package:flutter/material.dart';

// 之前学习的都是Colum函数，垂直排列元素 Row为横向排列元素
void main(){
  runApp(MaterialApp(
    home:Scaffold(
      appBar: AppBar(title: const Text("Row横线排列学习")),
      body: Container(
          height: double.infinity, //double.infinity 表示一个无穷大的数值，这里设置宽高无穷大的意思是让整个屏幕都占满本组件
          width: double.infinity,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween, // 设置对齐方式
              // MainAxisAlignment.start 从左边对齐，无空隙
              // MainAxisAlignment.spaceEvenly 居中对齐，中间有空隙
              // MainAxisAlignment.spaceBetween 左右边无间距
              // MainAxisAlignment.end 从右边对齐，无空隙
              // MainAxisAlignment.center 居中对齐，无空隙

              crossAxisAlignment:CrossAxisAlignment.center, // 设置Row相对于外面容器的对齐方式
              // 在Row外面再嵌套一个Container ,此时再设置crossAxisAlignment的数值，那么就是可以数值本Row在Container里面的对齐显示

              children:[
                initList(Colors.red,Icons.dark_mode),
                initList(Colors.blue,Icons.assistant_direction_outlined),
                initList(Colors.yellow,Icons.call_made_outlined),
            ]
        ),
        )
      )
    )
  );
}


// 动态组件，显示方形组件
class initList extends StatelessWidget{

  Color colorBox;
  Color colorIcon;
  IconData iconName;

  initList(this.colorBox,this.iconName,{super.key,this.colorIcon=Colors.black});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // 自定义输入显示方框内容
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        color:colorBox,
      ),
      child:Icon(iconName,color:colorIcon)
    );
  }
}