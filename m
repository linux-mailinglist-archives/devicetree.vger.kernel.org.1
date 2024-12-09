Return-Path: <devicetree+bounces-128671-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A1B7E9E93BA
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 13:23:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A03A018872AA
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 12:23:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7865C21D008;
	Mon,  9 Dec 2024 12:23:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbgjp3.qq.com (smtpbgjp3.qq.com [54.92.39.34])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EF4022C6F7
	for <devicetree@vger.kernel.org>; Mon,  9 Dec 2024 12:23:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.92.39.34
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733746995; cv=none; b=mk1hUQwDY3XgBxSFsaznxA4P0p7YhsCMUwJfthWenBQRn2D9n4XjRqJzGV3Mfmi+2VjEuFvfdnviNmCJLGMTibTnaaQW98nVT1yuNR1YRek6G2SLT+aIbj4I68RC4rD9wsUv+D41uZjeoFsVIq5oMvM8GvK0ZBTkbVolVIf0JF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733746995; c=relaxed/simple;
	bh=Tu+VmiKxlUsdbmeD6fyIGZnb0H0N7sctS3HNMDw+n4s=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=KSRKeDz934tbU73PuRPA7Aoc8FPdIIE61aAmR0zyryFqyNXVd3JVu+HJ2h0MJ+mJ4YNXCu0PWIHdUEz9JRYP6ZJdXWFoFu/n5GQS46XK3eOTEMRCO1XAds5AGvQVm6JoDxCtPdRZKs7tRepwL9k+zrUAtYHdIRveE5WqTdDx3hE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=54.92.39.34
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: bizesmtpip2t1733746924tidce0k
X-QQ-Originating-IP: u3mdy8MmsDm3Gz1uzpBdmyAsVHR53JE3Rg/iC1QssCQ=
Received: from [IPV6:240f:10b:7440:1:a0b7:f16b ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Mon, 09 Dec 2024 20:22:00 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 4831636596776470644
Message-ID: <341313D17BDFC5A1+ff192db9-e406-4737-b040-84f6e7c7bc52@radxa.com>
Date: Mon, 9 Dec 2024 21:22:00 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: add package_thermal for Radxa
 ROCK 5A/5C
To: Dragan Simic <dsimic@manjaro.org>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, sebastian.reichel@collabora.com,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20241204045447.1036-1-naoki@radxa.com>
 <71aa84af7a030e66487076e0976c8cad@manjaro.org>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <71aa84af7a030e66487076e0976c8cad@manjaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtpip:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-QQ-XMAILINFO: MmpliBmRb3iC7IaSfRUGzdf6g6Ak2i7USK/IwqzhsD0Tg7pRdioSAdyk
	W4wwOJvw/lIgPn3m1wp76rlJ3pdobgj/Al6fJGY6lv+ZGWHOcAWHOmKr1czRoVYoVys4uZy
	ILnFSk2KLv+MEUjd4u1W+jDQ/QRCmf2rWg//MLQPBfSWRMRyOdprUgOGHGI3H8Z2Ca/CKBa
	I8ujXvNyMD81PlyJtl8fQvkuHv+wrumIXVECb0gxSbLkD40KCy8ZCM6uqhK37fkFgnl1RKC
	7RXILPk1RAy3fmP2OcxsWhtmCOkkO8A8SpBNaJVJF9upOh8FhxnHkyuuf4PnK54Ye7p5abb
	DZe7HSEbOHk/6olkowRpZjXs7YMLuoBOjQL9NxB8DwA0dFJmWMraGjlgf//HVICraiuwvhT
	+ke+tO44jb379HYSaAamwdPzgYOQ6aCw+mZskouHrn2dnyUHw8W52gkkJ23pRCxUom2vevI
	5xxmcejcsj5/MKm8gkOGSth5ywJ+G7bkuuoPOhX413+O7I+deMWYsku+FNiA+evt5EHmcEb
	9wtLXFl2c8gvWjt7vOof4VnX6Si7v7AVneyUwfgJ9Rz9jCcLwSafWeklfpgB5TltMch7oNM
	i7Rt1TbUslH+rXbFYu3nBq09Q255++iwdWXTObywSrNRUDAW6vJNBMrQ4n9F8lKmieJQaZk
	XsFtFFO56kkXG3hYtSaouSjvyfUzDyhoiovJx7xMO08lMtqVdTRiD7rgpRmGV9Kgzv8CDOX
	ATZwtpFUZHgYhHeqClgrmyuhhAHQnksehPBME1b+xR4hUabJmtn8xBF/3jsnJA8aQtZwHf4
	s1n59AcLxsuIdpyyQR5wznzdoQHirzO3k2SqgtpHPzAQWlZcr+UGTfqNniK7qTEnUZk9Yu4
	OdbcwoKjfURZ8DnbV6xb4DZAU/DSQzWLoeYVLpD3p6Yczre1hU++9HuE5rlAuDcO3r4CIki
	PxlEnwxzwyByQlPbVrYLD2XTC
X-QQ-XMRINFO: Mp0Kj//9VHAxr69bL5MkOOs=
X-QQ-RECHKSPAM: 0

Hi,

On 12/4/24 14:32, Dragan Simic wrote:
> Hello Fukaumi,
> 
> Please, see a few comments below.
> 
> On 2024-12-04 05:54, FUKAUMI Naoki wrote:
>> add and enable package temperature based active cooling.
> 
> I'd suggest that you rewrite the patch summary to read like this:
> 
>    arm64: dts: rockchip: Enable automatic fan control on Rock 5A/5C
> 
> and to rewrite the patch description like this, which is a recycled
> and a bit improved description of the commit 4a152231b050 ("arm64:
> dts: rockchip: enable automatic fan control on Rock 5B"):
> 
>    Link the PWM fan on Radxa ROCK 5A/5C as an active cooling device
>    managed automatically by the thermal subsystem, with a target SoC
>    temperature of 65 oC and a minimum-spin interval from 55 oC to
>    65 oC, to ensure airflow when the system gets warm.

thanks! I'll use this message :)

>> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
>> ---
>> this patch depends on [1] which depends on [2].
>>
>> [1] https://patchwork.kernel.org/project/linux-rockchip/ 
>> cover/20241128121929.62646-1-naoki@radxa.com/
>> [2] https://patchwork.kernel.org/project/linux-rockchip/ 
>> patch/20241119095113.78151-1-naoki@radxa.com/
>> ---
>>  .../boot/dts/rockchip/rk3588s-rock-5.dtsi     | 32 ++++++++++++++++++-
>>  1 file changed, 31 insertions(+), 1 deletion(-)
>>
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5.dtsi
>> b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5.dtsi
>> index a8f40f43c838..a1cac40d439e 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5.dtsi
>> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5.dtsi
>> @@ -33,7 +33,7 @@ analog-sound {
>>                "Headphone", "Headphones";
>>      };
>>
>> -    fan {
>> +    fan: fan {
> 
> It would be better to use "fan: pwm-fan { ... }", to ensure some kind
> of consistency with the other similar portions of board dts files.

sure. I'll change it in previous patch series for Radxa ROCK 4C.

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

>>          compatible = "pwm-fan";
>>          #cooling-cells = <2>;
>>          cooling-levels = <0 64 128 192 255>;
>> @@ -379,6 +379,36 @@ rgmii_phy1: ethernet-phy@1 {
>>      };
>>  };
>>
>> +&package_thermal {
>> +    polling-delay = <1000>;
>> +
>> +    trips {
>> +        package_fan0: package-fan0 {
>> +            hysteresis = <2000>;
>> +            temperature = <55000>;
>> +            type = "active";
>> +        };
>> +
>> +        package_fan1: package-fan1 {
>> +            hysteresis = <2000>;
>> +            temperature = <65000>;
>> +            type = "active";
>> +        };
>> +    };
>> +
>> +    cooling-maps {
>> +        map0 {
>> +            cooling-device = <&fan THERMAL_NO_LIMIT 1>;
>> +            trip = <&package_fan0>;
>> +        };
>> +
>> +        map1 {
>> +            cooling-device = <&fan 2 THERMAL_NO_LIMIT>;
>> +            trip = <&package_fan1>;
>> +        };
>> +    };
>> +};
>> +
>>  &pcie2x1l2 {
>>      pinctrl-names = "default";
>>      pinctrl-0 = <&pcie20x1_2_perstn_m0>,
> 
> The rest of the patch is looking good to me.  Thanks for the patch!
> 


