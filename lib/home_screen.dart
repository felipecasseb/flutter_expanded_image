import 'package:flutter/material.dart';
import 'package:flutter_image/image_selected.dart';
import 'package:page_transition/page_transition.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String img = "image/bmw.png";
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Image Select"),
      ),
      body: Center(
        child: GestureDetector(
          onTap: (){
            Navigator.push(
                context,
                PageTransition(
                    child: ImageSelected(imagem_recebida: img,),
                    type: PageTransitionType.fade
                )
            );
          },
          child: Container(
            height: 100,
            width: 200,
            child: Image.asset("$img"),
          ),
        )
      ),
    );
  }
}
