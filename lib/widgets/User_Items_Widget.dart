import 'package:flutter/material.dart';

import '../models/item.dart';

class UserItemsWidget extends StatelessWidget {

  final List<Item> items;
  final Widget bottomButton;

  const UserItemsWidget({Key? key, required this.items, required this.bottomButton}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length+1,
      itemBuilder: (context, int i){
        if(i == items.length){
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 100),
            child: bottomButton,
          );
        }
        return Card(
          elevation: 2,
          margin: const EdgeInsets.symmetric(vertical: 9.0, horizontal: 16),
          child: Container(
            decoration: const BoxDecoration(color: Color(0xffecd9cc),),
            child: ListTile(
              leading: Image.asset(
                items[i].photo,
                fit: BoxFit.fill,
              ),
              contentPadding: const EdgeInsets.all(6.0),
              title: Container(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Text(
                  items[i].description,
                  style: const TextStyle(
                    fontSize: 13,
                  ),
                ),
              ),
              subtitle: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    items[i].author,
                    style: const TextStyle(
                      letterSpacing: 3.0,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    '№' + items[i].id.toString(),
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
 }

