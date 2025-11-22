Return-Path: <devicetree+bounces-241364-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id B23F5C7D0E1
	for <lists+devicetree@lfdr.de>; Sat, 22 Nov 2025 13:52:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 43FA9351BCC
	for <lists+devicetree@lfdr.de>; Sat, 22 Nov 2025 12:48:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 21CF2286417;
	Sat, 22 Nov 2025 12:48:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="e8teUgq+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f51.google.com (mail-qv1-f51.google.com [209.85.219.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 836311C860A
	for <devicetree@vger.kernel.org>; Sat, 22 Nov 2025 12:48:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763815699; cv=none; b=Zhg2hMGPZG3KxZK0KTsmg1XilPdPgiBW0YC9YiqGMFYx0F4Xs3S1+1FsmINcvY4DuoKYHWKBRIxQjq4B+V1rNjVXIOPzfywlVQ29hccKRHo2lfqbIUDbYDoLdWBBJLq1bff6X+Pt/clSrelYuJpPxOyRa0pasjVBIIuInVsisV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763815699; c=relaxed/simple;
	bh=Cx5mm+LHEHThWpNfzPBSTyj6Ref7KHNCEdY/Q3eDbfM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=rPF4nSP1AZAFBDhzDn+35HoWRyWfeENXMLv9HL8ifvdNXZQ/vg+1SmvJxBRJtGHPvCyU+0pOajRCr7SH3Qx8tfj86fsgsyE/aA2y9AqhdIqGiGBUjI57fyPatmobAXufpdF320G2JAXtpNjX6Vv5WZb72NSaxNpT8Rc1dmxEUL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=e8teUgq+; arc=none smtp.client-ip=209.85.219.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-qv1-f51.google.com with SMTP id 6a1803df08f44-88057f5d041so28948356d6.1
        for <devicetree@vger.kernel.org>; Sat, 22 Nov 2025 04:48:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763815694; x=1764420494; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=o8gqhbCltqdqbcHVKZyuU/IaHPWnbH5XRr5u6wrUOXw=;
        b=e8teUgq+XE6zG57Bnt7hQWKEHeL6VoqOYoAnZqWd7NYUuYV3tYvnXv4QLq5i8Gmygu
         F9cfIDh7qoCT8aeIHRQKievdbTZMEI2yS3+o8/1veXyLnVxDxv1XAhFkhshZr9BSOixz
         POPmb09OWEWXFpxziMmraEvA7Bn8ffbFAQIEfAgIfS1gyEyDXvAydp5FqmaqYDgLWfKi
         ZriXC1msaL/myuv2RYERIIAmVdxNB7Iylsbiso2DCwix8oqiXzQPlX3vhMAlTVYD/M3R
         XRrmVnBBsAsZkY1/wtj7AuhQwZhINfTlWVenh8ZqNhAB2AJJf048bRgYWMzWQ2ctuOFl
         7uhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763815694; x=1764420494;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=o8gqhbCltqdqbcHVKZyuU/IaHPWnbH5XRr5u6wrUOXw=;
        b=N3RM+rftcMuOMLGpnoWrJqTyhhfkwUvFZ5wH5n/k6yzXuWFcFOlEsZO39mP6ei+eLn
         9ovhejTweLkDg/nMjOHfk7QCq2DTACOfbOIO6fWw5sNe17MZDmw7G9LOCMpDFu/VsWqG
         xE0ffYt/J9NKe7+mzDTuxZHb/N5hqGvRIN6fGaNiARN96Mb/4sboWPojcQgsL1Q3HSdX
         sbyXA7A67mylN3TfmWb32vayeU7sRY9R9bcQcu45NtkSc0fuVzMXx+llEetjCUia5p4/
         a16Kk4+/1VSEDZl4LyhD/LDdes3eh7TY17dt4qMfuBwf9LeReXjPVSIv+l+v41w19ygG
         GXRA==
X-Forwarded-Encrypted: i=1; AJvYcCWMRvnkdx+7PI9brdet4dQw8s0Pwgvj9qPDckhbaCYBsFUkvhwZymxbJE05uDfnvCpRW4kIfXxpvPqQ@vger.kernel.org
X-Gm-Message-State: AOJu0YxxX0IxrofudRJgYN84YjP7b78xh6l0Y6Tw1Fsyr3EMfVNejkBa
	gCqCNJ0V0GKDFldEgtnnnTyQYWjbHgfA3rdDjE1uDl2rAoE9ejmxVWInCuuxyTd8QL7og6f+MF+
	nPENHf6EwxqOHDr1VlWHDpJuQTdKplWCK7zm0RIPnUQ==
X-Gm-Gg: ASbGncvs4SVXazVhV2xo3p2mLFhXXonys7SjCY7nUc0S6eGxR+vcqkho08M7tJsFOXT
	O2L5toFNh8hSd8xV/RshfUDO8lRzCe9nKx7A8vHV0nAzVAL5WSPvAlPvJdX0PUiRoWLDfOhtY6A
	t88LbygPUO5NWBzPLG2KLKfzNxO4S4dxQL4EtiRQdJa9lOnSUW3k75AzMr36qo3DBFJgcK2rtXH
	AZRCuJumyGJFh5sWGusQ7EkpMRqfJj6xv8j4t9HDrBgysuW3cBdVgx7+k89VkdcXgZb7RA=
X-Google-Smtp-Source: AGHT+IFui2/FcnPBmvVszPdhd9hT5kBneIF+kUNteMJLYssXVSAn66jfA8taiczKqofX0Om2tpq1Aqap3IRQ6R38HV4=
X-Received: by 2002:a05:6214:21e3:b0:87f:fee5:c3a6 with SMTP id
 6a1803df08f44-8847c533f24mr88483516d6.49.1763815694379; Sat, 22 Nov 2025
 04:48:14 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251121-phyb4-v7-0-df644fa62180@google.com> <20251121-phyb4-v7-2-df644fa62180@google.com>
In-Reply-To: <20251121-phyb4-v7-2-df644fa62180@google.com>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Sat, 22 Nov 2025 12:48:03 +0000
X-Gm-Features: AWmQ_bkh4wl1u38i5d0nBSmX9Kkbsr0fGW0dbqVsgNFov-xmgwNb3n62zATaPv8
Message-ID: <CADrjBPpLn9qzg1y5_c_0CYL2U8p6taMWtPOw5RykAO4=4uNeUA@mail.gmail.com>
Subject: Re: [PATCH v7 2/2] phy: Add Google Tensor SoC USB PHY driver
To: Roy Luo <royluo@google.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	=?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Badhri Jagan Sridharan <badhri@google.com>, Doug Anderson <dianders@google.com>, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	Joy Chakraborty <joychakr@google.com>, Naveen Kumar <mnkumar@google.com>
Content-Type: text/plain; charset="UTF-8"

Hi Roy,

On Fri, 21 Nov 2025 at 08:56, Roy Luo <royluo@google.com> wrote:
>
> Support the USB PHY found on Google Tensor G5 (Laguna). This
> particular USB PHY supports both high-speed and super-speed
> operations, and is integrated with the SNPS DWC3 controller that's
> also on the SoC. This initial patch specifically adds functionality
> for high-speed.
>
> Co-developed-by: Joy Chakraborty <joychakr@google.com>
> Signed-off-by: Joy Chakraborty <joychakr@google.com>
> Co-developed-by: Naveen Kumar <mnkumar@google.com>
> Signed-off-by: Naveen Kumar <mnkumar@google.com>
> Signed-off-by: Roy Luo <royluo@google.com>
> ---
>  drivers/phy/Kconfig          |  13 ++
>  drivers/phy/Makefile         |   1 +
>  drivers/phy/phy-google-usb.c | 292 +++++++++++++++++++++++++++++++++++++++++++

Please add this new file to Tensor SoC MAINTAINERS entry so it's
easier to review future patches.

>  3 files changed, 306 insertions(+)
>
> diff --git a/drivers/phy/Kconfig b/drivers/phy/Kconfig
> index 678dd0452f0aa0597773433f04d2a9ba77474d2a..af14ec74542a9879c856dee8236753990fdf3705 100644
> --- a/drivers/phy/Kconfig
> +++ b/drivers/phy/Kconfig
> @@ -101,6 +101,19 @@ config PHY_NXP_PTN3222
>           schemes. It supports all three USB 2.0 data rates: Low Speed, Full
>           Speed and High Speed.
>
> +config PHY_GOOGLE_USB
> +       tristate "Google Tensor SoC USB PHY driver"
> +       depends on HAS_IOMEM
> +       depends on OF
> +       depends on TYPEC

Add COMPILE_TEST for build testing.

> +       select GENERIC_PHY
> +       help
> +         Enable support for the USB PHY on Google Tensor SoCs, starting with
> +         the G5 generation. This driver provides the PHY interfaces to
> +         interact with the SNPS eUSB2 and USB 3.2/DisplayPort Combo PHY, both
> +         of which are integrated with the DWC3 USB DRD controller.
> +         This driver currently supports USB high-speed.
> +
>  source "drivers/phy/allwinner/Kconfig"
>  source "drivers/phy/amlogic/Kconfig"
>  source "drivers/phy/broadcom/Kconfig"
> diff --git a/drivers/phy/Makefile b/drivers/phy/Makefile
> index bfb27fb5a494283d7fd05dd670ebd1b12df8b1a1..aeaaaf988554a24bb572d8b34b54638a6a3aed73 100644
> --- a/drivers/phy/Makefile
> +++ b/drivers/phy/Makefile
> @@ -13,6 +13,7 @@ obj-$(CONFIG_PHY_SNPS_EUSB2)          += phy-snps-eusb2.o
>  obj-$(CONFIG_USB_LGM_PHY)              += phy-lgm-usb.o
>  obj-$(CONFIG_PHY_AIROHA_PCIE)          += phy-airoha-pcie.o
>  obj-$(CONFIG_PHY_NXP_PTN3222)          += phy-nxp-ptn3222.o
> +obj-$(CONFIG_PHY_GOOGLE_USB)           += phy-google-usb.o
>  obj-y                                  += allwinner/   \
>                                            amlogic/     \
>                                            broadcom/    \
> diff --git a/drivers/phy/phy-google-usb.c b/drivers/phy/phy-google-usb.c
> new file mode 100644
> index 0000000000000000000000000000000000000000..23b988cc5292111872c4acb32f7666e0ce9a39a3
> --- /dev/null
> +++ b/drivers/phy/phy-google-usb.c
> @@ -0,0 +1,292 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * phy-google-usb.c - Google USB PHY driver
> + *
> + * Copyright (C) 2025, Google LLC
> + */
> +
> +#include <linux/bitfield.h>
> +#include <linux/clk.h>
> +#include <linux/reset.h>
> +#include <linux/io.h>
> +#include <linux/kernel.h>
> +#include <linux/module.h>
> +#include <linux/of.h>
> +#include <linux/phy/phy.h>
> +#include <linux/platform_device.h>
> +#include <linux/mutex.h>
> +#include <linux/cleanup.h>
> +#include <linux/usb/typec_mux.h>
> +#include <linux/regmap.h>
> +#include <linux/mfd/syscon.h>
> +

Sort headers alphabetically

> +#define USBCS_USB2PHY_CFG19_OFFSET 0x0
> +#define USBCS_USB2PHY_CFG19_PHY_CFG_PLL_FB_DIV GENMASK(19, 8)
> +
> +#define USBCS_USB2PHY_CFG21_OFFSET 0x8
> +#define USBCS_USB2PHY_CFG21_PHY_ENABLE BIT(12)
> +#define USBCS_USB2PHY_CFG21_REF_FREQ_SEL GENMASK(15, 13)
> +#define USBCS_USB2PHY_CFG21_PHY_TX_DIG_BYPASS_SEL BIT(19)
> +
> +#define USBCS_PHY_CFG1_OFFSET 0x28
> +#define USBCS_PHY_CFG1_SYS_VBUSVALID BIT(17)
> +
> +enum google_usb_phy_id {
> +       GOOGLE_USB2_PHY,
> +       GOOGLE_USB_PHY_NUM,
> +};
> +
> +struct google_usb_phy_instance {
> +       int index;
> +       struct phy *phy;
> +       int num_clks;
> +       struct clk_bulk_data *clks;
> +       int num_rsts;
> +       struct reset_control_bulk_data *rsts;
> +};
> +
> +struct google_usb_phy {
> +       struct device *dev;
> +       struct regmap *usb_cfg_regmap;
> +       unsigned int usb2_cfg_offset;
> +       void __iomem *usbdp_top_base;
> +       struct google_usb_phy_instance insts[GOOGLE_USB_PHY_NUM];
> +       /* serialize phy access */

Be more specific with the mutex comment, which code or variables are protected?

> +       struct mutex phy_mutex;
> +       struct typec_switch_dev *sw;
> +       enum typec_orientation orientation;
> +};
> +
> +static inline struct google_usb_phy *to_google_usb_phy(struct google_usb_phy_instance *inst)
> +{
> +       return container_of(inst, struct google_usb_phy, insts[inst->index]);
> +}
> +
> +static void set_vbus_valid(struct google_usb_phy *gphy)
> +{
> +       u32 reg;
> +
> +       if (gphy->orientation == TYPEC_ORIENTATION_NONE) {
> +               reg = readl(gphy->usbdp_top_base + USBCS_PHY_CFG1_OFFSET);
> +               reg &= ~USBCS_PHY_CFG1_SYS_VBUSVALID;
> +               writel(reg, gphy->usbdp_top_base + USBCS_PHY_CFG1_OFFSET);
> +       } else {
> +               reg = readl(gphy->usbdp_top_base + USBCS_PHY_CFG1_OFFSET);
> +               reg |= USBCS_PHY_CFG1_SYS_VBUSVALID;
> +               writel(reg, gphy->usbdp_top_base + USBCS_PHY_CFG1_OFFSET);
> +       }
> +}
> +
> +static int google_usb_set_orientation(struct typec_switch_dev *sw,
> +                                     enum typec_orientation orientation)
> +{
> +       struct google_usb_phy *gphy = typec_switch_get_drvdata(sw);
> +
> +       dev_dbg(gphy->dev, "set orientation %d\n", orientation);
> +
> +       gphy->orientation = orientation;
> +
> +       if (pm_runtime_suspended(gphy->dev))
> +               return 0;
> +
> +       guard(mutex)(&gphy->phy_mutex);
> +
> +       set_vbus_valid(gphy);
> +
> +       return 0;
> +}
> +
> +static int google_usb2_phy_init(struct phy *_phy)
> +{
> +       struct google_usb_phy_instance *inst = phy_get_drvdata(_phy);
> +       struct google_usb_phy *gphy = to_google_usb_phy(inst);
> +       u32 reg;
> +       int ret = 0;
> +
> +       dev_dbg(gphy->dev, "initializing usb2 phy\n");
> +
> +       guard(mutex)(&gphy->phy_mutex);
> +
> +       regmap_read(gphy->usb_cfg_regmap, gphy->usb2_cfg_offset + USBCS_USB2PHY_CFG21_OFFSET, &reg);
> +       reg &= ~USBCS_USB2PHY_CFG21_PHY_TX_DIG_BYPASS_SEL;
> +       reg &= ~USBCS_USB2PHY_CFG21_REF_FREQ_SEL;
> +       reg |= FIELD_PREP(USBCS_USB2PHY_CFG21_REF_FREQ_SEL, 0);
> +       regmap_write(gphy->usb_cfg_regmap, gphy->usb2_cfg_offset + USBCS_USB2PHY_CFG21_OFFSET, reg);
> +
> +       regmap_read(gphy->usb_cfg_regmap, gphy->usb2_cfg_offset + USBCS_USB2PHY_CFG19_OFFSET, &reg);
> +       reg &= ~USBCS_USB2PHY_CFG19_PHY_CFG_PLL_FB_DIV;
> +       reg |= FIELD_PREP(USBCS_USB2PHY_CFG19_PHY_CFG_PLL_FB_DIV, 368);
> +       regmap_write(gphy->usb_cfg_regmap, gphy->usb2_cfg_offset + USBCS_USB2PHY_CFG19_OFFSET, reg);
> +
> +       set_vbus_valid(gphy);
> +
> +       ret = clk_bulk_prepare_enable(inst->num_clks, inst->clks);
> +       if (ret)
> +               return ret;
> +
> +       ret = reset_control_bulk_deassert(inst->num_rsts, inst->rsts);
> +       if (ret) {
> +               clk_bulk_disable_unprepare(inst->num_clks, inst->clks);
> +               return ret;
> +       }
> +
> +       regmap_read(gphy->usb_cfg_regmap, gphy->usb2_cfg_offset + USBCS_USB2PHY_CFG21_OFFSET, &reg);
> +       reg |= USBCS_USB2PHY_CFG21_PHY_ENABLE;
> +       regmap_write(gphy->usb_cfg_regmap, gphy->usb2_cfg_offset + USBCS_USB2PHY_CFG21_OFFSET, reg);
> +
> +       return ret;
> +}
> +
> +static int google_usb2_phy_exit(struct phy *_phy)
> +{
> +       struct google_usb_phy_instance *inst = phy_get_drvdata(_phy);
> +       struct google_usb_phy *gphy = to_google_usb_phy(inst);
> +       u32 reg;
> +
> +       dev_dbg(gphy->dev, "exiting usb2 phy\n");
> +
> +       guard(mutex)(&gphy->phy_mutex);
> +
> +       regmap_read(gphy->usb_cfg_regmap, gphy->usb2_cfg_offset + USBCS_USB2PHY_CFG21_OFFSET, &reg);
> +       reg &= ~USBCS_USB2PHY_CFG21_PHY_ENABLE;
> +       regmap_write(gphy->usb_cfg_regmap, gphy->usb2_cfg_offset + USBCS_USB2PHY_CFG21_OFFSET, reg);
> +
> +       reset_control_bulk_assert(inst->num_rsts, inst->rsts);
> +       clk_bulk_disable_unprepare(inst->num_clks, inst->clks);
> +
> +       return 0;
> +}
> +
> +static const struct phy_ops google_usb2_phy_ops = {
> +       .init           = google_usb2_phy_init,
> +       .exit           = google_usb2_phy_exit,
> +};
> +
> +static struct phy *google_usb_phy_xlate(struct device *dev,
> +                                       const struct of_phandle_args *args)
> +{
> +       struct google_usb_phy *gphy = dev_get_drvdata(dev);
> +
> +       if (args->args[0] >= GOOGLE_USB_PHY_NUM) {
> +               dev_err(dev, "invalid PHY index requested from DT\n");
> +               return ERR_PTR(-ENODEV);
> +       }
> +       return gphy->insts[args->args[0]].phy;
> +}
> +
> +static int google_usb_phy_probe(struct platform_device *pdev)
> +{
> +       struct device *dev = &pdev->dev;
> +       struct google_usb_phy *gphy;
> +       struct phy *phy;
> +       struct google_usb_phy_instance *inst;
> +       struct phy_provider *phy_provider;
> +       struct typec_switch_desc sw_desc = { };
> +       u32 args[1];
> +       int ret;

Consider reverse christmas tree ordering.

regards,

Peter

