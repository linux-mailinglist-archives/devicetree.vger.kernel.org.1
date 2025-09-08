Return-Path: <devicetree+bounces-214301-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FB09B48AA6
	for <lists+devicetree@lfdr.de>; Mon,  8 Sep 2025 12:55:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0A1021896562
	for <lists+devicetree@lfdr.de>; Mon,  8 Sep 2025 10:55:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 82E142264B6;
	Mon,  8 Sep 2025 10:55:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="S3AFd//Q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9540D189
	for <devicetree@vger.kernel.org>; Mon,  8 Sep 2025 10:55:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757328922; cv=none; b=TamzjaKTtdZ9dIM0Gi95i3jdQ89hbP4dSZJqShjPoYUiZZKBZm5FJGc/smpCFMFmYA9PrxBPKTZc0w4TIy/Tqg0zVc5mKMmEndmxitGV6vaJ0vjy/+iUC0ia+V++2GTcON2t99inf7GNc5VfVD7BNNsz9ZpRL+mOTHsdJpbENLI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757328922; c=relaxed/simple;
	bh=zaNZRCRJ0Ys2b4J7IL/W4rFyxEh0uCxRutFrfyHwGtI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=E2odMH2tMf2RHjfquKCmSlXSLEM/FSLlRZBXj1zdEoGWnO4FP2wrA+QvLDuXHJGtX7Gd2NIKFY2YVYlk8xC2V3CePfHD0EmX2UbHygIBVOVTpuG+1WpgoRLr/xanzTOUUO6Qtvekw0k/L8Z6qauWJ1X34Sl286xaC3PW8vt2RQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=S3AFd//Q; arc=none smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-625e1dfc43dso2790035a12.1
        for <devicetree@vger.kernel.org>; Mon, 08 Sep 2025 03:55:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757328918; x=1757933718; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=D15WYqEqCtCB7v610GJBwva3MsN/FcT88sDyZBQLmFU=;
        b=S3AFd//QyLUH6ONLkSRL6J9cOfAh5PI5ZDetDHZTHnHXYIHNBbDGtbleNMPY4KxvLj
         aWJIKG2BOcC6d0Nue/6oFzhIkFRO7kaIt2jVVdyNCvTcWkTyfsNFzocs6hEALhon9Cx4
         IgmR6rqd7Vb/tTd2MqL8bBSeMHBmxUfiKUiU0vAZN9UAjbO1gVxjLK6GLLz90eUn86Mo
         m5EYU9BEdebDQhctN1CpyIJv3y6tB8Svz1Rp7JtKJ7HxASrDG1INkCV9EkbO78OWUEXy
         fpVZP+rguypnfyNiGmxekF47YM+dNlO+CJnvqX9YmCsiYhXyGBuqV9lz9ncCvvSQGozm
         nKvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757328918; x=1757933718;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=D15WYqEqCtCB7v610GJBwva3MsN/FcT88sDyZBQLmFU=;
        b=k67/UnefWi7pYmNC97V66D4T0cnJ0e5pQj3fvl+klCnn8Vw9pmiu7bSIvvqQHaejIg
         z2Fj5J0oVYdH8rVNIAn7GMkNx/FrergaF0vtwdrnGgLiOHGGBDilpqGemuVWoBh91o7C
         T4emLp53zwRNJVnhTZByKE2AlI6MHgC1eW6T898ndmLimRvCoM/xSBlu2heLRjGK360s
         6toEu0uNLB98Y3mYXdgU4kD0tHAcVnw/FC34vXkzvQV+0B5YouKU7Fw67oLVDp4nGn+C
         DbznNJBWNgUflgqZFuB9CtLZ63KUQqHnCnFuJSMEjx6Kv7rfdzAxPH36ZDRtFOEbb4Jz
         IfmA==
X-Forwarded-Encrypted: i=1; AJvYcCWLHDCK415hHW7Nkx5woEjy+yE1kA0nPbf5X3imDWpyK2izoQAGeI3yMPOTauP8DQHUmzt9RrJ+09zS@vger.kernel.org
X-Gm-Message-State: AOJu0YwXZ3FABYmTacWFyJNfpJDV8Vbh2rf1wgbStcu34iuqrPboBZ8y
	9LBn9cJIwD1GbDupIZm2Fd4mTunnrduieoa+Vn4YzGP/mHJgtyVp9Kgc9T00byrPkUY=
X-Gm-Gg: ASbGncvXzjENa+bvdfLjHiihkfeQc1zOMjq3fzj/CRnPPonoMEjfX7Zsn5hnK0ig23C
	TDsN9k+51aQGEg6R9yfnCpcxty4qsGfuMsKgpECfgdaoAMs8N41SQVew9iRn0K3IqngP0HRkYNy
	Dks9GspidJGtToe8ydwBPKTOzXiW9zl6wo6RXbGJW30L6WbMU41hqCMr5zIrkVYEBR6fxbBNidi
	OdOv0nviqXSmwD1U7107Q5PeqNS2ibBKUe1LZfs/wPzTv/aYMIPnZ+8L/EcsYQo5UjAjI7HB2yl
	jx+Tm4g8gB8z2D0NCY78ljrI623foDqPT3VQln/ZA0VEMVcBoQFrRYMshtXKcNUr8jCxSdeB1cz
	OsjSVAg+U4bx0lpOQJt/Sf3CxOLkRlv+e
X-Google-Smtp-Source: AGHT+IH10y9VESvsaHZG3UuRMxdkRiSrai95h1SgmUQXtpdxF6A/nnAVrY3x0CbvcZ5YJbcxhlzjXA==
X-Received: by 2002:a05:6402:278d:b0:627:d1af:8c66 with SMTP id 4fb4d7f45d1cf-627d1af8dccmr3858818a12.5.1757328917870;
        Mon, 08 Sep 2025 03:55:17 -0700 (PDT)
Received: from [192.168.0.251] ([79.115.63.103])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-626c8d8693esm3539727a12.48.2025.09.08.03.55.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Sep 2025 03:55:17 -0700 (PDT)
Message-ID: <8eb616f2-32bc-4715-8775-b1e896cee908@linaro.org>
Date: Mon, 8 Sep 2025 11:55:15 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/5] clk: samsung: add Exynos ACPM clock driver
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
References: <20250903-acpm-clk-v3-0-65ecd42d88c7@linaro.org>
 <20250903-acpm-clk-v3-3-65ecd42d88c7@linaro.org>
 <eafb409d-5b5f-4791-939a-5a3c1eb00b9b@kernel.org>
 <91407377-f586-4fd2-b8e4-d1fd54c1a52a@linaro.org>
 <32a28a8c-2429-4d61-88f0-b7e3e866f85e@kernel.org>
Content-Language: en-US
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <32a28a8c-2429-4d61-88f0-b7e3e866f85e@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 9/8/25 8:45 AM, Krzysztof Kozlowski wrote:
> On 08/09/2025 09:39, Tudor Ambarus wrote:
>>>> +
>>>> +	aclks = devm_kcalloc(dev, count, sizeof(*aclks), GFP_KERNEL);
>>>> +	if (!aclks)
>>>> +		return -ENOMEM;
>>>> +
>>>> +	for (i = 0; i < count; i++) {
>>>> +		const struct acpm_clk_variant *variant = &drv_data->clks[i];
>>>> +		unsigned int id = variant->id;
>>>> +		struct acpm_clk *aclk;
>>>> +
>>>> +		if (id >= count)
>>>
>>> This is not possible. You control the IDs build time, so this must be
>>> either build time check or no check. I vote for no check, because I
>>
>> using BUILD_BUG_ON_MSG? that would work, see below the why.
>>
>>> don't think the ID is anyhow related to number of clocks. What if (not
>>> recommended but what if) the IDs have a gap and next ID is 1000. I see
>>> your code using ID:
>>>
>>>
>>>> +			return dev_err_probe(dev, -EINVAL,
>>>> +					     "Invalid ACPM clock ID.\n");
>>>> +
>>>> +		aclk = &aclks[id];
>>>> +		aclk->id = id;
>>>> +		aclk->handle = acpm_handle;
>>>> +		aclk->mbox_chan_id = mbox_chan_id;
>>>> +
>>>> +		hws[id] = &aclk->hw;
>>>
>>> ^^^ here, but why do you need it? Why it cannot be hws[i]?
>>
>> so that it works correctly with of_clk_hw_onecell_get() in case the clocks
> 
> Ah true, hws[] has to be indexed by ID.
> 
>> IDs are not starting from 0 or are reordered when defined. For example let's
>> consider clock ID 1 is wrongly defined at index 0 in the array. When someone
>> references clock ID 1 in the device tree, and we use of_clk_hw_onecell_get,
>> it would get the clock defined at index 1.
>>
>> In my case the clocks start from index 0 and they are defined in ascending
>> order with no gaps, so the check is gratuitously made. I wanted to have some
>> sanity check. Do you still think I shall remove the check and use hws[i]?
> 
> 
> Look at some users of of_clk_hw_onecell_get() - they all don't care
> about this and do:
> 
> 441         for (idx = 0; idx < count; idx++) {
> 442                 struct scmi_clk *sclk = &sclks[idx];
> 
> without any checks.

I saw, it felt a bit rugged at first when reading it, but not so more now,
see below why.

> 
> I just do not see why runtime check is necessary. This is purely build
> time relation and either we do not care, because the code should be
> synced between one and other place, or (if you care) then it must be
> build time check.
> 

I tried the following:
+/*
+ * Use a static assertion to check that the clock IDs are sequential
+ * and do not have gaps. This check is performed at compile-time.
+ */
+static void acpm_clk_build_check(void)
+{
+       BUILD_BUG_ON_MSG(gs101_acpm_clks[ARRAY_SIZE(gs101_acpm_clks) - 1].id !=
+                        (ARRAY_SIZE(gs101_acpm_clks) - 1),
+                        "ACPM clock IDs are not sequential or have gaps.");
+}

and then in probe() called it. It works in a few cases, but it leaves the
possibility open for the intermediate clocks to have unrestricted values,
even if last-clk-id == nr-clks - 1;

So to be comprehensive I'd have to combine a build time check with a run-time
check. Which feels like over engineering. The assumptions scmi and other do
don't look that bad now :).

I'll drop the sanity checks and use hws[i] instead of hws[id] so that at
least there's no out of array accesses in case the writer really mangles
the clock definitions.

Thanks,
ta

