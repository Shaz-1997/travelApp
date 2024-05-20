import 'package:flutter/material.dart';
import 'package:tripapp/FadeAnimation.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(fontFamily: 'Nunito'),
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{
  PageController? _pageController;
  int totalPage = 4;

  void _onScroll() {}

  @override
  void initState() {
    _pageController = PageController(
      initialPage: 0,
    )..addListener(_onScroll);
    super.initState();
  }

  @override
  void dispose() {
    _pageController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [
          makePage(
              page: 1,
              image: 'assets/images/two.jpg',
              title: 'KERALA',
              description:
                  'Kerala is one of the small states of India in terms of area. it consists of only 1.3 per cent of the total area of India. The state is located in the southwest corner of India. Karnataka and Tamil Nadu bound it on north, east and south and on east by the Arabian Sea.'),
          makePage(
              page: 2,
              image: 'assets/images/one.jpeg',
              title: 'AGRA',
              description:
                  'The Taj Mahal is an ivory-white marble mausoleum on the south bank of the Yamuna river in the Indian city of Agra. It was commissioned in 1632 by the Mughal emperor, Shah Jahan (reigned from 1628 to 1658), to house the tomb of his favourite wife, Mumtaz Mahal.'),
          makePage(
              page: 3,
              image: 'assets/images/three.jpg',
              title: 'VATICAN CITY',
              description:
                  "Vatican City, landlocked ecclesiastical state, seat of the Roman Catholic Church, and an enclave in Rome, situated on the west bank of the Tiber River. Vatican City is the world's smallest fully independent nation-state."),
          makePage(
              page: 4,
              image: 'assets/images/four.jpg',
              title: 'MALDIVES',
              description:
                  "The Maldives is one of the world's most geographically dispersed sovereign states, and the smallest Muslim-majority country by land area. With a population of 515,132 in the 2022 census, it is the 2nd least populous country in Asia and the ninth-smallest country in the world by area."),
        ],
      ),
    );
  }

  Widget makePage({image, title, description, page}) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(fit: BoxFit.cover, image: AssetImage(image)),
      ),
      child: Container(
        decoration: BoxDecoration(
            gradient:
                LinearGradient(begin: Alignment.bottomRight, stops: const [
          0.3,
          0.9
        ], colors: [
          Colors.black.withOpacity(0.9),
          Colors.black.withOpacity(0.2),
        ])),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(
                    page.toString(),
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '/' + totalPage.toString(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              Expanded(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 3),
                        child: const Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 15,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 3),
                        child: const Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 15,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 3),
                        child: const Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 15,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 3),
                        child: const Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 15,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 3),
                        child: const Icon(
                          Icons.star,
                          color: Colors.grey,
                          size: 15,
                        ),
                      ),
                      const Text(
                        '4.0',
                        style: TextStyle(color: Colors.white70),
                      ),
                      const Text(
                        '(2300)',
                        style: TextStyle(color: Colors.white38, fontSize: 12),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 50),
                    child: Text(
                      description,
                      style: TextStyle(
                          color: Colors.white.withOpacity(
                            0.7,
                          ),
                          height: 1.9,
                          fontSize: 15),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'READ MORE',
                    style: TextStyle(color: Colors.white),
                  ),
                  const SizedBox(
                    height: 30,
                  )
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
