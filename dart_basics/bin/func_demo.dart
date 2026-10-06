// 命名参数、默认值、箭头函数
void enroll({required String name, int age = 18, String? className}) {
  print('$name，$age 岁，班级：${className ?? '未分班'}');
}

int doubleIt(int x) => x * 2; // 箭头函数：单表达式简写

void funcDemo() {
  enroll(name: '李华', className: '2班'); // age 用默认值 18
  enroll(name: '小明'); // age 默认、className 为空
  enroll(name: '小红', age: 20, className: '3班'); // 全部自己传
  print('doubleIt(21) = ${doubleIt(21)}');
}
