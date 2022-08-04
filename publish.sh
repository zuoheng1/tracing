 #!/bin/sh\bash
###
 # @Author: zuoheng
### 
comment=$1
git add .
git commit -m "${comment}"
npm version patch -m "${comment}"
yarn build
git push origin master --tags
npm publish
