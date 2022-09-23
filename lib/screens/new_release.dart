import 'package:flutter/material.dart';

class NewRelease extends StatefulWidget {
  const NewRelease({Key? key}) : super(key: key);

  @override
  State<NewRelease> createState() => _NewReleaseState();
}

class _NewReleaseState extends State<NewRelease> {

  List<String> img = [
    'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/2543e121-c094-42a8-b3a8-d37c2ccab1e2/dunk-low-retro-se-shoes-chsffk.png',
    'https://static.nike.com/a/images/t_prod_ss/w_640,c_limit,f_auto/36543cfa-f1f3-4abe-97c7-7a04b83bd9b3/air-jordan-1-taxi-555088-711-release-date.jpg',
    'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/c76f327f-df66-43fb-840e-9e1b25793cb2/zoomx-streakfly-road-racing-shoes-8rTxtR.png',
    'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/1b1b09a2-cb46-487c-9882-38dc63661db6/air-force-1-gtx-mens-shoes-MXf3Lm.png',
  ];

  List<String> name = [
    'Nike Dunk Low\nRetro SE',
    'Nike Air Jordan\n1 Taxi',
    'Nike ZoomX\nStreakfly',
    'Nike Air Force\n1 GTX',
  ];

  List<String> price = [
    '\$ 120',
    '\$ 180',
    '\$ 160',
    '\$ 150',
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5.0, right: 5.0),
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
                                child: Icon(Icons.favorite_outline, color: Color(0xffF5F5F5),),
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

