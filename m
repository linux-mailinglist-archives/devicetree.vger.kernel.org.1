Return-Path: <devicetree+bounces-48020-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 028F286FB9D
	for <lists+devicetree@lfdr.de>; Mon,  4 Mar 2024 09:20:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 260F61C21B70
	for <lists+devicetree@lfdr.de>; Mon,  4 Mar 2024 08:20:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8891C171BC;
	Mon,  4 Mar 2024 08:19:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ArfJcs51"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36F2D17585
	for <devicetree@vger.kernel.org>; Mon,  4 Mar 2024 08:19:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709540395; cv=none; b=cHgTywnlZkCAvSjAV742E41jgyiqrTTTFWbFyGGP4IxLV7EgpWlBjq2s2PN0GdBJyjiCWMrKvQC7CxL/F/58169b3wXzClDr0ALKDUETvM049rCxmdEin9dDDe+ELZzygtl7w3KZusZOLuegIsoZagGHKG6lwHVbR+hwdyHJBGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709540395; c=relaxed/simple;
	bh=Y/JZCWQE7DFG+rE5LQ9bcIGTcWwb8WkuTNtHXKPxsE0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=dA2fT9HJEXUTdX0KS6FYJywZu/Ae3fBT6mWitB7gJNJjP10/fHKsHrlbGNxGVW+8Uhn1lia/flCwpmfg+fMQ8mLT/FH+q026hAMMUFK8NV7HRO4zNyVlxARv6K/JHVwNAjrF1FRQ8XR9Xu/HC2gYKfCXYKB4AeTjGMvF0kBIMJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ArfJcs51; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-a44cdb2d3a6so219596366b.2
        for <devicetree@vger.kernel.org>; Mon, 04 Mar 2024 00:19:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709540390; x=1710145190; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wP36DpTVEwlDdpN2Rgpr18aOZ9WEG6xNPrA2wbISAeY=;
        b=ArfJcs51DTE5XynC2Uu/ZBnIGlTADwBAAOONr0necTHZkL4AFidF1YrVmvwxB37lzQ
         mY6CIdLuvOz6F2MbFraqfrl7o2E8QJhm6EZtMcSj19cC+S/R2Bip5J7baTuC4CNfFdYt
         rZjJHJh2Yy41EF8Jkx/qM4siy1zKXdDy3c/sGhBapxOz5IMZofRP0ijidj7oCi17Hpnr
         9aIAWm0ruyQ6w7aY7VQck9z5slft7TVReFGifPBjioroVbYFJSukBpaJfkOwYx9L9ND2
         IaXC7JHWJE/Od3e96k6RXZtGdXZh4BrTZxz+eXXB+3xC0UuLOKUXak9SDFjpaF1yD7ii
         ZjRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709540390; x=1710145190;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wP36DpTVEwlDdpN2Rgpr18aOZ9WEG6xNPrA2wbISAeY=;
        b=vc/6bt0Ovs2J+YMRjYE+AKU8zlE6yZnXgtH9X5TAMkbaei/FRr9+49UGk+WN4t8GAf
         h8NqthwoYPwy+DKfxyb949Yh0IprOmMV0+tPGl5tMYe1RlammEbFKxAFHBXGmh1HuYb8
         6gevXq5yDWdikKIj/3o24mUlEPCLvVHYxh6F9kWmHovctgloH4BAEGvjzrNnc4nlE5wJ
         Q47AhLSaZpy/mM4h+nPVhG6CxN7ESr/a7li1uJVyQwufLXOBsM5OhvE+iBBmeoJ9vMsS
         HVuUYzH3uRkW5P6KEzPxQ9hj4MmlimZUaVRTx8EErGW+KFQYnvDmWIx2BE+kvmyFlmsP
         r4ug==
X-Forwarded-Encrypted: i=1; AJvYcCUTDn07v3K0BwB8RHElzUC2x1vtELoom/cPhfeC/TvYRRiHjPnweYw1E1FEzhTM2hfeWFqI7wWHYe9Avg568TxXNZFkcWN5xRZ1tg==
X-Gm-Message-State: AOJu0Yz22cwbVbRtWWQScbwxkAELOXE3tzcbtYtWOHGWtsEcsP1CluAU
	5/NPcVKzIdaki7LlVVFTAzTgIMBqyajRUItmSbP3OfYwDwAF3clbecNLEhzsh3jdwyelPabBj6z
	T
X-Google-Smtp-Source: AGHT+IEdgNwrez3UPbmH/gniI1QjyVB3umAZnsREwIgGSU47l4YPWdjHO++qRwYpjOZS2x55BowHww==
X-Received: by 2002:a17:906:480a:b0:a45:6423:b445 with SMTP id w10-20020a170906480a00b00a456423b445mr679610ejq.65.1709540390295;
        Mon, 04 Mar 2024 00:19:50 -0800 (PST)
Received: from [192.168.1.20] ([178.197.222.97])
        by smtp.gmail.com with ESMTPSA id pv25-20020a170907209900b00a3ee9305b02sm4471907ejb.20.2024.03.04.00.19.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Mar 2024 00:19:49 -0800 (PST)
Message-ID: <877d01a6-f49e-4d7c-bca9-5f9ba44a7232@linaro.org>
Date: Mon, 4 Mar 2024 09:19:48 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: backlight: Add Texas Instruments LM3509
 bindings
Content-Language: en-US
To: Patrick Gansterer <paroga@paroga.com>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org
Cc: Lee Jones <lee@kernel.org>, Daniel Thompson <daniel.thompson@linaro.org>,
 Jingoo Han <jingoohan1@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
References: <20240302212757.1871164-1-paroga@paroga.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240302212757.1871164-1-paroga@paroga.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 02/03/2024 22:27, Patrick Gansterer wrote:
> Add Device Tree bindings for Texas Instruments LM3509 - a
> High Efficiency Boost for White LED's and/or OLED Displays
> 
> Signed-off-by: Patrick Gansterer <paroga@paroga.com>

A nit, subject: drop second/last, redundant "bindings". The
"dt-bindings" prefix is already stating that these are bindings.
See also:
https://elixir.bootlin.com/linux/v6.7-rc8/source/Documentation/devicetree/bindings/submitting-patches.rst#L18

> ---
>  .../bindings/leds/backlight/ti,lm3509.yaml    | 81 +++++++++++++++++++
>  1 file changed, 81 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/leds/backlight/ti,lm3509.yaml
> 
> diff --git a/Documentation/devicetree/bindings/leds/backlight/ti,lm3509.yaml b/Documentation/devicetree/bindings/leds/backlight/ti,lm3509.yaml
> new file mode 100644
> index 000000000000..8fbb83934e30
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/leds/backlight/ti,lm3509.yaml
> @@ -0,0 +1,81 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/leds/backlight/ti,lm3509.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: TI LM3509 High Efficiency Boost for White LED's and/or OLED Displays
> +
> +maintainers:
> +  - Patrick Gansterer <paroga@paroga.com>
> +
> +description: |

Do not need '|' unless you need to preserve formatting.

> +  The LM3509 current mode boost converter offers two separate outputs.
> +  https://www.ti.com/product/LM3509
> +

Missing allOf with ref to common.yaml

> +properties:
> +  compatible:
> +    const: ti,lm3509
> +
> +  reg:
> +    maxItems: 1
> +
> +  reset-gpios:
> +    maxItems: 1
> +
> +  default-brightness:
> +    minimum: 0
> +    maximum: 15
> +
> +  max-brightness:
> +    minimum: 0
> +    maximum: 15
> +
> +  ti,brightness-rate-of-change-us:
> +    description: Brightness Rate of Change in microseconds.
> +    enum: [51, 13000, 26000, 52000]
> +
> +  ti,oled-mode:
> +    description: Enable OLED mode.
> +    type: boolean
> +
> +  ti,unison-mode:
> +    description: |

Do not need '|' unless you need to preserve formatting.

> +      Enable unison mode. If disabled, then it will provide two
> +      independent controllable LED currents for BMAIN and BSUB.
> +    type: boolean
> +
> +required:
> +  - compatible
> +  - reg
> +
> +additionalProperties: false

unevaluatedProperties instead (open existing bindings and look how they
do it).

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
> +
> +            reset-gpios = <&gpio2 5 GPIO_ACTIVE_LOW>;
> +
> +            ti,unison-mode;
> +        };
> +    };
> +  - |
> +    i2c {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        backlight@36 {
> +            compatible = "ti,lm3509";
> +            reg = <0x36>;
> +
> +            ti,brightness-rate-of-change-us = <52000>;

Just combine these examples.

> +        };
> +    };

Best regards,
Krzysztof


