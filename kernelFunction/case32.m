% 对于非线性特征集的分类过程可拆解为两步：
% 第一步：利用非线性映射，将数据从输入空间映射到特征空间中
% 第二步：使用线性学习器对特征空间的数据进行分类
% 将以上两个步骤融合在一起，建立非线性学习器的方法，称为核函数方法。
% 利用测试点和训练点的內积表示决策规则，称之为核
% 核函数可以隐式完成输入空间数据集到特征空间数据集的映射，从而免去了寻找映射
% 函数的麻烦

% 核矩阵 = K
% 输入空间 X
% 特征空间 Z
% 三种常用核： 线性核、多项式核、高斯核、sigmoid核函数、混合核函数（前面几种结
% 合起来运用的方法）
% 核函数的使用方法：在碰到非线性可分数据的时候，直接调用上面的核函数，带入到支持
% 向量机中，查看分类效果，如果效果不好再继续调用其他的核函数进行进一步调试
% 这样就不需要考虑输入空间到特征空间如何映射的问题，唯一需要考虑的是核函数的适用
% 条件
% 设计一个核函数是很困难的，没有必要轻易尝试






