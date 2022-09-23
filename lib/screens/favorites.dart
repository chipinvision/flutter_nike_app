import 'package:flutter/material.dart';

class FavouritesScreen extends StatefulWidget {
  const FavouritesScreen({Key? key}) : super(key: key);

  @override
  State<FavouritesScreen> createState() => _FavouritesScreenState();
}

class _FavouritesScreenState extends State<FavouritesScreen> {

  List<String> img = [
    'https://static.nike.com/a/images/t_prod_ss/w_640,c_limit,f_auto/36543cfa-f1f3-4abe-97c7-7a04b83bd9b3/air-jordan-1-taxi-555088-711-release-date.jpg',
    'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/1b1b09a2-cb46-487c-9882-38dc63661db6/air-force-1-gtx-mens-shoes-MXf3Lm.png',
    'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/47112d0a-dc23-4b74-876c-b638fecf0af2/air-jordan-1-retro-high-og-shoes-a7Zzxm.png',
    'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/b5bfc565-8b87-4566-bcf6-44ee7bf430fa/air-max-alpha-trainer-5-mens-training-shoes-7LjRM6.png',
  ];

  List<String> name = [
    'Nike Air Jordan\n1 Taxi',
    'Nike Air Force\n1 GTX',
    'Nike Air Jordan 1\nRetro High OG',
    'Nike Air Max\nAlpha Trainer 5',
  ];

  List<String> price = [
    '\$ 180',
    '\$ 150',
    '\$ 195',
    '\$ 90',
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10.0,bottom: 3.0),
      child: GridView.builder(
          physics: const ScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 300 / 500,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20
          ),
          itemCount: img.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 300,
              width: 400,
              decoration: BoxDecoration(
                color: const Color(0xffFFFFFF),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Stack(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 100,
                          width: 150,
                          decoration: BoxDecoration(
                            color: const Color(0xffF5F5F5),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.network(img[index]),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:3.0, top: 5.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                name[index],
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:3.0, top: 5.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Text(
                                'Shoes',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:3.0, top: 5.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                price[index],
                                style: const TextStyle(
                                  fontWeight: FontWeight.w800,
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                              ),
                              const CircleAvatar(
                                radius: 20,
                                backgroundColor: Color(0xff111111),
                                child: Icon(Icons.favorite, color: Color(0xffF5F5F5),),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          }
      ),
    );
  }
}
