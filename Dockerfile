FROM nickblah/lua:5.4-luarocks-buster
RUN apt update && apt install -y build-essential
RUN luarocks install luaposix
RUN luarocks install luasocket
VOLUME /root/.piecestopractice
COPY . /ptp
WORKDIR /ptp
ENTRYPOINT ["./ws.lua"]
