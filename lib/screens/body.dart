import 'package:flutter/material.dart';
import 'package:nike_app/screens/women_section.dart';
import 'package:nike_app/widgets/round_search_input.dart';
import 'package:nike_app/widgets/circle_tab_indicator.dart';
import 'kids_section.dart';
import 'men_section.dart';
import 'new_release.dart';
import 'customize.dart';

class BodyPart extends StatefulWidget {
  const BodyPart({Key? key}) : super(key: key);

  @override
  State<BodyPart> createState() => _BodyPartState();
}

class _BodyPartState extends State<BodyPart> with TickerProviderStateMixin{

  TextEditingController search = TextEditingController();

  TabController? _tabController;

  @override
  void initState(){
    super.initState();
    _tabController = TabController(vsync: this, length: 5);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 5.0, bottom: 5.0),
            child: RoundedSearchInput(textController: search, hintText: 'Search'),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: TabBar(
              controller: _tabController,
              labelPadding: const EdgeInsets.only(left: 20, right: 15),
              labelColor: Colors.black,
              labelStyle: const TextStyle(fontWeight: FontWeight.bold),
              unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.w400),
              unselectedLabelColor: Colors.grey,
              isScrollable: true,
              indicatorSize: TabBarIndicatorSize.label,
              indicator: CircleTabIndicator(radius: 4, color: Colors.black),
              tabs: const [
                Tab(
                  text: 'New Release',
                ),
                Tab(
                  text: 'Men',
                ),
                Tab(
                  text: 'Women',
                ),
                Tab(
                  text: 'Kids',
                ),
                Tab(
                  text: 'Customise',
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 20, right:20.0, top: 10.0, bottom: 10.0),
            height: 550,
            width: double.maxFinite,
            child: TabBarView(
              controller: _tabController,
              children: const [
                NewRelease(),
                MenSection(),
                WomenSection(),
                KidsSection(),
                Customize(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
