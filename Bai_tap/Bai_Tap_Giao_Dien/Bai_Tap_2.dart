import 'package:flutter/material.dart';

class ListVExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView Example"),
      ),
      body: ListView(
        padding: EdgeInsets.all(8), // Thêm padding cho toàn bộ ListView
        children: <Widget>[
          Card(
            elevation: 4, // Độ nâng của card
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15), // Bo tròn góc
            ),
            child: ListTile(
              leading: Image(
                  image: NetworkImage(
                      'https://media4.giphy.com/media/v1.Y2lkPTc5MGI3NjExeWt2ODV0eXc0YTBwdGg1YTN0aWMxZjhzNXAwNXJ3cWQyeTl0cWdhMCZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/dyjrpqaUVqCELGuQVr/giphy.webp')),
              title: Text('Trang chủ'),
              subtitle: Text('Khám phá các tính năng chính'), // Dòng phụ
            ),
          ),

      Card(
        elevation: 4, // Độ nâng của card
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15), // Bo tròn góc
        ),
        child: ListTile(
          leading: Image(
              image: NetworkImage(
                  'https://media4.giphy.com/media/v1.Y2lkPTc5MGI3NjExeWt2ODV0eXc0YTBwdGg1YTN0aWMxZjhzNXAwNXJ3cWQyeTl0cWdhMCZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/dyjrpqaUVqCELGuQVr/giphy.webp')),
          title: Text('Trang chủ'),
          subtitle: Text('Khám phá các tính năng chính'), // Dòng phụ
        ),
      ),

          Card(
            elevation: 4, // Độ nâng của card
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15), // Bo tròn góc
            ),
            child: ListTile(
              leading: Image(
                  image: NetworkImage(
                      'https://media4.giphy.com/media/v1.Y2lkPTc5MGI3NjExeWt2ODV0eXc0YTBwdGg1YTN0aWMxZjhzNXAwNXJ3cWQyeTl0cWdhMCZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/dyjrpqaUVqCELGuQVr/giphy.webp')),
              title: Text('Trang chủ'),
              subtitle: Text('Khám phá các tính năng chính'), // Dòng phụ
            ),
          ),
          Card(
            elevation: 4, // Độ nâng của card
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15), // Bo tròn góc
            ),
            child: ListTile(
              leading: Image(
                  image: NetworkImage(
                      'https://media4.giphy.com/media/v1.Y2lkPTc5MGI3NjExeWt2ODV0eXc0YTBwdGg1YTN0aWMxZjhzNXAwNXJ3cWQyeTl0cWdhMCZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/dyjrpqaUVqCELGuQVr/giphy.webp')),
              title: Text('Trang chủ'),
              subtitle: Text('Khám phá các tính năng chính'), // Dòng phụ
            ),
          ),
          Card(
            elevation: 4, // Độ nâng của card
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15), // Bo tròn góc
            ),
            child: ListTile(
              leading: Image(
                  image: NetworkImage(
                      'https://media4.giphy.com/media/v1.Y2lkPTc5MGI3NjExeWt2ODV0eXc0YTBwdGg1YTN0aWMxZjhzNXAwNXJ3cWQyeTl0cWdhMCZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/dyjrpqaUVqCELGuQVr/giphy.webp')),
              title: Text('Trang chủ'),
              subtitle: Text('Khám phá các tính năng chính'), // Dòng phụ
            ),
          ),
        ],
      ),
    );
  }
}
