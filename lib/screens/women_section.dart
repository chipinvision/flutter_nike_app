import 'package:flutter/material.dart';

class WomenSection extends StatefulWidget {
  const WomenSection({Key? key}) : super(key: key);

  @override
  State<WomenSection> createState() => _WomenSectionState();
}

class _WomenSectionState extends State<WomenSection> {

  List<String> img = [
    'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/0b71d2dd-645c-4899-b57b-fbac58427523/pegasus-turbo-next-nature-road-running-shoes-wq9drv.png',
    'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/98300ab4-fb71-4b25-91f1-26339998c4c5/blazer-low-platform-womens-shoes-X8Nl4M.png',
    'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/ebabc559-4b37-4208-a84d-5467351586c8/air-max-90-se-womens-shoes-2ZsM2w.png',
    'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/27b3acc1-1edc-481a-b715-a3bf6be8eebe/air-zoom-structure-24-womens-road-running-shoes-MRJzXW.png',
  ];

  List<String> name = [
    'Nike Pegasus Turbo\nNext Nature',
    'Nike Blazer Low\nPlatform',
    'Nike Air Max\n90 SE',
    'Nike Air Zoom\nStructure 24',
  ];

  List<String> price = [
    '\$ 175',
    '\$ 110',
    '\$ 140',
    '\$ 130',
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
