import 'package:flutter/material.dart';
import 'package:user/src/services/home.service.dart';
import 'package:user/src/types/home.type.dart';

final homeService = HomeService();

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

IPost? post;

getTodo() async {
  post = await homeService.getTodos();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  void initState() {
    print("home init state");
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: FutureBuilder(
            future: getTodo(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                // loading state
                return const CircularProgressIndicator();
              } else if (snapshot.connectionState == ConnectionState.done) {
                if (snapshot.hasError) {
                  return const Text("Error");
                } else {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("USER_ID => ${post?.userId ?? 'User Id empty'}"),
                      Text("TITLE => ${post?.title ?? 'Title empty'}"),
                    ],
                  );
                }
              } else {
                return const Text("No Data");
              }
            },
          ),
        ),
      ),
    );
  }
}
