Return-Path: <devicetree+bounces-228786-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 551DEBF0B6C
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 13:03:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 728404F2918
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 11:02:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0767E2F6577;
	Mon, 20 Oct 2025 11:02:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="SKLcgTV9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F44F24E4C3
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 11:02:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760958175; cv=none; b=pCiEJEC8AGFGGybyU56uiLZfBWc+02T1Vr0hnbfG2JOwWsXYked2c1HMWa47CxAGwm3Ocy+5eUJ3+zArHieZAQhq+GpasDZ4rxw9RbxSA5vtGhU+S/ychoBUl+NoW7PAklFSzIRPtDNsrsxN8AiDVRNmLZvJEM0mE45uc2AZoUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760958175; c=relaxed/simple;
	bh=W1JaE8rS+GbY/d7gvazS4gQFxDwV4eMwNOn47dqusZM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nFejqcS9pFjB5AiMFYPzE9y2hR7SEojvZ/xz75TKhn40y8P32zWetplAGrzpwXsYA6hyBBfDHr+ko2OVcN5W8r89uSJowoihwlcji4RdCS9GZbJNto0V918rGu3mWe8+paB2/sMA+itDsU0wWHH7Hm5gwYbQnA57rVxmv1o94yU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=SKLcgTV9; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-47118259fd8so23331105e9.3
        for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 04:02:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760958171; x=1761562971; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/xaDzCk8g9Yg/TwlJeMcBMF5t+X3WKHYwMzLzHQCj6g=;
        b=SKLcgTV96RTAEsTyKqdP//fl68SsWZs0++NzmzOy7PerGASaHwpFNYtLBOenc6ZAyK
         0aB0ohdih/1OK6OQhvxx6+8S6rsfmOdXIpPrRncKOATOm2c7SqLsf/iQW82OE/IWNS7m
         RsC84qBitEiy3uCsBfEItwgIJWHvra4zmElwiYHoyrbLptmGA07smCKzYhEVK9O20NgM
         c/mhqOrbZRyuQvI3EjKcRd2cUjJ61xDaKanZX+HuZIdtSXy91d1gfovvNBXaXWfLikWm
         H4eEVa1Gd3jUEvPSjAgzS2VHNoiF25McgSyd1/0qHiqBlkZsouuLUl2EKcYqjh/1zRXO
         9aTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760958171; x=1761562971;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/xaDzCk8g9Yg/TwlJeMcBMF5t+X3WKHYwMzLzHQCj6g=;
        b=MXv40j5PANHQG2ImAY/exXFcr0IxsG/CLR05sHYS2zCNpaVghqYfwAgeOMCIUgRrrR
         VEvEHHnstubYHwaQXHQ2QbOksT/yNwg7vc0xKYyyjpsag+0ysLTHwAwHEMmyB3wSIy3i
         dev7/2aae3Nl2CiJGeKVLd/D5ebb7g5Tl679X+4wI2QTgrl22DKaWiVTC/kFJglGNcHs
         eVm2ikqIcX1GIn+9HmWH8xEbR180smw88xc7so0QkhCBhUBgSPuUSlzpVd4QNvzmqDNH
         eJ1Wfxy+l00UkAGfELx+xaPzcO353HVAFYX4H86udrKrcfzrHBIN1akRAWYpB4dMpxsX
         7euA==
X-Forwarded-Encrypted: i=1; AJvYcCV0bIMh2PVaiDHkeydfsNmKViN0xktynxWwPIKQz1Sv/GuNLV7L2lUubsJ4FcuObu87QGPDEofnBq9R@vger.kernel.org
X-Gm-Message-State: AOJu0YyKOYibIGbt6RvNQAnijy6Hzt8bqAgPBt3hdfHwDCeGhedWWO13
	owZlp5UaMLOYGGPNrWLP7f/hnp9GhSCjw1MAbIgniM39+VSW7PVi3soTZmLgM0gDLc0=
X-Gm-Gg: ASbGncus5Ut1jpBfe5eHJEYbsFAzuQVTHc36+EageOfnQYSzuuVJg86eRCo0wgk+lzF
	xmy3H7TPqYwmrPCRsD7iKL4lqYRztjvH4hc4NzhElr11cl7LO6mPpOlNRZT4mlvFzUtHKE+N1/I
	3JqZ0ZLZ7yiXWZPcVfDyfyD7zetCSNwu6LKctRrC5F3EU6UpOmWasBFgMmVFEENYZbECuzNj+C9
	miUhIPucywstK7Zitde9PC3Ny483l8VoOYe0T7u+hlvnrbTzrDdIR7ihID8VwM4ZF9NAbMJRj0e
	YuJt85/6uFi6iVJWOh93R+Oz28jbG0bZQaLfL3XONHin5IogRJpF4sLtJ3sQL0j/yWkYlK/6sTU
	ppH0dY/AGTzjKLPPCOGDQa3dWr62L5qgxs+ddBfjDTAVhfC/ke/RbcsAHSSJUyCHuRxD0hntUGf
	45L4RgFF0u
X-Google-Smtp-Source: AGHT+IHVRGuyj2IpvPopVEw/V/0JRaYFv5Zr9eggn9/gr+9TUMeVNtov2/qg5jgRutFZM+D2sOlUeg==
X-Received: by 2002:a05:600c:820f:b0:46f:b42e:e365 with SMTP id 5b1f17b1804b1-4711791dce8mr93413745e9.39.1760958170945;
        Mon, 20 Oct 2025 04:02:50 -0700 (PDT)
Received: from [10.11.12.107] ([79.115.63.145])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4715520dd65sm137785635e9.15.2025.10.20.04.02.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Oct 2025 04:02:50 -0700 (PDT)
Message-ID: <de77e673-c2f2-4293-88bf-be9c6779a5dc@linaro.org>
Date: Mon, 20 Oct 2025 12:02:48 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 4/6] clk: samsung: add Exynos ACPM clock driver
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
References: <20251010-acpm-clk-v6-0-321ee8826fd4@linaro.org>
 <20251010-acpm-clk-v6-4-321ee8826fd4@linaro.org>
 <92f1c027-bacc-4537-a158-2e0890e2e8ee@kernel.org>
 <17695fcf-f33c-4246-8d5c-b2120e9e03b1@linaro.org>
 <2f8da425-63d9-4321-9cd3-976bbd29a52f@kernel.org>
 <a03cd07f-8e9f-4b02-b301-f1bbb69eb7db@linaro.org>
 <f6812244-8e8e-45b9-87b9-fe96d740a843@kernel.org>
Content-Language: en-US
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <f6812244-8e8e-45b9-87b9-fe96d740a843@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 10/20/25 10:58 AM, Krzysztof Kozlowski wrote:
> On 20/10/2025 11:19, Tudor Ambarus wrote:
>>
>>
>> On 10/20/25 9:22 AM, Krzysztof Kozlowski wrote:
>>> On 20/10/2025 09:45, Tudor Ambarus wrote:
>>>>
>>>>
>>>> On 10/20/25 7:54 AM, Krzysztof Kozlowski wrote:
>>>>>> diff --git a/drivers/clk/samsung/Kconfig b/drivers/clk/samsung/Kconfig
>>>>>> index 76a494e95027af26272e30876a87ac293bd56dfa..70a8b82a0136b4d0213d8ff95e029c52436e5c7f 100644
>>>>>> --- a/drivers/clk/samsung/Kconfig
>>>>>> +++ b/drivers/clk/samsung/Kconfig
>>>>>> @@ -95,6 +95,16 @@ config EXYNOS_CLKOUT
>>>>>>  	  status of the certains clocks from SoC, but it could also be tied to
>>>>>>  	  other devices as an input clock.
>>>>>>  
>>>>>> +config EXYNOS_ACPM_CLK
>>>>>> +	tristate "Clock driver controlled via ACPM interface"
>>>>>> +	depends on EXYNOS_ACPM_PROTOCOL || (COMPILE_TEST && !EXYNOS_ACPM_PROTOCOL)
>>>>>
>>>>> I merged the patches but I don't get why we are not enabling it by
>>>>> default, just like every other clock driver. What is so special here?
>>>>
>>>> Thanks! Are you referring to the depends on line? I needed it otherwise
>>>> on randconfigs where COMPILE_TEST=y and EXYNOS_ACPM_PROTOCOL=n I get:
>>>
>>>
>>> No. I am referring to missing default and defconfig patch.
>>>
>>
>> default m or y would force compilation of EXYNOS_ACPM_CLK and
>> EXYNOS_ACPM_PROTOCOL for all ARCH_EXYNOS, even on Exynos platforms that
>> don't use ACPM. Since ACPM is not universally required by the Exynos
>> architecture, I thought to make it opt-in (default n).
> 
> 
> Just like every clock driver. So again - how is it different?

The key difference lies in the universality of the hardware interface
across the ARCH_EXYNOS family. If EXYNOS_AUDSS_CLK_CON, EXYNOS_CLKOUT
are considered core, integral, or nearly universal features across
Exynos SoCs, then it's alright to have them by default. I can't tell how
common is ACPM across the Samsung Exynos SoCs. I know it's present on
gs{1,2)01 and e850. Heard it mentioned around some other phone but I
can't remember which. Maybe we shall set to a default m when more users
reveal themselves? I'm of course open to drop the defconfig patch and
follow up with a patch setting EXYNOS_ACPM_CLK to
"default m if ARCH_EXYNOS" if you think it's common enough.

Cheers,
ta

