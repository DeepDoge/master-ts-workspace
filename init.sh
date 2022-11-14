if [ ! -d module ]; then
  git clone https://github.com/DeepDoge/master-ts.git module
fi

if [ ! -d app ]; then
  git clone https://github.com/DeepDoge/master-ts-vite-template.git app
fi

cd ./module
npm i
npm link

cd ../app
npm link master-ts

npm i tsx -g