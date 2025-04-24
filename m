Return-Path: <devicetree+bounces-170555-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FDB5A9B4CE
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 18:58:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id ECCB44A5667
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 16:58:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A1B628A1CE;
	Thu, 24 Apr 2025 16:58:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Z9malStM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f170.google.com (mail-yw1-f170.google.com [209.85.128.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE5A828CF43
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 16:58:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745513886; cv=none; b=f55NPmND9j3pAGXnFXhxRhJ6daAUleb5KkxOAOEgYcRvHYM+DWjAJXNgItIt7yPcJKu49n6h8nCVR0E4quS+Xo94sqn/qrk9Nu+iAZ7L7xQOy/VXsSyui6WIKV5ibfWFvSswpFlkRR9Zc+Hp8gxnLTJDV1nyN2pwJhVNauytGKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745513886; c=relaxed/simple;
	bh=d3q579kzDJ3+DUyvJtnGafDJWhrUej0ZDbD7FfPXqsU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ZZfzRjFCc9hzPpo7dRjPdldJidaZClHySiSNSEi/M+kB1x8iIonK0L0+Q5s/6S8zQm33HKg0bP7wynK+45OFPLyvl9DJi/5lLOmGb5dOpbPI6ZSvhU4nmaBdaaH6pLuIli5ITzoQPtR7pIqdqK7+2sOq5uptoKj+Uz29RPBigrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Z9malStM; arc=none smtp.client-ip=209.85.128.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f170.google.com with SMTP id 00721157ae682-6fece18b3c8so13346677b3.3
        for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 09:58:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745513883; x=1746118683; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=PVhR2hLHLi9hBr30OMbQ9jGMgnfMq+j3RfhjudSluRw=;
        b=Z9malStMxyqCfVGZjtYOFqTjuonleN4lPky99zPafOV8RajRA+nm0mTUCzm+PHOXVJ
         f8sUqJdPweMLN2MADuw1vqtvaz2sjUeS42utfyYO1cUT7NacriSbdJM+NgBHhto+1v1x
         4UMTkMXsjlj6SsuW0o+QO8TwPURl3YAMoUYMRXLuEko6zeJQwyxmVoTthHdjgUlvbvoo
         vYTFiLoTH+VzwxTMY9GAf692t2eZIkF9/w0HuNeKo28LflXumla4k4jdt5ubeIHf10L/
         P3fPAvabClcIoME2/HivyyYAO5yZxUV72Vfea4Wo74oDEjbw2eUrOYBCkE8MJ3flnwp9
         CZww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745513883; x=1746118683;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PVhR2hLHLi9hBr30OMbQ9jGMgnfMq+j3RfhjudSluRw=;
        b=F+zjfa/WCEn2AVkBgHMdX1NVsBl1EW3LW1QeehEtDr2lOYJf0Dv3wGEB4Ga2tvUstj
         a5WtKNN0bINveQuPlwkBURxA1xgfUL6hAKyqMLeDhS8A0ovgO8LxoSvaqm0/a19/2lg8
         61Eef+wEBuSUHsu2wIDIgc/wy92ANZVee/gHIcoahDLHJiXxwn3Z5Q6rHL5hiiDpgecx
         ndfCgqRojMJ7WsBM0c2AZ5HCrJtwM7SnGKnyt6AE9wF47BPWxsvEjcbigJuk8d+HESin
         ygtM5n+KW+StAlpZijdRkRBKT9oGXNnsGhpIIHzSpen50hPWewvu/fWao7OGgHxFalkI
         27IQ==
X-Forwarded-Encrypted: i=1; AJvYcCU0sWjfC+w917N1sgInQ3wfjVZRDvbn2USziY5BOlvdeO0L03ZLqRAdRszOKoJHnsiIlmJKqsgLMXV9@vger.kernel.org
X-Gm-Message-State: AOJu0YzWvBuyfiuqiVgQT52lWexG0nf6W3b/Zsl0MzgaggpW4ExX+dLJ
	JXYEsCsWQbATN3cll2EwnprNlkKusglZHxGAb4akvYRYmrAoKiwATiHygx4xd6nK0X9//c+f1vq
	2jVGx53aDB0HhxQ3QRNkE28jDAYysj/ce/S+VYA==
X-Gm-Gg: ASbGncv2ypjjA8+PvhehYtENhsSnrvq1nLI5zB91uiwRAiETOFJb8V6FUPiDDvc9s5U
	o4Mp6g2v1vrzYZNHwN29EXqcCgSi5o+PvaSot4TKOw1S7RxlrSs4L6/4DfZihkbReXgLpkUGi1u
	UyI0JphMvVcSZzbjTjVf214c/ksasobKbdeA==
X-Google-Smtp-Source: AGHT+IHSsh/kmYkn+WFgtXin2ugMOVreggmMbrbDjCJDUl4G4egWdalbyROVRXdskuUNfx7wc+7/u/hJdLHgKm/EwTI=
X-Received: by 2002:a05:690c:7449:b0:702:5926:8609 with SMTP id
 00721157ae682-7084efe39f2mr7183287b3.12.1745513882778; Thu, 24 Apr 2025
 09:58:02 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250416224839.9840-1-andre.przywara@arm.com> <20250416224839.9840-3-andre.przywara@arm.com>
In-Reply-To: <20250416224839.9840-3-andre.przywara@arm.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 24 Apr 2025 18:57:25 +0200
X-Gm-Features: ATxdqUFR8Hq7WOkuFgj-ubpob4xQ7WjUuRyyTbKB719qT0w2HuvbM4JN7_zT25o
Message-ID: <CAPDyKFoOMy43uFJ5S09+y0cwE-eFttx-PZgWdGmjjdi9oonJDQ@mail.gmail.com>
Subject: Re: [PATCH v2 2/4] pmdomain: sunxi: add H6 PRCM PPU driver
To: Andre Przywara <andre.przywara@arm.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>, 
	Boris Brezillon <boris.brezillon@collabora.com>, Steven Price <steven.price@arm.com>, 
	Philippe Simons <simons.philippe@gmail.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, 
	linux-pm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Thu, 17 Apr 2025 at 00:49, Andre Przywara <andre.przywara@arm.com> wrote:
>
> The Allwinner Power Reset Clock Management (RPCM) block contains a few
> bits that control some power domains. The most prominent one is the one
> for the Mali GPU. On the Allwinner H6 this domain is enabled at reset, so
> we didn't care about it so far, but the H616 defaults to it being disabled.
>
> Add a power domain driver for those bits. Some BSP code snippets and
> some spare documentation describe three bits, slightly different between
> the H6 and H616, so add three power domains for each SoC, connected to
> their compatible string.
>
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>

Applied for next, thanks!

Kind regards
Uffe


> ---
>  drivers/pmdomain/sunxi/Kconfig              |  10 +
>  drivers/pmdomain/sunxi/Makefile             |   1 +
>  drivers/pmdomain/sunxi/sun50i-h6-prcm-ppu.c | 208 ++++++++++++++++++++
>  3 files changed, 219 insertions(+)
>  create mode 100644 drivers/pmdomain/sunxi/sun50i-h6-prcm-ppu.c
>
> diff --git a/drivers/pmdomain/sunxi/Kconfig b/drivers/pmdomain/sunxi/Kconfig
> index 17781bf8d86d7..43eecb3ea9819 100644
> --- a/drivers/pmdomain/sunxi/Kconfig
> +++ b/drivers/pmdomain/sunxi/Kconfig
> @@ -8,3 +8,13 @@ config SUN20I_PPU
>         help
>           Say y to enable the PPU power domain driver. This saves power
>           when certain peripherals, such as the video engine, are idle.
> +
> +config SUN50I_H6_PRCM_PPU
> +       tristate "Allwinner H6 PRCM power domain driver"
> +       depends on ARCH_SUNXI || COMPILE_TEST
> +       depends on PM
> +       select PM_GENERIC_DOMAINS
> +       help
> +         Say y to enable the Allwinner H6/H616 PRCM power domain driver.
> +         This is required to enable the Mali GPU in the H616 SoC, it is
> +         optional for the H6.
> diff --git a/drivers/pmdomain/sunxi/Makefile b/drivers/pmdomain/sunxi/Makefile
> index ec1d7a2fb21db..c1343e1237599 100644
> --- a/drivers/pmdomain/sunxi/Makefile
> +++ b/drivers/pmdomain/sunxi/Makefile
> @@ -1,2 +1,3 @@
>  # SPDX-License-Identifier: GPL-2.0-only
>  obj-$(CONFIG_SUN20I_PPU)               += sun20i-ppu.o
> +obj-$(CONFIG_SUN50I_H6_PRCM_PPU)       += sun50i-h6-prcm-ppu.o
> diff --git a/drivers/pmdomain/sunxi/sun50i-h6-prcm-ppu.c b/drivers/pmdomain/sunxi/sun50i-h6-prcm-ppu.c
> new file mode 100644
> index 0000000000000..d59644499dfe0
> --- /dev/null
> +++ b/drivers/pmdomain/sunxi/sun50i-h6-prcm-ppu.c
> @@ -0,0 +1,208 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Copyright (C) Arm Ltd. 2024
> + *
> + * Allwinner H6/H616 PRCM power domain driver.
> + * This covers a few registers inside the PRCM (Power Reset Clock Management)
> + * block that control some power rails, most prominently for the Mali GPU.
> + */
> +
> +#include <linux/bitfield.h>
> +#include <linux/clk.h>
> +#include <linux/io.h>
> +#include <linux/iopoll.h>
> +#include <linux/module.h>
> +#include <linux/of.h>
> +#include <linux/platform_device.h>
> +#include <linux/pm_domain.h>
> +#include <linux/reset.h>
> +
> +/*
> + * The PRCM block covers multiple devices, starting with some clocks,
> + * then followed by the power rails.
> + * The clocks are covered by a different driver, so this driver's MMIO range
> + * starts later in the PRCM MMIO frame, not at the beginning of it.
> + * To keep the register offsets consistent with other PRCM documentation,
> + * express the registers relative to the beginning of the whole PRCM, and
> + * subtract the PPU offset this driver is bound to.
> + */
> +#define PD_H6_PPU_OFFSET               0x250
> +#define PD_H6_VDD_SYS_REG              0x250
> +#define PD_H616_ANA_VDD_GATE                   BIT(4)
> +#define PD_H6_CPUS_VDD_GATE                    BIT(3)
> +#define PD_H6_AVCC_VDD_GATE                    BIT(2)
> +#define PD_H6_GPU_REG                  0x254
> +#define PD_H6_GPU_GATE                         BIT(0)
> +
> +struct sun50i_h6_ppu_pd {
> +       struct generic_pm_domain        genpd;
> +       void __iomem                    *reg;
> +       u32                             gate_mask;
> +       bool                            negated;
> +};
> +
> +#define FLAG_PPU_ALWAYS_ON     BIT(0)
> +#define FLAG_PPU_NEGATED       BIT(1)
> +
> +struct sun50i_h6_ppu_desc {
> +       const char *name;
> +       u32 offset;
> +       u32 mask;
> +       unsigned int flags;
> +};
> +
> +static const struct sun50i_h6_ppu_desc sun50i_h6_ppus[] = {
> +       { "AVCC", PD_H6_VDD_SYS_REG, PD_H6_AVCC_VDD_GATE },
> +       { "CPUS", PD_H6_VDD_SYS_REG, PD_H6_CPUS_VDD_GATE },
> +       { "GPU", PD_H6_GPU_REG, PD_H6_GPU_GATE },
> +};
> +static const struct sun50i_h6_ppu_desc sun50i_h616_ppus[] = {
> +       { "PLL", PD_H6_VDD_SYS_REG, PD_H6_AVCC_VDD_GATE,
> +               FLAG_PPU_ALWAYS_ON | FLAG_PPU_NEGATED },
> +       { "ANA", PD_H6_VDD_SYS_REG, PD_H616_ANA_VDD_GATE, FLAG_PPU_ALWAYS_ON },
> +       { "GPU", PD_H6_GPU_REG, PD_H6_GPU_GATE, FLAG_PPU_NEGATED },
> +};
> +
> +struct sun50i_h6_ppu_data {
> +       const struct sun50i_h6_ppu_desc *descs;
> +       int nr_domains;
> +};
> +
> +static const struct sun50i_h6_ppu_data sun50i_h6_ppu_data = {
> +       .descs = sun50i_h6_ppus,
> +       .nr_domains = ARRAY_SIZE(sun50i_h6_ppus),
> +};
> +
> +static const struct sun50i_h6_ppu_data sun50i_h616_ppu_data = {
> +       .descs = sun50i_h616_ppus,
> +       .nr_domains = ARRAY_SIZE(sun50i_h616_ppus),
> +};
> +
> +#define to_sun50i_h6_ppu_pd(_genpd) \
> +       container_of(_genpd, struct sun50i_h6_ppu_pd, genpd)
> +
> +static bool sun50i_h6_ppu_power_status(const struct sun50i_h6_ppu_pd *pd)
> +{
> +       bool bit = readl(pd->reg) & pd->gate_mask;
> +
> +       return bit ^ pd->negated;
> +}
> +
> +static int sun50i_h6_ppu_pd_set_power(const struct sun50i_h6_ppu_pd *pd,
> +                                     bool set_bit)
> +{
> +       u32 reg = readl(pd->reg);
> +
> +       if (set_bit)
> +               writel(reg | pd->gate_mask, pd->reg);
> +       else
> +               writel(reg & ~pd->gate_mask, pd->reg);
> +
> +       return 0;
> +}
> +
> +static int sun50i_h6_ppu_pd_power_on(struct generic_pm_domain *genpd)
> +{
> +       const struct sun50i_h6_ppu_pd *pd = to_sun50i_h6_ppu_pd(genpd);
> +
> +       return sun50i_h6_ppu_pd_set_power(pd, !pd->negated);
> +}
> +
> +static int sun50i_h6_ppu_pd_power_off(struct generic_pm_domain *genpd)
> +{
> +       const struct sun50i_h6_ppu_pd *pd = to_sun50i_h6_ppu_pd(genpd);
> +
> +       return sun50i_h6_ppu_pd_set_power(pd, pd->negated);
> +}
> +
> +static int sun50i_h6_ppu_probe(struct platform_device *pdev)
> +{
> +       struct device *dev = &pdev->dev;
> +       struct genpd_onecell_data *ppu;
> +       struct sun50i_h6_ppu_pd *pds;
> +       const struct sun50i_h6_ppu_data *data;
> +       void __iomem *base;
> +       int ret, i;
> +
> +       data = of_device_get_match_data(dev);
> +       if (!data)
> +               return -EINVAL;
> +
> +       pds = devm_kcalloc(dev, data->nr_domains, sizeof(*pds), GFP_KERNEL);
> +       if (!pds)
> +               return -ENOMEM;
> +
> +       ppu = devm_kzalloc(dev, sizeof(*ppu), GFP_KERNEL);
> +       if (!ppu)
> +               return -ENOMEM;
> +
> +       ppu->num_domains = data->nr_domains;
> +       ppu->domains = devm_kcalloc(dev, data->nr_domains,
> +                                   sizeof(*ppu->domains), GFP_KERNEL);
> +       if (!ppu->domains)
> +               return -ENOMEM;
> +
> +       platform_set_drvdata(pdev, ppu);
> +
> +       base = devm_platform_ioremap_resource(pdev, 0);
> +       if (IS_ERR(base))
> +               return PTR_ERR(base);
> +
> +       for (i = 0; i < data->nr_domains; i++) {
> +               struct sun50i_h6_ppu_pd *pd = &pds[i];
> +               const struct sun50i_h6_ppu_desc *desc = &data->descs[i];
> +
> +               pd->genpd.name          = desc->name;
> +               pd->genpd.power_off     = sun50i_h6_ppu_pd_power_off;
> +               pd->genpd.power_on      = sun50i_h6_ppu_pd_power_on;
> +               if (desc->flags & FLAG_PPU_ALWAYS_ON)
> +                       pd->genpd.flags = GENPD_FLAG_ALWAYS_ON;
> +               pd->negated             = !!(desc->flags & FLAG_PPU_NEGATED);
> +               pd->reg                 = base + desc->offset - PD_H6_PPU_OFFSET;
> +               pd->gate_mask           = desc->mask;
> +
> +               ret = pm_genpd_init(&pd->genpd, NULL,
> +                                   !sun50i_h6_ppu_power_status(pd));
> +               if (ret) {
> +                       dev_warn(dev, "Failed to add %s power domain: %d\n",
> +                                desc->name, ret);
> +                       goto out_remove_pds;
> +               }
> +               ppu->domains[i] = &pd->genpd;
> +       }
> +
> +       ret = of_genpd_add_provider_onecell(dev->of_node, ppu);
> +       if (!ret)
> +               return 0;
> +
> +       dev_warn(dev, "Failed to add provider: %d\n", ret);
> +out_remove_pds:
> +       for (i--; i >= 0; i--)
> +               pm_genpd_remove(&pds[i].genpd);
> +
> +       return ret;
> +}
> +
> +static const struct of_device_id sun50i_h6_ppu_of_match[] = {
> +       { .compatible   = "allwinner,sun50i-h6-prcm-ppu",
> +         .data         = &sun50i_h6_ppu_data },
> +       { .compatible   = "allwinner,sun50i-h616-prcm-ppu",
> +         .data         = &sun50i_h616_ppu_data },
> +       { }
> +};
> +MODULE_DEVICE_TABLE(of, sun50i_h6_ppu_of_match);
> +
> +static struct platform_driver sun50i_h6_ppu_driver = {
> +       .probe  = sun50i_h6_ppu_probe,
> +       .driver = {
> +               .name                   = "sun50i-h6-prcm-ppu",
> +               .of_match_table         = sun50i_h6_ppu_of_match,
> +               /* Power domains cannot be removed while they are in use. */
> +               .suppress_bind_attrs    = true,
> +       },
> +};
> +module_platform_driver(sun50i_h6_ppu_driver);
> +
> +MODULE_AUTHOR("Andre Przywara <andre.przywara@arm.com>");
> +MODULE_DESCRIPTION("Allwinner H6 PRCM power domain driver");
> +MODULE_LICENSE("GPL");
> --
> 2.46.3
>

