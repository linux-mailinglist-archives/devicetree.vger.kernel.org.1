Return-Path: <devicetree+bounces-106578-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E94C98AE04
	for <lists+devicetree@lfdr.de>; Mon, 30 Sep 2024 22:18:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 122571F213E2
	for <lists+devicetree@lfdr.de>; Mon, 30 Sep 2024 20:18:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C45151AD9F2;
	Mon, 30 Sep 2024 20:14:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IgQ1+e/a"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f181.google.com (mail-yw1-f181.google.com [209.85.128.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AA0B1A255C
	for <devicetree@vger.kernel.org>; Mon, 30 Sep 2024 20:14:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727727288; cv=none; b=tFIScLrB4g4BKxgSan23brSF377TL6FE9n3yQ9kDSy42J2L0GMshIdMgLlDnI2+PiUpHObRVMtQjLJFxVVj9PFESHSOrXQU3NrpmEyXgS9C5g0p3Fi05PtSz9i8o68e+qht/E0l9ztl/BdmsnBH8jJdu5mw1OO+mkZri2T6/vR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727727288; c=relaxed/simple;
	bh=X/4e7mZxuw2J+n9vnToA8fMOd1pL/QZg+X4D355Gd6g=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=mrGL+bbSxvgJjpzCGtoDgjy6NILUIGgS+0RF52Wn2jTNfQT5doEhF+jtTAtzIRdkfP0aLat/3YyzmxWLp3DvmOTNz1R1/D5yZPqtYsogwMB74rzHrPRNCYPqBAZZ5OQPv6UbLakmlLYqjtEp1kj0W7dkPNAVfMZF/knKaHHiPsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=IgQ1+e/a; arc=none smtp.client-ip=209.85.128.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f181.google.com with SMTP id 00721157ae682-6e214c3d045so37726777b3.0
        for <devicetree@vger.kernel.org>; Mon, 30 Sep 2024 13:14:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727727284; x=1728332084; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pprKSaNRuk4RU9vGlhC9xypgMoYbs/DlEn6atpZhZX0=;
        b=IgQ1+e/aYhrvpPcZVPrCJ9h+UaepHAeuRAE5y4GV+e9YKVZ1n2SLbXTWXGULYm/YFn
         QiGlpagbdKg9pX5TjQgQkHhzOs8nOLhNsCsYPg5JKPWuKus40DVR16dp9OiGVCUZv8MW
         Pu4olqTwWnUDDjrvD2GRPUHBQ4mWoOM/thaPREmADIMqwqwNM4ujytpy2+Ra/kTTtiMB
         zElSnqrhOrq28+3hSFR0qXjBEvkYaC1nBvFgbDRVIjJXUFUn/7R6MXmbTlf7nVvHdYZi
         nsg+1gUe/y1zgjA5zTNJSx6LRd2Zd5qW3/cmj5IWsl1TyarjnoqI6nWU3bqIjsamhl9G
         IyYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727727284; x=1728332084;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pprKSaNRuk4RU9vGlhC9xypgMoYbs/DlEn6atpZhZX0=;
        b=RX1KrFupnEDsAPISSPV6H5RL3yLVBJ74/rwwb+91xKERBBSIF5tNT3jtQPewxOd+3d
         ly8IBMW762Pe3qxOAGhiY7saWLkSEy6FcBVTINmNF4h7uhtW+YeFfjCwuMxUbUm69tro
         /hjWAOy5qeaYu1Byw1/cXbyfngdDGIgzDIKBh6IfqrYknvbRm0EJFpekY3iPaLdQMsUN
         vqm8+J2DZ84gHUZ4GK222YDo2A2WwbD0yTBcs/k78XeZiwuxTkASxbZwyWi+SkQNy73e
         5/B+EP/oTsvixleRf4JF7rlP6V71zF2Qiy9WSNABkOZl0NCBucDc4527BBA0mR5F9FSM
         5/oA==
X-Forwarded-Encrypted: i=1; AJvYcCU0S8Zl60JCEaDWo8MWx6xTV8RlmxsaZMtpeOl9r2BGjBtO0RE59rwWLiq0H1asUV5wQ+PEGwB8s1VS@vger.kernel.org
X-Gm-Message-State: AOJu0Yz9x4KPVsN6cjCPsIWkvxN06fAkbVfO091mkvjfgao4F4g9ln2A
	pTyJP72dq8oYaH/3v3szrGaBTXSm86msn8iOE+13un1VT0jZIhKDxc7Cr86Zr2RoITCL3w+ToM5
	br5qNqsTVrk4myRBjZzRmRwey8GTHEOrn70Gcuw==
X-Google-Smtp-Source: AGHT+IGw89Yi103G7oHwBihXrrG7C1HKFwoxrFWy4eJ4ItSgybQDiDfYN6d7HhLwkVImZdJ046BeMXWV/7ACSsaScYs=
X-Received: by 2002:a05:690c:6403:b0:646:7b75:5c2c with SMTP id
 00721157ae682-6e247546f2bmr112204887b3.16.1727727284450; Mon, 30 Sep 2024
 13:14:44 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CGME20240913080347epcas2p4b5694797cff88a22fd815a9de989d20b@epcas2p4.samsung.com>
 <20240913080325.3676181-1-trunixs.kim@samsung.com> <20240913080325.3676181-3-trunixs.kim@samsung.com>
In-Reply-To: <20240913080325.3676181-3-trunixs.kim@samsung.com>
From: Sam Protsenko <semen.protsenko@linaro.org>
Date: Mon, 30 Sep 2024 15:14:33 -0500
Message-ID: <CAPLW+4k0rpS0F14sqMGPbq_m=aMqK+g=PZewtZYYroQ+OQBeOQ@mail.gmail.com>
Subject: Re: [PATCH 2/3] watchdog: s3c2410_wdt: add support for exynosautov920 SoC
To: Taewan Kim <trunixs.kim@samsung.com>
Cc: Wim Van Sebroeck <wim@linux-watchdog.org>, Guenter Roeck <linux@roeck-us.net>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>, linux-watchdog@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	Byoungtae Cho <bt.cho@samsung.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Sep 13, 2024 at 3:04=E2=80=AFAM Taewan Kim <trunixs.kim@samsung.com=
> wrote:
>
> From: Byoungtae Cho <bt.cho@samsung.com>
>
> Adds the compatibles and drvdata for the ExynosAuto V920 SoC. This SoC
> is almost similar to ExynosAutoV9, but some CPU configurations are quite
> different, so it should be added. Plus it also support DBGACK like as
> GS101 SoC.
>
> Signed-off-by: Byoungtae Cho <bt.cho@samsung.com>
> Signed-off-by: Taewan Kim <trunixs.kim@samsung.com>
> ---
>  drivers/watchdog/s3c2410_wdt.c | 37 +++++++++++++++++++++++++++++++++-
>  1 file changed, 36 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/watchdog/s3c2410_wdt.c b/drivers/watchdog/s3c2410_wd=
t.c
> index 686cf544d0ae..c25133348f0e 100644
> --- a/drivers/watchdog/s3c2410_wdt.c
> +++ b/drivers/watchdog/s3c2410_wdt.c
> @@ -63,6 +63,10 @@
>  #define EXYNOS850_CLUSTER1_NONCPU_INT_EN       0x1644
>  #define EXYNOSAUTOV9_CLUSTER1_NONCPU_OUT       0x1520
>  #define EXYNOSAUTOV9_CLUSTER1_NONCPU_INT_EN    0x1544
> +#define EXYNOSAUTOV920_CLUSTER0_NONCPU_OUT     0x1420
> +#define EXYNOSAUTOV920_CLUSTER0_NONCPU_INT_EN  0x1444
> +#define EXYNOSAUTOV920_CLUSTER1_NONCPU_OUT     0x1720
> +#define EXYNOSAUTOV920_CLUSTER1_NONCPU_INT_EN  0x1744
>
>  #define EXYNOS850_CLUSTER0_WDTRESET_BIT                24
>  #define EXYNOS850_CLUSTER1_WDTRESET_BIT                23
> @@ -303,6 +307,32 @@ static const struct s3c2410_wdt_variant drv_data_gs1=
01_cl1 =3D {
>                   QUIRK_HAS_DBGACK_BIT,
>  };
>
> +static const struct s3c2410_wdt_variant drv_data_exynosautov920_cl0 =3D =
{
> +       .mask_reset_reg =3D EXYNOSAUTOV920_CLUSTER0_NONCPU_INT_EN,
> +       .mask_bit =3D 2,
> +       .mask_reset_inv =3D true,
> +       .rst_stat_reg =3D EXYNOS5_RST_STAT_REG_OFFSET,
> +       .rst_stat_bit =3D EXYNOSAUTOV9_CLUSTER0_WDTRESET_BIT,
> +       .cnt_en_reg =3D EXYNOSAUTOV920_CLUSTER0_NONCPU_OUT,
> +       .cnt_en_bit =3D 7,
> +       .quirks =3D QUIRK_HAS_WTCLRINT_REG | QUIRK_HAS_PMU_MASK_RESET |
> +                 QUIRK_HAS_PMU_RST_STAT | QUIRK_HAS_PMU_CNT_EN |
> +                 QUIRK_HAS_DBGACK_BIT,
> +};
> +
> +static const struct s3c2410_wdt_variant drv_data_exynosautov920_cl1 =3D =
{
> +       .mask_reset_reg =3D EXYNOSAUTOV920_CLUSTER1_NONCPU_INT_EN,
> +       .mask_bit =3D 2,
> +       .mask_reset_inv =3D true,
> +       .rst_stat_reg =3D EXYNOS5_RST_STAT_REG_OFFSET,
> +       .rst_stat_bit =3D EXYNOSAUTOV9_CLUSTER1_WDTRESET_BIT,
> +       .cnt_en_reg =3D EXYNOSAUTOV920_CLUSTER1_NONCPU_OUT,
> +       .cnt_en_bit =3D 7,
> +       .quirks =3D QUIRK_HAS_WTCLRINT_REG | QUIRK_HAS_PMU_MASK_RESET |
> +                 QUIRK_HAS_PMU_RST_STAT | QUIRK_HAS_PMU_CNT_EN |
> +                 QUIRK_HAS_DBGACK_BIT,
> +};
> +
>  static const struct of_device_id s3c2410_wdt_match[] =3D {
>         { .compatible =3D "google,gs101-wdt",
>           .data =3D &drv_data_gs101_cl0 },
> @@ -320,6 +350,8 @@ static const struct of_device_id s3c2410_wdt_match[] =
=3D {
>           .data =3D &drv_data_exynos850_cl0 },
>         { .compatible =3D "samsung,exynosautov9-wdt",
>           .data =3D &drv_data_exynosautov9_cl0 },
> +       { .compatible =3D "samsung,exynosautov920-wdt",
> +         .data =3D &drv_data_exynosautov920_cl0},
>         {},
>  };
>  MODULE_DEVICE_TABLE(of, s3c2410_wdt_match);
> @@ -643,7 +675,8 @@ s3c2410_get_wdt_drv_data(struct platform_device *pdev=
, struct s3c2410_wdt *wdt)
>         /* Choose Exynos850/ExynosAutov9 driver data w.r.t. cluster index=
 */
>         if (variant =3D=3D &drv_data_exynos850_cl0 ||
>             variant =3D=3D &drv_data_exynosautov9_cl0 ||
> -           variant =3D=3D &drv_data_gs101_cl0) {
> +           variant =3D=3D &drv_data_gs101_cl0 ||
> +           variant =3D=3D &drv_data_exynosautov920_cl0) {
>                 u32 index;
>                 int err;
>
> @@ -662,6 +695,8 @@ s3c2410_get_wdt_drv_data(struct platform_device *pdev=
, struct s3c2410_wdt *wdt)
>                                 variant =3D &drv_data_exynosautov9_cl1;
>                         else if (variant =3D=3D &drv_data_gs101_cl0)
>                                 variant =3D &drv_data_gs101_cl1;
> +                       else if (variant =3D=3D &drv_data_exynosautov920_=
cl1)

Shouldn't it be cl0 here?

> +                               variant =3D &drv_data_exynosautov920_cl1;
>                         break;
>                 default:
>                         return dev_err_probe(dev, -EINVAL, "wrong cluster=
 index: %u\n", index);
> --
> 2.46.0
>
>

