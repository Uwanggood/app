import 'package:flutter/material.dart';

class MainTitleCard extends StatelessWidget {
  final String title;
  final String content;
  final String image;

  const MainTitleCard({Key? key, required this.title, required this.content, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.5,
        height: MediaQuery.of(context).size.height * 0.5,
        child: DecoratedBox(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          fontSize: 13,
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'SanFrancisco',
                          color: Colors.white,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        content,
                        style: const TextStyle(
                          fontSize: 13,
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'SanFrancisco',
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Image(
                    image: AssetImage(image),
                    width: 10,
                    height: 5,
                  ),
                ],
              ),
            ),
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                border: Border.all(
                  color: Colors.white,
                  width: 2,
                ),
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                gradient: const LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Color(0xffF2C163),
                    Color(0xff63F2A5),
                  ],
                ))),
      ),
    );
  }
}
