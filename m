Return-Path: <devicetree+bounces-236627-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 70376C45E5F
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 11:23:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id C2E754EC189
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 10:20:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 79144301010;
	Mon, 10 Nov 2025 10:20:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbg150.qq.com (smtpbg150.qq.com [18.132.163.193])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD14E24BBE4
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 10:20:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=18.132.163.193
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762770053; cv=none; b=NIitrW7HVLox7uZ/FlNBCgpTpeak7/hOAQErULn8xlLVKq77Sx2Fd95HK/Siq0/XtMyRXyktxGqL3iPCRaMI/MsIEG4l/36SRbtEz+Vj8Jm3OzQxagRkABr+rgpBlZ0rWLl+WQ8I5tRrCdR656/qSgD3GTPoRivOZ/1lbCeuy2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762770053; c=relaxed/simple;
	bh=f7A5KQf3lBwiyoJafcI4BnJts84BNYm7LE/aLTn7MWI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=a/Ufuj3z9EBz8E4q2YBXrpY5AomlO9SEet626i8GSNFBl5yhdXGHwGQTiXsr74V/JDzPLZsRXlKiDr/XP40HIvSdo/AP/Kp3gtj/TN/FLoqebcpyNnK/ksMSur346x+tL+vx1v5lEjecT5AmGxXMHJBEz9UufpUWJxZZ/tg9tss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=18.132.163.193
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: zesmtpip3t1762769971t1b092a36
X-QQ-Originating-IP: iFTO6SgugK5NI2gnIyOrbmy1WQoC/Gu/2N1bNXVyuH8=
Received: from [IPV6:240f:10b:7440:1:64e0:6ba: ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Mon, 10 Nov 2025 18:19:28 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 4167295860379743796
Message-ID: <5763F732CB44709F+2774ec07-a035-4a4c-81f5-1bcf603945c9@radxa.com>
Date: Mon, 10 Nov 2025 19:19:26 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH] arm64: dts: rockchip: Fix microSD card detect for
 Radxa ROCK 5 ITX
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 andy.yan@rock-chips.com, dmitry.baryshkov@oss.qualcomm.com,
 sebastian.reichel@collabora.com, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20251110030036.825150-1-naoki@radxa.com>
 <EECF7629320EEEDD+03c6ee06-4351-4150-b1b0-957d5cfc3d6d@radxa.com>
 <2242815.irdbgypaU6@diego>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <2242815.irdbgypaU6@diego>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrsz:qybglogicsvrsz4b-0
X-QQ-XMAILINFO: N10mAYB91oMgvTLyy8U7YoBndI9Dvbb7VCD12B19aLYxtmWVBUv/5sAe
	jtFgmRqhDAZu/4vtcvah/XH2WyjXeR3AWi6eozBYJSc/wxljIEqVCo4QxrhPQRile8by93E
	cw9ZYF0hmDHaFlcxfOHE6qcHF8cVPa63bQ065w128sHtN34NiVolUy0n7JGpJPhAEufG3pe
	2O3My4d3D8qlXBaGVkAHzRf54iq5p61IJHa3lKk10SY58+tTb1Lnx8DeJOZ3/6LXNsu25bZ
	a1fX3PO1rUp/3fmD4yZhBK4jagkjic1VVtti8TqiKs7vYfchC/cXWjDecxSp/HiO8EZdsIS
	N4eTWMX03ttOj1TClzbEwhhNxdGb9FmThHAu913OcgoVAbFjpcqhOp6M8AO0LwqcSYMC/Cl
	MxGg/rbJpvCaIwTa22uIuiN55YtdznYjnl1wAah7c6H1qhF4ZM1cFpQu/vnZbJDZddezPzO
	xFfV/PlvvOqsEGzDRUezyBCSGKKOsAu9Oc2lMx012iq5786/+Aflzc+CIuPSpXAA9WZKxbT
	dQSm9gv08ryUxrNnRUacpyUGbthIj8ZjZTrF7zObwSwgYJepB+x7xSfAEyiBGfmIpRpkQrC
	7QJnOWHB+BjzSw0WojtmT8UnRktjFld/yfPZh+abY4R2vqBh+tbyEx+xS0AecTNDbmoBYQR
	1rA6FxpqkyFxfi0/omHHASO1/NM92z0DMlTiJTFAn6gkVtMfhg/iia6bI6+qfWNZihBFmew
	jawaUCKYygrrXWJsT0Pat1er+H13g+/USAg8ow1yWFovELaKarfk7jjTeXNvPr6WozKjoFb
	3v6IlK4aEKk/7SD6CHG/9GCATr1SiBKphNVNwD3pZtb8jDmHcwlRjCgKW38dPf83Kha9U1W
	pHivUyB8rAm2kwnp3YzFMTj8HNwrMfMrxW14yxdkfxnC1BETLe1+XS1zcAgsd+9gSMJPbK7
	PzZS+JHJ3HyfZf+Rqz+R28tw8xIFU7ESW0TrkgO5pSb834gISGjR62Yxydc+/0JCQRah7WN
	o+rPfbyw==
X-QQ-XMRINFO: OD9hHCdaPRBwq3WW+NvGbIU=
X-QQ-RECHKSPAM: 0

Hi Heiko,

On 11/10/25 19:05, Heiko Stübner wrote:
> Hi,
> 
> Am Montag, 10. November 2025, 04:16:37 Mitteleuropäische Normalzeit schrieb FUKAUMI Naoki:
>> On 11/10/25 12:00, FUKAUMI Naoki wrote:
>>> Due to the discussion about cd-gpios and sdmmmc_det pin
>>> functionality[1], it would be better to use cd-gpios for now.
>>>
>>> [1] https://lore.kernel.org/linux-rockchip/20240912152538.1.I858c2a0bf83606c8b59ba1ab6944978a398d2ac5@changeid/T/#u
>>>
>>> Fixes: 31390eb8ffbf2 ("arm64: dts: rockchip: add ROCK 5 ITX board")
>>> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
>>> ---
>>>    arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts | 9 ++++++++-
>>>    1 file changed, 8 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts
>>> index bc8140883de47..391c6482e8ee3 100644
>>> --- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts
>>> +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts
>>> @@ -670,6 +670,12 @@ led_pins: led-pins {
>>>    		};
>>>    	};
>>>    
>>> +	mmc {
>>> +		sdmmc_det_gpio: sdmmc-det-gpio {
>>> +			rockchip,pins = <0 RK_PA4 RK_FUNC_GPIO &pcfg_pull_none>;
>>> +		};
>>> +	};
>>> +
>>
>> I got following error:
>>
>> $ make CHECK_DTBS=y rockchip/rk3588-rock-5-itx.dtb
>>     UPD     include/config/kernel.release
>>     DTC [C] arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dtb
>> /home/radxa/linux/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dtb:
>> mmc: sdmmc-det-gpio: {'rockchip,pins': [[0, 4, 0, 270]], 'phandle': 145}
>> is not of type 'array'
>> 	from schema $id: http://devicetree.org/schemas/gpio/gpio-consumer.yaml#
>>
>> What's wrong?
> 
> the problem is the "-gpio" in the pinctrl node-name,which triggers
> a pattern matching against a normal gpios property.
> 
> So ideally rename sdmmc-det-gpio to sdmmc-det-pin or so.

sdmmc-det-pin works! Thanks!

I'll send v2 with this fix.

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

> Hope that helps
> Heiko
> 
> 
> 


