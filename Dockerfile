FROM quay.io/hermit/hermit-ser:latest

RUN git clone https://github.com/gascomit/zener /root/zener
WORKDIR /root/zener/
RUN yarn install --network-concurrency 1
CMD ["node", "index.js"]
