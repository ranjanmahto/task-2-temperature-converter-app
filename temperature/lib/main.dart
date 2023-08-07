import 'package:flutter/material.dart';
import 'package:temperature/mybutton.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {

   MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
      String input ='';

    String output='';
     

  @override
  Widget build(context) {

    return  MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Center(child: Text('Celcius -> Farenhiet')),
          ),
         
           body: SafeArea(
             child: Expanded(
               child: Column(
                children: [
                 const SizedBox(height: 50,),
                  Row(
                   crossAxisAlignment: CrossAxisAlignment.center,
                  
                    children: [
                     const SizedBox(width: 10,),
                      const Text('Celcius',style: TextStyle(fontSize: 30,color: Colors.black),),
                       const SizedBox(width: 100,),
                      Text(input,style: const TextStyle(fontSize: 20,decoration: TextDecoration.underline),),
                       
                    ],
                  ),
                  
                  const SizedBox(height: 30,),
                  Row(
                    children: [
                     const  SizedBox(width: 10,),
                        const  Text('Farenheit',style: TextStyle(fontSize: 30,color: Colors.black),),
                         const  SizedBox(width: 75,),
                          Text(output,style: const TextStyle(fontSize: 20,decoration: TextDecoration.underline),),
                    ],
                  ),
                 const SizedBox(height: 200,),
             
                  Row(
                    children: [
                      MyButton(t: '1',onpress: (){
                        input+='1';
                        double r;
                        r=((double.parse(input)*9)/5 + 32);
                        output= r.toStringAsFixed(4);
                        setState((){

                        });
                      },),
                       MyButton(t: '2',onpress: (){
                        input+='2';
                        double r;
                        r=((double.parse(input)*9)/5 + 32);
                        output= r.toStringAsFixed(4);
                        setState((){

                        });
                      },),
                       MyButton(t: '3',onpress: (){
                        input+='3';
                        double r;
                        r=((double.parse(input)*9)/5 + 32);
                        output= r.toStringAsFixed(4);
                        setState((){

                        });
                      },),
                       MyButton(t: '4',onpress: (){
                        input+='4';
                        double r;
                        r=((double.parse(input)*9)/5 + 32);
                        output= r.toStringAsFixed(4);
                        setState((){

                        });
                      },),
                      
                    ],
                   ),
                   const SizedBox(height: 10,),
             
                  Row(
                    children: [
                      MyButton(t: '5',onpress: (){
                        input+='5';
                        double r;
                        r=((double.parse(input)*9)/5 + 32);
                        output= r.toStringAsFixed(4);
                        setState((){

                        });
                      },),
                       MyButton(t: '6',onpress: (){
                        input+='6';
                        double r;
                        r=((double.parse(input)*9)/5 + 32);
                        output= r.toStringAsFixed(4);
                        setState((){

                        });
                      },),
                       MyButton(t: '7',onpress: (){
                        input+='7';
                        double r;
                        r=((double.parse(input)*9)/5 + 32);
                        output= r.toStringAsFixed(4);
                        setState((){

                        });
                      },),
                       MyButton(t: '8',onpress: (){
                        input+='8';
                        double r;
                        r=((double.parse(input)*9)/5 + 32);
                        output= r.toStringAsFixed(4);
                        setState((){

                        });
                      },),
                      
                    ],
                   ),const SizedBox(height: 10,),
             
                  Row(
                    children: [
                      MyButton(t: '9',onpress: (){
                        input+='9';
                        double r;
                        r=((double.parse(input)*9)/5 + 32);
                        output= r.toStringAsFixed(4);
                        setState((){

                        });
                      },),
                       MyButton(t: '0',onpress: (){
                        input+='0';
                        double r;
                        r=((double.parse(input)*9)/5 + 32);
                        output= r.toStringAsFixed(4);
                        setState((){

                        });
                      },),
                       MyButton(t: '.',onpress: (){
                        input+='.';
                        double r;
                        r=((double.parse(input)*9)/5 + 32);
                        output= r.toStringAsFixed(4);
                        setState((){

                        });
                      },),
                       MyButton(t: '',onpress: (){
                        input=input;
                        
                        output= output;
                        setState((){

                        });
                      },),
                      
                    ],
                   ),
                   const SizedBox(height: 10,),
             
                  Row(
                    children: [
                      MyButton(t: 'C',w: 30,c:Colors.blue,onpress:   (){
                        input='';
                       
                        output= '';
                        setState((){

                        });
                      },),
                       MyButton(c:Colors.blue ,w:30,t: 'DEL',onpress: (){
                        if(input.length >0)
                        {
                          input= input.substring(0,input.length -1);
                        }
                        else{
                          input='';
                        }
                        double r;
                        if(input.length >0)
                        {
                          r=((double.parse(input)*9)/5 + 32);
                           output= r.toStringAsFixed(4);
                        }
                        else{
                          output='';
                        }
                        
                        setState((){

                        });
                      },),
                      
                      
                    ],
                   ),
                 
                    ],
                  ),
             ),
           )
            
           ),
    );
      
    
  }
}