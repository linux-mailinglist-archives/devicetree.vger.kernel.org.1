Return-Path: <devicetree+bounces-6918-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1621B7BDA79
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 13:57:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 39A5D1C20430
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 11:57:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 03E3A18B18;
	Mon,  9 Oct 2023 11:57:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zs0edn9m"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6303CC8F8
	for <devicetree@vger.kernel.org>; Mon,  9 Oct 2023 11:56:59 +0000 (UTC)
Received: from mail-qk1-x72d.google.com (mail-qk1-x72d.google.com [IPv6:2607:f8b0:4864:20::72d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6EBD0F1
	for <devicetree@vger.kernel.org>; Mon,  9 Oct 2023 04:56:56 -0700 (PDT)
Received: by mail-qk1-x72d.google.com with SMTP id af79cd13be357-774141bb415so255975885a.3
        for <devicetree@vger.kernel.org>; Mon, 09 Oct 2023 04:56:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696852615; x=1697457415; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=/f3Y8yieoU6v7s5C4WV6Y0O5J9cEkuy8nWCpTmPUkgw=;
        b=zs0edn9m3Ie8+EHgtBGtkUnjAvFU2XV3dNUHVJ7HxaIgp+LDUAhrsBtFu7GIpGLyV1
         vI1dG3jiULfQvm6YkCpeCQsh3JSjAeNHXJ0RCqWxOAkRy0QmuaHCPrAnk/hQeEaSxRz6
         PHvfrw4uwjQ6P/D33cXXcNjEHUy+nOcsRkCWIKwru4niLir82dRsIx0diifo6M7LZFW0
         dYEX8i7UA7Y3Ze0unK1qXpOK3YRQFwBUpBQMC0yieltfpUZ3FXRtZX9Mp2NtChVRjffI
         JDFKvQbvwc/WYthdNY1r858xchc50LJATQrMjq5voLEuRgDi6CKHF+WksWXEfotT/LWE
         8o7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696852615; x=1697457415;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/f3Y8yieoU6v7s5C4WV6Y0O5J9cEkuy8nWCpTmPUkgw=;
        b=OzBLEgTATMG0sDX66l8Zzj4qOa8Cp1b/TTkiDCwFNtcb6CxHFvkG9oHpoa/L7FPR8R
         gO/G2e68JRjcmXdbDv3T8HPV4LSjhyd3yQvjcThe3rVSDmpUaJ6WUbk8sxVZd3qLNOIl
         Xfi4rSh34QSsc+g2zqM01xmZ8z6Z4fgKtRRMrCWYPfdJkF8hUQ6tLOvr2JqP0hcM/Qcn
         mNt7Am1JomSvG0I9miEa5il/GicLupK85Z2BoQtiuDQ9LzKR+8gfywkV8Bi3co9qxr3q
         maKD/wMmJrmLDcYgRG/YP5j39mmoh6cUWmNfUhBUORyxyx4x0kQjuBKsx+KE0vyzOyAS
         5sqQ==
X-Gm-Message-State: AOJu0YydVfFpGygrIS56Xs7+0NdfSAMQy901XiG5ZPwQ5pOHgOyzefIi
	3I+/aGMfnBlJJuVy3Jri6im4Yz1zGuccl6LhTmZMfQ==
X-Google-Smtp-Source: AGHT+IHBi7CCnQITPDjc/LN91Jc+xo4HezSa4fpbHKYILisr+wnl+MGmZR0V7UsfYuHDEB90aPuGsjJquCL3jJkS+tU=
X-Received: by 2002:a0c:f4cf:0:b0:65b:11b3:6ef5 with SMTP id
 o15-20020a0cf4cf000000b0065b11b36ef5mr12663046qvm.17.1696852615374; Mon, 09
 Oct 2023 04:56:55 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231005155618.700312-1-peter.griffin@linaro.org>
 <20231005155618.700312-18-peter.griffin@linaro.org> <734eb901-84cc-4a47-a3f6-2313273f79b2@roeck-us.net>
In-Reply-To: <734eb901-84cc-4a47-a3f6-2313273f79b2@roeck-us.net>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Mon, 9 Oct 2023 12:56:44 +0100
Message-ID: <CADrjBPoq-ORF3gXq9MEz6QdU8zmyHQdr0QCsk3=aEMCpNZjFiw@mail.gmail.com>
Subject: Re: [PATCH 17/21] watchdog: s3c2410_wdt: Add support for Google
 tensor SoCs
To: Guenter Roeck <linux@roeck-us.net>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	mturquette@baylibre.com, conor+dt@kernel.org, sboyd@kernel.org, 
	tomasz.figa@gmail.com, s.nawrocki@samsung.com, linus.walleij@linaro.org, 
	wim@linux-watchdog.org, catalin.marinas@arm.com, will@kernel.org, 
	arnd@arndb.de, olof@lixom.net, cw00.choi@samsung.com, 
	tudor.ambarus@linaro.org, andre.draszik@linaro.org, 
	semen.protsenko@linaro.org, soc@kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	linux-clk@vger.kernel.org, linux-gpio@vger.kernel.org, 
	linux-watchdog@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Guenter,

On Thu, 5 Oct 2023 at 19:58, Guenter Roeck <linux@roeck-us.net> wrote:
>
> On Thu, Oct 05, 2023 at 04:56:14PM +0100, Peter Griffin wrote:
> > This patch adds the compatibles and drvdata for the Google
> > gs101 & gs201 SoCs found in Pixel 6 and Pixel 7 phones. Similar
> > to Exynos850 it has two watchdog instances, one for each cluster
> > and has some control bits in PMU registers.
> >
> > The watchdog IP found in gs101 SoCs also supports a few
> > additional bits/features in the WTCON register which we add
> > support for and an additional register detailed below.
> >
> > dbgack-mask - Enables masking WDT interrupt and reset request
> > according to asserted DBGACK input
> >
> > windowed-mode - Enabled Windowed watchdog mode
> >
> > Windowed watchdog mode also has an additional register WTMINCNT.
> > If windowed watchdog is enabled and you reload WTCNT when the
> > value is greater than WTMINCNT, it prompts interrupt or reset
> > request as if the watchdog time has expired.
> >
> > Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
> > ---
> >  drivers/watchdog/s3c2410_wdt.c | 116 +++++++++++++++++++++++++++++----
> >  1 file changed, 105 insertions(+), 11 deletions(-)
> >
> > diff --git a/drivers/watchdog/s3c2410_wdt.c b/drivers/watchdog/s3c2410_wdt.c
> > index 0b4bd883ff28..4c23c7e6a3f1 100644
> > --- a/drivers/watchdog/s3c2410_wdt.c
> > +++ b/drivers/watchdog/s3c2410_wdt.c
> > @@ -31,12 +31,14 @@
> >  #define S3C2410_WTDAT                0x04
> >  #define S3C2410_WTCNT                0x08
> >  #define S3C2410_WTCLRINT     0x0c
> > -
> > +#define S3C2410_WTMINCNT     0x10
> >  #define S3C2410_WTCNT_MAXCNT 0xffff
> >
> > -#define S3C2410_WTCON_RSTEN  (1 << 0)
> > -#define S3C2410_WTCON_INTEN  (1 << 2)
> > -#define S3C2410_WTCON_ENABLE (1 << 5)
> > +#define S3C2410_WTCON_RSTEN          (1 << 0)
> > +#define S3C2410_WTCON_INTEN          (1 << 2)
> > +#define S3C2410_WTCON_ENABLE         (1 << 5)
> > +#define S3C2410_WTCON_DBGACK_MASK    (1 << 16)
> > +#define S3C2410_WTCON_WINDOWED_WD    (1 << 20)
> >
> >  #define S3C2410_WTCON_DIV16  (0 << 3)
> >  #define S3C2410_WTCON_DIV32  (1 << 3)
> > @@ -61,12 +63,16 @@
> >  #define EXYNOS850_CLUSTER1_NONCPU_INT_EN     0x1644
> >  #define EXYNOSAUTOV9_CLUSTER1_NONCPU_OUT     0x1520
> >  #define EXYNOSAUTOV9_CLUSTER1_NONCPU_INT_EN  0x1544
> > -
> >  #define EXYNOS850_CLUSTER0_WDTRESET_BIT              24
> >  #define EXYNOS850_CLUSTER1_WDTRESET_BIT              23
> >  #define EXYNOSAUTOV9_CLUSTER0_WDTRESET_BIT   25
> >  #define EXYNOSAUTOV9_CLUSTER1_WDTRESET_BIT   24
> > -
> > +#define GS_CLUSTER0_NONCPU_OUT                       0x1220
> > +#define GS_CLUSTER1_NONCPU_OUT                       0x1420
> > +#define GS_CLUSTER0_NONCPU_INT_EN            0x1244
> > +#define GS_CLUSTER1_NONCPU_INT_EN            0x1444
> > +#define GS_CLUSTER2_NONCPU_INT_EN            0x1644
> > +#define GS_RST_STAT_REG_OFFSET                       0x3B44
> >  /**
> >   * DOC: Quirk flags for different Samsung watchdog IP-cores
> >   *
> > @@ -106,6 +112,8 @@
> >  #define QUIRK_HAS_PMU_RST_STAT                       (1 << 2)
> >  #define QUIRK_HAS_PMU_AUTO_DISABLE           (1 << 3)
> >  #define QUIRK_HAS_PMU_CNT_EN                 (1 << 4)
> > +#define QUIRK_HAS_DBGACK_BIT                 (1 << 5)
> > +#define QUIRK_HAS_WTMINCNT_REG                       (1 << 6)
> >
> >  /* These quirks require that we have a PMU register map */
> >  #define QUIRKS_HAVE_PMUREG \
> > @@ -263,6 +271,54 @@ static const struct s3c2410_wdt_variant drv_data_exynosautov9_cl1 = {
> >                 QUIRK_HAS_PMU_RST_STAT | QUIRK_HAS_PMU_CNT_EN,
> >  };
> >
> > +static const struct s3c2410_wdt_variant drv_data_gs101_cl0 = {
> > +     .mask_reset_reg = GS_CLUSTER0_NONCPU_INT_EN,
> > +     .mask_bit = 2,
> > +     .mask_reset_inv = true,
> > +     .rst_stat_reg = GS_RST_STAT_REG_OFFSET,
> > +     .rst_stat_bit = 0,
> > +     .cnt_en_reg = GS_CLUSTER0_NONCPU_OUT,
> > +     .cnt_en_bit = 8,
> > +     .quirks = QUIRK_HAS_PMU_RST_STAT | QUIRK_HAS_PMU_MASK_RESET | QUIRK_HAS_PMU_CNT_EN |
> > +               QUIRK_HAS_WTCLRINT_REG | QUIRK_HAS_DBGACK_BIT | QUIRK_HAS_WTMINCNT_REG,
> > +};
> > +
> > +static const struct s3c2410_wdt_variant drv_data_gs101_cl1 = {
> > +     .mask_reset_reg = GS_CLUSTER1_NONCPU_INT_EN,
> > +     .mask_bit = 2,
> > +     .mask_reset_inv = true,
> > +     .rst_stat_reg = GS_RST_STAT_REG_OFFSET,
> > +     .rst_stat_bit = 1,
> > +     .cnt_en_reg = GS_CLUSTER1_NONCPU_OUT,
> > +     .cnt_en_bit = 7,
> > +     .quirks = QUIRK_HAS_PMU_RST_STAT | QUIRK_HAS_PMU_MASK_RESET | QUIRK_HAS_PMU_CNT_EN |
> > +               QUIRK_HAS_WTCLRINT_REG | QUIRK_HAS_DBGACK_BIT | QUIRK_HAS_WTMINCNT_REG,
> > +};
> > +
> > +static const struct s3c2410_wdt_variant drv_data_gs201_cl0 = {
> > +     .mask_reset_reg = GS_CLUSTER0_NONCPU_INT_EN,
> > +     .mask_bit = 2,
> > +     .mask_reset_inv = true,
> > +     .rst_stat_reg = GS_RST_STAT_REG_OFFSET,
> > +     .rst_stat_bit = 0,
> > +     .cnt_en_reg = GS_CLUSTER0_NONCPU_OUT,
> > +     .cnt_en_bit = 8,
> > +     .quirks = QUIRK_HAS_PMU_RST_STAT | QUIRK_HAS_PMU_MASK_RESET | QUIRK_HAS_PMU_CNT_EN |
> > +               QUIRK_HAS_WTCLRINT_REG | QUIRK_HAS_DBGACK_BIT | QUIRK_HAS_WTMINCNT_REG,
> > +};
> > +
> > +static const struct s3c2410_wdt_variant drv_data_gs201_cl1 = {
> > +     .mask_reset_reg = GS_CLUSTER1_NONCPU_INT_EN,
> > +     .mask_bit = 2,
> > +     .mask_reset_inv = true,
> > +     .rst_stat_reg = GS_RST_STAT_REG_OFFSET,
> > +     .rst_stat_bit = 1,
> > +     .cnt_en_reg = GS_CLUSTER1_NONCPU_OUT,
> > +     .cnt_en_bit = 7,
> > +     .quirks = QUIRK_HAS_PMU_RST_STAT | QUIRK_HAS_PMU_MASK_RESET | QUIRK_HAS_PMU_CNT_EN |
> > +               QUIRK_HAS_WTCLRINT_REG | QUIRK_HAS_DBGACK_BIT | QUIRK_HAS_WTMINCNT_REG,
> > +};
> > +
> >  static const struct of_device_id s3c2410_wdt_match[] = {
> >       { .compatible = "samsung,s3c2410-wdt",
> >         .data = &drv_data_s3c2410 },
> > @@ -278,6 +334,10 @@ static const struct of_device_id s3c2410_wdt_match[] = {
> >         .data = &drv_data_exynos850_cl0 },
> >       { .compatible = "samsung,exynosautov9-wdt",
> >         .data = &drv_data_exynosautov9_cl0 },
> > +     { .compatible = "google,gs101-wdt",
> > +       .data = &drv_data_gs101_cl0 },
> > +     { .compatible = "google,gs201-wdt",
> > +       .data = &drv_data_gs201_cl0 },
> >       {},
> >  };
> >  MODULE_DEVICE_TABLE(of, s3c2410_wdt_match);
> > @@ -375,6 +435,21 @@ static int s3c2410wdt_enable(struct s3c2410_wdt *wdt, bool en)
> >       return 0;
> >  }
> >
> > +static void s3c2410wdt_mask_dbgack(struct s3c2410_wdt *wdt, bool mask)
> > +{
> > +     unsigned long wtcon;
> > +
> > +     if (!(wdt->drv_data->quirks & QUIRK_HAS_DBGACK_BIT))
> > +             return;
> > +
> > +     wtcon = readl(wdt->reg_base + S3C2410_WTCON);
> > +     if (mask)
> > +             wtcon |= S3C2410_WTCON_DBGACK_MASK;
> > +     else
> > +             wtcon &= ~S3C2410_WTCON_DBGACK_MASK;
> > +     writel(wtcon, wdt->reg_base + S3C2410_WTCON);
> > +}
> > +
> >  static int s3c2410wdt_keepalive(struct watchdog_device *wdd)
> >  {
> >       struct s3c2410_wdt *wdt = watchdog_get_drvdata(wdd);
> > @@ -585,9 +660,11 @@ s3c2410_get_wdt_drv_data(struct platform_device *pdev, struct s3c2410_wdt *wdt)
> >       }
> >
> >  #ifdef CONFIG_OF
> > -     /* Choose Exynos850/ExynosAutov9 driver data w.r.t. cluster index */
> > +     /* Choose Exynos850/ExynosAutov9/gsx01 driver data w.r.t. cluster index */
> >       if (variant == &drv_data_exynos850_cl0 ||
> > -         variant == &drv_data_exynosautov9_cl0) {
> > +         variant == &drv_data_exynosautov9_cl0 ||
> > +         variant == &drv_data_gs101_cl0 ||
> > +         variant == &drv_data_gs201_cl0) {
> >               u32 index;
> >               int err;
> >
> > @@ -600,9 +677,14 @@ s3c2410_get_wdt_drv_data(struct platform_device *pdev, struct s3c2410_wdt *wdt)
> >               case 0:
> >                       break;
> >               case 1:
> > -                     variant = (variant == &drv_data_exynos850_cl0) ?
> > -                             &drv_data_exynos850_cl1 :
> > -                             &drv_data_exynosautov9_cl1;
> > +                     if (variant == &drv_data_exynos850_cl0)
> > +                             variant = &drv_data_exynos850_cl1;
> > +                     else if (variant == &drv_data_exynosautov9_cl0)
> > +                             variant = &drv_data_exynosautov9_cl1;
> > +                     else if (variant == &drv_data_gs101_cl0)
> > +                             variant = &drv_data_gs101_cl1;
> > +                     else if (variant == &drv_data_gs201_cl0)
> > +                             variant = &drv_data_gs201_cl1;
> >                       break;
> >               default:
> >                       return dev_err_probe(dev, -EINVAL, "wrong cluster index: %u\n", index);
> > @@ -700,6 +782,8 @@ static int s3c2410wdt_probe(struct platform_device *pdev)
> >       wdt->wdt_device.bootstatus = s3c2410wdt_get_bootstatus(wdt);
> >       wdt->wdt_device.parent = dev;
> >
> > +     s3c2410wdt_mask_dbgack(wdt, true);
> > +
> >       /*
> >        * If "tmr_atboot" param is non-zero, start the watchdog right now. Also
> >        * set WDOG_HW_RUNNING bit, so that watchdog core can kick the watchdog.
> > @@ -712,6 +796,7 @@ static int s3c2410wdt_probe(struct platform_device *pdev)
> >               s3c2410wdt_start(&wdt->wdt_device);
> >               set_bit(WDOG_HW_RUNNING, &wdt->wdt_device.status);
> >       } else {
> > +             dev_info(dev, "stopping watchdog timer\n");
>
> I am not inclined to accept patches adding such noise.
>
> >               s3c2410wdt_stop(&wdt->wdt_device);
> >       }
> >
> > @@ -738,6 +823,15 @@ static int s3c2410wdt_probe(struct platform_device *pdev)
> >                (wtcon & S3C2410_WTCON_RSTEN) ? "en" : "dis",
> >                (wtcon & S3C2410_WTCON_INTEN) ? "en" : "dis");
> >
> > +     if (wdt->drv_data->quirks & QUIRK_HAS_DBGACK_BIT)
> > +             dev_info(dev, "DBGACK %sabled\n",
> > +                      (wtcon & S3C2410_WTCON_DBGACK_MASK) ? "en" : "dis");
> > +
> > +     if (wdt->drv_data->quirks & QUIRK_HAS_WTMINCNT_REG)
> > +             dev_info(dev, "windowed watchdog %sabled, wtmincnt=%x\n",
> > +                      (wtcon & S3C2410_WTCON_WINDOWED_WD) ? "en" : "dis",
> > +                      readl(wdt->reg_base + S3C2410_WTMINCNT));
>
> ... and I really don't see its value.

Thanks for your review feedback. I will remove these dev_info prints in v2.

regards,

Peter.

