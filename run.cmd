@echo ������ʼ״̬

python main.py ^
  --learning-rate 0.0001 ^
  --device cpu ^
  --module-path data/none.pth ^
  --enlarge 500 ^
  --wait-time 0 ^
  --mode ring ^
  --save-only True

@echo ����� 1 ������ vertex.txt

del vertex.txt

python main.py ^
  --learning-rate 0.0001 ^
  --device cpu ^
  --module-path data/temp.pth ^
  --enlarge 500 ^
  --load-path data/p1_re.pth ^
  --wait-time 0.1 ^
  --mode single ^
  --show True ^
  --save-image True ^
  --save-only True

@echo ����� 2 ������ Excel

python main.py ^
  --learning-rate 0.0001 ^
  --device cpu ^
  --module-path data/temp.pth ^
  --enlarge 500 ^
  --load-path data/p2.pth ^
  --wait-time 0.1 ^
  --mode single ^
  --show True ^
  --save-image True ^
  --save-only True ^
  --alpha 36.795 ^
  --beta 78.169

@echo ����� 3 ������

python main.py ^
  --learning-rate 0.0001 ^
  --device cpu ^
  --module-path data/temp.pth ^
  --enlarge 500 ^
  --load-path data/p2.pth ^
  --wait-time 0.1 ^
  --mode single ^
  --alpha 36.795 ^
  --beta 78.169 ^
  --calc-only True