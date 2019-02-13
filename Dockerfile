FROM bdhwan/khaiii-api-server:0.0.1
MAINTAINER bdhwan@gmail.com



#디폴트 셋은 삭제 후 추가한다
RUN rm -rf /workspace/khaiii/rsc/src/preanal.manual
ADD preanal/preanal.manual /workspace/khaiii/rsc/src/preanal.manual

#추가파일은 그냥 추가하면된다. 원하는 파일 만들어서 추가하기
ADD preanal/preanal.manual2 /workspace/khaiii/rsc/src/preanal.manual2

WORKDIR /workspace/khaiii/build
# RUN cd /workspace/khaiii/build/
RUN make resource

WORKDIR /home


