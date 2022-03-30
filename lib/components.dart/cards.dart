import 'dart:html';

import 'package:flutter/material.dart';
import 'package:food_delievery_app/models/food_card_model.dart';
import 'package:food_delievery_app/style/app_style.dart';

class FoodCard extends StatelessWidget {
  FoodCard(this.model, {Key? key}) : super(key: key);
  FoodCardModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 400.0,
      margin: const EdgeInsets.only(bottom: 16.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16.0),
          image: DecorationImage(
            image: NetworkImage(
              model.img_url!,
            ),
            fit: BoxFit.cover,
          )),

      // Positioned(
      //     child: Container(
      //   color: Colors.white,
      //    height: 150.0,
      //     width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 120.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16.0),
            ),
            padding: const EdgeInsets.all(16.0),
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  model.food!,
                  style: AppStyle.mainTitleStyle,
                ),
                Text(
                  model.restorant!,
                  style: AppStyle.subTitleStyle,
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    Text(
                      "${model.note}",
                      style: const TextStyle(
                        color: Colors.amber,
                        fontSize: 18.0,
                      ),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Icon(
                      Icons.timer,
                      color: Colors.blueGrey.shade300,
                    ),
                    Text(
                      "${model.time}",
                      style: TextStyle(
                        color: Colors.blueGrey.shade300,
                        fontSize: 18.0,
                      ),
                    ),
                    const SizedBox(
                      width: 25.0,
                    ),
                    Text(
                      "${model.price}",
                      style: AppStyle.PriceTitleStyle,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
