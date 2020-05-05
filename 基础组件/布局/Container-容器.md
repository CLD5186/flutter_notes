### 属性
顾名思义，这是一个外部容器组件，只有一个子组件,可以理解为 WEB 中的一个 div 元素。

| 属性名               | 类型       | 说明     | 参数          |
| -------------------- | ---------- | -------- | ------------- |
| width                | double     | 容器宽度 | 0.0           |
| height               | double     | 容器高度 | 0.0           |
| constraints          |            | 容器大小 | 最大最小宽/高 |
| decoration           |            | 背景装饰 |
| foregroundDecoration |            | 前景装饰 |
| color                | Colors     | 颜色     |
| child                | widget     | 子组件   |
| alignment            | Alignment  | 对齐方式 | 参数见 Demo   |
| transform            |            | 变换     |
| padding              | EdgeInsets | 内边距   | 参数见 Demo   |
| margin               | EdgeInsets | 外边距   | 参数见 Demo   |

> **注意: Container 容器单独使用和放置于特定平台支架下使用有明显不同！下方 Demo 均放置于特定平台支架下。**

![对齐](../Images/init.jpeg)

### 基础使用

```
Container(
  child: Text('123'),
);
```

## alignment 对齐方式

> bottomCenter(下居中) bottomLeft(下左) bottomRight(下右) center(水平垂直居中) centerLeft(垂直居中水平靠左) centerRight(垂直居中水平靠右) topCenter(上居中) topLeft(上左) topRight(上右)

```
Container(
  alignment: Alignment.center,
  child: Text('我是内容'),
);
```

> **注意：若不指定对齐方向，Container 将填充至上层容器最大宽高，否则根据子控件自行调整大小**

## color 颜色

```
Container(
  alignment: Alignment.center,
  color: Colors.blue,
  child: Text('我是内容'),
);
```

## width/height 宽度和高度

```
Container(
  alignment: Alignment.center,
  color: Colors.blue,
  width:30.0,
  height:80.0,
  child: Text('我是内容'),
);
```

## padding/magrin 内/外边距

> EdgeInsets.fromLTRB(左, 上, 右, 下) EdgeInsets.all() EdgeInsets.only(left:xxx) 还有其他属性，可查阅官方文档。

```
Container(
  alignment: Alignment.center,
  color: Colors.blue,
  width:200.0,
  height:80.0,
  padding: EdgeInsets.all(30.0),
  margin: EdgeInsets.all(40.0),
  child: Text('我是内容'),
);
```

## constraints
