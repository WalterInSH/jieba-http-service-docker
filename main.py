import jieba
import jieba.analyse

jieba.enable_paddle()# 启动paddle模式。 0.40版之后开始支持，早期版本不支持

def jiebaAPI(request):
    seg_list = jieba.cut(request.data, use_paddle=True) # 使用paddle模式
    return '\n'.join(list(seg_list))
