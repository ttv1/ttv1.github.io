all : minus plus typo

minus:
	-@ git  rm _*     2> /dev/null
	-@ rm -f _*       2> /dev/null

plus:
	- cp -r ../src/docs/* .
	- rm *.py
	- git add *

depends :
	bash depends

typo:  ready 
	@- git status
	@- git commit -am "saving"
	@- git push origin master

commit:   ready
	@- git status
	@- git commit -a
	@- git push origin master

update: ready; @- git pull origin master
status:; @- git status

ready: gitting timm

gitting:
	@git config --global credential.helper cache
	@git config credential.helper 'cache --timeout=3600'

your:
	@git config --global user.name "Your name"
	@git config --global user.email your@email.address

timm:
	@git config --global user.name "Tim Menzies"
	@git config --global user.email tim.menzies@gmail.com
