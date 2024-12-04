Return-Path: <devicetree+bounces-126759-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A0AD09E30C7
	for <lists+devicetree@lfdr.de>; Wed,  4 Dec 2024 02:34:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7A43D164081
	for <lists+devicetree@lfdr.de>; Wed,  4 Dec 2024 01:34:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A75B533D1;
	Wed,  4 Dec 2024 01:34:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbgau1.qq.com (smtpbgau1.qq.com [54.206.16.166])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 110372114
	for <devicetree@vger.kernel.org>; Wed,  4 Dec 2024 01:34:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.206.16.166
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733276049; cv=none; b=SvMWQlqGX/LchaAJnjmHJLdvg6R1Gfs5jMB/EjuhzjSmeZFAiTHGcTyQ6xKjJyT5DwEqlrnnEjjTfFkq+x/Y6ltni9I3natH97i/lcC+mDRrX4w+Sv6HfZOQ1Q1CanAqTG2tfuF1FJDjRCkOXH1WPGaHkYwYSUw+XbSYzMiWcec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733276049; c=relaxed/simple;
	bh=mxUSXwCNru7rQTNK1ZNNZQp7CALSep/yDXJcAtT0apM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pk9UaoxAvrMy7XngItLFVielXlSQk3A/SZET014N4kpIctCSeaQooxXYgAsMo+/zMa+QD2P+BRQ/v03daTY1DzCjzh9YL1smROaRHrf7G5khtvwP8uwE8VnH2okLojOmaVqzTom49KHJqeNmXpTgmVJG+uF1XWToPgct1aJok2U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=54.206.16.166
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: bizesmtpip3t1733275883tnx5ffe
X-QQ-Originating-IP: teASfYra7NZMjwlWGGLXuPXJK9/eEJToD5O7UiJ39Qc=
Received: from [IPV6:240f:10b:7440:1:c275:7079 ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Wed, 04 Dec 2024 09:31:18 +0800 (CST)
X-QQ-SSF: 0001000000000000000000000000000
X-QQ-GoodBg: 2
X-BIZMAIL-ID: 13518081938172122736
Message-ID: <2471CF562C95BE8C+b828c025-8d4c-423d-8cbc-4e30e07fdf32@radxa.com>
Date: Wed, 4 Dec 2024 10:31:17 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: use Type-C port as USB HOST
 port for Radxa ROCK 5B
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 dsimic@manjaro.org, alchark@gmail.com, inindev@gmail.com,
 cristian.ciocaltea@collabora.com, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20241130014043.12942-1-naoki@radxa.com>
 <18640241.sWSEgdgrri@diego>
 <hxctagkzzd37n7q7onvivptj5gsac5tn5gxdlvgo2fuumatjmh@ckvjcxtub26f>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <hxctagkzzd37n7q7onvivptj5gsac5tn5gxdlvgo2fuumatjmh@ckvjcxtub26f>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtpip:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-QQ-XMAILINFO: Mp8EMf2MKfJZxw0VYgcVn53jw+vDjtilK7Y+ec5SXrLEwYVjqyDnrssG
	RFi9rAi71OE0T+uJfmo+bcus63fkb25qwrINzyE1id8U091olgyuaycXch1u82s+RQNHU8x
	/81SJADc9/7wJ/WCYzOzPqC9gFwXkM6+e15z+bCvCDymmb76ihmsboEkEHerD8D1K6g/U3n
	4tUKyR2mCderp7afdJZCS+en3y+313Qxi1uhSwXhFqk9Fy2ZG0PdBRacqq5f21ca5SLI5Xn
	NTgh1kNE/lglR3oKKBkBAh3Qu8E9uJ5/CYLSIQ0OkQVUYnpZah3ZWG580qU1DmxSEar46HG
	EwkGhv0IBHmg19NBz7o698Zr9blYerpUVie7bAtz1fTE49LODyF8C5hdTC3xTsLqdpRyyvB
	dTlEvm+AgcduxxDMQtT71k7d9rO2NmdSCqIfMlYoOzcMFcVoIgFsWvoFgDCY0Af56dXKrXb
	ASM515JONSNARW16u9QYyFqG6jGP4X2frFFQgAti7h9caeFSM93O8J9EmonRY5cTYGaCdNm
	xXHE11OHv37uOLsn1KWW9LdK8EINDBkC1CHW2rSJg/rfDOrOK8I7+Ss7d0v5Hx44Rime4FP
	iHwqLBTFgl7aFF3KbWNIpPt/eSlKtOpX2MOkpe31VprhNoHqm5EpPyGOVKKCQoWzgv/3k1A
	OsY3wzzn3R0teQEd82Y9Lhihic6SrPNiOZ0+mkEJE6DM0l8GwgE3dQ0AjnV4qUF/Htlf349
	Bvtpk6qxz/ceOzgQwQB1qH9KPAAkZYgbMjew+g5TC4P/FoiUkC43izTgKe4LmpfJxzEUFBm
	onR5joEHXdW3KHT97Z2qwmgR2WznGWJck0OnwwNC3H81kAKWKoOY6wugHnY8XyFEGsfpQkJ
	ARvt6s6Mbc03/xsTI02F1UmIRph/plCzbCP5Fhp0/mWAORli8N1p5w==
X-QQ-XMRINFO: NI4Ajvh11aEj8Xl/2s1/T8w=
X-QQ-RECHKSPAM: 0

Hi Heiko and Sebastian,

thank you for your comments!

On 12/4/24 02:11, Sebastian Reichel wrote:
> Hi,
> 
> On Tue, Dec 03, 2024 at 05:18:39PM +0100, Heiko Stübner wrote:
>> Am Samstag, 30. November 2024, 02:40:42 CET schrieb FUKAUMI Naoki:
>>> Type-C port is dual-role USB 3.0 port. add usb_host0_xhci and phy
>>> nodes to use it as HOST port.
>>
>> This needs a bit more explanation on _why_ you're statically
>> setting this to host-mode.
> 
> The USB-C port can be used in peripheral mode, so this is just
> wrong. Also it should be added together with the USB PD controller
> for proper muxing and role switch support. The reason I have not yet
> send the patch is that this needed a fix in U-Boot first.
> 
> Most users are powering their Rock 5Bs via the USB-C port and a
> bad description results in unexpected hardware resets at boot
> time.
> 
> I mostly waited for the rc1 tag to happen now that U-Boot support
> has landed. Also I expect that even with all those precautions
> some people will start seeing issues. Unfortunately there are
> many non-compliant USB-PD power sources :(

I see. I'll wait proper implementation.
please ignore my patch.

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

> -- Sebastian
> 
>>
>> Heiko
>>
>>> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
>>> ---
>>>   arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts | 17 +++++++++++++++++
>>>   1 file changed, 17 insertions(+)
>>>
>>> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
>>> index 0ec4992b43cd..c5776e3b4aab 100644
>>> --- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
>>> +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
>>> @@ -840,6 +840,14 @@ &tsadc {
>>>   	status = "okay";
>>>   };
>>>   
>>> +&u2phy0 {
>>> +	status = "okay";
>>> +};
>>> +
>>> +&u2phy0_otg {
>>> +	status = "okay";
>>> +};
>>> +
>>>   &u2phy1 {
>>>   	status = "okay";
>>>   };
>>> @@ -883,6 +891,11 @@ &usb_host0_ehci {
>>>   	status = "okay";
>>>   };
>>>   
>>> +&usb_host0_xhci {
>>> +	dr_mode = "host";
>>> +	status = "okay";
>>> +};
>>> +
>>>   &usb_host1_ehci {
>>>   	status = "okay";
>>>   };
>>> @@ -900,6 +913,10 @@ &usb_host2_xhci {
>>>   	status = "okay";
>>>   };
>>>   
>>> +&usbdp_phy0 {
>>> +	status = "okay";
>>> +};
>>> +
>>>   &usbdp_phy1 {
>>>   	status = "okay";
>>>   };
>>>
>>
>>
>>
>>


