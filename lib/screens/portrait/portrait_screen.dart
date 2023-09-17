import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class PortraitScreen extends StatefulWidget {
  final List<String> images;

  const PortraitScreen({super.key, required this.images});

  @override
  State<PortraitScreen> createState() => _PortraitScreenState();
}

class _PortraitScreenState extends State<PortraitScreen> {
  bool isItemsBiggerThanScreen = true;

  @override
  Widget build(BuildContext context) {
    return Column(
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
              const SizedBox(
                height: 180,
                child: SingleChildScrollView(
                  child: Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry."
                    " Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,"
                    " when an unknown printer took a galley of type and scrambled it to make a type specimen book. "
                    "It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged."
                    " It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop "
                    "publishing software like Aldus PageMaker including versions of Lorem Ipsum ",
                  ),
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
                height: 55,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: widget.images.length > MediaQuery.of(context).size.width ~/ 75 && isItemsBiggerThanScreen
                      ? MediaQuery.of(context).size.width ~/ 75
                      : widget.images.length,
                  itemBuilder: (context, index) {
                    print(index == (MediaQuery.of(context).size.width ~/ 75) - 1);
                    print(MediaQuery.of(context).size.width ~/ 75);
                    return index == (MediaQuery.of(context).size.width ~/ 75) - 1 &&
                            isItemsBiggerThanScreen &&
                            widget.images.length > (MediaQuery.of(context).size.width ~/ 75)
                        ? GestureDetector(
                            onTap: () {
                              isItemsBiggerThanScreen = false;
                              setState(() {});
                            },
                            child: Stack(
                              children: [
                                ClipRRect(
                                  clipBehavior: Clip.antiAlias,
                                  borderRadius: BorderRadius.circular(10),
                                  child: CachedNetworkImage(
                                    imageUrl: widget.images[index],
                                    fit: BoxFit.cover,
                                    width: 65,
                                    height: 100,
                                    fadeOutCurve: Curves.easeIn,
                                    fadeOutDuration: const Duration(milliseconds: 500),
                                  ),
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Container(
                                    decoration: BoxDecoration(color: Colors.black.withOpacity(0.5)),
                                    width: 65,
                                    height: 55,
                                    child: Center(
                                      child: Text(
                                        "+${widget.images.length - (MediaQuery.of(context).size.width / 75).floor() + 1}",
                                        style: const TextStyle(color: Colors.white, fontSize: 18),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        : ClipRRect(
                            clipBehavior: Clip.antiAlias,
                            borderRadius: BorderRadius.circular(10),
                            child: CachedNetworkImage(
                              imageUrl: widget.images[index],
                              fit: BoxFit.cover,
                              width: 65,
                              height: 100,
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
                  shrinkWrap: true,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25),
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
                        size: 26,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
