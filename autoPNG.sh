


#! bin/sh
#--------------------------------------------
# 这是一个我学习了一天的写的shell，凑活着能用，
# 使用前修改变量 resource_dir为你的png图片目录
# 修改变量 为你的导出路径。
#
#--------------------------------------------
resource_dir=~/Desktop/Assets.xcassets/*/*/*.png #如果有多层文件夹，就加 */，逐层输出
target_dir=~/Desktop/XcodeImage/
filelist=`ls $resource_dir`
for file in $filelist
do
res_file=`echo $file | awk -F "/" '{print $(NF-1)}'`
echo $res_file
echo $file
cp $file $target_dir${res_file%.*}
done


