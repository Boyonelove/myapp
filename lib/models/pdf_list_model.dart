import 'package:pdf_manager/models/pdf_file_model.dart';

class PdfListDir {
  final String name;
  final List<PdfFile> pdfFiles;

  PdfListDir({required this.name, required this.pdfFiles});

  void add(PdfFile file) {
    pdfFiles.add(file);
  }

  void remove(PdfFile pdfFile) {
    pdfFiles.removeWhere((file) => file.name == pdfFile.name);
  }

  void update(PdfFile pdfFile, int index) {
    pdfFiles.removeAt(index);
    pdfFiles.insert(index, pdfFile);
  }
}
