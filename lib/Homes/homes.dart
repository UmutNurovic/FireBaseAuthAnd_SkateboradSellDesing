import 'package:flutter/material.dart';
import 'package:skateboarddesingandfirebase/modell.dart';
class Homes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE57373),
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
                    onPressed: (){},
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
    );
  }
}
