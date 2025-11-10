Return-Path: <devicetree+bounces-236550-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 09C7EC454B3
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 09:03:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id C9A444E288C
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 08:03:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4739E2E9EC6;
	Mon, 10 Nov 2025 08:03:36 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from bg5.exmail.qq.com (bg5.exmail.qq.com [43.155.80.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A403261573
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 08:03:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=43.155.80.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762761816; cv=none; b=OwISlRy97/xjP6SpOs2byoMk8EqBv70neimWbMrHCdZIQLNlAtvoNykWSqB/2ak37ng3RrytiC4pCUNHvb4GwFiZEX1Gk/XNDEbHiHW0Vzyh5M8+pA2BKCd8Oi2e6SUPYDlII6/Orwo5EiInhqu/oUiI3REjfDgKHqzuKjAmT1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762761816; c=relaxed/simple;
	bh=xFvg8C4v7Zfq8K/zPHAUpN0uTZL2sfEfAXeaeAyYPYw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XrtgiJxfkOgc06iVM6mvKpFbZgBX5UMKIhX7Z8ERjluC3OvmqXyHukYWk+4cvQ2F0djpMNooCp7ZiGiZdoGcBdywMPKW9OsZH8os9RDIWkoqiAIYRlcb/FlEuFwBcDdxF8iFuBJ/LmXPPEi14VbSpHlcdkhUB4B/4HsxIseN/Yw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=43.155.80.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: zesmtpip2t1762761788tc0b50961
X-QQ-Originating-IP: 88/BuTYUi3AdfJEaVLPC0QgUnuqBREYhdgrMc0e/PGY=
Received: from [IPV6:240f:10b:7440:1:64e0:6ba: ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Mon, 10 Nov 2025 16:03:05 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 16075927445412508603
Message-ID: <51135107D357A73A+50c2300d-7cc0-4f0d-99e7-8b67c0e43dff@radxa.com>
Date: Mon, 10 Nov 2025 17:03:04 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Make eeprom read-only for Radxa
 ROCK 5A
To: Dragan Simic <dsimic@manjaro.org>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, jbx6244@gmail.com, pbrobinson@gmail.com,
 kylepzak@projectinitiative.io, damon.ding@rock-chips.com,
 sebastian.reichel@collabora.com, amadeus@jmu.edu.cn,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20251110035455.839863-1-naoki@radxa.com>
 <20251110035455.839863-2-naoki@radxa.com>
 <36843804-433a-5c0c-4961-451b44d70bc4@manjaro.org>
 <38861A00B4F4BA62+e3221913-43e5-4335-9aaf-9b9eed5834ac@radxa.com>
 <65f17890-c052-f303-4731-f882946df1f1@manjaro.org>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <65f17890-c052-f303-4731-f882946df1f1@manjaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrsz:qybglogicsvrsz4b-0
X-QQ-XMAILINFO: NSahpW5IwUZOp9lbu+zzC56Yh7IZ7q73+gNWULibcU/yc063mjULP1Mi
	voCqthdok49YKyVS2SGfs3Ihjz9nfugjVsDXvoVObpmkpczsJz0OjxJIJGq43mg6Vj+lj5P
	j36bJ9AfsN7G7WcOh3IZoT5uu42kUyQ1fcoXg60ljvYbpKopzrFGfQ5t2JXacnfE0NMVp1j
	nHKXFGu1HKAt0DF+hjzJS+iRGsvHscIqh+JiSZFkGVZWbV3euiSjS3IuHw725l+svto/eus
	H7RxFSjEeamE5R+d4RMJAXupW2nyA54lelgl94VCDjhDgpDAEXR/B0UOjxfbAeGpGEKQrur
	vHS2ox1GuoFWfsHZYYQBZhCSb6kVK2ynia46qXybUTWJrP0HYXaaLDS+RTZBn7ldX5d3OES
	0O3vUhngH9UAzp6yLqK7xQK8jSDoTJkIg28HfHvE8QYJd0YzQ6s37hvnByH3kQsmwWXPB+e
	KHDYHHqAC3svZs0IJTHZZu1CeFpFbX2yMmjHfRrT5Psklo1Ftu3GKnnpbEmJyDOt8zGyaNU
	X2foKb8Gq2DKueLcRRk370Gt7MjFve11X1hUSsW4IWl1tM1E7rH9NsUgBkGikvoesq1f/Y5
	cKJ2/Sof1jbp1hoEvyGH+9AkX907ZylMQ0YPvpYtXsZgGXVO1/NeG5YWipKlBBdD+J6e5O4
	O/bDL8CR5qvhlH37an6j8+6xsMi1leQQsj6dp36n/i1itxn6tENri//iT7DNzWYPGM064dj
	jHIMuTeCRJpNwvYl4oykk4xWtJO2VMHBbtlIwIk7UW6sF1hRm0M7WThZF4uZbpaMiLEx9ck
	arOzCFdR4dwUf118yPilMymg30Na0mhEnePwH4/9jE28T4HNvpta8qgGoYKwJy8kc0iHtei
	tZydUuTzoVNv11Q5xd6+nLGtNOBMTa6comQ+CqN7EQqJ2PxyOw9JSVlL7FV/ge9IBUtmre+
	RlHLMoM2ClbDtPWKhgZvbrIRm/sXg/kWSJzEuJ0jt7HhK9OzrAFQ96Puvv7gxhUsNuJKxRz
	u7ar06Q7WWLrBq61zo
X-QQ-XMRINFO: Mp0Kj//9VHAxr69bL5MkOOs=
X-QQ-RECHKSPAM: 0

Hi Dragan,

On 11/10/25 16:38, Dragan Simic wrote:
> On Monday, November 10, 2025 08:05 CET, FUKAUMI Naoki <naoki@radxa.com> wrote:
>> On 11/10/25 14:17, Dragan Simic wrote:
>>> On Monday, November 10, 2025 04:54 CET, FUKAUMI Naoki <naoki@radxa.com> wrote:
>>>> Make EEPROM read-only as it may contain factory-programmed
>>>> board-specific data.
>>>>
>>>> Fixes: 89c880808cff8 ("arm64: dts: rockchip: add I2C EEPROM to rock-5a")
>>>> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
>>>> ---
>>>>    arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts | 1 +
>>>>    1 file changed, 1 insertion(+)
>>>>
>>>> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
>>>> index 19a08f7794e67..ae7b03488c9e7 100644
>>>> --- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
>>>> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
>>>> @@ -254,6 +254,7 @@ eeprom: eeprom@50 {
>>>>    		compatible = "belling,bl24c16a", "atmel,24c16";
>>>>    		reg = <0x50>;
>>>>    		pagesize = <16>;
>>>> +		read-only;
>>>>    	};
>>>>    };
>>>
>>> I've checked the board schematic and making this BL24C16 chip
>>> read-only makes sense to me.  However, I think that the patch
>>> description should be expanded to contain a better description
>>> of what might be found in the chip, such as a factory-programmed
>>> MAC address.  Also, providing a link to the board schematic, as
>>> a reference, would be a good idea.
>>
>> ----
>> arm64: dts: rockchip: Make eeprom read-only for Radxa ROCK 3C/5A/5C
>>
>> Make the EEPROM[1][2][3] read-only. Board-specific data written to the
>> EEPROM at the factory includes, but is not limited to, the SKU (~
>> product name), BOM version (~ board version), and MAC address.
> 
> Thanks for the improvements!  I'd just suggest that the opening
> sentence above is rewritten like this:
> 
>    Make the BL24C16 EEPROM chips found on Radxa ROCK 3C, 5A and
>    5C SBCs [1][2][3] read-only, because they contain factory-
>    programmed data that isn't supposed to be modified by the end
>    users.
> 
> This would also be perfect timing for Radxa to officially release
> the layout of the board-specific data that goes into these EPROM
> chips, so the data can actually be used.

  https://github.com/radxa/u-boot/blob/next-dev-v2024.10/drivers/misc/radxa-i2c-eeprom.c

The actual data in the EEPROMs of my boards has some content 
inconsistencies with the code descriptions, but the format is 
consistent. The SKU, BOM, and MAC mentioned previously should be available.

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

>> [1]
>> https://dl.radxa.com/rock3/docs/hw/3c/v1400/radxa_rock_3c_v1400_schematic.pdf
>> p.13
>> [2] https://dl.radxa.com/rock5/5a/docs/hw/radxa_rock5a_V1.1_sch.pdf p.19
>> [3]
>> https://dl.radxa.com/rock5/5c/docs/hw/v1100/radxa_rock_5c_schematic_v1100.pdf
>> p.18
>> ----
>>
>>> With these remarks addressed in a v2, please feel free to include
>>>
>>> Reviewed-by: Dragan Simic <dsimic@manjaro.org>
>>>
>>> Additionally, it would make sense to squash this patch and your
>>> other patch that addresses the ROCK 5C together.  They're very
>>> similar and having them together in a single commit might actually
>>> help the people browsing the repository understand it better.
>>
>> I'll drop eeprom patch from ROCK 5C v7 patch series, and squash eeprom
>> patches for ROCK 3C/5A/5C.
> 
> Thanks!
> 
> 



