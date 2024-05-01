Return-Path: <devicetree+bounces-64354-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2744D8B8F3B
	for <lists+devicetree@lfdr.de>; Wed,  1 May 2024 19:54:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8C8721F22285
	for <lists+devicetree@lfdr.de>; Wed,  1 May 2024 17:54:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 65ED7146D68;
	Wed,  1 May 2024 17:54:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="XXXGmyJW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 710F3146D60
	for <devicetree@vger.kernel.org>; Wed,  1 May 2024 17:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714586076; cv=none; b=FDlycOWwZEE6rqhnLNW5X+BIU+l/NUE10U1SO1kaJCG+Y2CvA4n46P7lYHGnBfmRSxfxhpPs5uC6TrMECTm+5wQ989mpuSG47lH3uQT2+pq1L25aMldoWNEaUi5g34DgLDQRKEcisndwVx4vZBdS2EsyloKosZGtkBmrsTjO8do=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714586076; c=relaxed/simple;
	bh=g2vRlW51ksPFqMiA53Ws+OoVuPCjA2ZlCh8bf53j2uU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=gj9jCqibxse5ckA/sMXf2wbzdN0cvuFYj4jLroEAwMMsYe+MAZ+6iDF3g2wyXDbiQWIG34a6I07Fq6CGzGcFMIkh7D2dbYLnX/RO+qKx44sxkrzY1kxqP+w4Mf3ToMQLzj7N6/7q6YaMJ4VG5j9sfjYqH9pb0w1K0xWGWDbBmWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=XXXGmyJW; arc=none smtp.client-ip=209.85.208.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-2e09138a2b1so43835571fa.3
        for <devicetree@vger.kernel.org>; Wed, 01 May 2024 10:54:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1714586071; x=1715190871; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3LwSN/usAFKRF0JTy6HuQCOFyQ3FO5qA/yel1K2ukXA=;
        b=XXXGmyJWaxzvggJZMlwlO4gwYcqrPt8nkqaR70YxDuPnZj89aNb2ruK8vNV1Uy6RLC
         sxv5Gj/u1nNoJ7h02UJOVWoOwniPvNuH8BYi/12X6vU4TxMKpbjWPAvVucS8wrRwCrqP
         +vP4w/mQuP+FABTTf+uEDkp5RIO+3DJ4lyPD2niAdclZrStKQdokuRwxSP2Xi7saYnXi
         oCIFDHT1pIcgT9VtrDgbNMte6nSncPgZJg4+YduvOzci3Bx2e2ycVvlcaAdqCrTbK+2M
         Z/EvFl9jXbl5IFPFJJv8/+SN5iRE0S2+qTPGCDxLPAHT5OqO4oltvKiwc1RGFpLB7Wvf
         5LYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714586071; x=1715190871;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3LwSN/usAFKRF0JTy6HuQCOFyQ3FO5qA/yel1K2ukXA=;
        b=D92HLZz4hko7+hqkF/9xC7YpEqPOQ1OqcaprO+OWTmW1y2s0ARgwD8HdGu3KN+Gjfj
         3iwHoFHNE9gSkdDQOPF3JpsFRYE1TaZaj5hydQkpNSJaYqwVszsVQJotY5BhKR4iQlHP
         gSlpQFSYLg0i5YlEduC50fWT9ie6q+knAc2dluPVfLI8CQHJPmMUF5rGv+QJppHgAVhv
         0oiwmB8mQJa5QIw5ZVSEHG7DOMRRj0gagPmLL3JSuskrqgpgD21iNFSeL0bfIrPIcphA
         DJSGEM+zmx44+QlwfpFWtMhfmQdgsOpAsNlQ3xHc0CKiM1hxagCQO9ubecMfT08JTema
         NZ/Q==
X-Forwarded-Encrypted: i=1; AJvYcCUkiMGX6M1vvRqmPqKj1NcesajQoBamsvX6Mtf2qjs2h1YoIY1TJSJQWdhbKq3RFFqY+tSzCOUNK394IMyj9QwPEB1Ug74EdkqJzg==
X-Gm-Message-State: AOJu0YxwDOLhQHD/m4rkIAZy1MTycw6LziSxn+P4A9ZPSB/7axCMD0cI
	ycl1NBNEw3pOIkS5IxK/TJqIklj+L0PRNSrlkzp4oBjNoMe4wSSUNQiy9hmK6tVxSimwxeFursO
	CbnP5ODq1bfOO2HTeX70jzQJ0Itr4mOo9BrMCdQ==
X-Google-Smtp-Source: AGHT+IGX/AzqFP/Y16bWkEjrMroIJ01TG7rY01Krl44GfiFQ/HUWfJ3rcCoAHAKd4VFwjIrWvXMrnpZn8kPO66hMlvw=
X-Received: by 2002:a2e:9d8c:0:b0:2df:7889:6738 with SMTP id
 c12-20020a2e9d8c000000b002df78896738mr2038747ljj.24.1714586071483; Wed, 01
 May 2024 10:54:31 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240430162946.589423-1-alisa.roman@analog.com> <20240430162946.589423-7-alisa.roman@analog.com>
In-Reply-To: <20240430162946.589423-7-alisa.roman@analog.com>
From: David Lechner <dlechner@baylibre.com>
Date: Wed, 1 May 2024 12:54:20 -0500
Message-ID: <CAMknhBFAM-fvb1t5b6dn1tkDjP4QfTT7uo+-PMfAQyE8KaFbVw@mail.gmail.com>
Subject: Re: [PATCH v7 6/6] iio: adc: ad7192: Add AD7194 support
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

On Tue, Apr 30, 2024 at 11:30=E2=80=AFAM Alisa-Dariana Roman
<alisadariana@gmail.com> wrote:
>
> Unlike the other AD719Xs, AD7194 has configurable channels. The user can
> dynamically configure them in the devicetree.
>
> Also modify config AD7192 description for better scaling.
>
> Signed-off-by: Alisa-Dariana Roman <alisa.roman@analog.com>
> ---
>  drivers/iio/adc/Kconfig  |  11 +++-
>  drivers/iio/adc/ad7192.c | 129 +++++++++++++++++++++++++++++++++++++--
>  2 files changed, 133 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/iio/adc/Kconfig b/drivers/iio/adc/Kconfig
> index 8db68b80b391..74fecc284f1a 100644
> --- a/drivers/iio/adc/Kconfig
> +++ b/drivers/iio/adc/Kconfig
> @@ -88,12 +88,17 @@ config AD7173
>           called ad7173.
>
>  config AD7192
> -       tristate "Analog Devices AD7190 AD7192 AD7193 AD7195 ADC driver"
> +       tristate "Analog Devices AD7192 and similar ADC driver"
>         depends on SPI
>         select AD_SIGMA_DELTA
>         help
> -         Say yes here to build support for Analog Devices AD7190,
> -         AD7192, AD7193 or AD7195 SPI analog to digital converters (ADC)=
.
> +         Say yes here to build support for Analog Devices SPI analog to =
digital
> +         converters (ADC):
> +         - AD7190
> +         - AD7192
> +         - AD7193
> +         - AD7194
> +         - AD7195
>           If unsure, say N (but it's safe to say "Y").
>
>           To compile this driver as a module, choose M here: the
> diff --git a/drivers/iio/adc/ad7192.c b/drivers/iio/adc/ad7192.c
> index 3e797ff48086..0f6ecf953559 100644
> --- a/drivers/iio/adc/ad7192.c
> +++ b/drivers/iio/adc/ad7192.c
> @@ -1,6 +1,6 @@
>  // SPDX-License-Identifier: GPL-2.0
>  /*
> - * AD7190 AD7192 AD7193 AD7195 SPI ADC driver
> + * AD7192 and similar SPI ADC driver
>   *
>   * Copyright 2011-2015 Analog Devices Inc.
>   */
> @@ -129,10 +129,21 @@
>  #define AD7193_CH_AIN8         0x480 /* AIN7 - AINCOM */
>  #define AD7193_CH_AINCOM       0x600 /* AINCOM - AINCOM */
>
> +#define AD7194_CH_POS(x)       (((x) - 1) << 4)
> +#define AD7194_CH_NEG(x)       ((x) - 1)
> +#define AD7194_CH(pos, neg) \
> +       (((neg) =3D=3D 0 ? BIT(10) : AD7194_CH_NEG(neg)) | AD7194_CH_POS(=
pos))

I think this needs a comment that BIT(10) is the CON18 flag for
pseudo-differential channels.

Also, it would probably be easier to understand if there were two
different macros, one for "single-channel" and one for "diff-channels"
rather than having neg=3D=3D0 magically turn in to the pseudo flag.

> +#define AD7194_CH_TEMP         0x100 /* Temp sensor */
> +#define AD7194_CH_BASE_NR      2
> +#define AD7194_CH_AIN_START    1
> +#define AD7194_CH_AIN_NR       16
> +#define AD7194_CH_MAX_NR       272
> +
>  /* ID Register Bit Designations (AD7192_REG_ID) */
>  #define CHIPID_AD7190          0x4
>  #define CHIPID_AD7192          0x0
>  #define CHIPID_AD7193          0x2
> +#define CHIPID_AD7194          0x3
>  #define CHIPID_AD7195          0x6
>  #define AD7192_ID_MASK         GENMASK(3, 0)
>
> @@ -170,6 +181,7 @@ enum {
>         ID_AD7190,
>         ID_AD7192,
>         ID_AD7193,
> +       ID_AD7194,
>         ID_AD7195,
>  };
>
> @@ -179,6 +191,7 @@ struct ad7192_chip_info {
>         const struct iio_chan_spec      *channels;
>         u8                              num_channels;
>         const struct iio_info           *info;
> +       int (*parse_channels)(struct iio_dev *indio_dev);
>  };
>
>  struct ad7192_state {
> @@ -932,6 +945,15 @@ static const struct iio_info ad7192_info =3D {
>         .update_scan_mode =3D ad7192_update_scan_mode,
>  };
>
> +static const struct iio_info ad7194_info =3D {
> +       .read_raw =3D ad7192_read_raw,
> +       .write_raw =3D ad7192_write_raw,
> +       .write_raw_get_fmt =3D ad7192_write_raw_get_fmt,
> +       .read_avail =3D ad7192_read_avail,
> +       .validate_trigger =3D ad_sd_validate_trigger,
> +       .update_scan_mode =3D ad7192_update_scan_mode,

It looks like ad7192_update_scan_mode() won't work on ad7194 since the
channels are specified via DT for this chip and could be anything.
Each scan_index no longer corresponds a specific bit in
AD7192_REG_CONF so it would end up with some random configuration.

> +};
> +

The rest looks fine other than what Andy mentioned already.

