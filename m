Return-Path: <devicetree+bounces-210805-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9827BB3CDB5
	for <lists+devicetree@lfdr.de>; Sat, 30 Aug 2025 19:02:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D5C751B2852B
	for <lists+devicetree@lfdr.de>; Sat, 30 Aug 2025 17:02:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1AAF72D29D1;
	Sat, 30 Aug 2025 17:01:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="Jx+oKwz6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f46.google.com (mail-oa1-f46.google.com [209.85.160.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C47B2D29C2
	for <devicetree@vger.kernel.org>; Sat, 30 Aug 2025 17:01:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756573307; cv=none; b=J4Fz4bFrrBhRCnpKOmFr0Wwh6iGqOPblNOn5GQdpsgLgrY+kiQnZPzZNgxVfVMdj4v4oFB972sP8kYWx1IS4/b1/tv6GantCWzNqFOgswryqY+joKYbE3hSJ7v4FG6WQwh4tOLSUrVNoPc9EcTc025k3LL3X+sei4NkRYOLWnnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756573307; c=relaxed/simple;
	bh=Mm6dPzbCGrYp7NOKQqOt4c6Q9WVh5eKB/fmj+/iIeGE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Rf6z1ZKI98fWQpviQSYnHuTwcQkGflZN6oOx4snBGIHJFSZv8kK7bS3QGEHqqd4X7GrFBypjELL2fsYb2KWEXBV9rvG8Q1cI4ysUPn4MhTVIc5FChNndHPRv0TBpcF+5aiKHDHPioaEVpuG9lz7AhZApRIBtznkP/RlHoh/4SKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=Jx+oKwz6; arc=none smtp.client-ip=209.85.160.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oa1-f46.google.com with SMTP id 586e51a60fabf-30cce86052cso1825178fac.1
        for <devicetree@vger.kernel.org>; Sat, 30 Aug 2025 10:01:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1756573303; x=1757178103; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lZ8rHo3FcLWq24Fv6wUv0Ic3V8ZID+9DE16OLXV2DO8=;
        b=Jx+oKwz6+kv2SLQ8Mbk/L/2Ii/I6yOtwycksxtw1L1OdfkD/P2ytT46dddb8C0yepv
         f3+QCKycQcBm/ugbheXDQ33NR39lpy+oOaB9zr2jZ5+vDl8SfSV/wlhe4drBm0eBCAUb
         oEtczSfmYcXpqJ53XpSgz/ZPvUv3lU7EbJlDq9o4JImYuqWLlpxYqnxqOqyt8afB9iV5
         7NOFGnT/P3I41nn2Iq7ak2IxSGiDG4HdY0UFQjI720nVI19DVASASFTqJE6Acb/9MqX2
         2QuYrQ6G2D2AJe8z5PsNqng6hQt3oI0XUV2xR33rpuiRP924EUa0AXCzn06LsPMtcfqP
         MM8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756573303; x=1757178103;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lZ8rHo3FcLWq24Fv6wUv0Ic3V8ZID+9DE16OLXV2DO8=;
        b=u9961wPXuHstCOplMTfTwwKO1IcIqxT5CqnKG7l1B0NuAIE5iRCJpUDWr7MczWmpdf
         4a6Xt5zvEpf9Yy15CzVVyH0wgC2zdMHWYeZUDQ5vwl1oOYgFcNfWXbfsGrR3VaxWFxvD
         LCcHWY61gQA7TQWJTN43ApWY5k73eUIZeabhwCTWAndUbTKrgtPq1ka7NBXTBZaZB2Pe
         5YMg0ML64LTCG+kTwjkwSApL7t4/jIT9OQv02VHaYSqor59T3QqCJwrg9eUuinR+Rgr3
         X78QUhH7whlFU6shoMR3dO02V7bEc0pfO9wtx9RqzRjFZZ+tMTWEkh6dk8PbSHdDSa1a
         h6MA==
X-Forwarded-Encrypted: i=1; AJvYcCUH/RyqPMFYMlzkxPytOR5HQKa3E4FwMIga6/F9pfuEEjJ9JmX05KHFz4MMTW3REaBDIvd31WszIFd4@vger.kernel.org
X-Gm-Message-State: AOJu0YxTKUBaNOdqYEn6srWweHZ6Y0MoIiWJKg088cFqveZWFBCACPfc
	ag2Uu6yq5pEXL7QkvvLJD3O/7cGycz8XOvDoMvnnoznbLT8tXuviAFuxkGSfEZLEhV4=
X-Gm-Gg: ASbGncs7n1ruthuoA1jgiSNU50qWcCE5+3gBbIqfKRhEuC/3iQwH7wBRVVoqqkblSIN
	I5I6/S9EEPxJO7de3ZLzVVlRvB9gyszFbLCzFWREzVr3bzENOAUXrIebb6ptB5B4GDV+U2cHGp4
	Y9w8ci3GBlJfMZxJMw07IDrTVbHwOD8g73V5chQrD4bDuJR9UTzF4oQrBKNM/wUhLUi1DzlGgve
	iEbTYQg1QmibYCiecDqebvEWxfZ2cb9grOYhI5LLSOTbvl+m3yWPNOriTk8bRmI7cx6Ipv8WisR
	+0h15AV7oiYn3yHgfulNn+EVwsevJJPQiLZpp0alRh7ObSe+sdA+geoqS1fi9Pmwcq7c59EKr2W
	/n0iIS7Ow2vq1F5TyjU3J3WPlKa/iqCwHOXiJ9D+4nXIWSAjgQFuzybdNxce7wfk+M/GokJNg9v
	PWG6/l3w1zJQ==
X-Google-Smtp-Source: AGHT+IGHNUyJ4TCJxNG47MECcIZsw4FC2AQEtkAuaCiRR+hyvUUod2VXPA0L2L/lSblMr9WtEHFaFg==
X-Received: by 2002:a05:6870:d9b:b0:2ff:abf6:d269 with SMTP id 586e51a60fabf-3196307ef5emr936430fac.9.1756573303518;
        Sat, 30 Aug 2025 10:01:43 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:f7b4:dfbd:5110:c59d? ([2600:8803:e7e4:1d00:f7b4:dfbd:5110:c59d])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-3196d46d8a6sm356575fac.18.2025.08.30.10.01.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 30 Aug 2025 10:01:43 -0700 (PDT)
Message-ID: <b2688cb1-1ec4-46ac-89e3-dae4f919a177@baylibre.com>
Date: Sat, 30 Aug 2025 12:01:42 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 08/15] dt-bindings: iio: adc: adi,ad4030: Add 4-lane per
 channel bus width option
To: Marcelo Schmitt <marcelo.schmitt@analog.com>, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-spi@vger.kernel.org
Cc: jic23@kernel.org, Michael.Hennerich@analog.com, nuno.sa@analog.com,
 eblanc@baylibre.com, andy@kernel.org, corbet@lwn.net, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, broonie@kernel.org,
 Jonathan.Cameron@huawei.com, andriy.shevchenko@linux.intel.com,
 ahaslam@baylibre.com, marcelo.schmitt1@gmail.com
References: <cover.1756511030.git.marcelo.schmitt@analog.com>
 <8011cd2b2f2fe6fd162bc4b4b75ec64255516a87.1756511030.git.marcelo.schmitt@analog.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <8011cd2b2f2fe6fd162bc4b4b75ec64255516a87.1756511030.git.marcelo.schmitt@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 8/29/25 7:43 PM, Marcelo Schmitt wrote:
> AD4630 has two input channels and each of them can have it's data output in
> 4 dedicated lines, resulting in a total of 8 data lines used by the device.
> Document the option that specifies the case where AD4630 and similar ADCs
> provide data through 8 SPI lines.

It is true that there are 8 serial data out lines, but not all lines
work the same way. spi-rx-bus-width describes the quad-spi-like lines
for sending multiple bits of one word from one channel at the same time.

The second set of 4 lines is for sending data from a separate channel
at the same time, so it doesn't work with an octal SPI without scrambling
data between to two channels.

Instead, I am proposing that we consider the second channel (the 2nd set
of 4 lines) as a second SPI bus on the same SPI controller. I am currently
working on implementing this in the AXI SPI Engine and the AD7380 driver.
There is still some HDL work to finalize for this before I can submit it
to the mailing lists though. 

It will use the bindings proposed in [1] rather than spi-rx-bus-width.
So we should drop this patch and wait for the other work to be done
before supporting reading both channels at the same time on AD4630.

[1]: https://lore.kernel.org/linux-spi/20250616220054.3968946-1-sean.anderson@linux.dev/

> 
> Signed-off-by: Marcelo Schmitt <marcelo.schmitt@analog.com>
> ---
>  Documentation/devicetree/bindings/iio/adc/adi,ad4030.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ad4030.yaml b/Documentation/devicetree/bindings/iio/adc/adi,ad4030.yaml
> index 564b6f67a96e..bee85087a7b2 100644
> --- a/Documentation/devicetree/bindings/iio/adc/adi,ad4030.yaml
> +++ b/Documentation/devicetree/bindings/iio/adc/adi,ad4030.yaml
> @@ -39,7 +39,7 @@ properties:
>      maximum: 102040816
>  
>    spi-rx-bus-width:
> -    enum: [1, 2, 4]
> +    enum: [1, 2, 4, 8]
>  
>    vdd-5v-supply: true
>    vdd-1v8-supply: true


