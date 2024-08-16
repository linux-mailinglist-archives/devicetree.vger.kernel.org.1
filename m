Return-Path: <devicetree+bounces-94263-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1348C954868
	for <lists+devicetree@lfdr.de>; Fri, 16 Aug 2024 13:59:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C41E5281E3C
	for <lists+devicetree@lfdr.de>; Fri, 16 Aug 2024 11:58:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8AABE15B12C;
	Fri, 16 Aug 2024 11:58:55 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbgsg2.qq.com (smtpbgsg2.qq.com [54.254.200.128])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1F70817
	for <devicetree@vger.kernel.org>; Fri, 16 Aug 2024 11:58:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.254.200.128
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723809535; cv=none; b=jZd/MmTmP0AZl+j4Db1JdewxSyeGxK1IEyBiNlaaaIGbiiVfji4BQVhWtq6uCy8ridh5/AW1sFpwiG9gWPCuYfCNFPw0ue2u84F97Q52uewNowT7ABLjRjx6YiR73A/7fCjPjjDwgZ/mjtJG7qFIwv0XwD/H8AD1QB9OLhqHDgw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723809535; c=relaxed/simple;
	bh=6Tqjr83xABrji3wDu1UwGxtkfsC1Xv+tjWKVcIkPINY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=O9qHlI4+Cdwcc7VnQ3gRz0i0MiSqLp1U8w8+fuSMj+moSAc/hmQwIZXvq0+ZFfPpJs7VqIqQIvNX6SNEBoAXYbcRX1zAtSbY89quc6r8rhF904Kh6sT9r0xPdC704r8WzE+COGK/vkACF64M0svusePGjtrmnr5S8Buzlb5yH1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=54.254.200.128
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: bizesmtp87t1723809479tkg7y7fb
X-QQ-Originating-IP: gQekxQ1rJdkb+DwrsrVnuCxALPpM7BB1ElFJNJZjVm4=
Received: from [192.168.159.131] ( [106.150.157.243])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Fri, 16 Aug 2024 19:57:56 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 14912246979607843899
Message-ID: <5667DC6446CBC344+3d442915-f28d-4d50-85e3-3863e3c7092a@radxa.com>
Date: Fri, 16 Aug 2024 20:57:56 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: use "pwm-leds" for multicolor PWM
 LEDs on Radxa E25
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20240816110402.840-1-naoki@radxa.com> <2335200.ElGaqSPkdT@diego>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <2335200.ElGaqSPkdT@diego>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1

Hi,

On 8/16/24 20:26, Heiko Stübner wrote:
> Am Freitag, 16. August 2024, 13:04:02 CEST schrieb FUKAUMI Naoki:
>> to make multicolor PWM LEDs behavior more consistent with vendor
>> kernel[1], use "pwm-leds" for it on Radxa E25.
> 
> sorry, but that is definitly not a valid reason.

I see. I'll not change it.

> A devicetree does describe actual hardware and is not a space for
> configuration choices. So that whole notion to "match a kernel"
> is not correct.
> 
> Looking at
> https://wiki.radxa.com/Rock3/CM/CM3I/E25/getting_started
> the specification table clearly designates the board's LED as
> "RGB LED" - so one LED and multicolor .

I understand following behavior is not possible on mainline.

https://github.com/radxa-pkg/rsetup/blob/main/config/00-rgb0-rainbow.conf

this is not what we(Radxa) want, but we need to follow the rule.

(btw wiki.radxa.com is outdated, it's not used anymore)

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

> Heiko
> 
> 
>> [1] https://github.com/radxa/kernel/blob/linux-5.10-gen-rkr4.1/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts#L100-L121
>>
>> Fixes: 2bf2f4d9f673 ("arm64: dts: rockchip: Add Radxa CM3I E25")
>> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
>> ---
>>   .../boot/dts/rockchip/rk3568-radxa-e25.dts    | 36 ++++++++++---------
>>   1 file changed, 20 insertions(+), 16 deletions(-)
>>
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts b/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
>> index 72ad74c38a2b..0b527f67bdbd 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
>> +++ b/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
>> @@ -12,26 +12,30 @@ aliases {
>>   	};
>>   
>>   	pwm-leds {
>> -		compatible = "pwm-leds-multicolor";
>> +		compatible = "pwm-leds";
>>   
>> -		multi-led {
>> -			color = <LED_COLOR_ID_RGB>;
>> +		led-red {
>> +			color = <LED_COLOR_ID_RED>;
>> +			default-state = "on";
>> +			function = LED_FUNCTION_STATUS;
>>   			max-brightness = <255>;
>> +			pwms = <&pwm1 0 1000000 0>;
>> +		};
>>   
>> -			led-red {
>> -				color = <LED_COLOR_ID_RED>;
>> -				pwms = <&pwm1 0 1000000 0>;
>> -			};
>> -
>> -			led-green {
>> -				color = <LED_COLOR_ID_GREEN>;
>> -				pwms = <&pwm2 0 1000000 0>;
>> -			};
>> +		led-green {
>> +			color = <LED_COLOR_ID_GREEN>;
>> +			default-state = "on";
>> +			function = LED_FUNCTION_STATUS;
>> +			max-brightness = <255>;
>> +			pwms = <&pwm2 0 1000000 0>;
>> +		};
>>   
>> -			led-blue {
>> -				color = <LED_COLOR_ID_BLUE>;
>> -				pwms = <&pwm12 0 1000000 0>;
>> -			};
>> +		led-blue {
>> +			color = <LED_COLOR_ID_BLUE>;
>> +			default-state = "on";
>> +			function = LED_FUNCTION_STATUS;
>> +			max-brightness = <255>;
>> +			pwms = <&pwm12 0 1000000 0>;
>>   		};
>>   	};
>>   
>>
> 
> 
> 
> 
> 

