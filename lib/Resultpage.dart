import 'bottombutton.dart';
import 'package:flutter/material.dart';
import 'reausable.dart';
import 'constants.dart';

class ResultPage extends StatelessWidget {
    String result;
    String bmi;
    String interpretation;

    ResultPage({required this.result, required this.bmi, required this.interpretation});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text("BMI CALCULATOR"),),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
            Expanded(
                child: Container(
              margin: EdgeInsets.all(6),
                  alignment: Alignment.bottomLeft,
                  child: Center(child: Text("your Result",),),
            ),
            ),
          Expanded(
             flex: 2,
              child: reusableWidget(
                color: KActivecolor,
                child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(result,style: KResualtTextStyle),
                    Text(bmi,style: KBMITextStyle,),
                    Text(interpretation,textAlign: TextAlign.center,style: KBodyTextStyle
                      ,),
                  ],
              ),
          ),
          ),
          bottombutton(onpressed: (){
            Navigator.pop(context);
          }, label: "RECALL CALCULATE",),
        ],
      ),
    );
  }
}
