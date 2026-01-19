Return-Path: <devicetree+bounces-256803-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A603ED3A59F
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 11:49:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7EB0E30C4334
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 10:43:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 655CC30F813;
	Mon, 19 Jan 2026 10:43:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ka0+5FwY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CB4330E0F4
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 10:43:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768819436; cv=none; b=qiOXlJAUJIM5jeSCbVrFPoMCMP2OgxHt72ru7BRBgl+/zoNclRUpTgbZhmUoaUae3oZ56y5w1IyxjHh1MN4TX2FtVNNJErEeZft2woRX+tESycB2/8HsONycJkCm2s93Kn1+M5zsuM8Z+WlBBOb8bcV5FqWFH4eI9m7wQpctwIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768819436; c=relaxed/simple;
	bh=JDp8XZrS8np8tDMV49tHpzOCjc6Fhjm7F8tLG7gTiYs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=u2k0fCrwkt9sJP2MwsEJphGGr1GG++p6i08ymOQNQYent9PHEf8+LZ5tzD+Is2j1n1cFLLUtGvRskZuKUKnXaxPARkQfjwQyEI4jYsYCNHMv4m6tcsX0XLOO8ELhUIQ3zhd/hGTKoqoRC1OVFs1idhdBARx45jlwiVOSC8XObss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ka0+5FwY; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-b8718187eb6so632757966b.2
        for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 02:43:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768819433; x=1769424233; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rxI6gJrq2FL8Px7oECSMbsgNnQ9Jnllpf1H+z4cLrRY=;
        b=ka0+5FwYzVv8SqdaZzLFiQMPl0p6tqbExYk3AfKBTkIJ9K5aLmOaTkCE6xZi0kLCMy
         QaQULSZ0rulFUexPuUqVcKG3arBQMYjwP64z3KgO74bSd237cez0EYPkrexu6JGOXY1q
         58NRd3c+SAiTaUUMqGqsnyoBb671DXjVyXL7YsiGsP9qNHIyMNgwCI+7NF6mQ+ngePRm
         +eJTuARVUROn+g/P0+2kvoJ+hxZ8KBUOnvQJywPOR+Lfy0oTT72KNnZoalZvComKY2QZ
         4NdoO02yHv+/5gW8ldZEDI7u0R9IgI8RHdHMVp4aIvTav3qg8iIh12DquJZvxbWOyQax
         hUOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768819433; x=1769424233;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rxI6gJrq2FL8Px7oECSMbsgNnQ9Jnllpf1H+z4cLrRY=;
        b=KBlPSdnlrw6YsrjQhrRYudbTdS2Fh53MqxwXHvoM3E1dCBLx3gltp75SPHbwI71AyL
         M2Wsk9Wl9IjAIvecnRvliEjTjOBiARAVaVhrC6UYBTnI0enX/ibN+AGtOOhNEEfh3WVY
         xPTV8cNcEF+oH5UzcLX94y8bCLteNeJ//gl7pXGhrE5VyEFOF42eX7W3O5hd3XnUM4qK
         CPIoz4xSQXP+KBLuWyMNNR/zdLNV87hcQ7f9DxwDiv/6VL2YhhYHbrHsg6D7iCoiGm+H
         1E9oEnA9slXE7V7bAlL984+uy5WGAMd3+Pqg6ZzYBQ4qv826KNstZGXSTDI0LPeIAP6I
         MbAQ==
X-Forwarded-Encrypted: i=1; AJvYcCUZRUtYLQcj0uQf/5c16Ho5Av9Emcrk7tS0R1bJ/wun5pJHtu6PoYSMWudy982vG82olksIyI7kFK73@vger.kernel.org
X-Gm-Message-State: AOJu0YwUQmkp3mY5xDKC4f7AQUmKEvQrS+yF2oAk/CAPSy39fD4LTaAs
	maEtnOqpNjUPArPoPr39VnWdBdXvYHswAhheyj/nAXQTntV6yk0gicLm
X-Gm-Gg: AY/fxX5jGNUUIyNk0bqvgOXUI/a5KpNqMkGTRYRhJhPvtjnnx/voW2KMdqiP12xT0E8
	1WJH+3tk7M4vffyCK1gtUullIQMVA754rS4ec0lq7oXFstevLA2npe/oeWO3gLh4Tenh2k5WptI
	rkOy5Fs2DROUhBF3vHVoCwuPlO/C+vIhp4aBCwP7k4713CPeOfLZ+GKgVMO3oZfqwuUBXc61Y0B
	OcHaa6OZBkvApBXZxK53df0o9m3d/1Nh9wCKLQ2I3uFtAQm7RRwksnKu5pO2GKQvmj33mbXJTQH
	Thqk27cYcRGR+ANfOJzpyBGpnWGXUWDgLv1nE99cNT2RlrTd62g3nYS1xFU1evdmTuA31oVP9r3
	6oH5GUDriYInZaQUGerLemy0icVzRqxRcNvkCdPPsS4czN6L6Yhpe8iyt8jtnhNl91xNDJMywme
	4LIv3IPcd43n80nyd3ri84tvfH5kj7F3A9kAITKzbfCH77qYsBCcN+DPc4HKScCKOy5SzYttFke
	sEhPZUeLNhG1Gx8rTGr8ZrnYdXLukULMqJZFluemm9G2fBs8A==
X-Received: by 2002:a17:907:930b:b0:b7d:3728:7d11 with SMTP id a640c23a62f3a-b879327f46fmr849354566b.50.1768819432497;
        Mon, 19 Jan 2026 02:43:52 -0800 (PST)
Received: from ?IPV6:2a01:5a8:51e:a2d5:41ab:52ed:e3e9:4896? ([2a01:5a8:51e:a2d5:41ab:52ed:e3e9:4896])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b879528dcc7sm1076503966b.29.2026.01.19.02.43.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Jan 2026 02:43:52 -0800 (PST)
Message-ID: <ce6d0f29-6ce0-4c31-af9a-522335b0979b@gmail.com>
Date: Mon, 19 Jan 2026 12:43:50 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/5] dt-bindings: clock: add exynos8890 SoC
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Chanwoo Choi <cw00.choi@samsung.com>, Alim Akhtar <alim.akhtar@samsung.com>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-samsung-soc@vger.kernel.org,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20251017161334.1295955-1-ivo.ivanov.ivanov1@gmail.com>
 <20251017161334.1295955-2-ivo.ivanov.ivanov1@gmail.com>
 <20251022-affable-arrogant-coucal-3f7fbc@kuoka>
Content-Language: en-US
From: Ivaylo Ivanov Ivanov <ivo.ivanov.ivanov1@gmail.com>
In-Reply-To: <20251022-affable-arrogant-coucal-3f7fbc@kuoka>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 22.10.25 10:44, Krzysztof Kozlowski wrote:
> On Fri, Oct 17, 2025 at 07:13:29PM +0300, Ivaylo Ivanov wrote:
>> +  - if:
>> +      properties:
>> +        compatible:
>> +          contains:
>> +            const: samsung,exynos8890-cmu-aud
>> +
>> +    then:
>> +      properties:
>> +        clocks:
>> +          items:
>> +            - description: External reference clock (76.8 MHz)
>> +            - description: CMU_AUD PLL clock (from CMU_TOP)
>> +
>> +        clock-names:
>> +          items:
>> +            - const: oscclk
>> +            - const: pll
>> +
>> +  - if:
>> +      properties:
>> +        compatible:
>> +          contains:
>> +            const: samsung,exynos8890-cmu-bus0
>> +
>> +    then:
>> +      properties:
>> +        clocks:
>> +          items:
>> +            - description: External reference clock (76.8 MHz)
>> +            - description: CMU_BUS0 ACLK 528MHz clock (from CMU_TOP)
>> +            - description: CMU_BUS0 ACLK 200MHz clock (from CMU_TOP)
>> +            - description: CMU_BUS0 PCLK 132MHz clock (from CMU_TOP)
>> +
>> +        clock-names:
>> +          items:
>> +            - const: oscclk
>> +            - const: "528"
>> +            - const: "200"
>> +            - const: "132"
> 
> We do not want the frequency here, for sure not frequency alone. There
> is no such code/syntax. Really.  Please do not invent your own style.
> That's just pclk. You describe here the logical name of this clock
> input.
> 
> ACLK is AXI bus clock, so if this block receives only one ACLK, then
> this is just "axi" or "bus". Recently we were calling this "bus".
> 
> Same in other places. If two AXI bus clocks come in, they could be named
> bus0 and bus1, or in this case - because these are sources for
> generating further ACLKs - bus_528 and bus_200, to indicate that one
> will be for AXI bus clocked 528 MHz and other for 200 MHz.
> 
> Please wait for some other opinions, because same rule I would like to
> apply to ExynosAuto, Artpec and Google GS.
> 
> @Raghav Sharma, @Alim Akhtar, @Sam Protsenko, @Peter Griffin, @André
> Draszik  - share your thoughs please?
> 
> And to clarify in simple terms for others or for the future:
> 1. HCLK would be the AHB bus, so also bus. Both ACLK and HCLK are for
> memory accesses.
> 2. PCLK is APB bus, for registers.
> 3. SCLK is for main operation of the block (called special clock, but no
> clue what is so special about it).
> 

So the consensus is to do something like this..

- const: oscclk
    - const: bus_528
    - const: bus_200
    - const: pclk

.., right?

Mentioned people haven't replied. I'm asking because I think it'd be more
straightforward to go with just aclk_528 pclk_132 sclk_... or axi_528 apb_132.

What do you think?

Best regards,
Ivaylo

>> +
>> +  - if:
>> +      properties:
>> +        compatible:
>> +          contains:
>> +            const: samsung,exynos8890-cmu-bus1
>> +

...

> Best regards,
> Krzysztof
> 


