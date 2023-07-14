import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hubtel_assessment/components/date_container.dart';
import 'package:hubtel_assessment/components/search_text_field.dart';
import 'package:hubtel_assessment/components/transaction_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 200.0,
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 15.0,
              left: 16.0,
            ),
            child: Row(
              children: [
                const Expanded(child: SearchTextField(hint: "Search")),
                const SizedBox(
                  width: 4.0,
                ),
                SvgPicture.asset("assets/images/menu_icon.svg")
              ],
            ),
          ),
          const SizedBox(
            height: 31.0,
          ),
          Expanded(
              child: ListView(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
            ),
            children: [
              Row(
                children: [
                  DateContainer(),
                ],
              ),
              const SizedBox(
                height: 16.0,
              ),
              TransactionCard(),
              const SizedBox(
                height: 16.0,
              ),
              TransactionCard(
                imagePath: "assets/images/absa.png",
                name: "Absa Bank",
                status: Status.failed,
              ),
              const SizedBox(
                height: 16.0,
              ),
              Row(
                children: [
                  DateContainer(
                    date: "May 23, 2022",
                  ),
                ],
              ),
               const SizedBox(
                height: 16.0,
              ),
              TransactionCard(
                imagePath: "assets/images/momo.png",
                name: "Emmanuel Rockson",
              ),
              const SizedBox(
                height: 16.0,
              ),
            ],
          ))
        ],
      ),
      floatingActionButton: SizedBox(
        width: 160.0,
        child: FloatingActionButton(
          onPressed: () {},
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(6.0))),
          backgroundColor: const Color(0xFF01C7B1),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 32.0,
                width: 32.0,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(16.0)),
                  color: Colors.white,
                ),
                child: const Icon(
                  Icons.add_rounded,
                  color: Color(0xFF01C7B1),
                ),
              ),
              const SizedBox(
                width: 8.0,
              ),
              Text(
                "SEND NEW",
                style: GoogleFonts.nunitoSans(
                  fontWeight: FontWeight.w800,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
