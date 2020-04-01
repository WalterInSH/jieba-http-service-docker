FROM python:3.6

# See compatible python versions for paddlepaddle-tiny here:
# https://pypi.org/project/paddlepaddle-tiny/1.6.1/#files
RUN pip install functions-framework && \
    pip install -i https://mirrors.aliyun.com/pypi/simple/ jieba && \
    pip install paddlepaddle-tiny==1.6.1

WORKDIR /root

ADD main.py ./

EXPOSE 8080

CMD ["functions-framework", "--target", "jieba", "--port", "8080"]
