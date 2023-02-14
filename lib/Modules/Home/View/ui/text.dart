import 'package:demo/Modules/Home/View/ui/CommonUI/DText.dart';
import 'package:flutter/material.dart';

class UITextPage extends StatefulWidget {
  const UITextPage({super.key});

  @override
  State<UITextPage> createState() => _UITextPage();
}

class _UITextPage extends State<UITextPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text("Text"),
        ),
        body: ListView(
          padding: const EdgeInsets.only(left: 10, top: 20, right: 10),
          children: const [
            Text("Text 封装使用\n",
                style: TextStyle(fontSize: 25, color: Colors.blue)),
            DText(
                text:
                    "这是封装后的文本这是封装后的文本这是封装后的文本这是封装后的文本这是封装后的文本这是封装后的文本这是封装后的文本这是封装后的文本这是封装后的文本这是封装后的文本这是封装后的文本这是封装后的文本这是封装后的文本这是封装后的文本这是封装后的文本这是封装后的文本这是封装后的文本这是封装后的文本这是封装后的文本的文本这是封装后的文本这是封装的文本这是封装后的文本这是封装这是封装后的文本这是封装后的文本这是封装后的文本这是封装后的文本这是封装后的文本这是封装后的文本这是封装后的文本这是封装后的文本这是封装后的文本这是封装后的文本这是封装后的文本",
                maxLines: 3,
                fontSize: 20,
                color: Colors.tealAccent),
            Text("\nTextStyle常用属性配置\n",
                style: TextStyle(fontSize: 25, color: Colors.blue)),
            Text(
                "1. color 字体颜色,\n2. backgroundColor 背景颜色,\n3. fontSize 字体大小,\n4. fontWeight 字体粗细,\n5. this.fontStyle 字体样式,\n6. letterSpacing 字符间距,\n7. wordSpacing 词组间距,\n8. textBaseline 字符基线,\n9. height 字体高度,\n10. decoration 划线位置,\n11. decorationColor 划线颜色,\n12. decorationStyle 划线样式,\n13. decorationThickness 划线高度\n",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.red,
                  fontWeight: FontWeight.normal,
                )),
            Text(
                "abcdfeghiklmnpqretuvwxyz, ABCDEFGHIJKLMNOPQRSTUVWXYZ 1234567890 2月10日 华亭市委常委、宣传部部长海英主持召开全市2023年第一季度新闻宣传工作调度会，动员全市上下树牢宣传工作“一盘棋”思想，唱响主旋律、打好主动仗，为奋力加快社会主义现代化绿色活力魅力实力幸福新华亭建设进程提供更加强大的精神动力、思想保证和舆论支持。",
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Courier",
                  fontStyle: FontStyle.normal,
                  letterSpacing: 10,
                  textBaseline: TextBaseline.alphabetic,
                  wordSpacing: 100,
                  height: 0,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.red,
                  decorationStyle: TextDecorationStyle.dotted,
                  decorationThickness: 3,
                )),
            Text("\n常用属性配置\n",
                style: TextStyle(fontSize: 25, color: Colors.blue)),
            Text(
                "1. textAlign 对齐方式\n2. maxLines 最大显示行数\n3. overflow 超出部分显示效果 \n4. textScaleFactor 字体放大倍数",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.red,
                  fontWeight: FontWeight.normal,
                )),
            Text(
                "abcdfeghiklmnpqretuvwxyz, ABCDEFGHIJKLMNOPQRSTUVWXYZ 1234567890 2月10日 华亭市委常委、宣传部部长海英主持召开全市2023年第一季度新闻宣传工作调度会，动员全市上下树牢宣传工作“一盘棋”思想，唱响主旋律、打好主动仗，为奋力加快社会主义现代化绿色活力魅力实力幸福新华亭建设进程提供更加强大的精神动力、思想保证和舆论支持。",
                textAlign: TextAlign.right,
                maxLines: 4,
                overflow: TextOverflow.ellipsis,
                textScaleFactor: 2),
            Text("\n富文本 TextSpan\n",
                style: TextStyle(fontSize: 25, color: Colors.blue)),
            Text.rich(TextSpan(children: [
              TextSpan(
                  text: "数字：",
                  style: TextStyle(color: Colors.blue, fontSize: 18),
                  children: [
                    TextSpan(
                        text: "123",
                        style: TextStyle(color: Colors.red, fontSize: 12))
                  ]),
              TextSpan(
                  text: "字母：",
                  style: TextStyle(color: Colors.orange, fontSize: 18),
                  children: [
                    TextSpan(
                        text: "abc",
                        style: TextStyle(color: Colors.amber, fontSize: 12))
                  ])
            ])),
          ],
        ));
  }
}
