import 'package:flutter/material.dart';
import 'Machine_Recognition.dart'; // Machine_Recognition.dart 파일을 임포트
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart'; // 패키지 임포트

class UserRegistrationPage extends StatelessWidget {
  const UserRegistrationPage({super.key});

  void showWarningSnackbar(BuildContext context) {
    final snackBar = SnackBar(
      content: AwesomeSnackbarContent(
        title: '이런!',
        message: '기기 인식이 제대로 안 됐어요.\n 다시 한 번 기기에 눈을 마주쳐 주세요.',
        contentType: ContentType.warning,
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
      behavior: SnackBarBehavior.floating,
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF9D0), // 배경색 설정
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFF9D0), // 배경색 설정
        elevation: 0, // 그림자 제거
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: Image.asset(
              'assets/Test_Profile.png', // 이미지 경로
              width: 35,
              height: 35,
            ),
            onPressed: () {
              // 버튼 기능 추가 예정
            },
          ),
          const SizedBox(width: 10), // 약간의 간격 추가
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              '등록된 기기',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Divider(color: Colors.grey, thickness: 1), // 등록된 기기 밑에 얇은 회색 선
            const SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    leading: SizedBox(
                      width: 50, // 이미지 너비 조절
                      height: 50, // 이미지 높이 조절
                      child: Image.asset('assets/fan.jpg'), // 기기 아이콘 경로
                    ),
                    title: const Text('선풍기'),
                    subtitle: const Text('시원한 바람이 나오는 가전제품이다.'),
                    onTap: () {
                      // 기기 클릭 시 기능 추가 예정
                    },
                  ),
                  const Divider(color: Colors.grey, thickness: 0.5), // 각 기기 사이에 얇은 회색 선
                  ListTile(
                    leading: SizedBox(
                      width: 50, // 이미지 너비 조절
                      height: 50, // 이미지 높이 조절
                      child: Image.asset('assets/light.jpg'), // 기기 아이콘 경로
                    ),
                    title: const Text('무드등'),
                    subtitle: const Text('분위기를 만들어주는 가전제품이다.'),
                    onTap: () {
                      // 기기 클릭 시 기능 추가 예정
                    },
                  ),
                  const Divider(color: Colors.grey, thickness: 0.5), // 각 기기 사이에 얇은 회색 선
                  ListTile(
                    leading: SizedBox(
                      width: 50, // 이미지 너비 조절
                      height: 50, // 이미지 높이 조절
                      child: Image.asset('assets/TV.jpg'), // 기기 아이콘 경로
                    ),
                    title: const Text('TV'),
                    subtitle: const Text('시청할 수 있는 가전제품이다.'),
                    onTap: () {
                      // 기기 클릭 시 기능 추가 예정
                    },
                  ),
                  const Divider(color: Colors.grey, thickness: 0.5), // 각 기기 사이에 얇은 회색 선
                ],
              ),
            ),
            const SizedBox(height: 24),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFCAF4FF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MachineRecognitionPage()),
                  );
                },
                child: const Text(
                  '기기 등록하러 가기',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFCAF4FF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                ),
                onPressed: () {
                  showWarningSnackbar(context);
                },
                child: const Text(
                  'Test',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
