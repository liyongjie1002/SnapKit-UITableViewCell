SnapKit布局，cell高度自适应

## 关键点
### 1. 设置预估高度
```
table.estimatedRowHeight = 50
table.rowHeight = UITableView.automaticDimension
```
### 2. 撑开cell
```
contentLabel.snp.makeConstraints { (make) in
	make.top.left.equalTo(10)
      make.right.bottom.equalTo(-10)
}
```

## 坑
### 1. 先布局，再赋值
这里我踩的坑是最后在layoutSubViews才执行约束布局，在layoutSubViews执行之前都没有布局约束，导致无法撑开cell，你可以在demo中尝试，先有数据再布局无法撑开cell。记得先有布局，再用数据撑开。
### 2. 确定控件高度和bottom约束
控件有高度有底部约束才能撑开cell，label不用设置高度，会自动计算高度，注意设置底部bottom约束
