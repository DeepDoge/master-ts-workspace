if [ ! -d library ]; then
  git clone https://github.com/DeepDoge/master-ts.git library
fi

if [ ! -d template ]; then
  git clone https://github.com/DeepDoge/master-ts-vite-template.git template
fi

cd ./library
npm i
npm link

cd ../template
npm link master-ts

npm i tsx -g