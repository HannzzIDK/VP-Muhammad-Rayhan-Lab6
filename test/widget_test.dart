import 'package:flutter_test/flutter_test.dart';

// Import file-file pendukung proyekmu (sesuaikan dengan nama package project-mu)
import 'package:labw6/main.dart';
import 'package:labw6/models/book_repository.dart';
import 'package:labw6/models/loan_repository.dart';
import 'package:labw6/models/fine_calculator_service.dart';
import 'package:labw6/viewmodels/library_viewmodel.dart';

void main() {
  testWidgets('Library app smoke test', (WidgetTester tester) async {
    // 1. Buat instance repository & service mock/dummy untuk pengujian
    final bookRepo = BookRepository();
    final loanRepo = LoanRepository();
    final fineService = FineCalculatorService();

    final viewModel = LibraryViewModel(
      bookRepository: bookRepo,
      loanRepository: loanRepo,
      fineCalculatorService: fineService,
    );

    // 2. Oper viewModel ke MyApp
    await tester.pumpWidget(MyApp(viewModel: viewModel));

    // Sisa assertion tes dasar (jika tidak digunakan, bisa disesuaikan/dihapus)
  });
}
