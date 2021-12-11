# Git-Automation
git push를 자동화 하기 위한 간단한 스크립트 파일입니다.

<br>

### 1. gitPush.sh 앞에는 자신의 프로젝트 명을 적어주세요.
ex) homepage_gitpush.sh

<br>

### 2. 본인이 사용하시는 프로젝트에 맞게 시스템 환경변수 값 수정

.bashrc 파일 수정

```vim
# Git Access Info
export env_github_id="Github ID"
export env_github_Token="Gitgub Access Token"
#

# Git remote Address
export env_autoTradeGit="github.com/Address"
#

# SourceDir
export env_autoTradeDir="Source OR Project Directory"
#
```

<br>

### 3. 본인이 사용하시는 프로젝트에 맞게 변수 값 수정

ProjectName_gitPush.sh 파일 내

```vim
Project_name="My Project Name"
```
