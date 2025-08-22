Return-Path: <devicetree+bounces-208012-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 61FAAB31567
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 12:29:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6162F16B06E
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 10:27:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8DCE12EB86B;
	Fri, 22 Aug 2025 10:27:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="I/IIx3pr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9FCD62EA16D
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 10:27:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755858435; cv=none; b=R6aNGNYYsJgXHIzuAIw8YvkLcC777CP7Yl4T59SX2DVPTK0USqW9alDqZ9WgpY9j+jHNTnycCSTrzDSikusmgdbRu0F+Tsk+ChFBIOhxpGqbZKFqLFUdZC1J2QsjEyKDC0bueQUMCxTgZHdZdt+5Alt8TB2dvLTRR48elJOlJm4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755858435; c=relaxed/simple;
	bh=DKiNN1RMdn2Gn2M4I96hlwsVSaQvym/NqklBxGqQSGc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=dby4Oi5Earuhx2cdA1BaoBxqnNNoqKQiz9ZekNGhMQd0waDCXXGfilSZicLLgDBvKrYzJhoCO3BvsUa5Ev+FsmUofJb1bFFRWxbA465LI0I4yvvrBnbRaomoPFhIBwEj3s6/GNjjQMmWnUlr3wbN1MKOA8C9OKpmdAi4E5DhKnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=I/IIx3pr; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-afcb731caaaso285436066b.0
        for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 03:27:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755858432; x=1756463232; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cd5s72x9mZV/+O9tEQqldJerG6gz6k4UPw65u8py8ZY=;
        b=I/IIx3prkNnuzMy6JBsKrt51brhDi4/t+bHBD5i5Sv9heUwQXkMIpVqe3qNVKj81g5
         OJs5QZS6wIJqcgSwdno2W/6regDlqUkqIX/krg4e9tfYfqt5xSMgvT2QWlCLN1iA32hC
         DdtBzxsBg+rDyTCuxu5uBZY8LDz+XH0We8qAo0tOtjrificJ2GM6C+etqH3MQaq779Dq
         RKc63E0Zwu7qImRpFb13gPYqtf5xktrNQGR0UABmZf0Cf0O012eyskgrZ2/BSlQ2jSTZ
         sR9Xkhme6UILSuXSTwRHoC07Wr6tDRVvoeyOs/AW7mA4RADcDv3F861lVtzsjmYQyFQQ
         B1nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755858432; x=1756463232;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cd5s72x9mZV/+O9tEQqldJerG6gz6k4UPw65u8py8ZY=;
        b=tLyM8K4x2O1fRR7Cq3Hw8ZCL8vHNyIxpnsN+1c8TZhfhIWrHdv0TRA7x5yBBTBkYg/
         8/O3LtdlBXbMz1NvgTCIdjllC4nkl+E5DGh/PWcmlSwiWHkLg7U+V/40IOUQJJc+V8QR
         vgDXDzkVps/2YwT7wxrFPXnMDKSM23N6+o18RV/tNxJBZABKyW7Lqy0dzASsL81DfS7c
         vypweenrsl6YPgr/Drcb9O7db9ZgDdow/zbL8uNmxSjgSCwJaV4OW1QCUVH2majxZvCY
         UFLYUZErsQ1d/r1t/9pUTLxJClATL+uMzVBJSjim4FnpFi1no/UBdmUZUXkPsbeMCt4q
         xNQw==
X-Forwarded-Encrypted: i=1; AJvYcCWpBVD7etyWFKBfrhd5NBAtfjdQ3T+G6Z+SPWnX/xHo8bk9Cv7o5cuTGBMW8qCH/0aDUM/K9muWTiiS@vger.kernel.org
X-Gm-Message-State: AOJu0Yy9W3VRrCAUzW2eWfh9JbVNilDJuB3ZJYY238LT5K0H0U9TeCLT
	fviU4QYYEu+iODgRLqIE5W8lK9Y3CWSWRwzt39SJxjg/a6wtD4acRYkjIvGAPBDHE14=
X-Gm-Gg: ASbGncvwWEJQn+mEsqEV4N5zb0sT72Qnk9Ke05ku5pZvh/p78k0km1P+Ogl1ZrLPpLw
	h7h5ITIu/SvPdYTxFZo6vsWYruIB+XfXWTRoL4ojkwO81xeTIvpJ+gAYRm9UHCrnmYoEMGgeJRz
	+ouzSXx/yghbB/+LMHDg0fmnRjz+bp7fQukwy0z1rF5fdg5eXnHjaipYUonf+CTaBPfgYQd2P9Y
	QdM45ABb2xj2gm7QIx7fpZfrTT1RYa5/jyaIRGAZ1AKQXA9w+yMrezEg9MEsJSEXwAt2zqt7UVY
	mc6mybSYY4yii0dS/8IeRawMovfzjMIYe3SDS7tZp/6NyhHkRhV9l6q6W5vqAG2nFS/YGsP6Yy6
	n5doDCWOHLaJ9aAZKFUz16usqGZaGdHK5
X-Google-Smtp-Source: AGHT+IEjRd6Tx5sKZi6OWN0Ddp+BLYTOG0lrQ3ub++Nybf0iOaCMKeFsTfA36+kF67hMQ9sg6CmMMA==
X-Received: by 2002:a17:907:3f11:b0:aec:76c6:6ef6 with SMTP id a640c23a62f3a-afe29605d34mr191833466b.50.1755858431819;
        Fri, 22 Aug 2025 03:27:11 -0700 (PDT)
Received: from [172.20.10.10] ([213.233.104.29])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-afded4ca67fsm585912066b.92.2025.08.22.03.27.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Aug 2025 03:27:11 -0700 (PDT)
Message-ID: <493a072e-352c-4e96-b58b-04b56fa56dc0@linaro.org>
Date: Fri, 22 Aug 2025 11:27:09 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] clk: samsung: add Exynos ACPM clock driver
To: Brian Masney <bmasney@redhat.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Peter Griffin
 <peter.griffin@linaro.org>, =?UTF-8?Q?Andr=C3=A9_Draszik?=
 <andre.draszik@linaro.org>, Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Alim Akhtar <alim.akhtar@samsung.com>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Chanwoo Choi <cw00.choi@samsung.com>, linux-kernel@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 willmcvicker@google.com, kernel-team@android.com
References: <20250819-acpm-clk-v1-0-6bbd97474671@linaro.org>
 <20250819-acpm-clk-v1-3-6bbd97474671@linaro.org> <aKdmurrT1pFtLSI8@x1>
 <720799b1-04ce-46da-b643-1adbdfc661e6@linaro.org> <aKhFOHFGKPYXgIri@x1>
Content-Language: en-US
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <aKhFOHFGKPYXgIri@x1>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 8/22/25 11:23 AM, Brian Masney wrote:
> Hi Tudor,
> 
> On Fri, Aug 22, 2025 at 09:14:03AM +0100, Tudor Ambarus wrote:
>> On 8/21/25 7:34 PM, Brian Masney wrote:
>>> On Tue, Aug 19, 2025 at 11:45:38AM +0000, Tudor Ambarus wrote:
>>>> +static long acpm_clk_round_rate(struct clk_hw *hw, unsigned long rate,
>>>> +				unsigned long *parent_rate)
>>>> +{
>>>> +	/*
>>>> +	 * We can't figure out what rate it will be, so just return the
>>>> +	 * rate back to the caller. acpm_clk_recalc_rate() will be called
>>>> +	 * after the rate is set and we'll know what rate the clock is
>>>> +	 * running at then.
>>>> +	 */
>>>> +	return rate;
>>>> +}
>>>
>>> ...
>>>
>>>> +
>>>> +static const struct clk_ops acpm_clk_ops = {
>>>> +	.recalc_rate = acpm_clk_recalc_rate,
>>>> +	.round_rate = acpm_clk_round_rate,
>>>> +	.set_rate = acpm_clk_set_rate,
>>>> +};
>>>
>>> The round_rate clk op is deprecated. Please convert this over to use
>>> determine_rate.
>>
>> I can do that, sure. Shall I also update the kdoc for round_rate(), mark it
>> as deprecated and add your Suggested-by tag? It would help other newcomers.
> 
> I am working to remove round_rate from the clk core and the various

ah, great. Thanks for the pointer!

> drivers. Your driver just needs to be updated similar to this:
> 
> https://lore.kernel.org/all/20250710-clk-imx-round-rate-v1-10-5726f98e6d8d@redhat.com/
> 
> Brian
> 


