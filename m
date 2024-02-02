Return-Path: <devicetree+bounces-38172-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3322C847C26
	for <lists+devicetree@lfdr.de>; Fri,  2 Feb 2024 23:20:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AF8D51F2E3C3
	for <lists+devicetree@lfdr.de>; Fri,  2 Feb 2024 22:20:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8959185937;
	Fri,  2 Feb 2024 22:20:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="iArbkSFP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 797D467A15
	for <devicetree@vger.kernel.org>; Fri,  2 Feb 2024 22:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706912426; cv=none; b=p/J2BO1W8Vcvvcqyi8x0xoR/Z+dF775WUbf6PnKa6hVL90Mf5pDvIB4Huj4tAevyZL9NwRnoucsRmxExX4gTFW9I2GpCXWFYztBnR4E4HXBQo6elO1QYgLjjDIQk2mPY0Cp2LOl8eGtNTIff5p+PC8EoaQqoyRMNVY60SlcyK88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706912426; c=relaxed/simple;
	bh=lGMvrQ7olp6jC3Dg4ETinX5R1CAx4AYVJfrVqs3bq5c=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=cndB7zxFIUK11A4wvnWe3HfFG7sj197xtsYb8uqbj8QQBk8fX0cNFViuifGjMqye4nUIotfD2TzQdGM0A6nVinfXv4Z3xJyYMnCxh2Dib8HZ4plN9391WbLcHq7949CviUIKfrSbnYhEbSW2AgzEjmbu1soEvBbwe4diydDkids=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=iArbkSFP; arc=none smtp.client-ip=209.85.208.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-2d066b82658so36045841fa.3
        for <devicetree@vger.kernel.org>; Fri, 02 Feb 2024 14:20:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1706912421; x=1707517221; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=A95mBr4LewOKrn0gA7CaGAeJ/T17Q8OZ1lunQJxFPCo=;
        b=iArbkSFPMuueuX/8+KfNWldrzDw66zdwQEnB7iFDtZCFSGwEdhQDuyTqV74WurRqLz
         qEwCdqoOwRMnSKKVxYgXASAVqIaih5Yo7SbR84dnufs5GHKN4SSHTCZiwrnyEziOGoO/
         qALgr2HPcVMWA4aVSSa/tQ68zVJmsMJkczBqiwloZoIXIPfTiasJbUt0Gc/CBH4CGbVg
         kAGcA5c6u5gNtGcqh932SVsXRuCfEP0gNAQVXqMmbV2A0islHArJfmmhj319KlU9Hclt
         7eh7YMxkQsc18V0kkyVH4ttyYEdP69VNoW5uVJgarD4TYU9NwDc9Yey1FqdqpjkXllP7
         RAGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706912421; x=1707517221;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=A95mBr4LewOKrn0gA7CaGAeJ/T17Q8OZ1lunQJxFPCo=;
        b=rgv0wMQ9xttmW1NmI0EhYmMCIunVrR2cmVSg/qgnuuUTwjJfXV52uczQLgNnshBF+r
         c36UeZ+EYI2jxkn+2Mg29oh2olsWEdPCNOaJe9uF1MLXyRAM72box30nfHszCYWX6CZ6
         D4KQQR/uTwA8QN08MZM3uY2Xxs+f6ZSlTqQPaLULLTCv9NWNl49t2AGe8lEAm2Xy6JB0
         QTsi9AtU9185fuJj/bIh9uxOw7PnGMVfSdacqCwZt+xLAJdQNf59vG084NOKgBWkpW8N
         Pa9iHhsmweZbJqvO7PgqQpwalSi2opW5hclHHCTGZacKVsdpg0W+g+ylITU4u34JTC2Q
         LecA==
X-Gm-Message-State: AOJu0YztlJiORhAm2GuT/JWDOAy53K9dv1Nb5UCsmO6+/8W/GxOa7JxH
	feAQtl4Q+g6Go8/lak2RgqyfPZIa9umfB+YvmJvebzFiIt7f7QAvMiPr1KJ19BqWiGgUYKxcB6W
	tbK8EHw5FqCDwauLIW0c8T5Wgd5tQbmvi3kyRmA==
X-Google-Smtp-Source: AGHT+IHNCJX1G7XzHq5Sot5+YPR9DWfGgstLWkyVLV20/9QwmALmvzLylkGlIUwQneZDL8nGOUFhYhZeB4PIdb3G+Vk=
X-Received: by 2002:a2e:7204:0:b0:2d0:8438:a33e with SMTP id
 n4-20020a2e7204000000b002d08438a33emr1836616ljc.51.1706912421499; Fri, 02 Feb
 2024 14:20:21 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231114200533.137995-1-alisa.roman@analog.com>
 <20231114200533.137995-2-alisa.roman@analog.com> <c6ca5a25-2d41-4a46-95a5-eb994c4cf529@linaro.org>
 <09cc2ecb-b73f-495a-9196-dbb4899f4c85@gmail.com>
In-Reply-To: <09cc2ecb-b73f-495a-9196-dbb4899f4c85@gmail.com>
From: David Lechner <dlechner@baylibre.com>
Date: Fri, 2 Feb 2024 16:20:10 -0600
Message-ID: <CAMknhBFhr=qTd=nioq_m=icZZUfYWSq8Moy4A4RssvbcNoLNQg@mail.gmail.com>
Subject: Re: [PATCH v2 1/4] dt-bindings: iio: adc: ad7192: Add properties
To: Alisa-Dariana Roman <alisadariana@gmail.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
	Alisa-Dariana Roman <alisa.roman@analog.com>, Michael Hennerich <michael.hennerich@analog.com>, 
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Lars-Peter Clausen <lars@metafoo.de>, 
	Alexandru Tachici <alexandru.tachici@analog.com>, Jonathan Cameron <jic23@kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Ceclan Dumitru <dumitru.ceclan@analog.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Feb 2, 2024 at 8:14=E2=80=AFAM Alisa-Dariana Roman
<alisadariana@gmail.com> wrote:
>
> On 14.11.2023 22:29, Krzysztof Kozlowski wrote:
> > On 14/11/2023 21:05, Alisa-Dariana Roman wrote:
> >> Document properties used for clock configuration.
> >
> > Some background here is missing - otherwise it looks like you are addin=
g
> > new properties...
> >
> >>
> >> Signed-off-by: Alisa-Dariana Roman <alisa.roman@analog.com>
> >> ---
> >>   .../devicetree/bindings/iio/adc/adi,ad7192.yaml        | 10 ++++++++=
++
> >>   1 file changed, 10 insertions(+)
> >>
> >> diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ad7192.yaml=
 b/Documentation/devicetree/bindings/iio/adc/adi,ad7192.yaml
> >> index 16def2985ab4..9b59d6eea368 100644
> >> --- a/Documentation/devicetree/bindings/iio/adc/adi,ad7192.yaml
> >> +++ b/Documentation/devicetree/bindings/iio/adc/adi,ad7192.yaml
> >> @@ -80,6 +80,16 @@ properties:
> >>         and when chop is disabled.
> >>       type: boolean
> >>
> >> +  adi,clock-xtal:
> >> +    description: |
> >> +      External crystal connected from MCLK1 to MCLK2.

A better description could be:

When this flag is present, it indicates that the clock from the clocks
property is a crystal oscillator connected to MCLK1 and MCLK2. When
omitted the clock is a CMOS-compatible clock connected to MCLK2.

> >
> > And this should be input clock.
> >
> >> +    type: boolean
> >> +
> >> +  adi,int-clock-output-enable:
> >> +    description: |
> >> +      Internal 4.92 MHz clock available on MCLK2 pin.
> >> +    type: boolean
> >
> > This should be clock-cells and clock provider.
> >
> > Unless you are just documenting already used interface which you do not
> > want to break...

This property is already used in the mainline Linux driver, so sounds
like the "don't want to break it" case. But it would make sense to
deprecate this property and use standard clock provider bindings
instead.

> >
> >> +
> >>     bipolar:
> >>       description: see Documentation/devicetree/bindings/iio/adc/adc.y=
aml
> >>       type: boolean
> >
> > Best regards,
> > Krzysztof
> >
>
> Thank you very much for the feedback!
>
> If I understand correctly, there is already an input clock in the binding=
s:
> ```
>    clocks:
>      maxItems: 1
>      description: phandle to the master clock (mclk)
>
>    clock-names:
>      items:
>        - const: mclk
> ```
>
> What I wanted to accomplish with this patch is to document these boolean
> properties (from the ad7192 driver code):
> ```
>         /* use internal clock */
>         if (!st->mclk) {
>                 if (device_property_read_bool(dev, "adi,int-clock-output-=
enable"))
>                         clock_sel =3D AD7192_CLK_INT_CO;
>         } else {
>                 if (device_property_read_bool(dev, "adi,clock-xtal"))
>                         clock_sel =3D AD7192_CLK_EXT_MCLK1_2;
>                 else
>                         clock_sel =3D AD7192_CLK_EXT_MCLK2;
>         }
> ```
>
> Please let me know how to proceed further!
>
> Kind regards,
> Alisa-Dariana Roman
>

There was another recent discussion about this exact same clock
input/output on another chip recently [1]. So it would be nice if we
could end up with the same bindings in both cases (cc Ceclan). In the
other thread, it was proposed to have the clocks property to be an
array of two phandles, one for the crystal oscillator and one for the
external clock rather than a single clock and the adi,clock-xtal
property. But that would be a breaking change to these bindings.

[1]: https://lore.kernel.org/linux-iio/20240122-bloating-dyslexic-cbc0258c8=
98a@spud/t/#m4e375aa36dae6da0c319518137f03e2f63e72af9

