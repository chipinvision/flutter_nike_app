import 'package:flutter/material.dart';

class KidsSection extends StatefulWidget {
  const KidsSection({Key? key}) : super(key: key);

  @override
  State<KidsSection> createState() => _KidsSectionState();
}

class _KidsSectionState extends State<KidsSection> {

  List<String> img = [
    'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/2f79063e-d7dc-4a88-99ce-253a59382fa3/air-jordan-4-retro-older-shoes.png',
    'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/ae2d0f59-8954-498c-aa2a-d6ee1a550fb5/air-force-1-premium-big-kids-shoes-wJCwFb.png',
    'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/i1-dd4212aa-a0ce-4c4e-8cca-778f3ae70ca2/court-borough-mid-2-big-kids-shoes-3n7hz5.png',
    'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/8f2b82a8-c280-4c3e-9ac7-99aa459c0900/air-zoom-pegasus-39-little-big-kids-road-running-shoes-x7qQR4.png',
  ];

  List<String> name = [
    'Nike Air Jordan\n4 Retro',
    'Nike Air Force 1\nPremium',
    'Nike Court Borough\nMid 2',
    'Nike Air Zoom\nPegasus 39',
  ];

  List<String> price = [
    '\$ 125',
    '\$ 105',
    '\$ 70',
    '\$ 100',
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
