import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tasbeeh/List.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int i = 0;
  int count = 0;
  int round = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF273c75),
        title: const Text(
          "المسبحة الإلكترونية",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xFF54a0ff),
          ),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                'assets/images/ww.jpg',
              ),),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: 350,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/1.png',
                  ),
                  // fit: BoxFit.scaleDown,
                ),
              ),
            ),
          ],
        ),
        Column(
          children: [
            SizedBox(
              height: 5,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                width: double.infinity,
                height: 200,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        colors: [
                      Color(0xFF273c75),
                      Color(0xFF487eb0),
                      Color(0xFF40739e),
                      Color(0xFF40739e),
                    ],
                        stops: [
                      0.1,
                      0.4,
                      0.7,
                      1.0,
                    ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                        onPressed: () {
                          setState(() {
                            if (i > 0) {
                              i--;
                            } else {
                              i = 0;
                            }
                          });
                        },
                        icon: const Icon(
                          Icons.arrow_circle_left_sharp,
                          color: Color(0xFF7f8fa6),
                          size: 35,
                        )),
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        width: 200,
                        height: 200,
                        child: Text(
                          '${tasbeh[i]}',
                          textDirection: TextDirection.rtl,
                          style: const TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    IconButton(
                        onPressed: () {
                          setState(() {
                            if (i < tasbeh.length - 1) {
                              i++;
                            } else {
                              i = 0;

                            }
                          });
                        },
                        icon: const Icon(
                          Icons.arrow_circle_right_sharp,
                          color: Color(0xFF7f8fa6),
                          size: 35,
                        ))
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFF487eb0),
                    Color(0xFF273c75),
                  ],
                ),
              ),
              alignment: Alignment.center,
              width: 180,
              height: 40,
              child: Text("$round : عدد المرات ",
                  style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
            ),
            Column(
              children: [
                SizedBox(
                  height: 150,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 140, top: 10),
                  child: Text(
                    "$count",
                    style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 140,
                  ),
                  child: IconButton(
                    color: Colors.grey,
                    icon: Icon(Icons.circle),
                    onPressed: () {
                      setState(() {
                        i = 0;
                        count = 0;
                        round = 0;
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      if (count < 32) {
                        count++;
                      } else if (count == 32) {
                        round++;
                        count = 0;
                      }
                    });
                  },
                  child: const Text(
                    "سبح",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                )
              ],
            )
          ],
        ),
      ]),
    );
  }
}
