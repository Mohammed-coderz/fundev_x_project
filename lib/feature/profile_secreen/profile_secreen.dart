import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: profilesecreen(),
    );
  }
}

class profilesecreen extends StatefulWidget {
  const profilesecreen({super.key});

  @override
  State<profilesecreen> createState() => _profilesecreenState();
}

class _profilesecreenState extends State<profilesecreen> {
  bool isSwitched = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C1C1E),
      body: SafeArea(
        child: Column(
          children: [
            // ===== HEADER =====
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(Icons.apps, color: Colors.white),
                  Text(
                    "Profile",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                  Icon(Icons.notifications_none, color: Colors.white),
                ],
              ),
            ),

            const SizedBox(height: 10),

            Expanded(
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color(0xFFF4F4F4),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35),
                  ),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 20),

                    const CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage("asset/image/img.png"),
                    ),

                    const SizedBox(height: 10),

                    const Text(
                      "Mohammed",
                      style:
                      TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),

                    const SizedBox(height: 4),

                    const Text(
                      "MOHAMMED@email.com",
                      style: TextStyle(color: Colors.blue),
                    ),

                    const SizedBox(height: 12),

                    // زر Edit
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: Colors.blue),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      onPressed: () {},
                      child: const Padding(
                        padding:
                        EdgeInsets.symmetric(horizontal: 20, vertical: 6),
                        child: Text("Edit",
                            style: TextStyle(color: Colors.blue)),
                      ),
                    ),

                    const SizedBox(height: 25),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "NOTIFICATIONS",
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 15),

                          Row(
                            children: [
                              const Icon(Icons.notifications_none,
                                  color: Colors.grey),
                              const SizedBox(width: 10),
                              const Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Push Notifications"),
                                    Text(
                                      "For daily update and others.",
                                      style: TextStyle(
                                          fontSize: 12, color: Colors.grey),
                                    ),
                                  ],
                                ),
                              ),
                              Switch(
                                value: isSwitched,
                                activeColor: Colors.blue,
                                onChanged: (val) {
                                  setState(() {
                                    isSwitched = val;
                                  });
                                },
                              )
                            ],
                          ),

                          const SizedBox(height: 25),

                          const Text(
                            "MORE",
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold),
                          ),

                          const SizedBox(height: 10),

                          ListTile(
                            contentPadding: EdgeInsets.zero,
                            leading: const Icon(Icons.phone),
                            title: const Text("Contact Us"),
                            subtitle:
                            const Text("For more information"),
                            trailing: const Icon(Icons.arrow_forward_ios,
                                size: 16),
                          ),

                          const Divider(),

                          ListTile(
                            contentPadding: EdgeInsets.zero,
                            leading: const Icon(Icons.logout),
                            title: const Text("Logout"),
                            trailing: const Icon(Icons.arrow_forward_ios,
                                size: 16),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),

            Container(
              height: 70,
              color: const Color(0xFF1C1C1E),
              child: Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Icon(Icons.home, color: Colors.white),
                      Icon(Icons.description, color: Colors.white),
                      Icon(Icons.chat_bubble_outline, color: Colors.white),
                      SizedBox(width: 50),
                    ],
                  ),

                  Positioned(
                    right: 20,
                    bottom: 5,
                    child: Container(
                      height: 65,
                      width: 65,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 10,
                          )
                        ],
                      ),
                      child: const Icon(Icons.person, color: Colors.blue),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}