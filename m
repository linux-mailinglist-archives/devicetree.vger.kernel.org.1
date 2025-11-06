Return-Path: <devicetree+bounces-235746-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AAE4C3C454
	for <lists+devicetree@lfdr.de>; Thu, 06 Nov 2025 17:10:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id D2D194E7BE1
	for <lists+devicetree@lfdr.de>; Thu,  6 Nov 2025 16:06:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0343E344024;
	Thu,  6 Nov 2025 16:06:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="mfIwBrcB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f47.google.com (mail-oo1-f47.google.com [209.85.161.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B62D9330B05
	for <devicetree@vger.kernel.org>; Thu,  6 Nov 2025 16:06:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762445175; cv=none; b=f8hPjLXaFrvGJ2uPVeIniMCO4tCH68NfPzjZpDITXaoeA7dFhNd/3ES+9c+2wgr8gSJS3kHY/iTBI3kJfH5L5untRutUaEK/e48/N+zQGzoys4AMgGJ4j1bQKNEP+dlu9dsoZQzQEUo1/7IKOX4RSEnBTppMrkK1Wv4l5Q9XMZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762445175; c=relaxed/simple;
	bh=dvzFUSi8epjcH2tzVkZdfAKadQfAEcDxUUQ1NgNUv5U=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=YwucUbJ+pTNAq4gZy0upj30xObI0bBXj8Z/Wy4Ly09zz3g0aNakPDwDMu3I3u9iYpyRhxvbS5xF2IoUFD9KEARmrvPRCCA8m07yxp9UCexYs0e5p60oXwax8Vzew9iShLzLFxI5LTwgLOrKqdMffmBg20PIkAPj4Y1oIAV0J1hs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=mfIwBrcB; arc=none smtp.client-ip=209.85.161.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oo1-f47.google.com with SMTP id 006d021491bc7-656c665749bso300367eaf.3
        for <devicetree@vger.kernel.org>; Thu, 06 Nov 2025 08:06:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1762445172; x=1763049972; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KzWUN8FCOcO8+x+mhLttst82Or3UpUTXEtfV8i7GE9o=;
        b=mfIwBrcBCuHG4FPwRh5TRFYF+Q5vonVhtF9xnXNG7xrEet7+Qldny9zFJk2e/8Kcl+
         YrBP9YQoQO4iN97uYYdYh8x1FN2XVbWgkiYKCdRyArA6zryLxjQw+AvbOo3QKi983SnB
         6pmADW//82wUzGznP3+pvtAxPuPFhn/9yxtZKfMopmtmIyROacE2Y7/G2BEqBnZHm+GO
         z5dl/uE2dOo8xJJm2eA8GmLvgvsKiUdrQOn+T0M+hFU3A29s4E7rSDL9Qj8OJ4s7YH+7
         3j/8M9Y0ORxFT0rvSi4zU4dP8MgE6DQ6B0txQ0UvpFo9224sloEZ5sQf7m03Jltn+L00
         xfvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762445172; x=1763049972;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KzWUN8FCOcO8+x+mhLttst82Or3UpUTXEtfV8i7GE9o=;
        b=cdcqRoCEKx8JKfBeOwX3FIR9TZUqtw9ey/vSdb/GNosN3XLmWvC6hBSyHRCoupTfbM
         4ra2f/46XTEH/C71rhvSS09Ji2rnxPRoqxveYPYE1rrebf/shBIoHSNXp4m9bjU0y6B+
         veqaH/LqCd+1LAi9vYWXWvuem015bf5ON+vhdFbjF78CzunJToPgyvqKnwDsqwBsvX0F
         7NSyt3pjDh8+DbUbOAE5tEk/SGAxMmw1dm+icu3JIxsHQB5pHTjMqXOALE8g5V0iTQP9
         Uf0/T9b4dFWdfO0Q4pd6hkp2CgKrXFgt9Yux3f/Ehlhq5p9dchslS7j+I0S/FotFus+L
         oQyw==
X-Forwarded-Encrypted: i=1; AJvYcCW71btwELsLvk5LUG1zYPX1qwgnvVkkrmBXfN/CGQRCVkU6FOjKZsY5V2r/nXXKA3E36RsPgtTyDnji@vger.kernel.org
X-Gm-Message-State: AOJu0YzRn9pvxd0ipOCIe0GbwxVn4I7z9jdYlomWwpPM2XbsoYVoGwRc
	JMrCJfxyHVl6Abm8IJogxSBmCwfY4/XZHpE7LAp8tnByubNOwG+1bPHzOu667Nd03F0CuYlNYLu
	WH0K7
X-Gm-Gg: ASbGncstQj6s0wokDabGhTcgdtG7Kyq0ihvbmBjibZ1ugzvo1nHBn8Dng7xrNtb+H/R
	FDmR4U3gERz7FM8GPhwiF00mUqW1rCtoMwm9vZrG3kX7Kd74NEFvQDuFv/6Gm7emtnxmCCHj7nK
	8YNyaaMhxUs40y4XKkTeb1HGZ6CCCO4sbDdFTyqMuIR++7Wb90XWQP/l9Ji7YTbCpjkUYy+EELN
	IazjwoMOnHdsBSa0GScVgcJZF6kWVDbdVTs6zenj1bpqqXvh5UkckZu6yNil4/9lt/xvfr8o+Qi
	5BBe30ffeko9Iro2XHdfEXVjhp6ubT1LrxujhNsphg8Beivrm9YV2j15HEJquv05WFIcoIK7ZZo
	AmTF1BNT259WjXp5a/UcDQIYbvNR9XnpWeujhUBhsHhpgpapt+Q6JsIaGDxCHSvrFCxyPBRPFsz
	ZLCWoJECrKBT3xLLsB1ir4PublRo0aWOXN+d98b/Ctnm1xwWVW7A8xknxwX6qHFOa8IySSw0U=
X-Google-Smtp-Source: AGHT+IFI6H/3hvueZT5ogwYKaGlE41TBa2skYAA82ynhTSyHl8t87EXdYbpmxdU5A8/jzWyDKkV3bA==
X-Received: by 2002:a05:6808:3a09:b0:450:10b:a53a with SMTP id 5614622812f47-450010baa44mr2530751b6e.65.1762445171752;
        Thu, 06 Nov 2025 08:06:11 -0800 (PST)
Received: from ?IPV6:2600:8803:e7e4:500:149c:d223:50dd:7f45? ([2600:8803:e7e4:500:149c:d223:50dd:7f45])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-656c57d5928sm1006344eaf.13.2025.11.06.08.06.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Nov 2025 08:06:11 -0800 (PST)
Message-ID: <5a9346c3-fcc1-42c9-8f4d-8fe579a5c012@baylibre.com>
Date: Thu, 6 Nov 2025 10:06:10 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 1/2] bindings: iio: adc: Add bindings for TI ADS131M0x
 ADCs
To: Oleksij Rempel <o.rempel@pengutronix.de>,
 Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: kernel@pengutronix.de, linux-kernel@vger.kernel.org,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 Andy Shevchenko <andy.shevchenko@gmail.com>, =?UTF-8?Q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>
References: <20251105143814.1807444-1-o.rempel@pengutronix.de>
 <20251105143814.1807444-2-o.rempel@pengutronix.de>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20251105143814.1807444-2-o.rempel@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 11/5/25 8:38 AM, Oleksij Rempel wrote:
> Add device tree bindings documentation for the Texas Instruments
> ADS131M0x analog-to-digital converters. This family includes the ADS131M02,
> ADS131M03, ADS131M04, ADS131M06, and ADS131M08 variants.
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  .../bindings/iio/adc/ti,ads131m08.yaml        | 162 ++++++++++++++++++

For consistency, I always try to name the file after the lowest part number.
Since we usually list things from lowest to highest it makes the file name
match the first item in the compatible: list. Not sure how widely that is
done in general though.

>  1 file changed, 162 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/iio/adc/ti,ads131m08.yaml
> 
> diff --git a/Documentation/devicetree/bindings/iio/adc/ti,ads131m08.yaml b/Documentation/devicetree/bindings/iio/adc/ti,ads131m08.yaml
> new file mode 100644
> index 000000000000..193ac84c41cd
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/iio/adc/ti,ads131m08.yaml
> @@ -0,0 +1,162 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/iio/adc/ti,ads131m08.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Texas Instruments ADS131M0x 2-, 3-, 4-, 6- and 8-Channel ADCs

The more interesting thing to me than the number of channels is that
these are simultaneous sampling. But I guess it says that below already.

> +
> +maintainers:
> +  - Oleksij Rempel <o.rempel@pengutronix.de>
> +
> +description: |
> +  The ADS131M0x are a family of multichannel, simultaneous sampling,
> +  24-bit, delta-sigma, analog-to-digital converters (ADCs) with a
> +  built-in programmable gain amplifier (PGA) and internal reference.
> +  Communication with the ADC chip is via SPI.
> +
> +  Datasheets:
> +  - ADS131M08: https://www.ti.com/lit/ds/symlink/ads131m08.pdf
> +  - ADS131M06: https://www.ti.com/lit/ds/symlink/ads131m06.pdf
> +  - ADS131M04: https://www.ti.com/lit/ds/symlink/ads131m04.pdf
> +  - ADS131M03: https://www.ti.com/lit/ds/symlink/ads131m03.pdf
> +  - ADS131M02: https://www.ti.com/lit/ds/symlink/ads131m02.pdf
> +
> +properties:
> +  compatible:
> +    enum:
> +      - ti,ads131m02
> +      - ti,ads131m03
> +      - ti,ads131m04
> +      - ti,ads131m06
> +      - ti,ads131m08
> +
> +  reg:
> +    description: SPI chip select number.
> +
> +  clocks:
> +    description:
> +      Phandle to the external clock source required by the ADC's CLKIN pin.
> +      The datasheet recommends specific frequencies based on the desired power
> +      mode (e.g., 8.192 MHz for High-Resolution mode).
> +    maxItems: 1

We probably also need to know what is wired to the clock pin so that the driver
can correctly set XTAL_DIS in the CLOCK register.

clock-names:
  description:
    Indicates if a crystal oscillator (XTAL) or CMOS signal is connected (CLKIN).
  enum: [xtal, clkin]


> +
> +  '#address-cells':
> +    const: 1
> +
> +  '#size-cells':
> +    const: 0
> +

In addition to the supplies that Jonathan mentioned, we can also add
an interrupts property for the DRDY output signal.

And a reset-gpios for the reset signal.

These are all trivial bindings we know are going to be correct even if
the driver doesn't use them yet.

> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +
> +patternProperties:
> +  "^channel@([0-7])$":
> +    type: object
> +    $ref: /schemas/iio/adc/adc.yaml#
> +    description: |
> +      Properties for a single ADC channel. The maximum valid channel number
> +      depends on the specific compatible string used (e.g., 0-1 for ads131m02,
> +      0-7 for ads131m08).

I think this description would be better as a comment on the if statements
below so that it isn't so far away from the relevant code.

> +
> +    properties:
> +      reg:
> +        description: The channel index (0-7).
> +        minimum: 0
> +        maximum: 7 # Max channels on ADS131M08
> +
> +      label: true
> +
> +    required:
> +      - reg
> +
> +    unevaluatedProperties: false
> +
> +allOf:
> +  - $ref: /schemas/spi/spi-peripheral-props.yaml#
> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: ti,ads131m02
> +    then:
> +      patternProperties:
> +        "^channel@[0-7]$":

        "^channel@[0-1]$":

Same pattern applies to the similar statements below (that I trimmed from the reply).

> +          properties:
> +            reg:
> +              maximum: 1
> +        "^channel@([2-7])$": false
> +

