Return-Path: <devicetree+bounces-141254-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 86B5CA20300
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 02:28:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CE1C63A7791
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 01:28:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 293B613C9DE;
	Tue, 28 Jan 2025 01:28:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="igGL8kU0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f179.google.com (mail-oi1-f179.google.com [209.85.167.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77BF83FB0E
	for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 01:28:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738027698; cv=none; b=Fc0COg6lZkP1TXxSzjVQ3BJqR41hutZjXUCE9bvjK6IlGs6QP8A0fvX4sCIx5TA3ggRJj0Q2qkvI5RLDzXsJA3RwsMQ0lL38Y1soRNPgFWR6qHFO7H60ORk3jLW5glytHYz0rB5EkT7Q9My46GVeKD8xJou6p4MAT89stMJgiro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738027698; c=relaxed/simple;
	bh=VXrB4S66pf6c+U23lA5PLTvw3c8v//Qda/nnrf9Od9s=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hsj2g0bJ6SyTxZboUMty5Zd7j2CKmLp31RF7QDVYHM7NlVMXnJ4MFfuK691GXSNugiL8fy0afN07xp3iOo4r+0KbcbBuicP1THWebWAJ21Uxp8aDCXlz7odnMidkh100D+XBw1tjIUMOaUcxAYNyj0oIsIU0zZp+ozKKpD5WXW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=igGL8kU0; arc=none smtp.client-ip=209.85.167.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f179.google.com with SMTP id 5614622812f47-3eb9a0a2089so2849823b6e.1
        for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 17:28:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1738027693; x=1738632493; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ac65fKHTUKE/1eCwdKyDhngw+94jkSzHgGJ/YF/+7HM=;
        b=igGL8kU0gLtHsz9Bgb4beLB7Ps9cIg8BFNPdjjTB0XjFFRYx6YsY/4y1nGSh/KYXGa
         oJVSovL1JcwcHjBXiku5xQmEz2zBjGlxv6JMEImN0SnJJsN4Yh7OTEuSX9ee26K7ftYj
         koN/J69QOpCQzOom27iG2b8j7wSSn+UapXNDpS7TD6vghBaFZuNQvtw3R10ccURcOSbO
         GNwoQ6YKrbqOQhClFIo8pn/bnSHv/p0vor0gCnpbyH9srNOB/NcHOrSydlNLW1ofGYSt
         Q5jfIyII1fgjd9D+MoFf6ba7TAQ+svzWYtsFil7XG5qOJlaX4BG497f6N0bTQhFDXot8
         6XMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738027693; x=1738632493;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ac65fKHTUKE/1eCwdKyDhngw+94jkSzHgGJ/YF/+7HM=;
        b=AM9AwFFrunbi1/acILEkA/HYa04asGTUEk+Rpjazab2fpvRVsh6gv34OIVjk51l6q5
         rDPWDXt0Ep2TkrozTy1kHQGWiKuLU/xtiXnmjfQU0p8J8AmsfOBlLA4m2ZAFJQ4+fWJ4
         akBJ0BEceF9gIlwialpoD8gFWNpSB6oYAxw6r45ba66d32n7/6SIDB5P4dsCVQq3O2PB
         +059ashDxhnvTKDFZ+DPnuRrWayrfZUdxwS9qejoUI7iLefEjkDX28YPU4Geqs73//zb
         w8nQ40g1ub4+7YzOUoW04BEUpZD4Hx7CqJbIG0bc14uaPSEjLP66+e3eVEzgphFj2Syq
         Idfg==
X-Forwarded-Encrypted: i=1; AJvYcCUSJtN7NIrVNXKJIjZYMqNmxdQxYYJN64ZnCTNS7IrXVNPGkdmG+OL2+u97EdyX0wItgu4O7avX1duD@vger.kernel.org
X-Gm-Message-State: AOJu0YxZL8IuJfHQGsP6dz2YwKiNnvC9S/9L7h55lpLqBsjjBa+L1gGt
	vr5Tkm+DYYZaO8ZO2hgBBvAViTwzyP0mmWGzRoDoTwXC22sXYvWomAyoxbbq62I=
X-Gm-Gg: ASbGncv0hyIV3TbT/9PpCIfWr4pr9eXyfYu5UybvcF5FQSda8dwvbVU/UW+8YErhTvr
	q3tId8WHQThQtpmnPsN+xdK7O2pjwhwsHFxuK5XblL0uunH+0mHBI7nJZJQT/1knSh/1CFCmVZn
	/ReRnhsit3ugWG/2K4EtR7D3knKqZDYJa2UpV9vyzOm+wmr+tlzANrENP689wH5DPjdc1PCqEDp
	dM5DmO6KMubxPNETlmrSoF0u9tNwWyuQoR1Vq2Nijjm6XVzhCZe7/wX0wxkFsJaDQnkyUb0dEdj
	gLnm/fCueKFrJ/6Q2yTH0Y7b5b3/7M94N06b0dEYWg==
X-Google-Smtp-Source: AGHT+IFLttZ7bPiGKGwxjYLDxbYMu4i4ZnM024nD8AWDxHuuwltBvNIULsVErQbskGLJ1ZxEtnu9xQ==
X-Received: by 2002:a05:6808:2127:b0:3f0:81ce:b65e with SMTP id 5614622812f47-3f19fc92f35mr27746186b6e.22.1738027693397;
        Mon, 27 Jan 2025 17:28:13 -0800 (PST)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3f1f0981130sm2808211b6e.36.2025.01.27.17.28.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Jan 2025 17:28:12 -0800 (PST)
Message-ID: <55eb1af7-775e-4f3d-8532-0f0300057a75@baylibre.com>
Date: Mon, 27 Jan 2025 19:28:10 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 04/16] dt-bindings: iio: adc: ad7768-1: add VMC output
 property
To: Jonathan Santos <Jonathan.Santos@analog.com>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: lars@metafoo.de, Michael.Hennerich@analog.com,
 marcelo.schmitt@analog.com, jic23@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, jonath4nns@gmail.com,
 marcelo.schmitt1@gmail.com
References: <cover.1737985435.git.Jonathan.Santos@analog.com>
 <e17337bc3b0f2e95d3d4f7b6daa7755881e11fba.1737985435.git.Jonathan.Santos@analog.com>
From: David Lechner <dlechner@baylibre.com>
Content-Language: en-US
In-Reply-To: <e17337bc3b0f2e95d3d4f7b6daa7755881e11fba.1737985435.git.Jonathan.Santos@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 1/27/25 9:12 AM, Jonathan Santos wrote:
> The AD7768-1 provides a buffered common-mode voltage output
> on the VCM pin that can be used to bias analog input signals.
> 
> Add adi,vcm-output to enable the configuration of the VCM output
> circuit.
> 
> Signed-off-by: Jonathan Santos <Jonathan.Santos@analog.com>
> ---
> v2 Changes:
> * New patch in v2.
> ---
>  .../bindings/iio/adc/adi,ad7768-1.yaml           | 10 ++++++++++
>  include/dt-bindings/iio/adc/adi,ad7768-1.h       | 16 ++++++++++++++++
>  2 files changed, 26 insertions(+)
>  create mode 100644 include/dt-bindings/iio/adc/adi,ad7768-1.h
> 
> diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ad7768-1.yaml b/Documentation/devicetree/bindings/iio/adc/adi,ad7768-1.yaml
> index da05c8448530..e26513a9469b 100644
> --- a/Documentation/devicetree/bindings/iio/adc/adi,ad7768-1.yaml
> +++ b/Documentation/devicetree/bindings/iio/adc/adi,ad7768-1.yaml
> @@ -59,6 +59,15 @@ properties:
>        In the absence of this property, Synchronization over SPI will be
>        enabled.
>  
> +  adi,vcm-output:
> +    description: |
> +      Configures the Common-Mode Voltage Output. The VCM is provided by an
> +      amplifier external to the AD7768-1 and can be used as common-mode voltage
> +      by the ADC. There are 8 output voltage options available, and the macros
> +      for these values can be found at dt-bindings/iio/adi,ad7768-1.h
> +    items:
> +        enum: [0, 1, 2, 3, 4, 5, 6, 7]
> +

I was expecting this to use regulator provider bindings rather than using a
custom property. Then the regulator consumer could request the voltage that
they need. But maybe that is more complicated than what is practical.

If we don't need regulator bindings, then this should be vcm-microvolt to use
standard units [1].

[1]: https://github.com/devicetree-org/dt-schema/blob/main/dtschema/schemas/property-units.yaml

>    reset-gpios:
>      maxItems: 1
>  
> @@ -132,6 +141,7 @@ examples:
>              gpio-controller;
>              #gpio-cells = <2>;
>              vref-supply = <&adc_vref>;
> +            adi,vcm-output = <AD7768_VCM_OUTPUT_AVDD1_AVSS_2>;
>              interrupts = <25 IRQ_TYPE_EDGE_RISING>;
>              interrupt-parent = <&gpio>;
>              adi,sync-in-gpios = <&gpio 22 GPIO_ACTIVE_LOW>;
> diff --git a/include/dt-bindings/iio/adc/adi,ad7768-1.h b/include/dt-bindings/iio/adc/adi,ad7768-1.h
> new file mode 100644
> index 000000000000..469ea724c0d5
> --- /dev/null
> +++ b/include/dt-bindings/iio/adc/adi,ad7768-1.h
> @@ -0,0 +1,16 @@
> +/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
> +
> +#ifndef _DT_BINDINGS_ADI_AD7768_1_H
> +#define _DT_BINDINGS_ADI_AD7768_1_H
> +
> +/* Sets VCM output to (AVDD1 − AVSS)/2 */
> +#define AD7768_VCM_OUTPUT_AVDD1_AVSS_2	0x00
> +#define AD7768_VCM_OUTPUT_2_5V		0x01
> +#define AD7768_VCM_OUTPUT_2_05V		0x02
> +#define AD7768_VCM_OUTPUT_1_9V		0x03
> +#define AD7768_VCM_OUTPUT_1_65V		0x04
> +#define AD7768_VCM_OUTPUT_1_1V		0x05
> +#define AD7768_VCM_OUTPUT_0_9V		0x06
> +#define AD7768_VCM_OUTPUT_OFF		0x07
> +
> +#endif /* _DT_BINDINGS_ADI_AD7768_1_H */


