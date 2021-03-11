# 由于服务器构建出错转为本地构建
# 清空缓存
rm -rf ./dist;
git add .;
git commit -m 'chore: 清空缓存';
git push;

# 更新版本
npm run build;
cp ./public/report.js ./dist;
git add .;
git commit -m 'chore: 更新版本';
git push;

echo '发布完成';