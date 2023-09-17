import 'package:bti_training2/screens/landscape/landscape_screen.dart';
import 'package:bti_training2/screens/portrait/portrait_screen.dart';
import 'package:flutter/material.dart';

class FirstExc extends StatefulWidget {
  FirstExc({super.key});

  @override
  State<StatefulWidget> createState() {
    return FirstExcState();
  }

  final List<String> images = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjQ4_vckd8bv8sXu37MHz1GwVF8srQCOdzImE9X5K88vyh_wds2U_QlVkMtY6e05D-u5Y&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjQ4_vckd8bv8sXu37MHz1GwVF8srQCOdzImE9X5K88vyh_wds2U_QlVkMtY6e05D-u5Y&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjQ4_vckd8bv8sXu37MHz1GwVF8srQCOdzImE9X5K88vyh_wds2U_QlVkMtY6e05D-u5Y&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjQ4_vckd8bv8sXu37MHz1GwVF8srQCOdzImE9X5K88vyh_wds2U_QlVkMtY6e05D-u5Y&usqp=CAU",
    "https://p4.wallpaperbetter.com/wallpaper/726/605/84/waterfall-mawlynnong-mawlynnong-waterfalls-asia-wallpaper-preview.jpg",
    "https://p4.wallpaperbetter.com/wallpaper/726/605/84/waterfall-mawlynnong-mawlynnong-waterfalls-asia-wallpaper-preview.jpg",
    "https://p4.wallpaperbetter.com/wallpaper/726/605/84/waterfall-mawlynnong-mawlynnong-waterfalls-asia-wallpaper-preview.jpg",
    "https://p4.wallpaperbetter.com/wallpaper/726/605/84/waterfall-mawlynnong-mawlynnong-waterfalls-asia-wallpaper-preview.jpg",
    "https://p4.wallpaperbetter.com/wallpaper/726/605/84/waterfall-mawlynnong-mawlynnong-waterfalls-asia-wallpaper-preview.jpg",
    "https://p4.wallpaperbetter.com/wallpaper/726/605/84/waterfall-mawlynnong-mawlynnong-waterfalls-asia-wallpaper-preview.jpg",
  ];
}

class FirstExcState extends State<FirstExc> {
  bool isFavourite = false;
  bool isItemsBiggerThanScreen = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: MediaQuery.of(context).orientation == Orientation.portrait
            ? const Drawer(
                child: Column(
                  children: [
                    UserAccountsDrawerHeader(
                      accountName: Text("Abdulrahman Ahmed"),
                      accountEmail: Text("abd.taweel20@icloud.com"),
                      currentAccountPicture: CircleAvatar(
                        foregroundImage: NetworkImage(
                          "https://img.freepik.com/premium-vector/person-avatar-design_24877-38137.jpg?w=2000",
                        ),
                      ),
                    ),
                    ListTile(
                      leading: Icon(Icons.home),
                      title: Text("Home"),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                    ListTile(
                      leading: Icon(Icons.favorite),
                      title: Text("Favourite"),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                    ListTile(
                      leading: Icon(Icons.list),
                      title: Text("News"),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                    Spacer(),
                    ListTile(
                      leading: Icon(Icons.logout),
                      title: Text("Logout"),
                    ),
                  ],
                ),
              )
            : null,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          actions: [
            IconButton(
                onPressed: () {
                  setState(() {
                    isFavourite = !isFavourite;
                  });
                },
                icon: Icon(
                  Icons.favorite,
                  color: isFavourite ? Colors.red : Colors.grey.shade200,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.more_vert,
                  size: 30,
                ))
          ],
          leading: Navigator.canPop(context)
              ? IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios_new,
                    size: 30,
                  ))
              : null,
        ),
        body: MediaQuery.of(context).orientation == Orientation.portrait
            ? PortraitScreen(
                images: widget.images,
              )
            : LandScapeScreen(images: widget.images));
  }
}
