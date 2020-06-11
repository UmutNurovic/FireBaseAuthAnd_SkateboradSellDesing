import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class productcard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 70),
      child: Container(
        width: 300,
        height: 300,
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(left: 5,right: 5,bottom:20),
                child: Container(
                  width: 500,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.black38,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(.1),
                        offset: Offset(0,10),
                        blurRadius: 12
                      )
                    ]
                  ),
                ),
              ),
            ),
            Positioned(

              right: 50,
              top: 50,
              child: Image.asset("assets/deck.png",width: 350,height: 200,),
            ),
            Positioned(

              left: 120,
              top: 120,
              child: Column(
                children: <Widget>[
                  Text("Santa Cruz x TMNT",style: TextStyle( color:Colors.white,fontWeight: FontWeight.bold,),),
                  Text("Pizza Dude Everslick",style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),),
                  Text("8.25 x 31.8",style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),),
                  Text("price:64.99",style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),),
                  Row(
                    children: <Widget>[
                      Icon(Icons.star),
                      Icon(Icons.star),
                      Icon(Icons.star),
                      Icon(Icons.star),
                    ],
                  ),
                  RaisedButton(
                    child: Text('Sell',style: TextStyle(color: Colors.white,fontSize: 24),),
                    onPressed: (){
                    },
                    color: Colors.black38,
                    elevation: 8.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(18.0),
                    ),
                  ),
                ],
              )
            ),
          ],
        ),
      ),
    );
  }
}
