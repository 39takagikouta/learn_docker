# ベースイメージ
# FROM ubuntu:20.04
# runの際にシェルで実行したいコマンド（これはubuntuのライブラリをアップデートするためのコマンド
# デフォルトでは自分が使いたいコマンドはほとんど入っていない runのときは-yをつけないといけない（aptの場合）
# RUN apt update
# RUN apt install -y curl

# 存在しないディレクトリを指定した場合は勝手に作ってくれる
# #appの部分はコンテナのどこに配置するか
# COPY . /app/

# CMD ["ls","-la"]

# From ubuntu

# ARG message
# #　message.txtがなければ作られる
# RUN echo $message > message.txt

# CMD ["cat","message.txt"]

FROM ubuntu AS base
RUN apt update
CMD ["sh","-c","echo Myname is $my_name"]

FROM base AS dev
ENV my_name=TEST

FROM base AS pro
ENV my_name=Bob
