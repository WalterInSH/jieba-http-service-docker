FROM python:3.6

# See compatible python versions for paddlepaddle-tiny here:
# https://pypi.org/project/paddlepaddle-tiny/1.6.1/#files
RUN pip install -i https://mirrors.aliyun.com/pypi/simple/ jieba paddlepaddle-tiny==1.6.1 functions-framework

WORKDIR /root

ADD main.py ./

EXPOSE 8080

CMD ["functions-framework", "--target", "jiebaAPI", "--port", "8080"]
