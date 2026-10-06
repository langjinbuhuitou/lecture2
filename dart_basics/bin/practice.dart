// 自主实践：空安全改写、实验报告生成器、分级器扩展

// ---------- 任务1：空安全改写 ----------
// 改写前（有隐患，保留注释做对照）：
// String greet(String? name) {
//   return '你好，' + name; // 编译错误：String? 不能直接当 String 用
// }
// void printLength(String? s) {
//   print(s!.length); // 万一传入 null，空断言直接抛错
// }

// 改写后：
String greet(String? name) {
  return '你好，${name ?? '同学'}'; // 用 ?? 给个默认称呼
}

void printLength(String? s) {
  print(s?.length ?? 0); // 安全调用，null 时输出 0，不再崩
}

// ---------- 任务2：实验报告生成器 ----------
String buildReport({
  required String title,
  required String author,
  String course = '移动应用开发',
  String? summary,
}) {
  return '$course 实验报告：$title，作者：$author，摘要：${summary ?? '无'}';
}

// ---------- 任务3：分级器扩展（边界与非法输入） ----------
String gradeOfV2(int score) {
  if (score < 0 || score > 100) return '非法输入';
  if (score >= 90) return '优'; // 100 分也走这里
  if (score >= 80) return '良';
  if (score >= 60) return '中';
  return '不及格'; // 0 分走这里
}

void practiceDemo() {
  print(greet(null));
  print(greet('李华'));
  printLength(null);
  printLength('abc');

  print(buildReport(title: 'Dart 基础', author: '李华'));
  print(buildReport(title: 'Dart 基础', author: '李华', course: 'Flutter 实践'));
  print(buildReport(title: '布局练习', author: '小明', summary: '示例全部跑通'));

  for (final score in [100, 90, 80, 60, 59, 0, -5, 101]) {
    print('$score 分：${gradeOfV2(score)}');
  }
}
