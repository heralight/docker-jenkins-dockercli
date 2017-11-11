push:
	git checkout -b $(tag)
	dockerversion=$(dockerversion) jenkinsversion=$(jenkinsversion) dockercomposeversion=$(dockercomposeversion)  ./envsubstSc.sh < Dockerfile-$(platform)  2> /dev/null > Dockerfile
	-git commit -am"auto-build $(tag)"
	git tag -f $(tag) `git rev-parse HEAD`
	git checkout -
	git branch -D $(tag)
	git push origin $(tag)

help:
	@echo "jenkinsversion=lts dockerversion=17.09.0-ce dockercomposeversion=1.17.1 platform=alpine tag=17.09.0-ce-lts-alpine make push"

