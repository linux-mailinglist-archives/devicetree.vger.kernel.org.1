Return-Path: <devicetree+bounces-36377-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BD52840BBE
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 17:38:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 21B2C1F24EA9
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 16:38:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E1BAA15698C;
	Mon, 29 Jan 2024 16:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qGyzyaS+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2012E15531E
	for <devicetree@vger.kernel.org>; Mon, 29 Jan 2024 16:33:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706546003; cv=none; b=MOhP1MuykooDxucUkc3oxp5bJbTclcCeeO6+Sw6+31Dt6PzW0mXPH4teQ28OH8q7UiUv9FLuCWFeKZNi3c+KFcUG/kckz5Pc4jffChaITjXW3WXpvasniKQZr72mO5jcDpHECh6Gq01SZoAaam599TJi8PPuWqVD+IYf0K47YRU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706546003; c=relaxed/simple;
	bh=RbYijDpPVVCJap+th+HFTbm3g0/fwzh/E0PyKIP7Z8I=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=FXFz3GPllveRwWkllaNsU76wEyUtlgjOSXKfhkFt++/mZ6PxNZTSDq80fUS04BU9VD5v9jL5/473kH8zrYzXy4EZF6818aBrHIzTEJHlUyTeAjtiRhVN3FAcFkko7zafQzr28P9xhzI1lCH72saDEmygjXA9CjNcoEwPU1gCGGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qGyzyaS+; arc=none smtp.client-ip=209.85.208.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-2cf328885b4so33555391fa.3
        for <devicetree@vger.kernel.org>; Mon, 29 Jan 2024 08:33:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706546000; x=1707150800; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yYsUavmWV+6BfBH3yu3ngTFUF3L9esmHz5FzVfYvcmg=;
        b=qGyzyaS+kyWR+pZEsV9LFoCBiJZTBeFsoETw5LnzeigL38d7tJuMkpCBjgDpl7hnx8
         wQVhysdRxgPYCyjiBAQ2xeY1cVdwjDrTSnxJs3nyHZqpIYpAnutiowS1hSEmH38rjuuA
         pAjusI0aK9Xyfq4LOzNwMYfkXms8l6tM6SJEzu9ldScR8njLbOFQf0Jox3TkFEYD8O6f
         dg+byEX6qb5hhkDS9EGsb6uaSIlJeBms36I/icxhhfUd3l35ncxZdw1KhVJAzG7b0grU
         /b0aKr5zXICS/gZKkuaCkx4OaLv5nUf5qNxj02HM6HHbv7vYW1qCOH0EvBUZiPgKSuSn
         yNWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706546000; x=1707150800;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yYsUavmWV+6BfBH3yu3ngTFUF3L9esmHz5FzVfYvcmg=;
        b=jkSoQ4w3+DH/dSQcTSb4w0Bnu+ndwFUyV9mJDICky3BRFxiiPDNwhk4qWoLxBuvUGJ
         q/8VBVhIDkXUTd3/uylV4nptSSjtFuPrpRH391NuT2Vrd5UCel71ZUr2TBGQf28fkL/0
         eM5A+Ho79pgNrX281i8e4mcV7hABGuVyk9fSp07huDtkkhFSdfFq5S53uQLYFNIqNM0B
         NUp4MFYLaF2ryALcY4v2+a/4gC8W0+QxpAtaOKSRP+Gv5tM80yqw/hHCcnsFG/v8XWGk
         fpvegolEWrjomMcoRCu/vPM7xSjaNrA/V5bMvKAViuMmyVmau89LrVfrge6ne8HRIkDg
         N6FA==
X-Gm-Message-State: AOJu0YwLqIXgxOQI92SeVgYKKyeIj5PSr6av5U6RbwsCqcqLvrBDX522
	zm60foVH4qa5KdIIeC/uWZx0lsFXQNo1/xZ6psdVLawn7XExHNDcAKwK6TPgreg=
X-Google-Smtp-Source: AGHT+IH+05/t+GD++Fm4xFiAjxPfYadf/7tiraj4U+n+W6gTozYIsXgXGJnWAj6dePSqJIAtmsSeVQ==
X-Received: by 2002:a2e:740d:0:b0:2d0:417a:80f2 with SMTP id p13-20020a2e740d000000b002d0417a80f2mr2809772ljc.2.1706546000074;
        Mon, 29 Jan 2024 08:33:20 -0800 (PST)
Received: from [192.168.2.107] ([79.115.63.202])
        by smtp.gmail.com with ESMTPSA id em2-20020a056402364200b0055ec051ab49sm2642169edb.6.2024.01.29.08.33.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Jan 2024 08:33:19 -0800 (PST)
Message-ID: <49d187f5-3c37-4c3b-a2f5-52dd805e84ee@linaro.org>
Date: Mon, 29 Jan 2024 16:33:17 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/5] arm64: dts: exynos: gs101: use correct clocks for
 usi8
Content-Language: en-US
From: Tudor Ambarus <tudor.ambarus@linaro.org>
To: Sam Protsenko <semen.protsenko@linaro.org>,
 =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: peter.griffin@linaro.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 linux-kernel@vger.kernel.org, kernel-team@android.com,
 willmcvicker@google.com, alim.akhtar@samsung.com, s.nawrocki@samsung.com,
 tomasz.figa@gmail.com, cw00.choi@samsung.com, mturquette@baylibre.com,
 sboyd@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20240127003607.501086-1-andre.draszik@linaro.org>
 <20240127003607.501086-4-andre.draszik@linaro.org>
 <CAPLW+4m0137jfMROYE_Lv915U+y0CK7M4dieHULOG90Z8XctQQ@mail.gmail.com>
 <b801e6b2-dfdf-4776-b90a-83780982b142@linaro.org>
In-Reply-To: <b801e6b2-dfdf-4776-b90a-83780982b142@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 1/27/24 04:00, Tudor Ambarus wrote:
>>> Wrong pclk clocks have been used in this usi8 instance here. For USI
>>> and I2C, we need the ipclk and pclk, where pclk is the bus clock.
>>> Without it, nothing can work.
>> Empty line is missing here?
>>
>>> It is unclear what exactly is using USI8_USI_CLK, but it is not
>>> required for the IP to be operational at this stage, while pclk is.
>> From [1] it looks like DIV_CLK_PERIC0_USI8_USI is a common parrent for
>> these two leaf gate clocks:
>>   1. GOUT_BLK_PERIC0_UID_RSTNSYNC_CLK_PERIC0_USI8_USI_IPCLKPORT_CLK
>>   2. GOUT_BLK_PERIC0_UID_PERIC0_TOP0_IPCLKPORT_IPCLK_7
>>
>> So IIUC, you replace clock #1 with clock #2 in this patch? If so, I
> No, GOUT_BLK_PERIC0_UID_PERIC0_TOP0_IPCLKPORT_IPCLK_7 is already used by
> IPCLK, the one that controls the clock frequency.
> 
> So I understand Andre' replaces a child of the USI8 with something else.
> 
> I don't think this works. We shall at least test it. I tested my usi8
> patches with the eeprom that's populated on the battery connector. I'll
> sync with Andre' offline and redo the tests on Monday.

Andre' is right, I messed up the bus clocks for USI. I tested the IPCLK,
the one that feeds USI clients, but I failed to correctly test the bus
clock. I retested by removing the clk_ignore_unused bootargs param and
verified that the patch is correct.

Reviewed-by: Tudor Ambarus <tudor.ambarus@linaro.org>
Tested-by: Tudor Ambarus <tudor.ambarus@linaro.org>

