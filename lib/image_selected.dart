import 'package:flutter/material.dart';

class ImageSelected extends StatelessWidget {
  final String imagem_recebida;

  const ImageSelected({Key? key, required this.imagem_recebida}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pop(context);
      },
      child: Scaffold(
        backgroundColor: Colors.black54,
        body: Center(
          child: Container(
            child: Image.asset(imagem_recebida),
          ),
        ),
      ),
    );
  }
}
