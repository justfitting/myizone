#!/bin/bash
# 激活虚拟环境
VIRTUALENV_DIR=/home/www/py38/bin
source $VIRTUALENV_DIR/bin/activate
#进入项目目录
DJANGO_DIR=/home/www/wwwroot/izone
cd $DJANGO_DIR
#启动Gunicorn服务
gunicorn izone.wsgi:application \
--bind 0.0.0.0:8080 \
--workers 2 \
--timeout 30 \
--daemon \
--access-logfile /home/www/izone/gunicorn/boluomi_access.log \
--error-logfile /home/www/izone/gunicorn/boluomi_error.log
