Return-Path: <devicetree+bounces-58979-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DB948A3E2E
	for <lists+devicetree@lfdr.de>; Sat, 13 Apr 2024 21:10:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2E1DE1C2091B
	for <lists+devicetree@lfdr.de>; Sat, 13 Apr 2024 19:10:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A644E53802;
	Sat, 13 Apr 2024 19:10:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="qW+f+wZH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 377D33FE55
	for <devicetree@vger.kernel.org>; Sat, 13 Apr 2024 19:10:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713035424; cv=none; b=ObDxPo08EFGna/lZRNTDtsKKC6DxNZQw3Ir7Ew6uthSqrKFtiziCXc1eZ4NShgRWezS0oeTaTaOpoq/TopIbqLmrgF+oMMsnKnvS+QQbD3mRJBqtGvx2Q1nwEpFxON6hOpC49B79LulWTT2OCuzUZhSFO12VcJkSf0mF7pgOerg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713035424; c=relaxed/simple;
	bh=NK36aVW0Q4AOfz3pKXy6wWqoZHB49yeleuvN/jCXBZc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=r1bjlbW8UuVd+WKTUzcDS9/HDNBTn7ojAZPFAd9BcxFmiNommI3jU/gJQQfN8yUkH0Xc+ha8D/6go7YGF9ZHPvxGVyESxo0fny0ccOhVX+KifVNUaZvp6s8EC+V9+Vfrf6o5tpUrM16luiTMTg9JE5QxuJV5AraUh+Z1shGbCaM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=qW+f+wZH; arc=none smtp.client-ip=209.85.208.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-2d48d75ab70so28073711fa.0
        for <devicetree@vger.kernel.org>; Sat, 13 Apr 2024 12:10:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1713035420; x=1713640220; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ohhq94Hi9UA2u72f6b9WWlalORV6WhRgdHkGudBsR/4=;
        b=qW+f+wZHdV294KbUYAZmsOrJgspuWnKwhiq3ptjOzY5UPCTjEjoAmORKvR6Mpo9pAo
         Jc2aDLpRX8SyCj3LStaiTIwyqDbdZAAIRT4Lw5rZ9jrDME+GFyIFyRy5659NFx1FPoTD
         xLD+IUC+sdaACXhajNd6DjcepPIQ0Oa30/fHJJGZyib4aJvMfCYtGbPGQpD3BXV45Hx7
         dVUcnCTJbtlk3dW/JiTF9rcl2nR8Cxxn6LCW+7o3NLBZR6KotW/b6Q5cpeMEvtxEHqU9
         qDk3Zw7H+60G02yf0AUAKErhH85MgA3oPOf+ATHSMf11fBM0L6dIsGDGIrWdAgBP3S5P
         6PiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713035420; x=1713640220;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ohhq94Hi9UA2u72f6b9WWlalORV6WhRgdHkGudBsR/4=;
        b=UjQ/ieWWgBwWAkRh3ySn2+hS/M7jJkFCTvTs43Ss97LokFu7sqi1Rd/SIFKiaPjFT1
         Pu4Ni8G5edRPeptcQMzyO09+zTnhSkZm0nUKgurTZDi8vl4H1OPCsilAbQV9IG4iQJJi
         yWj3meyru6ofBuS+PR3r8oVM/p7hywRLHXFF8CLETleVa7d3b9pMZHoJt+OkGzXnc5yy
         cRFoPsSlFp5psKoRJ1ucQlRDuC89o6EcVp7UyW7KpLIeknbkZ8wcLlcrHGJlK/Nu6ox/
         V/gQktMpQQflAdVwtCO8X7YvSYdeybxnaMPG7mE9phRGZUG81Grpu3jlE1FfZHq3IiUG
         8S8w==
X-Forwarded-Encrypted: i=1; AJvYcCUJJ/gRYd9AiywtJ6QHsFgBakPg9ZSqFChi5AC4SWZKunWzj1tvo/z6zDI6jP7wT/Cjoj9uh136K/J5KPQIThRvXaT2solI1OMaQQ==
X-Gm-Message-State: AOJu0YylXcOxRMV7xUOIqaZVZ8FvGJA9PtupU808BXREFmKLs8TFoqXE
	5qaX8P7RBlyQexwT81vlQ6aAEUQ0OBjgsgmssfvZECzQTfJcdjFP0OW5n85tzW3bWG8ncTob7G9
	wwrYFEEra3oEi7RdPq/1w9N71HDJZs2p2U4gwOA==
X-Google-Smtp-Source: AGHT+IEevveWBjU7TZWnqjnm1VFpx0byQntZkv6S4ruBzyz3GDRxKVsXcuxEw66rLcFbF41a5ngZ+AFzGlSD4I+mW5o=
X-Received: by 2002:a2e:3509:0:b0:2d8:3dc7:e302 with SMTP id
 z9-20020a2e3509000000b002d83dc7e302mr3607781ljz.2.1713035420280; Sat, 13 Apr
 2024 12:10:20 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240413151152.165682-1-alisa.roman@analog.com> <20240413151152.165682-4-alisa.roman@analog.com>
In-Reply-To: <20240413151152.165682-4-alisa.roman@analog.com>
From: David Lechner <dlechner@baylibre.com>
Date: Sat, 13 Apr 2024 14:10:08 -0500
Message-ID: <CAMknhBFk9e=VDYFVUhKmabHKwhJKbVVA4tRz758QszjHLGUEpg@mail.gmail.com>
Subject: Re: [PATCH v5 3/5] iio: adc: ad7192: Add aincom supply
To: Alisa-Dariana Roman <alisadariana@gmail.com>
Cc: michael.hennerich@analog.com, linux-iio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	alexandru.tachici@analog.com, lars@metafoo.de, jic23@kernel.org, 
	robh@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	lgirdwood@gmail.com, broonie@kernel.org, andy@kernel.org, nuno.sa@analog.com, 
	marcelo.schmitt@analog.com, bigunclemax@gmail.com, okan.sahin@analog.com, 
	fr0st61te@gmail.com, alisa.roman@analog.com, marcus.folkesson@gmail.com, 
	schnelle@linux.ibm.com, liambeguin@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Apr 13, 2024 at 10:12=E2=80=AFAM Alisa-Dariana Roman
<alisadariana@gmail.com> wrote:
>
> AINCOM should actually be a supply. If present and it has a non-zero
> voltage, the pseudo-differential channels are configured as single-ended
> with an offset. Otherwise, they are configured as differential channels
> between AINx and AINCOM pins.
>
> Signed-off-by: Alisa-Dariana Roman <alisa.roman@analog.com>
> ---
>  drivers/iio/adc/ad7192.c | 53 +++++++++++++++++++++++++++++++++++++---
>  1 file changed, 49 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/iio/adc/ad7192.c b/drivers/iio/adc/ad7192.c
> index ac737221beae..a9eb4fab39ca 100644
> --- a/drivers/iio/adc/ad7192.c
> +++ b/drivers/iio/adc/ad7192.c
> @@ -175,7 +175,7 @@ enum {
>  struct ad7192_chip_info {
>         unsigned int                    chip_id;
>         const char                      *name;
> -       const struct iio_chan_spec      *channels;
> +       struct iio_chan_spec            *channels;
>         u8                              num_channels;
>         const struct iio_info           *info;
>  };
> @@ -186,6 +186,7 @@ struct ad7192_state {
>         struct regulator                *vref;
>         struct clk                      *mclk;
>         u16                             int_vref_mv;
> +       u16                             aincom_mv;

u32? (In case we have a future chip that can go above 6.5535V?

>         u32                             fclk;
>         u32                             mode;
>         u32                             conf;
> @@ -745,6 +746,9 @@ static int ad7192_read_raw(struct iio_dev *indio_dev,
>                 /* Kelvin to Celsius */

Not related to this patch, but I'm not a fan of the way the
temperature case writes over *val (maybe clean that up using a switch
statement instead in another patch while we are working on this?).
Adding the else if to this makes it even harder to follow.

>                 if (chan->type =3D=3D IIO_TEMP)
>                         *val -=3D 273 * ad7192_get_temp_scale(unipolar);
> +               else if (st->aincom_mv && chan->channel2 =3D=3D -1)

I think the logic should be !chan->differential instead of
chan->channel2 =3D -1 (more explanation on this below).

> +                       *val +=3D DIV_ROUND_CLOSEST_ULL((u64)st->aincom_m=
v * 1000000000,
> +                                                     st->scale_avail[gai=
n][1]);
>                 return IIO_VAL_INT;
>         case IIO_CHAN_INFO_SAMP_FREQ:
>                 *val =3D DIV_ROUND_CLOSEST(ad7192_get_f_adc(st), 1024);

...

>
> +static int ad7192_config_channels(struct ad7192_state *st)
> +{
> +       struct iio_chan_spec *channels =3D st->chip_info->channels;
> +       int i;
> +
> +       if (!st->aincom_mv)

As mentioned in my reply to the DT bindings patch, I don't think this
logic is correct. AINx/AINCOM input pairs are always
pseudo-differential regardless if AINCOM is tied to GND or is a
non-zero voltage.

Also, to be clear, for pseudo-differential inputs, we want
.differential =3D 0, so the existing channel specs look correct to me
and therefore we don't need any changes like this.

> +               for (i =3D 0; i < st->chip_info->num_channels; i++)
> +                       if (channels[i].channel2 =3D=3D -1) {
> +                               channels[i].differential =3D 1;
> +                               channels[i].channel2 =3D 0;
> +                       }
> +
> +       return 0;
> +}
> +

