Return-Path: <devicetree+bounces-240205-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C4515C6E855
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 13:41:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 578F54FB59D
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 12:33:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 99A9535F8CA;
	Wed, 19 Nov 2025 12:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bnfSHyM7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26D5235E54A
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 12:30:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763555433; cv=none; b=mxNaJi6NkfY9GcQxgG+FosQllpBQ5Okzoz6Pg57FShuGz4mdfDCAaOHXuYA4yTCgE0RVpnaEgRFM6vioyeoYuilSZOgKJEEhrg6RxlAAtQxx9ZA4QgUR1leWZGGupjhMCiry6DeUjIU/I/caDIinUsdfdQqS4WrghamINmnxT5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763555433; c=relaxed/simple;
	bh=kXPjrkL1yFxBo0v4ux0Of/j01hMOeLRVISHZiR1+1yU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jrEKAr52BIXkICdHWIRJIUwb4JcCjn9LXqNG/iehRjPHxqDWUwGpbbdiwCvK7B7zQxrDbB0jaF094s6UiDmuk2kPMJZThrSHncB3jgNq8UAebxjO9WXmhLL3u0VyG/D6Cq7vttdxEu90+zA4Q9yCoEigGX1SiL1Ivgkq6UTajRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=bnfSHyM7; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-47795f6f5c0so31693285e9.1
        for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 04:30:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763555428; x=1764160228; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ANuLCsNtCUF8tPoNyJV9ss6Pl4S7P3c/OwbemWzc+jQ=;
        b=bnfSHyM77VNkMvXIqgyNMIdSQHUWytulsBEYKYMSkui+KSV9JdE/I6xCNDRLVocKAq
         nfOqx2J6gtidiDJKKtkp8iGNvBzQYdw7K3RXqgBrxXwM1kRu4tPUK1QC4FEO5KXOkDii
         e9/vI9dul7hoizGWEFNQ3zYEyXJscJlWcueXwHelunGg5KAm7XnjLpYJJY/0/nwQxuUH
         cRCG6T9JvcjhHNJwk9bvX8yp6B8fu+/DpkEkmVSVI9aNZbFZRvoLFyPrIaYc+VhSb/Wb
         XX1crldlApuD4hUyn6gljbWsWom9wGWtMHoDwT4igBL1XjRt0FYwCrEys2ewHxUAR1Tg
         xdVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763555428; x=1764160228;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ANuLCsNtCUF8tPoNyJV9ss6Pl4S7P3c/OwbemWzc+jQ=;
        b=kxfbulOz+BCIp0fKTIOGA6QxJOwlJwuDy8XdlLuipiFvL8HYQH5EBvgaGdrEP2BSpS
         UxCLmfEeZJxCMN+3HnxXtmXYuq8Hz4uyYKdOV5bPUJGklygbUV56XlTadXIJEjsehiSn
         yBGzYcm0zO+ZoWyVb5WY4jblWQyVimvR7DdA94VqcTHraGSXGmvaks9ZA1xGsQupJt5+
         OAiKfUYlNT8CoeK5L91uDaeA4sHIAkcJCeCpbO0o8gb3f3xNz5oPij5psyAG25shbNh4
         /xDrz3gp2lGZ4STLiot8YaQVRyDVcvIGmijLYrdq5/0U1tAomfJLFmP9mwERQ5DB4EgU
         Pr2w==
X-Forwarded-Encrypted: i=1; AJvYcCWcfDMJyJeWlEy0JjrjPEWQzXbloDs6euTPVZb8EjygzoG3KoDb6nqUeJg4haNjwZb/wNa9Avcwnh1P@vger.kernel.org
X-Gm-Message-State: AOJu0YzCBHnYywqAI789XkirPBAW1dfCLm8g6XJXnRZsrnKAosNk22l4
	1xfW3ETrbFsZp/xmys8fDgGXnYXmIfofazayyFon92Bve+SISfbq4vB4rPlDWcOdeyk=
X-Gm-Gg: ASbGnctwZw9jLFtfdNAdvpY1/KzYTraDcXwaLm7g6QkGHjnYh7B4o0DK84kM+RwHdqX
	4NtEuzy7DoMKU2NpXzssciv50rW61R1ISxRBhIt9TebHJ0m1vsChqzFGmrz3bzGDeEPh9ByLBa1
	BbNHIBMiICZVmr3h6slNLoUZ66hCirllG4kKIGf9Gxib/8UWitIrgZc6u8omBryzV32RZuX91XT
	QehDd8gCFxg9/lgDAEpP5u7AELXneiEOV5DDb1tFW5yBsEG/lAHz0qu8Imtcg9LWMt/vfgo/Ezs
	MVFkmPeQxF8VatZ1WV3X6l1cyu6rJA3tehez1DZNHH0dOoJ9sMGiay0NTcwz3bQ/bkrOnEB+xk+
	rxrHEDSsbSGAdtTY1SW/3aK1pEByU8ye7jRFd5dFvlQZOGDcarubBOe/mrbQRkx0abVLwzj6uP0
	FrjrSt5osY1AbQxMW1hk/kXqspXBQ=
X-Google-Smtp-Source: AGHT+IHqhbbvVZExNtwvyM5VtD1QzsNi1upkWPblMC3uEuvom1Rb/Pq0EdVbzlawrXFh3afQBP4jgw==
X-Received: by 2002:a05:600c:19cc:b0:471:1774:3003 with SMTP id 5b1f17b1804b1-477b19e248cmr19240965e9.29.1763555427738;
        Wed, 19 Nov 2025 04:30:27 -0800 (PST)
Received: from [10.11.12.107] ([5.12.85.52])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-477afb54774sm23714085e9.3.2025.11.19.04.30.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Nov 2025 04:30:27 -0800 (PST)
Message-ID: <4a94884d-ffc1-45b7-b014-65f9724a820a@linaro.org>
Date: Wed, 19 Nov 2025 14:30:24 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/7] soc: samsung: exynos-chipid: use devm action to
 unregister soc device
To: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>,
 Peter Griffin <peter.griffin@linaro.org>,
 =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>,
 Srinivas Kandagatla <srini@kernel.org>
Cc: semen.protsenko@linaro.org, willmcvicker@google.com,
 kernel-team@android.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20251118-gs101-chipid-v2-0-e9f1e7460e35@linaro.org>
 <20251118-gs101-chipid-v2-3-e9f1e7460e35@linaro.org>
 <e25b9f14-b583-434d-ac4f-364b962f0ed1@kernel.org>
Content-Language: en-US
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <e25b9f14-b583-434d-ac4f-364b962f0ed1@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 11/19/25 2:13 PM, Krzysztof Kozlowski wrote:
> On 18/11/2025 14:56, Tudor Ambarus wrote:
>> Simplify the unwinding of the soc device by using a devm action.
>> Add the action before the exynos_asv_init() to avoid an explicit call
>> to soc_device_unregister().
>>
>> Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
>> ---
>>  drivers/soc/samsung/exynos-chipid.c | 27 +++++++++++----------------
> 
> Can I take the cleanups before new GS support?

Fine by me. I'll send v3 then, to have the cleanups first.> 
> That's btw preferred order for all work. Fixes should be independent or
> first in the patchset. Then cleanups before features/new support.
I agree for the fixes. In the past I used to do the cleanups before new
support, and I got feedback that the cleanups might delay the integration
of the new support. I'm okay with both approaches, v3 will come.

Thanks,
ta

