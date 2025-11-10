Return-Path: <devicetree+bounces-236527-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EB6AC4529B
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 08:05:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3E91C1882F0C
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 07:05:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C7BDE1A2C25;
	Mon, 10 Nov 2025 07:05:27 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from bg1.exmail.qq.com (bg1.exmail.qq.com [114.132.124.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 345BE13FEE
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 07:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=114.132.124.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762758327; cv=none; b=d0WImHp4R4ViOkuZ8n4jPRUKhcs+9BBDpnrDEjgSBK+I2C84djDDychUdySe+ElGiO2UzZR/3PaglqXSU6Jiev+busuDp50mHOS/p+l3vJ6YtbZ87ApfoGUYlC/1fB/PzcQNTgbSebK9BxRA1tzolF5yget/a2Ik6tqbtAD7y+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762758327; c=relaxed/simple;
	bh=/gFxPTS+i7b67P0aDVwCoI1sKcXlqsAvO0WtlcVKZUc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=fT/LXDJzKazGTxMit+kO1+Gm+6BlfO+5otWKm/GU565rhAZcDPY6zaXosDqXU/sgg/LvPwv+zmiLofqfLWEpXMwUI2A1YzpyTc6V6wDdTuJu4/CxLmHAoMf41HVM/xfuh2BmUXt+rQjbt8TNMsfmq66nrbqWeplvxEjSnReC9a4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=114.132.124.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: zesmtpip2t1762758307t170ce2a4
X-QQ-Originating-IP: bdtVB757foOqmjCihvLYgPahZweMunhtqgcvdcDazOw=
Received: from [IPV6:240f:10b:7440:1:64e0:6ba: ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Mon, 10 Nov 2025 15:05:03 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 13381450062030274218
Message-ID: <38861A00B4F4BA62+e3221913-43e5-4335-9aaf-9b9eed5834ac@radxa.com>
Date: Mon, 10 Nov 2025 16:05:02 +0900
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
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <36843804-433a-5c0c-4961-451b44d70bc4@manjaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrsz:qybglogicsvrsz4b-0
X-QQ-XMAILINFO: MbSuBwOrED9vhpvd87YXoEFp06L2JA/GOAa/n44Er4BcOaFiJaCFolVT
	6wlg1cowQU4OvNp3tEWeCA9UfE1YZjBjGHXWSxalYawJx9dW3JpDqzXGO50oR2eUIA5ebHt
	eVGEIxo2JvGdiWv89TvvSU7rOv9USh/ynH9ctFTf+VxwTBBUUSHQnRyfTX68/Cak/0oU5/R
	ulsLsPEMNtmjZhcQ2Ffr3Ig4un9zueF8kdxrPfzv74dxBECyDMVWRvmntRIZ7dXutrmWJX/
	ibDqJRopd3m/NoAnpfQLJldTuwmfMuUihkJMLHAe9I9R7neo0GcijfHInanytzhTSbLNmAC
	+tKpnv+7wSU056TRreGBzoz9YMfM/RQHhQrBXGzmU1iybF4H3cNGvEc1ODh8whT1Rz/U8WG
	F09fIyLd5fQ8HrwsMxPMaQdK0XTF//G97DePjhsM8otIUyIMG9GaXrHfwIR/QVItqDy7hcB
	/YeO89oN0RFhMPlWDZqIonK31LYhPJyzlKovDhixiUqNqKJIMb+Cpwda4E0s0B0N2HsX8lZ
	8kOhHs5ZUQR3VGoPaaADQ98YyH+yBvh1i4RR5K3wb9Y3ZFCbZOCzFEdfGtoRh34LQfRIGqF
	l2l1g3eXB7vdUqzUTgVtwZkng++Rdr10WMOre1jmuMlvho0BhPNwaKNMfm1es/jnDmziKYu
	K5XOdQYPrlWedCHGwaYSOAweIStGtXAIUX8MjVEqsAOLGOQL9PAIk6c3idHbm+8hcCc6C85
	AcNiu4bdoSec7WZmXWPF49luL/SbTNXRUg6nbPJ7DWk3QXumA1WQJOF5ihwYqDICCmiVkAo
	RMD+DSItR1nipgf7HhSldCtwWXbDYnWpBolOZm5MS7IeS4MKmjCw07+kEXFap5UfdsroNdW
	3EZIMmEs7hThb7shNX+kHo+tPPucHtw1kkPvSXtw4yNo2+VHcplAOOEAA5htXWPsqw+6hEI
	Q+KjuWOKZvQrfSWgBSnsHL2RYk4e7WYtZDDP/QyoSjmEa4Q==
X-QQ-XMRINFO: MSVp+SPm3vtS1Vd6Y4Mggwc=
X-QQ-RECHKSPAM: 0

Hi Dragan,

Thank you very much for your review!

On 11/10/25 14:17, Dragan Simic wrote:
> Hello Naoki,
> 
> On Monday, November 10, 2025 04:54 CET, FUKAUMI Naoki <naoki@radxa.com> wrote:
>> Make EEPROM read-only as it may contain factory-programmed
>> board-specific data.
>>
>> Fixes: 89c880808cff8 ("arm64: dts: rockchip: add I2C EEPROM to rock-5a")
>> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
>> ---
>>   arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts | 1 +
>>   1 file changed, 1 insertion(+)
>>
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
>> index 19a08f7794e67..ae7b03488c9e7 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
>> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
>> @@ -254,6 +254,7 @@ eeprom: eeprom@50 {
>>   		compatible = "belling,bl24c16a", "atmel,24c16";
>>   		reg = <0x50>;
>>   		pagesize = <16>;
>> +		read-only;
>>   	};
>>   };
> 
> I've checked the board schematic and making this BL24C16 chip
> read-only makes sense to me.  However, I think that the patch
> description should be expanded to contain a better description
> of what might be found in the chip, such as a factory-programmed
> MAC address.  Also, providing a link to the board schematic, as
> a reference, would be a good idea.

----
arm64: dts: rockchip: Make eeprom read-only for Radxa ROCK 3C/5A/5C

Make the EEPROM[1][2][3] read-only. Board-specific data written to the 
EEPROM at the factory includes, but is not limited to, the SKU (~ 
product name), BOM version (~ board version), and MAC address.

[1] 
https://dl.radxa.com/rock3/docs/hw/3c/v1400/radxa_rock_3c_v1400_schematic.pdf 
p.13
[2] https://dl.radxa.com/rock5/5a/docs/hw/radxa_rock5a_V1.1_sch.pdf p.19
[3] 
https://dl.radxa.com/rock5/5c/docs/hw/v1100/radxa_rock_5c_schematic_v1100.pdf 
p.18
----

> With these remarks addressed in a v2, please feel free to include
> 
> Reviewed-by: Dragan Simic <dsimic@manjaro.org>
> 
> Additionally, it would make sense to squash this patch and your
> other patch that addresses the ROCK 5C together.  They're very
> similar and having them together in a single commit might actually
> help the people browsing the repository understand it better.

I'll drop eeprom patch from ROCK 5C v7 patch series, and squash eeprom 
patches for ROCK 3C/5A/5C.

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

