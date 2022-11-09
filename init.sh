if [ ! -d master-ts ]; then
  git clone https://github.com/DeepDoge/master-ts.git
fi

if [ ! -d master-ts-vite-template ]; then
  git clone https://github.com/DeepDoge/master-ts-vite-template.git
fi

npm i tsx -g
tsx ./scripts/watch.ts

cd ./master-ts
npm i
npm link

cd ../master-ts-vite-template
npm link master-ts