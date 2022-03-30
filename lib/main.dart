import 'package:flutter/material.dart';
import 'package:food_delievery_app/components.dart/cards.dart';
import 'package:food_delievery_app/models/dummy_data.dart';
import 'package:food_delievery_app/style/app_style.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyle.bgColor,
      appBar: AppBar(
        backgroundColor: AppStyle.bgColor,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          "Foody",
          style: GoogleFonts.nunito(
            color: AppStyle.PrimaryColor,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu,
            color: AppStyle.PrimaryColor,
          ),
        ),
      ),
      body: SingleChildScrollView(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Text(
              "Categories",
              style: AppStyle.mainTitleStyle,
            ),
          ),
          Container(
            width: double.infinity,
            height: 40.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: FakeData.categories
                  .map((e) => Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 12.0, vertical: 6.0),
                      child: ActionChip(label: Text(e), onPressed: () {})))
                  .toList(),
            ),
          ),
          SizedBox(
            height: 0.0,
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Text(
              "Most Popular",
              style: AppStyle.mainTitleStyle,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: FakeData.food_menu.map((e) => FoodCard(e)).toList(),
            ),
            // we will create a custom card widget  for our cards
          )
        ],
      )),
    );
  }
}
