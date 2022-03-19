FROM nickblah/lua:5.4-luarocks-buster
RUN luarocks install luaposix
RUN luarocks install luasocket
VOLUME /root/.piecestopractice
COPY . /ptp
WORKDIR /ptp
EXPOSE 80
ENTRYPOINT ./ws.lua
