// 成绩分级器与 for-in 循环
String gradeOf(int score) {
  if (score >= 90) return '优';
  if (score >= 80) return '良';
  if (score >= 60) return '中';
  return '不及格';
}

void flowDemo() {
  for (final score in [59, 72, 85, 96]) {
    print('$score 分：${gradeOf(score)}');
  }
  for (final i in [1, 2, 3]) {
    print('第$i题');
  }
}
