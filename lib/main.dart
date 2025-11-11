import 'package:flutter/material.dart';
import 'features/quotes/data/quote_repository_impl.dart';
import 'features/quotes/presentation/quote_page.dart';

void main() {
  final repository = QuoteRepositoryImpl(); // dependency injection
  runApp(MyApp(repository: repository));
}

class MyApp extends StatelessWidget {
  final QuoteRepositoryImpl repository;

  const MyApp({super.key, required this.repository});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quote Fetcher',
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.blue),
      home: QuotePage(repository: repository),
    );
  }
}
