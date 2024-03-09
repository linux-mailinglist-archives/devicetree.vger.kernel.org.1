Return-Path: <devicetree+bounces-49581-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4692F8770C8
	for <lists+devicetree@lfdr.de>; Sat,  9 Mar 2024 12:53:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B15E61F214B0
	for <lists+devicetree@lfdr.de>; Sat,  9 Mar 2024 11:53:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 89CC03771C;
	Sat,  9 Mar 2024 11:53:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="eK5uMM9e"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A28FF1E86E
	for <devicetree@vger.kernel.org>; Sat,  9 Mar 2024 11:53:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709985187; cv=none; b=euIPh9GoiTcRNHK4bTV1iZyaMDWmfMTcRWCQ7RU8+wC8D0T4Yn575lKnx/UD5lSMGflEj/PW3mi5+6E+tBaMclrCHQK763d+s6NEvXA+ixx5hg+hVQ3XoWPU1OKc5esiLRS6M5dZ9WN6ZAPV55Azx5wijD8nYoGkbngyReWOWR0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709985187; c=relaxed/simple;
	bh=mcj6cpYMM6kpj+JT/RoZ9tX25F7de3Q3UkHRFszZjN0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=UJuTugT/k1RKF2LZpgwZE+ZM5Rbx9hVGLsn4fsPvTaKICb7ji/lJguehDJu5ukp1f1CHmLe8qpPBlGpfpFPVQIe3N0GHKr9KNz2Z4Bkja6M6os2FYRqsGzs15/7Q+z+kbzDb8T5HyIRDsiXwwgnzFlToRjE2zuz+czICEMmIYL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=eK5uMM9e; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-33e82c720f8so501362f8f.3
        for <devicetree@vger.kernel.org>; Sat, 09 Mar 2024 03:53:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709985184; x=1710589984; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=N/g0ylk5OXw5DuRDSC0jhgh8ENyy6UvA2w58cji7f7k=;
        b=eK5uMM9epJv+oF6muL2i3gBnPwrwcfnxUI7NpJo3p2NCkiy4l1NGN/vruaLQfLp3HE
         ouGsTANGihVMZ/X4AgZiXqUKoX96bdSr7vcT6lXOo33WDL41FfAbva3ijkGGieatHRru
         V3ZROyw+Hz7yKZ1mRSQzddTjHUaEv6CX73VXC9p8ZAJf8elnqrl7rj0OlceEcazuWykA
         kPGXn9XcWlfTSHoOWG0wivYnDHwCjL9g4chE7zhRfpid+Lb0qtTlahjT5IxJO7t3K9qO
         7vxwfbiz56TCPM8QEndial0IaLxYqKnclONXu+rCvle3UuNnJTROikpVb8LH9sjPVUbA
         ulSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709985184; x=1710589984;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=N/g0ylk5OXw5DuRDSC0jhgh8ENyy6UvA2w58cji7f7k=;
        b=EYF/E2ciS+PPoMVvPhId+jbrEh8TNDt2sg8z0XA00TZKE/mfKTU7ZKoSU4UUHlEd44
         /NzKHv6RkD3a2XaApj+cybJ4tffquqpNFHCepm9MT5IEwuunLFcvVdK1LAnsSbqbp6+G
         wMOxfjnrvXFDDsU7VlepR/enlTP6eBdackQojW/9un3k4qmXYIg+ify7S6Z63lNX+qPE
         RJlIJyUJWnGbG5ynXV+D2DZ5zVk0m2/mQW4f3vUwyZev24QHpGsldBIB4VqgGsq+E439
         hfi/xkOMSljHhJ8jE00sv0Y6lUpR6j1eHSfyommPsKkiZmGPnp2NpXP8xEWxmHbnfM3q
         S9yA==
X-Forwarded-Encrypted: i=1; AJvYcCUcD0aMWN/icKEgB/dWqzpPgxZkyTjMW0Y7AgqbcfjT6BgEScbCFsVkBVXSR9oznoZmqFDUzx65npnomdGru935u6S/5y/6o+VlEQ==
X-Gm-Message-State: AOJu0Yz97J1Hsdz3rzQrfMRzDfCd2tWSIAWCRKAQxPrdclxQROd6FCyb
	5zfyPZuzZRkxivpdMR7v6jCbcDOfBxneNFoBmjBPCTUlt9f5H2eAKWdSQNpOffU=
X-Google-Smtp-Source: AGHT+IEkrG+sQciYU+nX3qFZsHXjs9Iwb9k+xeRcbKkrN9JkycTcr5mtjiUouh+/DjcEorUTmh6AvQ==
X-Received: by 2002:adf:e6cf:0:b0:33d:29c1:c28c with SMTP id y15-20020adfe6cf000000b0033d29c1c28cmr1234225wrm.66.1709985183886;
        Sat, 09 Mar 2024 03:53:03 -0800 (PST)
Received: from [192.168.1.20] ([178.197.222.97])
        by smtp.gmail.com with ESMTPSA id m7-20020a5d4a07000000b0033e5c54d0d9sm1692690wrq.38.2024.03.09.03.53.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 09 Mar 2024 03:53:03 -0800 (PST)
Message-ID: <cb220c6f-086c-4995-b2e2-bce78b9a4b04@linaro.org>
Date: Sat, 9 Mar 2024 12:53:02 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] dt-bindings: backlight: Add Texas Instruments
 LM3509
Content-Language: en-US
To: Patrick Gansterer <paroga@paroga.com>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org
Cc: Lee Jones <lee@kernel.org>, Daniel Thompson <daniel.thompson@linaro.org>,
 Jingoo Han <jingoohan1@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
References: <20240308215617.1729664-1-paroga@paroga.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240308215617.1729664-1-paroga@paroga.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 08/03/2024 22:50, Patrick Gansterer wrote:
> Add Device Tree bindings for Texas Instruments LM3509 - a
> High Efficiency Boost for White LED's and/or OLED Displays
> 
> Signed-off-by: Patrick Gansterer <paroga@paroga.com>

Thank you for your patch. There is something to discuss/improve.


> +  compatible:
> +    const: ti,lm3509
> +
> +  reg:
> +    maxItems: 1
> +
> +  "#address-cells":
> +    const: 1
> +
> +  "#size-cells":
> +    const: 0
> +
> +  reset-gpios:
> +    maxItems: 1
> +
> +  ti,brightness-rate-of-change-us:
> +    description: Brightness Rate of Change in microseconds.
> +    enum: [51, 13000, 26000, 52000]
> +
> +  ti,oled-mode:
> +    description: Enable OLED mode.
> +    type: boolean
> +
> +required:

required: goes after all properties.

> +  - compatible
> +  - reg
> +
> +patternProperties:
> +  "^led@[01]$":
> +    type: object
> +    description: Properties for a string of connected LEDs.

Are you sure this is a string of LEDs? How does a string/tape work with
a backlight, I mean physically? How could it look like?

> +
> +    allOf:
> +      - $ref: common.yaml#
> +
> +    properties:
> +      reg:
> +        description:
> +          The control register that is used to program the two current sinks.
> +          The LM3509 has two registers (BMAIN and BSUB) and are represented
> +          as 0 or 1 in this property. The two current sinks can be controlled
> +          independently with both registers, or register BMAIN can be
> +          configured to control both sinks with the led-sources property.
> +        minimum: 0
> +        maximum: 1
> +
> +      label:
> +        maxItems: 1

It's a string, not string-array, so maxItems are not needed, just ":true".


> +
> +      led-sources:
> +        allOf:
> +          - minItems: 1
> +            maxItems: 2
> +            items:
> +              minimum: 0
> +              maximum: 1
> +
> +      default-brightness:
> +        minimum: 0
> +        maximum: 31

Not a required property? Then "default:".
> +
> +      max-brightness:
> +        minimum: 0
> +        maximum: 31

Some of your examples miss it, so there is some kind of default. Add it.
> +
> +    required:
> +      - reg
> +
> +    unevaluatedProperties: false
> +
> +unevaluatedProperties: false

You rewrote everything, so my previous comment obviously does not make
sense in such case. This must be additionalProperties: false. Look at
other bindings or example-schema how it is done (to repeat myself).

> +
> +examples:
> +  - |
> +    #include <dt-bindings/gpio/gpio.h>
> +    i2c {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        backlight@36 {
> +            compatible = "ti,lm3509";
> +            reg = <0x36>;
> +            reset-gpios = <&gpio2 5 GPIO_ACTIVE_LOW>;
> +
> +            ti,oled-mode;
> +            ti,brightness-rate-of-change-us = <52000>;
> +
> +            #address-cells = <1>;
> +            #size-cells = <0>;
> +
> +            led@0 {


Best regards,
Krzysztof


