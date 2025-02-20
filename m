Return-Path: <devicetree+bounces-149109-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id EDD80A3E50B
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 20:30:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CF6EB19C0BE3
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 19:30:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 15C762641ED;
	Thu, 20 Feb 2025 19:30:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="hsLqFX2v"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f54.google.com (mail-oa1-f54.google.com [209.85.160.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CF502116F6
	for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 19:30:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740079819; cv=none; b=hPQuRXU0juV7zJitP5VzHZaRRBPk7Tx74Xo9+wGuIPe9jnarDofxuggL7LuD5nX5ZI8iP30HGqmTHzQWeHnFfwWNiicXh6mx3XIwqUa1O/UoVMEZuY7GxeYwg483/ReJ2+GqQ59OtLfznssfevBCl47SXOt1eBMhqBRcJbovVB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740079819; c=relaxed/simple;
	bh=+zPvV+cP0eDo5IjH2NxFqShcpgfy+iZmEoIrCjnmSAc=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=bnX/eV3XYkBaDDoZJCE3o3y+xIln6Jx7VrNBb0MQwYGoEitQUqsxTj/1UEaMrwGbM0xRPBOY9tOimYz0WEL6Ogix6CZApGfx9D7ejgX/2TsZQf9S5kjxFgf0+yjasp0owWtaagdw/MEeyAlavmsgPVv7hbaeKfY7vEyZnzI+e+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=hsLqFX2v; arc=none smtp.client-ip=209.85.160.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oa1-f54.google.com with SMTP id 586e51a60fabf-2bc5212b2easo577424fac.1
        for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 11:30:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1740079814; x=1740684614; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=rVGpcVgrbn8fCoi86uWuObdsUh5NH2AKYBrd+9ofOEc=;
        b=hsLqFX2vXS3uLF6Fi1BymtkXh82s7WRFzxh2jJmZ3ryvPa8yhSGYpnkEL8PbeOM+31
         t6tGWgBD68HE1JnZ+wCWuZskykwc7LUTQCGp2/pykKHK/wgNhPrirKtmMi71iOdR3O2f
         pQcA9LrWCSZVAq0k8B8UlNZpRDqesKNQyeyT8ZESEx16wT1Ia6OSO+YJP/UW10AT4xnQ
         YmgABGjeis57D2qDZzJOyi6uCU+83Tg7gDWnrUCg0hArJ2Z4F8gK0tPO/qm5OomQ2iOT
         SKFOp7hqjQ7a0r2i22vEaCiejUNQorQfGdzRU2he9sgkWz5A8U+4l82/D9Yot5IWIezA
         Aw2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740079814; x=1740684614;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rVGpcVgrbn8fCoi86uWuObdsUh5NH2AKYBrd+9ofOEc=;
        b=W/eIm7xSj/+pEwRCr3xb+wGqS/ALu9HpC1fJwtQehkOjwteU+MQ/iy5c72WbzNOWeM
         ycA1tn+Tj6m9WOHrw6kYnTFEouoU7HQhtMX3er8N8DZj2qZ2sIvG0yh1BQ8z4KkvFi1l
         UJjDmifJcpWNKHaAUKOGeOnkGw/7YfCWhHagHwIrYvowdnKIk8NYh3TzdHCENHFdXse+
         iaV/cQY9AyDhamNbad4qr5XDYBZlQd/QQHJYfOHM+7QCfadDXlM99LduG8O8CO8ihEq5
         IUOiBGcC5anXzjOwoXELNnV2lM3h9cSPUJI2KGKURzEV/lIWu/12CBmWb1mr4T06zvod
         Nnjw==
X-Forwarded-Encrypted: i=1; AJvYcCWlTlGdboY83RW94lnMhnL7KkhrqSybY7cC1NkGXNS+GcAtw88ZP2F1WUnq1wsJh6yXBzd6WOs9R9dk@vger.kernel.org
X-Gm-Message-State: AOJu0Yy8hgFogNiQADoZHKGplxMhz7+fsHhcgm+wg5XgcySk0yNIWvjn
	1d2D55SuRKWbPNILfCXkGDcD6rovawq5m0G+5laUFac05d6Dq6kQSm0aKCohGew=
X-Gm-Gg: ASbGncv4ctiTnPnpWvQ3uKFe7K1xMqhuXXwqJJ/ug3StCWriFRiUlz/9YSMciq+Wv0M
	/XxGJwbgdURVsdY0CZwNBdeE8v+WWDPjVUGOsP68rvt7LWn9n8JR7CwGme83DfhNoNtPblD6Eqq
	GVG4olo+5uCFK94BCxapO+NIJ9m+apHMWEhX/Z0wW63/oCHNGojlEqYAdfM7Ea7ZJnsC4z73z5U
	p6QeSfzODgP+6OVEUNM85Gg7HClfpsMUewmFFqf8HfUwh43KzAGAvUNAuO0OOvznApvdijAgFSf
	mB9fCAN88dz5sZiBGhYyMDeE39ujQo8G0tqLKEQFKOPdF2NFe3pM
X-Google-Smtp-Source: AGHT+IGEq8Y0tcbFZh65z/dXPKbs0wOrzDYh3YzYrf60tIwUskcAt4CJ59H/gVbMadc56t800wQChA==
X-Received: by 2002:a05:6870:ac27:b0:2a3:c59f:4cba with SMTP id 586e51a60fabf-2bd50d8bd03mr197030fac.17.1740079814165;
        Thu, 20 Feb 2025 11:30:14 -0800 (PST)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2b954875ce0sm6511893fac.15.2025.02.20.11.30.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Feb 2025 11:30:12 -0800 (PST)
Message-ID: <6d4e65b9-1392-46e9-ac2e-0c4ef2239fa0@baylibre.com>
Date: Thu, 20 Feb 2025 13:30:11 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 12/14] dt-bindings: iio: adc: add ad4080
To: Antoniu Miclaus <antoniu.miclaus@analog.com>, jic23@kernel.org,
 robh@kernel.org, conor+dt@kernel.org, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250220135429.8615-1-antoniu.miclaus@analog.com>
 <20250220135429.8615-13-antoniu.miclaus@analog.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20250220135429.8615-13-antoniu.miclaus@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 2/20/25 7:54 AM, Antoniu Miclaus wrote:
> Add devicetree bindings for ad4080 family.
> 
> Signed-off-by: Antoniu Miclaus <antoniu.miclaus@analog.com>
> ---
>  .../bindings/iio/adc/adi,ad4080.yaml          | 92 +++++++++++++++++++
>  1 file changed, 92 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/iio/adc/adi,ad4080.yaml
> 
> diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ad4080.yaml b/Documentation/devicetree/bindings/iio/adc/adi,ad4080.yaml
> new file mode 100644
> index 000000000000..e0ea712b8457
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/iio/adc/adi,ad4080.yaml
> @@ -0,0 +1,92 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +# Copyright 2025 Analog Devices Inc.
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/iio/adc/adi,ad4080.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Analog Devices AD4080 20-Bit, 40 MSPS, Differential SAR ADC
> +
> +maintainers:
> +  - Antoniu Miclaus <antoniu.miclaus@analog.com>
> +
> +description: |
> +  The AD4080 is a high speed, low noise, low distortion, 20-bit, Easy Drive,
> +  successive approximation register (SAR) analog-to-digital converter (ADC).
> +  Maintaining high performance (signal-to-noise and distortion (SINAD) ratio
> +  > 90 dBFS) at signal frequencies in excess of 1 MHz enables the AD4080 to
> +  service a wide variety of precision, wide bandwidth data acquisition
> +  applications.
> +
> +  https://www.analog.com/media/en/technical-documentation/data-sheets/ad4080.pdf
> +
> +$ref: /schemas/spi/spi-peripheral-props.yaml#
> +
> +properties:
> +  compatible:
> +    enum:
> +      - adi,ad4080
> +
> +  reg:
> +    maxItems: 1
> +
> +  spi-max-frequency:
> +    maximum: 50000000

Since there are potentially two independent SPI busses on this chip
(one for configuration, one for data) it might be a good idea to put
in a description somewhere that these SPI properties are for the
configuration SPI bus.

> +
> +  clocks:
> +    maxItems: 1
> +
> +  clock-names:
> +    items:
> +      - const: adc-clk

Clocks don't need a name if there is only one clock.

But the description of clocks should say which pin you mean.
Is the the CLK+/- pins or the CNV+/- pins?

> +
> +  vdd33-supply: true
> +
> +  vdd11-supply: true
> +
> +  vddldo-supply: true
> +
> +  iovdd-supply: true
> +
> +  vrefin-supply: true

I would expect we need a vendor boolean property to say if the
DCO+/- pins are wired or not for the echoed clock.

And what does the CNV trigger get wired to? We probably need a
vendor boolean property to say if it is wired to something CMOS
or LVDS. Plus maybe a pwms property or whatever makes sense for
whatever kind of signal generator it is connected to.

> +
> +  adi,num-lanes:
> +    description:
> +      Nmber of lanes on which the data is sent on the output (DA, DB pins).

s/Nmber/Number/

> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    enum: [1, 2]
> +    default: 1
> +

Also, don't we need io-backends for the data interface?

We can also add gpio-controller and #gpio-cells since this
chips provides GPIOs.

> +required:
> +  - compatible
> +  - reg
> +  - clocks

Assuming clocks is CLK+/- pins, this should be optional since
the pins are used for a different function in SPI mode.

> +  - clock-names
> +  - vdd33-supply
> +  - vdd11-supply
> +  - vddldo-supply
> +  - iovdd-supply
> +  - vrefin-supply

The datasheet says things like, "If VDDLDO is connected to a
voltage source, neither VDD11 nor IOVDD should be connected to
any external voltage source.". So making all supplies required
doesn't seem correct.

> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    spi {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        adc@0 {
> +          compatible = "adi,ad4080";
> +          reg = <0>;
> +          spi-max-frequency = <10000000>;
> +          vdd33-supply = <&vdd33>;
> +          vdd11-supply = <&vdd11>;
> +          vddldo-supply = <&vddldo>;
> +          iovdd-supply = <&iovdd>;
> +          vrefin-supply = <&vrefin>;
> +          clocks = <&adc_clk>;
> +          clock-names = "adc-clk";
> +        };
> +    };
> +...


