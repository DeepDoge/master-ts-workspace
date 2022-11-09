if [ ! -d master-ts ]; then
  git clone https://github.com/DeepDoge/master-ts.git
fi

if [ ! -d master-ts-vite-template ]; then
  git clone https://github.com/DeepDoge/master-ts-vite-template.git
fi

cd ./master-ts
npm i
npm link

cd ../master-ts-vite-template
npm link master-ts

npm i tsx -g