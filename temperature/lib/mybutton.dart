import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
   MyButton({super.key,required this.t,  this.c=Colors.grey,this.h=40,this.w=10,required this.onpress});
  final String t;
 final Color c;
  final double h;
  final double w;
  final VoidCallback onpress;
  

  @override
  Widget build( context) {
    return   Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
        child: InkWell(
          onTap: onpress,
          child: Container(
                height: h,
                width: w,
                decoration: BoxDecoration(
                  
                     color: c,
                ),
                child: Center(child: Text(t,style: TextStyle(fontSize: 20),),),
              ),
        ),
      ),
    );
      
    
  }
}