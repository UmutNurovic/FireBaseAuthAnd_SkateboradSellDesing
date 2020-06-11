import 'package:flutter/material.dart';
import 'package:skateboarddesingandfirebase/Homes/drawerScreen.dart';
import 'package:skateboarddesingandfirebase/modell.dart';
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;

  bool isDrawerOpen = false;


  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      transform: Matrix4.translationValues(xOffset, yOffset, 12)
        ..scale(scaleFactor)..rotateY(isDrawerOpen? -0.5:0),
      duration: Duration(milliseconds: 250),

      decoration: BoxDecoration(
          color: Colors.grey[200],

          borderRadius: BorderRadius.circular(isDrawerOpen?90:0.0)

      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  isDrawerOpen?IconButton(
                    icon: Icon(Icons.arrow_back_ios),
                    onPressed: (){
                      setState(() {
                        xOffset=0;
                        yOffset=0;
                        scaleFactor=1;
                        isDrawerOpen=false;

                      });
                    },

                  ): IconButton(
                      icon: Icon(Icons.menu),
                      onPressed: () {
                        setState(() {
                          xOffset = 230;
                          yOffset = 150;
                          scaleFactor = 0.6;
                          isDrawerOpen=true;
                        });
                      }),
                  IconButton(
                    icon: Icon(Icons.shopping_cart),
                    onPressed: (){},
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 22,),
                Container(
                  width: double.infinity,
                  height: 60,
                  margin: EdgeInsets.symmetric(horizontal: 22),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(.12),
                          offset: Offset(0,10),
                          blurRadius: 30,
                        ),
                      ]
                  ),
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.only(left: 18,right: 12),
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Search...",
                            suffixIcon: Icon(Icons.search)
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: Text("SkateBoard Decks",style: TextStyle(fontSize: 22,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold),),

                ),
                SizedBox(height: 2,),
                Container(
                  child: productcard(),
                ),
                Container(
                  child: productcard(),
                ),
                Container(
                  child: productcard(),
                )
              ],
            ),
            SizedBox(height: 50,)






          ],
        ),
      ),
    );
  }
}
/*
* Scaffold(
      backgroundColor: Color(0xFF90A4AE),
      body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 16,right: 16,bottom: 12,top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.menu),
                        onPressed: (){

                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.shopping_cart),
                        onPressed: (){},
                      ),

                    ],
                  ),
                ),

                SizedBox(height: 22,),
                Container(
                  width: double.infinity,
                  height: 60,
                  margin: EdgeInsets.symmetric(horizontal: 22),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(.12),
                          offset: Offset(0,10),
                          blurRadius: 30,
                        ),
                      ]
                  ),
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.only(left: 18,right: 12),
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Search...",
                            suffixIcon: Icon(Icons.search)
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: Text("SkateBoard Decks",style: TextStyle(fontSize: 22,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold),),

                ),
                SizedBox(height: 2,),
                Container(
                  child: productcard(),
                ),
                Container(
                  child: productcard(),
                )
              ],
            ),
          ),


    )*/