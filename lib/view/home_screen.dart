import 'package:flutter/material.dart';
import 'package:users_list/widgets/user_item_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.amberAccent,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
             const SizedBox(height: 20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Users List",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Expanded(
                child: ListView(
                  itemExtent: 80,
                  children: [
                    UserItem(
                      fullName: "Otabek Umarov",
                      phone: "+998 77 777 77 77",
                      imageUrl:
                          "https://cdn1.img.sputniknews.uz/img/1285/78/12857825_856:0:2904:2048_1920x0_80_0_0_db6fa51fbd2e41bf49a17b8fa7cf38c2.jpg",
                    ),
                    UserItem(fullName: "Sevinch Mo'minova",
                      phone: "+998 77 777 34 54",
                      imageUrl:
                      "https://daryo.uz/static/2023/Nargiz%20Murodova/photo_2023-07-05_12-32-40.jpg",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
