import 'package:flutter/material.dart';
import '../backend/functions.dart';
import '../components/appbar.dart';
import '../components/newsbox.dart';
import '../utils/colors.dart';
import '../utils/constants.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late Future<List> news;

  @override
  void initState() {
    super.initState();
    news = FetchGeneralNews();
  }

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: AppColors.black,
        appBar: appbar(),
        body: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ActionChip(
                    label: const Text("General"),
                    onPressed: () {
                      setState(() {
                        news = FetchGeneralNews();
                      });
                    },
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  ActionChip(
                    label: const Text("Health"),
                    onPressed: () {
                      setState(() {
                        news = FetchHealthNews();
                      });
                    },
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  ActionChip(
                    label: const Text("Technology"),
                    onPressed: () {
                      setState(() {
                        news = FetchTechNews();
                      });
                    },
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  ActionChip(
                    label: const Text("Science"),
                    onPressed: () {
                      setState(() {
                        news = FetchScienceNews();
                      });
                    },
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  ActionChip(
                    label: const Text("Business"),
                    onPressed: () {
                      setState(() {
                        news = FetchBusinessNews();
                      });
                    },
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  ActionChip(
                    label: const Text("Sports"),
                    onPressed: () {
                      setState(() {
                        news = FetchSportsNews();
                      });
                    },
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  ActionChip(
                    label: const Text("Entertainment"),
                    onPressed: () {
                      setState(() {
                        news = FetchEntertainmentNews();
                      });
                    },
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                  width: w,
                  child: FutureBuilder<List>(
                    future: news,
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return ListView.builder(
                            itemCount: snapshot.data!.length,
                            itemBuilder: (context, index) {
                              return NewsBox(
                                url: snapshot.data![index]['url'],
                                imageurl:
                                    snapshot.data![index]['urlToImage'] != null
                                        ? snapshot.data![index]['urlToImage']
                                        : Constants.imageurl,
                                title: snapshot.data![index]['title'],
                                time: snapshot.data![index]['publishedAt'],
                                description: snapshot.data![index]
                                        ['description']
                                    .toString(),
                              );
                            });
                      } else if (snapshot.hasError) {
                        return Text("${snapshot.error}");
                      }

                      // By default, show a loading spinner.
                      return Center(
                          child: CircularProgressIndicator(
                        color: AppColors.primary,
                      ));
                    },
                  )),
            ),
          ],
        ));
  }
}
