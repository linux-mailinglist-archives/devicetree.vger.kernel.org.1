Return-Path: <devicetree+bounces-100672-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id DB54896E8FD
	for <lists+devicetree@lfdr.de>; Fri,  6 Sep 2024 07:11:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 65AFCB20C61
	for <lists+devicetree@lfdr.de>; Fri,  6 Sep 2024 05:11:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D7786A357;
	Fri,  6 Sep 2024 05:10:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="0dbrYDEx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f181.google.com (mail-vk1-f181.google.com [209.85.221.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72A0B28370
	for <devicetree@vger.kernel.org>; Fri,  6 Sep 2024 05:10:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725599458; cv=none; b=qefJH6GaoUMWfGgOEqPqnkmZmN4K96L4KGy7QV1/L55r1317OSr0l62b4WLyihzM4Vjq+LdrqYt0mxHsZl0KaWjvTO6HS1Oj4+sAzuXT3XdaAwuTqhY4A2ErRMJztxJzKibj6cm7RNOeeuG2HZbWH7mumceflCIxg7BuD+wxJFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725599458; c=relaxed/simple;
	bh=cox6Nxc7egq7AZwig73/QCORN5Qr52T6ViOyEhlj3O8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=QJ2Jk1WOddxHnrhm4/SYTNHpjoy+JXMSfy8Vs9DCNgf54wmphwalo6i/GThuGIfq7z+GhOz3csPF2T+Pg4Be8HEUwNZMtNQSfdbNiys/pViGnC+1blnA+cmsC9dVI8eUyg+EfLrZa+UmIGJpktEjw5cWKNGTE3J9Cn3TTpJsuDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=0dbrYDEx; arc=none smtp.client-ip=209.85.221.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-vk1-f181.google.com with SMTP id 71dfb90a1353d-500fcf0b32fso454919e0c.1
        for <devicetree@vger.kernel.org>; Thu, 05 Sep 2024 22:10:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1725599455; x=1726204255; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wtfXwtPAreobELFhytY+AFMWjfhxEApMqwxtGAQPF5w=;
        b=0dbrYDExodw5q7EDMLIShbzIwomA2I0yPOB3ohTD3RoOxGmuD/OGGCghTkVH0PPAj4
         9ivPhju8s80+UJPxswRnSUoWQusFIzJuQprvAqRB9aZkp0yTT1L2i0xRRS7teJBaYdvE
         dJ+m1iNYRTSqo72H6y64BRAp6yfecZ0NVAxdSultcJ5GLHVI0YBfX/vpGkXjtBkGGden
         Cmbp7kvbEbFnZUe6PfCj9HUt//cisgoyqiEKAbgVSafzxMJWLKMCZMC5c/Q4FUUfQY0O
         X9tdDOZfzWEYY7V2t66KJRrEy8Peg9n1t0PhU/ZXwpuSlE3BsTG9g/8EQLNyd5ljFaTz
         WBfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725599455; x=1726204255;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wtfXwtPAreobELFhytY+AFMWjfhxEApMqwxtGAQPF5w=;
        b=Y1iGHAttkGXbc0+Tq17yz3mpml+6XmXETxcvYQWak0pnydAi3p1qF4tqAoj/dg66Sq
         FrG3LbX6ePuVwv0YmeQkex4n0nzWGGFtC8TA8GoqrauJjRQrFj+M50qoeH1B4NF5Th7S
         hXLXBW5JaSJp4Vz0zKDYnfT8jUEVJc/aa9R3d3U0gwmJbdDADgYi+94dwR+8nCSEWnRk
         iTFApZW4tInFRZdr4SQqp6R8u+yfV7piaalNxMSa+ivxhM4zXn1jsmU5Pa8/AXRsq4F/
         jiH+XHyicY3XoQmut3vBcfR+WHOKt9zbj1azAdkwdxQ3Y0iWTqO4cCAol/s2Sw9lgSPb
         iN/g==
X-Forwarded-Encrypted: i=1; AJvYcCXMfRdbw3wQ53szC0u8+aSsrMRdECODmsDwPYjkpRnOKrluuAtkaFHTQ4vLvFrSBOFuf5og0qMfCtnq@vger.kernel.org
X-Gm-Message-State: AOJu0Yzroca04gSEEinLYMiMQWQTztGywLg7LBQzAjoiofeEwtTDWEsS
	8Xr7SRGTC3kU8fA8B55cQwdYHi7YIBtRowJYc7J7vHQaajH47r6wa7mh79tMXMCw461izax0azF
	YdQSoV9y2XkYhMejnBtuFcCauilYhgNtlsY0GEg==
X-Google-Smtp-Source: AGHT+IEqVjx1uqswLtj04+06JSwnBwvixcQ6zE4PjuQ1mK8KKr5zEv9HB8xSLkouZcGTEIYAbRmMs9ehQ/l1tT2eMuw=
X-Received: by 2002:a05:6122:470f:b0:4fc:eda5:634f with SMTP id
 71dfb90a1353d-50207c2e984mr1486839e0c.4.1725599455053; Thu, 05 Sep 2024
 22:10:55 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240905082404.119022-1-aardelean@baylibre.com>
 <20240905082404.119022-2-aardelean@baylibre.com> <7ba70132-e661-4f4f-a0e3-0ed1efc1aecb@baylibre.com>
In-Reply-To: <7ba70132-e661-4f4f-a0e3-0ed1efc1aecb@baylibre.com>
From: Alexandru Ardelean <aardelean@baylibre.com>
Date: Fri, 6 Sep 2024 08:10:44 +0300
Message-ID: <CA+GgBR8H1TP1Ux8Fgohx0SkctxdvmtBZfqW+-k4cZsram5yScA@mail.gmail.com>
Subject: Re: [PATCH v4 1/8] iio: adc: ad7606: add 'bits' parameter to channels macros
To: David Lechner <dlechner@baylibre.com>
Cc: linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, jic23@kernel.org, krzk+dt@kernel.org, 
	robh@kernel.org, lars@metafoo.de, michael.hennerich@analog.com, 
	gstols@baylibre.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Sep 6, 2024 at 12:25=E2=80=AFAM David Lechner <dlechner@baylibre.co=
m> wrote:
>
> On 9/5/24 3:23 AM, Alexandru Ardelean wrote:
> > There are some newer additions to the AD7606 family, which support 18 b=
it
> > precision.
> > Up until now, all chips were 16 bit.
> >
> > This change adds a 'bits' parameter to the AD760X_CHANNEL macro and ren=
ames
> > 'ad7606_channels' -> 'ad7606_channels_16bit' for the current devices.
> >
> > The AD7606_SW_CHANNEL() macro is also introduced, as a short-hand for I=
IO
> > channels in SW mode.
> >
> > Signed-off-by: Alexandru Ardelean <aardelean@baylibre.com>
> > ---
>
> ...
>
> > diff --git a/drivers/iio/adc/ad7606.h b/drivers/iio/adc/ad7606.h
> > index 0c6a88cc4695..771121350f98 100644
> > --- a/drivers/iio/adc/ad7606.h
> > +++ b/drivers/iio/adc/ad7606.h
> > @@ -8,7 +8,7 @@
> >  #ifndef IIO_ADC_AD7606_H_
> >  #define IIO_ADC_AD7606_H_
> >
> > -#define AD760X_CHANNEL(num, mask_sep, mask_type, mask_all) { \
> > +#define AD760X_CHANNEL(num, mask_sep, mask_type, mask_all, bits) {   \
> >               .type =3D IIO_VOLTAGE,                            \
> >               .indexed =3D 1,                                   \
> >               .channel =3D num,                                 \
> > @@ -19,24 +19,26 @@
> >               .scan_index =3D num,                              \
> >               .scan_type =3D {                                  \
> >                       .sign =3D 's',                            \
> > -                     .realbits =3D 16,                         \
> > -                     .storagebits =3D 16,                      \
> > +                     .realbits =3D (bits),                     \
> > +                     .storagebits =3D (bits),                  \
>
> Technically OK in this patch since bits is still always 16 but we
> can avoid changing the same line again later to:
>
>         (bits) > 16 ? 32 : 16
>
> if we just do that in this patch.

sure
will update

>
>
> >                       .endianness =3D IIO_CPU,                  \
> >               },                                              \
> >  }

