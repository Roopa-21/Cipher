import 'package:flutter/material.dart';
import 'package:cipher_assignment/constants/constants.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NavigationnBar extends StatefulWidget {
  const NavigationnBar({super.key});

  @override
  State<NavigationnBar> createState() => _NavigationnBarState();
}

class _NavigationnBarState extends State<NavigationnBar>
    with SingleTickerProviderStateMixin {
 
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: _tabController,
        physics: const NeverScrollableScrollPhysics(),
        children: screenItems,
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.all(
          Radius.circular(50.0),
        ),
        child: Container(
          color: kSecondaryColor,
          child: TabBar(
            labelColor: kOrange,
            unselectedLabelColor: kBlack,
            indicatorColor: Colors.transparent,
            tabs: const <Widget>[
              Tab(
                icon: FaIcon(
                  FontAwesomeIcons.house,
                  size: 24.0,
                ),
                text: 'Home',
              ),
              Tab(
                icon: FaIcon(
                  FontAwesomeIcons.book,
                  size: 24.0,
                ),
                text: 'Courses',
              ),
              Tab(
                icon: FaIcon(
                  FontAwesomeIcons.compass,
                  size: 24.0,
                ),
                text: 'Trending',
              ),
              Tab(
                icon: FaIcon(
                  FontAwesomeIcons.user,
                  size: 24.0,
                ),
                text: 'My Profile',
              ),
            ],
            controller: _tabController,
          ),
        ),
      ),
    );
  }
}
