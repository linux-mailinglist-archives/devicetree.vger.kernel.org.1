Return-Path: <devicetree+bounces-28546-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 27D2E81EA66
	for <lists+devicetree@lfdr.de>; Tue, 26 Dec 2023 23:52:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D26A528216C
	for <lists+devicetree@lfdr.de>; Tue, 26 Dec 2023 22:52:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C99F5257;
	Tue, 26 Dec 2023 22:52:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="liz/p8Ff"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C89A1078A;
	Tue, 26 Dec 2023 22:52:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=quicinc.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 3BQMpCJr012323;
	Tue, 26 Dec 2023 22:51:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	message-id:date:mime-version:subject:to:cc:references:from
	:in-reply-to:content-type:content-transfer-encoding; s=
	qcppdkim1; bh=SYGUVY+UmaauR562PbcqjdKMb0wR6VSm6vagIVeqRGo=; b=li
	z/p8FfzzRfplh/ewxt8MvcLOel1zueV87QuyR/WrgaucgKbFeS4hjP2qzT8YU+V0
	LYdPFI9yXqDNWFvLJyQfku4MKxsjdUGDbCUGhLBG64Hkik1kx6cgd2EM2vYsJ96o
	nGSwEWbu3QQdvzbzzkZ4ovzcjomIwOCCW08HbV0eiPjLHb782NcesnLbkthIsfTJ
	1wnThGjH/Dcx0OoO+sRh74NLXGjBVleXKWTsDWvaMygPIHzq7J/dlm7RLHyuZfcA
	1Uh4ZX1KOdPj1rb65yhlBE0IoZBVfAB7AVoL3x0OSpp5St/1uVhGyX754bzy3jCn
	rn9WKJlmG+gXvsWSxYlw==
Received: from nasanppmta05.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3v80kfrt6e-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 26 Dec 2023 22:51:32 +0000 (GMT)
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA05.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 3BQMpVep026218
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 26 Dec 2023 22:51:31 GMT
Received: from [10.110.123.205] (10.80.80.8) by nasanex01b.na.qualcomm.com
 (10.46.141.250) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.40; Tue, 26 Dec
 2023 14:51:29 -0800
Message-ID: <1eab96e0-fad1-437b-b8bc-77013e32f724@quicinc.com>
Date: Tue, 26 Dec 2023 14:51:28 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/6] drm/panel: Add driver for BOE TH101MB31IG002-28A
 panel
Content-Language: en-US
To: Manuel Traut <manut@mecka.net>,
        Neil Armstrong
	<neil.armstrong@linaro.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        Maarten
 Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard
	<mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie
	<airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring
	<robh+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
        Sandy Huang <hjc@rock-chips.com>, Mark Yao
	<markyao0591@gmail.com>,
        Diederik de Haas <didi.debian@cknow.org>,
        Segfault
	<awarnecke002@hotmail.com>,
        Arnaud Ferraris <aferraris@debian.org>
CC: <dri-devel@lists.freedesktop.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
        <linux-rockchip@lists.infradead.org>
References: <20231222-pinetab2-v1-0-e148a7f61bd1@mecka.net>
 <20231222-pinetab2-v1-2-e148a7f61bd1@mecka.net>
From: Jessica Zhang <quic_jesszhan@quicinc.com>
In-Reply-To: <20231222-pinetab2-v1-2-e148a7f61bd1@mecka.net>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: q5RlT8qdRJyWlDqxxTvLd5FKV_pP9hhc
X-Proofpoint-GUID: q5RlT8qdRJyWlDqxxTvLd5FKV_pP9hhc
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.997,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-12-09_01,2023-12-07_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 impostorscore=0
 mlxlogscore=999 malwarescore=0 clxscore=1011 priorityscore=1501 mlxscore=0
 spamscore=0 lowpriorityscore=0 adultscore=0 bulkscore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2311290000
 definitions=main-2312260174



On 12/22/2023 3:05 AM, Manuel Traut wrote:
> From: Segfault <awarnecke002@hotmail.com>
> 
> The BOE TH101MB31IG002-28A panel is a WXGA panel.
> It is used in Pine64 Pinetab2 and PinetabV.
> 
> Signed-off-by: Segfault <awarnecke002@hotmail.com>
> Signed-off-by: Manuel Traut <manut@mecka.net>
> ---
>   drivers/gpu/drm/panel/Kconfig                      |  11 +
>   drivers/gpu/drm/panel/Makefile                     |   1 +
>   .../gpu/drm/panel/panel-boe-th101mb31ig002-28a.c   | 307 +++++++++++++++++++++
>   3 files changed, 319 insertions(+)
> 
> diff --git a/drivers/gpu/drm/panel/Kconfig b/drivers/gpu/drm/panel/Kconfig
> index 99e14dc212ec..927ddd10e688 100644
> --- a/drivers/gpu/drm/panel/Kconfig
> +++ b/drivers/gpu/drm/panel/Kconfig
> @@ -67,6 +67,17 @@ config DRM_PANEL_BOE_HIMAX8279D
>   	  24 bit RGB per pixel. It provides a MIPI DSI interface to
>   	  the host and has a built-in LED backlight.
>   
> +config DRM_PANEL_BOE_TH101MB31UIG002_28A
> +	tristate "Boe TH101MB31UIG002-28A panel"
> +	depends on OF
> +	depends on DRM_MIPI_DSI
> +	depends on BACKLIGHT_CLASS_DEVICE
> +	help
> +	  Say Y here if you want to enable support for Boe
> +	  TH101MB31UIG002-28A TFT-LCD modules. The panel has a 800x1280
> +	  resolution and uses 24 bit RGB per pixel. It provides a MIPI DSI
> +	  interface to the host and has a built-in LED backlight.
> +
>   config DRM_PANEL_BOE_TV101WUM_NL6
>   	tristate "BOE TV101WUM and AUO KD101N80 45NA 1200x1920 panel"
>   	depends on OF
> diff --git a/drivers/gpu/drm/panel/Makefile b/drivers/gpu/drm/panel/Makefile
> index d10c3de51c6d..dd6e1ac9d0a2 100644
> --- a/drivers/gpu/drm/panel/Makefile
> +++ b/drivers/gpu/drm/panel/Makefile
> @@ -5,6 +5,7 @@ obj-$(CONFIG_DRM_PANEL_ASUS_Z00T_TM5P5_NT35596) += panel-asus-z00t-tm5p5-n35596.
>   obj-$(CONFIG_DRM_PANEL_AUO_A030JTN01) += panel-auo-a030jtn01.o
>   obj-$(CONFIG_DRM_PANEL_BOE_BF060Y8M_AJ0) += panel-boe-bf060y8m-aj0.o
>   obj-$(CONFIG_DRM_PANEL_BOE_HIMAX8279D) += panel-boe-himax8279d.o
> +obj-$(CONFIG_DRM_PANEL_BOE_TH101MB31UIG002_28A) += panel-boe-th101mb31ig002-28a.o
>   obj-$(CONFIG_DRM_PANEL_BOE_TV101WUM_NL6) += panel-boe-tv101wum-nl6.o
>   obj-$(CONFIG_DRM_PANEL_DSI_CM) += panel-dsi-cm.o
>   obj-$(CONFIG_DRM_PANEL_LVDS) += panel-lvds.o
> diff --git a/drivers/gpu/drm/panel/panel-boe-th101mb31ig002-28a.c b/drivers/gpu/drm/panel/panel-boe-th101mb31ig002-28a.c
> new file mode 100644
> index 000000000000..ac1dc99a0300
> --- /dev/null
> +++ b/drivers/gpu/drm/panel/panel-boe-th101mb31ig002-28a.c
> @@ -0,0 +1,307 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Copyright (c) 2023 Alexander Warnecke <awarnecke002@hotmail.com>
> + * Copyright (c) 2023 Manuel Traut <manut@mecka.net>
> + */
> +
> +#include <linux/delay.h>
> +#include <linux/gpio/consumer.h>
> +#include <linux/module.h>
> +#include <linux/of.h>
> +#include <linux/of_device.h>
> +#include <linux/regulator/consumer.h>
> +
> +#include <drm/drm_connector.h>
> +#include <drm/drm_mipi_dsi.h>
> +#include <drm/drm_modes.h>
> +#include <drm/drm_panel.h>
> +
> +struct boe_th101mb31ig002 {
> +	struct drm_panel panel;
> +	bool enabled;
> +	bool prepared;

Hi Manuel,

If I remember correctly, commit 
d2aacaf07395bd798373cbec6af05fff4147aff3 should have introduced 
prepared/enabled do the drm_panel struct.

Thanks,

Jessica Zhang

> +
> +	struct mipi_dsi_device *dsi;
> +
> +	struct regulator *power;
> +	struct gpio_desc *enable;
> +	struct gpio_desc *reset;
> +
> +	enum drm_panel_orientation orientation;
> +};
> +
> +static int boe_th101mb31ig002_disable(struct drm_panel *panel)
> +{
> +	struct boe_th101mb31ig002 *ctx = container_of(panel,
> +						      struct boe_th101mb31ig002,
> +						      panel);
> +
> +	if (!ctx->enabled)
> +		return 0;
> +
> +	mipi_dsi_dcs_set_display_off(ctx->dsi);
> +	msleep(120);
> +	ctx->enabled = false;
> +
> +	return 0;
> +}
> +
> +static int boe_th101mb31ig002_unprepare(struct drm_panel *panel)
> +{
> +	struct boe_th101mb31ig002 *ctx = container_of(panel,
> +						      struct boe_th101mb31ig002,
> +						      panel);
> +
> +	if (!ctx->prepared)
> +		return 0;
> +
> +	mipi_dsi_dcs_enter_sleep_mode(ctx->dsi);
> +	msleep(220);
> +	gpiod_set_value_cansleep(ctx->reset, 1);
> +	gpiod_set_value_cansleep(ctx->enable, 0);
> +	regulator_disable(ctx->power);
> +	ctx->prepared = false;
> +
> +	return 0;
> +}
> +
> +static int boe_th101mb31ig002_prepare(struct drm_panel *panel)
> +{
> +	struct boe_th101mb31ig002 *ctx = container_of(panel,
> +						      struct boe_th101mb31ig002,
> +						      panel);
> +	struct mipi_dsi_device *dsi = ctx->dsi;
> +	int ret;
> +
> +	if (ctx->prepared)
> +		return 0;
> +
> +	ret = regulator_enable(ctx->power);
> +	if (ret) {
> +		dev_err(&dsi->dev, "Failed to enable power supply: %d\n", ret);
> +		return ret;
> +	}
> +
> +	gpiod_set_value_cansleep(ctx->enable, 1);
> +	msleep(120);
> +	gpiod_direction_output(ctx->reset, 1);
> +	msleep(120);
> +	gpiod_direction_output(ctx->reset, 0);
> +	msleep(120);
> +
> +	mipi_dsi_dcs_write_seq(dsi, 0xE0, 0xAB, 0xBA);
> +	mipi_dsi_dcs_write_seq(dsi, 0xE1, 0xBA, 0xAB);
> +	mipi_dsi_dcs_write_seq(dsi, 0xB1, 0x10, 0x01, 0x47, 0xFF);
> +	mipi_dsi_dcs_write_seq(dsi, 0xB2, 0x0C, 0x14, 0x04, 0x50, 0x50, 0x14);
> +	mipi_dsi_dcs_write_seq(dsi, 0xB3, 0x56, 0x53, 0x00);
> +	mipi_dsi_dcs_write_seq(dsi, 0xB4, 0x33, 0x30, 0x04);
> +	mipi_dsi_dcs_write_seq(dsi, 0xB6, 0xB0, 0x00, 0x00, 0x10, 0x00, 0x10,
> +			       0x00);
> +	mipi_dsi_dcs_write_seq(dsi, 0xB8, 0x05, 0x12, 0x29, 0x49, 0x48, 0x00,
> +			       0x00);
> +	mipi_dsi_dcs_write_seq(dsi, 0xB9, 0x7C, 0x65, 0x55, 0x49, 0x46, 0x36,
> +			       0x3B, 0x24, 0x3D, 0x3C, 0x3D, 0x5C, 0x4C, 0x55,
> +			       0x47, 0x46, 0x39, 0x26, 0x06, 0x7C, 0x65, 0x55,
> +			       0x49, 0x46, 0x36, 0x3B, 0x24, 0x3D, 0x3C, 0x3D,
> +			       0x5C, 0x4C, 0x55, 0x47, 0x46, 0x39, 0x26, 0x06);
> +	mipi_dsi_dcs_write_seq(dsi, 0xC0, 0xFF, 0x87, 0x12, 0x34, 0x44, 0x44,
> +			       0x44, 0x44, 0x98, 0x04, 0x98, 0x04, 0x0F, 0x00,
> +			       0x00, 0xC1);
> +	mipi_dsi_dcs_write_seq(dsi, 0xC1, 0x54, 0x94, 0x02, 0x85, 0x9F, 0x00,
> +			       0x7F, 0x00, 0x54, 0x00);
> +	mipi_dsi_dcs_write_seq(dsi, 0xC2, 0x17, 0x09, 0x08, 0x89, 0x08, 0x11,
> +			       0x22, 0x20, 0x44, 0xFF, 0x18, 0x00);
> +	mipi_dsi_dcs_write_seq(dsi, 0xC3, 0x86, 0x46, 0x05, 0x05, 0x1C, 0x1C,
> +			       0x1D, 0x1D, 0x02, 0x1F, 0x1F, 0x1E, 0x1E, 0x0F,
> +			       0x0F, 0x0D, 0x0D, 0x13, 0x13, 0x11, 0x11, 0x00);
> +	mipi_dsi_dcs_write_seq(dsi, 0xC4, 0x07, 0x07, 0x04, 0x04, 0x1C, 0x1C,
> +			       0x1D, 0x1D, 0x02, 0x1F, 0x1F, 0x1E, 0x1E, 0x0E,
> +			       0x0E, 0x0C, 0x0C, 0x12, 0x12, 0x10, 0x10, 0x00);
> +	mipi_dsi_dcs_write_seq(dsi, 0xC6, 0x2A, 0x2A);
> +	mipi_dsi_dcs_write_seq(dsi, 0xC8, 0x21, 0x00, 0x31, 0x42, 0x34, 0x16);
> +	mipi_dsi_dcs_write_seq(dsi, 0xCA, 0xCB, 0x43);
> +	mipi_dsi_dcs_write_seq(dsi, 0xCD, 0x0E, 0x4B, 0x4B, 0x20, 0x19, 0x6B,
> +			       0x06, 0xB3);
> +	mipi_dsi_dcs_write_seq(dsi, 0xD2, 0xE3, 0x2B, 0x38, 0x00);
> +	mipi_dsi_dcs_write_seq(dsi, 0xD4, 0x00, 0x01, 0x00, 0x0E, 0x04, 0x44,
> +			       0x08, 0x10, 0x00, 0x00, 0x00);
> +	mipi_dsi_dcs_write_seq(dsi, 0xE6, 0x80, 0x01, 0xFF, 0xFF, 0xFF, 0xFF,
> +			       0xFF, 0xFF);
> +	mipi_dsi_dcs_write_seq(dsi, 0xF0, 0x12, 0x03, 0x20, 0x00, 0xFF);
> +	mipi_dsi_dcs_write_seq(dsi, 0xF3, 0x00);
> +
> +	mipi_dsi_dcs_exit_sleep_mode(dsi);
> +	msleep(120);
> +	ctx->prepared = true;
> +
> +	return 0;
> +}
> +
> +static int boe_th101mb31ig002_enable(struct drm_panel *panel)
> +{
> +	struct boe_th101mb31ig002 *ctx = container_of(panel,
> +						      struct boe_th101mb31ig002,
> +						      panel);
> +
> +	if (ctx->enabled)
> +		return 0;
> +
> +	mipi_dsi_dcs_set_display_on(ctx->dsi);
> +	msleep(120);
> +	ctx->enabled = true;
> +
> +	return 0;
> +}
> +
> +static const struct drm_display_mode boe_th101mb31ig002_default_mode = {
> +	.clock		= 73500,
> +	.hdisplay	= 800,
> +	.hsync_start	= 800 + 64,
> +	.hsync_end	= 800 + 64 + 16,
> +	.htotal		= 800 + 64 + 16 + 64,
> +	.vdisplay	= 1280,
> +	.vsync_start	= 1280 + 2,
> +	.vsync_end	= 1280 + 2 + 4,
> +	.vtotal		= 1280 + 2 + 4 + 12,
> +	.type = DRM_MODE_TYPE_DRIVER | DRM_MODE_TYPE_PREFERRED,
> +};
> +
> +static int boe_th101mb31ig002_get_modes(struct drm_panel *panel,
> +					struct drm_connector *connector)
> +{
> +	struct boe_th101mb31ig002 *ctx = container_of(panel,
> +						      struct boe_th101mb31ig002,
> +						      panel);
> +	struct drm_display_mode *mode;
> +
> +	mode = drm_mode_duplicate(connector->dev,
> +				  &boe_th101mb31ig002_default_mode);
> +	if (!mode) {
> +		dev_err(panel->dev, "Failed to add mode %ux%u@%u\n",
> +			boe_th101mb31ig002_default_mode.hdisplay,
> +			boe_th101mb31ig002_default_mode.vdisplay,
> +			drm_mode_vrefresh(&boe_th101mb31ig002_default_mode));
> +		return -ENOMEM;
> +	}
> +
> +	drm_mode_set_name(mode);
> +	drm_mode_probed_add(connector, mode);
> +
> +	connector->display_info.bpc = 8;
> +	connector->display_info.width_mm = 216;
> +	connector->display_info.height_mm = 135;
> +
> +	/*
> +	 * TODO: Remove once all drm drivers call
> +	 * drm_connector_set_orientation_from_panel()
> +	 */
> +	drm_connector_set_panel_orientation(connector, ctx->orientation);
> +
> +	return 1;
> +}
> +
> +static enum drm_panel_orientation boe_th101mb31ig002_get_orientation(struct drm_panel *panel)
> +{
> +	struct boe_th101mb31ig002 *ctx = container_of(panel,
> +						      struct boe_th101mb31ig002,
> +						      panel);
> +
> +	return ctx->orientation;
> +}
> +
> +static const struct drm_panel_funcs boe_th101mb31ig002_funcs = {
> +	.disable = boe_th101mb31ig002_disable,
> +	.unprepare = boe_th101mb31ig002_unprepare,
> +	.prepare = boe_th101mb31ig002_prepare,
> +	.enable = boe_th101mb31ig002_enable,
> +	.get_modes = boe_th101mb31ig002_get_modes,
> +	.get_orientation = boe_th101mb31ig002_get_orientation,
> +};
> +
> +static int boe_th101mb31ig002_dsi_probe(struct mipi_dsi_device *dsi)
> +{
> +	struct boe_th101mb31ig002 *ctx;
> +	int ret;
> +
> +	ctx = devm_kzalloc(&dsi->dev, sizeof(*ctx), GFP_KERNEL);
> +	if (!ctx)
> +		return -ENOMEM;
> +
> +	ctx->enabled = false;
> +	ctx->prepared = false;
> +
> +	mipi_dsi_set_drvdata(dsi, ctx);
> +	ctx->dsi = dsi;
> +
> +	drm_panel_init(&ctx->panel, &dsi->dev, &boe_th101mb31ig002_funcs,
> +		       DRM_MODE_CONNECTOR_DSI);
> +
> +	ctx->power = devm_regulator_get(&dsi->dev, "power");
> +	if (IS_ERR(ctx->power))
> +		return dev_err_probe(&dsi->dev, PTR_ERR(ctx->power),
> +				     "Failed to get power regulator\n");
> +
> +	ctx->enable = devm_gpiod_get(&dsi->dev, "enable", GPIOD_OUT_LOW);
> +	if (IS_ERR(ctx->enable))
> +		return dev_err_probe(&dsi->dev, PTR_ERR(ctx->enable),
> +				     "Failed to get enable GPIO\n");
> +
> +	ctx->reset = devm_gpiod_get(&dsi->dev, "reset", GPIOD_OUT_HIGH);
> +	if (IS_ERR(ctx->reset))
> +		return dev_err_probe(&dsi->dev, PTR_ERR(ctx->reset),
> +				     "Failed to get reset GPIO\n");
> +
> +	ret = of_drm_get_panel_orientation(dsi->dev.of_node,
> +					   &ctx->orientation);
> +	if (ret)
> +		return dev_err_probe(&dsi->dev, ret,
> +				     "Failed to get orientation\n");
> +
> +	ret = drm_panel_of_backlight(&ctx->panel);
> +	if (ret)
> +		return ret;
> +
> +	drm_panel_add(&ctx->panel);
> +
> +	dsi->lanes = 4;
> +	dsi->format = MIPI_DSI_FMT_RGB888;
> +	dsi->mode_flags = MIPI_DSI_MODE_VIDEO_BURST |
> +			  MIPI_DSI_MODE_NO_EOT_PACKET |
> +			  MIPI_DSI_MODE_LPM;
> +
> +	ret = mipi_dsi_attach(dsi);
> +	if (ret < 0) {
> +		drm_panel_remove(&ctx->panel);
> +		return ret;
> +	}
> +
> +	return 0;
> +}
> +
> +static void boe_th101mb31ig002_dsi_remove(struct mipi_dsi_device *dsi)
> +{
> +	struct boe_th101mb31ig002 *ctx = mipi_dsi_get_drvdata(dsi);
> +
> +	mipi_dsi_detach(dsi);
> +	drm_panel_remove(&ctx->panel);
> +}
> +
> +static const struct of_device_id boe_th101mb31ig002_of_match[] = {
> +	{ .compatible = "boe,th101mb31ig002-28a", },
> +	{ /* sentinel */ }
> +};
> +MODULE_DEVICE_TABLE(of, boe_th101mb31ig002_of_match);
> +
> +static struct mipi_dsi_driver boe_th101mb31ig002_driver = {
> +	.driver = {
> +		.name = "boe-th101mb31ig002-28a",
> +		.of_match_table = boe_th101mb31ig002_of_match,
> +	},
> +	.probe = boe_th101mb31ig002_dsi_probe,
> +	.remove = boe_th101mb31ig002_dsi_remove,
> +};
> +module_mipi_dsi_driver(boe_th101mb31ig002_driver);
> +
> +MODULE_AUTHOR("Alexander Warnecke <awarnecke002@hotmail.com>");
> +MODULE_DESCRIPTION("BOE TH101MB31IG002-28A MIPI-DSI LCD panel");
> +MODULE_LICENSE("GPL");
> 
> -- 
> 2.43.0
> 

