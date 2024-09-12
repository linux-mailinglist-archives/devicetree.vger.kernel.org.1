Return-Path: <devicetree+bounces-102536-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 988979775A8
	for <lists+devicetree@lfdr.de>; Fri, 13 Sep 2024 01:34:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 516EE1F211D9
	for <lists+devicetree@lfdr.de>; Thu, 12 Sep 2024 23:34:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1BF8E1C2DA6;
	Thu, 12 Sep 2024 23:33:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbgeu1.qq.com (smtpbgeu1.qq.com [52.59.177.22])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91A3A1C2DC5
	for <devicetree@vger.kernel.org>; Thu, 12 Sep 2024 23:33:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=52.59.177.22
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726184039; cv=none; b=jnn1G9ME4AKAT3BeQUTNrlS742jP8dOvgKo+7sO971qLtfBYt8icFEbjMZycE9iADBWPJ1Uh9nvAbJp0BOA9IhtlT3yk6dBiVrmuZGL1jZdMwZkB2WDwqr0tgBSkqLAAKDNo7hZ0qzas1u6RUmUQO9AxYxOpvzrZ8GTnx6JF8lQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726184039; c=relaxed/simple;
	bh=5W+nT1iQqYFh7mXU+0Mhw07nwXmmViPWV6Awj+/A/m0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=kErCOBQGA+PYtkGkLvIndAG68ZTIwPBrJgy5yelww5NpXNgDFwHCRYaBy7GbhjcYUJOVpsVK1Q8ohl0BkM9CoXieQ4Gu6JmHxi6RI4WmmsywWZQuIoKoPKgobUg1/9jZ10bLDIRZ3nL6rG+Vqyo5C7dt3UH+zyJ8gjrimGu32/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=52.59.177.22
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: bizesmtp86t1726183990tru7u4j2
X-QQ-Originating-IP: oWym8bMoXvHPtkutlP1Chvo67PJQOcmlcbY8MKhZYDo=
Received: from [192.168.159.131] ( [106.150.157.243])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Fri, 13 Sep 2024 07:33:07 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 1747276184441239724
Message-ID: <4009C10B2D2BB789+be97f506-33ce-43f3-ab5c-0395709f1fdc@radxa.com>
Date: Fri, 13 Sep 2024 08:33:06 +0900
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
> 
> The SD card hotplug can not work because the controller is getting into 
> runtime low power mode,
> 
> so we need the fix in mmc driver to make the CD function work as below:
> 
> https://lkml.org/lkml/2024/9/12/323

I tested this patch on Radxa E54C and ROCK 5A/5B/5C. CD works fine 
without cd-gpios. revert patch can be reverted :)

thank you very much!

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

