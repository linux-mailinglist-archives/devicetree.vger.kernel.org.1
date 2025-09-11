Return-Path: <devicetree+bounces-215989-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DDE4B535D3
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 16:39:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6FFB51641C3
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 14:37:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4028434AB1F;
	Thu, 11 Sep 2025 14:35:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fhLjIiqk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f173.google.com (mail-yb1-f173.google.com [209.85.219.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DFF6346A04
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 14:35:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757601354; cv=none; b=r+8nQFlVMckdtnAaY+KCpBH2FS668bi8OLSCIIQZmCu4HRfe4qSEPm/Q4dhXVCXfb2r6DMecFt87us24/jIz+IYUHDaVA/N1QPX65LfwO9txEcWbQwxZMC1N4sXSnOl8+mB2myBg0pz7tYjZuxD7SamjVkpJxa4O/+PmTtAVo6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757601354; c=relaxed/simple;
	bh=ESnN9Qcq6l1yCzPzaK6lvWPHzemlXDh7SS20QlmOJhw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=OGkfhws6FjTiBeii+KNWysg6xVwaJmwoLDL+jGRby9sLQRFzerkAx2Wdlt0+2JsbP2OBeNoL8FjOw3E7C0M+kskO0ftnnpSR+h7jjiVpxR7EhkqZynQLCAVwHQWgjiP4K0MjeLTCvvnkoJ33sgay134leZR7Lm2URpchgCaT/dk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=fhLjIiqk; arc=none smtp.client-ip=209.85.219.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f173.google.com with SMTP id 3f1490d57ef6-e96f401c478so492643276.3
        for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 07:35:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757601350; x=1758206150; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KSlk+fROaTKkWUJzIAo9K1awGf90OVjnNrt1yoqzdVE=;
        b=fhLjIiqkRPbwlBICVJ2RkEzEYLBChXZDcoaLNaT76nbFrJfnUN/njRS5SLC/TPNzvA
         ITa+9FMVij21FV6qOHlxAGdVOO9znctTYUjruMc7m8zIVMoWB+JiIf8oAJ7RPkctOSdu
         LzaP3FylCHMH2D7U50aBnOkVcBb5PWhc14uw7XMJHv9AVbjs6uO3iM5ovZFNJ4h6mylB
         NsvcPMRxAT5rZHaeYioJgWCHp+Dt13uoPVA4wWD1Od9lmm81OYPLSZNk+7HzylaRrU5G
         yTkSwJMZuA3RnMvk7aZvTkHkCoHt8+A81tdbG9pzTxnO48ZFOJ0fFV9mKjNLaPQgIzNy
         3Djg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757601350; x=1758206150;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KSlk+fROaTKkWUJzIAo9K1awGf90OVjnNrt1yoqzdVE=;
        b=Az+ooYv/kAsrkOzNIqjxuJ4+V5cUiXmuvgJIoEWuhU81aS4iccAjZeKG9FKZKAg3eT
         sFRlI1xecc8oaNYO14Wgwu5a6BJZMoHA26Px71fFfPVc8/qOAQEwfK56Zxx9rmOZCKk/
         L7G1QgdBduzCmeVFTDEa606NyszBUxseG6oTEgQj28u1FV0NwhJJ23HPSaEulY6L6yEb
         mHuJISFpTn69G2X277nJh7bUl3S1g4moNTJGJqepWNkCqDeJ2oqGsChX/CQYyIGHPm2M
         VUDpSwAKOqUP5md6EwXiE664EPtCqzA8NroEzdghki2MdBOxXI0LZydOe5U4sRlWYyfa
         SdGQ==
X-Forwarded-Encrypted: i=1; AJvYcCW7d1cHzdahgnmorTdi3Hj7TIDFI50aE6yILyQ9dMA11/t4yxvEowbalMaajw5JADjwwNGVm8Px0+Sz@vger.kernel.org
X-Gm-Message-State: AOJu0Yy5DnkQeX1ipntnBG0X7jpG80oBVsr6LFLVZ+ggOcKYpFzZ9N56
	fnQ+XMp68axJ8wRXfvc9bFJDWJEh6day3eEDM2BXLz4qsTxBjpKgi44MMNawZreogIzHIDPMxkU
	QydMeafuFiVpwGnaFVF2V/m7PuZ9bz8LHT52kymNSYg==
X-Gm-Gg: ASbGncsbkfkqBJzETqYV/LCtYXlz7fdiMhsVz8cplVk0tCdfzUyIP1A8U4Nrscw2Fq7
	S/BDRE9HCcVC8S2PJ5onJYG6f+SXbloPb7XvSwSyd9esqgz5DdcyHwEi7HIGvUE0JFWEnjOjlKf
	y6JC0s3D/aUIOb8du2bpBdzrIA10yoG3vwcNijX9mIS+BzeZcu36h7kRkyfOQcdHm52xSPhEMxz
	JcgJhA6
X-Google-Smtp-Source: AGHT+IGfSKuM4c5fjR8Nmf/V6K6MW1d3ILicNhe4YrtpVSYxylfgXPVxzTMrmlTzxu1IKCMOAlIVCi0BHvOdfqFeTg8=
X-Received: by 2002:a05:6902:400e:b0:e9d:6e8b:da82 with SMTP id
 3f1490d57ef6-e9f67f9d18dmr12808394276.40.1757601349146; Thu, 11 Sep 2025
 07:35:49 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250829-pxa1908-genpd-v3-0-2aacaaaca271@dujemihanovic.xyz> <20250829-pxa1908-genpd-v3-3-2aacaaaca271@dujemihanovic.xyz>
In-Reply-To: <20250829-pxa1908-genpd-v3-3-2aacaaaca271@dujemihanovic.xyz>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 11 Sep 2025 16:35:13 +0200
X-Gm-Features: Ac12FXyuZ1jlXdj7-cEMF06sp4rqvDpYW1ns4WDjO-d3d9EX_Txs7Y_tLPOHUVM
Message-ID: <CAPDyKFpcCCUi4nKNmvvtnXs1OdUz3aHK7G+Jbi9LzLt=o=+QTQ@mail.gmail.com>
Subject: Re: [PATCH v3 3/4] clk: mmp: pxa1908: Instantiate power driver
 through auxiliary bus
To: =?UTF-8?Q?Duje_Mihanovi=C4=87?= <duje@dujemihanovic.xyz>
Cc: Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	David Wronek <david@mainlining.org>, Karel Balej <balejk@matfyz.cz>, phone-devel@vger.kernel.org, 
	~postmarketos/upstreaming@lists.sr.ht, linux-arm-kernel@lists.infradead.org, 
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 29 Aug 2025 at 18:22, Duje Mihanovi=C4=87 <duje@dujemihanovic.xyz> =
wrote:
>
> The power domain driver shares the APMU clock controller's registers.
> Instantiate the power domain driver through the APMU clock driver using
> the auxiliary bus.
>
> Also create a separate Kconfig entry for the PXA1908 clock driver to
> allow (de)selecting the driver at will and selecting
> CONFIG_AUXILIARY_BUS.
>
> Signed-off-by: Duje Mihanovi=C4=87 <duje@dujemihanovic.xyz>
> ---
> v3:
> - Move driver back to pmdomain subsystem, use auxiliary bus to
>   instantiate the driver
>
> v2:
> - Move to clk subsystem, instantiate the driver from the APMU clock
>   driver
> - Drop clock handling
> - Squash MAINTAINERS patch
> ---
>  MAINTAINERS                        |  2 ++
>  drivers/clk/Kconfig                |  1 +
>  drivers/clk/mmp/Kconfig            | 10 ++++++++++
>  drivers/clk/mmp/Makefile           |  5 ++++-
>  drivers/clk/mmp/clk-pxa1908-apmu.c | 20 ++++++++++++++++++++
>  5 files changed, 37 insertions(+), 1 deletion(-)
>
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 34e5e218e83e0ed9882b111f5251601dd6549d4e..88c0df09d7b354f95864f5a48=
daea3be14a90dc4 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -2869,7 +2869,9 @@ ARM/Marvell PXA1908 SOC support
>  M:     Duje Mihanovi=C4=87 <duje@dujemihanovic.xyz>
>  L:     linux-arm-kernel@lists.infradead.org (moderated for non-subscribe=
rs)
>  S:     Maintained
> +F:     Documentation/devicetree/bindings/clock/marvell,pxa1908.yaml
>  F:     arch/arm64/boot/dts/marvell/mmp/
> +F:     drivers/clk/mmp/Kconfig
>  F:     drivers/clk/mmp/clk-pxa1908*.c
>  F:     drivers/pmdomain/marvell/
>  F:     include/dt-bindings/clock/marvell,pxa1908.h
> diff --git a/drivers/clk/Kconfig b/drivers/clk/Kconfig
> index 4d56475f94fc1e28823fe6aee626a96847d4e6d5..68a9641fc649a23013b2d8a9e=
9f5ecb31d623abb 100644
> --- a/drivers/clk/Kconfig
> +++ b/drivers/clk/Kconfig
> @@ -511,6 +511,7 @@ source "drivers/clk/imx/Kconfig"
>  source "drivers/clk/ingenic/Kconfig"
>  source "drivers/clk/keystone/Kconfig"
>  source "drivers/clk/mediatek/Kconfig"
> +source "drivers/clk/mmp/Kconfig"
>  source "drivers/clk/meson/Kconfig"
>  source "drivers/clk/mstar/Kconfig"
>  source "drivers/clk/microchip/Kconfig"
> diff --git a/drivers/clk/mmp/Kconfig b/drivers/clk/mmp/Kconfig
> new file mode 100644
> index 0000000000000000000000000000000000000000..b0d2fea3cda5de1284916ab75=
d3af0412edcf57f
> --- /dev/null
> +++ b/drivers/clk/mmp/Kconfig
> @@ -0,0 +1,10 @@
> +# SPDX-License-Identifier: GPL-2.0-only
> +
> +config COMMON_CLK_PXA1908
> +       bool "Clock driver for Marvell PXA1908"
> +       depends on ARCH_MMP || COMPILE_TEST
> +       depends on OF
> +       default y if ARCH_MMP && ARM64
> +       select AUXILIARY_BUS
> +       help
> +         This driver supports the Marvell PXA1908 SoC clocks.
> diff --git a/drivers/clk/mmp/Makefile b/drivers/clk/mmp/Makefile
> index 062cd87fa8ddcc6808b6236f8c4dd524aaf02030..0a94f2f0856389c8e959981cc=
afbb02140a7733d 100644
> --- a/drivers/clk/mmp/Makefile
> +++ b/drivers/clk/mmp/Makefile
> @@ -11,4 +11,7 @@ obj-$(CONFIG_MACH_MMP_DT) +=3D clk-of-pxa168.o clk-of-p=
xa910.o
>  obj-$(CONFIG_COMMON_CLK_MMP2) +=3D clk-of-mmp2.o clk-pll.o pwr-island.o
>  obj-$(CONFIG_COMMON_CLK_MMP2_AUDIO) +=3D clk-audio.o
>
> -obj-$(CONFIG_ARCH_MMP) +=3D clk-of-pxa1928.o clk-pxa1908-apbc.o clk-pxa1=
908-apbcp.o clk-pxa1908-apmu.o clk-pxa1908-mpmu.o
> +obj-$(CONFIG_COMMON_CLK_PXA1908) +=3D clk-pxa1908-apbc.o clk-pxa1908-apb=
cp.o \
> +       clk-pxa1908-mpmu.o clk-pxa1908-apmu.o
> +
> +obj-$(CONFIG_ARCH_MMP) +=3D clk-of-pxa1928.o
> diff --git a/drivers/clk/mmp/clk-pxa1908-apmu.c b/drivers/clk/mmp/clk-pxa=
1908-apmu.c
> index d3a070687fc5b9fb5338f377f82e7664ca0aac29..eab02c89c9153619ac53f7486=
ed811f2cae12a43 100644
> --- a/drivers/clk/mmp/clk-pxa1908-apmu.c
> +++ b/drivers/clk/mmp/clk-pxa1908-apmu.c
> @@ -1,4 +1,5 @@
>  // SPDX-License-Identifier: GPL-2.0-only
> +#include <linux/auxiliary_bus.h>
>  #include <linux/clk-provider.h>
>  #include <linux/module.h>
>  #include <linux/platform_device.h>
> @@ -85,6 +86,8 @@ static void pxa1908_axi_periph_clk_init(struct pxa1908_=
clk_unit *pxa_unit)
>  static int pxa1908_apmu_probe(struct platform_device *pdev)
>  {
>         struct pxa1908_clk_unit *pxa_unit;
> +       struct auxiliary_device *adev;
> +       int ret;
>
>         pxa_unit =3D devm_kzalloc(&pdev->dev, sizeof(*pxa_unit), GFP_KERN=
EL);
>         if (!pxa_unit)
> @@ -94,6 +97,23 @@ static int pxa1908_apmu_probe(struct platform_device *=
pdev)
>         if (IS_ERR(pxa_unit->base))
>                 return PTR_ERR(pxa_unit->base);
>
> +       adev =3D devm_kzalloc(&pdev->dev, sizeof(*adev), GFP_KERNEL);
> +       if (!adev)
> +               return -ENOMEM;
> +
> +       adev->name =3D "power";
> +       adev->dev.parent =3D &pdev->dev;
> +
> +       ret =3D auxiliary_device_init(adev);
> +       if (ret)
> +               return ret;
> +
> +       ret =3D auxiliary_device_add(adev);
> +       if (ret) {
> +               auxiliary_device_uninit(adev);
> +               return ret;
> +       }
> +

I think the above can be simplified with devm_auxiliary_device_create().

>         mmp_clk_init(pdev->dev.of_node, &pxa_unit->unit, APMU_NR_CLKS);
>
>         pxa1908_axi_periph_clk_init(pxa_unit);
>
> --
> 2.51.0
>

Kind regards
Uffe

