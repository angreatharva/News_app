import 'dart:convert';

import 'package:http/http.dart' as http;

import '../components/searchbar.dart';
import '../utils/key.dart';

Future<List> FetchGeneralNews() async {
  final response = await http.get(
    Uri.parse(  
        'https://newsapi.org/v2/top-headlines?country=us&category=general&pageSize=100&apiKey=' +
            Key.key +
            '&q=' +
            SearchBar.searchcontroller.text),
  );
  Map result = jsonDecode(response.body);
  print('Fetched');
  print(result);

  return (result['articles']);
}

Future<List> FetchHealthNews() async {
  final response = await http.get(
    Uri.parse(
        'https://newsapi.org/v2/top-headlines?country=us&category=health&pageSize=100&apiKey=' +
            Key.key +
            '&q=' +
            SearchBar.searchcontroller.text),
  );
  Map result = jsonDecode(response.body);
  print('Fetched');

  return (result['articles']);
}

Future<List> FetchTechNews() async {
  final response = await http.get(
    Uri.parse(
        'https://newsapi.org/v2/top-headlines?country=us&category=technology&pageSize=100&apiKey=' +
            Key.key +
            '&q=' +
            SearchBar.searchcontroller.text),
  );
  Map result = jsonDecode(response.body);
  print('Fetched');

  return (result['articles']);
}

Future<List> FetchScienceNews() async {
  final response = await http.get(
    Uri.parse(
        'https://newsapi.org/v2/top-headlines?country=us&category=science&pageSize=100&apiKey=' +
            Key.key +
            '&q=' +
            SearchBar.searchcontroller.text),
  );
  Map result = jsonDecode(response.body);
  print('Fetched');

  return (result['articles']);
}

Future<List> FetchBusinessNews() async {
  final response = await http.get(
    Uri.parse(
        'https://newsapi.org/v2/top-headlines?country=us&category=business&pageSize=100&apiKey=' +
            Key.key +
            '&q=' +
            SearchBar.searchcontroller.text),
  );
  Map result = jsonDecode(response.body);
  print('Fetched');

  return (result['articles']);
}

Future<List> FetchSportsNews() async {
  final response = await http.get(
    Uri.parse(
        'https://newsapi.org/v2/top-headlines?country=us&category=sports&pageSize=100&apiKey=' +
            Key.key +
            '&q=' +
            SearchBar.searchcontroller.text),
  );
  Map result = jsonDecode(response.body);
  print('Fetched');

  return (result['articles']);
}

Future<List> FetchEntertainmentNews() async {
  final response = await http.get(
    Uri.parse(
        'https://newsapi.org/v2/top-headlines?country=us&category=entertainment&pageSize=100&apiKey=' +
            Key.key +
            '&q=' +
            SearchBar.searchcontroller.text),
  );
  Map result = jsonDecode(response.body);
  print('Fetched');

  return (result['articles']);
}
