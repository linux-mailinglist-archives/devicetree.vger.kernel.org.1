Return-Path: <devicetree+bounces-36478-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1428B841599
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 23:25:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 37FB21C22C60
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 22:25:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77B13159592;
	Mon, 29 Jan 2024 22:25:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="SSbb6sj/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com [209.85.160.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C29B5159586
	for <devicetree@vger.kernel.org>; Mon, 29 Jan 2024 22:25:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706567142; cv=none; b=NlXRvFT3bxhwDdKjZqbloIdmQ1EgLZRDZn1kbswpmhx4+HIO6AEQvBhMtg08vY8JQ9XVcBYm6TrzaxPJYRAEEL3u95rUfK5slc1ze3gSmKyM12VJDqzFmQmtD1Qwtit4AiIrQ8TmOH3XxMdQyN7IYqiiqDFomsNF7tjGGNTUmDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706567142; c=relaxed/simple;
	bh=9WFxEDtj6oqii1H2ZC+yUNwxmBiIaPxWMCAeynATpXo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=sqxr0PTNthFchrYkkyRHX++n0fNMXxAmLppihd/kME4ZP2lu15e8s7kZyD1EH40TFD+h2H1aMZpV2D4Xie/KroM7W8V5xOpHXs+cqycOt2VrI7DC02r86H0L2Q/EFHuy0MBUls9Cv+FBJSyjNwXXemSed+z3d9gm/3kZOj3qH8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=SSbb6sj/; arc=none smtp.client-ip=209.85.160.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-qt1-f169.google.com with SMTP id d75a77b69052e-42a7765511bso27471cf.1
        for <devicetree@vger.kernel.org>; Mon, 29 Jan 2024 14:25:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1706567139; x=1707171939; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4mdCPUKoIVhBRVBAt+UHLaSJZg2VQOPHD/VbN5Tg7Oc=;
        b=SSbb6sj/sNzQYrd4jl/5aK7V/5YJD0d3HzDooAVqfMbYWfBtRkmxexSVu0IiiA0RoU
         851Gws+eFc/GjQQ4ueSKacGs53mQtUsnj3RZDzi/7pyeJKopRfTbX2FvQjMyzLj8L/HB
         KScw0OsB/I9T5ZQukQyuN4HTVH0ZEySVagWLg8m5Sma8xvNACoGnFoyJ+F7DJeqRNADA
         t+MB9MOWePHJHFaSw2Y0RQdmjyjO19Iv12FcHn0duWXc1glht8EEIio8pyJwvP9vd4hO
         g4kSpkKZqEVCYZkKF0rOG9oLmOGO601aLgwgOS3tJcH/FoE8Qmz2eoHEzBU6VZFowc6U
         2FzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706567139; x=1707171939;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4mdCPUKoIVhBRVBAt+UHLaSJZg2VQOPHD/VbN5Tg7Oc=;
        b=PgndgHqD3bQG4mLVvsSoYeiUpWZYWYizyrmfHeP+AizL2plVQuZ3QElmuKY+l6cjtH
         m21upBL8h1tuL1yCrsYgU0VPl+F+GxmfzPzFDySPFZQcl0qyoxs5ywW6cu6f3MhwBJ62
         88B3UFsqgQ1Ud2RtLlAZjw+jzd4Wnleu1X6h7YRVgDGkdP63cd1x6a6iuniXa0d/Lh5J
         aZmziOgTTc+QqxdhemqOfkzukf/p025NFib8r3DCWoreYnSBbIuYftFjjHu68OnkeEi8
         wnN9o+MDhSk1Loop+xU1Wlxt0D5164J5cv8hh6Si5JiZwe8TWbDXDGvcT0r5JmYIMYr4
         czEw==
X-Gm-Message-State: AOJu0YxZ5idZUH3/p36h2iQFdtNzgAOcJ5o2TRBBJ6yokhP5TCnlOMe0
	JEeaCTwVq6jlmkznCskPF/FSGfnBPrLZUh0rPXfcIvW1ccjPCyj9m1nDeDjS1KMn1Rxw0f7+G3Y
	0cd08kP2KcgJ3u87wA7OEirC/d7oAhsRsGCF0
X-Google-Smtp-Source: AGHT+IEKPLC8FP3KN5kmdAvJzmMvRg7tW3fa6XSk1BQM5ezj9Lc933d0Ukw4+BUisvUPJGQh3OC952raVMhPdnBJjxs=
X-Received: by 2002:ac8:5c43:0:b0:42a:a9c7:271f with SMTP id
 j3-20020ac85c43000000b0042aa9c7271fmr25035qtj.11.1706567139419; Mon, 29 Jan
 2024 14:25:39 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240129211912.3068411-1-peter.griffin@linaro.org> <20240129211912.3068411-3-peter.griffin@linaro.org>
In-Reply-To: <20240129211912.3068411-3-peter.griffin@linaro.org>
From: Saravana Kannan <saravanak@google.com>
Date: Mon, 29 Jan 2024 14:25:03 -0800
Message-ID: <CAGETcx8UsseQAHc76QaMxgMUe7cwajZVdYLA2uwpZxF90RLjJQ@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] watchdog: s3c2410_wdt: use exynos_get_pmu_regmap_by_phandle()
 for PMU regs
To: Peter Griffin <peter.griffin@linaro.org>
Cc: arnd@arndb.de, krzysztof.kozlowski@linaro.org, linux@roeck-us.net, 
	wim@linux-watchdog.org, alim.akhtar@samsung.com, jaewon02.kim@samsung.com, 
	semen.protsenko@linaro.org, kernel-team@android.com, tudor.ambarus@linaro.org, 
	andre.draszik@linaro.org, willmcvicker@google.com, linux-fsd@tesla.com, 
	linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Jan 29, 2024 at 1:19=E2=80=AFPM Peter Griffin <peter.griffin@linaro=
.org> wrote:
>
> Obtain the PMU regmap using the new API added to exynos-pmu driver rather
> than syscon_regmap_lookup_by_phandle(). As this driver no longer depends
> on mfd syscon remove that header and Kconfig dependency.
>
> Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
> ---
>  drivers/watchdog/Kconfig       | 1 -
>  drivers/watchdog/s3c2410_wdt.c | 9 +++++----
>  2 files changed, 5 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/watchdog/Kconfig b/drivers/watchdog/Kconfig
> index 7d22051b15a2..d78fe7137799 100644
> --- a/drivers/watchdog/Kconfig
> +++ b/drivers/watchdog/Kconfig
> @@ -512,7 +512,6 @@ config S3C2410_WATCHDOG
>         tristate "S3C6410/S5Pv210/Exynos Watchdog"
>         depends on ARCH_S3C64XX || ARCH_S5PV210 || ARCH_EXYNOS || COMPILE=
_TEST
>         select WATCHDOG_CORE
> -       select MFD_SYSCON if ARCH_EXYNOS
>         help
>           Watchdog timer block in the Samsung S3C64xx, S5Pv210 and Exynos
>           SoCs. This will reboot the system when the timer expires with
> diff --git a/drivers/watchdog/s3c2410_wdt.c b/drivers/watchdog/s3c2410_wd=
t.c
> index 349d30462c8c..a1e2682c7e57 100644
> --- a/drivers/watchdog/s3c2410_wdt.c
> +++ b/drivers/watchdog/s3c2410_wdt.c
> @@ -24,9 +24,9 @@
>  #include <linux/slab.h>
>  #include <linux/err.h>
>  #include <linux/of.h>
> -#include <linux/mfd/syscon.h>
>  #include <linux/regmap.h>
>  #include <linux/delay.h>
> +#include <linux/soc/samsung/exynos-pmu.h>
>
>  #define S3C2410_WTCON          0x00
>  #define S3C2410_WTDAT          0x04
> @@ -699,11 +699,12 @@ static int s3c2410wdt_probe(struct platform_device =
*pdev)
>                 return ret;
>
>         if (wdt->drv_data->quirks & QUIRKS_HAVE_PMUREG) {
> -               wdt->pmureg =3D syscon_regmap_lookup_by_phandle(dev->of_n=
ode,
> -                                               "samsung,syscon-phandle")=
;
> +
> +               wdt->pmureg =3D exynos_get_pmu_regmap_by_phandle(dev->of_=
node,
> +                                                "samsung,syscon-phandle"=
);

IIUC, the exynos PMU driver is registering a regmap interface with
regmap framework. So, can't we get the remap from the framework
instead of directly talking to the PMU driver?

-Saravana

>                 if (IS_ERR(wdt->pmureg))
>                         return dev_err_probe(dev, PTR_ERR(wdt->pmureg),
> -                                            "syscon regmap lookup failed=
.\n");
> +                                            "PMU regmap lookup failed.\n=
");
>         }
>
>         wdt_irq =3D platform_get_irq(pdev, 0);
> --
> 2.43.0.429.g432eaa2c6b-goog
>

