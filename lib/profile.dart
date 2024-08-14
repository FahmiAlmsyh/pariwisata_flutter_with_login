import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  List<Map<String, dynamic>> dataPeople = [
    {
      "id": 1,
      "photo": "https://randomuser.me/api/portraits/men/1.jpg",
      "name": "Ethan Thompson",
      "status": "Available"
    },
    {
      "id": 2,
      "photo": "https://randomuser.me/api/portraits/women/2.jpg",
      "name": "Emily Lee",
      "status": "Busy"
    },
    {
      "id": 3,
      "photo": "https://randomuser.me/api/portraits/men/3.jpg",
      "name": "Liam Brown",
      "status": "Offline"
    },
    {
      "id": 4,
      "photo": "https://randomuser.me/api/portraits/women/4.jpg",
      "name": "Sophia Patel",
      "status": "Available"
    },
    {
      "id": 5,
      "photo": "https://randomuser.me/api/portraits/men/5.jpg",
      "name": "Noah Martin",
      "status": "Busy"
    },
    {
      "id": 6,
      "photo": "https://randomuser.me/api/portraits/women/6.jpg",
      "name": "Olivia Hall",
      "status": "Offline"
    },
    {
      "id": 7,
      "photo": "https://randomuser.me/api/portraits/men/7.jpg",
      "name": "Logan Brooks",
      "status": "Available"
    },
    {
      "id": 8,
      "photo": "https://randomuser.me/api/portraits/women/8.jpg",
      "name": "Ava Davis",
      "status": "Busy"
    },
    {
      "id": 9,
      "photo": "https://randomuser.me/api/portraits/men/9.jpg",
      "name": "Julian Sanchez",
      "status": "Offline"
    },
    {
      "id": 10,
      "photo": "https://randomuser.me/api/portraits/women/10.jpg",
      "name": "Isabella Garcia",
      "status": "Available"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex: 5,
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Color(0xFF00C6FF), Color(0xFF0072ff)]),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      const CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://static1.squarespace.com/static/656f4e4dababbd7c042c4946/657236350931ee4538eea52c/65baf15103d8ad2826032a8a/1707422532886/how-to-stop-being-a-people-pleaser-1_1.jpg?format=1500w"),
                        backgroundColor: Colors.white,
                        radius: 112,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Hendra Nugraha",
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "Flutter Developer",
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w300),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: Container(
                  color: Colors.grey.shade300,
                  child: Center(
                    child: Card(
                      color: Colors.white,
                      margin: const EdgeInsets.only(top: 20),
                      child: Container(
                        width: 380,
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: SingleChildScrollView(
                            physics: const NeverScrollableScrollPhysics(),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Followers",
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Divider(
                                  color: Colors.grey.shade300,
                                ),
                                Container(
                                  height: 210,
                                  child: ListView.builder(
                                    itemCount: dataPeople.length,
                                    itemBuilder: (context, index) {
                                      return Container(
                                        width: 100,
                                        child: ListTile(
                                          leading: CircleAvatar(
                                            backgroundImage: NetworkImage(
                                                dataPeople[index]['photo']!),
                                          ),
                                          title: Text(
                                            dataPeople[index]['name']!,
                                            style: GoogleFonts.poppins(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          subtitle: Text(
                                            dataPeople[index]['status']!,
                                            style: GoogleFonts.poppins(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w300),
                                          ),
                                          // onTap: (){
                                          //   print(dataPeople[index]);
                                          // },
                                          trailing: PopupMenuButton<
                                              ListTileTitleAlignment>(
                                            itemBuilder: (BuildContext
                                                    context) =>
                                                <PopupMenuEntry<
                                                    ListTileTitleAlignment>>[
                                              const PopupMenuItem<
                                                  ListTileTitleAlignment>(
                                                value:
                                                    ListTileTitleAlignment.top,
                                                child: Text("Show"),
                                              ),
                                              const PopupMenuItem<
                                                  ListTileTitleAlignment>(
                                                value:
                                                    ListTileTitleAlignment.top,
                                                child: Text("Unfollow"),
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          Positioned(
            left: 20,
            right: 20,
            top: MediaQuery.of(context).size.height * 0.34,
            child: Card(
              color: Colors.white,
                child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Container(
                      child: Column(
                        children: [
                          Text(
                            "Posts",
                            style: GoogleFonts.poppins(
                                fontSize: 16, color: Colors.grey.shade600),
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                          Text(
                            "10",
                            style: GoogleFonts.poppins(fontSize: 12),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Column(
                        children: [
                          Text(
                            "Followers",
                            style: GoogleFonts.poppins(
                                fontSize: 16, color: Colors.grey.shade600),
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                          Text(
                            "14",
                            style: GoogleFonts.poppins(fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Column(
                        children: [
                          Text(
                            "Following",
                            style: GoogleFonts.poppins(
                                fontSize: 16, color: Colors.grey.shade600),
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                          Text(
                            "17",
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )),
          )
        ],
      ),
    );
  }
}
