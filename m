Return-Path: <devicetree+bounces-229042-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id AE98FBF34B5
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 21:56:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 0CB254F9059
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 19:56:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 67A6B3328F0;
	Mon, 20 Oct 2025 19:56:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="0R3yGGv0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BA6C220F3E
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 19:55:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760990159; cv=none; b=UKvJ3ON3eIc1OBFQeM1Shxhg8xrJS2r/PDP2uwnws1S4PcQ9Ti5Fe0ONgaQX34cSlMcUdXpCjuMycgy1TqhtZYtFxFnudq3yXrDgFwYvzcjFgWRUYIIXToT9oJZiShzI9DokqQBg/h4akzhDdB39Lrd5F08rIX7vc5gZg7ArytI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760990159; c=relaxed/simple;
	bh=RSGGfdz00yOxnxQA4Z1SSj0g3YI91ZVBTSlGsDWb49w=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=WvWQjjH87LoELfjfAhKcYUJCCNZZmHdT+04NGhA6Qc2GLUMoBBp/n17J+yBDSqO5NI5D4OBPefCvA8suXrOCtJ2hTfm6CbWvefyfe25htxXfvQhX+Ar+tPiXMF44vUjDhzdcLN809W7CO4jej0zno3iycr8eT8wYWs1XhLCF828=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=0R3yGGv0; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-269af38418aso57419785ad.1
        for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 12:55:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1760990155; x=1761594955; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rGDb4j5YD7gzcoOdyZ8DfUuxVA6AmwZO6D17kiLjgUk=;
        b=0R3yGGv0qGaRGmEIdQVLk2Ex8Yvf/CLcZuH1EEQFKuOYW9SQPJOhlNLLK/hlXwUHt1
         tBTaRnzjpT8qgzoKiymim9Tc6vEdgwL6/phqFz9xla9YuXNSmYJ+YjJXknDGcNZ3u3Ad
         BES9bQJbIm3GgWzxwBzcAmqrIgaR24B6dBiOJIHlUWbykqcytUL7DZSI7WVebSG3aM7X
         xjPurlsHRpflnMSnqropLsnVUTKVsqdA/0bYZPJoP0becwIC8QJQa1ii33mzBqX/aEwT
         r54JIaDhFcS4MJRyKgj27FyOHpvfyhEjz6g2PaoTP/S7SpBoonFtWqiwlRfam19hqXz+
         s4Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760990155; x=1761594955;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rGDb4j5YD7gzcoOdyZ8DfUuxVA6AmwZO6D17kiLjgUk=;
        b=atCKkL9ZfQt4T68w2ccuA9pFu4AF5gLDT3PSr58aG1rv9NM8q7V8gbxMLTRjKv/goH
         b6xMouTsAhGeca/t9SpytlrVgMW8oqhOOXJgSfKK5oBb5ww3Gqy0v21RLQkK+m/Ryvz/
         kx2uzKkWdssJ+ILe6B7USTJsQjuoWzmCi+g43VQCtUvmfrbQ+oN98h30dSv9OVJS4JSG
         0ZC22uLdEG+LpbK83AlGVq7Qlwg5ouWaVxPTgT0XyvpjkLFqjdDJ8pMS3NurhglhPXfr
         +9+OeBjznOynl0DmOjYPKUPxCfmv+ExdpN40M3A+kcK04pnhOebrNbe4vYNsReMm3vzQ
         rD+g==
X-Forwarded-Encrypted: i=1; AJvYcCXFdHwurt5qsFPqHIT9z/y8A4NjVb8scWB85b//4xVUYM7Kb8STMmuyoxw8xEtDiKxGAyws6D4So0Ys@vger.kernel.org
X-Gm-Message-State: AOJu0Yz1mQoF88Vvde1RILf3ZZZaa8kOtVmUv3oKmXwB1TW4xCshZHJn
	6qdb5cNmmTaXg3Dw6EBo4/q3+EhasUcOyQPLRSun2xqwTjoVgOae1GXQcWYWtxR/f1owo93ekGC
	wONrtgsT3Igbc3Hgpevxo3REZeMU+Ul8grj65cJOJ
X-Gm-Gg: ASbGnct++Uy4f4ZftPHoOPtOB98HOO00p7smxfRgpZ1/+IOkq75emeVrPBQIFfVk6s5
	710ZS2N9aJLCKI4YpxjC2w9zchazCe1IzLVQC3FBDVQEJB1+1Yn0N3X/jSqyWvVS096ii4Ri16f
	NIFMFiKJ46xUFmzBU82FtGnTmgVgMfC2Vd/DMb1c/y/6GaI02YQm6PgXBDls1KqOCby0bZChF3o
	Ut71GPrPApc6c8R/Cel/thDKAUBSVh28vNFAjllRk/8jYpWJrWOxNH4JwDgcH/IanAW2WESFqYu
	j1tHr10gZtFJ5NjXyg==
X-Google-Smtp-Source: AGHT+IFy7RPLrTjaJAmRvl/up+5yT0Xi35K2QAP5mH7buXJTH15rh6ZR8w+Jx06TkvEyKKVVV9FaRQNwaH2E98irt9s=
X-Received: by 2002:a17:903:1746:b0:24e:95bb:88b1 with SMTP id
 d9443c01a7336-290caf8510cmr156895345ad.34.1760990154949; Mon, 20 Oct 2025
 12:55:54 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251017235159.2417576-1-royluo@google.com> <20251017235159.2417576-3-royluo@google.com>
 <37daba64-5233-4573-95de-38612c2358f2@gmail.com>
In-Reply-To: <37daba64-5233-4573-95de-38612c2358f2@gmail.com>
From: Roy Luo <royluo@google.com>
Date: Mon, 20 Oct 2025 12:55:18 -0700
X-Gm-Features: AS18NWCgbE77LSFDkUG8Ht5NtPdNWshuYiiufgQjSFfeg5-XcBLfdhlCz7phu9U
Message-ID: <CA+zupgwbmKt8BhHEM-76CLLH_dE_vmyHvKwqpC2WzwED9irEVw@mail.gmail.com>
Subject: Re: [PATCH v4 2/2] phy: Add Google Tensor SoC USB PHY driver
To: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Peter Griffin <peter.griffin@linaro.org>, 
	=?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, Joy Chakraborty <joychakr@google.com>, 
	Naveen Kumar <mnkumar@google.com>, Badhri Jagan Sridharan <badhri@google.com>, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Oct 18, 2025 at 1:13=E2=80=AFAM Ivaylo Ivanov
<ivo.ivanov.ivanov1@gmail.com> wrote:
>
> On 10/18/25 02:51, Roy Luo wrote:
> > Support the USB PHY found on Google Tensor G5. This particular USB PHY
> > supports both high-speed and super-speed operations, and is integrated
> > with the SNPS DWC3 controller that's also on the SoC.
> > This initial patch specifically adds functionality for high-speed.
> >
> > Co-developed-by: Joy Chakraborty <joychakr@google.com>
> > Signed-off-by: Joy Chakraborty <joychakr@google.com>
> > Co-developed-by: Naveen Kumar <mnkumar@google.com>
> > Signed-off-by: Naveen Kumar <mnkumar@google.com>
> > Signed-off-by: Roy Luo <royluo@google.com>
> > ---
> >  drivers/phy/Kconfig          |  13 ++
> >  drivers/phy/Makefile         |   1 +
> >  drivers/phy/phy-google-usb.c | 271 +++++++++++++++++++++++++++++++++++
> >  3 files changed, 285 insertions(+)
> >  create mode 100644 drivers/phy/phy-google-usb.c
> >
> > diff --git a/drivers/phy/Kconfig b/drivers/phy/Kconfig
> > index 58c911e1b2d2..fe32d1356002 100644
> > --- a/drivers/phy/Kconfig
> > +++ b/drivers/phy/Kconfig
> > @@ -101,6 +101,19 @@ config PHY_NXP_PTN3222
> >         schemes. It supports all three USB 2.0 data rates: Low Speed, F=
ull
> >         Speed and High Speed.
> >
> > +config PHY_GOOGLE_USB
> > +     tristate "Google Tensor SoC USB PHY driver"
> > +     depends on HAS_IOMEM
> > +     depends on OF
> > +     depends on TYPEC
> > +     select GENERIC_PHY
> > +     help
> > +       Enable support for the USB PHY on Google Tensor SoCs, starting =
with
> > +       the G5 generation. This driver provides the PHY interfaces to
> > +       interact with the SNPS eUSB2 and USB 3.2/DisplayPort Combo PHY,=
 both
> > +       of which are integrated with the DWC3 USB controller.
>
> So it's more like a DRD controller, since it encapsulates multiple phys?

Yes, it's a DRD controller, I will make it clear in the next version.

>
> > +       This driver currently supports USB high-speed.
> > +
> >  source "drivers/phy/allwinner/Kconfig"
> >  source "drivers/phy/amlogic/Kconfig"
> >  source "drivers/phy/broadcom/Kconfig"
> > diff --git a/drivers/phy/Makefile b/drivers/phy/Makefile
> > index c670a8dac468..1d7a1331bd19 100644
> ...
> > +#include <linux/module.h>
> > +#include <linux/of.h>
> > +#include <linux/phy/phy.h>
> > +#include <linux/platform_device.h>
> > +#include <linux/mutex.h>
> > +#include <linux/cleanup.h>
> > +#include <linux/usb/typec_mux.h>
> > +
> > +#define USBCS_USB2PHY_CFG19_OFFSET 0x0
> > +#define USBCS_USB2PHY_CFG19_PHY_CFG_PLL_FB_DIV GENMASK(19, 8)
>
> I'd suggest implementing the eUSB support in the existing snps-eusb2
> driver for the sake of clarity. That way, you can pass it as a phandle
> to this driver and probe it when drd is probing.

If I understand it correctly, you're referring to the pattern used in
Documentation/devicetree/bindings/phy/samsung,exynos2200-eusb2-phy.yaml and
Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml.
Please correct me if I'm wrong.

At first glance, this approach seems feasible. Custom logic, such
as vbus valid handling, would need to stay within this driver. Most
of the eUSB block configuration in google_usb2_phy_init() could
be moved to the snps-eusb2 driver by adding one more compatible
for Google's version of the SNSP eUSB IP. However, I'd argue
1. This approach would introduce an extra layer of PHY interface,
    which adds unnecessary complexity.
2. Not much of the code is reused in snps-eusb2 driver: the register
    definition and programming sequence are specific to Google,
    hence the logic in google_usb2_phy_init() would have to be
    moved to snps-eusb2 driver almost word-by-word.

I understand this approach was suggested for the sake of clarity,
but I'm not sure whether that makes for the best trade-off. Since
there is a precedent for this approach, I do not have a strong
objection. It would be helpful if the maintainers could also provide
their input on this specific point.

>
> > +
> > +#define USBCS_USB2PHY_CFG21_OFFSET 0x8
> > +#define USBCS_USB2PHY_CFG21_PHY_ENABLE BIT(12)
> > +#define USBCS_USB2PHY_CFG21_REF_FREQ_SEL GENMASK(15, 13)
> > +#define USBCS_USB2PHY_CFG21_PHY_TX_DIG_BYPASS_SEL BIT(19)
> > +
> > +#define USBCS_PHY_CFG1_OFFSET 0x28
> > +#define USBCS_PHY_CFG1_SYS_VBUSVALID BIT(17)
> > +
> > +enum google_usb_phy_id {
> > +     GOOGLE_USB2_PHY,
> > +     GOOGLE_USB_PHY_NUM,
> > +};
> > +
> > +struct google_usb_phy_instance {
> > +     int index;
> > +     struct phy *phy;
> > +     int num_clks;
> > +     struct clk_bulk_data *clks;
> > +     struct reset_control *rsts;
> > +};
> > +
> > +struct google_usb_phy {
> > +     struct device *dev;
> > +     void __iomem *u2phy_cfg_base;
> > +     void __iomem *dp_top_base;
> > +     struct google_usb_phy_instance insts[GOOGLE_USB_PHY_NUM];
> > +     /* serialize phy access */
> > +     struct mutex phy_mutex;
> > +     struct typec_switch_dev *sw;
> > +     enum typec_orientation orientation;
> > +};
> > +
> > +static inline struct google_usb_phy *to_google_usb_phy(struct google_u=
sb_phy_instance *inst)
> > +{
> > +     return container_of(inst, struct google_usb_phy, insts[inst->inde=
x]);
> > +}
> > +
> > +static void set_vbus_valid(struct google_usb_phy *gphy)
> > +{
> > +     u32 reg;
> > +
> > +     if (gphy->orientation =3D=3D TYPEC_ORIENTATION_NONE) {
> > +             reg =3D readl(gphy->dp_top_base + USBCS_PHY_CFG1_OFFSET);
> > +             reg &=3D ~USBCS_PHY_CFG1_SYS_VBUSVALID;
> > +             writel(reg, gphy->dp_top_base + USBCS_PHY_CFG1_OFFSET);
> > +     } else {
> > +             reg =3D readl(gphy->dp_top_base + USBCS_PHY_CFG1_OFFSET);
> > +             reg |=3D USBCS_PHY_CFG1_SYS_VBUSVALID;
> > +             writel(reg, gphy->dp_top_base + USBCS_PHY_CFG1_OFFSET);
> > +     }
> > +}
> > +
> > +static int google_usb_set_orientation(struct typec_switch_dev *sw,
> > +                                   enum typec_orientation orientation)
> > +{
> > +     struct google_usb_phy *gphy =3D typec_switch_get_drvdata(sw);
> > +
> > +     dev_dbg(gphy->dev, "set orientation %d\n", orientation);
> > +
> > +     gphy->orientation =3D orientation;
> > +
> > +     if (pm_runtime_suspended(gphy->dev))
> > +             return 0;
> > +
> > +     guard(mutex)(&gphy->phy_mutex);
> > +
> > +     set_vbus_valid(gphy);
> > +
> > +     return 0;
> > +}
> > +
> > +static int google_usb2_phy_init(struct phy *_phy)
> > +{
> > +     struct google_usb_phy_instance *inst =3D phy_get_drvdata(_phy);
> > +     struct google_usb_phy *gphy =3D to_google_usb_phy(inst);
> > +     u32 reg;
> > +     int ret =3D 0;
> > +
> > +     dev_dbg(gphy->dev, "initializing usb2 phy\n");
> > +
> > +     guard(mutex)(&gphy->phy_mutex);
> > +
> > +     reg =3D readl(gphy->u2phy_cfg_base + USBCS_USB2PHY_CFG21_OFFSET);
> > +     reg &=3D ~USBCS_USB2PHY_CFG21_PHY_TX_DIG_BYPASS_SEL;
> > +     reg &=3D ~USBCS_USB2PHY_CFG21_REF_FREQ_SEL;
> > +     reg |=3D FIELD_PREP(USBCS_USB2PHY_CFG21_REF_FREQ_SEL, 0);
> > +     writel(reg, gphy->u2phy_cfg_base + USBCS_USB2PHY_CFG21_OFFSET);
> > +
> > +     reg =3D readl(gphy->u2phy_cfg_base + USBCS_USB2PHY_CFG19_OFFSET);
> > +     reg &=3D ~USBCS_USB2PHY_CFG19_PHY_CFG_PLL_FB_DIV;
> > +     reg |=3D FIELD_PREP(USBCS_USB2PHY_CFG19_PHY_CFG_PLL_FB_DIV, 368);
>
> Yeah, it's definitely the eUSB IP, but wired differently.
>
> phy-snps-eusb2.c:
> #define EXYNOS_USB_PHY_CFG_PLLCFG0 (0x8)
> #define PHY_CFG_PLL_FB_DIV_19_8_MASK GENMASK(19, 8)
> #define DIV_19_8_19_2_MHZ_VAL (0x170)
>
> > +     writel(reg, gphy->u2phy_cfg_base + USBCS_USB2PHY_CFG19_OFFSET);
> > +
> > +     set_vbus_valid(gphy);
> > +
> > +     ret =3D clk_bulk_prepare_enable(inst->num_clks, inst->clks);
> > +     if (ret)
> > +             return ret;
> > +
> > +     ret =3D reset_control_deassert(inst->rsts);
> > +     if (ret) {
> > +             clk_bulk_disable_unprepare(inst->num_clks, inst->clks);
> > +             return ret;
> > +     }
> > +
> > +     reg =3D readl(gphy->u2phy_cfg_base + USBCS_USB2PHY_CFG21_OFFSET);
> > +     reg |=3D USBCS_USB2PHY_CFG21_PHY_ENABLE;
> > +     writel(reg, gphy->u2phy_cfg_base + USBCS_USB2PHY_CFG21_OFFSET);
> > +
> > +     return ret;
> > +}
> > +
> ...
> > +
> > +     gphy->sw =3D typec_switch_register(dev, &sw_desc);
> > +     if (IS_ERR(gphy->sw))
> > +             return dev_err_probe(dev, PTR_ERR(gphy->sw),
> > +                                  "failed to register typec switch\n")=
;
> > +
> > +     return 0;
> > +}
> > +
> > +static void google_usb_phy_remove(struct platform_device *pdev)
> > +{
> > +     struct google_usb_phy *gphy =3D dev_get_drvdata(&pdev->dev);
> > +
> > +     typec_switch_unregister(gphy->sw);
> > +     pm_runtime_disable(&pdev->dev);
> > +}
> > +
> > +static const struct of_device_id google_usb_phy_of_match[] =3D {
> > +     {
> > +             .compatible =3D "google,gs5-usb-phy",
>
> Did the naming scheme also change from gs{N}01 to gsN?

Starting from Tensor G5, there's no model number [1], hence
the change. The prefix "gs" is kept as their family name.

[1] https://en.wikipedia.org/wiki/Google_Tensor

>
> > +     },
> > +     { }
> > +};
> > +MODULE_DEVICE_TABLE(of, google_usb_phy_of_match);
> > +
> > +static struct platform_driver google_usb_phy =3D {
> > +     .probe  =3D google_usb_phy_probe,
> > +     .remove =3D google_usb_phy_remove,
> > +     .driver =3D {
> > +             .name           =3D "google-usb-phy",
> > +             .of_match_table =3D google_usb_phy_of_match,
> > +     }
> > +};
> > +
> > +module_platform_driver(google_usb_phy);
> > +MODULE_LICENSE("GPL");
> > +MODULE_DESCRIPTION("Google USB phy driver");
>
> Great work!
>
> Best regards,
> Ivaylo

Thank you for the review!

Regards,
Roy Luo

