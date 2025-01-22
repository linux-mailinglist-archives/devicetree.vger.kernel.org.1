Return-Path: <devicetree+bounces-140420-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A922A19A2B
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2025 22:11:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 305DD188C8C6
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2025 21:11:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 60C951C5D6D;
	Wed, 22 Jan 2025 21:11:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="DZZFIy7Q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com [209.85.210.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C4E91AF4EA
	for <devicetree@vger.kernel.org>; Wed, 22 Jan 2025 21:11:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737580291; cv=none; b=Io33mKG0cTx0bvMxhJwnVmkzi569AX8lfBGUd+TC45RqP8h0jRkGNb0ngFgOZwS2ooJCScLEfjnsmamKNQKrbRNLYxIrSZWeJEhvT8KUSbrVIXM+4hMoBevPZvgebIpi1RsbLBepsIaIY/gCB5sZfU8hrhvLHb7Z5550QxprFTU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737580291; c=relaxed/simple;
	bh=VIKGBgYoWMbg6XR3TPiepo8cZRgH/PGwl7uhQNXVrsE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=VJfilmFwRRCCIxr46jRFNADZtf6d7/y9JpQWEXis9wuF9xhLglRg1y0MkXimxCjfWInm6Oebb9w7gchAJPtgvFh3o5HIsWtfTGvOa2R8qJ/vwa4Ad0yvK5ukedbOfvuB5faSBnSwSNoVKLWe1JAgRRxmQe3bfJBr+a5qAyzN/Ys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=DZZFIy7Q; arc=none smtp.client-ip=209.85.210.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f50.google.com with SMTP id 46e09a7af769-71e1b1767b3so123224a34.3
        for <devicetree@vger.kernel.org>; Wed, 22 Jan 2025 13:11:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1737580288; x=1738185088; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8xM3yjtdAmtHlD0j2bHym2nn3LqAJkbUkAXtpadigko=;
        b=DZZFIy7Q0F1jbx70wJdpCvswEeXm2xPfZlTbcjTjLwdglY92/nnO3dNbWk0pcEa0Xk
         Hn3BsO48jUyMsDdjHlP91acwWoRfiuYOq8NJssaTvUzRE6NdYMTk5SDSBrJmuqa0w22S
         Zz+v0BERFkCokMjuZRjJyJBrGhc/GNJSa5rOke8tpDFIILAqvWHRQ1q+eyup6jnA3vfc
         BsHv70M2RfX17iIdPmjJHGHB+bysF1YEwXtgPoHd9R8fgteqzNDRZrayOFp1hMQ9SbhF
         DvxwRLG1qhSZeNxm1ny2m8vtqelZJ/rOxxHx3X7kxUZQQoZkz6nNKvlZ3NgxrZ+X6Cp0
         mOCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737580288; x=1738185088;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8xM3yjtdAmtHlD0j2bHym2nn3LqAJkbUkAXtpadigko=;
        b=fCB/RBlKaRJPLRLhAbHkHeq6PuWpGVdgXYQrN/gl+ZE+b8+X76b9k4yyHPNdF+D5mT
         6Q892dVdqkvnj1RbQYouH3eoIlJyGpD8xGMStQ4hXOHNDV2PMVfXGk9/Ly5+DdrzVX6d
         y4x8nUOMJ9habTBmMyTewbZ+WjQby5/mNFvmUIcox5MadiPVMgkS+25hWn8yvbkiYuBJ
         zLpMo93jP29aXo0TnfogokYb9LEezu7S7KTkp2x9nbxIwnMu3q7FEqDp/iXpOfFyYXW+
         3xSJiWyovubr3K7xnhK4pmcwAwumc6cPY5/ip8XS8PIXETie0pf/k9yvd9LlxPYoAGNx
         /JYA==
X-Forwarded-Encrypted: i=1; AJvYcCUWLSjWkKj1QUx7tdTd+skQY92/k6v3vc+4xzYoUoEjJiJ1+aGUavCOnTPJRgStGlIT0Pzj9dND4z3y@vger.kernel.org
X-Gm-Message-State: AOJu0YwEJAlHcAlpxNgEo2d+CB4RtfcyeQKEDF5cAebL6yJh7QiCi8KR
	e/Z3tiFkxQWsVEb9XkuFGbk/QDOCMJFDZWW/YbJstqW+/+L8DRjzWag3kihE76I=
X-Gm-Gg: ASbGncvFcWH381zkNHYICZMnqv75eyBjU5muw8GJ6f55F8Z4REbcfMoR8bqHGTJkenF
	FJF9WJANRVTFlK8Iqib6hhs5U9Oo5fgPR7VWkFGkX99vgcAHRyNEHemY1A2xchLFwKtjilF+8bV
	VZAGoRCzOhh2jt5GWfigYQJImFk7VTsfK/DXi17BHJJGBK2QNT0DhXIr7fCMOomSzGZWRegm/JO
	J6zbZzrOqf7SlYs4dLwzynNTOZ5uMjnACfbEgi8dTbYD2Upv68ic4aCtCHlm9lSYnByFVT2Nrse
	vLbduwbbPWQ3B8UNkXmiOgND0nZKigA=
X-Google-Smtp-Source: AGHT+IFGNbR+WVq028/i7Oy/AZ6q4XePR6wJNe4vSufGR4OWlYCRrH/Gj87ouiEDbxwINJYblZM8mA==
X-Received: by 2002:a05:6830:388f:b0:71d:445a:80b9 with SMTP id 46e09a7af769-7249da8f75dmr15985167a34.16.1737580288176;
        Wed, 22 Jan 2025 13:11:28 -0800 (PST)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7249b3be2e2sm4133618a34.31.2025.01.22.13.11.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Jan 2025 13:11:27 -0800 (PST)
Message-ID: <d9e258cc-fa3a-4c6b-a58a-193711d1d9ec@baylibre.com>
Date: Wed, 22 Jan 2025 15:11:25 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] dt-bindings: iio: adc: add AD7191
To: Alisa-Dariana Roman <alisadariana@gmail.com>,
 Alisa-Dariana Roman <alisa.roman@analog.com>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org
Cc: Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <brgl@bgdev.pl>
References: <20250122132821.126600-1-alisa.roman@analog.com>
 <20250122132821.126600-2-alisa.roman@analog.com>
From: David Lechner <dlechner@baylibre.com>
Content-Language: en-US
In-Reply-To: <20250122132821.126600-2-alisa.roman@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 1/22/25 7:20 AM, Alisa-Dariana Roman wrote:
> AD7191 is a pin-programmable, ultralow noise 24-bit sigma-delta ADC
> designed for precision bridge sensor measurements. It features two
> differential analog input channels, selectable output rates,
> programmable gain, internal temperature sensor and simultaneous
> 50Hz/60Hz rejection.
> 
> Signed-off-by: Alisa-Dariana Roman <alisa.roman@analog.com>
> ---
>  .../bindings/iio/adc/adi,ad7191.yaml          | 175 ++++++++++++++++++
>  MAINTAINERS                                   |   7 +
>  2 files changed, 182 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/iio/adc/adi,ad7191.yaml
> 
> diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ad7191.yaml b/Documentation/devicetree/bindings/iio/adc/adi,ad7191.yaml
> new file mode 100644
> index 000000000000..c0a6bed7a9cb
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/iio/adc/adi,ad7191.yaml
> @@ -0,0 +1,175 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +# Copyright 2025 Analog Devices Inc.
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/iio/adc/adi,ad7191.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Analog Devices AD7191 ADC device driver
> +
> +maintainers:
> +  - Alisa-Dariana Roman <alisa.roman@analog.com>
> +
> +description: |
> +  Bindings for the Analog Devices AD7191 ADC device. Datasheet can be
> +  found here:
> +  https://www.analog.com/media/en/technical-documentation/data-sheets/AD7191.pdf

If we are not going to have a powerdown-gpios, I think we should mention in the
description that it is expected that the PDOWN pin is connected to the SPI
controller chip select.

> +
> +properties:

...

> +
> +  clksel-gpios:

Do we really need this one? I don't think we have a chip yet that wants to
change the clock at runtime. We don't have this for any of the other similar
ADI sigma delta chips that have already been upstreamed.

If there is an evaluation board where the pin is wired to a GPIO, we can just
use gpio-hog to select the correct state.

> +    description: |
> +      Clock source selection pin (internal or external). Should be defined if
> +      clksel-config is absent.
> +    maxItems: 1
> +
> +  adi,clksel-state:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description: |
> +      Should be present if CLKSEL is pin-strapped. 0 selects an external clock,
> +      1 selects the internal clock. If defined, clksel-gpios must be absent.
> +    enum: [0, 1]

I don't think we need this one either. If the clocks property is present, then
we can assume that CLKSEL is going to be hardwired to indicate an external
clock and if the clocks property is absent, then we know it must be hardwired
to select the internal clock.

> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - avdd-supply
> +  - dvdd-supply
> +  - vref-supply
> +  - spi-cpol
> +  - spi-cpha
> +  - temp-gpios
> +  - chan-gpios
> +
> +allOf:
> +  - $ref: /schemas/spi/spi-peripheral-props.yaml#
> +  - if:
> +      required:
> +        - adi,odr-state
> +    then:
> +      properties:
> +        odr-gpios: false
> +    else:
> +      required:
> +        - odr-gpios

I think we could simplify these with:

- oneOf:
  - required:
     - adi,odr-state
  - required:
     - odr-gpios

> +  - if:
> +      required:
> +        - adi,pga-state
> +    then:
> +      properties:
> +        pga-gpios: false
> +    else:
> +      required:
> +        - pga-gpios
> +  - if:
> +      required:
> +        - adi,clksel-state
> +    then:
> +      properties:
> +        clksel-gpios: false
> +    else:
> +      required:
> +        - clksel-gpios
> +
> +unevaluatedProperties: false
> +

