# 基于python镜像
FROM python:3.11
 
# 工作目录
WORKDIR /code
 
# 拷贝py文件和requirements.txt文件
copY hello_world.py /code/
copY requirements.txt /code/
 
# 更新pip
RUN pip install --upgrade pip --index-url https://pypi.douban.com/simple

# pip安装依赖包
RUN pip install -r requirements.txt

# 暴露端口
EXPOSE 8080

# 执行python文件,
CMD ["python","hello_world.py"]
