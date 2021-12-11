#!/bin/bash

cd $SourceDir
CType_Num=0
ck=0

echo "===== Choose Commit Type ====="
echo "1. Create"
echo "2. Chore"
echo "3. Docs"
echo "4. Feat"
echo "5. Fix"
echo "6. Refactor"
echo "7. Style"
echo "8. Update"
echo "9. Enter it myself (custom)"
echo ""

while [ $ck -eq 0 ]; do
  printf "Choose Number (ex. 1) : "
  read CType_Num
  sleep 0.5

  ck=$CType_Num
  ck=${ck#-}
  ck=${ck//[0-9]/}

  if [ -z "$ck" ]; then
    echo "$CType_Num is number."
    ck=1
    case $CType_Num in
    0)
      ck=0
      echo "[ERROR] $CType_Num is Wrong number."
      echo "Please Retry Choose!"
      ;;
    1)
      CType_Str="Create"
      ;;
    2)
      CType_Str="Chore"
      ;;
    3)
      CType_Str="Docs"
      ;;
    4)
      CType_Str="Feat"
      ;;
    5)
      CType_Str="Fix"
      ;;
    6)
      CType_Str="Refactor"
      ;;
    7)
      CType_Str="Style"
      ;;
    8)
      CType_Str="Update"
      ;;
    9)
      ck=2
      ;;
    esac

    if [ "$ck" -eq 2 ]; then
      echo ""
      echo "====== custom mode ======"
      printf "Enter Commit Type : "
      read CType_Str
    else
      echo ""
    fi
    echo "[OK] Commit Type : $CType_Str"
    export env_CType=$CType_Str
  else
    ck=0
    echo "[ERROR] $CType_Num is not number."
    echo "Please Retry Choose!"
  fi
done
