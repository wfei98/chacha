require "radio"
function tap(x,y)
touchDown(0, x, y)
mSleep(100)
touchUp(0, x, y)  
end

function moveTo(x,y,l)
touchDown(0,x,y); 
for i = 0, l, 10 do   --使用for循环连续滑动
    touchMove(0, x, y - i); 
    mSleep(150);        --延迟
end
touchUp(0, x, y + l); --在 (350, 550) 抬起
end



function 登陆按钮()
x, y = findColor({318, 679, 405, 725}, 
{
	{x=0,y=0,color=0xc4e5ff},
	{x=1,y=0,color=0xc4e5ff},
	{x=2,y=0,color=0xc4e5ff},
	{x=3,y=0,color=0xc4e5ff},
	{x=4,y=0,color=0xc4e5ff},
	{x=5,y=0,color=0xc4e5ff},
	{x=6,y=0,color=0xc4e5ff},
	{x=7,y=0,color=0xc4e5ff},
	{x=10,y=0,color=0xc4e5ff},
	{x=10,y=17,color=0x71c0ff},
	{x=10,y=20,color=0x71c0ff},
	{x=10,y=22,color=0x71c0ff},
	{x=10,y=24,color=0xd4ecff},
	{x=18,y=25,color=0x8dcdff},
	{x=20,y=25,color=0xffffff},
	{x=22,y=25,color=0xa8d9ff},
	{x=27,y=25,color=0x6ebfff},
	{x=33,y=25,color=0xffffff},
	{x=37,y=21,color=0x95d0ff},
	{x=43,y=22,color=0xd8eeff}
},
70, 0, 0, 0)
if x > -1 then
tap(x,y);
end
end

function 找登陆界面()
x, y = findColorInRegionFuzzy(0x8fcdff, 95, 291, 197, 429, 338, 0, 0)
if x > -1 then
	return 1;
end
end

function 输入账号(account)
tap(294,458);
mSleep(500);
inputTextinputText("#CLEAR#");
inputText(account);
end


-- 计算table长度
function table_leng(t)
  local leng=0
  for k, v in pairs(t) do
    leng=leng+1
  end
  return leng;
end


function 输入账号(account)
x, y = findColor({36, 406, 671, 505}, 
{
	{x=0,y=0,color=0xefefef},
	{x=4,y=0,color=0xefefef},
	{x=7,y=0,color=0xefefef},
	{x=12,y=0,color=0xefefef},
	{x=66,y=0,color=0xefefef},
	{x=133,y=0,color=0xefefef},
	{x=190,y=0,color=0xefefef}
},
95, 0, 0, 0)
if x > -1 then
tap(294,458);
mSleep(500);
i = 0;
while i < 4 do
mSleep(30);
inputText("#CLEAR#");
i = i+1;
end
mSleep(500);
inputText(account);
return 1;
end
end

function 输入密码(password)
x, y = findColor({38, 501, 678, 597}, 
{
	{x=0,y=0,color=0xd0d0d0},
	{x=1,y=0,color=0xdddddd},
	{x=1,y=-1,color=0xcdcdcd},
	{x=2,y=-1,color=0xd6d6d6},
	{x=2,y=-2,color=0xcccccc},
	{x=4,y=-2,color=0xfafafa},
	{x=8,y=1,color=0xd3d3d3},
	{x=9,y=2,color=0xdbdbdb},
	{x=9,y=-2,color=0xcdcdcd},
	{x=10,y=-1,color=0xe0e0e0}
},
95, 0, 0, 0)
if x > -1 then
tap(348,547);
inputText(password);
end
end

function 验证码()
x, y = findColor({285, 77, 433, 137}, 
{
	{x=0,y=0,color=0x2f2f2f},
	{x=1,y=0,color=0x2f2f2f},
	{x=2,y=0,color=0x747474},
	{x=6,y=0,color=0x5a5a5a},
	{x=7,y=0,color=0x2f2f2f},
	{x=8,y=0,color=0x444444},
	{x=14,y=0,color=0x2f2f2f},
	{x=16,y=0,color=0x2f2f2f},
	{x=24,y=0,color=0x2f2f2f},
	{x=34,y=2,color=0x5d5d5d},
	{x=38,y=3,color=0x2f2f2f},
	{x=40,y=5,color=0x8b8b8b}
},
95, 0, 0, 0)
if x > -1 then
mSleep(3000);
toast("请手动验证！！！");
end
end

function 发现()
x, y = findColor({233, 1193, 307, 1274}, 
{
	{x=0,y=0,color=0x26c4ea},
	{x=1,y=0,color=0x2ac5e7},
	{x=2,y=0,color=0x2cc7e6},
	{x=3,y=0,color=0x2ac8e7},
	{x=4,y=0,color=0x28c8e8},
	{x=5,y=0,color=0x25c9ea},
	{x=14,y=0,color=0xb5b15e},
	{x=18,y=0,color=0xf59f1b},
	{x=21,y=0,color=0xf8a921},
	{x=23,y=-4,color=0x2bcce2},
	{x=23,y=-7,color=0xfeca33}
},
95, 0, 0, 0)
if x > -1 then
tap(x,y);
end
end

function 聊天室()
x, y = findColor({32, 591, 199, 651}, 
{
	{x=0,y=0,color=0xff6687},
	{x=-8,y=0,color=0xfb6886},
	{x=-7,y=4,color=0xff6988},
	{x=-5,y=6,color=0xff6684},
	{x=-3,y=8,color=0xff6c8b},
	{x=-1,y=11,color=0xff6985},
	{x=9,y=11,color=0xf7a2b5},
	{x=9,y=6,color=0xff658b},
	{x=13,y=2,color=0xff7c97},
	{x=14,y=-2,color=0xff86a1},
	{x=13,y=-6,color=0xff86a5}
},
95, 0, 0, 0)
if x > -1 then
tap(x,y);
end
end

function 电台()
x, y = findColor({488, 410, 590, 477}, 
"0|0|0x2f2f2f,1|0|0x303030,1|1|0x2f2f2f,0|1|0x2f2f2f,0|6|0x2f2f2f,1|6|0x323232,1|7|0x2f2f2f,0|7|0x2f2f2f,0|12|0x2f2f2f,1|12|0x303030",
95, 0, 0, 0)
if x > -1 then
mSleep(2000);
tap(x,y);
return 1;
else
return -1;
end
end

function 确认电台()
x, y = findColor({506, 423, 573, 467}, 
"0|0|0x1d9aff,3|0|0x1d9aff,9|0|0x1d9aff,9|3|0x1d9aff,9|8|0x1d9aff,9|12|0x1d9aff,10|19|0x4eb0ff",
95, 0, 0, 0)
if x > -1 then
return 1;
end

end

function 寻找电台(number)
	if(number == "0")then
		return 一幕电台();
	elseif(number == "1")then
		return Listen电台();
	elseif(number == "2")then
		return 耳抚电台();
	elseif(number == "3")then
		return 初音电台();
	elseif(number == "4")then
		return Luna电台();
	elseif(number == "5")then
		return IF电台();
	elseif(number == "6")then
		return 拾光电台();
	elseif(number == "7")then
		return 原色电台();
	elseif(number == "8")then
		return 屿声电台();
	elseif(number == "9")then
		return 星辰电台();
	elseif(number == "10")then
		return 乐事电台();
	elseif(number == "11")then
		return 清暮电台();
	end
end

function 离开房间()
x, y = findColor({640, 94, 692, 115}, 
{
	{x=0,y=0,color=0xffffff},
	{x=1,y=0,color=0xffffff},
	{x=3,y=0,color=0xffffff},
	{x=5,y=0,color=0xf2f2f9},
	{x=12,y=0,color=0xf2f2f9},
	{x=15,y=0,color=0xffffff},
	{x=18,y=0,color=0xffffff},
	{x=19,y=0,color=0xf2f2f9},
	{x=26,y=0,color=0xf2f2f9},
	{x=32,y=0,color=0xffffff}
},
95, 0, 0, 0)
if x > -1 then
tap(x,y);
mSleep(2000);
end
x, y = findColor({46, 857, 685, 946}, 
{
	{x=0,y=0,color=0x0b0b0b},
	{x=2,y=0,color=0x323232},
	{x=6,y=0,color=0x8f8f8f},
	{x=8,y=0,color=0x090909},
	{x=12,y=0,color=0x000000},
	{x=15,y=0,color=0x000000},
	{x=19,y=0,color=0x4b4b4b},
	{x=21,y=0,color=0xffffff},
	{x=24,y=0,color=0x000000},
	{x=41,y=3,color=0xd9d9d9},
	{x=41,y=4,color=0x000000},
	{x=41,y=5,color=0x000000},
	{x=49,y=5,color=0x000000},
	{x=77,y=5,color=0x454545},
	{x=109,y=5,color=0x6a6a6a},
	{x=115,y=5,color=0x000000},
	{x=125,y=5,color=0x000000}
},
95, 0, 0, 0)
if x > -1 then
mSleep(1000);
tap(x,y);
end
end



function 找礼物()
x, y = findColor({430, 1194, 489, 1245}, 
{
	{x=0,y=0,color=0xff5134},
	{x=5,y=0,color=0xff5134},
	{x=17,y=0,color=0xff7535},
	{x=19,y=0,color=0xffdc3a},
	{x=21,y=0,color=0xffcc39},
	{x=23,y=0,color=0xff5534},
	{x=31,y=-5,color=0xfdc93c},
	{x=36,y=6,color=0xf13d1f},
	{x=20,y=8,color=0xffaa04},
	{x=20,y=13,color=0xffdc3a}
},
95, 0, 0, 0)
if x > -1 then
tap(x,y);
end
end

function 发送()
x, y = findColor({597, 1211, 684, 1255}, 
{
	{x=0,y=0,color=0x6ebeff},
	{x=0,y=1,color=0x58b5ff},
	{x=0,y=6,color=0xffffff},
	{x=0,y=7,color=0x69bcff},
	{x=0,y=12,color=0xb2ddff},
	{x=0,y=16,color=0x94cfff},
	{x=0,y=21,color=0xfdfeff},
	{x=18,y=21,color=0xa5d7ff},
	{x=22,y=21,color=0x89caff},
	{x=26,y=20,color=0xc0e3ff},
	{x=33,y=18,color=0xa5d7ff},
	{x=33,y=11,color=0x59b5ff}
},
95, 0, 0, 0)
if x > -1 then
mSleep(1000);
tap(x,y);
return 1;
end
end

function 我的()
x, y = findColor({602, 1201, 659, 1270}, 
{
	{x=0,y=0,color=0x58f0f8},
	{x=1,y=0,color=0x2cd6fa},
	{x=3,y=0,color=0x49e1fd},
	{x=4,y=0,color=0x3eddff},
	{x=6,y=0,color=0xa4d9a7},
	{x=5,y=2,color=0x58d1c0},
	{x=1,y=2,color=0x42dffc},
	{x=-1,y=2,color=0x56dbea},
	{x=2,y=4,color=0x22d2ed}
},
95, 0, 0, 0);
if x > -1 then
tap(x,y);
mSleep(1000);
moveTo(260,896,400);
end
end

function 电台返回()
x, y = findColor({290, 79, 424, 135}, 
{
	{x=0,y=0,color=0x838383},
	{x=4,y=0,color=0x4c4c4c},
	{x=8,y=0,color=0x2f2f2f},
	{x=13,y=0,color=0x2f2f2f},
	{x=18,y=0,color=0x2f2f2f},
	{x=24,y=0,color=0x2f2f2f},
	{x=29,y=0,color=0x2f2f2f},
	{x=28,y=19,color=0xffffff},
	{x=28,y=18,color=0x797979},
	{x=40,y=20,color=0x2f2f2f},
	{x=45,y=19,color=0x808080}
},
95, 0, 0, 0)
if x > -1 then
pressKey('BACK',false);
end
end

function 送礼物()
	while true do
		找礼物();
		-- 等待主播显示
		mSleep(8000);
		if(发送()==1)then
		mSleep(3000);
		tap(348,182);
		tap(348,182);
		mSleep(1500);
		离开房间();
		mSleep(1500);
		end
		break;
	end
end



function 设置()
x, y = findColor({24, 1040, 197, 1122}, 
{
	{x=0,y=0,color=0xced7de},
	{x=2,y=0,color=0xc6d0d8},
	{x=4,y=0,color=0xc6d0d8},
	{x=7,y=0,color=0xc6d0d8},
	{x=10,y=0,color=0xc6d0d8},
	{x=12,y=0,color=0xc6d0d8},
	{x=19,y=0,color=0xc6d0d8},
	{x=27,y=0,color=0xced7dd},
	{x=17,y=15,color=0x99a5ae},
	{x=17,y=14,color=0x99a5ae},
	{x=17,y=10,color=0xa8b2ba}
},
95, 0, 0, 0)
if x > -1 then
tap(x,y);
end
end

function 退出账号()
x, y = findColor({281, 1156, 431, 1189}, 
{
	{x=0,y=0,color=0xff9090},
	{x=3,y=0,color=0xff5b5b},
	{x=4,y=0,color=0xff5b5b},
	{x=4,y=-5,color=0xff5b5b},
	{x=5,y=-5,color=0xffb1b1},
	{x=10,y=-5,color=0xff4f4f},
	{x=12,y=-5,color=0xffb8b8},
	{x=17,y=-5,color=0xffb8b8},
	{x=22,y=-5,color=0xff4f4f},
	{x=40,y=-1,color=0xff4f4f},
	{x=44,y=-1,color=0xff7a7a},
	{x=47,y=-1,color=0xff7a7a}
},
95, 0, 0, 0)
if x > -1 then
tap(x,y);
mSleep(1000)
end
x, y = findColor({529, 695, 607, 741}, 
{
	{x=0,y=0,color=0x5fb8ff},
	{x=2,y=0,color=0x4db1ff},
	{x=3,y=0,color=0x48afff},
	{x=8,y=0,color=0x1c9bff},
	{x=12,y=0,color=0x1c9bff},
	{x=18,y=0,color=0x1c9bff},
	{x=24,y=0,color=0x1c9bff},
	{x=34,y=0,color=0x1c9bff},
	{x=42,y=0,color=0x9cd3ff},
	{x=47,y=9,color=0x1c9bff},
	{x=51,y=9,color=0x1c9bff},
	{x=54,y=9,color=0xffffff}
},
95, 0, 0, 0)
if x > -1 then
mSleep(1000);
tap(x,y);
return 1;
end
end

function 过程(number)
		while true do
			登陆按钮();
			验证码();
			发现();
			聊天室();
			mSleep(2000);
			电台();
			if(确认电台() == 1)then
				break;
			end
		end
		
		while true do
			if(寻找电台(number) == -1)then
				moveTo(260,896,200);
				寻找电台(number);
			else
				break;
			end
		end 
		
		while true do
		送礼物();
		电台返回();
		我的();
		设置();
			if(退出账号()==1)then
				break;
			end
		end
end





