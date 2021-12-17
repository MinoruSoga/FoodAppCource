import 'package:flutter/material.dart';
import 'package:food_app_cource/commons.dart';
import 'package:food_app_cource/widgets/custom_text.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomText(
                    text: "What would yout like to eat?",
                    size: 18,
                  ),
                ),
                Stack(
                  children: [
                    IconButton(
                      icon: Icon(Icons.notifications_none),
                      onPressed: () {},
                    ),
                    Positioned(
                      top: 12,
                      right: 12,
                      child: Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                          color: red[300],
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: white,
                  boxShadow: [
                    BoxShadow(
                      color: grey,
                      offset: Offset(1, 1),
                      blurRadius: 4,
                    )
                  ],
                ),
                child: ListTile(
                  leading: Icon(Icons.search, color: red),
                  title: TextField(
                    decoration: InputDecoration(
                      hintText: "Find food and restaurent",
                      border: InputBorder.none,
                    ),
                  ),
                  trailing: Icon(Icons.filter_list, color: red),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (_, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: white,
                            boxShadow: [
                              BoxShadow(
                                color: red[50]!,
                                offset: Offset(4, 6),
                                blurRadius: 20,
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(4),
                            child: Image.asset(
                              "images/salad.png",
                              width: 50,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        CustomText(
                          text: "Salad",
                          size: 14,
                          color: black,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
