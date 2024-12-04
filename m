Return-Path: <devicetree+bounces-126760-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DD3B19E30C8
	for <lists+devicetree@lfdr.de>; Wed,  4 Dec 2024 02:34:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B665A164083
	for <lists+devicetree@lfdr.de>; Wed,  4 Dec 2024 01:34:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F35D12114;
	Wed,  4 Dec 2024 01:34:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbgjp3.qq.com (smtpbgjp3.qq.com [54.92.39.34])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87F8636D
	for <devicetree@vger.kernel.org>; Wed,  4 Dec 2024 01:34:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.92.39.34
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733276049; cv=none; b=m8OJWH4Uk4HiXhvCBa5WkR0cJaPTIU6R83244vOcZMBLLYV9F4kWzL84t+VU+yv2NrplWUzSyx+yytDFL8v6WrReVNDWALrA5yG/BxP6ynQcx8IJeWrsLCp0IZIQn2K8cney4EiZI9sX+dLaK+kPbMRDhTThRrDVMmyJNtZXX6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733276049; c=relaxed/simple;
	bh=OUPLYA0RwGUpwt4cLeNsVmIzE7PSYHuVblqMZ4HMsb0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lfw8tbGVWLhyt2zojcHgYNCBNl7YN/DTkIw3zeP97CI8Ur3zf+zG83QDac8F8iQreZyoc9+fLjIQIZSehVKwqwXSvNfIoZwLNY5IuXLkV/UcrLRTI2RP/OWSPxTF9qHNkPcgSjaXf7sq4rGaY43nnh+rJuQvi+ZdtiMQI+rv0Sw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=54.92.39.34
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: bizesmtpip4t1733276037tc2o1xi
X-QQ-Originating-IP: mIAJ5jGNqHI9WzkY9PnTP5KVZOet4dlgFiUSDEWWg3M=
Received: from [IPV6:240f:10b:7440:1:c275:7079 ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Wed, 04 Dec 2024 09:33:52 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 798759568462877452
Message-ID: <1E761945EF83B097+dd2dae29-235b-4741-9c4e-dad22b2cf93b@radxa.com>
Date: Wed, 4 Dec 2024 10:33:52 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: fix USB 3.0 bottom port for
 Radxa ROCK 5B
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 dsimic@manjaro.org, alchark@gmail.com, inindev@gmail.com,
 cristian.ciocaltea@collabora.com, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20241130014043.12942-1-naoki@radxa.com>
 <20241130014043.12942-2-naoki@radxa.com> <2724169.KRxA6XjA2N@diego>
 <6o2nwuxemfrdnq74tsag3s5cbdeopk5cgoa2iqg3vpkh64xdvs@gpzehjwjioph>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <6o2nwuxemfrdnq74tsag3s5cbdeopk5cgoa2iqg3vpkh64xdvs@gpzehjwjioph>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtpip:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-QQ-XMAILINFO: MShfLn39PbN2Om0kt0PS7crBK5AawOEllWaID644ItiMmuobkuxFJeVw
	gWYukaTZKj3FaWE2Y7I2lohMzJzTM/USL41td++zzspdashPydbPLalIwPfWP/eNl1nG03m
	Qq2ryr5DMdboNAWmRPAvn2pfLPpD75c0A67k5NKu+Aw3V5g55jsiH1yNjhYvPIS8/AGv0nF
	jP+NDo/6crGbXdhmGJI+d2fGx3X7o/33W/llpICUiAqx5+a5JkAvSx8txbOn9wDe8QXFxwg
	8127pl6vl6fnfNEYbkeSCk5iSJTUPRk0yOpPAyqMSuIv6TJT5G5fGsU36h44Qa6GJc31gPK
	pTwhKzwCx7r3abevd/j1fAz82s9VGhboXJft67/JPKS6VJNJIbaEVlxwhu8Etc5dIQWk4L/
	twE9vFkYINmu/Syco40FKsl7PGWrFHsvn+tqAYV8Mya3lYeHxdeSNV5MN4RKtHlygKywMey
	9lEbjljVOJmBCDh7Vm2fdXYbzZ3iv532Editfs4wjEmBuR8XJu7+f4UVvxG9wJn4y1sGs+p
	57aNoJOzlVz0MNmhXvannnM3ylYfT+1N/eXXgm1oToPvIjomYtS7/6C+qRtvBylsyZNC343
	rJsaQZzIaHLhJgvHgnKE7yBk6ZqElH87xHOennKxoqzW5IGFFl50EyE+RXJ1FewnfFUOUOE
	W5NMFLWs32h+EoPbbKMNajEQ+7SqYecrjcD0BFeiApS9bMAgyYf1u/6uTS87336z6AkOwIe
	irtSFbPeR+3RM1OII2BWIAXuVdeYxXSDN7XxZs+MtbWkqtCkTUNoqCoVrvvuZWwwZOx4nfZ
	c6DXa/RlSI7+M8f4k1Hz3KknsBrbbZ6KHHzaG6TS356f6S4cD8BHdLFoTd75dpRHa+SnimI
	7CCQqczDiaQJk+hbDZqu8Hk0yVsnYowPUA9FnrNmpJ0yOu40uCGb4Q==
X-QQ-XMRINFO: NS+P29fieYNw95Bth2bWPxk=
X-QQ-RECHKSPAM: 0

Hi,

On 12/4/24 02:01, Sebastian Reichel wrote:
> Hi,
> 
> On Tue, Dec 03, 2024 at 05:19:55PM +0100, Heiko Stübner wrote:
>> Am Samstag, 30. November 2024, 02:40:43 CET schrieb FUKAUMI Naoki:
>>> add rockchip,dp-lane-mux to usbdp_phy1 to make it work properly.
>>
>> Make it work properly is not an ideal commit description.
>>
>> I guess the lane assignment for the dp port should be discoverable
>> in the device schematics, so the commit description should explain
>> as much.
> 
> Rock 5B does not have SSRX2P/SSRX2N and SSTX2P/SSTX2N connected to
> anything, so this description is just wrong. The other lanes are
> connected to a USB-A port and thus no USB-C controller is involved,
> which takes care of any muxing. Not specifying any
> rockchip,dp-lane-mux configuration sets mode to UDPHY_MODE_USB,
> which is correct.
> 
> Naoki, if you see any problems, it is most likely a bug in the USBDP
> PHY or DWC3 driver.

sorry, I should write error message. I understand it, please ignore my 
patch.

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

> Greetings,
> 
> -- Sebastian
> 
>>
>>> tested with ELECOM U3HC-A424P10BK[1]:
>>>
>>> $ lsusb -t
>>> /:  Bus 001.Port 001: Dev 001, Class=root_hub, Driver=ehci-platform/1p, 480M
>>>      |__ Port 001: Dev 002, If 0, Class=Hub, Driver=hub/4p, 480M
>>>          |__ Port 003: Dev 003, If 0, Class=Wireless, Driver=btusb, 12M
>>>          |__ Port 003: Dev 003, If 1, Class=Wireless, Driver=btusb, 12M
>>> /:  Bus 002.Port 001: Dev 001, Class=root_hub, Driver=ohci-platform/1p, 12M
>>> /:  Bus 003.Port 001: Dev 001, Class=root_hub, Driver=ehci-platform/1p, 480M
>>> /:  Bus 004.Port 001: Dev 001, Class=root_hub, Driver=xhci-hcd/1p, 480M
>>> /:  Bus 005.Port 001: Dev 001, Class=root_hub, Driver=xhci-hcd/1p, 5000M
>>>      |__ Port 001: Dev 002, If 0, Class=Mass Storage, Driver=usb-storage, 5000M
>>> /:  Bus 006.Port 001: Dev 001, Class=root_hub, Driver=xhci-hcd/1p, 480M
>>>      |__ Port 001: Dev 002, If 0, Class=Hub, Driver=hub/5p, 480M
>>>          |__ Port 005: Dev 003, If 0, Class=Billboard, Driver=[none], 480M
>>> /:  Bus 007.Port 001: Dev 001, Class=root_hub, Driver=xhci-hcd/1p, 5000M
>>>      |__ Port 001: Dev 002, If 0, Class=Hub, Driver=hub/4p, 5000M
>>>          |__ Port 004: Dev 003, If 0, Class=Mass Storage, Driver=usb-storage, 5000M
>>> /:  Bus 008.Port 001: Dev 001, Class=root_hub, Driver=xhci-hcd/1p, 480M
>>> /:  Bus 009.Port 001: Dev 001, Class=root_hub, Driver=xhci-hcd/1p, 5000M
>>>      |__ Port 001: Dev 002, If 0, Class=Mass Storage, Driver=usb-storage, 5000M
>>>
>>> [1] https://www.elecom.co.jp/products/U3HC-A424P10BK.html
>>>
>>> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
>>> ---
>>>   arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts | 1 +
>>>   1 file changed, 1 insertion(+)
>>>
>>> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
>>> index c5776e3b4aab..43fc1f24dfc9 100644
>>> --- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
>>> +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
>>> @@ -918,6 +918,7 @@ &usbdp_phy0 {
>>>   };
>>>   
>>>   &usbdp_phy1 {
>>> +	rockchip,dp-lane-mux = <2 3>;
>>>   	status = "okay";
>>>   };
>>>   
>>>
>>
>>
>>
>>


