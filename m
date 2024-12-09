Return-Path: <devicetree+bounces-128954-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5965D9EA119
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 22:17:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B9F67188884E
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 21:17:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EBED719C56C;
	Mon,  9 Dec 2024 21:14:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from bg1.exmail.qq.com (bg1.exmail.qq.com [114.132.65.219])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F0D619C54A
	for <devicetree@vger.kernel.org>; Mon,  9 Dec 2024 21:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=114.132.65.219
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733778877; cv=none; b=Hx4WFVhhv9KqSBO4UQ4LAz73W+imggnysZ2M1kKcRbA7JCBI3tc3M3R0AMXPI00Fwp7VjoaZ7PbwKjk76XczsaqcMAvw/50ZI1uMYsePrLwDfe+MjvcQ8++SZFNt46gIjPbh4Nd0oHH7P/nroiI7YH964GIJvcX+zHgCwjCj4LE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733778877; c=relaxed/simple;
	bh=/4iVr33F27hA7CnbjYDWjLiSk4JfJnLGgUi0kK3Ll3I=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Uxr1ZQCYu+EdGJKuK5RE3kGwtje8uD8qGdZRuF82hpmCLhSgOhrHCUGV+3jPRcHQsQjBN0MxwUWpVFSXgWS69m4C712UOnhYrBgwLsswqTp7VvDqdi5Dx1Sr2VT2dV+Zo0jOlOww4gMaoO6IHcinq76+F4QSf9+F5A1JaKRUIPE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=114.132.65.219
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: bizesmtpip2t1733778780tn44ik7
X-QQ-Originating-IP: nghcMwGwJG8U0kfU8TWJRS/iIuhL9Fi6u5fpYwkrRqY=
Received: from [IPV6:240f:10b:7440:1:42fa:d92a ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Tue, 10 Dec 2024 05:12:56 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 7788240959183773366
Message-ID: <CEFF3F7FDF50046C+6bccd571-3475-46b9-a7b9-e2e8cb94ed91@radxa.com>
Date: Tue, 10 Dec 2024 06:12:56 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 03/12] arm64: dts: rockchip: fix property for pwm-fan
 for Radxa ROCK 5C
To: Dragan Simic <dsimic@manjaro.org>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, sebastian.reichel@collabora.com,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20241209125131.4101-1-naoki@radxa.com>
 <20241209125131.4101-4-naoki@radxa.com>
 <ae031ff8c8c5d9e5c266c73026d4dfab@manjaro.org>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <ae031ff8c8c5d9e5c266c73026d4dfab@manjaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtpip:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-QQ-XMAILINFO: M5aznPMtO1XHy0wjvEtPxY54LpGtOQbsSzx8k1wzWqeCPP694tIfFRnl
	HvWc7J9SGqpIxQVN6htn7k5YRCW9hTc6oA/fabNEII6e/PRUXXR4HSbkujjNoofZDXqcPfG
	WZu6wMhc/xKb/dAs7Xn65bpGsl9X/lCeyOm+FJLfMo/rgSyuiffHGQm0DRYwnrlY0Lwviu/
	jX/WcR3smcZSTlvgmoBC+fB6BozC6haItdKbOfT1TJu5gaD1SzXaHE4+1QRRfMY13Czqx7f
	4Nm+koUK9vtIu1b7ohN3hqhnZfmTjG+wAa47ele9HVMpZhulAfu1Pccrhe8UIvl8z7TZ2fl
	K3TiWqZBWa+AYkEBXdFzLziVX2Lzzy0aG6FNXZ1xC7ikWTBKOHeZyVHpXDqZSEmiWT/h+K/
	3JBvLNhUtdobMefr8FVHm4OVtkvUpW5+mi6GI3eH6lgtibFCMznLuNkSv5znm07wyduuxWs
	WmMojllLfXUMjrKE0YL6UfM+MnyGRAN7XM2zxs+nUliWhEXfkBsXMOuLI0O6Qyvw0mRwRfI
	V2ly+KYUuews4eReyS7+gpWkBoBcpePN2/YWiSBLV9OVy5xSbHkKCE9mgG30GumQCb18Cou
	JFwvlMsvPpVxXl78XV+VEMq3ydLDUUdTPPlLVIT7ECE7EJ8minrPiOe/uxEfiXYL722gdzs
	eyw6CanPvedHvyI0h0wqyhjIDPgFYmpzavIVjcs+0Y9VHl6cLj15kX/f8GXs1COAeapJpLY
	5U2ZKDQXvSL5RpzedIKR9FauCM+4N6QW29ACusHQrn9nQjXmsrPwedb+0cfKx6ajt2zPH84
	oNGzPMpStwrR7JS8Pp9PGlv98fmNz3GDH+K+jtYiiIGpsZsgfa3PZjnCq3ZGenQbyRGdei0
	jvsH7+vOlA+jcHeUzrhaQBxhaRsKM8fm
X-QQ-XMRINFO: OD9hHCdaPRBwq3WW+NvGbIU=
X-QQ-RECHKSPAM: 0

Hi,

Thanks for your review!

On 12/10/24 01:32, Dragan Simic wrote:
> Hello Fukaumi,
> 
> On 2024-12-09 13:51, FUKAUMI Naoki wrote:
>> fix pwm period to match with vendor kernel[1].
> 
> Instead of simply referring to the downstream vendor kernel, in this
> specific case the reasons for adjusting the fan PWM parameters should
> be explained by referring to the actual fan setup you're using, the
> observed fan RPM behavior, etc.

original commit message is:

| arm64: dts: rockchip: modify fan pwm period to 60us
| Reduce pwm frequency to 16.6 KHz for a larger adjustable range of 
AO3416 mosfet.

I have no knowledge about this kind of things. Is quoting this message 
enough?

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

>> [1] https://github.com/radxa/kernel/blob/linux-6.1-stan-rkr1/arch/ 
>> arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
>>
>> Fixes: 3ddf5cdb77e6 ("arm64: dts: rockchip: add Radxa ROCK 5C")
>> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
>> ---
>> Changes in v4:
>> - none
>> Changes in v3:
>> - none
>> Changes in v2:
>> - reword commit message
>> ---
>>  arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
>> b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
>> index 630f026d856c..85589d1a6d3b 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
>> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
>> @@ -73,7 +73,7 @@ pwm-fan {
>>          #cooling-cells = <2>;
>>          cooling-levels = <0 64 128 192 255>;
>>          fan-supply = <&vcc_5v0>;
>> -        pwms = <&pwm3 0 10000 0>;
>> +        pwms = <&pwm3 0 60000 0>;
>>      };
>>
>>      pcie2x1l2_3v3: regulator-pcie2x1l2-3v3 {
> 


