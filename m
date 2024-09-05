Return-Path: <devicetree+bounces-100625-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 74CC096E553
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 23:54:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 00DAB1F24087
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 21:54:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 14FFB1AB6CE;
	Thu,  5 Sep 2024 21:54:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="00dnFIal"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f172.google.com (mail-oi1-f172.google.com [209.85.167.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4B1E1AB52C
	for <devicetree@vger.kernel.org>; Thu,  5 Sep 2024 21:54:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725573249; cv=none; b=le6+9IjkcOggdTj9e3cM7byVV51Uh5wwIJsucvAtQM45vYOwx7Y8ah0wV7CiltD5Bvg1EPYR3Xs3iMuuMBMAMIhUNjG0yBvRkiZxWqQVzPS6+Cm4HA6m1NCTItBUVkTeg+mesZ0rU14nkOU+7zMJXcqqDtoPKIBr2y5gy6lFvbw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725573249; c=relaxed/simple;
	bh=2be7+SAEsXZEHHbsITHBviHjHD1nBNMd/+akYCgd/xU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=AIh4KkcpPRJ0tM4k+PnUTaSsCYzX1c6KzTh4zwbJjE4hkzI2r8chYv8AetAdYWR14hR6cBiELN3AkFN+JLm6nLih4G6ikZLStn1eZLoslQhSeb2N4P+kkujW/uesukqp/pGRfJ1Elq1sFSyvem4IWlCB29ieVq2kSIP/g3rfuQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=00dnFIal; arc=none smtp.client-ip=209.85.167.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f172.google.com with SMTP id 5614622812f47-3e0047fcb3aso1359298b6e.0
        for <devicetree@vger.kernel.org>; Thu, 05 Sep 2024 14:54:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1725573246; x=1726178046; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=j5PXpqr7I3C1dpRV4jeptr83ssBb8rr0BKLDBjsIpqo=;
        b=00dnFIalQHkAZX9XaVfHAzrSZAxPylPqstEGNYyBBui5BJX+UMqJ6OVV44kp1k1rHr
         XRDy6W5IoC7tFC4KIYakcllQeh+LIhmM6rRfzqnENo72L0MnGLTYJ4pe0IUeU4cQJjrH
         pOYLvdyvxPfVITi/BtRNpxXp/jRq80sYb5ZxZ2752jN53X8NInbKSv9hXLRZTOOUNY18
         SWwIv9kd1nl7D4GYPmJHQswprkQ1qwXDPEQnON/lv9IwgTYfkxDmpbPEMj9CyaDhd3s9
         Bpn4wbw8vNFoMnyxLWykp7T579Q99580MxEWdIxhELX6q1SUq7Mp9RYyFSrVcMl5AzG6
         MRZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725573246; x=1726178046;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=j5PXpqr7I3C1dpRV4jeptr83ssBb8rr0BKLDBjsIpqo=;
        b=eHj19Uo2ePYDijlF5CUB2c9ovjgciHIjBL7BiMFbaIVz+Rogq/IsF1uyP9SjHWbqro
         mujQqGX2UuSmghP3jiVZToo9dCS3cBu3HUpYYTwa0w6rfdDY4nMn3KhGJSkyTdMqASZd
         UzkWPEC8clBOU8fRTMwDZR2ydy0JUOrlUTujzNHXfqt3x3UlWZt7CujzxnttJwKMjYaR
         n3TmzaD0Cj/56JSnS1hRxB0+VF0FKDg1/WpLAxWoU970ahOUBM4cMUOu0I1rt6djprLI
         31dUmU2Vi/JpcNmLP1Oyk4+3RF/Rj2WWeRpf53xIFTT9fbNiKmpBZ6tYoMBHWPthWNal
         2RGA==
X-Forwarded-Encrypted: i=1; AJvYcCUNPY+MLsLAOM8eh/vPsT6iGmhGTw3cZgI5O39KRHe1UMcrR9VmSTYwzkiqXQvsyHwy9oHl/vehW9ok@vger.kernel.org
X-Gm-Message-State: AOJu0YxxTJm01s6POziHekuqOHT8IAq0QhgRTgJ16GFNMxfPE4R6WrC5
	GtTgwbRh1EGvbqyANJyVVVx2IB4ncsSFMwuOk4Eyllf4C212FCTb16vJSY/nmhE=
X-Google-Smtp-Source: AGHT+IFINzzmQn5LG/KJc+I+Z8f9j4UVRPr0mAD92YX73mUUr5FWrlhp5t4SIuOPmueRdVpzgiaEZQ==
X-Received: by 2002:a05:6808:14c3:b0:3dd:43c3:2c3c with SMTP id 5614622812f47-3e0134155bamr3355381b6e.8.1725573245756;
        Thu, 05 Sep 2024 14:54:05 -0700 (PDT)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3df11865deesm3375153b6e.46.2024.09.05.14.54.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Sep 2024 14:54:05 -0700 (PDT)
Message-ID: <4f522d0c-7ed8-4dd4-83ae-f400d6958c6f@baylibre.com>
Date: Thu, 5 Sep 2024 16:54:04 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 7/8] dt-bindings: iio: adc: add docs for
 AD7606C-{16,18} parts
To: Alexandru Ardelean <aardelean@baylibre.com>, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Cc: jic23@kernel.org, krzk+dt@kernel.org, robh@kernel.org, lars@metafoo.de,
 michael.hennerich@analog.com, gstols@baylibre.com
References: <20240905082404.119022-1-aardelean@baylibre.com>
 <20240905082404.119022-8-aardelean@baylibre.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20240905082404.119022-8-aardelean@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 9/5/24 3:24 AM, Alexandru Ardelean wrote:
> The driver will support the AD7606C-16 and AD7606C-18.
> This change adds the compatible strings for these devices.
> 
> The AD7606C-16,18 channels also support these (individually configurable)
> types of channels:
>  - bipolar single-ended
>  - unipolar single-ended
>  - bipolar differential
> 
> Signed-off-by: Alexandru Ardelean <aardelean@baylibre.com>
> ---
>  .../bindings/iio/adc/adi,ad7606.yaml          | 109 ++++++++++++++++++
>  1 file changed, 109 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml b/Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml
> index 69408cae3db9..57537ab0ec82 100644
> --- a/Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml
> +++ b/Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml
> @@ -14,6 +14,8 @@ description: |
>    https://www.analog.com/media/en/technical-documentation/data-sheets/AD7605-4.pdf
>    https://www.analog.com/media/en/technical-documentation/data-sheets/ad7606_7606-6_7606-4.pdf
>    https://www.analog.com/media/en/technical-documentation/data-sheets/AD7606B.pdf
> +  https://www.analog.com/media/en/technical-documentation/data-sheets/ad7606c-16.pdf
> +  https://www.analog.com/media/en/technical-documentation/data-sheets/ad7606c-18.pdf
>    https://www.analog.com/media/en/technical-documentation/data-sheets/AD7616.pdf
>  
>  properties:
> @@ -24,11 +26,19 @@ properties:
>        - adi,ad7606-6
>        - adi,ad7606-8  # Referred to as AD7606 (without -8) in the datasheet
>        - adi,ad7606b
> +      - adi,ad7606c-16
> +      - adi,ad7606c-18
>        - adi,ad7616
>  
>    reg:
>      maxItems: 1
>  
> +  "#address-cells":
> +    const: 1
> +
> +  "#size-cells":
> +    const: 0
> +
>    spi-cpha: true
>  
>    spi-cpol: true
> @@ -114,6 +124,46 @@ properties:
>        assumed that the pins are hardwired to VDD.
>      type: boolean
>  
> +patternProperties:
> +  "^channel@[1-8]$":
> +    type: object
> +    $ref: adc.yaml
> +    unevaluatedProperties: false
> +
> +    properties:
> +      reg:
> +        description:
> +          The channel number, as specified in the datasheet (from 1 to 8).
> +        minimum: 1
> +        maximum: 8
> +
> +      diff-channels:
> +        description:
> +          Each channel can be configured as a differential bipolar channel.
> +          The ADC uses the same positive and negative inputs for this.
> +          This property must be specified as 'reg' (or the channel number) for
> +          both positive and negative inputs (i.e. diff-channels = <reg reg>).
> +        items:
> +          minimum: 1
> +          maximum: 8
> +
> +      bipolar:
> +        description:
> +          Each channel can be configured as a unipolar or bipolar single-ended.
> +          When this property is not specified, it's unipolar, so the ADC will
> +          have only the positive input wired.
> +          For this ADC the 'diff-channels' & 'bipolar' properties are mutually
> +          exclusive.
> +
> +    required:
> +      - reg
> +
> +    oneOf:
> +      - required:
> +          - diff-channels
> +      - required:
> +          - bipolar

The datasheet (ad7606c-18.pdf) lists the following combinations:

* Bipolar single-ended
* Unipolar single-ended
* Bipolar differential

The logic in the oneOf: doesn't match this.

This I think this would be sufficient:

- if:
    required: [diff-channels]
  then:
    required: [bipolar]

> +
>  required:
>    - compatible
>    - reg
> @@ -170,6 +220,17 @@ allOf:
>          adi,conversion-start-gpios:
>            maxItems: 1
>  
> +  - if:
> +      not:
> +        properties:
> +          compatible:
> +            enum:
> +              - adi,ad7606c-16
> +              - adi,ad7606c-18
> +    then:
> +      patternProperties:
> +        "^channel@[1-8]$": false
> +
>  unevaluatedProperties: false
>  
>  examples:
> @@ -202,4 +263,52 @@ examples:
>              standby-gpios = <&gpio 24 GPIO_ACTIVE_LOW>;
>          };
>      };
> +  - |
> +    #include <dt-bindings/gpio/gpio.h>
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +    spi {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        adc@0 {
> +            compatible = "adi,ad7606c-18";
> +            reg = <0>;
> +
> +            #address-cells = <1>;
> +            #size-cells = <0>;
> +
> +            spi-max-frequency = <1000000>;
> +            spi-cpol;
> +            spi-cpha;
> +
> +            avcc-supply = <&adc_vref>;
> +            vdrive-supply = <&vdd_supply>;
> +
> +            interrupts = <25 IRQ_TYPE_EDGE_FALLING>;
> +            interrupt-parent = <&gpio>;
> +
> +            adi,conversion-start-gpios = <&gpio 17 GPIO_ACTIVE_HIGH>;
> +            reset-gpios = <&gpio 27 GPIO_ACTIVE_HIGH>;
> +            adi,first-data-gpios = <&gpio 22 GPIO_ACTIVE_HIGH>;
> +            standby-gpios = <&gpio 24 GPIO_ACTIVE_LOW>;
> +
> +            adi,sw-mode;
> +
> +            channel@1 {
> +                reg = <1>;
> +                diff-channels = <1 1>;

                   bipolar;

> +            };
> +
> +            channel@3 {
> +                reg = <3>;
> +                bipolar;
> +            };
> +
> +            channel@8 {
> +                reg = <8>;
> +                diff-channels = <8 8>;

                   bipolar;

> +            };
> +
> +        };
> +    };
>  ...


