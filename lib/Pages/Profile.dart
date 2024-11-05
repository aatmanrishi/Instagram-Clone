import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_clone/Components/ProfileView.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rishabh Shukla'),
        actions: [
          IconButton(onPressed: () {}, icon: FaIcon(FontAwesomeIcons.squarePlus)),
          IconButton(onPressed: () {}, icon: FaIcon(FontAwesomeIcons.bars)),
        ],
      ),
      body: Column(
        children: [
          Profileview(),
          SizedBox(height: 5), // Adjust space between ProfileView and TabBar
          TabBar(
            controller: _tabController,
            tabs: [
              Tab(child: Icon(Icons.grid_3x3_outlined, color: Colors.black)),
              Tab(child: Icon(Icons.play_arrow_outlined, color: Colors.black)),
              Tab(child: Icon(Icons.person_2_outlined, color: Colors.black)),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                Center(child: Text('Grid View Content')),
                Center(child: Text('Reels View Content')),
                Center(child: Text('User View Content')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
