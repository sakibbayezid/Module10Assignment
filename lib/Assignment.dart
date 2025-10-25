import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: AssignmentPage(),
  ));
}

class Course {
  final String title;
  final String imageUrl;
  const Course({required this.title, required this.imageUrl});
}

const List<Course> courses = [
  Course(
    title: "Full Stack Web Development with JavaScript (MERN)",
    imageUrl: "https://i.imgur.com/ClYJQyJ.png",
  ),
  Course(
    title: "Full Stack Web Development with Python, Django & React",
    imageUrl: "https://i.imgur.com/aKjD1cb.png",
  ),
  Course(
    title: "Full Stack Web Development with ASP.Net Core",
    imageUrl: "https://i.imgur.com/b14Q56m.png",
  ),
  Course(
    title: "SQA: Manual & Automated Testing",
    imageUrl: "https://i.imgur.com/DRwO8kM.png",
  ),
];

class AssignmentPage extends StatelessWidget {
  const AssignmentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text(
          "Courses",
          style: TextStyle(letterSpacing: 0.5),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: GridView.builder(
          itemCount: courses.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: 0.78,
          ),
          itemBuilder: (context, index) {
            return CourseCard(course: courses[index]);
          },
        ),
      ),
    );
  }
}

class CourseCard extends StatelessWidget {
  final Course course;
  const CourseCard({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 6,
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 5,
            child: Image.network(
              course.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Text(
                    course.title,
                    style: const TextStyle(
                      color: Colors.yellow,
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                    ),
                    textAlign: TextAlign.center,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 8),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text("বিস্তারিত দেখুন"),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
