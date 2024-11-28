Return-Path: <devicetree+bounces-125171-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9198A9DB099
	for <lists+devicetree@lfdr.de>; Thu, 28 Nov 2024 02:04:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 355E7165CD6
	for <lists+devicetree@lfdr.de>; Thu, 28 Nov 2024 01:04:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30FB51863F;
	Thu, 28 Nov 2024 01:04:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbguseast2.qq.com (smtpbguseast2.qq.com [54.204.34.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06A2E847B
	for <devicetree@vger.kernel.org>; Thu, 28 Nov 2024 01:04:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.204.34.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732755889; cv=none; b=D80meMEiFZm5guQPn5GJKpzlJbrjc/1kZs2BzkUeyl70vOXNu8qz6vZySxAa/Kddyv9Nc6MLQ25cDRgr6z1TRsAKRPZsA7mBqD9CrRdQnrW7sbRZZnbFsehrWnGU627k4oJgNhk+xWSvkt+kd+Y7OpLWU3Czj5sxqTMugW8iCeE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732755889; c=relaxed/simple;
	bh=b+cfRMWB40ShpCOo7kTuGWbDEXl93TN+vBT3baOAxdg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Q2ib7eoE0Os2uoapzMN95NBfxEnvSNNDMubnkpkVhBzwX3+CFqm5b9g1pWgLXX4IOe8Jzj4X/wukx9i/nh0L0EOq2ZliTSghv/5Ys0+mBJOLG9K0c4OhHuoYA00yYMngg+H2JdCxsoTwTuJVLJjoUQmzSGLLo43DdwkWiD8WC0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=54.204.34.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: bizesmtpip4t1732755788txbiemb
X-QQ-Originating-IP: 5lyWGImiKsTIN/UVqHgWnBnCf6w0hBBdT9A7gXB3rzE=
Received: from [IPV6:240f:10b:7440:1:d502:63f8 ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Thu, 28 Nov 2024 09:03:03 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 2885135889790177938
Message-ID: <F596759069124768+5da60c49-3b1f-423c-b96e-8435e0cef88a@radxa.com>
Date: Thu, 28 Nov 2024 10:03:00 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/3] arm64: dts: rockchip: add "dcin" regulator for
 Radxa ROCK 5C
To: Dragan Simic <dsimic@manjaro.org>
Cc: heiko@sntech.de, robh@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, cfsworks@gmail.com, kever.yang@rock-chips.com,
 sebastian.reichel@collabora.com, linux-rockchip@lists.infradead.org,
 krzk+dt@kernel.org
References: <20241119100813.78820-1-naoki@radxa.com>
 <f1255d6a5c18fb43c47fab756f622891@manjaro.org>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <f1255d6a5c18fb43c47fab756f622891@manjaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtpip:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-QQ-XMAILINFO: MXHIEC8P0R7huB0dsvbDCsRgyzTsX/jdHk2suceuN9i47ovc/oZKyT5z
	YvunjgZzuo+tH9W1q79y8jQepjSr2H/0tlc/6HbZlL7e7I78bZRTAiVvQgtZXqQIHVVfVfx
	G+V23oiJfygw7onK9PDsaLLTwNGvk1lRtj2Bz0BUq71d44BZSLrf8pV7KiBvFxXxYliFco0
	za+9LuZUxFE0hivJYhlGhM4vUkIt3pwvSg4H4wOdOrE5N+MKa3SDBxUGgYw1OBwDltVUKoP
	RHD5Kq64YTXN4UOjSbSjnYJTxJVY8xOS7e7kUmBRAAiL8Uwi+4lpJoj7ihxAMjoUXPZ72go
	FFVPtGAgQrnwqkv0TCT+xNZ552JOTPTxWpyFmtmuhwFD0XKC63B15Mmsq3xqBQrYZ5tITok
	vAvkUDqagtCed9r0ZsKFnx0Z4pi14+8nosGjK4XCBu4auMdvnlnA8OXRqt3BbjaSejV4A8+
	HciRSXqG0I7sxfrE89EOlTAnKlw9z6L8hBbLB3o4WGko5lLiebnpHfFVr5NtYD+cWkglFVu
	FqDwVzTuTjzg+ugn5mkE6e/r4Y1FMuYBboi20YAaNcfqP53KsBp51Ttgbatkonww3jYxDVn
	b7v4Dgl7uzdpwEzZDCFNPX/ysIsEVOvSDy3UZP7JeN7YyWpn/xpdChZpAKFaSUehu35II0T
	Jt+iNp3kocGR1I/4sILjARrKIM6Nz3q2ntvkEJn2JR0sleRzz6X7qOVIjzNLU9ObX22DXw/
	LpNrn1+Ff9M4JXWBuUMwyNArCYpQuwAZpIB0OzPvzLM/CRdVv6D9LywH4V5WzE8urQMwblk
	01JlftaQxMBt84kqecRULE9SqfiA3M9fcZ7pPwxTmZVUdUjBcLIExcVQmb6YvmfRfmSLfPP
	J6M5+VxR807WX8xrVRlQJiTuugRfHUUfhxpivmcy3hZMZErKr/zg2WQH6RdABlUCfdn6Ins
	n0olwP0yeHCQH8w==
X-QQ-XMRINFO: NI4Ajvh11aEj8Xl/2s1/T8w=
X-QQ-RECHKSPAM: 0

Hi,

On 11/28/24 09:39, Dragan Simic wrote:
> Hello Fukaumi,
> 
> On 2024-11-19 11:08, FUKAUMI Naoki wrote:
>> add "dcin" label to vcc5v_dcin regulator and use it in vcc_sysin
>> regulator.
>>
>> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
>> ---
>> Changes in v2:
>> - none
>> ---
>>  arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts | 4 ++--
>>  1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
>> b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
>> index 6da13b6b9a7b..b5460c179ef7 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
>> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
>> @@ -88,7 +88,7 @@ vcc3v3_pcie2x1l2: regulator-vcc3v3_pcie2x1l2 {
>>          vin-supply = <&vcc_sysin>;
>>      };
>>
>> -    vcc5v_dcin: regulator-vcc5v-dcin {
>> +    vcc5v_dcin: dcin: regulator-vcc5v-dcin {
> 
> I just went through the associated part of the ROCK 5C schematic,
> and I was unable to see any reasons why should we introduce "dcin"
> as another alias here?
> 
> The root of the ROCK 5C's power tree is labeled "5v_dcin" in the
> schematic, so renaming "vcc5v_dcin" to "5v_dcin" would make sense,
> but I don't see why should we add another alias.

ROCK 5A has vcc12_dcin which supply power to vcc_sysin. both vcc5v_dcin 
on ROCK5C and vcc12v_dcin on ROCK 5C have additional "dcin" label for 
sharing .dtsi. (please check PATCH 3/3)

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

>>          compatible = "regulator-fixed";
>>          regulator-name = "vcc5v_dcin";
>>          regulator-always-on;
>> @@ -170,7 +170,7 @@ vcc_sysin: regulator-vcc-sysin {
>>          regulator-boot-on;
>>          regulator-min-microvolt = <5000000>;
>>          regulator-max-microvolt = <5000000>;
>> -        vin-supply = <&vcc5v_dcin>;
>> +        vin-supply = <&dcin>;
>>      };
>>
>>      vcca: regulator-vcca {
> 


