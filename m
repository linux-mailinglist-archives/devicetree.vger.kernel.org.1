Return-Path: <devicetree+bounces-226508-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 035FABD9475
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 14:12:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EFC37189CC04
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 12:12:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 59238312829;
	Tue, 14 Oct 2025 12:12:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="nGoHvT9i"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 768DE3126C7
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 12:12:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760443926; cv=none; b=Fc/IVh0xGq7m8xipd1vA4zIYsUnAuWJG5ozRQFaoqWmaGIoC9moW8CQvjYFnRyMVlTb7uUBEzITHroPmx6kVV52kKx6MHiRtDe9YqI4SM+3/F9CGIaa+JpVEwi/GmTJ2e/s6kMVhQwW5FjMHb0GlAAd4yrqs2hwxRgspn/RXoR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760443926; c=relaxed/simple;
	bh=vv6SCZXUdjxEguAATuwGq3R/PnOOppUOkjoieyZK+QQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BJ+nizC0kOUDbdf7G/C3Xguy9ATpYiknw33gLJfKLBiwAwmFaS54TXnS5cl4zwKd7zuEV7qp+tR6gLucVE3INnxVsxvT2Kgu7h6b4n8l3dBOM0x6oLCg03/eGXs1v5NoYoIFEEQq34sbLPYVgoJltPiYvDTWdpj5d1eGGVfWT5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=nGoHvT9i; arc=none smtp.client-ip=209.85.208.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-362acd22c78so44286421fa.2
        for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 05:12:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760443919; x=1761048719; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=19UY8Ondjgi9nEDc4X9WWhtcIr4QTybVkR2WGWv5OR0=;
        b=nGoHvT9imkjXZP7O1ZAgzncMDDkL/jFwW2yzfWA4NYcYhYRp71DfzoOyUsa0wn8SyE
         a58ks1YfrrUw3k+vP6yAWeeWlT16lPYRxRV14nQ50VIh1yJScO45ivD2fS/z02tv4XpW
         7VgKLU8p+c4+m9FUY9dbOE1nTZZNd+7Hc1bdMlBUyTi+C7Kb5J70X4T7Vfy0UI/EcXHg
         CA0mt+MBaB6zixHfnk6NEaxqsEkIkvs/y/g2xIYeJ2g3kVqwNZdWq+NS0U1hh91t0PDD
         23cFquPMzol1o/8a7CVYGbslIUM1elKwdlIhtL17DynnP7VC013CwwCHOZg3zrRYnXPw
         r5TQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760443919; x=1761048719;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=19UY8Ondjgi9nEDc4X9WWhtcIr4QTybVkR2WGWv5OR0=;
        b=OgHcMyghQ8LreSgoWVceWdMT3wWcQCU12Py12diFydAXGMWzft2gnffabYT8d6Ogmc
         VDeoWBnGtTJn54YyGeel54n7VGGDcx+XPwFOwiHbR9mBA1UVCADYK4a+JuR+X1u814Qj
         3tgDcgTnY8ugyI/1Bt1PCCapkWczbkIt2WdS6/z4/bZ20aC/Imjf2LKI5k9dGFMNxjhe
         LYh8toougMO62z7cUf54TVdoRPAyFlXL77O9+TE6I9z6m/AIJNQ38AXR0zgDZtHnX26U
         ZLEFuufRbTnOB8+0I284OVT8DYTAdzhg/nzabI5gEcGmIV9lpYMpTl9q+DLXlVMrdK77
         FxTQ==
X-Forwarded-Encrypted: i=1; AJvYcCUL1cP/D596OOgo+K9mM/67IOoZx8+h7okMDGF7Ibcs6qxE+noDQqYX0cleKCZBse7SyXeCXAD2rtXx@vger.kernel.org
X-Gm-Message-State: AOJu0YwwvTJwVGMsWDLSfXQXs1WlngDZNAiVs2ZXgKWBwSY7uUjDyJc5
	pOW3ej3ebubSle3eXplbKeZ5I8KZ61T0Jv1uu47i7SUXHzN6rmo14sF7
X-Gm-Gg: ASbGncuvRnCjwPdjrQVOaAnd6QZWY9uqXr0tNbxoNUm3VcZgT7wzujCGTwOh/uvQMS5
	n1czg6fJzT9v9ONV59cUSuKuCl5WoayyYJ2S1eDk25fyovLfOk2gWY539nniqlb8aD+Q/RLHbex
	p8usOqVY+lquANNRLZkD445KOkkcowjDTuSyZ5/3VTB+lCCeCQA2b9oNlomeVGCgjAiJHZxbyMb
	xLja840LXGAVYTnPMdXckcviBkFbouSjIVu3srpf3oEVCOg5lYAypJmdQMMOeEg5OHo7nnPL73l
	ChMDXgeHdMPxoIF/zxa4VUXjtuAJVUppxcKAAvAbYChbhtHHITe2aPDOkW5u2cfVrlQjsRvVoRa
	Oc9K+M9FHoaLYEl0dc71s61KirLPDRTQFXLjQsWpy6Nvp8Ged3jrWHBfjcEAwQmSfsMRqSOf6gX
	xAVRCyPu3jfADjWtdw7cOCNRLdr950IgBN4A==
X-Google-Smtp-Source: AGHT+IGW8zh9AOgyW7nkUtmNQqz6PJovnO6f6RGpy2I05ufukYy7iqHPI6QQtLY8F4LP884y1HCvzg==
X-Received: by 2002:a2e:be1d:0:b0:373:a537:6a00 with SMTP id 38308e7fff4ca-37609ea4554mr56777981fa.30.1760443919151;
        Tue, 14 Oct 2025 05:11:59 -0700 (PDT)
Received: from ?IPV6:2a10:a5c0:800d:dd00:8fdf:935a:2c85:d703? ([2a10:a5c0:800d:dd00:8fdf:935a:2c85:d703])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3762ea3b31bsm39258931fa.47.2025.10.14.05.11.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Oct 2025 05:11:57 -0700 (PDT)
Message-ID: <cac4222e-1f66-40e1-abf8-7d4661d43bbf@gmail.com>
Date: Tue, 14 Oct 2025 15:11:56 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH 04/13] dt-bindings: mfd: ROHM BD72720
To: Linus Walleij <linus.walleij@linaro.org>
Cc: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>,
 Lee Jones <lee@kernel.org>, Pavel Machek <pavel@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Sebastian Reichel <sre@kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Bartosz Golaszewski <brgl@bgdev.pl>, Andreas Kemnade <andreas@kemnade.info>,
 linux-leds@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-gpio@vger.kernel.org
References: <cover.1759824376.git.mazziesaccount@gmail.com>
 <fe1f4a0947c864496f4eeec8eef806afcf6094a4.1759824376.git.mazziesaccount@gmail.com>
 <CACRpkdZnoMvYBXN7b6dw+uPs=f1WXr9wX-0VF1c1qd-rq+17LQ@mail.gmail.com>
Content-Language: en-US, en-AU, en-GB, en-BW
From: Matti Vaittinen <mazziesaccount@gmail.com>
In-Reply-To: <CACRpkdZnoMvYBXN7b6dw+uPs=f1WXr9wX-0VF1c1qd-rq+17LQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 13/10/2025 15:58, Linus Walleij wrote:
> Hi Matti,
> 
> thanks for your patch!

Thank You for taking the time to review of this RFC!

> On Tue, Oct 7, 2025 at 10:33 AM Matti Vaittinen
> <mazziesaccount@gmail.com> wrote:
> 
>> +  rohm,pin-dvs0:
>> +    $ref: /schemas/types.yaml#/definitions/string
>> +    description:
>> +      BD72720 has 4 different OTP options to determine the use of dvs0-pin.
>> +      OTP0 - regulator RUN state control.
>> +      OTP1 - GPI.
>> +      OTP2 - GPO.
>> +      OTP3 - Power sequencer output.
>> +      This property specifies the use of the pin.
>> +    enum:
>> +      - dvs-input
>> +      - gpi
>> +      - gpo
>> +
>> +  rohm,pin-dvs1:
>> +    $ref: /schemas/types.yaml#/definitions/string
>> +    description:
>> +      see rohm,pin-dvs0
>> +    enum:
>> +      - dvs-input
>> +      - gpi
>> +      - gpo
>> +
>> +  rohm,pin-exten0:
>> +    $ref: /schemas/types.yaml#/definitions/string
>> +    description: BD72720 has an OTP option to use exten0-pin for different
>> +      purposes. Set this property accrdingly.
> 
> accordingly?
> 
>> +    const: gpo
>> +
>> +  rohm,pin-exten1:
>> +    $ref: /schemas/types.yaml#/definitions/string
>> +    description: BD72720 has an OTP option to use exten1-pin for different
>> +      purposes. Set this property accrdingly.
> 
> accordingly?
> 
>> +    const: gpo
>> +
>> +  rohm,pin-fault_b:
>> +    $ref: /schemas/types.yaml#/definitions/string
>> +    description: BD72720 has an OTP option to use fault_b-pin for different
>> +      purposes. Set this property accrdingly.
> 
> accordingly?

Gah. Well spotted, thanks!

> 
>> +    const: gpo
> 
> These are a bit idiomatic, not using the actual framework for such
> things (pin control) BUT: they are on the other hand crystal
> clear for an integrator working with this device tree, and only
> four pins so why over-engineer it. I am fine
> with them if the DT people are.

I kind of like to emphasize the fact that this is not really a pin-mux 
in a traditional sense. We can't change the routing after OTP is 
written. As such, it more resembles "wiring" of the signal inside the 
PMIC, and this property is not a control but tells us how the signal is 
wired. But yeah, let's see what others think of it.

Yours,
	-- Matti

