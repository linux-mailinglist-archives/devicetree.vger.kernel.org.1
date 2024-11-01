Return-Path: <devicetree+bounces-118057-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2372E9B8DF4
	for <lists+devicetree@lfdr.de>; Fri,  1 Nov 2024 10:36:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 52BBB1C21A1C
	for <lists+devicetree@lfdr.de>; Fri,  1 Nov 2024 09:36:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B1FC157476;
	Fri,  1 Nov 2024 09:36:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Td7TDQqp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7872D14A098
	for <devicetree@vger.kernel.org>; Fri,  1 Nov 2024 09:36:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730453768; cv=none; b=BN4FZCi33z+OEwMPAYamwV6SJ476NEJ3hQnkvKttD/jdqEvG4F7ArO/nRnTFBggIR1M77galpt+Z8TULgu4vjHdqemcs5vfAkKfvl6G6IW95jFqvEgbft4aHF8BJYHQdpbYyM2HumBFcnWudfZobCd6dtsIgpiZ45bp4behCAMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730453768; c=relaxed/simple;
	bh=bhoZuGYJ0dpbGLsSlcpH1LRwhSF9fz4qDNP2qyAzsiY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=cHjfq25D2Yz5BUEg55ZE3GPK6PhlZjS9Vv7K+G14CLE91t0H3cDHHjrvA5w5mwzstvGQJQwFYMG11K8rXbcdKkCbWQN+hLo4sE6pGA509lCL0aGKtuEYgHNNLhRQBGQBrlJ8/zP5wF1bVWN1Oa7VuNN9MyHnuLcf81oyLmCVcls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Td7TDQqp; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-4315df7b43fso14653825e9.0
        for <devicetree@vger.kernel.org>; Fri, 01 Nov 2024 02:36:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730453765; x=1731058565; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=sdmUQcv8f+NST8Xxnn6Q4h/hVBLPTZ3zTynazKcBrXc=;
        b=Td7TDQqp1gYCyR98Y7IbledvU79Pt3SYfrEP0qPyXx8NqrGFNW2HCSmQoT2h9FeqRi
         se+R/WKWRArmmyq87BxIANm31L8AwbO67sUDCZ04xo278iYBvhtKMmlExpIOl0wOSS43
         DnQs0UqjoNe4y0jQnSaMQCRkrfGqabGfJiZQ+QWUJ/TQjfLCVgWMAlma2Z80lcaxfWHp
         ebDywJqEJvyQfdG+JdvwpU4O6itkUw+XfPe1qM0tt8GfnryqlTkEfVZfX0lMU15UPy4c
         1yl+Xt4lRaAktEYV3RqoRbQ1Vn6BL/x8VVPIsk4dSYHKcHVx7ObAZRlC1RQWFKeWU0Vv
         cpmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730453765; x=1731058565;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=sdmUQcv8f+NST8Xxnn6Q4h/hVBLPTZ3zTynazKcBrXc=;
        b=m0AgTvfd6518rMEhjSJren0yOEKN/l5ElQd8Z15aRy7tb73E6+d5ghixELPlXJ5pAw
         iin9kxQHkd5b8+P5fNpUaTTf+t140Z5atd8rhkBpBrMGQ2ExUQTbuTq2vqCuhvN43qrK
         KMEqkIsV4qqGBn14Ge7ABRMVWDSvM02R0u9BiyqnyRyfwR9S81kUDCzuArqBv69SN5X8
         SxUpEfA8xtt4gcn9BuTerKXT1uXmwe2L/iyjCKXZXdWPCtsF1j1w4GRBueF2jldRe0z4
         FfJTTkuJ6sTb3G/I953p4omiT+jEv8ZNWHimKyqAlGvksURzirCLlxBf1O2YI7nSCkJe
         13KQ==
X-Forwarded-Encrypted: i=1; AJvYcCXo+wYrjWY9rnCQ0WUgjhMVnWdyNX1l0qT6jxzqaJ2WItXycm0s1C/Pa9Cuu8/Zwr16por/x1Ws9pv/@vger.kernel.org
X-Gm-Message-State: AOJu0YxIWrxhmtB/Cz5cgd5GZ1UbqQbgVfeXmYaRcMZxmxUxEdT3ZbjA
	af4rr/qAgFZlk6fNnB4XicPdlAv4M4rDvBpTyP8Gx72iTUS6D95pAXLcL14xDyA=
X-Google-Smtp-Source: AGHT+IHidUyaeAtvp6cpUVTv7uscb3XBO2+MSJeqz6vskBADg7hj+Htc3WyMOhjhFbPB3OgybkBWjg==
X-Received: by 2002:a05:600c:4f15:b0:430:5654:45d0 with SMTP id 5b1f17b1804b1-4319acb104dmr198131765e9.14.1730453764877;
        Fri, 01 Nov 2024 02:36:04 -0700 (PDT)
Received: from [192.168.0.40] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-431bd9ca818sm84122375e9.40.2024.11.01.02.36.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Nov 2024 02:36:04 -0700 (PDT)
Message-ID: <fde8fd81-f9f5-4885-8dc1-5ccb115b856b@linaro.org>
Date: Fri, 1 Nov 2024 09:36:03 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 2/5] dt-bindings: media: camss: Add qcom,sdm670-camss
To: Krzysztof Kozlowski <krzk@kernel.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Cc: Richard Acayan <mailingradian@gmail.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>,
 Todor Tomov <todor.too@gmail.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>,
 linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-media@vger.kernel.org
References: <20241011023724.614584-7-mailingradian@gmail.com>
 <20241011023724.614584-9-mailingradian@gmail.com>
 <785c82d5-549d-454b-86bf-a00a39e6f521@linaro.org>
 <jcqgsgp4ivbokn545sy2rvfllm3vnygfpbufxagotuicacfmgd@v2hlnohlwzdf>
 <b054116e-c6a4-48c3-8162-571d653788a4@linaro.org>
 <6ce1f20b-1efb-408f-ac28-e8c35162643a@kernel.org>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <6ce1f20b-1efb-408f-ac28-e8c35162643a@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 01/11/2024 09:17, Krzysztof Kozlowski wrote:
> On 31/10/2024 16:42, Bryan O'Donoghue wrote:
>> On 11/10/2024 15:29, Krzysztof Kozlowski wrote:
>>> How do you imagine writing drivers and request items by order (not by
>>> name) if the order is different in each flavor?
>>
>> I don't think I'd be much in favour of relying on declaration order in
>> the dts, favouring names to find resources instead, tbh.
>>
>> The 8250 has regs that sort by address and name in the same order. For
>> 8280xp we preferred sort by address and you're right the interrupt
>> sorting isn't consistent.
>>
>> However the latest applied dts for CAMSS is sort by address/irq not sort
>> by reg-name irq-name.
>>
>> Unless its a NAK from yourself and Rob, that would certainly be my
>> preference for any _new_ additions subsequent.
> 
> It's not a NAK as long you keep the same order in new bindings, which I
> think it is not possible. I repeat myself: there is no rule/style that
> list should be ordered by values, but there is a rule that all devices
> from the same family should have the same order of items in the list. I
> don't think it is achievable with your approach - sorting by value.

Grand.

I'm happy enough to sort by IP alpha TBH.

---
bod

