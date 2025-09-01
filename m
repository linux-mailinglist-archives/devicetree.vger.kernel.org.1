Return-Path: <devicetree+bounces-211171-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 80E67B3DCD5
	for <lists+devicetree@lfdr.de>; Mon,  1 Sep 2025 10:43:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4FE3017A413
	for <lists+devicetree@lfdr.de>; Mon,  1 Sep 2025 08:43:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D7A642FB972;
	Mon,  1 Sep 2025 08:43:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nuBgR2oz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 066A92FB63A
	for <devicetree@vger.kernel.org>; Mon,  1 Sep 2025 08:43:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756716222; cv=none; b=eHq83jaRSOmhw29QOiSEm5nDfjoL8PK3nD1JHvrzNQdR2SLifY6NS5SsKfKxYGvbfoXk4JSfi+saebBt1ARH1SyXFaysNY913eK+/5yiRZ7zbywKX6uqFOwSpA5V5/iCo2HL+Hq4Ir4uYgjPnBszZ8LAF2N3ESpSCvvBn53K2Bs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756716222; c=relaxed/simple;
	bh=3H3Jx5oMcfa5QmF4ouRH6A2BD9ZreQQnHMh8vnL1tHE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qTuYQE4RduulO6xPs11ITFSVp1oDRIKyIPNlDbRHM5uuwRSND6ZTexVoy8mM75vUH6+IBBLADL6jCxqKIAV0ikcXIN56eGjkyYAs1owVQoLEHDdn+FV5eKil0FhG74r6ETKtYlDdbocGSP2+aWj4ztZxE8JiLFnbkHCD1cAlxxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=nuBgR2oz; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-45b87bc67a4so8702215e9.3
        for <devicetree@vger.kernel.org>; Mon, 01 Sep 2025 01:43:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756716219; x=1757321019; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=X1PqOUmZ0Ne7FPif1yb7D1u9567Eu8Y0LGe+cU3C1kk=;
        b=nuBgR2oz76vd1dXQZF8qarc4nNfhFHMDri+H/iL47CV5GgBl0zLy0PD8XMP+Us8SFc
         f5Y1yDAEoZzAhzlYP5LrZslerTzoZUWfnAeKho1tyDFUTh+MwJojJO4fGWj7sdpj88Q/
         WhElkHRXwgEjCiJwo/FJ8T+Zb1lDttutP9hcVwBdVUG3Q/dQRU472P79IHOsUaYCRGQu
         1WRJpbhpcd4mYiJzw3SlZ6aEA/NPGBmTtmj8EMjZcZXEmqEZeFTZdriVNc4n2XidTn8A
         zdJnEPcptBIVQta8otexG3DDj+clNfMaY0rnGZ7djHBpKEZkBRNf6zvkQzuicqWXtg8H
         taYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756716219; x=1757321019;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=X1PqOUmZ0Ne7FPif1yb7D1u9567Eu8Y0LGe+cU3C1kk=;
        b=huHO4cKVlu0XZI5VRqBAKLLfCLbI/55a4kxWrN/ItU6sGNWPpI1/vs6dcBAx2Q3BtW
         T4zb5eLtxT8AhjvWMsc2VWtw6+tuPZ/EYVN1wottWZzOI65QSzq8wDQTrDyv1OwU0Cie
         nAKXNUoWCTwdyFdQULQoPKzHUdXZLhe7GgvODzkCNIiQ+3AH6YLIF67PuOqkLV/Fi18k
         YtIPB+dHwGVZafMRMT9gbAx39OtM3FbU/Z5sIIuK3MIWy+Eq3jsvcIDCST7ANWB0WIan
         SOzHUfDNVPIf5kOr596h4A9JgVoNqeY6l7uryX7pIvMONE2WXHe+Nh2q9xNSIdiEWI8h
         5KaQ==
X-Forwarded-Encrypted: i=1; AJvYcCX0QNG85zo4MmBiMpzUjVRb+NRvu7U1ei4t91WTkw3Z385SuF1uFnQ0FoECSXUT0LjcYjeuMNMBXOLK@vger.kernel.org
X-Gm-Message-State: AOJu0Ywt7Gsa12FcuWMazG4HnR5y9IA+HIH9riR1g/Hh8QKJU737/VX+
	yhCq63FAKoKrULHxnMQvgq/bJrXP14bDzru81FCokjJnd+oDLmD4xQ0uOQx/QN5TG+I=
X-Gm-Gg: ASbGncukems3EfjVy9ObA2GZjH+28m/Y2EO7sNJJWiVxdEJaWdHiKerOVWJTDAQT6Yt
	LaEqlLH7mQS2SNu279ijJrvqTZd9sSkWwSb3ny2KylYOyhlnSnpCQmLZPCKrYVoIuJeU9UhYrll
	u+7Vv6FdJ/WbZpENncfDk2YLixHoPj9U92LLZNYy2r7ztl/fDhzg+D+2jCfBw0ACF+/uzxdicEX
	wWbphPYo0BUCNAJ/J0Q80Ex6jF9WhrEfA7E7vjpynHfa3ozgLfEiJUm9ahmEvgebXPPqmNVTdsR
	xM1bJ+VlKutLoa2F4Uu0+o+ZhmtsZqut4TBRmjViuvQGOyTJk+lF26OYQ2aUhgAcdeHdN3bkt/t
	7uT4JV3LxJGU+7fvW2dlvZTFWc3vu3Q==
X-Google-Smtp-Source: AGHT+IEOfIZTQy6jci7xeBxd5WsSj+WaclDlxn3VgJ9N1OGclS2wRjNkjBAzbocqqf4Z87S9TOQbdQ==
X-Received: by 2002:a05:600c:a4b:b0:45b:6365:794e with SMTP id 5b1f17b1804b1-45b855711fdmr62236345e9.24.1756716219178;
        Mon, 01 Sep 2025 01:43:39 -0700 (PDT)
Received: from [192.168.0.251] ([79.115.63.1])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45b69b7529asm139030665e9.0.2025.09.01.01.43.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Sep 2025 01:43:38 -0700 (PDT)
Message-ID: <c1321c46-e7a4-4489-a63b-a3ed72e5e98a@linaro.org>
Date: Mon, 1 Sep 2025 09:43:36 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/5] firmware: exynos-acpm: register ACPM clocks dev
To: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Peter Griffin <peter.griffin@linaro.org>,
 =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Chanwoo Choi <cw00.choi@samsung.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, willmcvicker@google.com, kernel-team@android.com
References: <20250827-acpm-clk-v2-0-de5c86b49b64@linaro.org>
 <20250827-acpm-clk-v2-4-de5c86b49b64@linaro.org>
 <e8346a38-fef7-482f-81ab-20621988b047@kernel.org>
 <761936e8-1626-47f8-b3f5-ebc62f4a409b@linaro.org>
 <2567a939-4938-4c92-8893-83d03ff8767f@kernel.org>
Content-Language: en-US
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <2567a939-4938-4c92-8893-83d03ff8767f@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 9/1/25 8:48 AM, Krzysztof Kozlowski wrote:
> On 01/09/2025 08:56, Tudor Ambarus wrote:
>>
>>
>> On 8/31/25 11:50 AM, Krzysztof Kozlowski wrote:
>>> On 27/08/2025 14:42, Tudor Ambarus wrote:
>>>> +
>>>> +static const struct acpm_clk_variant gs101_acpm_clks[] = {
>>>> +	ACPM_CLK(CLK_ACPM_DVFS_MIF, "mif"),
>>>> +	ACPM_CLK(CLK_ACPM_DVFS_INT, "int"),
>>>> +	ACPM_CLK(CLK_ACPM_DVFS_CPUCL0, "cpucl0"),
>>>> +	ACPM_CLK(CLK_ACPM_DVFS_CPUCL1, "cpucl1"),
>>>> +	ACPM_CLK(CLK_ACPM_DVFS_CPUCL2, "cpucl2"),
>>>> +	ACPM_CLK(CLK_ACPM_DVFS_G3D, "g3d"),
>>>> +	ACPM_CLK(CLK_ACPM_DVFS_G3DL2, "g3dl2"),
>>>> +	ACPM_CLK(CLK_ACPM_DVFS_TPU, "tpu"),
>>>> +	ACPM_CLK(CLK_ACPM_DVFS_INTCAM, "intcam"),
>>>> +	ACPM_CLK(CLK_ACPM_DVFS_TNR, "tnr"),
>>>> +	ACPM_CLK(CLK_ACPM_DVFS_CAM, "cam"),
>>>> +	ACPM_CLK(CLK_ACPM_DVFS_MFC, "mfc"),
>>>> +	ACPM_CLK(CLK_ACPM_DVFS_DISP, "disp"),
>>>> +	ACPM_CLK(CLK_ACPM_DVFS_BO, "b0"),
>>>> +};
>>>
>>> I don't understand why clocks are defined in the firmware driver, not in
>>> the clock driver.
>>
>> I chose to define the clocks in the firmware driver and pass them as 
>> platform data to the clock platform device for extensibility. In case
>> other SoCs have different clock IDs, they'll be able to pass the
> 
> You will have to modify firmware driver, so still at least one driver
> has to be changed. Having clocks defined in non-clock driver is really
> unusual.
> 
> This solution here creates also dependency on clock bindings and makes
> merging everything unnecessary difficult.
> 
>> clock data without needing to modify the clock driver. GS201 defines
>> the same ACPM clocks as GS101, but I don't have access to other newer
>> SoCs to tell if the ACPM clocks differ or not.
>>
>> The alternative is to define the clocks in the clock driver and
>> use platform_device_register_simple() to register the clock platform
>> device. The clock driver will be rigid in what clocks it supports.
>>
>> I'm fine either way for now. What do you prefer?
> 
> Please move them to the driver.

Okay, will move the clock definitions to the clock driver.

> 
>>
>>>
>>> This creates dependency of this patch on the clock patch, so basically
>>> there is no way I will take it in one cycle.
>>
>> Would it work to have an immutable tag for the clock and samsung-soc
>> subsytems to use?
> 
> No, just try yourself. Patch #3 depends on patch #2, so that's the cross
> tree merge. It's fine, but now patch #4 depends on patch #3, so you need
> two merges.
> 
> Or how do you actually see it being merged with immutable tag? What goes
> where?
> 

Unnecessary difficult indeed. Hypothetically, if we kept the current
structure, we could have have a single tag on #4. Since the dependency was
on a new clock driver, the clock subsystem could have lived without merging
the tag, as the chances of conflicts with the clk core are small. But not
ideal. Lesson learnt, always put yourself in the maintainer's shoes.
Thanks for the patience!

Cheers,
ta



