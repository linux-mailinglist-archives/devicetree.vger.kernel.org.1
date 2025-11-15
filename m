Return-Path: <devicetree+bounces-239020-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 614A5C60982
	for <lists+devicetree@lfdr.de>; Sat, 15 Nov 2025 18:38:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 9E2F5351EC9
	for <lists+devicetree@lfdr.de>; Sat, 15 Nov 2025 17:37:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 02EF92741C9;
	Sat, 15 Nov 2025 17:37:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6728E23BF8F
	for <devicetree@vger.kernel.org>; Sat, 15 Nov 2025 17:37:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763228264; cv=none; b=cQQXam2ETsrtBbDzMnAhZ9+obMXSha4WsXSGi8ErHkQ0y4hHgpP7ZJtTsYmFBxs/g5dX0Ca2C4vjDDwHtAZSevvArgUKtet+dYaah1niAydUIS+CAB31Rvs3QwvfBrIXSrGQ+Gt2BGwKoryFMgwXqHqi/t14/Jx2iOMThAPU2fA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763228264; c=relaxed/simple;
	bh=s+S9pW5x//ou7X1wP3bi3A8Ps+6qeGc9acdcWBpHbU0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ZAqBdF8lWh/WG2jgidCNE4BLP/dnurcMTDoFXjSwJeDm2Re4q5rz4XIIBQzRAZ24mrTXwx3WRSv4oVwVhzv9dNNx1MeOfa2YMnCitOUbBawI84jPhyVK53C2faqiI51IcHpTfhbPHr9W8Ew8mQRdN5U8zGIzP+wMF3P5hOrtNUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=csie.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=csie.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-5958931c9c7so1166839e87.2
        for <devicetree@vger.kernel.org>; Sat, 15 Nov 2025 09:37:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763228258; x=1763833058;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=iS8st6S4NEhfwQi2ADWQ0RHyYWa8wB83L+ih+AMC2co=;
        b=WVeoaaqPhcDHYFDaTvkXWeLVeNwxbsY7lGh/BBdcXq+1RJ+QNP+vsaCGTXt2a2ryWz
         oOcwrIaAB4HQbGnkHDtiPKInHqdZyBxYHM5tqageMSSMW9OMgZYoUrIvbQ5/pCIhBz9h
         6q5s395VQMhL9ucdWcU+WWFiabL66T8YN95t05waTrthgN5NTD4VhMnEdMJczhDm241w
         Dvg5YXpgsNqHDlJg3sHyljoLzEYw0qRIRQ3mTZAYPIwI+0KdWdeMp4etEV4Edq+lhJCK
         eViXn+DQBWk8RNIuCON3SStRq5syt5OFgYW6pGtT9q6x6kxdavuFCtYNFvY/WR8vq46h
         k47Q==
X-Forwarded-Encrypted: i=1; AJvYcCVeNga/9otQr7oYulSnztpMYd3CqSYyVCh2umufdaEMXN0b59vFLC7iAnGbV9pyki43J7c8+TDFdM92@vger.kernel.org
X-Gm-Message-State: AOJu0YzALd9XDGqh/5PlSjHCo6cVCTOIryN2gq34VChZMAefpHuTZm6Y
	uw4iaZS6r31vgRP6zUu8qWBpNnVeGgL1W8oEfOx6vtGEXnUBp6nZLmPUy4SovXi2
X-Gm-Gg: ASbGncsP9N91Sy/4w+UuPkMhgqR/u28Q9u0fHmNmuSYXKbJePxPX2j1O092qV4ohOZi
	TC/Wj0jOhXS3NwVCYczScy65NmPxNazXYiAPqhEWDiA94QJaCVh9be+SWXtgPO/fvuRGHKykaq9
	vtQdAebVb3banHXKr1Jk3Y2LYk5SwpxL8gZePmheJYCb3UU7sG6S/ixeY0oQ7scoiZ+HAA93P5k
	Cvw8jCNcv3llnqo+ihX/KWAffChH6g8BL5+iEuihiko5CaLQUc3T435L/S46Srq404d/TbR1Kv0
	m03vXw+nuVb4chXqpVolEFOm8UFoGPL9FDUTWFYmpj43iqbHG9aiUHGZNpcPsHRHRoyi4lN2e3m
	npLpnzqbMool830qUYk+Au+a5ebaDcbf+pyasTUOXIpeKrqsrmnLSE1/jD3bIoUAvMg6KCNJ6bX
	zMVmdB3eyiwPPcmcaIUG4+QnWUZPpKSzH7ff4b78zrbIs=
X-Google-Smtp-Source: AGHT+IHPii/8vtI2Er/lEZA5ECZdT0nnbfsVnFWUJDUI9IptzF+tjNXB+T+H+H4laYN3VhY0IWI4OA==
X-Received: by 2002:a05:6512:6c4:b0:595:7e9c:cdf7 with SMTP id 2adb3069b0e04-59584220ccamr2794279e87.51.1763228257662;
        Sat, 15 Nov 2025 09:37:37 -0800 (PST)
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com. [209.85.208.180])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5958040578fsm1863870e87.78.2025.11.15.09.37.37
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 15 Nov 2025 09:37:37 -0800 (PST)
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-37bb8bef4cdso3000611fa.3
        for <devicetree@vger.kernel.org>; Sat, 15 Nov 2025 09:37:37 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVS5etYmCu4EIznbcnIbBVCo5te0jbF5eB1cLmK01Oat4NcrTXeZWfEa/HihGkkm6fgYxoZ9cFWVWdW@vger.kernel.org
X-Received: by 2002:a05:651c:41d5:b0:37a:4c29:3a90 with SMTP id
 38308e7fff4ca-37babac1aa5mr18627811fa.0.1763228257141; Sat, 15 Nov 2025
 09:37:37 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251115141347.13087-1-jernej.skrabec@gmail.com> <20251115141347.13087-4-jernej.skrabec@gmail.com>
In-Reply-To: <20251115141347.13087-4-jernej.skrabec@gmail.com>
Reply-To: wens@csie.org
From: Chen-Yu Tsai <wens@csie.org>
Date: Sun, 16 Nov 2025 01:37:24 +0800
X-Gmail-Original-Message-ID: <CAGb2v64xOrLzPYNOfFNFfPckR8EUF_U6xY0J_a3G7b0Ymb4OnA@mail.gmail.com>
X-Gm-Features: AWmQ_bmhcY2-o8gJRo_3ltGzVFP1TpTD5csESojSsWw724bLMcf3HNL8i2V4XHQ
Message-ID: <CAGb2v64xOrLzPYNOfFNFfPckR8EUF_U6xY0J_a3G7b0Ymb4OnA@mail.gmail.com>
Subject: Re: [PATCH 3/7] clk: sunxi-ng: de2: Export register regmap for DE33
To: Jernej Skrabec <jernej.skrabec@gmail.com>
Cc: samuel@sholland.org, mripard@kernel.org, maarten.lankhorst@linux.intel.com, 
	tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, mturquette@baylibre.com, 
	sboyd@kernel.org, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, 
	linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Nov 15, 2025 at 10:14=E2=80=AFPM Jernej Skrabec
<jernej.skrabec@gmail.com> wrote:
>
> DE33 clock pre-set plane mapping, which is not something that we want
> from clock driver. Export registers instead, so DRM driver can set them
> properly.
>
> Signed-off-by: Jernej Skrabec <jernej.skrabec@gmail.com>
> ---
>  drivers/clk/sunxi-ng/ccu-sun8i-de2.c | 53 ++++++++++++++++++++++++++--
>  1 file changed, 50 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/clk/sunxi-ng/ccu-sun8i-de2.c b/drivers/clk/sunxi-ng/=
ccu-sun8i-de2.c
> index a6cd0f988859..2841ec922025 100644
> --- a/drivers/clk/sunxi-ng/ccu-sun8i-de2.c
> +++ b/drivers/clk/sunxi-ng/ccu-sun8i-de2.c
> @@ -6,9 +6,11 @@
>  #include <linux/clk.h>
>  #include <linux/clk-provider.h>
>  #include <linux/io.h>
> +#include <linux/mfd/syscon.h>
>  #include <linux/module.h>
>  #include <linux/of.h>
>  #include <linux/platform_device.h>
> +#include <linux/regmap.h>
>  #include <linux/reset.h>
>
>  #include "ccu_common.h"
> @@ -250,6 +252,41 @@ static const struct sunxi_ccu_desc sun50i_h616_de33_=
clk_desc =3D {
>         .num_resets     =3D ARRAY_SIZE(sun50i_h5_de2_resets),
>  };
>
> +/*
> + * Add a regmap for the DE33 plane driver to access plane
> + * mapping registers.
> + * Only these registers are allowed to be written, to prevent
> + * overriding clock and reset configuration.
> + */
> +
> +#define SUN50I_DE33_CHN2CORE_REG 0x24
> +#define SUN50I_DE33_PORT02CHN_REG 0x28
> +#define SUN50I_DE33_PORT12CHN_REG 0x2c
> +
> +static bool sun8i_de2_ccu_regmap_accessible_reg(struct device *dev,
> +                                               unsigned int reg)
> +{
> +       switch (reg) {
> +       case SUN50I_DE33_CHN2CORE_REG:
> +       case SUN50I_DE33_PORT02CHN_REG:
> +       case SUN50I_DE33_PORT12CHN_REG:
> +               return true;
> +       default:
> +               return false;
> +       }
> +}

Since the registers are contiguous, I think it makes a bit more sense
to use the .rd_table and .wr_table. A bonus is that the check can be
inlined in the core instead of calling a function pointer.

> +static const struct regmap_config sun8i_de2_ccu_regmap_config =3D {
> +       .reg_bits       =3D 32,
> +       .val_bits       =3D 32,
> +       .reg_stride     =3D 4,
> +       .max_register   =3D 0xe0,

None of the registers past SUN50I_DE33_PORT12CHN_REG are accessible,
so we should probably just put that here.

> +
> +       /* other devices have no business accessing other registers */
> +       .readable_reg   =3D sun8i_de2_ccu_regmap_accessible_reg,
> +       .writeable_reg  =3D sun8i_de2_ccu_regmap_accessible_reg,
> +};
> +
>  static int sunxi_de2_clk_probe(struct platform_device *pdev)
>  {
>         struct clk *bus_clk, *mod_clk;
> @@ -303,13 +340,23 @@ static int sunxi_de2_clk_probe(struct platform_devi=
ce *pdev)
>         }
>
>         /*
> -        * The DE33 requires these additional (unknown) registers set
> +        * The DE33 requires these additional plane mapping registers set
>          * during initialisation.
>          */
>         if (of_device_is_compatible(pdev->dev.of_node,
>                                     "allwinner,sun50i-h616-de33-clk")) {
> -               writel(0, reg + 0x24);
> -               writel(0x0000a980, reg + 0x28);
> +               struct regmap *regmap;
> +
> +               regmap =3D devm_regmap_init_mmio(&pdev->dev, reg,
> +                                              &sun8i_de2_ccu_regmap_conf=
ig);
> +               if (IS_ERR(regmap)) {
> +                       ret =3D PTR_ERR(regmap);
> +                       goto err_assert_reset;
> +               }
> +
> +               ret =3D of_syscon_register_regmap(pdev->dev.of_node, regm=
ap);

dev_of_node(&pdev->dev) instead of directly accessing the member.
IIRC this is the new preferred style.


Thanks
ChenYu

> +               if (ret)
> +                       goto err_assert_reset;
>         }
>
>         ret =3D devm_sunxi_ccu_probe(&pdev->dev, reg, ccu_desc);
> --
> 2.51.2
>
>

