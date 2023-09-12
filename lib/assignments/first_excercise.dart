import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class FirstExc extends StatelessWidget {
  const FirstExc({super.key});

  static const List<String> images = [
    "https://static.tayyar.org/Content/ResizedImages/663/423/outside/190803121529558~balaa_falls_n.jpg",
    "https://assets.annahar.com/ContentFilesArchive/104089Image1-1180x677_d.jpg?version=3799257",
    "https://i.ytimg.com/vi/VndDUCOyGmQ/maxresdefault.jpg?sqp=-oaymwEmCIAKENAF8quKqQMa8AEB-AH-CYAC0AWKAgwIABABGF8gZShCMA8=&rs=AOn4CLDy7pnL0nbsNm1pI7VAYnOphWALhQ",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjQ4_vckd8bv8sXu37MHz1GwVF8srQCOdzImE9X5K88vyh_wds2U_QlVkMtY6e05D-u5Y&usqp=CAU",
    "https://p4.wallpaperbetter.com/wallpaper/726/605/84/waterfall-mawlynnong-mawlynnong-waterfalls-asia-wallpaper-preview.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          actions: [
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
        body: Column(
          children: [
            CachedNetworkImage(
              width: double.infinity,
              height: MediaQuery.sizeOf(context).height / 2,
              fit: BoxFit.cover,
              placeholder: (c, s) => const CircularProgressIndicator(),
              errorWidget: (context, s, d) => const Text("NoData"),
              imageUrl: "https://aljaras.com/wp-content/uploads/2019/08/شلالات-بلعة-1.jpeg",
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text(
                    "Nusa Penida ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const SingleChildScrollView(
                    child: Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry."
                      " Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,"
                      " when an unknown printer took a galley of type and scrambled it to make a type specimen book. "
                      "It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged."
                      " It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop "
                      "publishing software like Aldus PageMaker including versions of Lorem Ipsum ",
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "Picture",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 60,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: images.length,
                      itemBuilder: (context, index) {
                        return ClipRRect(
                          clipBehavior: Clip.antiAlias,
                          borderRadius: BorderRadius.circular(15),
                          child: CachedNetworkImage(
                            imageUrl: images[index],
                            fit: BoxFit.cover,
                            width: 60,
                            height: 20,
                            fadeOutCurve: Curves.easeIn,
                            fadeOutDuration: const Duration(milliseconds: 500),
                          ),
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return const SizedBox(
                          width: 10,
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: GestureDetector(
                      onTap: () {},
                      child: const Row(
                        children: [
                          Text(
                            "More in Bali",
                            style: TextStyle(color: Colors.green, fontWeight: FontWeight.w800, fontSize: 20),
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.green,
                            size: 30,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
