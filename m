Return-Path: <devicetree+bounces-257028-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id D3F4CD3B540
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 19:11:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 33E3F30010DD
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 18:10:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24492327C08;
	Mon, 19 Jan 2026 18:10:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="SZusHTSE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8752A23C8AE
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 18:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768846236; cv=none; b=Q9gCdONUIZB9trc+Pa1wMRBFEUp6prT1SXYfFxO6Lx688E8xM+aaWTo9Vx24bxx8oii8LoirfgzAEpF0Pda+kq7TdgnN98HEmGuRrKslTBv0Do/PTnUHsVPixnW4QQqmvtduVOAXdPs+d144qRVlUG+hT/ubY2yR4X0GPo6pAYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768846236; c=relaxed/simple;
	bh=sV79U9QbXvQu1pltFOlRRSnWcsp6IG4ly+HrNStjhyI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=POubb8GSgR6Hnsa6zhlQlQs/nDD5eJCLtVZJhJQYIzHMXIpIL6jIkKcfPBaBe1xPxIvdLC1wAsV3TVZFPJ1hWT3E3JRm7ragmHaPtkNwfA4zYSWaRylECUhdUNs44W4HpukxQh/GjdQxgx+2TYS+aSJn/Bk5VcDRDPXeJmsdMHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=SZusHTSE; arc=none smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-64b686e7d04so584252a12.3
        for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 10:10:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768846233; x=1769451033; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=k/iFQ+cGrDnzb99VgFwhl/BYFJFd6sdYEbVS6eQMIFs=;
        b=SZusHTSEGDnkM6K/+mSzQ1+3oZXBp9ObY70kPgWmdKtwTDAnOQr7KZpzdPKCn9AOWd
         DRFTMH18Hm6Bd97LsYj3C7m7eD9FYWeIvSsMH7elJvbxniNx0V4F9TXa+HuC9BK4j5bc
         4pBuHiqgFlr0rPP5jIhQiA82L+T3Dqk/gO8RlJKL4JCc5vqQmjeUL6cRaHs0RvaUDJwK
         QmFj0hKY72wcMmB2unIyvvl5gSkD2g/jSgESztDDA8z4g0iXQynxTThNzlqTQ25YCFcc
         oTY8R0YCh2h7y4LskZDJdVQawwLLGwPAXYS3BL6D3IB9t+72+iBAzF4i9JF9LZJlzmry
         aNHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768846233; x=1769451033;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=k/iFQ+cGrDnzb99VgFwhl/BYFJFd6sdYEbVS6eQMIFs=;
        b=FxwJgDgnxQ0LNv9OlNRd23W6UfK9OfrDFfc+WpQ980Dmz8hPwEFa70DdLIk60aZe6C
         HDOvqdV/LOX4X2ypZfmBAkZD+0xNJ6byKyh7CpLTzK70JlFFUSYcxf8TmjMvvK+ecCwG
         yJti3jI6yOgX/0nfRrA9/lUTyI156t1CY460OOusuUIrgr8TmxzdLZD+OThDKpFXPZOt
         /MqlTinehAeUw/n2/m+5bL7lJpXQ+XjLsyafo6DLiVNBkIXx67aIkQxzQQHvid0QtmKJ
         uN4E1JIiwIKz9ghUEGVFaXySOIbg4o2phjGA4Rl36ctbIzFRIeMwdWr6phLymjKLaNB+
         vkKg==
X-Forwarded-Encrypted: i=1; AJvYcCVYRZ5TKxFwzRQ/EVgit6rhPbYCLpiCPKz2sHpWJCA17pGmrR2ovYV3Amrfkdt7R9U1V0HQTQ5mHlXc@vger.kernel.org
X-Gm-Message-State: AOJu0YycNRAMu3JPNi/FU5AcdXhQQJfat7Uta0m4o6BrjK+PYj+Q2YD6
	mln+mYi3Set5vkPjMu+yOztwEqp2TA0k88uZQZ3gAN2Pfb9mU37Rtidi
X-Gm-Gg: AZuq6aKLheEwPGcwjqalA4Ul7TLTn3G4qoHvue0HnkN/7JFUjG1RYQmQqhhCbuTRjFH
	q/I0kno3+KMewvR9IfsSG07zpypc6L3KflS22mW/rCmciGN+UpwwVbaUzPhYDeidUx42QQFRlYo
	usi6fVZdWvdnc7cw+Z9NTOMi4aYzRgcI26oBuliZV92WhqgXQmq7a1d9XBHvKCW86fxRB7hxvUP
	POMGLiElFz65UD89rpekPZuGH8Zzyk6RZ2QGXbn/xFNawUDAso7ao0OZeDBhBHHnwoz9OJRsoZR
	A982S+50hEHeyiJAj8Qj5k4wgfQk/RLRnfgovaoHJOf+cG38AVY/ngzggEIQ4lP7FALFGNbVfoG
	v5BrG2FL5HRMR9xmF5l5wPQ81XMiiJOE7hIVGi8xmMZ2lq2q1tr7rB7Gwx1Ln6h6DVacSdBb90a
	qVv6qwGlJXbvQo5gyJQBqqiciwWKU2d3PxyAhNXmMFZAKw7QUP3g==
X-Received: by 2002:a17:907:7b93:b0:b87:301f:6172 with SMTP id a640c23a62f3a-b879323cac9mr694566866b.6.1768846232600;
        Mon, 19 Jan 2026 10:10:32 -0800 (PST)
Received: from ?IPV6:2a02:a449:4071:0:32d0:42ff:fe10:6983? ([2a02:a449:4071:0:32d0:42ff:fe10:6983])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b87959fb973sm1141170966b.53.2026.01.19.10.10.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Jan 2026 10:10:31 -0800 (PST)
Message-ID: <e4ebdde6-4073-4dd6-aef2-abf2c293a48d@gmail.com>
Date: Mon, 19 Jan 2026 19:10:31 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1] ARM: dts: rockchip: rk3036: remove mshc aliases
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: robh@kernel.org, conor+dt@kernel.org, krzk+dt@kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 heiko@sntech.de
References: <c6feab79-5b73-413b-a94f-9d1b2fa6df43@gmail.com>
 <c4c17773-1146-4db9-bf2f-a7500a8bd734@rock-chips.com>
Content-Language: en-US
From: Johan Jonker <jbx6244@gmail.com>
In-Reply-To: <c4c17773-1146-4db9-bf2f-a7500a8bd734@rock-chips.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit



On 1/19/26 08:08, Shawn Lin wrote:
> Hi Johan,
> 
> 在 2026/01/17 星期六 5:05, Johan Jonker 写道:
>> The use of mshc aliases is deprecated for some while,
>> so remove them from the rk3036.dtsi file.
>>
> 

> I noticed that the alias property is still listed in the
> documentation[1]. Could you please share where it has been formally
> marked as deprecated? I may have missed the update.
> 
> [1] Documentation/devicetree/bindings/mmc/mmc-controller.yaml

Mshc aliases driver support was introduced 2018 in dw_mmc.c only and before that a undocumented copy paste entered somehow into dtsi files.
The mmc-controller.yaml file change in 2020 mentions a fixed index mmcN format.
A generic alias name "mmc" is now preferred instead of a "mshc" driver specific.

As suggested by Arnd Bergmann and others, the newly added mmc aliases
should be board specific

Discussions about Rockchip aliases started around 2021
https://lore.kernel.org/linux-rockchip/CAK8P3a3_uO23Y0tyfdh26tmCVcyp6XM+ur0WUd4khGUoBb32Hw@mail.gmail.com/#t

https://lore.kernel.org/all/CAPDyKFp1zMBUfK7LteW0yEfTpqtU+P+EybLsJBFx_r54HwFdMg@mail.gmail.com/

[PATCH 0/4] mmc: dw_mmc: start deprecating mshcN aliases
https://lore.kernel.org/linux-rockchip/20211124184603.3897245-1-john@metanate.com/
====

Nov 24, 2015
ARM: dts: rockchip: add core rk3036 dtsi
https://github.com/torvalds/linux/commit/faea098e1808729e4785cdba3a3fc52fae49f1ab

Dec 19, 2015
ARM: dts: rockchip: add the sdio/sdmmc node for rk3036
https://github.com/torvalds/linux/commit/187d7967a5ee630ae062fb543655e59d2f0f91fb

====

Feb 27, 2018
mmc: dw_mmc: Factor out dw_mci_init_slot_caps
https://github.com/torvalds/linux/commit/a4faa4929ed3be15e2d500d2405f992f6dedc8eb

====

Sep 7, 2020
dt-bindings: mmc: document alias support
https://github.com/torvalds/linux/commit/1796164fac7e348f74a0f1f1cae995b22d002315

Sep 7, 2020
mmc: core: Allow setting slot index via device tree alias
https://github.com/torvalds/linux/commit/fa2d0aa96941e8dc347e49a04c75468e3002ee20

> 
>> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
>> ---
>>   arch/arm/boot/dts/rockchip/rk3036.dtsi | 3 ---
>>   1 file changed, 3 deletions(-)
>>
>> diff --git a/arch/arm/boot/dts/rockchip/rk3036.dtsi b/arch/arm/boot/dts/rockchip/rk3036.dtsi
>> index fca21ebb224b..78afae42f8b2 100644
>> --- a/arch/arm/boot/dts/rockchip/rk3036.dtsi
>> +++ b/arch/arm/boot/dts/rockchip/rk3036.dtsi
>> @@ -23,9 +23,6 @@ aliases {
>>           i2c0 = &i2c0;
>>           i2c1 = &i2c1;
>>           i2c2 = &i2c2;
>> -        mshc0 = &emmc;
>> -        mshc1 = &sdmmc;
>> -        mshc2 = &sdio;
>>           serial0 = &uart0;
>>           serial1 = &uart1;
>>           serial2 = &uart2;
>> -- 
>> 2.39.5
>>
>>
>> _______________________________________________
>> Linux-rockchip mailing list
>> Linux-rockchip@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/linux-rockchip
>>
> 


