# Git-Automation

### Version 1.0.0
git push를 자동화 하기 위한 간단한 스크립트 파일입니다.<br>
**git init, git remote add 후에 사용하시면 됩니다.**
<br>

### 1. gitPush.sh 앞에는 자신의 프로젝트 명을 적어주세요.

ex) homepage_gitpush.sh

<br>

### 2. 본인이 사용하시는 프로젝트에 맞게 시스템 환경변수 값 수정

.bashrc 파일 수정

```vim
# Git Access Info
export env_github_id="Github ID"                            # ex) "abc"
export env_github_Token="Gitgub Access Token"               # ex) "etiwajiojtiojio@#$"
#

# Git remote Address
export env_Project_Name_git="github.com/Address"            # ex) "github.com/hunmin815/Git-Automation.git"
#

# SourceDir
export env_Project_Name_Dir="Source OR Project Directory"   # ex) "/home/ubuntu/Git-Automation/"
#
```

**Project_Name 부분은 자신의 프로젝트명을 넣어주세요**

<br>

### 3. 본인이 사용하시는 프로젝트에 맞게 변수 값 수정

ProjectName_gitPush.sh 파일 내

```vim
Project_name="My Project Name"                              # ex) "Git-Automation"
```
<br>

### 4. 실행방법
```bash
./ProjectName_gitPush.sh
```

<br><br>
## Version 1.1.0 (2021-12-12)

### 1. Choose_Commit_Type.sh 파일 추가
Commit 메세지 작성 시 Type을 선택 할 수 있게 되었습니다.

```bash
===== Choose Commit Type =====
1. Create
2. Chore
3. Docs
4. Feat
5. Fix
6. Refactor
7. Style
8. Update
9. Enter it myself (custom)

Choose Number (ex. 1) : 3
```

기존과 동일하게 ProjectName_gitPush.sh 스크립트를 실행시켜주시면 됩니다.

### 2. Commit Title 직접 입력
Commit Title을 직접 입력 할 수 있습니다.
<br>
```bash
Enter Commit Title : add Description
```

### 실행결과
```bash
========= push Start (Date : Sun Dec 12 03:20:48 KST 2021) =========
git add . ...

git status

===== Choose Commit Type =====
1. Create
2. Chore
3. Docs
4. Feat
5. Fix
6. Refactor
7. Style
8. Update
9. Enter it myself (custom)

Choose Number (ex. 1) : 3
3 is number.

[OK] Commit Type : Docs

Enter Commit Title : add Description
git commit -m Docs add Description

git push!

git push Success~!
========= push OK (Date : Sun Dec 12 03:20:48 KST 2021) =========
```
