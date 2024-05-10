Return-Path: <devicetree+bounces-66344-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BBB98C280F
	for <lists+devicetree@lfdr.de>; Fri, 10 May 2024 17:43:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 22B802810F8
	for <lists+devicetree@lfdr.de>; Fri, 10 May 2024 15:43:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28DC0172790;
	Fri, 10 May 2024 15:43:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="jk/YQUKr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D241171647
	for <devicetree@vger.kernel.org>; Fri, 10 May 2024 15:43:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715355785; cv=none; b=QbuaulDg3o82Q9kpOmTjDDs7dmtPyL1KsZuHiBxa1/oe+bOvWiy4odJn26PfdLdlT1t50ST2y4tMWyI++8oMHdwvlb/ondFQqBqmQ058MmijfbtmY8DxKUGk04LhXlkGcOLa1YoejtwYjwFW+GynXs6/pu0sj8OC6g7o6CZAqaM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715355785; c=relaxed/simple;
	bh=EqdbfycLoKL0zt5JGB2DK5UT2ooYiwpHsIvWmqjmTyY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=MRezLL1njRni+C9pkyMtTO5X9UICTbK1q4OK+LAX2bvvWPcdDe16kgIXwL+/Vy9DqJ5pCzHVxNHrSp+jrkxk/vzIt+E2uKTDRsZHcLCranm8c2Elkjx1u6E1DPn1vmuffQb/NcEJm8o02CV0UD5rl4/02Jfh+qrKCrjfTUmiKq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=jk/YQUKr; arc=none smtp.client-ip=209.85.208.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-2e34e85ebf4so19648011fa.2
        for <devicetree@vger.kernel.org>; Fri, 10 May 2024 08:43:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1715355780; x=1715960580; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nExPMr6mRgshB3qC7yImXvGaDzKoJT84cXEh3P1y8zg=;
        b=jk/YQUKr5y1lG41t7QIUoFanErOwhh5r8CQM5jwTAMdqlMdujfqvOOAAZkuyB5VPaV
         +qcSXu4VswZe4K0YOYxef84OdKFPK48E4r5WE9yxRuVZoZ+/pQRBAVducCeeQZRpfYBQ
         DEc+MLBBVDrpop5UWy0Y7ft7L9q/TIU+npv/MDE7BjBlGHo1ffv8aH0X4V4e24D8uIX8
         8HXXSWNtXqYZz16fmHEPxQ1wWlQ4A7jMQ7TkYaQxM2cEHkfmyfw3nyQDgXLzutJwqBg6
         8wiAJCfOmG51kiXKlNHVxuiNPZFSqMemWfnU4dA25qH5U4hpMxpWlzdKUcEiesLeQ1v8
         hlzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715355780; x=1715960580;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nExPMr6mRgshB3qC7yImXvGaDzKoJT84cXEh3P1y8zg=;
        b=s7ir3YCMgFUfnJko+hC5pSDNpGg5MOUCL8YZZFqKery7F00kxx7Iwc39nFb9zf9F1y
         HiCn5bdz/O3h1HdHEuVFMbCI5mI9F+iHFQYruVKHNmtkaIP7/5fi9DkVc04Knnf2x7WH
         ATt9M283bT/ZDEXxx8z6W7BPy3Qo56EPOMDvQ9QpFnLdvJ7GwRZ0OqHQQDtL7vQpuR5m
         thSqof6GK4zOC3dLubA4DxteIyiJUj0SsR2r2mlQpAmdhHhxzOYJ3qt1+xoSwKKAP9QO
         3/Ip9iJHKLE7hMhpAteUgBNFn4eIkyokjz702i8Zq389QLGcTAnE9itOSiZYFUENp7ag
         X0Ow==
X-Forwarded-Encrypted: i=1; AJvYcCUDFo66+G4m0xk9jOT6PMCjwJXSFRFeM1OZOWosxMPOC+RP+EWorfPnZQvCXEZgVQBfgqWbbWwPiQM5pT5Vc0p0J6+wwNy4XNjB/Q==
X-Gm-Message-State: AOJu0YyewFDXJAKA1h+otI3zXUGDPeSh26QTlYi1P7mSi9xxXcJslbtP
	JYjIEk+tmSwBrP1ky9Ufj0+Soqhahr/0ZhqRPY8lkLdWRCXBesIoNsKO/sqAm6lKojMUXgIgrtF
	wzThC7cPujjxvS1dJ7J8NoW9NvhQQZ1NfOxygNA==
X-Google-Smtp-Source: AGHT+IGCe1CaqZksNrwkSn5RLhrPsUGy4LZOYBLz8rU1gJfUldRbK7WLRK0KzGp6gJ9wJmxICoTWmAvGKGZ6ThKRhUQ=
X-Received: by 2002:a2e:8847:0:b0:2e2:2791:983e with SMTP id
 38308e7fff4ca-2e51fd451femr18878401fa.13.1715355780559; Fri, 10 May 2024
 08:43:00 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240510141836.1624009-1-adureghello@baylibre.org> <20240510141836.1624009-2-adureghello@baylibre.org>
In-Reply-To: <20240510141836.1624009-2-adureghello@baylibre.org>
From: David Lechner <dlechner@baylibre.com>
Date: Fri, 10 May 2024 10:42:49 -0500
Message-ID: <CAMknhBFrOdzvo+aEFjMSf_3FGmbhVp42Oymt_DEF2L-CdWiSmQ@mail.gmail.com>
Subject: Re: [PATCH 2/3] iio: dac: ad3552r: add support for ad3541r and ad3551r
To: Angelo Dureghello <adureghello@baylibre.com>
Cc: jic23@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	nuno.sa@analog.com, lars@metafoo.de, Michael.Hennerich@analog.com, 
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, May 10, 2024 at 9:19=E2=80=AFAM Angelo Dureghello
<adureghello@baylibre.com> wrote:
>
> From: Angelo Dureghello <adureghello@baylibre.com>
>
> Add support for single-output dac variants.
>
> Signed-off-by: Angelo Dureghello <adureghello@baylibre.com>
> ---
>  drivers/iio/dac/ad3552r.c | 39 +++++++++++++++++++++++++++++----------
>  1 file changed, 29 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/iio/dac/ad3552r.c b/drivers/iio/dac/ad3552r.c
> index a492e8f2fc0f..0dd6f995c3e2 100644
> --- a/drivers/iio/dac/ad3552r.c
> +++ b/drivers/iio/dac/ad3552r.c
> @@ -140,7 +140,9 @@ enum ad3552r_ch_vref_select {
>  };
>
>  enum ad3542r_id {
> +       AD3541R_ID =3D 0x400b,
>         AD3542R_ID =3D 0x4009,
> +       AD3551R_ID =3D 0x400a,
>         AD3552R_ID =3D 0x4008,
>  };
>
> @@ -745,7 +747,8 @@ static void ad3552r_calc_gain_and_offset(struct ad355=
2r_desc *dac, s32 ch)
>         } else {
>                 /* Normal range */
>                 idx =3D dac->ch_data[ch].range;
> -               if (dac->chip_id =3D=3D AD3542R_ID) {
> +               if (dac->chip_id =3D=3D AD3541R_ID ||
> +                   dac->chip_id =3D=3D AD3542R_ID) {
>                         v_min =3D ad3542r_ch_ranges[idx][0];
>                         v_max =3D ad3542r_ch_ranges[idx][1];
>                 } else {
> @@ -780,7 +783,7 @@ static int ad3552r_find_range(u16 id, s32 *vals)
>         int i, len;
>         const s32 (*ranges)[2];
>
> -       if (id =3D=3D AD3542R_ID) {
> +       if (id =3D=3D AD3541R_ID || id =3D=3D AD3542R_ID) {
>                 len =3D ARRAY_SIZE(ad3542r_ch_ranges);
>                 ranges =3D ad3542r_ch_ranges;
>         } else {
> @@ -955,9 +958,10 @@ static int ad3552r_configure_device(struct ad3552r_d=
esc *dac)
>                         dev_err(dev, "mandatory reg property missing\n");
>                         goto put_child;
>                 }
> -               if (ch >=3D AD3552R_NUM_CH) {
> -                       dev_err(dev, "reg must be less than %d\n",
> -                               AD3552R_NUM_CH);
> +               if (ch >=3D AD3552R_NUM_CH ||
> +                       (dac->chip_id =3D=3D AD3541R_ID && ch) ||
> +                       (dac->chip_id =3D=3D AD3551R_ID && ch)) {
> +                       dev_err(dev, "channel %d is not supported\n", ch)=
;
>                         err =3D -EINVAL;
>                         goto put_child;
>                 }
> @@ -987,9 +991,10 @@ static int ad3552r_configure_device(struct ad3552r_d=
esc *dac)
>                                 goto put_child;
>
>                         dac->ch_data[ch].range =3D val;
> -               } else if (dac->chip_id =3D=3D AD3542R_ID) {
> +               } else if (dac->chip_id =3D=3D AD3541R_ID ||
> +                          dac->chip_id =3D=3D AD3542R_ID) {
>                         dev_err(dev,
> -                               "adi,output-range-microvolt is required f=
or ad3542r\n");
> +                               "adi,output-range-microvolt is required f=
or ad354xr\n");
>                         err =3D -EINVAL;
>                         goto put_child;
>                 } else {
> @@ -1088,10 +1093,20 @@ static int ad3552r_probe(struct spi_device *spi)
>                 return err;
>
>         /* Config triggered buffer device */
> -       if (dac->chip_id =3D=3D AD3552R_ID)
> -               indio_dev->name =3D "ad3552r";
> -       else
> +       switch (dac->chip_id) {
> +       case AD3541R_ID:
> +               indio_dev->name =3D "ad3541r";
> +               break;
> +       case AD3542R_ID:
>                 indio_dev->name =3D "ad3542r";
> +               break;
> +       case AD3551R_ID:
> +               indio_dev->name =3D "ad3551r";
> +               break;
> +       case AD3552R_ID:
> +               indio_dev->name =3D "ad3552r";
> +               break;
> +       }
>         indio_dev->dev.parent =3D &spi->dev;
>         indio_dev->info =3D &ad3552r_iio_info;
>         indio_dev->num_channels =3D dac->num_ch;
> @@ -1110,14 +1125,18 @@ static int ad3552r_probe(struct spi_device *spi)
>  }
>
>  static const struct spi_device_id ad3552r_id[] =3D {
> +       { "ad3541r", AD3541R_ID },
>         { "ad3542r", AD3542R_ID },
> +       { "ad3551r", AD3551R_ID },
>         { "ad3552r", AD3552R_ID },
>         { }
>  };
>  MODULE_DEVICE_TABLE(spi, ad3552r_id);
>
>  static const struct of_device_id ad3552r_of_match[] =3D {
> +       { .compatible =3D "adi,ad3541r"},
>         { .compatible =3D "adi,ad3542r"},
> +       { .compatible =3D "adi,ad3551r"},
>         { .compatible =3D "adi,ad3552r"},
>         { }
>  };
> --
> 2.45.0.rc1
>
>

It looks like it is time for a chip_info struct here instead of the if
and switch statements to get chip-specific data. Most other IIO
drivers have this already and it is the preferred way to look up this
kind of information in the IIO subsystem. I prefer the drivers that
don't put all of the info structs in an array (that way the code is
less verbose). So I would suggest looking at e.g. adc/aspeed_adc,
starting with aspeed_adc_matches, to see what I mean and how to
implement it. (So one patch to add the info structs and a second patch
to add the single channel chips)

