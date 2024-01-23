Return-Path: <devicetree+bounces-34155-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BFD6838D5D
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 12:25:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 036811F294EE
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 11:25:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B5835D745;
	Tue, 23 Jan 2024 11:25:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QdrhGKjK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFF8F5C5EA
	for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 11:25:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706009112; cv=none; b=GGSk9D7UyTA//F1F71m+0XZxji4YO/XI4vL3Wu6R85NXlVtoYQQhTC6Qk3go6yJnTrRru59VetttqM7OWgiqia+U0AEGxSOiRQT+vW+lMkWVfnCWedoWNYcn4mqG/tLLEoS8KMDYTNjItQ5HqHg1q60JjboG3fQ3swQJra2ckjY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706009112; c=relaxed/simple;
	bh=T+SydeAX1hMQg363+8XxvYR8VPVy+KKREWJwQonft+M=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=iuHNMrXxXlxjRxyhNT+jd1u1O86MyFKQWVFNT1ljXf4WAxZMxi7IkhoZkZ9iAhHf+LJZUbq6z1YqHxLvvztzoJWWUNlGcbNHM542XtQMCn6Vh2RQbCq4l0nBTY2QRSh/uG6dE8K1Xs6GMhH586CSMo71YS7fvVtC5iMiFGS+/BY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QdrhGKjK; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-40eb0836f8dso15013845e9.2
        for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 03:25:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706009108; x=1706613908; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=03LvuhJW0zeAJK06ZWWGfUGBDYLdGLRdxp7Y5UieZfk=;
        b=QdrhGKjKRdiTLgMbdPG30cCyx5wWbTm0g8kINd+w5FHKcSaTcwiiZNUsvUqMBTfCzQ
         fhWFQ0eVYyCoorum+M8/9o2RyZRZNWKadrcpx1LINkn5qvdYVOUBrexcZudxUuXqvGfY
         CwNikni0JVpHAJgiXhYSfBSp1+JVPJ62yIbZ7RrhedmeheojBhe4ybqNvcpYJrlsbnSQ
         m2bTVwwoQT1GZ9fhhLgMhspIfidFroePnxzICkTkncZIfx4vO3+q0MrshXts0lDO4F+Z
         gkzbweTiLSnBh86JhNQSmmimHBE8cLoEkVlk7zo1Sc6DVGqtwzA/fUHNV5+ezqgsvI/c
         NbDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706009108; x=1706613908;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=03LvuhJW0zeAJK06ZWWGfUGBDYLdGLRdxp7Y5UieZfk=;
        b=j7DhaxIep1hq7rL6Z/rATrBF9Zo1ApeOYXprzJwmgdcPuwTwoyJp8tu0/w3I0tBSZO
         Y6wwkg1mSLOz+OiixnvxgOPvJOB3oOxrHWEeMT+ql3G0HZymEB2B8whVd9I6siHWNw2Y
         3HrsIgdgNyrxh7tDIZxkbtw4zC54oLJm9niqdI+gH7fVtUtROabWLMJ3AyQVVszT210J
         14tobCs38LGICk3rExl8xFsQ7ykHsOVYiQnYsVG8YDxQK4qux3FC7XYbEvpt+xTHEb4m
         5yJTBsRe8/0W5RPJk9fq+cjgDzu6nplhxA/My5MDnjR6b7NcVecxYuJlDAo7+zClQozE
         ZV5A==
X-Gm-Message-State: AOJu0YzV3U4rAmSK1KTeZPNWnXDB8HNdWojBQA1feLpWo1qyNV6fRxxy
	HdMk7TlUZNk8+JIqaJoQbgniM620pgGRjmMtPaSmpcOHYnxyiNHEQ+V9VPpvvjY=
X-Google-Smtp-Source: AGHT+IFmmR8Kxv6kbvDyl/8CqhVpSEDPM9cETmsEJ3/LQ8O63rjsztTCTtzDluVGLpBPRdvA6BTQaw==
X-Received: by 2002:a05:600c:3f90:b0:40e:622e:7449 with SMTP id fs16-20020a05600c3f9000b0040e622e7449mr37757wmb.22.1706009108006;
        Tue, 23 Jan 2024 03:25:08 -0800 (PST)
Received: from [192.168.1.20] ([178.197.215.66])
        by smtp.gmail.com with ESMTPSA id j8-20020a05600c190800b0040d7b340e07sm42361437wmq.45.2024.01.23.03.25.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Jan 2024 03:25:07 -0800 (PST)
Message-ID: <92c1a3f3-6b3b-47cb-a4bf-0d20e4af95e5@linaro.org>
Date: Tue, 23 Jan 2024 12:25:04 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 4/4] ASoc: dt-bindings: Create yaml file for pcm6240
 codec driver
Content-Language: en-US
To: Shenghao Ding <shenghao-ding@ti.com>, broonie@kernel.org,
 conor+dt@kernel.org
Cc: robh+dt@kernel.org, andriy.shevchenko@linux.intel.com, kevin-lu@ti.com,
 baojun.xu@ti.com, devicetree@vger.kernel.org, lgirdwood@gmail.com,
 perex@perex.cz, pierre-louis.bossart@linux.intel.com, 13916275206@139.com,
 linux-sound@vger.kernel.org, linux-kernel@vger.kernel.org,
 liam.r.girdwood@intel.com, soyer@irl.hu, jkhuang3@ti.com, tiwai@suse.de,
 pdjuandi@ti.com, j-mcpherson@ti.com, navada@ti.com
References: <20240123111411.850-1-shenghao-ding@ti.com>
 <20240123111411.850-4-shenghao-ding@ti.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240123111411.850-4-shenghao-ding@ti.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 23/01/2024 12:14, Shenghao Ding wrote:
> PCM6240 driver implements a flexible and configurable setting for register
> and filter coefficients, to one, two or even multiple PCM6240 Family Audio
> chips.
> 


> Signed-off-by: Shenghao Ding <shenghao-ding@ti.com>

Subject: ASoC
Subject: rewrite to match something similar to other commits.

> 
> ---
> Change in v1:
>  - Create yaml file for pcm6240 codec driver

I don't understand. v1 is the first version. Against what is this change?

> ---
>  .../devicetree/bindings/sound/ti,pcm6240.yaml | 303 ++++++++++++++++++
>  1 file changed, 303 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/sound/ti,pcm6240.yaml
> 
> diff --git a/Documentation/devicetree/bindings/sound/ti,pcm6240.yaml b/Documentation/devicetree/bindings/sound/ti,pcm6240.yaml
> new file mode 100644
> index 000000000000..59fd48aa4445
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/sound/ti,pcm6240.yaml
> @@ -0,0 +1,303 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +# Copyright (C) 2022 - 2024 Texas Instruments Incorporated
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/sound/ti,pcm6240.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Texas Instruments PCM6240 Family Audio ADC/DAC/Router
> +
> +maintainers:
> +  - Shenghao Ding <shenghao-ding@ti.com>
> +
> +description: |
> +  The PCM6240 Family driver offer a flexible architecture to set the device

Describe hardware, not Linux driver.

> +  number, registers and params for different filters in a bin file.

I don't understand entire sentence in context of hardware.

> +
> +  Specifications about the audio chip can be found at:
> +    https://www.ti.com/lit/gpn/tlv320adc3120
> +    https://www.ti.com/lit/gpn/tlv320adc5120
> +    https://www.ti.com/lit/gpn/tlv320adc6120
> +    https://www.ti.com/lit/gpn/dix4192
> +    https://www.ti.com/lit/gpn/pcm1690
> +    https://www.ti.com/lit/gpn/pcm3120-q1
> +    https://www.ti.com/lit/gpn/pcm3140-q1
> +    https://www.ti.com/lit/gpn/pcm5120-q1
> +    https://www.ti.com/lit/gpn/pcm6120-q1
> +    https://www.ti.com/lit/gpn/pcm6260-q1
> +    https://www.ti.com/lit/gpn/pcm9211
> +    https://www.ti.com/lit/gpn/pcmd3140
> +    https://www.ti.com/lit/gpn/pcmd3180
> +    https://www.ti.com/lit/gpn/taa5212
> +    https://www.ti.com/lit/gpn/tad5212
> +
> +properties:
> +  compatible:
> +    description: |
> +      ti,adc3120: Stereo-channel, 768-kHz, Burr-Brown™ audio analog-to-
> +      digital converter (ADC) with 106-dB SNR.
> +
> +      ti,adc5120: 2-Channel, 768-kHz, Burr-BrownTM Audio ADC with 120-dB SNR.
> +
> +      ti,adc6120: Stereo-channel, 768-kHz, Burr-Brown™ audio analog-to-
> +      digital converter (ADC) with 123-dB SNR.
> +
> +      ti,pcm1690: 113dB SNR, 24-Bit, 192-kHz Sampling, Enhanced Multi-Level
> +      ?S, Eight-Channel Audio Digital-to-Analog Converter with Differential
> +      Outputs.
> +
> +      ti,pcm3120: Automotive, stereo, 106-dB SNR, 768-kHz, low-power
> +      software-controlled audio ADC.
> +
> +      ti,pcm3140: Automotive, Quad-Channel, 768-kHz, Burr-BrownTM Audio ADC
> +      with 106-dB SNR.
> +
> +      ti,pcm5120: Automotive, stereo, 120-dB SNR, 768-kHz, low-power
> +      software-controlled audio ADC.
> +
> +      ti,pcm5140: Automotive, Quad-Channel, 768-kHz, Burr-BrownTM Audio ADC
> +      with 120-dB SNR.
> +
> +      ti,pcm6120: Automotive, stereo, 123-dB SNR, 768-kHz, low-power
> +      software-controlled audio ADC.
> +
> +      ti,pcm6140: Automotive, Quad-Channel, 768-kHz, Burr-BrownTM Audio ADC
> +      with 123-dB SNR.
> +
> +      ti,pcm6240: Automotive 4-ch audio ADC with integrated programmable mic
> +      bias, boost and input diagnostics.
> +
> +      ti,pcm6260: Automotive 6-ch audio ADC with integrated programmable mic
> +      bias, boost and input diagnostics.
> +
> +      ti,pcm9211: 216-kHz Digital Audio Interface Transceiver (DIX)
> +      With Stereo ADC and Routing.
> +
> +      ti,pcmd3140: Four-channel PDM-input to TDM or I�S output converter.
> +
> +      ti,pcmd3180: Eight-channel pulse-density-modulation input to TDM or
> +      I�S output converter.
> +
> +      ti,taa5212: Low-power high-performance stereo audio ADC with 118-dB
> +      dynamic range.
> +
> +      ti,tad5212: Low-power stereo audio DAC with 120-dB dynamic range.
> +    enum:
> +      - ti,adc3120
> +      - ti,adc5120
> +      - ti,adc6120
> +      - ti,dix4192
> +      - ti,pcm1690
> +      - ti,pcm3120
> +      - ti,pcm3140
> +      - ti,pcm5120
> +      - ti,pcm5140
> +      - ti,pcm6120
> +      - ti,pcm6140
> +      - ti,pcm6240
> +      - ti,pcm6260
> +      - ti,pcm9211
> +      - ti,pcmd3140
> +      - ti,pcmd3180
> +      - ti,pcmd512x
> +      - ti,taa5212
> +      - ti,taa5412
> +      - ti,tad5212
> +      - ti,tad5412

And none of them are compatible with something?

> +
> +  reg:
> +    description:
> +      I2C address, in multiple pcmdevices case, all the i2c address
> +      aggregate as one Audio Device to support multiple audio slots.
> +    maxItems: 4
> +    minItems: 1

minItems, then maxItems.

Please open existing bindings and look how it is done there.


> +
> +  reset-gpios:
> +    maxItems: 1
> +    description:
> +      A GPIO line handling reset of the chip. As the line is active high,
> +      it should be marked GPIO_ACTIVE_HIGH.

Drop description, it's obvious. Or write something useful.

> +
> +  interrupts:
> +    maxItems: 1
> +    description:
> +      Invalid only for ti,pcm1690 because of no INT pin.
> +
> +  '#sound-dai-cells':
> +    const: 0
> +
> +required:
> +  - compatible
> +  - reg
> +
> +allOf:
> +  - $ref: dai-common.yaml#
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - ti,pcm1690
> +    then:
> +      properties:
> +        reg:
> +          description:
> +            I2C address, in multiple pcmdevices case, all the i2c address
> +            aggregate as one Audio Device to support multiple audio slots.
> +          maxItems: 4
> +          minItems: 1
> +          items:
> +            minimum: 0x4c
> +            maximum: 0x4f

Why do you repeat the reg constraints? This does not seem needed.

> +        interrupts: false
> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - ti,pcm3140
> +              - ti,pcm5140
> +              - ti,pcm6140
> +              - ti,pcmd3180
> +    then:
> +      properties:
> +        reg:
> +          description:
> +            I2C address, in multiple pcmdevices case, all the i2c address
> +            aggregate as one Audio Device to support multiple audio slots.
> +          maxItems: 4
> +          minItems: 1

Drop entire if

> +          items:
> +            minimum: 0x4c
> +            maximum: 0x4f
> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - ti,adc3120
> +              - ti,adc5120
> +              - ti,adc6120
> +              - ti,pcm3120
> +              - ti,pcm5120
> +              - ti,pcm6120
> +              - ti,pcmd3140
> +    then:
> +      properties:
> +        reg:
> +          description:
> +            I2C address.

Just drop description, it is obvious.

> +          maxItems: 1
> +          items:
> +            maximum: 0x4e
> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - ti,dix4192
> +    then:
> +      properties:
> +        reg:
> +          description:
> +            I2C address, in multiple pcmdevices case, all the i2c address
> +            aggregate as one Audio Device to support multiple audio slots.
> +          maxItems: 4
> +          minItems: 1
> +          items:
> +            minimum: 0x70
> +            maximum: 0x73
> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - ti,pcm6240
> +              - ti,pcm6260
> +    then:
> +      properties:
> +        reg:
> +          description:
> +            I2C address, in multiple pcmdevices case, all the i2c address
> +            aggregate as one Audio Device to support multiple audio slots.
> +          maxItems: 4
> +          minItems: 1
> +          items:
> +            minimum: 0x48
> +            maximum: 0x4b
> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - ti,pcm9211
> +    then:
> +      properties:
> +        reg:
> +          description:
> +            I2C address, in multiple pcmdevices case, all the i2c address
> +            aggregate as one Audio Device to support multiple audio slots.
> +          maxItems: 4
> +          minItems: 1
> +          items:
> +            minimum: 0x40
> +            maximum: 0x43
> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - ti,taa5212
> +              - ti,taa5412
> +              - ti,tad5212
> +              - ti,tad5412
> +    then:
> +      properties:
> +        reg:
> +          description:
> +            I2C address, in multiple pcmdevices case, all the i2c address
> +            aggregate as one Audio Device to support multiple audio slots.
> +          maxItems: 4
> +          minItems: 1
> +          items:
> +            minimum: 0x50
> +            maximum: 0x53
> +additionalProperties: false
> +
> +examples:
> +  - |
> +   #include <dt-bindings/gpio/gpio.h>
> +   i2c {
> +     /* example for two devices with interrupt support */
> +     #address-cells = <1>;
> +     #size-cells = <0>;
> +     two: pcmdevice@48 {

Node names should be generic. See also an explanation and list of
examples (not exhaustive) in DT specification:
https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation


> +       compatible = "ti,pcm6240";
> +       reg = <0x48>, /* primary-device */
> +            <0x4b>; /* secondary-device */
> +       #sound-dai-cells = <0>;
> +       reset-gpios = < &gpio1 10 GPIO_ACTIVE_HIGH >;

Drop redundant spaces.



Best regards,
Krzysztof


