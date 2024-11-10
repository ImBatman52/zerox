# 使用 Node.js 的官方基础镜像
FROM node:18-alpine

# 设置工作目录
WORKDIR /app

# 复制 package.json 和 package-lock.json 以安装依赖
COPY package*.json ./

# 安装依赖
RUN npm install --production

# 复制项目的所有源代码到工作目录
COPY . .

# 如果项目需要打包编译，可以在此执行编译命令
# 比如：RUN npm run build

# 暴露端口（假设 zerox 监听在 3000 端口）
EXPOSE 3000

# 启动应用
CMD ["npm", "start"]
