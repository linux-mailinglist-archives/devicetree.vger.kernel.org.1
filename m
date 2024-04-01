Return-Path: <devicetree+bounces-55154-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A36A789458B
	for <lists+devicetree@lfdr.de>; Mon,  1 Apr 2024 21:38:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 169471F21E04
	for <lists+devicetree@lfdr.de>; Mon,  1 Apr 2024 19:38:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B14253370;
	Mon,  1 Apr 2024 19:38:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="Db4oko5i"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B698339B1
	for <devicetree@vger.kernel.org>; Mon,  1 Apr 2024 19:38:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712000286; cv=none; b=jyCylSTBJTxYRxKjttNTrRKgdGwMrESfzXGktDk0hM68MEagQwH3FzuV2vmPj3n34vBLAdjc1OF8ACJHVK8HO9tv6fY6qJNCty9+yBaz8iepR4d1QI5I+ThRpiwbWrYuRXrgqUYIVB6I+CZrDEyIoZDEsBpKII2D0iJO+R2K9X8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712000286; c=relaxed/simple;
	bh=kAU0aYIXhgkFLYZSUSg5PZ1VapVsVEfo2juD1x2+LDY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ppX33oFiLeJx3gIJd451BXvkaQClo2D6I1ol4kCuPrGApTJnx/tMTGiwOC+O9ihr7Gi6hnTCWPr4IJQD8MtTzSrayPYFTy1f2k3PLJhI4uUwaWcGVI0YR3lTV3eDd0Z/3fX1+niYeCfWq1Qrn98RsWvKysVe5CvUDZDCyzBzGd8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=Db4oko5i; arc=none smtp.client-ip=209.85.208.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-2d47a92cfefso52948081fa.1
        for <devicetree@vger.kernel.org>; Mon, 01 Apr 2024 12:38:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1712000282; x=1712605082; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ud/NuSHYkcJgOcZcI1q1wClx6fmxezAeXXOYZJFZkjI=;
        b=Db4oko5iWeG0SOZztUTObNW+5Khb37EBguNcLrcPwz2dURCLY+hpCBQNV14LTgvmGV
         3DDAk/ywyYB99hGulnAWQWF5UDKFfk9KedkeRNqMuCg+wSSHLTTrj2i57BtKffb/vjTc
         +yCZd+aglkgD0aYwsG8ueP7xLUOs7FLgrOOzoCcwfJKcBsl4a2Yu/uVpBaRX6GE1+zEi
         BDgMi54rZyxgqcsDLASW7On5/u22SGI7zehbTdEosLxS2xK8ryH+iLuC0eq2k8qtKz6F
         HTZxyUySCySRncwqWUvUVoERubnIYDAGVwgJoxemkilnYbvXTM7otCaZ/zHCDdf7mpfT
         i3xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712000282; x=1712605082;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ud/NuSHYkcJgOcZcI1q1wClx6fmxezAeXXOYZJFZkjI=;
        b=f00pU3Jugm63YeZgkpFmGfGzZL9PahUVVFBEucNCzn8lMm7PHYYFEfuEtKJqwtMukn
         lXNnVxZv8e0lZ1H6v+xYL7kczjw+VBU1dfbXna4za7RwZ5BJ+8EJQrruuCNXCuhkB9an
         oAqciy/mnUB4kUsJUHsfBLEPxxbgA6TDQxIECHq/HGHsXU/YvqL/Ki8gnudRgDJZ6UxN
         VLKAjUnYJrISBz32ARPToOAQD0Tol+T4sk3Mv4xtNBDvGfIV40PYXr44UtpeEgTv+wgC
         7LdqUup7HjtXSRHHj0zIF2rzIe5IyNpiAZ725i9ML1dr2WtRgvkU00B1OfArYHmewq1r
         h1Mg==
X-Forwarded-Encrypted: i=1; AJvYcCUjgLe9EBjVcG9M4fpvuklS6RWgfdnkRmO/MFZGXwbQZoLHRiocjCoA8OZENFPVYkqopgaFmsTznB0/7NyTeij0z/6p/RhuS/mrzw==
X-Gm-Message-State: AOJu0YytBvJDXCQyC6x5BLnWR6sNfFYpVdjHtTpj1ibZSwwutc/i7fUT
	ig0buv5k6kgfuEem3aDjaCDnD/Fovp3WMf8cr2w7+6K0lnP01ErzoFZbV6711OiYSL63ypdY81l
	8luErOTmwo2Cr3aE003LoMYbwKT8asr+iUnEDEw==
X-Google-Smtp-Source: AGHT+IHJqJKfosHVyevU1aS9w9uyqWtEP/uOltOm2hMAeNUcdIJ/rohrq7G8IwsDoE0Ec3PQkk44ZH18XA6mCtX/SFg=
X-Received: by 2002:a2e:98d8:0:b0:2d8:113c:d58 with SMTP id
 s24-20020a2e98d8000000b002d8113c0d58mr3269028ljj.20.1712000281529; Mon, 01
 Apr 2024 12:38:01 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240401-ad4111-v1-0-34618a9cc502@analog.com> <20240401-ad4111-v1-1-34618a9cc502@analog.com>
In-Reply-To: <20240401-ad4111-v1-1-34618a9cc502@analog.com>
From: David Lechner <dlechner@baylibre.com>
Date: Mon, 1 Apr 2024 14:37:50 -0500
Message-ID: <CAMknhBHeKAQ45=5-dL1T1tv-mZcPN+bNo3vxWJYgWpEPE+8p3Q@mail.gmail.com>
Subject: Re: [PATCH 1/6] dt-bindings: adc: ad7173: add support for ad411x
To: dumitru.ceclan@analog.com
Cc: Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Dumitru Ceclan <mitrutzceclan@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 1, 2024 at 10:10=E2=80=AFAM Dumitru Ceclan via B4 Relay
<devnull+dumitru.ceclan.analog.com@kernel.org> wrote:
>
> From: Dumitru Ceclan <dumitru.ceclan@analog.com>
>
> Add support for: AD4111, AD4112, AD4114, AD4115, AD4116.
>
> AD411x family ADCs support a VCOM pin, dedicated for single-ended usage.
> AD4111/AD4112 support current channels, usage is implemented by
>  specifying channel reg values bigger than 15.
>
> Signed-off-by: Dumitru Ceclan <dumitru.ceclan@analog.com>
> ---
>  .../devicetree/bindings/iio/adc/adi,ad7173.yaml    | 59 ++++++++++++++++=
+++++-
>  1 file changed, 57 insertions(+), 2 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ad7173.yaml b/=
Documentation/devicetree/bindings/iio/adc/adi,ad7173.yaml
> index ea6cfcd0aff4..bba2de0a52f3 100644
> --- a/Documentation/devicetree/bindings/iio/adc/adi,ad7173.yaml
> +++ b/Documentation/devicetree/bindings/iio/adc/adi,ad7173.yaml
> @@ -19,7 +19,18 @@ description: |
>    primarily for measurement of signals close to DC but also delivers
>    outstanding performance with input bandwidths out to ~10kHz.
>
> +  Analog Devices AD411x ADC's:
> +  The AD411X family encompasses a series of low power, low noise, 24-bit=
,
> +  sigma-delta analog-to-digital converters that offer a versatile range =
of
> +  specifications. They integrate an analog front end suitable for proces=
sing
> +  fully differential/single-ended and bipolar voltage inputs.
> +
>    Datasheets for supported chips:
> +    https://www.analog.com/media/en/technical-documentation/data-sheets/=
AD4111.pdf
> +    https://www.analog.com/media/en/technical-documentation/data-sheets/=
AD4112.pdf
> +    https://www.analog.com/media/en/technical-documentation/data-sheets/=
AD4114.pdf
> +    https://www.analog.com/media/en/technical-documentation/data-sheets/=
AD4115.pdf
> +    https://www.analog.com/media/en/technical-documentation/data-sheets/=
AD4116.pdf
>      https://www.analog.com/media/en/technical-documentation/data-sheets/=
AD7172-2.pdf
>      https://www.analog.com/media/en/technical-documentation/data-sheets/=
AD7172-4.pdf
>      https://www.analog.com/media/en/technical-documentation/data-sheets/=
AD7173-8.pdf
> @@ -31,6 +42,11 @@ description: |
>  properties:
>    compatible:
>      enum:
> +      - adi,ad4111
> +      - adi,ad4112
> +      - adi,ad4114
> +      - adi,ad4115
> +      - adi,ad4116
>        - adi,ad7172-2
>        - adi,ad7172-4
>        - adi,ad7173-8
> @@ -125,10 +141,19 @@ patternProperties:
>
>      properties:
>        reg:
> +        description:
> +          Reg values 16-19 are only permitted for ad4111/ad4112 current =
channels.
>          minimum: 0
> -        maximum: 15
> +        maximum: 19

This looks wrong. Isn't reg describing the number of logical channels
(# of channel config registers)?

After reviewing the driver, I see that > 16 is used as a way of
flagging current inputs, but still seems like the wrong way to do it.
See suggestion below.

>
>        diff-channels:
> +        description:
> +          For using current channels specify only the positive channel.
> +            (IIN2+, IIN2=E2=88=92) -> diff-channels =3D <2 0>

I find this a bit confusing since 2 is already VIN2 and 0 is already
VIN0. I think it would make more sense to assign unique channel
numbers individually to the negative and positive current inputs.
Also, I think it makes sense to use the same numbers that the
registers in the datasheet use (8 - 11 for negative and 12 to 15 for
positive).

So: (IIN2+, IIN2=E2=88=92) -> diff-channels =3D <13 10>


> +
> +          Family AD411x supports a dedicated VCOM voltage input.
> +          To select it set the second channel to 16.
> +            (VIN2, VCOM) -> diff-channels =3D <2 16>

The 411x datasheets call this pin VINCOM so calling it VCOM here is a
bit confusing.

Also, do we need to add a vincom-supply to get this voltage? Or is it
safe to assume it is always connected to AVSS? The datasheet seems to
indicate that the latter is the case. But then it also has this
special case (at least for AD4116, didn't check all datasheets)
"VIN10, VINCOM (single-ended or differential pair)". If it can be used
as part of a fully differential input, we probably need some extra
flag to indicate that case.

Similarly, do we need special handling for ADCIN15 on AD4116? It has a
"(pseudo differential or differential pair)" notation that other
inputs don't. In other words, it is more like VINCOM than it is to the
other ADCINxx pins. So we probably need an adcin15-supply for this pin
to properly get the right channel configuration. I.e. the logic in the
IIO driver would be if adcin15-supply is present, any channels that
use this input are pseudo-differential, otherwise any channels that
use it are fully differential.

>          items:
>            minimum: 0
>            maximum: 31
> @@ -166,7 +191,6 @@ allOf:
>    - $ref: /schemas/spi/spi-peripheral-props.yaml#
>
>    # Only ad7172-4, ad7173-8 and ad7175-8 support vref2
> -  # Other models have [0-3] channel registers

Did you forget to remove

            reg:
              maximum: 3

from this if statement that this comment is referring to?


>    - if:
>        properties:
>          compatible:
> @@ -187,6 +211,37 @@ allOf:
>                  - vref
>                  - refout-avss
>                  - avdd
> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - adi,ad4114
> +              - adi,ad4115
> +              - adi,ad4116
> +              - adi,ad7173-8
> +              - adi,ad7175-8
> +    then:
> +      patternProperties:
> +        "^channel@[0-9a-f]$":
> +          properties:
> +            reg:
> +              maximum: 15

As with the previous reg comment, this if statement should not be
needed since maximum should not be changed to 19.

> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - adi,ad7172-2
> +              - adi,ad7175-2
> +              - adi,ad7176-2
> +              - adi,ad7177-2
> +    then:
> +      patternProperties:
> +        "^channel@[0-9a-f]$":
> +          properties:
>              reg:
>                maximum: 3

It looks to me like AD7172-4 actually has 8 possible channels rather
than 16. So it would need a special condition as well. But that is a
bug in the previous bindings and should therefore be fixed in a
separate patch.

