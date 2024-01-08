Return-Path: <devicetree+bounces-30259-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C793E82721B
	for <lists+devicetree@lfdr.de>; Mon,  8 Jan 2024 16:06:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2AFD7B2282C
	for <lists+devicetree@lfdr.de>; Mon,  8 Jan 2024 15:06:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7757347795;
	Mon,  8 Jan 2024 15:06:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b="eze8cva4"
X-Original-To: devicetree@vger.kernel.org
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D5D8482CF;
	Mon,  8 Jan 2024 15:05:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1704726358; x=1736262358;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=uav9WWSPArVuyYzPiEXD7Xiab2LkjWbTB3bigo32GK8=;
  b=eze8cva4QRdiTXdN/RLdFLuqGgYMkUpc5gwv2vVpXnUOhpGButX/s1EZ
   s+v2H9XprRhCFDIH1HMg00j8kq0G/BDvaBEuvWvcDWsKtJvyZHtr+F/Oo
   r5T/hpuykN2ffMHSpGf5iNVLmykCl3NAMUjM0jFjDxjdiimAeRP6NJlNn
   Z6kcMJ8peDAetnFJh3lpIaLieBzpeHc+KxeqnbD/50hY7alNaeqhTYTgY
   1MzyN5R42EkeowV5zl4Q2AVdpeyFHFPJiHUo5l5rRhIFnebkLeqILroyw
   tOXkQyc/rM0Q2dmqcaofZPm3nU9ZUghdP1creCZ78HQNX3PtLnwSp60/j
   w==;
X-IronPort-AV: E=Sophos;i="6.04,180,1695679200"; 
   d="scan'208";a="34789728"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 08 Jan 2024 16:05:56 +0100
Received: from steina-w.localnet (steina-w.tq-net.de [10.123.53.25])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 9C2F8280075;
	Mon,  8 Jan 2024 16:05:55 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: dri-devel@lists.freedesktop.org
Cc: Jernej Skrabec <jernej.skrabec@gmail.com>, Andrzej Hajda <andrzej.hajda@intel.com>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Fabio Estevam <festevam@gmail.com>, Richard Leitner <richard.leitner@skidata.com>, Marek Vasut <marex@denx.de>, Robert Foss <rfoss@kernel.org>, Frieder Schrempf <frieder.schrempf@kontron.de>, NXP Linux Team <linux-imx@nxp.com>, Luca Ceresoli <luca.ceresoli@bootlin.com>, devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Jonas Karlman <jonas@kwiboo.se>, Liu Ying <victor.liu@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>, Maxime Ripard <mripard@kernel.org>, Rob Herring <robh+dt@kernel.org>, Adam Ford <aford173@gmail.com>, linux-arm-kernel@lists.infradead.org, Neil Armstrong <neil.armstrong@linaro.org>, linux-kernel@vger.kernel.org, Pengutronix Kernel Team <kernel@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>, Adam Ford <aford173@gmai
 l.com>
Subject: Re: [PATCH V7 2/2] drm/bridge: imx: add driver for HDMI TX Parallel Video Interface
Date: Mon, 08 Jan 2024 16:05:55 +0100
Message-ID: <3626378.aeNJFYEL58@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20240106215146.147922-2-aford173@gmail.com>
References: <20240106215146.147922-1-aford173@gmail.com> <20240106215146.147922-2-aford173@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

Hi Adam,

thanks for pushing this forward.

Am Samstag, 6. Januar 2024, 22:51:45 CET schrieb Adam Ford:
> From: Lucas Stach <l.stach@pengutronix.de>
>=20
> This IP block is found in the HDMI subsystem of the i.MX8MP SoC. It has a
> full timing generator and can switch between different video sources. On
> the i.MX8MP however the only supported source is the LCDIF. The block
> just needs to be powered up and told about the polarity of the video
> sync signals to act in bypass mode.
>=20
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> Reviewed-by: Luca Ceresoli <luca.ceresoli@bootlin.com> (v2)
> Tested-by: Marek Vasut <marex@denx.de> (v1)
> Tested-by: Luca Ceresoli <luca.ceresoli@bootlin.com> (v2)
> Tested-by: Richard Leitner <richard.leitner@skidata.com> (v2)
> Tested-by: Frieder Schrempf <frieder.schrempf@kontron.de> (v2)
> Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com> (v3)
> Reviewed-by: Luca Ceresoli <luca.ceresoli@bootlin.com>
> Tested-by: Luca Ceresoli <luca.ceresoli@bootlin.com>
> Tested-by: Fabio Estevam <festevam@gmail.com>
> Signed-off-by: Adam Ford <aford173@gmail.com>

Tested on TQMa8MPQL/MBa8MPxL + Full-HD HDMI monitor.

Tested-by: Alexander Stein <alexander.stein@ew.tq-group.com>

>=20
> ---
> V7:  Re-do some includes to address build issues after rebasing from
>      Linux-next
>=20
> V6:  No change.
>=20
> V5:  I (Adam) tried to help move this along, so I took Lucas' patch and
>      attempted to apply fixes based on feedback.  I don't have
>      all the history, so apologies for that.
>      No changes from V4 to V5
>=20
> diff --git a/drivers/gpu/drm/bridge/imx/Kconfig
> b/drivers/gpu/drm/bridge/imx/Kconfig index 5a4f3d58501e..a4d13331e320
> 100644
> --- a/drivers/gpu/drm/bridge/imx/Kconfig
> +++ b/drivers/gpu/drm/bridge/imx/Kconfig
> @@ -3,6 +3,13 @@ if ARCH_MXC || COMPILE_TEST
>  config DRM_IMX_LDB_HELPER
>  	tristate
>=20
> +config DRM_IMX8MP_HDMI_PVI
> +	tristate "Freescale i.MX8MP HDMI PVI bridge support"
> +	depends on OF
> +	help
> +	  Choose this to enable support for the internal HDMI TX Parallel
> +	  Video Interface found on the Freescale i.MX8MP SoC.
> +
>  config DRM_IMX8QM_LDB
>  	tristate "Freescale i.MX8QM LVDS display bridge"
>  	depends on OF
> diff --git a/drivers/gpu/drm/bridge/imx/Makefile
> b/drivers/gpu/drm/bridge/imx/Makefile index 2b0c2e44aa1b..e2c2106509fa
> 100644
> --- a/drivers/gpu/drm/bridge/imx/Makefile
> +++ b/drivers/gpu/drm/bridge/imx/Makefile
> @@ -1,4 +1,5 @@
>  obj-$(CONFIG_DRM_IMX_LDB_HELPER) +=3D imx-ldb-helper.o
> +obj-$(CONFIG_DRM_IMX8MP_HDMI_PVI) +=3D imx8mp-hdmi-pvi.o
>  obj-$(CONFIG_DRM_IMX8QM_LDB) +=3D imx8qm-ldb.o
>  obj-$(CONFIG_DRM_IMX8QXP_LDB) +=3D imx8qxp-ldb.o
>  obj-$(CONFIG_DRM_IMX8QXP_PIXEL_COMBINER) +=3D imx8qxp-pixel-combiner.o
> diff --git a/drivers/gpu/drm/bridge/imx/imx8mp-hdmi-pvi.c
> b/drivers/gpu/drm/bridge/imx/imx8mp-hdmi-pvi.c new file mode 100644
> index 000000000000..a76b7669fe8a
> --- /dev/null
> +++ b/drivers/gpu/drm/bridge/imx/imx8mp-hdmi-pvi.c
> @@ -0,0 +1,207 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +
> +/*
> + * Copyright (C) 2022 Pengutronix, Lucas Stach <kernel@pengutronix.de>
> + */
> +
> +#include <drm/drm_atomic_helper.h>
> +#include <drm/drm_bridge.h>
> +#include <drm/drm_crtc.h>
> +#include <linux/bitfield.h>
> +#include <linux/io.h>
> +#include <linux/module.h>
> +#include <linux/of.h>
> +#include <linux/of_graph.h>
> +#include <linux/platform_device.h>
> +#include <linux/pm_runtime.h>
> +
> +#define HTX_PVI_CTRL			0x0
> +#define  PVI_CTRL_OP_VSYNC_POL		BIT(18)
> +#define  PVI_CTRL_OP_HSYNC_POL		BIT(17)
> +#define  PVI_CTRL_OP_DE_POL		BIT(16)
> +#define  PVI_CTRL_INP_VSYNC_POL		BIT(14)
> +#define  PVI_CTRL_INP_HSYNC_POL		BIT(13)
> +#define  PVI_CTRL_INP_DE_POL		BIT(12)
> +#define  PVI_CTRL_MODE_MASK		GENMASK(2, 1)
> +#define  PVI_CTRL_MODE_LCDIF		2
> +#define  PVI_CTRL_EN			BIT(0)
> +
> +struct imx8mp_hdmi_pvi {
> +	struct drm_bridge	bridge;
> +	struct device		*dev;
> +	struct drm_bridge	*next_bridge;
> +	void __iomem		*regs;
> +};
> +
> +static inline struct imx8mp_hdmi_pvi *
> +to_imx8mp_hdmi_pvi(struct drm_bridge *bridge)
> +{
> +	return container_of(bridge, struct imx8mp_hdmi_pvi, bridge);
> +}
> +
> +static int imx8mp_hdmi_pvi_bridge_attach(struct drm_bridge *bridge,
> +					 enum=20
drm_bridge_attach_flags flags)
> +{
> +	struct imx8mp_hdmi_pvi *pvi =3D to_imx8mp_hdmi_pvi(bridge);
> +
> +	return drm_bridge_attach(bridge->encoder, pvi->next_bridge,
> +				 bridge, flags);
> +}
> +
> +static void imx8mp_hdmi_pvi_bridge_enable(struct drm_bridge *bridge,
> +					  struct drm_bridge_state=20
*bridge_state)
> +{
> +	struct drm_atomic_state *state =3D bridge_state->base.state;
> +	struct imx8mp_hdmi_pvi *pvi =3D to_imx8mp_hdmi_pvi(bridge);
> +	struct drm_connector_state *conn_state;
> +	const struct drm_display_mode *mode;
> +	struct drm_crtc_state *crtc_state;
> +	struct drm_connector *connector;
> +	u32 bus_flags, val;
> +
> +	connector =3D drm_atomic_get_new_connector_for_encoder(state,
> bridge->encoder); +	conn_state =3D=20
drm_atomic_get_new_connector_state(state,
> connector); +	crtc_state =3D drm_atomic_get_new_crtc_state(state,
> conn_state->crtc); +
> +	if (WARN_ON(pm_runtime_resume_and_get(pvi->dev)))
> +		return;
> +
> +	mode =3D &crtc_state->adjusted_mode;
> +
> +	val =3D FIELD_PREP(PVI_CTRL_MODE_MASK, PVI_CTRL_MODE_LCDIF) |=20
PVI_CTRL_EN;
> +
> +	if (mode->flags & DRM_MODE_FLAG_PVSYNC)
> +		val |=3D PVI_CTRL_OP_VSYNC_POL | PVI_CTRL_INP_VSYNC_POL;
> +
> +	if (mode->flags & DRM_MODE_FLAG_PHSYNC)
> +		val |=3D PVI_CTRL_OP_HSYNC_POL | PVI_CTRL_INP_HSYNC_POL;
> +
> +	if (pvi->next_bridge->timings)
> +		bus_flags =3D pvi->next_bridge->timings->input_bus_flags;
> +	else if (bridge_state)
> +		bus_flags =3D bridge_state->input_bus_cfg.flags;
> +
> +	if (bus_flags & DRM_BUS_FLAG_DE_HIGH)
> +		val |=3D PVI_CTRL_OP_DE_POL | PVI_CTRL_INP_DE_POL;
> +
> +	writel(val, pvi->regs + HTX_PVI_CTRL);
> +}
> +
> +static void imx8mp_hdmi_pvi_bridge_disable(struct drm_bridge *bridge,
> +					   struct drm_bridge_state=20
*bridge_state)
> +{
> +	struct imx8mp_hdmi_pvi *pvi =3D to_imx8mp_hdmi_pvi(bridge);
> +
> +	writel(0x0, pvi->regs + HTX_PVI_CTRL);
> +
> +	pm_runtime_put(pvi->dev);
> +}
> +
> +static u32 *
> +imx8mp_hdmi_pvi_bridge_get_input_bus_fmts(struct drm_bridge *bridge,
> +					  struct drm_bridge_state=20
*bridge_state,
> +					  struct drm_crtc_state=20
*crtc_state,
> +					  struct drm_connector_state=20
*conn_state,
> +					  u32 output_fmt,
> +					  unsigned int=20
*num_input_fmts)
> +{
> +	struct imx8mp_hdmi_pvi *pvi =3D to_imx8mp_hdmi_pvi(bridge);
> +	struct drm_bridge *next_bridge =3D pvi->next_bridge;
> +	struct drm_bridge_state *next_state;
> +
> +	if (!next_bridge->funcs->atomic_get_input_bus_fmts)
> +		return 0;
> +
> +	next_state =3D drm_atomic_get_new_bridge_state(crtc_state->state,
> +						     next_bridge);
> +
> +	return next_bridge->funcs->atomic_get_input_bus_fmts(next_bridge,
> +							    =20
next_state,
> +							    =20
crtc_state,
> +							    =20
conn_state,
> +							    =20
output_fmt,
> +							    =20
num_input_fmts);
> +}
> +
> +static const struct drm_bridge_funcs imx_hdmi_pvi_bridge_funcs =3D {
> +	.attach		=3D imx8mp_hdmi_pvi_bridge_attach,
> +	.atomic_enable	=3D imx8mp_hdmi_pvi_bridge_enable,
> +	.atomic_disable	=3D imx8mp_hdmi_pvi_bridge_disable,
> +	.atomic_get_input_bus_fmts =3D=20
imx8mp_hdmi_pvi_bridge_get_input_bus_fmts,
> +	.atomic_duplicate_state =3D drm_atomic_helper_bridge_duplicate_state,
> +	.atomic_destroy_state =3D drm_atomic_helper_bridge_destroy_state,
> +	.atomic_reset =3D drm_atomic_helper_bridge_reset,
> +};
> +
> +static int imx8mp_hdmi_pvi_probe(struct platform_device *pdev)
> +{
> +	struct device_node *remote;
> +	struct imx8mp_hdmi_pvi *pvi;
> +
> +	pvi =3D devm_kzalloc(&pdev->dev, sizeof(*pvi), GFP_KERNEL);
> +	if (!pvi)
> +		return -ENOMEM;
> +
> +	platform_set_drvdata(pdev, pvi);
> +	pvi->dev =3D &pdev->dev;
> +
> +	pvi->regs =3D devm_platform_ioremap_resource(pdev, 0);
> +	if (IS_ERR(pvi->regs))
> +		return PTR_ERR(pvi->regs);
> +
> +	/* Get the next bridge in the pipeline. */
> +	remote =3D of_graph_get_remote_node(pdev->dev.of_node, 1, -1);
> +	if (!remote)
> +		return -EINVAL;
> +
> +	pvi->next_bridge =3D of_drm_find_bridge(remote);
> +	of_node_put(remote);
> +
> +	if (!pvi->next_bridge)
> +		return dev_err_probe(&pdev->dev, -EPROBE_DEFER,
> +				     "could not find next bridge\n");
> +
> +	pm_runtime_enable(&pdev->dev);
> +
> +	/* Register the bridge. */
> +	pvi->bridge.funcs =3D &imx_hdmi_pvi_bridge_funcs;
> +	pvi->bridge.of_node =3D pdev->dev.of_node;
> +	pvi->bridge.timings =3D pvi->next_bridge->timings;
> +
> +	drm_bridge_add(&pvi->bridge);
> +
> +	return 0;
> +}
> +
> +static int imx8mp_hdmi_pvi_remove(struct platform_device *pdev)
> +{
> +	struct imx8mp_hdmi_pvi *pvi =3D platform_get_drvdata(pdev);
> +
> +	drm_bridge_remove(&pvi->bridge);
> +
> +	pm_runtime_disable(&pdev->dev);
> +
> +	return 0;
> +}
> +
> +static const struct of_device_id imx8mp_hdmi_pvi_match[] =3D {
> +	{
> +		.compatible =3D "fsl,imx8mp-hdmi-pvi",
> +	}, {
> +		/* sentinel */
> +	}
> +};
> +MODULE_DEVICE_TABLE(of, imx8mp_hdmi_pvi_match);
> +
> +static struct platform_driver imx8mp_hdmi_pvi_driver =3D {
> +	.probe	=3D imx8mp_hdmi_pvi_probe,
> +	.remove	=3D imx8mp_hdmi_pvi_remove,
> +	.driver		=3D {
> +		.name =3D "imx-hdmi-pvi",
> +		.of_match_table	=3D imx8mp_hdmi_pvi_match,
> +	},
> +};
> +module_platform_driver(imx8mp_hdmi_pvi_driver);
> +
> +MODULE_DESCRIPTION("i.MX8MP HDMI TX Parallel Video Interface bridge
> driver"); +MODULE_LICENSE("GPL");


=2D-=20
TQ-Systems GmbH | M=FChlstra=DFe 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht M=FCnchen, HRB 105018
Gesch=E4ftsf=FChrer: Detlef Schneider, R=FCdiger Stahl, Stefan Schneider
http://www.tq-group.com/



