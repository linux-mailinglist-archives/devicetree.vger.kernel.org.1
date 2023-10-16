Return-Path: <devicetree+bounces-8782-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 444777CA064
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 09:18:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6755B1C2085A
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 07:18:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9CF4215ACA;
	Mon, 16 Oct 2023 07:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="o6G/wNZq"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D686A156D2
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 07:18:51 +0000 (UTC)
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DB41CD9
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 00:18:49 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-4056ce55e7eso41208805e9.2
        for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 00:18:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697440728; x=1698045528; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=CAW6S3qn7GXw+atrFuieouqd53kTHVX/zKX5RgMnUOs=;
        b=o6G/wNZqR4MiU8MbzUIuA09I5WqWQjo9u4loVo5zhzWdyqbC05GUw+0/K0Ycu9UDru
         ucVM3oU7knE9yDovbei6pmlZnsgyMic6J11aFo7gf6TvbiubjB3/BOUvphKBMyf42Voc
         WY1Ny/lEm8We1nTuGTam8qWxxOkwizPWCHEKP+GOr8ypArdkfLa03bS5kxGH3QyWfhd9
         AQ+cHoxUPx2c0aTatCfQa306GBaqky6+9QB7B+0Kx+yIZaxMzitsy/0MFHfiGPJ3DqTN
         UJSdcQdCn7FDG3Zl94EzRSMgLeT1p3MY17NhglbNIXB84BttLZ+HIy2zwzbzs1zoR023
         ugmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697440728; x=1698045528;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CAW6S3qn7GXw+atrFuieouqd53kTHVX/zKX5RgMnUOs=;
        b=fp6HfTeYHKKxYH6RFBSeBjaYg2Mr/1TYVah8a2//ezvl3GBp0NXoWJCtRXKT9TWnea
         f3EtfJVMVyzM76CRrYHW3cUSxFhmmu3pkBPGzxQ7+9G4GC4NgmeAi/K/u+27DACrgtTz
         WOopLsq6BMauBpVChz+3GSyr//9w9WvgvVEeH3hcKGZfexZNrVmq6zb2Y2pOJd6CasUn
         G0LzvtJEYMYpcUVmiRi0rpbDkLY0J4HCE+6gyPYiYzS4A1R9dgaJ7BzcEWo7mwGAFsKC
         5U/dyPNVB5HKPGBqVIRnj5TfUFjh5ocHm5lHip3qe0Z/nVKgdJDNc2g+UJM1DZomlAku
         E6yA==
X-Gm-Message-State: AOJu0Yz8TbOAof3YH8BjUCpiFd37YyNJB3MNagG1qT9lEhfZD3jE3zle
	zZdfzipnk1/ohI8sNt8JMjk2di/PcyB9+IYsni0=
X-Google-Smtp-Source: AGHT+IHVRyf/P9Fro8MC5JKJhp2zv1kxfKmKv6pNPH9m4nPvX1nIlQt6VtzOKrJIyMw0JW5OWstFbA==
X-Received: by 2002:adf:9bc8:0:b0:32d:8220:8991 with SMTP id e8-20020adf9bc8000000b0032d82208991mr10663976wrc.8.1697440728259;
        Mon, 16 Oct 2023 00:18:48 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.154])
        by smtp.gmail.com with ESMTPSA id t11-20020a5d534b000000b003232380ffd5sm26608471wrv.106.2023.10.16.00.18.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Oct 2023 00:18:47 -0700 (PDT)
Message-ID: <2ae8c910-3fa5-4835-9d2a-fbab64d3aabf@linaro.org>
Date: Mon, 16 Oct 2023 09:18:46 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/2] dt-bindings: iio: adc: ti,ads7038: Add description
 for ADS7038
To: werneazc@gmail.com, jic23@kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, lars@metafoo.de
Cc: devicetree@vger.kernel.org, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Andre Werner <andre.werner@systec-electronic.com>
References: <20231016070318.28355-1-andre.werner@systec-electronic.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20231016070318.28355-1-andre.werner@systec-electronic.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 16/10/2023 09:02, werneazc@gmail.com wrote:
> From: Andre Werner <andre.werner@systec-electronic.com>
> 
> Add basic description for ADS7038 ADC devices.
> The devicetree adds the following device specific options:
> 
> - average-samples: Program device's programmable average filter.
> - crc-enabled: Enable the CRC check for SPI transfers. Sadly, this
>   option has currently no effect in the driver.
> - status-enabled: Enable the appending of the device's status on the
>   measure value transmission.
> - gpio-controller: Sadly function not implemented yet in the driver.
> 
> Signed-off-by: Andre Werner <andre.werner@systec-electronic.com>
> ---
> v3
> - Delete ADS7138 compatible and comments.
> - Add options for CRC, status and average samples as well as
>   gpio-controller.
> - Update example.
> - add regulator for digital IO voltage.

You received several build errors before. Did you really test it now,
because looks like not.

> ---
>  .../bindings/iio/adc/ti,ads7038.yaml          | 83 +++++++++++++++++++
>  1 file changed, 83 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/iio/adc/ti,ads7038.yaml
> 
> diff --git a/Documentation/devicetree/bindings/iio/adc/ti,ads7038.yaml b/Documentation/devicetree/bindings/iio/adc/ti,ads7038.yaml
> new file mode 100644
> index 000000000000..fc1054ca93f7
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/iio/adc/ti,ads7038.yaml
> @@ -0,0 +1,83 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/iio/adc/ti,ads7038.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Texas Instruments ADS7038 and similar ADCs
> +
> +maintainers:
> +  - Andre Werner <andre.werner@systec-electronic.com>
> +
> +description: |
> +  Family of 7 channel, 12 bit ADCs with SPI interface.
> +
> +  Datasheet: https://www.ti.com/lit/gpn/ads7038
> +
> +properties:
> +  compatible:
> +    enum:
> +      - ti,ads7038
> +
> +  reg:
> +    maxItems: 1
> +
> +  spi-max-frequency:
> +    maximum: 60000000
> +
> +  avdd-supply:
> +    description: Analog supply voltage, also used as the reference voltage to the ADC.
> +
> +  dvdd-supply:
> +    description: Digital I/O supply voltage.
> +
> +  average-samples:
> +    description: |
> +      If specified ADC is configured for avaraging measurements (OSR_CFG Register).
> +      This effects output format for measurement and sampling time.
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    enum: [0, 1, 2, 3, 4, 5, 6, 7]
> +
> +  status-enabled:
> +    description: |

Do not need '|' unless you need to preserve formatting.

> +      If specified ADC transmits chip status (DATA_CFG Register).

Missing type.

You described the desired Linux feature or behavior, not the actual
hardware. The bindings are about the latter, so instead you need to
rephrase the property and its description to match actual hardware
capabilities/features/configuration etc. Why this is a property of a board?

> +
> +  crc-enabled:
> +    description: |
> +      Checking the integrity of the data bits exchanged over
> +      SPI interface (GENERAL_CFG Register).

Same comment.



Best regards,
Krzysztof


