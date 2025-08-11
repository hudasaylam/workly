class Comment {
  final String? name, image, source, text;
  Comment({this.name, this.image, this.source, this.text});
}

List<Comment> comments = [
  Comment(
    name: 'Omar Youssef',
    source: 'Flutter Developer, TechVision',
    image: 'images/man1.jpg',
    text:
        'This platform helped me find my dream job in less than two weeks! The process was super easy and the team is very supportive.',
  ),
  Comment(
    name: 'Lina Haddad',
    source: 'HR Manager, CreativeStudio',
    image: 'images/woman1.jpg',
    text:
        'We hired two amazing talents from here. Highly recommend for any company looking for fresh skills.',
  ),
  Comment(
    name: 'Ahmad Salman',
    source: 'Backend Engineer, DataFlow',
    image: 'images/man2.jpg',
    text:
        'The UI is so friendly and there are always new jobs posted every day. Five stars!',
  ),
  Comment(
    name: 'Samar Al-Khatib',
    source: 'UI/UX Designer',
    image: 'images/woman2.jpg',
    text:
        'Best job portal I have tried! I especially loved the instant notifications and detailed job descriptions.',
  ),
  Comment(
    name: 'Mohammed Hasan',
    source: 'Digital Marketing Specialist',
    image: 'images/man3.jpg',
    text:
        'Thanks to Workly, I switched careers and found a position that suits my passion!',
  ),
];
