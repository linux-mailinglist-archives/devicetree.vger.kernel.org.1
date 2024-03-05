Return-Path: <devicetree+bounces-48248-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 85334871167
	for <lists+devicetree@lfdr.de>; Tue,  5 Mar 2024 01:08:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 39877284493
	for <lists+devicetree@lfdr.de>; Tue,  5 Mar 2024 00:08:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8786D10F7;
	Tue,  5 Mar 2024 00:08:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="HqNU/HwM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C068170
	for <devicetree@vger.kernel.org>; Tue,  5 Mar 2024 00:08:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709597295; cv=none; b=SA0hf1uMvGjt9lfXCVnI6DjA2Y+Bq8SacAXd/2Cdc02ikLBK6ws2fCKd3acIKUsGsxauWXlruXgnzFi+NhhYKogpYwQE90tFj7PPksEoLxM8dLYKW1gyvSTfcXFDaZHSAsvkQeX7ceaxZks5+j4D2GvZIxORS3OJHxMX9D2OFcg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709597295; c=relaxed/simple;
	bh=iBD/lWgE32zXC2QBHxGi//O0lo0WtY3b6Y89v266YRs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=M8E0GS9hZORBAZRbVvAcs3OnVMwhtATypzB0v3Bzm+D94bQvfVamI2esY8peklCM6jlAv+RJnt277orS1YuVC+46TNDOzkTzo6lSMjiZRgvUXd22JGSshu/lw8Kk4kj+WtQD/ZVQ3aAcMq7224wM3HwlXIAjGSBQ7522eEsdqmw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=HqNU/HwM; arc=none smtp.client-ip=209.85.208.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-2d309a23d76so38463041fa.1
        for <devicetree@vger.kernel.org>; Mon, 04 Mar 2024 16:08:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1709597290; x=1710202090; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=09gjUa1aNcaW8opSfWpZn+d038/7XmkYe107VGCZCIo=;
        b=HqNU/HwMJojUyz7FtaNRbupydTeXR2g7v53SFHgK0tz1oDHIb8pD9EZVXlej7N0Akd
         la5MGK8zmB0y+Fla9yJY6YzCjt1y6rNW5ATmbonl3k80n5d0ohFIXsDt5nNRHsYsrvoA
         ZpXEAHbvR+NIAiaM6Tr2AebUD9kggTCr9VJekSWzWGWZhvrEU8749h3yXYHd+JTLEFOp
         fCWIIopAx3jhAHlC6lcgE8EYJwJd58JZjpIuP0L8Qhdx9X5x2Ci/xv76gJDzKZHMCgp/
         C1oGIM04zQg5MpH/Ha8xa4CQiiDbYaAlFqvhE7d65C7Sv+KxorSXBokzmcOubsO1nGyO
         1nzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709597290; x=1710202090;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=09gjUa1aNcaW8opSfWpZn+d038/7XmkYe107VGCZCIo=;
        b=Latp/SMg0rTc80dTpsKCXdw7nrDy6Vdijzgl2ce6yoFnaM6lICheXTZoorDlEsm7KT
         GDfzApLRousaEqQLqnBte5UtqCuhK9XR1OrRkWt+ieuzTJuohKs4C/tntiZVEJz+IF2D
         rbIXrPcClOuOR25O0yByrfn0ZyILs/Kr2dOWf9vp4QtYrLFrmUVLHDWb1XsNqTuHl3tR
         T4p+/HPOVZikzEIgE0JxXHFYJyHP2PxAn5tmoziVrx90Mfg09DOamMSnNbLlI7FKw3g2
         QCMm2eOzL/XR2XwR+6x9gVeRYL6adzxR0S0NP3lset6pVCSLwpDWEtUyXKvB9LZEVeB3
         JZTQ==
X-Forwarded-Encrypted: i=1; AJvYcCXJNyJGEj5UK6AWdxJTq/vC6RLrhmBBToET5pgkOkQjI65UAgIhkv8hmrqiJgPhobdQbXatHJennH8eov0DelGYRii08B2e/Yoprg==
X-Gm-Message-State: AOJu0Yz1Px7Zcq0sIKgyaWGf7CsRZ2w/UXE7sNXFRxovaTB8/X41uf9f
	EgjyCLUNi0Y4gS2ahhLvOKkrnfo/je3FJqvQWortUIPL4S8aPEuaVFA7XYZkkGhzqAyPw/0qOBt
	CK2Fs8jgSNOem9eUjPePx8Xvqn40AUZg7h/7VdQ==
X-Google-Smtp-Source: AGHT+IF6jOcbxgpV5XnETtLmcngNiEFaSfy9AoFXhR2CKsQ+k92FKANJqu2HvZwGqa3iyBWwRU+kqKS0bmNwUI/avkY=
X-Received: by 2002:a05:651c:b06:b0:2d2:b5cb:cc3f with SMTP id
 b6-20020a05651c0b0600b002d2b5cbcc3fmr124275ljr.2.1709597290067; Mon, 04 Mar
 2024 16:08:10 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240228135532.30761-1-mitrutzceclan@gmail.com> <20240228135532.30761-3-mitrutzceclan@gmail.com>
In-Reply-To: <20240228135532.30761-3-mitrutzceclan@gmail.com>
From: David Lechner <dlechner@baylibre.com>
Date: Mon, 4 Mar 2024 18:07:58 -0600
Message-ID: <CAMknhBGv5vfFPRJ_4nKrYWgxiovgHqTEtJoRs+EzvbvpF8a+Bw@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] iio: adc: ad7173: add support for additional models
To: Dumitru Ceclan <mitrutzceclan@gmail.com>
Cc: Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Ceclan Dumitru <dumitru.ceclan@analog.com>, linux-iio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Feb 28, 2024 at 7:55=E2=80=AFAM Dumitru Ceclan <mitrutzceclan@gmail=
.com> wrote:
>
> Add support for Analog Devices AD7172-2, AD7175-8, AD7177-2.
>
> Signed-off-by: Dumitru Ceclan <mitrutzceclan@gmail.com>
> ---
>  drivers/iio/adc/ad7173.c | 82 ++++++++++++++++++++++++++++++++++++----
>  1 file changed, 74 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/iio/adc/ad7173.c b/drivers/iio/adc/ad7173.c
> index b42fbe28a325..e60ecce20e08 100644
> --- a/drivers/iio/adc/ad7173.c
> +++ b/drivers/iio/adc/ad7173.c
> @@ -1,6 +1,11 @@
>  // SPDX-License-Identifier: GPL-2.0+
>  /*
> - * AD7172-2/AD7173-8/AD7175-2/AD7176-2 SPI ADC driver
> + * AD717x family SPI ADC driver
> + *
> + * Supported devices:
> + *  AD7172-2/AD7172-4/AD7173-8/AD7175-2
> + *  AD7175-8/AD7176-2/AD7177-2
> + *
>   * Copyright (C) 2015, 2024 Analog Devices, Inc.
>   */
>
> @@ -61,10 +66,13 @@
>  #define AD7173_AIN_TEMP_POS    17
>  #define AD7173_AIN_TEMP_NEG    18
>
> -#define AD7172_ID                      0x00d0
> -#define AD7173_ID                      0x30d0
> -#define AD7175_ID                      0x0cd0
> +#define AD7172_2_ID                    0x00d0
>  #define AD7176_ID                      0x0c90
> +#define AD7175_2_ID                    0x0cd0
> +#define AD7172_4_ID                    0x2050
> +#define AD7173_ID                      0x30d0
> +#define AD7175_8_ID                    0x3cd0
> +#define AD7177_ID                      0x4fd0

It would be nice to keep these sorted by name/number like they were.

>  #define AD7173_ID_MASK                 GENMASK(15, 4)
>
>  #define AD7173_ADC_MODE_REF_EN         BIT(15)
> @@ -110,15 +118,19 @@
>  #define AD7173_SETUP_REF_SEL_EXT_REF   0x0
>  #define AD7173_VOLTAGE_INT_REF_uV      2500000
>  #define AD7173_TEMP_SENSIIVITY_uV_per_C        477
> +#define AD7177_ODR_START_VALUE         0x07
>
>  #define AD7173_FILTER_ODR0_MASK                GENMASK(5, 0)
>  #define AD7173_MAX_CONFIGS             8
>
>  enum ad7173_ids {
>         ID_AD7172_2,
> +       ID_AD7172_4,
>         ID_AD7173_8,
>         ID_AD7175_2,
> +       ID_AD7175_8,
>         ID_AD7176_2,
> +       ID_AD7177_2,
>  };
>
>  struct ad7173_device_info {
> @@ -190,7 +202,7 @@ static const unsigned int ad7175_sinc5_data_rates[] =
=3D {
>  static const struct ad7173_device_info ad7173_device_info[] =3D {
>         [ID_AD7172_2] =3D {
>                 .name =3D "ad7172-2",
> -               .id =3D AD7172_ID,
> +               .id =3D AD7172_2_ID,

It would be nice to put these renames in a separate patch since it is
unrelated to the parts being added.

