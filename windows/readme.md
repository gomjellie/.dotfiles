# windows 환경설정



## CapsLock -> Ctrl 키로 변경

1. power shell 을 관리자 권한으로 실행시킵니다.

2. 아래의 스크립트를 입력합니다.

   ```shell
   $hexified = "00,00,00,00,00,00,00,00,02,00,00,00,1d,00,3a,00,00,00,00,00".Split(',') | % { "0x$_"};
   
   $kbLayout = 'HKLM:\System\CurrentControlSet\Control\Keyboard Layout';
   
   New-ItemProperty -Path $kbLayout -Name "Scancode Map" -PropertyType Binary -Value ([byte[]]$hexified);
   ```

3. 윈도우즈 재부팅.

   문제점: 평소에는 잘되는데 롤할때 CapsLock + q, w, e, r 로 스킬 찍는게 안됨;; 다른건 잘됨. (TODO: 다른방법으로 등록하면 롤에서도 잘 되는지 알아볼것)

### 꿀팁

1. 윈도우에서는 프로그래밍 안하는게 정신건강에 좋다!