Return-Path: <devicetree+bounces-61037-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D8028AB66C
	for <lists+devicetree@lfdr.de>; Fri, 19 Apr 2024 23:28:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 17B701F21578
	for <lists+devicetree@lfdr.de>; Fri, 19 Apr 2024 21:28:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B0CC113C90D;
	Fri, 19 Apr 2024 21:28:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from relay08.th.seeweb.it (relay08.th.seeweb.it [5.144.164.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B62792AF01
	for <devicetree@vger.kernel.org>; Fri, 19 Apr 2024 21:28:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=5.144.164.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713562093; cv=none; b=Fl6KH34S4zhqtNuW3ENwlgbAQW1ePdozOfr5Bx0Syi+yg5u5MlDH4awHT7j9qVFiGLe7lSA915qfTcWZ7BW50BSaG99Pay995m6GL6yVcnCrGIhnvDO9u0I8eWUUQR/ZIp+0b8Dj1w19hxP5FasXO3XdDHj978WG3C59gDTuVJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713562093; c=relaxed/simple;
	bh=QVb/cMNmeCH/umj/RAepO+euThPMc9G5aOhqs2UYF5s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gT+TpruTuFtI8G3n4sfidPKVKG86PwQzjMG1ChaMZALAX4mLdNolFJaYtZMhr06GxNWmF0r0BqKrIWdzuJjVCLJp6FAqLWciG6eFKUfvWi2EZKBNCqShQN1VzMYhuvfL1U+xGoSYibtJZSSykhMiT7QAS5+MkivmWDX7SN8R0e4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=somainline.org; spf=pass smtp.mailfrom=somainline.org; arc=none smtp.client-ip=5.144.164.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=somainline.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=somainline.org
Received: from SoMainline.org (94-211-6-86.cable.dynamic.v4.ziggo.nl [94.211.6.86])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by m-r2.th.seeweb.it (Postfix) with ESMTPSA id 621D6405E7;
	Fri, 19 Apr 2024 23:28:01 +0200 (CEST)
Date: Fri, 19 Apr 2024 23:27:59 +0200
From: Marijn Suijten <marijn.suijten@somainline.org>
To: David Wronek <david@mainlining.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, 
	Jessica Zhang <quic_jesszhan@quicinc.com>, Sam Ravnborg <sam@ravnborg.org>, Daniel Vetter <daniel@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org
Subject: Re: [PATCH v4 2/2] drm/panel: Add driver for EDO RM69380 OLED panel
Message-ID: <2ril3lznqamiexdfgumxv3qa2fo3lprqt26qbjg2qhxxsxx5wb@yqwz7hm4ipha>
Mail-Followup-To: Marijn Suijten <marijn.suijten@somainline.org>, 
	David Wronek <david@mainlining.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Jessica Zhang <quic_jesszhan@quicinc.com>, Sam Ravnborg <sam@ravnborg.org>, Daniel Vetter <daniel@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org
References: <20240417-raydium-rm69380-driver-v4-0-e9c2337d0049@mainlining.org>
 <20240417-raydium-rm69380-driver-v4-2-e9c2337d0049@mainlining.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240417-raydium-rm69380-driver-v4-2-e9c2337d0049@mainlining.org>

On 2024-04-17 18:29:34, David Wronek wrote:
> Add support for the 2560x1600@90Hz OLED panel by EDO bundled with a
> Raydium RM69380 controller, as found on the Lenovo Xiaoxin Pad Pro 2021.
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Signed-off-by: David Wronek <david@mainlining.org>

Reviewed-by: Marijn Suijten <marijn.suijten@somainline.org>

> ---
>  drivers/gpu/drm/panel/Kconfig                 |  12 +
>  drivers/gpu/drm/panel/Makefile                |   1 +
>  drivers/gpu/drm/panel/panel-raydium-rm69380.c | 344 ++++++++++++++++++++++++++
>  3 files changed, 357 insertions(+)
> 
> diff --git a/drivers/gpu/drm/panel/Kconfig b/drivers/gpu/drm/panel/Kconfig
> index 154f5bf82980..e2a66c21349f 100644
> --- a/drivers/gpu/drm/panel/Kconfig
> +++ b/drivers/gpu/drm/panel/Kconfig
> @@ -542,6 +542,18 @@ config DRM_PANEL_RAYDIUM_RM692E5
>  	  Say Y here if you want to enable support for Raydium RM692E5-based
>  	  display panels, such as the one found in the Fairphone 5 smartphone.
>  
> +config DRM_PANEL_RAYDIUM_RM69380
> +	tristate "Raydium RM69380-based DSI panel"
> +	depends on OF && GPIOLIB
> +	depends on DRM_MIPI_DSI
> +	depends on BACKLIGHT_CLASS_DEVICE
> +	help
> +	  Say Y here if you want to enable support for Raydium RM69380-based
> +	  display panels.
> +
> +	  This panel controller can be found in the Lenovo Xiaoxin Pad Pro 2021
> +	  in combination with an EDO OLED panel.
> +
>  config DRM_PANEL_RONBO_RB070D30
>  	tristate "Ronbo Electronics RB070D30 panel"
>  	depends on OF
> diff --git a/drivers/gpu/drm/panel/Makefile b/drivers/gpu/drm/panel/Makefile
> index 24a02655d726..e2a2807d4ef0 100644
> --- a/drivers/gpu/drm/panel/Makefile
> +++ b/drivers/gpu/drm/panel/Makefile
> @@ -55,6 +55,7 @@ obj-$(CONFIG_DRM_PANEL_RASPBERRYPI_TOUCHSCREEN) += panel-raspberrypi-touchscreen
>  obj-$(CONFIG_DRM_PANEL_RAYDIUM_RM67191) += panel-raydium-rm67191.o
>  obj-$(CONFIG_DRM_PANEL_RAYDIUM_RM68200) += panel-raydium-rm68200.o
>  obj-$(CONFIG_DRM_PANEL_RAYDIUM_RM692E5) += panel-raydium-rm692e5.o
> +obj-$(CONFIG_DRM_PANEL_RAYDIUM_RM69380) += panel-raydium-rm69380.o
>  obj-$(CONFIG_DRM_PANEL_RONBO_RB070D30) += panel-ronbo-rb070d30.o
>  obj-$(CONFIG_DRM_PANEL_SAMSUNG_ATNA33XC20) += panel-samsung-atna33xc20.o
>  obj-$(CONFIG_DRM_PANEL_SAMSUNG_DB7430) += panel-samsung-db7430.o
> diff --git a/drivers/gpu/drm/panel/panel-raydium-rm69380.c b/drivers/gpu/drm/panel/panel-raydium-rm69380.c
> new file mode 100644
> index 000000000000..4dca6802faef
> --- /dev/null
> +++ b/drivers/gpu/drm/panel/panel-raydium-rm69380.c
> @@ -0,0 +1,344 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Generated with linux-mdss-dsi-panel-driver-generator from vendor device tree.
> + * Copyright (c) 2024 David Wronek <david@mainlining.org>
> + */
> +
> +#include <linux/backlight.h>
> +#include <linux/delay.h>
> +#include <linux/gpio/consumer.h>
> +#include <linux/module.h>
> +#include <linux/of.h>
> +#include <linux/of_device.h>
> +#include <linux/of_graph.h>
> +#include <linux/regulator/consumer.h>
> +
> +#include <video/mipi_display.h>
> +
> +#include <drm/drm_mipi_dsi.h>
> +#include <drm/drm_modes.h>
> +#include <drm/drm_panel.h>
> +#include <drm/drm_probe_helper.h>
> +
> +struct rm69380_panel {
> +	struct drm_panel panel;
> +	struct mipi_dsi_device *dsi[2];
> +	struct regulator_bulk_data supplies[2];
> +	struct gpio_desc *reset_gpio;
> +};
> +
> +static inline
> +struct rm69380_panel *to_rm69380_panel(struct drm_panel *panel)
> +{
> +	return container_of(panel, struct rm69380_panel, panel);
> +}
> +
> +static void rm69380_reset(struct rm69380_panel *ctx)
> +{
> +	gpiod_set_value_cansleep(ctx->reset_gpio, 0);
> +	usleep_range(15000, 16000);
> +	gpiod_set_value_cansleep(ctx->reset_gpio, 1);
> +	usleep_range(10000, 11000);
> +	gpiod_set_value_cansleep(ctx->reset_gpio, 0);
> +	msleep(30);
> +}
> +
> +static int rm69380_on(struct rm69380_panel *ctx)
> +{
> +	struct mipi_dsi_device *dsi = ctx->dsi[0];
> +	struct device *dev = &dsi->dev;
> +	int ret;
> +
> +	dsi->mode_flags |= MIPI_DSI_MODE_LPM;
> +	if (ctx->dsi[1])
> +		ctx->dsi[1]->mode_flags |= MIPI_DSI_MODE_LPM;
> +
> +	mipi_dsi_dcs_write_seq(dsi, 0xfe, 0xd4);
> +	mipi_dsi_dcs_write_seq(dsi, 0x00, 0x80);
> +	mipi_dsi_dcs_write_seq(dsi, 0xfe, 0xd0);
> +	mipi_dsi_dcs_write_seq(dsi, 0x48, 0x00);
> +	mipi_dsi_dcs_write_seq(dsi, 0xfe, 0x26);
> +	mipi_dsi_dcs_write_seq(dsi, 0x75, 0x3f);
> +	mipi_dsi_dcs_write_seq(dsi, 0x1d, 0x1a);
> +	mipi_dsi_dcs_write_seq(dsi, 0xfe, 0x00);
> +	mipi_dsi_dcs_write_seq(dsi, MIPI_DCS_WRITE_CONTROL_DISPLAY, 0x28);
> +	mipi_dsi_dcs_write_seq(dsi, 0xc2, 0x08);
> +
> +	ret = mipi_dsi_dcs_set_tear_on(dsi, MIPI_DSI_DCS_TEAR_MODE_VBLANK);
> +	if (ret < 0) {
> +		dev_err(dev, "Failed to set tear on: %d\n", ret);
> +		return ret;
> +	}
> +
> +	ret = mipi_dsi_dcs_exit_sleep_mode(dsi);
> +	if (ret < 0) {
> +		dev_err(dev, "Failed to exit sleep mode: %d\n", ret);
> +		return ret;
> +	}
> +	msleep(20);
> +
> +	ret = mipi_dsi_dcs_set_display_on(dsi);
> +	if (ret < 0) {
> +		dev_err(dev, "Failed to set display on: %d\n", ret);
> +		return ret;
> +	}
> +	msleep(36);
> +
> +	return 0;
> +}
> +
> +static int rm69380_off(struct rm69380_panel *ctx)
> +{
> +	struct mipi_dsi_device *dsi = ctx->dsi[0];
> +	struct device *dev = &dsi->dev;
> +	int ret;
> +
> +	dsi->mode_flags &= ~MIPI_DSI_MODE_LPM;
> +	if (ctx->dsi[1])
> +		ctx->dsi[1]->mode_flags &= ~MIPI_DSI_MODE_LPM;
> +
> +	ret = mipi_dsi_dcs_set_display_off(dsi);
> +	if (ret < 0) {
> +		dev_err(dev, "Failed to set display off: %d\n", ret);
> +		return ret;
> +	}
> +	msleep(35);
> +
> +	ret = mipi_dsi_dcs_enter_sleep_mode(dsi);
> +	if (ret < 0) {
> +		dev_err(dev, "Failed to enter sleep mode: %d\n", ret);
> +		return ret;
> +	}
> +	msleep(20);
> +
> +	return 0;
> +}
> +
> +static int rm69380_prepare(struct drm_panel *panel)
> +{
> +	struct rm69380_panel *ctx = to_rm69380_panel(panel);
> +	struct device *dev = &ctx->dsi[0]->dev;
> +	int ret;
> +
> +	ret = regulator_bulk_enable(ARRAY_SIZE(ctx->supplies), ctx->supplies);
> +	if (ret < 0) {
> +		dev_err(dev, "Failed to enable regulators: %d\n", ret);
> +		return ret;
> +	}
> +
> +	rm69380_reset(ctx);
> +
> +	ret = rm69380_on(ctx);
> +	if (ret < 0) {
> +		dev_err(dev, "Failed to initialize panel: %d\n", ret);
> +		gpiod_set_value_cansleep(ctx->reset_gpio, 1);
> +		regulator_bulk_disable(ARRAY_SIZE(ctx->supplies), ctx->supplies);
> +		return ret;
> +	}
> +
> +	return 0;
> +}
> +
> +static int rm69380_unprepare(struct drm_panel *panel)
> +{
> +	struct rm69380_panel *ctx = to_rm69380_panel(panel);
> +	struct device *dev = &ctx->dsi[0]->dev;
> +	int ret;
> +
> +	ret = rm69380_off(ctx);
> +	if (ret < 0)
> +		dev_err(dev, "Failed to un-initialize panel: %d\n", ret);
> +
> +	gpiod_set_value_cansleep(ctx->reset_gpio, 1);
> +	regulator_bulk_disable(ARRAY_SIZE(ctx->supplies), ctx->supplies);
> +
> +	return 0;
> +}
> +
> +static const struct drm_display_mode rm69380_mode = {
> +	.clock = (2560 + 32 + 12 + 38) * (1600 + 20 + 4 + 8) * 90 / 1000,
> +	.hdisplay = 2560,
> +	.hsync_start = 2560 + 32,
> +	.hsync_end = 2560 + 32 + 12,
> +	.htotal = 2560 + 32 + 12 + 38,
> +	.vdisplay = 1600,
> +	.vsync_start = 1600 + 20,
> +	.vsync_end = 1600 + 20 + 4,
> +	.vtotal = 1600 + 20 + 4 + 8,
> +	.width_mm = 248,
> +	.height_mm = 155,
> +	.type = DRM_MODE_TYPE_DRIVER,
> +};
> +
> +static int rm69380_get_modes(struct drm_panel *panel,
> +					struct drm_connector *connector)
> +{
> +	return drm_connector_helper_get_modes_fixed(connector, &rm69380_mode);
> +}
> +
> +static const struct drm_panel_funcs rm69380_panel_funcs = {
> +	.prepare = rm69380_prepare,
> +	.unprepare = rm69380_unprepare,
> +	.get_modes = rm69380_get_modes,
> +};
> +
> +static int rm69380_bl_update_status(struct backlight_device *bl)
> +{
> +	struct mipi_dsi_device *dsi = bl_get_data(bl);
> +	u16 brightness = backlight_get_brightness(bl);
> +	int ret;
> +
> +	dsi->mode_flags &= ~MIPI_DSI_MODE_LPM;
> +
> +	ret = mipi_dsi_dcs_set_display_brightness_large(dsi, brightness);
> +	if (ret < 0)
> +		return ret;
> +
> +	dsi->mode_flags |= MIPI_DSI_MODE_LPM;
> +
> +	return 0;
> +}
> +
> +static int rm69380_bl_get_brightness(struct backlight_device *bl)
> +{
> +	struct mipi_dsi_device *dsi = bl_get_data(bl);
> +	u16 brightness;
> +	int ret;
> +
> +	dsi->mode_flags &= ~MIPI_DSI_MODE_LPM;
> +
> +	ret = mipi_dsi_dcs_get_display_brightness_large(dsi, &brightness);
> +	if (ret < 0)
> +		return ret;
> +
> +	dsi->mode_flags |= MIPI_DSI_MODE_LPM;
> +
> +	return brightness;
> +}
> +
> +static const struct backlight_ops rm69380_bl_ops = {
> +	.update_status = rm69380_bl_update_status,
> +	.get_brightness = rm69380_bl_get_brightness,
> +};
> +
> +static struct backlight_device *
> +rm69380_create_backlight(struct mipi_dsi_device *dsi)
> +{
> +	struct device *dev = &dsi->dev;
> +	const struct backlight_properties props = {
> +		.type = BACKLIGHT_RAW,
> +		.brightness = 511,
> +		.max_brightness = 2047,
> +	};
> +
> +	return devm_backlight_device_register(dev, dev_name(dev), dev, dsi,
> +					      &rm69380_bl_ops, &props);
> +}
> +
> +static int rm69380_probe(struct mipi_dsi_device *dsi)
> +{
> +	struct mipi_dsi_host *dsi_sec_host;
> +	struct rm69380_panel *ctx;
> +	struct device *dev = &dsi->dev;
> +	struct device_node *dsi_sec;
> +	int ret, i;
> +
> +	ctx = devm_kzalloc(dev, sizeof(*ctx), GFP_KERNEL);
> +	if (!ctx)
> +		return -ENOMEM;
> +
> +	ctx->supplies[0].supply = "vddio";
> +	ctx->supplies[1].supply = "avdd";
> +	ret = devm_regulator_bulk_get(dev, ARRAY_SIZE(ctx->supplies),
> +				      ctx->supplies);
> +	if (ret < 0)
> +		return dev_err_probe(dev, ret, "Failed to get regulators\n");
> +
> +	ctx->reset_gpio = devm_gpiod_get(dev, "reset", GPIOD_OUT_HIGH);
> +	if (IS_ERR(ctx->reset_gpio))
> +		return dev_err_probe(dev, PTR_ERR(ctx->reset_gpio),
> +				     "Failed to get reset-gpios\n");
> +
> +	dsi_sec = of_graph_get_remote_node(dsi->dev.of_node, 1, -1);
> +
> +	if (dsi_sec) {
> +		const struct mipi_dsi_device_info info = { "RM69380 DSI1", 0,
> +							   dsi_sec };
> +
> +		dsi_sec_host = of_find_mipi_dsi_host_by_node(dsi_sec);
> +		of_node_put(dsi_sec);
> +		if (!dsi_sec_host)
> +			return dev_err_probe(dev, -EPROBE_DEFER,
> +					     "Cannot get secondary DSI host\n");
> +
> +		ctx->dsi[1] =
> +			devm_mipi_dsi_device_register_full(dev, dsi_sec_host, &info);
> +		if (IS_ERR(ctx->dsi[1]))
> +			return dev_err_probe(dev, PTR_ERR(ctx->dsi[1]),
> +					     "Cannot get secondary DSI node\n");
> +
> +		mipi_dsi_set_drvdata(ctx->dsi[1], ctx);
> +	}
> +
> +	ctx->dsi[0] = dsi;
> +	mipi_dsi_set_drvdata(dsi, ctx);
> +
> +	drm_panel_init(&ctx->panel, dev, &rm69380_panel_funcs,
> +		       DRM_MODE_CONNECTOR_DSI);
> +	ctx->panel.prepare_prev_first = true;
> +
> +	ctx->panel.backlight = rm69380_create_backlight(dsi);
> +	if (IS_ERR(ctx->panel.backlight))
> +		return dev_err_probe(dev, PTR_ERR(ctx->panel.backlight),
> +				     "Failed to create backlight\n");
> +
> +	drm_panel_add(&ctx->panel);
> +
> +	for (i = 0; i < ARRAY_SIZE(ctx->dsi); i++) {
> +		if (!ctx->dsi[i])
> +			continue;
> +
> +		dev_dbg(&ctx->dsi[i]->dev, "Binding DSI %d\n", i);
> +
> +		ctx->dsi[i]->lanes = 4;
> +		ctx->dsi[i]->format = MIPI_DSI_FMT_RGB888;
> +		ctx->dsi[i]->mode_flags = MIPI_DSI_MODE_VIDEO_BURST |
> +					  MIPI_DSI_CLOCK_NON_CONTINUOUS;
> +
> +		ret = devm_mipi_dsi_attach(dev, ctx->dsi[i]);
> +		if (ret < 0) {
> +			drm_panel_remove(&ctx->panel);
> +			return dev_err_probe(dev, ret,
> +					     "Failed to attach to DSI%d\n", i);
> +		}
> +	}
> +
> +	return 0;
> +}
> +
> +static void rm69380_remove(struct mipi_dsi_device *dsi)
> +{
> +	struct rm69380_panel *ctx = mipi_dsi_get_drvdata(dsi);
> +
> +	drm_panel_remove(&ctx->panel);
> +}
> +
> +static const struct of_device_id rm69380_of_match[] = {
> +	{ .compatible = "lenovo,j716f-edo-rm69380" },
> +	{ /* sentinel */ }
> +};
> +MODULE_DEVICE_TABLE(of, rm69380_of_match);
> +
> +static struct mipi_dsi_driver rm69380_panel_driver = {
> +	.probe = rm69380_probe,
> +	.remove = rm69380_remove,
> +	.driver = {
> +		.name = "panel-raydium-rm69380",
> +		.of_match_table = rm69380_of_match,
> +	},
> +};
> +module_mipi_dsi_driver(rm69380_panel_driver);
> +
> +MODULE_AUTHOR("David Wronek <david@mainlining.org");
> +MODULE_DESCRIPTION("DRM driver for Raydium RM69380-equipped DSI panels");
> +MODULE_LICENSE("GPL");
> 
> -- 
> 2.44.0
> 

