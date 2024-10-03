import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      leading: Icon(Icons.menu, color: Colors.grey),
      primary: false,
      title: TextField(
        decoration: InputDecoration(
         prefixIcon: InkWell(
          onTap: () {
            
          },
          
          child: Icon(Icons.search)),
          hintText: "Search",
          hintStyle: TextStyle(color: Colors.grey),
          border: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.blue,
                width: 2.0,
              ),
              borderRadius: BorderRadius.circular(10)),
        ),
      ),
      actions: [
      
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications,
              color: Colors.red,
            ))
      ],
    );
  }
}
