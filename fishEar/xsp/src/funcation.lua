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



function 找登陆界面()
x, y = findColor({297, 241, 423, 349}, 
{
	{x=0,y=0,color=0x2ac6ff},
	{x=2,y=0,color=0x27c6ff},
	{x=7,y=0,color=0x68daff}
},
95, 0, 0, 0)
if x > -1 then
	return 1;
end
end



function 登陆()
x, y = findColor({307, 768, 405, 809}, 
{
	{x=0,y=0,color=0x40abff},
	{x=4,y=0,color=0x1c9bff},
	{x=11,y=0,color=0x1c9bff},
	{x=18,y=3,color=0xffffff},
	{x=18,y=6,color=0x1c9bff}
},
95, 0, 0, 0)
if x > -1 then
tap(x,y);
end
end

function 电台()
x, y = findColor({145, 560, 210, 604}, 
{
	{x=0,y=0,color=0xd5d5d5},
	{x=1,y=0,color=0x9b9b9b},
	{x=2,y=0,color=0xa3a3a3},
	{x=3,y=2,color=0xa2a2a2},
	{x=5,y=3,color=0x9b9b9b}
},
95, 0, 0, 0)
if x > -1 then
	tap(x,y);
	return 1;
end
end

function 寻找listen电台()
x, y = findColor({22, 226, 134, 1270}, 
{
	{x=0,y=0,color=0x0a1bbf},
	{x=1,y=2,color=0x192caf},
	{x=4,y=3,color=0x2430a3},
	{x=-1,y=3,color=0x1725a5}
},
95, 0, 0, 0)
if x > -1 then
	tap(x,y);
	return 1;
else
	return -1;
end
end

function 点礼物()
x, y = findColor({633, 1197, 693, 1261}, 
{
	{x=0,y=0,color=0xfe9d0e},
	{x=4,y=-12,color=0xbc9f06},
	{x=4,y=-1,color=0xfe549c},
	{x=4,y=0,color=0xfe357c}
},
95, 0, 0, 0)
if x > -1 then
tap(x,y);
return 1;
end
end

function 发送()
x, y = findColor({596, 1211, 657, 1248}, 
{
	{x=0,y=0,color=0x9de1ff},
	{x=4,y=0,color=0x9be0ff},
	{x=8,y=0,color=0xbfebff},
	{x=11,y=0,color=0x8fddff}
},
95, 0, 0, 0)
if x > -1 then
tap(x,y);
end
end

function 取消主播()
	x, y = findColor({215, 577, 515, 620}, 
{
	{x=0,y=0,color=0xb9e9ff},
	{x=1,y=0,color=0xc2ecff},
	{x=3,y=0,color=0x42c5ff},
	{x=22,y=5,color=0x509dc1}
},
95, 0, 0, 0)
if x > -1 then
tap(x,y);
end
end

function 点击黄金()
x, y = findColor({215, 577, 515, 620}, 
{
	{x=0,y=0,color=0xa7a7a9},
	{x=4,y=0,color=0x605e64},
	{x=9,y=0,color=0x5b595f},
	{x=9,y=3,color=0x56545b},
	{x=7,y=5,color=0x59585e}
},
95, 1, 0, 0)
if x > -1 then
tap(x,y);
end
end

function 点击白银()
x, y = findColor({215, 577, 515, 620}, 
{
	{x=0,y=0,color=0x747378},
	{x=0,y=1,color=0x78777c},
	{x=0,y=2,color=0x56545b},
	{x=1,y=5,color=0x6c6b70},
	{x=2,y=8,color=0x56545b},
	{x=3,y=8,color=0x969598}
},
95, 1, 0, 0)
if x > -1 then
tap(x,y);
end
end


function 送礼物(number)
	while true do
		if(点礼物()==1)then
			break;
		end
    end
	
	mSleep(2000);
	while true do
		if(number == "0")then
			发送();
			break;
		elseif(number == "1")then
			取消主播();
			mSleep(1000);
			点击黄金();
			mSleep(1000);
			发送();
			break;
		elseif(number == "2")then
			取消主播();
			mSleep(1000);
			点击白银();
			mSleep(1000);
			发送();
			break;
		else
			toast("此位置没主播！");
		end
    end
	
end

function 退出房间()
x, y = findColor({638, 84, 681, 109}, 
{
	{x=0,y=0,color=0x9e9ea0},
	{x=3,y=1,color=0xffffff},
	{x=15,y=1,color=0xffffff},
	{x=27,y=1,color=0xffffff}
},
95, 1, 0, 0)
if x > -1 then
tap(x,y);
end

mSleep(2000);

x, y = findColor({256, 979, 439, 1025}, 
{
	{x=0,y=0,color=0x0b0b0b},
	{x=4,y=1,color=0x000000},
	{x=15,y=1,color=0x000000},
	{x=35,y=2,color=0x202020},
	{x=46,y=2,color=0x000000}
},
95, 1, 0, 0)
if x > -1 then

tap(x,y);
return 1;
end
end

function 找电台()
x, y = findColor({135, 560, 215, 622}, 
{
	{x=0,y=0,color=0xb4e8ff},
	{x=2,y=-1,color=0x3ec4ff},
	{x=13,y=-2,color=0x3ec4ff},
	{x=22,y=-1,color=0x3ec4ff}
},
95, 1, 0, 0)
if x > -1 then
tap(59,98);
mSleep(1000);
moveTo(38,607,200);
mSleep(1000);
x, y = findColor({23, 1214, 75, 1263}, 
{
	{x=0,y=0,color=0xfde37c},
	{x=3,y=0,color=0xfde37c},
	{x=3,y=3,color=0xfde37c},
	{x=0,y=3,color=0xfde37c}
},
95, 1, 0, 0)
if x > -1 then
tap(x,y);
end
end
end


function 退出账号()
x, y = findColor({299, 1183, 419, 1217}, 
{
	{x=0,y=0,color=0xffdddd},
	{x=1,y=0,color=0xffbcbc},
	{x=8,y=0,color=0xffbdbd},
	{x=22,y=11,color=0xff4f4f}
},
95, 1, 0, 0)
if x > -1 then
tap(x,y);
end

mSleep(2000);
x, y = findColor({35, 400, 703, 857}, 
{
	{x=0,y=0,color=0x1c9bff},
	{x=9,y=0,color=0x1c9bff},
	{x=17,y=0,color=0x1c9bff},
	{x=25,y=0,color=0xbde2ff},
	{x=26,y=0,color=0xaadaff},
	{x=27,y=0,color=0xcce9ff},
	{x=36,y=2,color=0x1c9bff}
},
95, 1, 0, 0)
if x > -1 then
tap(x,y);
return 1;
end
end


function 过程(number)
		while true do
		登陆();
		mSleep(2000);
			if(电台()==1)then
				break;
			end
		end

		while true do
			if(寻找listen电台()==1)then
				break;
			end
		end

		while true do
			mSleep(3000);
			送礼物(number);
			break;
		end

		while true do
			tap(258,76);
			mSleep(1000);
			tap(258,76);
			if(退出房间()==1)then
				break;
			end
		end

		while true do
			找电台();
			if(退出账号()==1)then
				break;
			end;
		end	
	return;
end


