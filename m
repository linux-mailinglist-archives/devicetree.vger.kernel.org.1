Return-Path: <devicetree+bounces-241576-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F14BC7FF58
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 11:43:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 695DD3411B4
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 10:43:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F1382F7ACA;
	Mon, 24 Nov 2025 10:43:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nsfPsICG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 216712EFD9F
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 10:43:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763981010; cv=none; b=A3B6BS+9lLIqdABLFnBBNXuhUu7GT2p5nD9J1eyKEZHzunV2fyS9rkn4sDOxKgNsNWuwWvbbPF00gXp8eFeQjvGw3oNhw1YjdBVcz4xiUjUpAVhqq4fISsqE+ZrAQaCl626Mhj6bKK1pWP40yIEXCG439Sl/O8Ac05Pp3ErK5TQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763981010; c=relaxed/simple;
	bh=STw9mn4JKSYAcv2RgsR/6Ms7OqDpmTWYEdATXDvIKRk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=HKLCslWO139r2yRgTPJAbGwDOG6GsStItqV6e7+75UjStKSTDYmtPpAFwoOhvM2qVZYKOG8/CNF7olIKUczr8mfIvZFBwcYI8JpXebD/3BkKsPYi+bcZfYEEB4oFT2JD/10Vh8XXVqmCv6+qspcV14N+D2U3jXEvgzACjgwP7Fs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=nsfPsICG; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-477b198f4bcso26629895e9.3
        for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 02:43:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763981006; x=1764585806; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=IPMaYfKvhruxz/7aEIx8rHbzh3ajqn2UKQXi0f0Mf6g=;
        b=nsfPsICG24dLEfSwQ7dmS1m/WKoRBixHZ4DR61RU6j+RKsf4mgX811LN9kt24OU4F6
         muj+yRYHN3EHx1jC4ouvsMee0pNFZD/fwTYHaa5UzcyHcK2FEgg4+zkxqDlJlTDm0vGK
         oNjhg3Y84FmZLNXj+i+hhQOJurOyamFAWG0AmD2NzARQUwVB0rK6cxMSob4Mmgp6QQjy
         tEtmYGx7Mw6sMscGlxlkwSQJcLcYSNJEC6Wfah1v+ycO/fq6EzECeQ3oqWU6PB/r6WbM
         iStHa3zIXf6gxGrHuOVcFaq8NK4w3FEz37gH0zEn3KUVx1WUIxE7upqSdX4IPXcdLh5b
         3Cpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763981006; x=1764585806;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IPMaYfKvhruxz/7aEIx8rHbzh3ajqn2UKQXi0f0Mf6g=;
        b=rfrVym02Cw0WKUmz2/4HiRx0b6LTz1PQgea+VRAo8a0OtW2KqUtwdDiq4mUGviksqC
         mXStPIkJHpUrQFbkWynpbDw2C2v3M3JorT2jXoMyRc6FKnFZ7vT60AcTRYII/k1HhgrN
         6SQtOoxIBvQVOJyAd4DCva1ZNDn88ON670DLRlUh8sJkbU5YKKdcaYb3R5DGoKhK02Cr
         7afd579kx+cbYWqLnGH8AGxrO1zthWXw7UkSbibmZ47Ph4HaXHmbCeM8ZRMzrKBqcc8M
         /+dk6STkpsGu4GBhyHR6tSEvGA2bI1M6hxcJbjyOvk4NK1OVafEf1X2S/QIpYLpBXXGr
         tBTw==
X-Forwarded-Encrypted: i=1; AJvYcCUuuDI890PEtM+w++Ous/9MNU9lah9YYaNSUt1FAYN6y+skkzhw6ZGu68W9Pgigv+N6f+YN3b1NmaTm@vger.kernel.org
X-Gm-Message-State: AOJu0Yzor4XXkvi+hQ1vfoo3/MZZ9ogn+aEAQB8Ma5mQ5BnV5BOfKsO+
	SFOerAjXPnOro5eKvHCGhfXv1K02BRE3nN3SPi2fWeHSODyqXSzzdGqFJaK1+0Vi6BA=
X-Gm-Gg: ASbGnctSOnCYlJsRQwzo9TuvXC9LT/hG+GAT5BJHfoXfnLdh/enq3HIlToVnLFqEOEt
	aMWAuUa3780tM+kUoco98BuFCizZZ+0JrQ7H837ndQ7RZu/Ob2QN6uap7uSAtwqb+Ym+6Zxa5Kf
	V4HEGFMfqilqsyWIDzdf/ls8VWb+NkN0N412GjHq0x0dDx1oSos9F46sD60a6cx++qiCsjv58VI
	sIcfwGY5VBu6jKZExlr2zC7rdUD9l0XBus6iaYzrk0BspCrCi8FtiMl9CmCxOxqP01LOuZYsJfM
	I5+xDdG6GU/EMTJQIXt3P2PCNfLLt3AvU5v0o+piFsDMUoHpeCXBADq9HZAIYVfZKcEjzTivMIL
	4sB+xxJ1nPp4S/NGMXK5jpXk7vMD4XMX2p0IyNEGGHdwwgz3RJoFPEEet2L9CCg8uCsU6fkRkb5
	0tIPhld5MDFzibiOrcMv8ARKvAsTo=
X-Google-Smtp-Source: AGHT+IHUwHL8Ak/SSQPUMF7+OGU9CxDUvw1EzBytBVdE43sHRPf2JfCvp+pEC30Sy8UWing4gkJFBg==
X-Received: by 2002:a05:600c:450f:b0:46d:ba6d:65bb with SMTP id 5b1f17b1804b1-477c01eb9bdmr122420585e9.31.1763981006460;
        Mon, 24 Nov 2025 02:43:26 -0800 (PST)
Received: from [10.11.12.107] ([5.12.85.52])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-477bf22ea00sm190158965e9.14.2025.11.24.02.43.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Nov 2025 02:43:25 -0800 (PST)
Message-ID: <12346382-7718-4942-a497-4de278b1d5a0@linaro.org>
Date: Mon, 24 Nov 2025 12:43:22 +0200
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
 'Daniel Lezcano' <daniel.lezcano@linaro.org>,
 'Bartlomiej Zolnierkiewicz' <bzolnier@gmail.com>,
 'Krzysztof Kozlowski' <krzk@kernel.org>,
 "'Rafael J . Wysocki'" <rafael@kernel.org>, 'Zhang Rui'
 <rui.zhang@intel.com>, 'Lukasz Luba' <lukasz.luba@arm.com>,
 'Rob Herring' <robh@kernel.org>, 'Conor Dooley' <conor+dt@kernel.org>,
 'Alim Akhtar' <alim.akhtar@samsung.com>
Cc: 'Henrik Grimler' <henrik@grimler.se>, linux-pm@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Peter Griffin <peter.griffin@linaro.org>,
 =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>,
 William McVicker <willmcvicker@google.com>, jyescas@google.com
References: <20251113064022.2701578-1-shin.son@samsung.com>
 <CGME20251113064044epcas2p1b87addb21473eca7cc52052e4e2e9237@epcas2p1.samsung.com>
 <20251113064022.2701578-3-shin.son@samsung.com>
 <2180a854-8ba6-4424-add2-eb34637530c1@linaro.org>
 <000001dc5d2a$0697bf10$13c73d30$@samsung.com>
Content-Language: en-US
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <000001dc5d2a$0697bf10$13c73d30$@samsung.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hi, Shin,

On 11/24/25 12:06 PM, 손신 wrote:
>>> +static void update_con_reg(struct exynos_tmu_data *data) {
>>> +	u32 val, t_buf_vref_sel, t_buf_slope_sel;
>>> +
>>> +	val = readl(data->base + EXYNOS_TMU_REG_TRIMINFO);
>>> +	t_buf_vref_sel = (val >> EXYNOSAUTOV920_TMU_T_BUF_VREF_SEL_SHIFT)
>>> +				& EXYNOSAUTOV920_TMU_T_BUF_VREF_SEL_MASK;
>>> +	t_buf_slope_sel = (val >> EXYNOSAUTOV920_TMU_T_BUF_SLOPE_SEL_SHIFT)
>>> +				& EXYNOSAUTOV920_TMU_T_BUF_SLOPE_SEL_MASK;
>>> +
>>> +	val = readl(data->base +  EXYNOSAUTOV920_TMU_REG_CONTROL);
>>> +	val &= ~(EXYNOS_TMU_REF_VOLTAGE_MASK <<
>> EXYNOS_TMU_REF_VOLTAGE_SHIFT);
>>> +	val |= (t_buf_vref_sel << EXYNOS_TMU_REF_VOLTAGE_SHIFT);
>>> +	val &= ~(EXYNOS_TMU_BUF_SLOPE_SEL_MASK <<
>> EXYNOS_TMU_BUF_SLOPE_SEL_SHIFT);
>>> +	val |= (t_buf_slope_sel << EXYNOS_TMU_BUF_SLOPE_SEL_SHIFT);
>>> +	writel(val, data->base + EXYNOSAUTOV920_TMU_REG_CONTROL);
>>> +
>>> +	val = readl(data->base + EXYNOSAUTOV920_TMU_REG_CONTROL1);
>>> +	val &= ~(EXYNOSAUTOV920_TMU_NUM_PROBE_MASK <<
>> EXYNOSAUTOV920_TMU_NUM_PROBE_SHIFT);
>>> +	val &= ~(EXYNOSAUTOV920_TMU_LPI_MODE_MASK <<
>> EXYNOSAUTOV920_TMU_LPI_MODE_SHIFT);
>>> +	val |= (data->sensor_count << EXYNOSAUTOV920_TMU_NUM_PROBE_SHIFT);
>>> +	writel(val, data->base + EXYNOSAUTOV920_TMU_REG_CONTROL1);
>>> +
>>> +	writel(1, data->base + EXYNOSAUTOV920_TMU_SAMPLING_INTERVAL);
>>> +	writel(EXYNOSAUTOV920_TMU_AVG_CON_UPDATE, data->base +
>> EXYNOSAUTOV920_TMU_REG_AVG_CONTROL);
>>> +	writel(EXYNOSAUTOV920_TMU_COUNTER_VALUE0_UPDATE,
>>> +	       data->base + EXYNOSAUTOV920_TMU_REG_COUNTER_VALUE0);
>>> +	writel(EXYNOSAUTOV920_TMU_COUNTER_VALUE1_UPDATE,
>>> +	       data->base + EXYNOSAUTOV920_TMU_REG_COUNTER_VALUE1);
>>> +}
>>> +
>> This is unreadable; please make it understandable for those who don’t have
>> the documentation (explicit static inline functions, comments, etc ...).
> I'll restructure this code by introducing explicit static inline helper functions and proper comments to improve readability.

We likely shouldn't use inlines here, see Linus's reply from 2006:
https://lore.kernel.org/all/Pine.LNX.4.64.0601021105000.3668@g5.osdl.org/T/#u

I guess you can make this easier to read if you use FIELD_GET/SET from
bitfield.h. Other improvement would be using the regmap api.

Shin, a bit unrelated with the patch, but I wanted to let you know that
I started looking at the GS101 TMU. I assume it's very similar with the 
TMU on exynosautov920. Do you know if they share the same IP version?

I noticed GS101 uses ACPM calls to communicate with the TMU. Why did you
choose to not use ACPM for exynosautov920 TMU?

Thanks!
ta

