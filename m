Return-Path: <devicetree+bounces-242640-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DB40C8D6EA
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 10:05:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 004964E1392
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 09:05:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 02324320CC0;
	Thu, 27 Nov 2025 09:04:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ctPln5BG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7FDB1E9B22
	for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 09:04:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764234298; cv=none; b=bjNzgWTWVAmme07kWE0h3hQNXPv+m40IEVKCnAmWN30LJ7VBLpcZTqBNFPK7UZzdS5IVEaVDNR1rJIICtHlDDIdzUB5QXWtiqau5FvnVY1Myd4FqqFxOheL6oO+UfAruaZfdoxkVxA1i57/5r79d5Db1E7QZQhjm15a+vndS9Ho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764234298; c=relaxed/simple;
	bh=XC13jwgiZsbi0CzJcSV+qxZe5K6jOYa8S7iDkcDqslo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=noUXH94lyd31P+/N4iMe3GqivpxToHUee5EIB4ocmP3vGBgcnCZLGeY2sDQPjrMqAAYZaQ0OTryN8yWGMZZb9SqJhza6ydHVm5yJvj95p5Ja49i4QkA3Zvq1G0MS6uBmB3F5EoJuUaMopGoq5GCWPK7+HvpnZHLvyGEE58wJlH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ctPln5BG; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-47789cd2083so2555375e9.2
        for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 01:04:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1764234295; x=1764839095; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qzNVt4edw+6opeQvEovqvvtpzMRtvUD8paPkTQc5bO0=;
        b=ctPln5BGwBuVTPFyjXQyNcI+G1+cjMJI5OEt9jDbGV+xQtsUQwOen57MYeVHsmmekf
         aivxh/l1GWtZZVKv85H/KB3uVfWDVLKpV/qYqKJv2zX890J1UK90/N1lSq+Z+q5xCFK8
         nWJ920iKik04zO8mPwTIVlV0obLV/iTRHHEYcmLRxowcVa47fXmbnk6wyghZnW1ICloH
         /9cr3vCaWAmMAH2vEQS1fwp17Rg5s+DvfPUIuM0JAm7sIwnQDNpFpewl9bw+sMHCPVQw
         mUvVimXafKNAXYBcMwdYjgkVGQMg1eVLG8CTgTJHr5yNmzWlrEOy2zYMzt1HL4vAHFJp
         zScg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764234295; x=1764839095;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qzNVt4edw+6opeQvEovqvvtpzMRtvUD8paPkTQc5bO0=;
        b=ll5GxwF67kRoht7iHzinl/Cccilbymd3mzlQE7mg5faJXSNylGV4UKwBsif/UuxKJU
         omnnuxREDNHPiaYk0smoYWbGdTIcK6XbJRphU5pFXTu8JzfkV86lCqHK4Ii/6DG9ndI1
         moEfCzLHfBPL+NDPMZ0XvT5FlAck+rKDG+DEjYIQFPdnoCMAoUIAH1gOrtlB72cl6/mD
         R2w1iFZW/f6wCnpN7ofRW2dcaanqNu72Zb5ZUWgxUQYIeqaA6oYS3DciA3+kRxcMl2Yf
         5PBPxKI1+v3OlPgcWvX6S4y/PLmfy/l9A503JUrnx+siG1GFzKnEJMdwRlIATfl8A4hR
         zrwg==
X-Forwarded-Encrypted: i=1; AJvYcCVS4IDt/J907Z9jV1l5EHcIYCKhWTxPG/7RYwyZGkAkRuN2XJJIwBKRaJhnT0olBGkobeHIm+lT5LlA@vger.kernel.org
X-Gm-Message-State: AOJu0YzO1ZKSZTlSQgIK8efM16ARI3qNvT6OsGgdgtTWHCl6X5PEXUSc
	AVe0R8R7ZM3Tn/5GjiOrwt0dVq+VZKGwmiybYFY6LT8WlixTdBieSgHZMLA4YYtJK6E=
X-Gm-Gg: ASbGncstAUooMRaZAOQ/CZb/SXMJc56V4A7vg2zmu1iFpiyEJanZrLCOFS/QW2jRSZs
	uwMGE+4jChKdo6iSY8KsSWFIk2o2YOyJeBwMClZl2jOvia7aL8IIN8l8t/AIhcBtI/5H95NlR0i
	kQ+VIdKWDPkAKQi90ZLZdWO6AgO6io+WvAjMTTl3q+/H6JmCdsiYxlp59LEISQvNQ45NU9WSdk3
	rP8wDCAwS6sWVegjJrQB0YTpTLMDAFOq1RBe/wdc6Z5OVCDHWfpx7XGMxPsoITV0JYtT3kQuPEt
	2BzKNFsYmdh5rK6zhhRRj9Iz6fdrPh6Uzh1ssdANKhvwhghRumYh6cIVSd+ZinHFsF4E/vIwar5
	Bh2yxe2BdTLOSvavUxmfDEgBLPrpO9quXskEjvibiGadx/GxUTUYVK6C60U++EfyhCQNcPfOgpP
	BkiLnQr0+uA001WMgA
X-Google-Smtp-Source: AGHT+IFbciJc0QuPqY8817jh9ayaj34ju268qD8qT/yXzTe2XR/9rQ64lR1MMMrRT5JTdMmt+0pm/A==
X-Received: by 2002:a05:600c:1c25:b0:46e:4586:57e4 with SMTP id 5b1f17b1804b1-477c114ed70mr327208565e9.24.1764234295194;
        Thu, 27 Nov 2025 01:04:55 -0800 (PST)
Received: from [10.11.12.107] ([5.12.85.52])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-479111438b9sm24372775e9.2.2025.11.27.01.04.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Nov 2025 01:04:54 -0800 (PST)
Message-ID: <1704827d-f273-4360-bcd5-c18818a85034@linaro.org>
Date: Thu, 27 Nov 2025 11:04:51 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 RESEND 2/3] thermal: exynos_tmu: Support new hardware
 and update TMU interface
To: =?UTF-8?B?7IaQ7Iug?= <shin.son@samsung.com>,
 'Bartlomiej Zolnierkiewicz' <bzolnier@gmail.com>,
 'Krzysztof Kozlowski' <krzk@kernel.org>,
 "'Rafael J . Wysocki'" <rafael@kernel.org>,
 'Daniel Lezcano' <daniel.lezcano@linaro.org>,
 'Zhang Rui' <rui.zhang@intel.com>, 'Lukasz Luba' <lukasz.luba@arm.com>,
 'Rob Herring' <robh@kernel.org>, 'Conor Dooley' <conor+dt@kernel.org>,
 'Alim Akhtar' <alim.akhtar@samsung.com>, youngmin.nam@samsung.com
Cc: 'Henrik Grimler' <henrik@grimler.se>, linux-pm@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 'Peter Griffin' <peter.griffin@linaro.org>,
 =?UTF-8?Q?=27Andr=C3=A9_Draszik=27?= <andre.draszik@linaro.org>,
 'William McVicker' <willmcvicker@google.com>, jyescas@google.com
References: <20251113064022.2701578-1-shin.son@samsung.com>
 <CGME20251113064044epcas2p1b87addb21473eca7cc52052e4e2e9237@epcas2p1.samsung.com>
 <20251113064022.2701578-3-shin.son@samsung.com>
 <5a6a749b-b2b7-41bb-bcb4-a2342e7f4e98@linaro.org>
 <015501dc5ea5$0c7dd460$25797d20$@samsung.com>
 <401ed9b9-19a4-4a19-b397-0f353e9f0c97@linaro.org>
 <019301dc5f4a$e9aadd60$bd009820$@samsung.com>
Content-Language: en-US
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <019301dc5f4a$e9aadd60$bd009820$@samsung.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit



On 11/27/25 5:07 AM, 손신 wrote:
> Hello, Tudor Ambarus

Hi!

> 
>> -----Original Message-----
>> From: Tudor Ambarus [mailto:tudor.ambarus@linaro.org]
>> Sent: Wednesday, November 26, 2025 6:22 PM
>> To: 손신 <shin.son@samsung.com>; 'Bartlomiej Zolnierkiewicz'
>> <bzolnier@gmail.com>; 'Krzysztof Kozlowski' <krzk@kernel.org>; 'Rafael J .
>> Wysocki' <rafael@kernel.org>; 'Daniel Lezcano' <daniel.lezcano@linaro.org>;
>> 'Zhang Rui' <rui.zhang@intel.com>; 'Lukasz Luba' <lukasz.luba@arm.com>;
>> 'Rob Herring' <robh@kernel.org>; 'Conor Dooley' <conor+dt@kernel.org>;
>> 'Alim Akhtar' <alim.akhtar@samsung.com>; youngmin.nam@samsung.com
>> Cc: 'Henrik Grimler' <henrik@grimler.se>; linux-pm@vger.kernel.org; linux-
>> samsung-soc@vger.kernel.org; devicetree@vger.kernel.org; linux-arm-
>> kernel@lists.infradead.org; linux-kernel@vger.kernel.org; 'Peter Griffin'
>> <peter.griffin@linaro.org>; 'André Draszik' <andre.draszik@linaro.org>;
>> 'William McVicker' <willmcvicker@google.com>; jyescas@google.com
>> Subject: Re: [PATCH v7 RESEND 2/3] thermal: exynos_tmu: Support new
>> hardware and update TMU interface
>>
>> Hi, Shin Son,
>>
>> On 11/26/25 9:19 AM, 손신 wrote:
>>>> Looking at the exynosautov9 registers that you described and
>>>> comparing them with
>>>> gs101 I see just 2 differences:
>>>> 1/ exnosautov2 has a TRIMINFO_CONFIG2 register, while gs101 doesn't
>>>> 2/ EXYNOSAUTOV920_PEND register fields differ from GS101
>>> TRIMINFO_CONFIG2 doesn't exist on eav920 either; I simply misnamed it.
>>> However, the PEND register indeed differs from GS101.
>>>
>>>> Given the similarities, and considering the EXYNOS9_ registers rename
>> from:
>>>> https://lore.kernel.org/linux-samsung-soc/20251117074140.4090939-5-
>>>> youngmin.nam@samsung.com/
>>>> would it make sense to use the SoC-era name instead of specific SoC,
>> i.e.
>>>> s/EXYNOSAUTOV920_/EXYNOS9_ and use the latter for both exynosautov9
>>>> and gs101?
>>>>
>>> First of all, as far as I know, EXYNOS9 is not the same as exynosautov9,
>> and exynosautov920 also differs from exynosautov9.
>>
>> See also see this patch, or maybe the entire patch set:
>> https://lore.kernel.org/linux-samsung-soc/20251117074140.4090939-2-
>> youngmin.nam@samsung.com/
>>
>> It's not just autov9 and gs101 that have similar TMU registers (with the
>> two exceptions AFAICT), it's also exynos850 that seems identical with
>> autov9.
> 
> Yes, Do you have any plans to upstream the GS101 TMU code? From what I understand,

Yes, I'm currently working on upstreaming the GS101 TMU code. My plan is to
do the acpm tmu helpers and then integrate the gs101 TMU support with what
will be the new exynos TMU driver.

> Autov9 and exynos850 are unlikely to be upstreamed in their current form.

From what I understand from your email exchanges with Daniel, you're going to
propose a new driver. Is my understanding correct? Do you have a timeline for it?
I'll then follow with the gs101 support.

> 
>> All seem to be part of the same "Exynos9-era" SoCs. Let's think about how
>> gs101/exynos850 TMU addition will follow. Shall one use the EXYNOSAUTOV920
>> registers? That seems misleading. Shall one redefine the entire register
>> set?
>> That won't fly because of the code duplication.
> 
> I kind of admit that.
> 
>> Thus I propose to use the EXYNOS9 prefix for the register definitions, and
>> if there are SoCs with slight differences, that can be handled with
>> compatible match data and specific SoC definitions, but only where things
>> differ.
> 
> However, I am not sure whether Exynos2200, 7885, 990, 9810, 8890, 8895, or FSD share the same TMU hardware layout as exynosautov920.
> So I’m wondering whether the EXYNOS9 prefix should be limited to GS101 and eav920, or if we should consider a different prefix that better reflects the grouping.

exynos850 has the same reg layout as eav920 and gs101 too. If Exynos9-era is
a common terminology used inside Samsung then we should be good to go with
Exynos9 prefix I think. Especially since we have a predecessor, the renaming
tried in pinctrl. But if you're not sure about it, use just EXYNOS_ then.

Cheers,
ta

