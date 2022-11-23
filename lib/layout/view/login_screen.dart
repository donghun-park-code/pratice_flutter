import 'package:finalproject/common/components/custom_text_form_field.dart';
import 'package:finalproject/common/const/color.dart';
import 'package:finalproject/layout/default_layout.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      child: SingleChildScrollView( // 스크롤이 가능하게 만듬
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag, // 드래그 했을때 키보드가 사라짐
        child: SafeArea(
          top: true,
          bottom: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _title(),
                const SizedBox(height: 16.0),
                _Subtitle(),
                // Image.asset(
                //   'asset/img/misc/logo.png',
                //   width: MediaQuery.of(context).size.width /3 * 2,
                // ),
                const SizedBox(height: 16.0),
                CustomTextFormField(
                  hintText: '이메일을 입력해주세요',
                  onChanged: (String? value) {},
                ),
                const SizedBox(height: 16.0),
                CustomTextFormField(
                  hintText: '비밀번호를 입력해주세요',
                  onChanged: (String? value) {},
                  obscureText: true,
                ),
                const SizedBox(height: 16.0),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: PRIMARY_COLOR,
                  ),
                  child: Text(
                    '로그인',
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    primary: PRIMARY_COLOR,
                  ),
                  child: Text(
                    '회원가입',
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.yellow
                  ),
                  child: Text(
                    '카카오로 로그인하기',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _title extends StatelessWidget {
  const _title({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      '환영합니다',
      style: TextStyle(
        fontSize: 34,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}

class _Subtitle extends StatelessWidget {
  const _Subtitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      '아이디와 비밀번호를 입력해서 로그인 해주세요!\n 오늘도 좋은 하루 되세요 :)',
      style: TextStyle(
        fontSize: 16,
        color: Body_TEXT_COLOR,
      ),
    );
  }
}
