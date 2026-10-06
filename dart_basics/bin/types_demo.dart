// 变量声明、内置类型、字符串插值、空安全四件套

// 安全调用与空默认值：参数可空，分析器无法提前判定是不是 null
void showNullable(String? nickname) {
  print(nickname?.length); // 为 null 时短路，输出 null
  print(nickname ?? '未填写'); // null 时改用后面的默认值
}

// 空断言：调用方要保证传入非 null，这里故意传入 'hu'
void showLengthWithAssert(String? value) {
  print(value!.length);
}

void typesDemo() {
  var title = '第一次作业'; // 类型推断为 String
  int year = 2026;
  double score = 92.5;
  const pi = 3.14159; // 编译期常量
  print('$title：$year 年，成绩 $score，圆周率 $pi');

  showNullable(null); // 输出 null、未填写
  showLengthWithAssert('hu'); // 输出 2

  late String token; // 延迟初始化：承诺使用前一定赋值
  token = 'abc123';
  print('token 长度：${token.length}');
}
