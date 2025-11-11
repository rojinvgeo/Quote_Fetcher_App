import '../domain/entities/quote.dart';
import '../domain/repositories/quote_repository.dart';

class QuoteRepositoryImpl implements QuoteRepository {
  final List<String> _quotes = [
    "Keep it simple.",
    "Clean code is beautiful code.",
    "Small is scalable.",
  ];

  @override
  Future<Quote> getRandomQuote() async {
    await Future.delayed(Duration(milliseconds: 500)); // simulate delay
    _quotes.shuffle();
    return Quote(_quotes.first);
  }
}
