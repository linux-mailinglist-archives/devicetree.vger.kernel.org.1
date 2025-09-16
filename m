Return-Path: <devicetree+bounces-217959-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AA57B59DDF
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 18:41:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D4FFC322E52
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 16:41:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 108DD31E8B3;
	Tue, 16 Sep 2025 16:40:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="MK6tTGwL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f169.google.com (mail-oi1-f169.google.com [209.85.167.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E9D731E8A8
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 16:40:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758040853; cv=none; b=G8RELjh7IaK3tx8nfkvHS37EbByA2OrszufJL8GJLqa9FvswYR/oksSUtFv0gsfyI4n1/1NUI0ZYR2r1cKkvB5YKefiqpXWwOPezEpzON/TYXQeF1oA33EiYYL4TveKdvXWb2Q63Kyulnj7cxMShxXTYKXcJLjjstNXzkdaFHAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758040853; c=relaxed/simple;
	bh=DSmVQSHhOos2PKtH8mYX9XMol+4AxC1wakS95WHvgtI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jlb9RfbVU7umwS1+xN1Z9L1gy7E3NcC8/NZLvzX6lsr+tKFTvp5c5Vg2oE9oInGvhtBWS4gOwe9qzduU0nCIoTsPKNRSK+TQg0iHU1OfnJdZS6mMQw6FxaGDh08c7Ss7M6IOPtQat6eeKKjbpwWi4OjBEcxPPL3nbCHhX2DZY/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=MK6tTGwL; arc=none smtp.client-ip=209.85.167.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f169.google.com with SMTP id 5614622812f47-43b40cc73f3so33899b6e.0
        for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 09:40:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1758040849; x=1758645649; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=IRpNM2/xCih59eBZEAbu4g3iE4/D/L64LgWMt1ePFPk=;
        b=MK6tTGwLI0rmWuk+E/GK7DPlGDssqHY5Oj5l/oPC7RMC4mYknQcWTifKQt8/FlNtjG
         o7wxo40oAuhEG8Vq5oiqgqBUEsTE42F6Lten6xFTuOCGtKzRYByKQHo2AajrRxJLC0y4
         9ikojLrD8XEprAMZV//m9/Jow2MtNOYbsER6PSwWNU2MK69xlpYWv6DxLuXf5Me1cZJ/
         7Po0fLKnpu6nSyi1HIr+sODA7qrjapcWe+REnJIhB0AQ7Qc8vJvFK86TgWdwGZkBZgmR
         rdEzWVV2tTNHuir2UiGV23IMkT6gaImsNooG+5vUzOSpje3ajB+q9RyeMTcVDyviNCCg
         aZ/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758040849; x=1758645649;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IRpNM2/xCih59eBZEAbu4g3iE4/D/L64LgWMt1ePFPk=;
        b=l1Mct4GXum/Mg4HlOHEgOjL1ubBTCWCpNgoQ2PC8z93etRPfTfJ4QSICJWyP0sMBK4
         woP9BmjJV68RXSDDPZ/W5U2MgMuBzUrpU3Qx9/4vo4lYu69PDoTJXHFePQNaa19bmptd
         Npd5JVTjjiFBlLbLqKARN3cZE6cMUv+T6jR2dWU4ewY0m0mjLwJGIxD/OPiufPwtOkRh
         RPLPSlD+c98wP8UiChsgKuIZjf762UTs4RarEYBlFauvEBy5L2YijFBi8l2YjgO/GqRU
         vBDUVLz9S2ky/5Yn1CyL+LXc+aD/zP86Wp3QQXimPH/i29GLDKaS0kP0wYySdR6eObAD
         ONCA==
X-Forwarded-Encrypted: i=1; AJvYcCWXemx40VFAucNO685LNzM/Z5Fyf1A2CWE3PvttCZU4WfwPAc5wNnnZATTwhQnEsVAXNpyMICoCffxH@vger.kernel.org
X-Gm-Message-State: AOJu0YztJdrZ5g+ctYvLDZGS8xvhfuII02+Rs3xYP4Q/DzQBOmGo453k
	gUAmbGy70R5J5FOo1mnh54s+dYYi92i/ZoNmPhb49qHC3AKXpzhItOF41DjGHgju/l82YSuQwIb
	zmRH4VZM=
X-Gm-Gg: ASbGncvjHb0t8XZvjypjlBMHXb8F7XWCan7t1/16JimcruZfcB9s4mgqRsRcfm0/gM4
	+Hbh7gMcAHhQYHc9SYwq3YFHvspVY6/Y9dE6wIjmZnZ2Tc8GCmLkEHB3bPuFFB0F5VmpuHQlQ5E
	x/NFcd5bgYZGwRPAi8p+E62jsTx6JXu+y+Qj/WbA62kLaKeV63GvB8zWBj7JHdmLI33+3dhItNT
	KKQlILk0cg8a7CjBTgGsTddivVkdIypbssz8wL6HwT7QPe1/kj8mUYLL0eOb8HEfGYSmrMGdxYm
	lD9PlKjXcYwHkxydWZWEXfJiXfqz84Xyn1PGA4yfikdnWhNzCrnhjLXBxRmQjFQk/uRR1tk7nDk
	d6TFOGrGf3gTFAJr6WNO+KK8uFCFdE6YCQ5+SmRCH6Q0kOaydRSxypMgiYnLCF/+ckQxbh83gef
	0=
X-Google-Smtp-Source: AGHT+IGcltY2eODvqYysqxpgvPqREuroqKSUaoNzZhYArRNaV4gU6OV6VkN+Z5JtCrPDyUnvVfBJrQ==
X-Received: by 2002:a05:6808:198f:b0:438:228e:ccc0 with SMTP id 5614622812f47-43d3f3ab4b9mr1377157b6e.16.1758040849051;
        Tue, 16 Sep 2025 09:40:49 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:70a1:e065:6248:ef8b? ([2600:8803:e7e4:1d00:70a1:e065:6248:ef8b])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-43b82ae6c1fsm3333747b6e.27.2025.09.16.09.40.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Sep 2025 09:40:48 -0700 (PDT)
Message-ID: <8e88b601-1329-4cdb-bbd7-feb998c552e8@baylibre.com>
Date: Tue, 16 Sep 2025 11:40:47 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v11 1/3] dt-bindings: iio: adc: add max14001
To: Marilene Andrade Garcia <marilene.agarcia@gmail.com>,
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
Cc: Kim Seer Paller <kimseer.paller@analog.com>,
 Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, =?UTF-8?Q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Marcelo Schmitt <marcelo.schmitt1@gmail.com>,
 Marcelo Schmitt <Marcelo.Schmitt@analog.com>,
 Ceclan Dumitru <dumitru.ceclan@analog.com>,
 Jonathan Santos <Jonathan.Santos@analog.com>,
 Dragos Bogdan <dragos.bogdan@analog.com>
References: <cover.1757971454.git.marilene.agarcia@gmail.com>
 <30f33a64da0339eccc1474406afb2b1d02a0cd6b.1757971454.git.marilene.agarcia@gmail.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <30f33a64da0339eccc1474406afb2b1d02a0cd6b.1757971454.git.marilene.agarcia@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 9/15/25 5:16 PM, Marilene Andrade Garcia wrote:

...

> Notes:
> Since v10, I have not used exactly the same approach as Kim did in v9, nor 
> the same approach as in my v1. Instead, I merged both implementations, and 
> this v11 is quite different from both. Therefore, I have dropped the review 
> by Krzysztof Kozlowski. I am not very familiar with the kernel’s review 
> process, should I add it back? Should I list your names as Reviewed-by? 
> Thanks.

I think you made the right judgement call here. The changes are significant
enough to deserve another look. And you did the right thing by explaining why
you dropped the review tags.

> 
> The MAX14001 and MAX14002 both have the COUT output pin and the FAULT
> output pin, and work the same. I have decided to declare them as interrupts
> because I think some action should be done when they are hit. However, the
> implementation of these features is not present in the v11 driver code, as
> it was not in v9. But I plan to submit it in the next steps.

The devicetree bindings should be as complete as possible and not care
if the driver doesn't use everything. So adding them now is the right
thing to do.

> 
> 
>  .../bindings/iio/adc/adi,max14001.yaml        | 87 +++++++++++++++++++
>  MAINTAINERS                                   |  8 ++
>  2 files changed, 95 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/iio/adc/adi,max14001.yaml
> 
> diff --git a/Documentation/devicetree/bindings/iio/adc/adi,max14001.yaml b/Documentation/devicetree/bindings/iio/adc/adi,max14001.yaml
> new file mode 100644
> index 000000000000..c61119b16cf5
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/iio/adc/adi,max14001.yaml
> @@ -0,0 +1,87 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +# Copyright 2023-2025 Analog Devices Inc.
> +# Copyright 2023 Kim Seer Paller
> +# Copyright 2025 Marilene Andrade Garcia
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/iio/adc/adi,max14001.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Analog Devices MAX14001-MAX14002 ADC
> +
> +maintainers:
> +  - Kim Seer Paller <kimseer.paller@analog.com>
> +  - Marilene Andrade Garcia <marilene.agarcia@gmail.com>
> +
> +description: |
> +    Single channel 10 bit ADC with SPI interface.
> +    Datasheet can be found here
> +      https://www.analog.com/media/en/technical-documentation/data-sheets/MAX14001-MAX14002.pdf
> +
> +$ref: /schemas/spi/spi-peripheral-props.yaml#
> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - const: adi,max14002
> +      - items:
> +          - const: adi,max14001
> +          - const: adi,max14002
> +
> +  reg:
> +    maxItems: 1
> +
> +  spi-max-frequency:
> +    maximum: 5000000
> +
> +  vdd-supply:
> +    description:
> +      Isolated DC-DC power supply input voltage.
> +
> +  vddl-supply:
> +    description:
> +      Logic power supply.
> +
> +  refin-supply:
> +    description:
> +      ADC voltage reference supply.
> +
> +  interrupts:
> +    minItems: 1
> +    items:
> +      - description: |
> +          Asserts high when ADC readings exceed the upper threshold and low
> +          when below the lower threshold. Must be connected to the COUT pin.
> +      - description: |
> +          Alert output that asserts low during a number of different error
> +          conditions. The interrupt source must be attached to FAULT pin.
> +

I don't think the `|` is needed here. It is only needed when formatting
should be preserved, e.g. you have paragraphs or a list. Or when there
are certain characters like `:` in the text. But neither are the case here.

> +  interrupt-names:
> +    minItems: 1
> +    items:
> +      - const: cout
> +      - const: fault
> +
> +required:
> +  - compatible
> +  - reg
> +  - vdd-supply
> +  - vddl-supply
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    spi {
> +      #address-cells = <1>;
> +      #size-cells = <0>;
> +
> +      max14001: adc@0 {
> +        compatible = "adi,max14001", "adi,max14002";
> +        reg = <0>;
> +        spi-max-frequency = <5000000>;

I would add:

           spi-lsb-first;

to this example so that people know it is a possibility.

I don't think we need to list it in the properties though since
it is included by $ref: /schemas/spi/spi-peripheral-props.yaml#.

> +        vdd-supply = <&vdd>;
> +        vddl-supply = <&vddl>;
> +      };
> +    };
> +...

