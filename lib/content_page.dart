

import 'package:flutter/cupertino.dart';

class ContentPage extends StatelessWidget{

  String title;

  ContentPage(this.title,{Key? key}):super(key: key);

  @override
  Widget build(BuildContext context) {
   return Container(
     child: Center(
       child: Text(title),
     ),
   );
  }


}