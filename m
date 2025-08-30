Return-Path: <devicetree+bounces-210821-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DF57DB3CE7E
	for <lists+devicetree@lfdr.de>; Sat, 30 Aug 2025 20:02:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 98269207FFF
	for <lists+devicetree@lfdr.de>; Sat, 30 Aug 2025 18:02:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E287F2D8372;
	Sat, 30 Aug 2025 18:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="d4kFHbRn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f51.google.com (mail-oa1-f51.google.com [209.85.160.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8D4E25BEE5
	for <devicetree@vger.kernel.org>; Sat, 30 Aug 2025 18:02:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756576953; cv=none; b=dHB6l2x/IdTTAJIA6AtgT8j2MxMdg+vFQMR1RJ8QU/ZCkJZ+l1sFzsfLYmaKehrB4dSgLihSKmCW4vMx0nQUQOY4GSVDK1a00Q307CTbHWle2n4f6RjqNQXoL+dMymRCbY5u8B+ucj5/CKSoP5/wqYz70/BNj1xaVP/VwUHbqpM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756576953; c=relaxed/simple;
	bh=LL1hd9q8LJpTq1VIPJ6jPwhtJlsQGlDix5UjkykB4Z0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=i6ymWSbd6m+7Bbs/7kaWCDa+krlNVXx1srhZz3OHdM+tOrCfb6sWhAPjGuCElOo5fiTF8EXmLmNQ+YU4clRGHXFVOSJQdRGgZFXYrJ8egoBw71rWokYGnRXw1vYTzfgLeE5p/ZubjfOjVHSQloGQMADB0gVR/Ll+kz/hzuO5lDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=d4kFHbRn; arc=none smtp.client-ip=209.85.160.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oa1-f51.google.com with SMTP id 586e51a60fabf-30cceb07f45so3219154fac.2
        for <devicetree@vger.kernel.org>; Sat, 30 Aug 2025 11:02:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1756576950; x=1757181750; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PD2EKFpAobF4U0TIuLMjpEcO1H/Nnyn+f8Dfu+DnkNI=;
        b=d4kFHbRnKQoKXBWL1zWyAwAs9XrZhybRacslpYsfOE/8svlNjSAa8Db/NCLXxiJRfA
         J2QD4/foHnDmHwjuCSsOjuJdbemw7PsoCS5Uu6HXPTYCRCgcgnVvheVSKQyQpip6/XBP
         MXz5Fm4B1McmU3Wff8PnTJzziO8LqKydzV6W7lgjTSLztkWWi8KoF8jJh5zTod8q8sIa
         wdfUEv0LJL8woK7iGwOs86dgFktN/7oUDsaxpR4w8skkPSaKoxIEI7ZTIEdD0ImcJ/2B
         NNHGtdWgXgCxV140u8AZQooK2BGzWxAuHzVH5fzMh7d38ELATTJP4PjnOCL/xLmLDsBH
         4Piw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756576950; x=1757181750;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PD2EKFpAobF4U0TIuLMjpEcO1H/Nnyn+f8Dfu+DnkNI=;
        b=H5S2jZFkiThGP8nNFZPHjz0VITPVoEfczL0VtFT4vxiBOR4/PpaQCun4GDkotlZYyL
         p3rlhO097AP12cNGJIXTB4VUWh2jifPOckJosnkfL6sMiihRHASHNSqmMzChktnOlzva
         YHiGdQ8RzrQOhw1EdzX4W5tdSAK5kri3fKSx8DINE0FyuSD0p+Utfo023lY8vqHhDgwr
         W7UqI5RO1E0ML4+lhbKj0727WanNvxsZ0SAnzkpGaMcO3mdzrPgsdoig6ozuudaE3MBc
         yr2a5jJNekfmt20YblUECNBYnowsa0bvtygSlwbUubUl3lqY/GodFql0N6tkZOaQYans
         vI2A==
X-Forwarded-Encrypted: i=1; AJvYcCWYTOmzyyqw5zDnAldXix4zuDBaxP2JLTZt2D5mpYLONHTqb6a6T+amW1timvvu9VAG3RZoib8wMcnJ@vger.kernel.org
X-Gm-Message-State: AOJu0Ywu0CX2bVN+hZOBcPMmrCD2as5FhkF51bBa8YbFt655CUG9op1E
	20Z0tkr9L7zz4Aj4jJrUFSe30TBHROwGLE1JIC4naIGgmv1vgqbdWn9XTXr5JNq+LJU=
X-Gm-Gg: ASbGncs0DR2f2UxJZxJFrMGi3C22gDp7t4w294Bjd6h9LqJ8Y9s1ipy5cxyTefO5bbH
	2hQ8anREBxGabzsNEyTJ7TSbqIsETRCBjU7bc5mo9d2rpQ+BV9jYuyAOtCQepldtfdcBHPTszVN
	bVjetaDHRWED2WpTtBXHpuMexySr2hFuS/EyEykVciWc9/EVtr9annxJLLHh3GX+QPIG43AvDnK
	6XKj0frj0hr2EKiKtWG/tVMEOByfzzyfOEavM2QYEL2gCFNI2l6N9eXzsrKN/qsXcScSkc9LQR+
	rWP7LLMlmr038d3V8EKwYvkeykvmclz4MzGdsWxPjUbwe+SilNA8/SFlHHHB/E/AIo+9KUn8rqh
	odpVnKduMQEtMxno0VeqErfSS05wfbos2y/a0u/zZn5qrljb7HjVoI3HyfJqvaR3GZTpIX1HJQI
	5IOZTDNViQOA==
X-Google-Smtp-Source: AGHT+IGSJvFvC9dcmKaGf9glwESPFKs7sboRW3GSWHC52Tz6jlzKsP6xrkD7Hc7UHEkT8qvw/3aY5Q==
X-Received: by 2002:a05:6870:c0d:b0:315:b768:bd23 with SMTP id 586e51a60fabf-319633c79a1mr1298016fac.34.1756576949951;
        Sat, 30 Aug 2025 11:02:29 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:f7b4:dfbd:5110:c59d? ([2600:8803:e7e4:1d00:f7b4:dfbd:5110:c59d])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-3196d2a7f3csm392769fac.8.2025.08.30.11.02.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 30 Aug 2025 11:02:29 -0700 (PDT)
Message-ID: <033e8639-67db-4397-b8c1-d1b7774eb9fe@baylibre.com>
Date: Sat, 30 Aug 2025 13:02:28 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 10/15] dt-bindings: iio: adc: adi,ad4030: Add
 adi,clock-mode
To: Marcelo Schmitt <marcelo.schmitt@analog.com>, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-spi@vger.kernel.org
Cc: jic23@kernel.org, Michael.Hennerich@analog.com, nuno.sa@analog.com,
 eblanc@baylibre.com, andy@kernel.org, corbet@lwn.net, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, broonie@kernel.org,
 Jonathan.Cameron@huawei.com, andriy.shevchenko@linux.intel.com,
 ahaslam@baylibre.com, sergiu.cuciurean@analog.com, marcelo.schmitt1@gmail.com
References: <cover.1756511030.git.marcelo.schmitt@analog.com>
 <1acb071f7140c9d44ed616a9eaea00b0ee423164.1756511030.git.marcelo.schmitt@analog.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <1acb071f7140c9d44ed616a9eaea00b0ee423164.1756511030.git.marcelo.schmitt@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 8/29/25 7:43 PM, Marcelo Schmitt wrote:
> AD4030 and similar designs support three different options for the clock
> that frames ADC output data. Each option implies a different hardware
> configuration for reading ADC data. Document AD4030 clock mode options.
> 
> Co-developed-by: Sergiu Cuciurean <sergiu.cuciurean@analog.com>
> Signed-off-by: Sergiu Cuciurean <sergiu.cuciurean@analog.com>
> Signed-off-by: Marcelo Schmitt <marcelo.schmitt@analog.com>
> ---
>  .../devicetree/bindings/iio/adc/adi,ad4030.yaml      | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ad4030.yaml b/Documentation/devicetree/bindings/iio/adc/adi,ad4030.yaml
> index bee85087a7b2..1e4e025b835f 100644
> --- a/Documentation/devicetree/bindings/iio/adc/adi,ad4030.yaml
> +++ b/Documentation/devicetree/bindings/iio/adc/adi,ad4030.yaml
> @@ -78,6 +78,18 @@ properties:
>    interrupt-names:
>      const: busy
>  
> +  adi,clock-mode:
> +    $ref: /schemas/types.yaml#/definitions/string
> +    enum: [ spi, echo, host ]
> +    default: spi
> +    description:
> +      Describes how the clock that frames ADC data output is setup.
> +      spi  - Spi-compatible. Normal SPI operation clocking.
> +      echo - Echo-clock. Synchronous clock echoing to ease timing requirements
> +             when using isolation on the digital interface.
> +      host - Host. The Host clock mode uses an internal oscillator to clock out
> +             the data bits. In this mode, the spi controller is not driving SCLK.
> +
>  required:
>    - compatible
>    - reg

I think this would make sense as a common property in spi-peripheral-props.yaml
as this is something that is not specific to just this ADC and also requires
a supporting SPI controller with the matching wiring.

I would also tweak the names and descriptions a bit to describe how it is wired
rather than how it is used.

  spi-sclk-source:
    enum: [ controller, echo, peripheral ]
    default: controller
    description: |
      Indicates how the SCLK is wired.
      controller: The SCLK line is driven by the controller (typical SPI bus).
      echo: The SCLK line is driven by the controller and the peripheral echos
        the clock back to an input on the controller on a second line.
      peripheral: The SCLK line from the controller is not connected to the
        peripheral and an independent clock output driven by the peripheral is
        connected to an input on the controller.



