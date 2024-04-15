import 'package:flutter/material.dart';

class ItemsWidget extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 10, right: 10, top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Top",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF00A368),

                ),
              ),
              Text(
                "See All",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54,

                ),
              ),

            ],
          ),
        ),
        GridView.count(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          physics: NeverScrollableScrollPhysics(),
          crossAxisCount: 2,
          childAspectRatio: 0.8,
          shrinkWrap: true,
          children: [
            for(int i=1;i<10;i++)
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color:Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 4,
                  ),
                ],
                
              ),
              child: Column(children: [
                InkWell(
                  onTap: () {},
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Image.asset("lib/images/$i.jpeg",
                    height:110,
                    width:110,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 8),
                  child: Container(
                    alignment:Alignment.centerLeft,
                    child:Text(
                      "10g",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF555555),
                    ),

                    ),
                    

                  ),

                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 8),
                  child: Container(
                    alignment:Alignment.centerLeft,
                    child:Text(
                      "Cadbury diarymilk",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF555555),
                    ),

                    ),
                    

                  ),

                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\10Rs",
                        style: TextStyle(
                          fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF00A368),

                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, "itemPage");
                          },
                          child: Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Color(0xFF00A368),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Icon(
                              Icons.add_shopping_cart,
                              color:Colors.white,

                            ),

                          ),
                        ),
                    ],
                        ),
                        
                      ),

                    
                    ],
                  ),
                ),

              ],
              ),
            
          ],
        );

    
  }
}