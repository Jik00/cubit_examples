import 'package:cubit_examples/books_app/features/home/data/models/book_model/book_model.dart';

BookModel getDummyBooks() {
  return const BookModel(
    	id :"1491912057",
		title:"Python Data Science Handbook",
			subtitle:"Essential Tools for Working with Data",
			authors:"Jake VanderPlas",
			image:"https://www.dbooks.org/img/books/1491912057s.jpg",
			url:"https://www.dbooks.org/python-data-science-handbook-1491912057/"
  );
}

List<BookModel> getDummyEras() => List.generate(5, (index) => getDummyBooks());