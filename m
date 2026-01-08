Return-Path: <devicetree+bounces-252612-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C9BEED0168D
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 08:36:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F3D2B3011FB0
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 07:36:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BBC1330ACF0;
	Thu,  8 Jan 2026 07:36:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="PVwIoei6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com [209.85.216.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40D2A1A23A0
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 07:36:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767857780; cv=none; b=rqSSzOdC60aeMorzg8DW2DGlQ2ku3e2quZ8aLErMIT7Sz1O4MPDmq2Z1lc21kguVrUO2Xm3G4MztP6+AFFBBcG4o3qNcA6RqEktuq4jgsxdJjHypsfhTUZ/noW02zJ+S2mB3W41NMaQX/+rJhpqfCmDAkX7Nn3SMNPizIc4iZCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767857780; c=relaxed/simple;
	bh=qRm6fe60g43t+3aop8VfXvEShhkPmEb+qMsIbWntVdM=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=Z6D3/k2jit5z5474hpZ1pb4ui/n18l6jRXPjccRArNtCm9N/qdl5adE1o7M42dPGUD76r2NfF8S3kEnRqiSyqwtJ1Bo3NY3EEEzkdug/wpDgvG21707B34MEtD9PpCMbU+y1tV3Dzoy45b2C9LibPWg/HKMx6s9mAZumHlPtRzA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=PVwIoei6; arc=none smtp.client-ip=209.85.216.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f53.google.com with SMTP id 98e67ed59e1d1-34ccdcbe520so820391a91.1
        for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 23:36:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767857778; x=1768462578; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Raf6rMxyKbtpGA0a0neUDVB8KhO13Yy7WiRRs10GZEs=;
        b=PVwIoei6TgIlW7E6gsqP5aV0tytGsyqA6znnyqUbrt8hY3BDJX88NiKLcxbFTQnxG0
         nq27/8LXaKoXYO4TVZTd5R5dwsM7eS6bR3JzqRN60WfgEoF6hQUi7QF+ig+BYeOPRAhb
         5XV0yTJzQZXkpggx90jWmB7yHFSeKBQpDowCJ0uu9/BTsliI09Z89GNsNRNJUXMb5a3A
         T/XxZZB2LrMdIocjbHMBSuWZunfiz8h6WNGGr4z0iRV3VxaQ4qK7q5YpwwVfkOamtsgi
         gRCxm3NHE9BmW18Qyrjndl/kGLzkKngCt1Id1nLS2yQfLQBg24/bu59TziQi6shIwBc5
         yalA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767857778; x=1768462578;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Raf6rMxyKbtpGA0a0neUDVB8KhO13Yy7WiRRs10GZEs=;
        b=ATWeKT+WfxVoQgVl3iBAor7DRzg7bvaCfjie700Gaiz/TyuTRAsDUzfhUIO8N5sXvm
         j3zduBSR2L8uJCffBVBfrcirTR7Z0IC2VRIneZhWpr3VekLL9n5uA+BlFuAyphFtlBKv
         IBx73HZynl3RQnKm+sPbSbtO1fRMRS00ah0mEV5GQ5REO9R9DEmqxcri/idVFlTfYGqt
         dncuSVl8uzHH/UBciJh447rdjOA/dtv3h9TIHQgLjnQdTOzR4zF2C1aEsReuIsOnTNIw
         us/M9OQhJexuTnmnzX3cFe2d75/raJO27egjJuKTjYe9R8JOlWhx82j13agwm0WBnVdU
         GzeQ==
X-Forwarded-Encrypted: i=1; AJvYcCXPSViFbpiD7QkfUewzpcTGsL6MSMFbmgSTKfp69dsaKSao+E4imZjkqJi6wkZwaHs2ONgOiRs9Uug6@vger.kernel.org
X-Gm-Message-State: AOJu0Yz5iJ/kQCdLj8ygjMRLtB5DJCOCB70W6RMv6/4fwfDXMO9HDx11
	oXBEAORVo7r/B12zQ185n43qdcUrA1P4DjOJHPBt1v7YZGF4Ffjj/dwI
X-Gm-Gg: AY/fxX5n85fC46CwVw5L13q1mdh0u+u3LlexKKg6CZcGFWlHFnaSi2sbF4WLx6l6LH2
	xiEU1xYnjuh+pSmWIgfuep4LqY+/PvxS4jeWxNXdUtGacnDIqoxndblXgI/lVVvDjhyEpMCnmk9
	kaNfOGLoNr5SZ0dXmmbsTxwK6JrzOev5VGyg8/1WHRA9RE5qsVXA6jk6WMcEJWhCiB1zuIc6Jg1
	bK4w4CJbMMzPKFFMLyo3nwq+GIvnMqU3FF4RLNT2/zX5QjhGiSf0J60FguujWgbewJ7Kon8i0Mw
	9caVY3ZjBpBQWD23JvUQu7DILORoijBEAf4A38MDC4lyPk7NFBmUS3ZKJCaApi6BG+heiqyd4h0
	CS2jFZqYY4f7ERRAgBH2DkICMXmvqpbV1xcjkxPrmBra9F5ObcBUnjxH7oSsqPwoGx6YEkDAwju
	UCCDzNgRYWqcvn2brsXpvsZ/m+u8Wu+bRv
X-Google-Smtp-Source: AGHT+IFwn+9pYeZHD6rKzeZEcx/p1yKt2xjGQQ57ur5fOKGbe8ThUndVkKFkwC5dqjKIev8DHMkOaw==
X-Received: by 2002:a17:90a:e705:b0:340:6b6f:4bbf with SMTP id 98e67ed59e1d1-34f5f95a1damr8303062a91.18.1767857778424;
        Wed, 07 Jan 2026 23:36:18 -0800 (PST)
Received: from [172.16.20.12] ([136.226.245.1])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34f5fb64d7asm6861454a91.11.2026.01.07.23.36.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Jan 2026 23:36:18 -0800 (PST)
Message-ID: <c3492b90-bb48-4584-99fd-b1b6832d22ff@gmail.com>
Date: Thu, 8 Jan 2026 13:06:44 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 5/5] arm64: dts: qcom: talos-evk: Add support for
 QCS615 talos evk board
From: tessolveupstream@gmail.com
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, andersson@kernel.org,
 konradybcio@kernel.org
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20251230130227.3503590-1-tessolveupstream@gmail.com>
 <20251230130227.3503590-6-tessolveupstream@gmail.com>
 <30ee8541-3ec2-49ac-8fe0-987cdc5b16e7@oss.qualcomm.com>
 <14613f89-6be0-4eb3-beb5-375ab008a313@gmail.com>
Content-Language: en-US
In-Reply-To: <14613f89-6be0-4eb3-beb5-375ab008a313@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit



On 04-01-2026 19:16, tessolveupstream@gmail.com wrote:
> 
> 
> On 30-12-2025 20:21, Konrad Dybcio wrote:
>> On 12/30/25 2:02 PM, Sudarshan Shetty wrote:
>>> Add the device tree for the QCS615-based Talos EVK platform. The
>>> platform is composed of a System-on-Module following the SMARC
>>> standard, and a Carrier Board.
>>>
>>> The Carrier Board supports several display configurations, HDMI and
>>> LVDS. Both configurations use the same base hardware, with the display
>>> selection controlled by a DIP switch.
>>
>> [...]
>>
>>> +++ b/arch/arm64/boot/dts/qcom/talos-evk-lvds-auo,g133han01.dtso
>>> @@ -0,0 +1,126 @@
>>> +// SPDX-License-Identifier: BSD-3-Clause
>>> +/*
>>> + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
>>> + */
>>> +/dts-v1/;
>>> +/plugin/;
>>> +
>>> +#include <dt-bindings/gpio/gpio.h>
>>> +
>>> +&{/} {
>>> +	backlight: backlight {
>>> +		compatible = "gpio-backlight";
>>> +		gpios = <&tlmm 59 GPIO_ACTIVE_HIGH>,
>>> +			<&tlmm 115 GPIO_ACTIVE_HIGH>;
>>> +		default-on;
>>> +	};
>>> +
>>> +	hdmi_connector: hdmi-out {
>>> +		status = "disabled";
>>> +	};
>>
>> This should be a &label_reference
>>
> 
> Okay, will add it in the next patch.

I noticed that in several existing .dtso files, the root node is
commonly referenced as &{/}. In your comment, you suggested using &label_reference. Could you please clarify which specific label or 
node you would like me to update here.
>> [...]
>>
>>> +	wifi_1p8v: regulator-wifi-1p8v {
>>> +		compatible = "regulator-fixed";
>>> +		regulator-name = "wifi_1p8v";
>>> +		regulator-min-microvolt = <1800000>;
>>> +		regulator-max-microvolt = <1800000>;
>>> +		gpio = <&tlmm 91 GPIO_ACTIVE_HIGH>;
>>> +		enable-active-high;
>>> +		pinctrl-names = "default";
>>> +		pinctrl-0 = <&wifi_reg_en_pins_state>;
>>
>> property-n
>> property-names
>>
>> consistently, please
>>
> 
> I didn’t fully understand your comment.
> Could you please elaborate a bit more so I can make the
> necessary changes correctly. >> +		regulator-boot-on;
>>> +		regulator-always-on;
>>> +	};
>>> +
>>> +	wifi_3p85v: regulator-wifi-3p85v {
>>> +		compatible = "regulator-fixed";
>>> +		regulator-name = "wifi_3p85v";
>>> +		regulator-min-microvolt = <3850000>;
>>> +		regulator-max-microvolt = <3850000>;
>>> +		gpio = <&tlmm 91 GPIO_ACTIVE_HIGH>;
>>> +		enable-active-high;
>>> +		pinctrl-names = "default";
>>> +		pinctrl-0 = <&wifi_reg_en_pins_state>;
>>
>> ditto
>>
>> [...]
>>
>>> +&tlmm {
>>> +	bt_en_state: bt-en-state {
>>> +		pins = "gpio85";
>>> +		function = "gpio";
>>> +		bias-pull-down;
>>> +		output-low;
>>
>> output-low/high should be unnecessary as these pins are governed
>> by the kernel driver
>>
> 
> Okay,got it. Will make the necessary change in the next patch.
>> lg otherwise
>>
>> Konrad
> 


