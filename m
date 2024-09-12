Return-Path: <devicetree+bounces-102489-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CDF929773A9
	for <lists+devicetree@lfdr.de>; Thu, 12 Sep 2024 23:32:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 45A1BB21CF7
	for <lists+devicetree@lfdr.de>; Thu, 12 Sep 2024 21:32:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B1CED18EFF4;
	Thu, 12 Sep 2024 21:32:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbgbr1.qq.com (smtpbgbr1.qq.com [54.207.19.206])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B66EC2C80
	for <devicetree@vger.kernel.org>; Thu, 12 Sep 2024 21:32:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.207.19.206
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726176729; cv=none; b=bwp9p1JM4lH3dfkv8kzaEKQwenamamKovOZ/+Fa94sMnJTpYqQi8Xsk5DnEX81s8xyYtV5BogyW47kUbg7MkZhTsUy4g5gYazaxpAlSVGxwzcXh/g+Ylr6HmiK3THJRg1rFkM3v0nZt5vgZAY9RT+Zki2nZ4qnQBtFEaaG8MRCU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726176729; c=relaxed/simple;
	bh=65cAXmU5KwNvrblp0vr3A64v3F+3iAAZm8pu+uN5g9g=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=fR2OaMURy9vZQRsIdzLeVNTRcmALepMp+HGSwiFOuYBZ703ulTADN805Qeatan07KLDowlgbMVR31g31fuNEkO4Sutzvg6M/avc+b3GvZazUJ0av9hUFet2Qyk64i0stwhNXCy/2xqHb+2eYCiMTUkolGfco7nnL55/UpIKanrM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=54.207.19.206
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: bizesmtp78t1726176685tlpqw3py
X-QQ-Originating-IP: GmNawWs+b7OTO1Hrci3yU1nyJC7GTzPTbC8ePAyA8xk=
Received: from [192.168.159.131] ( [106.150.157.243])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Fri, 13 Sep 2024 05:31:23 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 9426337802108849229
Message-ID: <0D24B2506EEED9F3+f6e21f29-6694-4c4a-90ee-39803e9699a7@radxa.com>
Date: Fri, 13 Sep 2024 06:31:22 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] Revert "arm64: dts: rockchip: remove redundant
 cd-gpios from rk3588 sdmmc nodes"
To: Kever Yang <kever.yang@rock-chips.com>, heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20240611120645.457-1-naoki@radxa.com>
 <20240613001757.1350-1-naoki@radxa.com>
 <e534f0b2-8d30-4175-9616-105e53d25811@rock-chips.com>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <e534f0b2-8d30-4175-9616-105e53d25811@rock-chips.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1

hi

On 9/12/24 19:26, Kever Yang wrote:
> Hi Naoki, Heiko,
> 
> On 2024/6/13 08:17, FUKAUMI Naoki wrote:
>> This reverts commit d859ad305ed19d9a77d8c8ecd22459b73da36ba6.
>>
>> Inserting and removing microSD card is not detected since above commit.
>> Reverting it fixes this problem.
>>
>> This is probably the same thing as 5 years ago on rk3399
>> https://lore.kernel.org/all/0608599d485117a9d99f5fb274fbb1b55f6ba9f7.1547466003.git.robin.murphy@arm.com/
> 
> Sorry for didn't notice this patch.

thank you for your information!

> The SD card hotplug can not work because the controller is getting into 
> runtime low power mode,
> 
> so we need the fix in mmc driver to make the CD function work as below:
> 
> https://lkml.org/lkml/2024/9/12/323

Heiko,

just FYI, this doesn't fix a problem below

https://lore.kernel.org/linux-rockchip/20240903085551.568-1-naoki@radxa.com/t/#u

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

> Thanks,
> - Kever
>>
>> So we'll go back to cd-gpios for now.
>>
>> this patch is tested on Radxa ROCK 5A and 5B.
>>
>> Fixes: d859ad305ed1 ("arm64: dts: rockchip: remove redundant cd-gpios 
>> from rk3588 sdmmc nodes")
>> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
>>
>> Changes in v2:
>> - reword commit message
>> - remove empty line
>> ---
>>   arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts | 1 +
>>   arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dts     | 1 +
>>   arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts         | 1 +
>>   arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts        | 1 +
>>   4 files changed, 4 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts 
>> b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
>> index 1a604429fb26..e74871491ef5 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
>> +++ b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
>> @@ -444,6 +444,7 @@ &sdhci {
>>   &sdmmc {
>>       bus-width = <4>;
>>       cap-sd-highspeed;
>> +    cd-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_LOW>;
>>       disable-wp;
>>       max-frequency = <150000000>;
>>       no-sdio;
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dts 
>> b/arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dts
>> index b4f22d95ac0e..e80caa36f8e4 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dts
>> +++ b/arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dts
>> @@ -435,6 +435,7 @@ &sdhci {
>>   &sdmmc {
>>       bus-width = <4>;
>>       cap-sd-highspeed;
>> +    cd-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_LOW>;
>>       disable-wp;
>>       max-frequency = <150000000>;
>>       no-sdio;
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts 
>> b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
>> index 4e2bf4eaef2b..df845929b084 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
>> +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
>> @@ -390,6 +390,7 @@ &sdmmc {
>>       bus-width = <4>;
>>       cap-mmc-highspeed;
>>       cap-sd-highspeed;
>> +    cd-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_LOW>;
>>       disable-wp;
>>       sd-uhs-sdr104;
>>       vmmc-supply = <&vcc_3v3_s3>;
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts 
>> b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
>> index 8e2a07612d17..b070955627be 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
>> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
>> @@ -366,6 +366,7 @@ &sdmmc {
>>       bus-width = <4>;
>>       cap-mmc-highspeed;
>>       cap-sd-highspeed;
>> +    cd-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_LOW>;
>>       disable-wp;
>>       max-frequency = <150000000>;
>>       no-sdio;
> 

