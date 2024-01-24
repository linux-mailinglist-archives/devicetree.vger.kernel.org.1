Return-Path: <devicetree+bounces-34823-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 90E6D83B288
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 20:51:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E0F34B24DDD
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 19:51:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 36546133418;
	Wed, 24 Jan 2024 19:51:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YCcTa0dT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com [209.85.216.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5C5E133409
	for <devicetree@vger.kernel.org>; Wed, 24 Jan 2024 19:51:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706125895; cv=none; b=K79G4PVROnXbWC4zPymKBGfKaYmtGRLKGcuYdfGWJ2ushTz8zzPkoYPqWM/VVVVs0FPVGCR+XTI38JI8lqEWLrAni1d90ViLddvdns1PbUaYMLjTt0Cw8fds5PIvsz1CoPjKBTdcf7mKLZjyf+phdCUw4paPYidEFAvqwLuTiOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706125895; c=relaxed/simple;
	bh=9RgnrZAMWic/KU6v8vx6qvscwLiT9mhJjXhgg6UxIS0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=F3oAb069jN8ZDuN0ouY+GHPVPk2pUbZV+DfrT/uCTYMwOmro67HSk56RMYc3tgiUhnB6Or5RxFtqoSYcoxqNEaMnmY4S+LPNB93pjvHdU+03hAYrI99kKnfLjtkj57C7YEpzu82F3OlKyYInYaR9o/9K3ZOjienYMryv/Jo1vgA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=YCcTa0dT; arc=none smtp.client-ip=209.85.216.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pj1-f46.google.com with SMTP id 98e67ed59e1d1-2901f9ea918so3271422a91.3
        for <devicetree@vger.kernel.org>; Wed, 24 Jan 2024 11:51:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706125893; x=1706730693; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LbUXpdpBL5inpaz8wpZ3Hd1xvaYHJgSJQFchXab3614=;
        b=YCcTa0dTAvJ/NQncvAxv/uTwTOk/zkXNuCvPY40OLaIrfWxvb7a57P9CaIdqGKv4jx
         CO+CXpaBBCuR5+7ihG+IE7lk2NfG6SU7ZOU57DTSoebqsj2hCEF5kGQWCBOrjjR1Mxvf
         MWIpXEs54fSlsr0PRF6nO9iVPC/3ev/Qo2FyR2ulqKQp6SAm3Obgiw+7FohdSfFjEHoQ
         X0xnAaXWDILC9nGcHMCuuxmXteyvk7fnvo3fCGik7yAYR7L95QOHA7WatREpSue4oFIy
         DcIuwNkZtoqcZ+RHUBOUOh2aR1+WS85UCj9MokMv/Deqd7T+VkMUZ879d+H0GIjbYe+G
         UC7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706125893; x=1706730693;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LbUXpdpBL5inpaz8wpZ3Hd1xvaYHJgSJQFchXab3614=;
        b=ZIf2g82YBbrFZqUEVre6n/yyBPtg9WnkDjFga0K37jwByfoECMzKz8cuey/9FprOBP
         36DufnomcO5Ksb+hgIuGYauBCDN+6M7/PRetyCBupk7j0PeZTL7KADv9GIBN96kiqCMB
         8a/8O3oz2zA4AMWctSexdhk8yKZ66PZ6yMK4P1TeeLLK/hn/1gxeaJ6Aype9hd3qKt60
         rA7niGj8grV1PSKbL8I1a/I2cW9PAQzk+5q2h2yzpSsh7lveUNCnrW5EbexctqyCq/e6
         RTqu+tvbAtVwsgYCXhfyN8ZDsAa2Fw6r97wrs8PXZe4ArpqNPDEhUNOHLE9BL604g0LV
         4Rkg==
X-Gm-Message-State: AOJu0YzQuNY1n6ub+6Rr/OcUMBiFk5K8I/Se7aJBNvqCDQnTgDxDYO1S
	1U/PdopL4o6ivGAxJHZXvMJignKVvLY8D6VcQrxlVesKbdcsMwwmC03+F4XqgvH+03f4mULZfC4
	/0XlPfAM8k/UmIbQ5z+Rp3JAzImnNH3B8kBB3pw==
X-Google-Smtp-Source: AGHT+IEW7C7lF/Ll0fHsqyeD+dcwHldsUGy1XZeoMRGL2x6NWPAjSHfSS5d/No56Zjnsn4Tw4ZCtsxSsFSrAAAmuhKM=
X-Received: by 2002:a17:90b:3606:b0:290:c91e:7402 with SMTP id
 ml6-20020a17090b360600b00290c91e7402mr52093pjb.78.1706125892911; Wed, 24 Jan
 2024 11:51:32 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240120012948.8836-1-semen.protsenko@linaro.org>
 <20240120012948.8836-6-semen.protsenko@linaro.org> <9c9e71ff-42ab-4753-80cf-09b34a97b28c@linaro.org>
In-Reply-To: <9c9e71ff-42ab-4753-80cf-09b34a97b28c@linaro.org>
From: Sam Protsenko <semen.protsenko@linaro.org>
Date: Wed, 24 Jan 2024 13:51:21 -0600
Message-ID: <CAPLW+4=z9cgVZgY_a6d69sGfDaErsYSc9tL8mtYdoBeahZGJyA@mail.gmail.com>
Subject: Re: [PATCH 5/7] spi: s3c64xx: Add Exynos850 support
To: Tudor Ambarus <tudor.ambarus@linaro.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Andi Shyti <andi.shyti@kernel.org>, 
	Mark Brown <broonie@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Sylwester Nawrocki <s.nawrocki@samsung.com>, Tomasz Figa <tomasz.figa@gmail.com>, 
	Chanwoo Choi <cw00.choi@samsung.com>, linux-spi@vger.kernel.org, 
	linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-clk@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 24, 2024 at 12:49=E2=80=AFAM Tudor Ambarus <tudor.ambarus@linar=
o.org> wrote:
>
>
>
> On 1/20/24 01:29, Sam Protsenko wrote:
> > Add SPI port configuration for Exynos850 SoC. It has 3 USI blocks which
> > can be configured in SPI mode:
> >
> >   * spi_0: BLK_PERI_SPI_0 (0x13940000)
> >   * spi_1: BLK_ALIVE_USI_CMGP00 (0x11d00000)
> >   * spi_2: BLK_ALIVE_USI_CMGP01 (0x11d20000)
> >
> > SPI FIFO depth is 64 bytes for all those SPI blocks, so the
> > .fifo_lvl_mask value is set to 0x7f. All blocks have DIV_4 as the
> > default internal clock divider, and an internal loopback mode to run
> > a loopback test.
> >
> > Signed-off-by: Sam Protsenko <semen.protsenko@linaro.org>
>
> Reviewed-by: Tudor Ambarus <tudor.ambarus@linaro.org>
>
> > ---
> >  drivers/spi/spi-s3c64xx.c | 14 ++++++++++++++
> >  1 file changed, 14 insertions(+)
> >
> > diff --git a/drivers/spi/spi-s3c64xx.c b/drivers/spi/spi-s3c64xx.c
> > index 0e48ffd499b9..f7d623ad6ac3 100644
> > --- a/drivers/spi/spi-s3c64xx.c
> > +++ b/drivers/spi/spi-s3c64xx.c
> > @@ -1461,6 +1461,17 @@ static const struct s3c64xx_spi_port_config exyn=
os5433_spi_port_config =3D {
> >       .quirks         =3D S3C64XX_SPI_QUIRK_CS_AUTO,
> >  };
> >
> > +static const struct s3c64xx_spi_port_config exynos850_spi_port_config =
=3D {
> > +     .fifo_lvl_mask  =3D { 0x7f, 0x7f, 0x7f },
>
> I'll come with a follow up patch on top of this. Having the dt alias
> used as an index in the fifo_lvl_mask to determine the FIFO depth is
> wrong. Not only because of the dependency on the alias, but also because
> the fifo_lvl_mask value does not reflect the FIFO level reg field.
> Playing with what we have now is ok by me, I find the patch good.
>

Yeah, we just have to make sure all our patches are taken in the
correct order, to avoid any possible conflicts.

> > +     .rx_lvl_offset  =3D 15,
> > +     .tx_st_done     =3D 25,
> > +     .clk_div        =3D 4,
> > +     .high_speed     =3D true,
> > +     .clk_from_cmu   =3D true,
> > +     .has_loopback   =3D true,
> > +     .quirks         =3D S3C64XX_SPI_QUIRK_CS_AUTO,
> > +};
> > +
> >  static const struct s3c64xx_spi_port_config exynosautov9_spi_port_conf=
ig =3D {
> >       .fifo_lvl_mask  =3D { 0x1ff, 0x1ff, 0x7f, 0x7f, 0x7f, 0x7f, 0x1ff=
, 0x7f,
> >                           0x7f, 0x7f, 0x7f, 0x7f},
> > @@ -1515,6 +1526,9 @@ static const struct of_device_id s3c64xx_spi_dt_m=
atch[] =3D {
> >       { .compatible =3D "samsung,exynos5433-spi",
> >                       .data =3D (void *)&exynos5433_spi_port_config,
> >       },
> > +     { .compatible =3D "samsung,exynos850-spi",
> > +                     .data =3D (void *)&exynos850_spi_port_config,
> > +     },
> >       { .compatible =3D "samsung,exynosautov9-spi",
> >                       .data =3D (void *)&exynosautov9_spi_port_config,
> >       },

