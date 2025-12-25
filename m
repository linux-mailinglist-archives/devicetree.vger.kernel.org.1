Return-Path: <devicetree+bounces-249650-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id B69BACDD9CA
	for <lists+devicetree@lfdr.de>; Thu, 25 Dec 2025 10:46:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 551BC30014E1
	for <lists+devicetree@lfdr.de>; Thu, 25 Dec 2025 09:46:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A9203195F5;
	Thu, 25 Dec 2025 09:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="nLwkXzeK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com [209.85.214.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3980A1E572F
	for <devicetree@vger.kernel.org>; Thu, 25 Dec 2025 09:46:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766655982; cv=none; b=myXzIBOpbxKymMuRA2CyXOqSdqP+adP2sFwr+h18gvtFWAbe7MZrlItwhV+8TBBWrnbVTSxa+BbVZuiFGwIWkJUbZmISAR65L+6nu2mJJEsnuwVTwWAQJZYu54UX6O0dVrvp+MD1mDvz35eL7EUpKMP1NnUAU9eHKsCHmzUyTsY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766655982; c=relaxed/simple;
	bh=rJlmmV4CkUgusY7DZrVQW1YejuNTwyUJU/w/XMJ8cFE=;
	h=Content-Type:Mime-Version:Subject:From:In-Reply-To:Date:Cc:
	 Message-Id:References:To; b=bKvL1KFLUUwwwnxRlgDqkxiFIIEu2MW4LaRGWlRThR76qXTXSMzH//iSk9dV998MxXaN4gIg9cHSUUPbGLrVUleP9UytoytN3DZ/Wrn4aAXCF4D8+iPjrOmVwe62MJVWzyQ6Cu6gkBCG2Of+y2R7p7sqD7HsZU/PqVS/FCxGDig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=nLwkXzeK; arc=none smtp.client-ip=209.85.214.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f195.google.com with SMTP id d9443c01a7336-29f1bc40b35so109431685ad.2
        for <devicetree@vger.kernel.org>; Thu, 25 Dec 2025 01:46:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766655980; x=1767260780; darn=vger.kernel.org;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=u2bt2pVdj4yyCOt948IO4sXwlUxg7Pk0gmvzoQBMtrs=;
        b=nLwkXzeKh+KbRY0vMweCVz6b0fUCsrMveh94hUnmDdhHW7HIxskh8nstGNnWlzfPCf
         2EHvVeNp4cphqjEa/6MM1EKcO6DQalAMwAt9r5FNoAvMvj1o5/2s0wi7j6oueJvPCtm7
         kZFQSFqR48oPdgMjnqoi9sLXm5026vkxF8o63WQ3PdsOxs6FU4cv2tLJHV+KBnPSS9lJ
         yW3hZyNE231RzTOdBZfFM3NXYkBnCiD58OYIpjZ6GFN5LHUoe/kW4wIOURIL4aTnTZSx
         1Dl0upj3mlM9zgi9+MjR0Y0ldc7Gy6yHpvacy9KXzBIv8iz31A+XQl1nHtOw7bMNFyDL
         OgOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766655980; x=1767260780;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=u2bt2pVdj4yyCOt948IO4sXwlUxg7Pk0gmvzoQBMtrs=;
        b=Q/K2fa7cfDDXJHktA92d0EJ0GLb/+o1vQ6k+QVRn9NHTLwJnGO9GBHgexyWb27d5GW
         T+Yjf2EN1JPiULdqwnfKti3S0YAxO35gKTuRRCzy78v1GyfEpbNDHYoUrmIkm9vOShtH
         XPc9dNbRvUV+yQCD3aal2pPafw0ZsK3JRFDV1rx8BD4bMocjeffmKI1z+cMtbM7WLD6v
         NIaYw8LtFVUIsZRPc6sQODsDQ4fYlLGyx4kp8AdQb7lzkI3j1Gp+Dg2RsJv4aVI+DAnj
         J26nsXikZEjgd0PBFfi0k8yfjKMFouHRrTxB9UmL40ZtMDlgbEaMrVC639OcJEJtrTc2
         QvVA==
X-Forwarded-Encrypted: i=1; AJvYcCWpiXo0SoZIZHj8Cq3yztwtEiCSEcSFXOUmERagniQjsfwZmy+PMsvBbPz3bk5NaDV7p/CN797z2IKu@vger.kernel.org
X-Gm-Message-State: AOJu0Yzt0n0ZaP1MbZeZm2S9dZ+22WcxnVsEUAXL/6RtPwo1nST4EtZX
	kKGoS35hC3URwseVqWKuT8KDb7bFL8erdi5CqoQ4YFeD25FPUxnL2RzR
X-Gm-Gg: AY/fxX4nG7JrnNwlqN2TuwnUXIgZ1JhD/ThqIpNhOm21EsR9wygiyZVQQbCdul0wDyY
	+GfVzqiPA+DGVyYYRux7+PGRFL7m39jIFwVLado25236+atzpQmqvXNIGDlzphsX6xBC/5UvPDO
	E1ltIf4Dyj5jK8a8jT3wBguHI47Bu411VVvuSTKDosOCbPWKciH4YY0rJuDgo6wBdFI1AIyJOEj
	tbuIlO1g/Phk9aHso48/qD0hpNmwWbbh5Gpg/pQYb1x2A4v0Wz/X6e7BLXwDJoXsSgWqChltdJM
	oF6IWumb/cWDbc6FnDMuIe5n9qvELRP7J+Txo6q2IjLK8jUd3ShiZSq2Kyxz0m8CAxGYOXuhr8d
	NSGry2E1hQOadvuWaxD7QJVqY6p/JE7+5eNH5HAMBB0oldkjgvyTofkbB+kF3OEWR/qlaPkyG0E
	6+HnBrwD8pRaiG9WisCvdFv8r5kd3bElnV16KveNV1u5a/Jep5faHsqczuWTSkVbp9ytaaeY3J+
	4ow4XgCH+vgUhGUAw==
X-Google-Smtp-Source: AGHT+IHPzYWln2Hm/gqbr/aXlBreTtiVog10BDkOjZAA+mGNr3VcfmmHQHVSuV80Q9b25KZ52WX3vA==
X-Received: by 2002:a17:903:2345:b0:2a0:d43f:c934 with SMTP id d9443c01a7336-2a2f220a644mr156705895ad.8.1766655980068;
        Thu, 25 Dec 2025 01:46:20 -0800 (PST)
Received: from smtpclient.apple (125x103x213x40.ap125.ftth.ucom.ne.jp. [125.103.213.40])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a2f3c83961sm177814725ad.38.2025.12.25.01.46.13
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Dec 2025 01:46:19 -0800 (PST)
Content-Type: text/plain;
	charset=us-ascii
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3864.300.41.1.7\))
Subject: Re: [PATCH v4 5/9] drm/bridge: add a driver for T-Head TH1520 HDMI
 controller
From: "Han Gao (Revy)" <rabenda.cn@gmail.com>
In-Reply-To: <20251224161205.1132149-6-zhengxingda@iscas.ac.cn>
Date: Thu, 25 Dec 2025 17:46:02 +0800
Cc: "Han Gao (Revy)" <rabenda.cn@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Drew Fustini <fustini@kernel.org>,
 Guo Ren <guoren@kernel.org>,
 Fu Wei <wefu@redhat.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Heiko Stuebner <heiko@sntech.de>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Michal Wilczynski <m.wilczynski@samsung.com>,
 Yao Zi <ziyao@disroot.org>,
 dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 linux-riscv@lists.infradead.org,
 Icenowy Zheng <uwu@icenowy.me>
Content-Transfer-Encoding: quoted-printable
Message-Id: <F485BC7D-C051-45FB-A069-6C71020E2275@gmail.com>
References: <20251224161205.1132149-1-zhengxingda@iscas.ac.cn>
 <20251224161205.1132149-6-zhengxingda@iscas.ac.cn>
To: Icenowy Zheng <zhengxingda@iscas.ac.cn>
X-Mailer: Apple Mail (2.3864.300.41.1.7)



> On Dec 25, 2025, at 00:12, Icenowy Zheng <zhengxingda@iscas.ac.cn> =
wrote:
>=20
> From: Icenowy Zheng <uwu@icenowy.me>
>=20
> T-Head TH1520 SoC contains a Synopsys DesignWare HDMI controller =
(paired
> with DesignWare HDMI TX PHY Gen2) that takes the "DP" output from the
> display controller.
>=20
> Add a driver for this controller utilizing the common DesignWare HDMI
> code in the kernel.
>=20
> Signed-off-by: Icenowy Zheng <uwu@icenowy.me>
> Signed-off-by: Icenowy Zheng <zhengxingda@iscas.ac.cn>
> ---
> No changes in v3, v4.
>=20
> Changes in v2:
> - Created a new function to set PHY parameters and refactored the
>  control flow of the configure_phy callback.
>=20
> MAINTAINERS                             |   1 +
> drivers/gpu/drm/bridge/Kconfig          |  10 ++
> drivers/gpu/drm/bridge/Makefile         |   1 +
> drivers/gpu/drm/bridge/th1520-dw-hdmi.c | 173 ++++++++++++++++++++++++
> 4 files changed, 185 insertions(+)
> create mode 100644 drivers/gpu/drm/bridge/th1520-dw-hdmi.c
>=20
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 5b11839cba9de..fc04fc007a054 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -22556,6 +22556,7 @@ F: =
Documentation/devicetree/bindings/reset/thead,th1520-reset.yaml
> F: arch/riscv/boot/dts/thead/
> F: drivers/clk/thead/clk-th1520-ap.c
> F: drivers/firmware/thead,th1520-aon.c
> +F: drivers/gpu/drm/bridge/th1520-dw-hdmi.c
> F: drivers/mailbox/mailbox-th1520.c
> F: drivers/net/ethernet/stmicro/stmmac/dwmac-thead.c
> F: drivers/pinctrl/pinctrl-th1520.c
> diff --git a/drivers/gpu/drm/bridge/Kconfig =
b/drivers/gpu/drm/bridge/Kconfig
> index a250afd8d6622..8e19f5fb9ad7c 100644
> --- a/drivers/gpu/drm/bridge/Kconfig
> +++ b/drivers/gpu/drm/bridge/Kconfig
> @@ -335,6 +335,16 @@ config DRM_THINE_THC63LVD1024
> help
>  Thine THC63LVD1024 LVDS/parallel converter driver.
>=20
> +config DRM_THEAD_TH1520_DW_HDMI
> + tristate "T-Head TH1520 DesignWare HDMI bridge"
> + depends on OF
> + depends on COMMON_CLK
> + depends on ARCH_THEAD || COMPILE_TEST
> + select DRM_DW_HDMI
> + help
> +  Choose this to enable support for the internal HDMI bridge found
> +  on the T-Head TH1520 SoC.
> +
> config DRM_TOSHIBA_TC358762
> tristate "TC358762 DSI/DPI bridge"
> depends on OF
> diff --git a/drivers/gpu/drm/bridge/Makefile =
b/drivers/gpu/drm/bridge/Makefile
> index c7dc03182e592..085b5db45d6fd 100644
> --- a/drivers/gpu/drm/bridge/Makefile
> +++ b/drivers/gpu/drm/bridge/Makefile
> @@ -28,6 +28,7 @@ obj-$(CONFIG_DRM_SII902X) +=3D sii902x.o
> obj-$(CONFIG_DRM_SII9234) +=3D sii9234.o
> obj-$(CONFIG_DRM_SIMPLE_BRIDGE) +=3D simple-bridge.o
> obj-$(CONFIG_DRM_SOLOMON_SSD2825) +=3D ssd2825.o
> +obj-$(CONFIG_DRM_THEAD_TH1520_DW_HDMI) +=3D th1520-dw-hdmi.o
> obj-$(CONFIG_DRM_THINE_THC63LVD1024) +=3D thc63lvd1024.o
> obj-$(CONFIG_DRM_TOSHIBA_TC358762) +=3D tc358762.o
> obj-$(CONFIG_DRM_TOSHIBA_TC358764) +=3D tc358764.o
> diff --git a/drivers/gpu/drm/bridge/th1520-dw-hdmi.c =
b/drivers/gpu/drm/bridge/th1520-dw-hdmi.c
> new file mode 100644
> index 0000000000000..389eead5f1c45
> --- /dev/null
> +++ b/drivers/gpu/drm/bridge/th1520-dw-hdmi.c
> @@ -0,0 +1,173 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +/*
> + * Copyright (C) 2025 Icenowy Zheng <uwu@icenowy.me>
> + *
> + * Based on rcar_dw_hdmi.c, which is:
> + *   Copyright (C) 2016 Renesas Electronics Corporation
> + * Based on imx8mp-hdmi-tx.c, which is:
> + *   Copyright (C) 2022 Pengutronix, Lucas Stach =
<kernel@pengutronix.de>
> + */
> +
> +#include <linux/clk.h>
> +#include <linux/mod_devicetable.h>
> +#include <linux/module.h>
> +#include <linux/platform_device.h>
> +#include <linux/reset.h>
> +
> +#include <drm/bridge/dw_hdmi.h>
> +#include <drm/drm_modes.h>
> +
> +#define TH1520_HDMI_PHY_OPMODE_PLLCFG 0x06 /* Mode of operation and =
PLL dividers */
> +#define TH1520_HDMI_PHY_CKSYMTXCTRL 0x09 /* Clock Symbol and =
Transmitter Control Register */
> +#define TH1520_HDMI_PHY_VLEVCTRL 0x0e /* Voltage Level Control =
Register */
> +#define TH1520_HDMI_PHY_PLLCURRGMPCTRL 0x10 /* PLL current and Gmp =
(conductance) */
> +#define TH1520_HDMI_PHY_PLLDIVCTRL 0x11 /* PLL dividers */
> +#define TH1520_HDMI_PHY_TXTERM 0x19 /* Transmission Termination =
Register */
> +
> +struct th1520_hdmi_phy_params {
> + unsigned long mpixelclock;
> + u16 opmode_pllcfg;
> + u16 pllcurrgmpctrl;
> + u16 plldivctrl;
> + u16 cksymtxctrl;
> + u16 vlevctrl;
> + u16 txterm;
> +};
> +
> +static const struct th1520_hdmi_phy_params th1520_hdmi_phy_params[] =3D=
 {
> + { 35500000,  0x0003, 0x0283, 0x0628, 0x8088, 0x01a0, 0x0007 },
> + { 44900000,  0x0003, 0x0285, 0x0228, 0x8088, 0x01a0, 0x0007 },
> + { 71000000,  0x0002, 0x1183, 0x0614, 0x8088, 0x01a0, 0x0007 },
> + { 90000000,  0x0002, 0x1142, 0x0214, 0x8088, 0x01a0, 0x0007 },
> + { 121750000, 0x0001, 0x20c0, 0x060a, 0x8088, 0x01a0, 0x0007 },
> + { 165000000, 0x0001, 0x2080, 0x020a, 0x8088, 0x01a0, 0x0007 },
> + { 198000000, 0x0000, 0x3040, 0x0605, 0x83c8, 0x0120, 0x0004 },
> + { 297000000, 0x0000, 0x3041, 0x0205, 0x81dc, 0x0200, 0x0005 },
> + { 371250000, 0x0640, 0x3041, 0x0205, 0x80f6, 0x0140, 0x0000 },
> + { 495000000, 0x0640, 0x3080, 0x0005, 0x80f6, 0x0140, 0x0000 },
> + { 594000000, 0x0640, 0x3080, 0x0005, 0x80fa, 0x01e0, 0x0004 },
> +};
> +
> +struct th1520_hdmi {
> + struct dw_hdmi_plat_data plat_data;
> + struct dw_hdmi *dw_hdmi;
> + struct clk *pixclk;
> + struct reset_control *mainrst, *prst;
> +};
> +
> +static enum drm_mode_status
> +th1520_hdmi_mode_valid(struct dw_hdmi *hdmi, void *data,
> +       const struct drm_display_info *info,
> +       const struct drm_display_mode *mode)
> +{
> + /*
> + * The maximum supported clock frequency is 594 MHz, as shown in the =
PHY
> + * parameters table.
> + */
> + if (mode->clock > 594000)
> + return MODE_CLOCK_HIGH;
> +
> + return MODE_OK;
> +}
> +
> +static void th1520_hdmi_phy_set_params(struct dw_hdmi *hdmi,
> + const struct th1520_hdmi_phy_params *params)
> +{
> + dw_hdmi_phy_i2c_write(hdmi, params->opmode_pllcfg,
> +      TH1520_HDMI_PHY_OPMODE_PLLCFG);
> + dw_hdmi_phy_i2c_write(hdmi, params->pllcurrgmpctrl,
> +      TH1520_HDMI_PHY_PLLCURRGMPCTRL);
> + dw_hdmi_phy_i2c_write(hdmi, params->plldivctrl,
> +      TH1520_HDMI_PHY_PLLDIVCTRL);
> + dw_hdmi_phy_i2c_write(hdmi, params->vlevctrl,
> +      TH1520_HDMI_PHY_VLEVCTRL);
> + dw_hdmi_phy_i2c_write(hdmi, params->cksymtxctrl,
> +      TH1520_HDMI_PHY_CKSYMTXCTRL);
> + dw_hdmi_phy_i2c_write(hdmi, params->txterm,
> +      TH1520_HDMI_PHY_TXTERM);
> +}
> +
> +static int th1520_hdmi_phy_configure(struct dw_hdmi *hdmi, void =
*data,
> +     unsigned long mpixelclock)
> +{
> + unsigned int i;
> +
> + for (i =3D 0; i < ARRAY_SIZE(th1520_hdmi_phy_params); i++) {
> + if (mpixelclock <=3D th1520_hdmi_phy_params[i].mpixelclock) {
> + th1520_hdmi_phy_set_params(hdmi,
> +   &th1520_hdmi_phy_params[i]);
> + return 0;
> + }
> + }
> +
> + return -EINVAL;
> +}
> +
> +static int th1520_dw_hdmi_probe(struct platform_device *pdev)
> +{
> + struct th1520_hdmi *hdmi;
> + struct dw_hdmi_plat_data *plat_data;
> + struct device *dev =3D &pdev->dev;
> +
> + hdmi =3D devm_kzalloc(dev, sizeof(*hdmi), GFP_KERNEL);
> + if (!hdmi)
> + return -ENOMEM;
> +
> + plat_data =3D &hdmi->plat_data;
> +
> + hdmi->pixclk =3D devm_clk_get_enabled(dev, "pix");
> + if (IS_ERR(hdmi->pixclk))
> + return dev_err_probe(dev, PTR_ERR(hdmi->pixclk),
> +     "Unable to get pixel clock\n");
> +
> + hdmi->mainrst =3D devm_reset_control_get_exclusive_deasserted(dev, =
"main");
> + if (IS_ERR(hdmi->mainrst))
> + return dev_err_probe(dev, PTR_ERR(hdmi->mainrst),
> +     "Unable to get main reset\n");
> +
> + hdmi->prst =3D devm_reset_control_get_exclusive_deasserted(dev, =
"apb");
> + if (IS_ERR(hdmi->prst))
> + return dev_err_probe(dev, PTR_ERR(hdmi->prst),
> +     "Unable to get apb reset\n");
> +
> + plat_data->output_port =3D 1;
> + plat_data->mode_valid =3D th1520_hdmi_mode_valid;
> + plat_data->configure_phy =3D th1520_hdmi_phy_configure;
> + plat_data->priv_data =3D hdmi;
> +
> + hdmi->dw_hdmi =3D dw_hdmi_probe(pdev, plat_data);
> + if (IS_ERR(hdmi))
> + return PTR_ERR(hdmi);
> +
> + platform_set_drvdata(pdev, hdmi);
> +
> + return 0;
> +}
> +
> +static void th1520_dw_hdmi_remove(struct platform_device *pdev)
> +{
> + struct dw_hdmi *hdmi =3D platform_get_drvdata(pdev);
> +
> + dw_hdmi_remove(hdmi);
> +}
> +
> +static const struct of_device_id th1520_dw_hdmi_of_table[] =3D {
> + { .compatible =3D "thead,th1520-dw-hdmi" },
> + { /* Sentinel */ },
> +};
> +MODULE_DEVICE_TABLE(of, th1520_dw_hdmi_of_table);
> +
> +static struct platform_driver th1520_dw_hdmi_platform_driver =3D {
> + .probe =3D th1520_dw_hdmi_probe,
> + .remove =3D th1520_dw_hdmi_remove,
> + .driver =3D {
> + .name =3D "th1520-dw-hdmi",
> + .of_match_table =3D th1520_dw_hdmi_of_table,
> + },
> +};
> +
> +module_platform_driver(th1520_dw_hdmi_platform_driver);
> +
> +MODULE_AUTHOR("Icenowy Zheng <uwu@icenowy.me>");
> +MODULE_DESCRIPTION("T-Head TH1520 HDMI Encoder Driver");
> +MODULE_LICENSE("GPL");
> --=20
> 2.52.0
>=20
Tested-by: Han Gao <gaohan@iscas.ac.cn>=

