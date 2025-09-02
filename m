Return-Path: <devicetree+bounces-211755-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 83A6BB406BB
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 16:29:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 387A95E24E8
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 14:29:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E7F130DD31;
	Tue,  2 Sep 2025 14:29:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="d4RwbFT8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f44.google.com (mail-ot1-f44.google.com [209.85.210.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B10730BB8E
	for <devicetree@vger.kernel.org>; Tue,  2 Sep 2025 14:29:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756823349; cv=none; b=KGDbsa/enS15D+ajl81ha1Ya2mbWgxUVtUbkNxnNGokScCcGJGIu2n1aEN6HsOjpqj68Pj91sjPZAS5a6kCGZF/wC7lx5lbr64m1xBnur/97q2BuC5TYWaOkqpjlbJ7Qfhzn8/pzbxzZx3TvWkxO7JIfAeQnfEL5EOriBkPbBrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756823349; c=relaxed/simple;
	bh=Zh/esVOjxW9buYPgrg25ime4g5npaPosuL61f9Sd6lc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=T0Z+G8c709aDtd+kkP0Blbs3NUz2KXN1yRLJbRcB3rJZ3a5n+boJ3UlaxrO5zW3KN53+pKaxT9vxOHtS3lhNp5dtwcHSk4E5yK1NZ0Abr0jVDvJ+nBoE12GsZvoOnSJEBtC85rNJFbiuxc8zx/LptquUs9m0238y/LjWIpuSyCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=d4RwbFT8; arc=none smtp.client-ip=209.85.210.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f44.google.com with SMTP id 46e09a7af769-7438175d42aso3217843a34.1
        for <devicetree@vger.kernel.org>; Tue, 02 Sep 2025 07:29:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1756823346; x=1757428146; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pp38Yvg3RiytProyc5t2mGqns6Lb9l3HNRoLbsNuGqs=;
        b=d4RwbFT8GryJDSSfS/vvnQ5NYIUEncQQTaY0qPKyd22otXxkGl/RXepzlCAZlhetZd
         2WNkXNwB7npWfxum7PvK605qGN2qcfiITRUiA2WU+P276RqaltQHmVxGCNP9CA0gct8W
         CJ9Nm6gy/2Gk/ONx07/u3Wxo1zjifXYaGm8yQjM6EFD4LqdZKzsn+n4iw2GDTPoKsLBJ
         Xm3eFlLf+3uPjcLAY5G0Hv56XgXOIdi2yfetiKOdQI9sVkC4DlnxRbuGR4Q8A4jrNkqb
         JBUMeq+mqXgCOqyFFrKqzg8TY9xev/pr7IWS8+jZST5sLM4/NkZX4+uYckl1ZJPLC095
         wAfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756823346; x=1757428146;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pp38Yvg3RiytProyc5t2mGqns6Lb9l3HNRoLbsNuGqs=;
        b=s8VmyGhvgk7eH8vzH84s72Khu66wRhGHJ3YQOLJ8fzfRdcCLTbpjQg1sGJ8ujD7Wly
         +plsG2ejCbc7YrjP6UZszeCp97ZCJKDAZc2O9f0joLeVlJfIqAdweey4wJAta3SUDB7w
         6sQI+a4HDcLkDuFAJPnATv1fSOXVhHnoJFH1JEMBM3dTogBRKRnJ0NoCyjtZxLQ8UY+d
         C1c7+zxQKa6adhCOCLU/dNnv0vanIThOpMmSJIwPUAe0WRI9vXbQzAmhwwVfyiV9uH2k
         ys/tATVs9YFxeQNUuzFZwRioQMmlXk/61DnlYjU6/3NorWxfsXZuU+TOFODhxg+EhVyH
         hySA==
X-Forwarded-Encrypted: i=1; AJvYcCWWF9HTX9hQttSCxv9+vpvJOl/5wNq5dfe5QqpXm73nAm5Qj85SO9vB8eE0IscYpWxMxYErMF5jpI0n@vger.kernel.org
X-Gm-Message-State: AOJu0YyuIq9I+mMXX0TxOGurO9mfqgSuuV7ij5lR4pXPGmUxFJ9x0IN2
	sHIyhPvEjSUqnL37R8ZzUjLGzgwtFzxzv+3sCwI5NH57lL1HHztCNTuHQAagRveXbyY=
X-Gm-Gg: ASbGncvnNlpr1m4RdSLAzztOro503j7BMXXe3jiRKNR4HGUuBej8yqS2OCyUK7khIz7
	7u2AA+Bs2at3i31D70J1hK7F1/jActrMvDFM/iLs9kaJukqXJEn5dSox6uv/HfjxZR3dGUb8R5i
	HdVTWo6Agj4OhkLdzM8OSnl1Rt4dFb8MH52Y9xopkFhF/c8+bmdOwLkpGMj6W3qiOP5uc8lQMJw
	h4XAmT41Njc+OLsufi8RZDy9ITyfW+sFbZXEKIMqC+9GOdX/nhI0gk2hCB28OD70g9XfU4dwxiR
	NQTuoMw+xoEuCBSY5aSvYM8MtFpU/E1Wb5K2A/+mZQqvOMqrk0aOsd9GUCLtRm06OFO16ELPgHl
	u8cdWny0V0jDhXRhPY4SximCq8fszY+Pgs6zUpa4mye+gPRpSSUbQ4ovFkiAGxaCJ4b2nBslt
X-Google-Smtp-Source: AGHT+IGLw6/8aesIjAkhpVEJeXPBKTkpcMtabs/+MAUeiJpSmdalTytyjetDUXmkZqhdD3fGgZrheA==
X-Received: by 2002:a05:6830:7101:b0:73e:9fea:f2a5 with SMTP id 46e09a7af769-74569d9deb9mr8195564a34.4.1756823346157;
        Tue, 02 Sep 2025 07:29:06 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:8d95:114e:b6f:bf5b? ([2600:8803:e7e4:1d00:8d95:114e:b6f:bf5b])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-745743d0e97sm1581788a34.42.2025.09.02.07.29.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Sep 2025 07:29:05 -0700 (PDT)
Message-ID: <89265de7-eeff-4eea-838b-6a810c069a20@baylibre.com>
Date: Tue, 2 Sep 2025 09:29:04 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 1/2] dt-bindings: iio: adc: add max14001
To: Marilene Andrade Garcia <marilene.agarcia@gmail.com>,
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
Cc: Kim Seer Paller <kimseer.paller@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, =?UTF-8?Q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>,
 Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Marcelo Schmitt <marcelo.schmitt1@gmail.com>,
 Marcelo Schmitt <Marcelo.Schmitt@analog.com>,
 Ceclan Dumitru <dumitru.ceclan@analog.com>,
 Jonathan Santos <Jonathan.Santos@analog.com>,
 Dragos Bogdan <dragos.bogdan@analog.com>
References: <cover.1756816682.git.marilene.agarcia@gmail.com>
 <34b7cc7226e789acdc884d35927269aa5a0d5e14.1756816682.git.marilene.agarcia@gmail.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <34b7cc7226e789acdc884d35927269aa5a0d5e14.1756816682.git.marilene.agarcia@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 9/2/25 8:15 AM, Marilene Andrade Garcia wrote:
> Add device-tree documentation for MAX14001/MAX14002 ADCs.
> The MAX14001/MAX14002 are isolated, single-channel analog-to-digital
> converters with programmable voltage comparators and inrush current
> control optimized for configurable binary input applications.

When there are multiple devices, DT maintainers like to know
what is the difference between the devices.

> 
> Co-developed-by: Marilene Andrade Garcia <marilene.agarcia@gmail.com>
> Signed-off-by: Marilene Andrade Garcia <marilene.agarcia@gmail.com>
> Signed-off-by: Kim Seer Paller <kimseer.paller@analog.com>

Sine the patch is From: M.A.G., according to [1], this should be:

Co-developed-by: K.S.P.
Signed-off-by: K.S.P.
Signed-off-by: M.A.G.

(hopefully obvious, but don't use the abbreviations - I just did
that for brevity)

[1]: https://www.kernel.org/doc/html/latest/process/submitting-patches.html#when-to-use-acked-by-cc-and-co-developed-by

> ---
>  .../bindings/iio/adc/adi,max14001.yaml        | 79 +++++++++++++++++++
>  MAINTAINERS                                   |  8 ++
>  2 files changed, 87 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/iio/adc/adi,max14001.yaml
> 
> diff --git a/Documentation/devicetree/bindings/iio/adc/adi,max14001.yaml b/Documentation/devicetree/bindings/iio/adc/adi,max14001.yaml
> new file mode 100644
> index 000000000000..ff9a41f04300
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/iio/adc/adi,max14001.yaml
> @@ -0,0 +1,79 @@
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
> +    enum:
> +      - adi,max14001
> +      - adi,max14002
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
> +  vrefin-supply:

The actual pin name is REFIN, so refin-supply would make more sense.

> +    description:
> +      ADC voltage reference supply.
> +
> +  interrupts:

Likely needs `minItems: 1` in case only one interrupt is wired.

> +    items:
> +      - description: |
> +          Interrupt for signaling when conversion results exceed the configured
> +          upper threshold for ADC readings or fall below the lower threshold for
> +          them. Interrupt source must be attached to COUT pin.

We could shorten these descriptions. The important part is which pin
it is connected to.

> +      - description: |
> +          Alert output that asserts low during a number of different error
> +          conditions. The interrupt source must be attached to FAULT pin.
> +

And also `interrupt-names:` makes sense so we know which one is
is wired if only one is given.

> +required:
> +  - compatible
> +  - reg
> +  - vdd-supply
> +  - vddl-supply
> +

