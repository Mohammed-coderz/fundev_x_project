import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  int selectedIndex = -1;

  final List<Map<String, String>> categories = [
    {"name": "IT Services", "icon": "assets/icons/OBJECTS (1).svg"},
    {"name": "Design", "icon": "assets/icons/Frame 216.svg"},
    {"name": "Marketing", "icon": "assets/icons/OBJECTS.svg"},
    {"name": "Marketing", "icon": "assets/icons/OBJECTS (1).svg"},
    {"name": "Marketing", "icon": "assets/icons/Frame 216.svg"},
    {"name": "Marketing", "icon": "assets/icons/OBJECTS.svg"},
    {"name": "Marketing", "icon": "assets/icons/OBJECTS (1).svg"},
    {"name": "Marketing", "icon": "assets/icons/Frame 216.svg"},
    {"name": "Marketing", "icon": "assets/icons/OBJECTS.svg"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: const Icon(Icons.arrow_back,color: Colors.white,),
        centerTitle: true,
        title: const Text("Categories",style: TextStyle(color: Colors.white),),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                "assets/icons/Notification.svg",
                width: 20,
                height: 20,
              ),
            ),
          )
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
        ),
        child: Column(
          children: [
            const SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search",
                  prefixIcon: const Icon(Icons.search),
                  filled: true,
                  fillColor: Colors.grey.shade200,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),


            Expanded(
              child: GridView.builder(
                padding: const EdgeInsets.all(16),
                itemCount: categories.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 20,
                ),
                itemBuilder: (context, index) {
                  final isSelected = selectedIndex == index;

                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    child: Column(
                      children: [
                        Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                            color:Colors.blue,
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: SvgPicture.asset(
                              categories[index]["icon"]!,
                              width: 30,
                              height: 30,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          categories[index]["name"]!,
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
