Return-Path: <devicetree+bounces-128649-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7601B9E9354
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 13:09:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4CA1C1641E8
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 12:08:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B596224888;
	Mon,  9 Dec 2024 12:08:36 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from bg1.exmail.qq.com (bg1.exmail.qq.com [114.132.58.6])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BF0822069F
	for <devicetree@vger.kernel.org>; Mon,  9 Dec 2024 12:08:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=114.132.58.6
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733746116; cv=none; b=gzpbrVw/7zjXnCAcB7E0aFfeJE9hZGvXsQbHlY4f6jhH8Xk2aYpt+vfZeg2GPcxQdBX6sJAMoJ4aVHYQwitMbw6RzBA2sN7bGykJehb0KRVnpFPO2sEaj+BEMCWbQaVO5RT5ekNYD/KN7E8+PVLvH4cjCTzAP3Zlc5EGOx/XOHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733746116; c=relaxed/simple;
	bh=Ai3Jn+Z6mBkEL//yR5cZvxCVVE8KHLi2I9HxCZf+P3A=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tMyFE9VDflrwOS1i/iLQSD6sXadaHQqMnXLSmMvpnQhfGdOb1MXtLgaLMMN3RNWHe/5ceAgCbV8NNF74h5wOttIOBY0acfcp5is7qJmbzT0tvniUNQ920thUqTmZNtIXtm0t6UJ80Zr9X5vdtv5vyf1MUZwD9L2npnUIC8dxm1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=114.132.58.6
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: bizesmtpip2t1733745894t12g1rh
X-QQ-Originating-IP: FCGHQIL8wqSCmJKer6km0MXNCC/re3TnueY7PBB3GNs=
Received: from [IPV6:240f:10b:7440:1:a0b7:f16b ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Mon, 09 Dec 2024 20:04:50 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 11391674911926168947
Message-ID: <D823208EACD51A7F+ab5e9bd9-2daf-41a3-a882-9b017d31dd1b@radxa.com>
Date: Mon, 9 Dec 2024 21:04:49 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: fix cooling-levels in pwm-fan
 for Radxa ROCK 5A/5C
To: Dragan Simic <dsimic@manjaro.org>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, sebastian.reichel@collabora.com,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20241204045447.1036-1-naoki@radxa.com>
 <20241204045447.1036-2-naoki@radxa.com>
 <ed28e18be8db8274abffbcf840ce0550@manjaro.org>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <ed28e18be8db8274abffbcf840ce0550@manjaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtpip:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-QQ-XMAILINFO: MACXe2l6e7j9HxR+aajrKyiBH+aN/o1RiqMbdTZPzh62zmnIrPwh2VPL
	/mhtJW1m+z+SPZKzIS2if9y86/LICwOibfpKhxGdI3Jxdd87gGxIcQS+5j47EhuA0XGWivo
	KwiILp79aTzdojVZ0/9RSmazF8ThwqKeTGnSyxcfvJ6VU3jGnoOLDOCX50KZyEMVToTO+mA
	whveCavBfHfdW05hQcbGKSqwQg+a6w+py0zkGeQ+CuY1C1zqw+3/HMx4WfwpRdNmHDTIRLO
	RCyEGDy7LbcgITP35GTqtiDyTRWtz20si0A2AVf/YKxhBnDzkdmQWFNSYxSYvgxxl/53utf
	xNy3tJH8KJ55GK28balZcq7KONhM6bGN6oOwzHFnkOv9ADcYmF3m6GrT3WInE1T/+rWYPJV
	2Fz1BkRCIz4okc0QIhJ86Rlq0onNIhjQw41+gg9le7FMjCiO+8BECjP7j83DspDyZhvWuc9
	iDDGhOBBXCV3lLrSu2TzrSAkwWQsr4AALt3HkN9b0sC3jFljffMDboPHzEdas/T/5oJyGFs
	PIwtJXds5FflNumHIrUBSLDnfpghLuOwpD2DGA5PFmQn3YOj/bM1L7kuej3Lf1HgLBegOtD
	MW8n/VBcVnUNgKBdXjywWsvhDBOa1EPkXpzteg/0/IgJlRilsPzXGS6WCtPsHRZEQUePkd3
	bQJlfk0Wh6C0rMraLAU447x/WKQCaCOSMyV0t/EodUHUUyM7S+3Pbp/GAZfEAsNEjjDo42F
	yIqCl/PjetcHBzpGJQJ1KoCv3Sj6bGzH/ELiRq5uzzFwZtVT5KhFYHOxxCY7770d8tLmijM
	DvKAafZHmZJYT9hmT8Gwx8m3b4mRLMPQqvU/AJdqb9QiBvgz32g65YzsyZXjrwe9zC3mHKs
	bZ71wMds+a5py1wwhwjAL/k/PbiZjoyGHz2PB8D+knU=
X-QQ-XMRINFO: OWPUhxQsoeAVDbp3OJHYyFg=
X-QQ-RECHKSPAM: 0

Hi,

thank you for your review!

On 12/4/24 14:33, Dragan Simic wrote:
> Hello Fukaumi,
> 
> On 2024-12-04 05:54, FUKAUMI Naoki wrote:
>> fan behavior is better than current configuration.
> 
> Could you, please, describe better what makes this configuration
> better, which fan make and model are you using, etc.?

I have three Heatshink 2513[1] and I noticed they behave very 
differently... it's difficult to say which cooling-levels is better or 
worse with these heatsink.

I'll drop this patch.

Best regards,

[1] https://radxa.com/products/accessories/heatsink-2513

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

>> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
>> ---
>> this patch depends on [1] which depends on [2].
>>
>> [1] https://patchwork.kernel.org/project/linux-rockchip/ 
>> cover/20241128121929.62646-1-naoki@radxa.com/
>> [2] https://patchwork.kernel.org/project/linux-rockchip/ 
>> patch/20241119095113.78151-1-naoki@radxa.com/
>> ---
>>  arch/arm64/boot/dts/rockchip/rk3588s-rock-5.dtsi | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5.dtsi
>> b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5.dtsi
>> index a1cac40d439e..472b41f0d47f 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5.dtsi
>> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5.dtsi
>> @@ -36,7 +36,7 @@ analog-sound {
>>      fan: fan {
>>          compatible = "pwm-fan";
>>          #cooling-cells = <2>;
>> -        cooling-levels = <0 64 128 192 255>;
>> +        cooling-levels = <0 120 150 180 210 240 255>;
>>          fan-supply = <&vcc_5v0>;
>>          pwms = <&pwm3 0 60000 0>;
>>      };
> 


