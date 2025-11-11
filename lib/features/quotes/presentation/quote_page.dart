import 'package:flutter/material.dart';
import '../domain/entities/quote.dart';
import '../domain/repositories/quote_repository.dart';

class QuotePage extends StatefulWidget {
  final QuoteRepository repository;
  const QuotePage({super.key, required this.repository});

  @override
  State<QuotePage> createState() => _QuotePageState();
}

class _QuotePageState extends State<QuotePage> {
  Quote? _quote;
  bool _loading = false;

  Future<void> _fetchQuote() async {
    setState(() => _loading = true);
    final q = await widget.repository.getRandomQuote();
    setState(() {
      _quote = q;
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Quote Fetcher")),
      body: Center(
        child: _loading
            ? CircularProgressIndicator()
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (_quote != null)
                    Text(
                      _quote!.text,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
                    ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: _fetchQuote,
                    child: Text("Get Random Quote"),
                  ),
                ],
              ),
      ),
    );
  }
}
