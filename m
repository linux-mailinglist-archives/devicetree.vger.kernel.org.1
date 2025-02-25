Return-Path: <devicetree+bounces-150673-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E477A433AC
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 04:37:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A878C18984BE
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 03:38:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B8E9124BC06;
	Tue, 25 Feb 2025 03:37:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Zqe9Na1w"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AF9818FDC6
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 03:37:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740454672; cv=none; b=CMXR/iTjomrkmKEaXwBSL8leDd8wi0qfo6QjFHVPVBiWUuP1yvM58JDQPoGiFTO/gCA4SPxZqtSB9W8j3Hw77pL+6+l59vCf5DRb4AoxbLRhlINqk7Fxtd7aF/Rvt9SS96J0yEK5dOb8Wr5AWzr5lrl/1ixVA1o6KdWWuxkDQDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740454672; c=relaxed/simple;
	bh=ypVumA2nqea7NSHUH11pQsss29kZQygk8B+XUq6Lqnc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BZv70PDzJolAl6/o3bEyaG6XODk5RJS61/HgWba+RK4DQy+TZCLjFBshHtDGRkK5Vxdh/flURhb5oh0Rv+OkKcNJhuNDNZ2d2UmX9h6NSmtq/PGRDXGmlZqTRUxl6G5QcJ5f/YazSu560kxVXotFxLPE1QyW8CszOcctPMmRbPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Zqe9Na1w; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-543e4bbcd86so5930269e87.1
        for <devicetree@vger.kernel.org>; Mon, 24 Feb 2025 19:37:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740454667; x=1741059467; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=wQ0FXE6Mk156F8mDmWO3TmWoCV/dyLU1Gc/iCtMYX0A=;
        b=Zqe9Na1wxfX3v4PAqCGCdReCbaVx/ZZKS7SrEPBu/0BCRBe7vsr+2Vhc/qo3/BMXRp
         7RdVzAZa5jaIjlKHLymWWzd2+YFVgf9QelhIIr0TGSgpf75vk0pgYvdIItgP9XV4WoOG
         UIqk60Ldb3KmfR8Yr0qb7gXR40L2QlY8nRXYu8fSisB7jyAQodzblAtk1xoOXxc1vFfc
         QFk0PfawSivYMlIbBoL28crV9DuASgkn2qN+Xn0K4xtxixUhNa9mi//XPq5QMJml5dGo
         X9zAIDCQLB2LWS2F+wgpMf2EsQH5yoOe9lb8H+vKt3uFyGlPPNn7o+OdVc1o0Ma2yoza
         i8Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740454667; x=1741059467;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wQ0FXE6Mk156F8mDmWO3TmWoCV/dyLU1Gc/iCtMYX0A=;
        b=o1a1WavQbBOBHdckPUQ5RskU/Oi6D5jl4AhfLhfBch+ZDcQWpLB0GE16zOPlBXQTIi
         CSv1kydi7EBBdogkRNgBN2AJYclfYyYH7WzxYexbES7s4PBeUq9T0VZkA7JkIJnWP62i
         3VN159gGhbwZzgxMWNPxv11RzMtmPhdzh2mqPX2YhoHDA8FNK1ZHvKOZKCMw4aYL4z26
         omjiSr6BsTuTxCYYNzUcISgsH8wtKMNPG3UhkoLElwcHvK/0iBIHEKDuRyQtJvYmizLV
         gkTtMg7ZryWS0445FixTNXMQkDRFGNmr7USuH+iVpvcVQJi0JmanPdEQCOK2gEbrRAEt
         AHiw==
X-Forwarded-Encrypted: i=1; AJvYcCXDeJDraF0BYfMuzgUjR3ra8CfUJoAyuIXDhFNe3JVBc7vQJUGtBiOuCnkukguDXqZ/wvb0zOuiAkzu@vger.kernel.org
X-Gm-Message-State: AOJu0YxcwiSZX6fBsDap/VKvp43SYlmo+uWmaJV/jCNCpiWW4M1BvFj5
	O/Od9jQ6js9cbybN2dOUnEKSiK3mxcmBtJnF9Vj2QtyIPWQq8+um7UYgy1+awns=
X-Gm-Gg: ASbGncvytVhMO0Yd0kSobbkqJIEQPwz+fzL9uxmKF01ZcRtTGfCrS2T6b8ZfECln1XK
	+mxXOFbl/AfB3lP1PZT+p53kIEfdbmm/3rnvNdt+9OKtl5yXXk5DPsWfnCIrI1dkg9ppjyu/U/Z
	XxoaVYvdnGgtG41PNVvWg/ZJAQbMhANfIpXQGVqMhBHlnj7Zrlp8totxBNPjpcL2wz81RH3o4WW
	vmDSQirsCZaCK/xWeAnNwbNa9OFiRXa7yyuyTaa7L5dynGw+1BQbbJz6ySZCA2ckVHrvWGeFgJw
	2vzjMIfE6eilSnNueZDOt9KKW0r1C/95GmabV5I47gwFsVQuv2JcGGG8ZdXz30XskSm/bn6bTlL
	G6HIPLQ==
X-Google-Smtp-Source: AGHT+IFYPUfbfBYxU0N4hO+mIlYezrWKe2oPjh7Vk0BH3cwLaxaWe6LlYsFXEmrUmKu/Z/0cpZRnVQ==
X-Received: by 2002:a05:6512:3d88:b0:542:a73d:a39c with SMTP id 2adb3069b0e04-54838f79d62mr7016550e87.49.1740454667527;
        Mon, 24 Feb 2025 19:37:47 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-548514efc9bsm67273e87.112.2025.02.24.19.37.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Feb 2025 19:37:46 -0800 (PST)
Date: Tue, 25 Feb 2025 05:37:43 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, 
	Jessica Zhang <quic_jesszhan@quicinc.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Andy Yan <andyshrk@163.com>, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/2] drm/panel: add Raydium RM67200 panel driver
Message-ID: <gpx64rn6mbe2fopffwsg5qnsrh2m4ojceygld3whvtsgqy3ojg@kgovg2ht44mq>
References: <20250207-raydium-rm67200-v2-0-1fdc927aae82@kernel.org>
 <20250207-raydium-rm67200-v2-2-1fdc927aae82@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250207-raydium-rm67200-v2-2-1fdc927aae82@kernel.org>

On Fri, Feb 07, 2025 at 05:21:48PM +0100, Sebastian Reichel wrote:
> The Rockchip W552793DBA-V10 display/touchscreen board contains a
> Wanchanglong W552793BAA panel, which in turn is using a Raydium
> RM67200 MIPI-DSI controller. Add a DSI panel driver for it.
> 
> The W552793BAA panel init sequence has been taken from the RK3588
> EVB1 vendor kernel devicetree.
> 
> Reviewed-by: Jessica Zhang <quic_jesszhan@quicinc.com>
> Reviewed-by: Andy Yan <andyshrk@163.com>
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  drivers/gpu/drm/panel/Kconfig                 |  10 +
>  drivers/gpu/drm/panel/Makefile                |   1 +
>  drivers/gpu/drm/panel/panel-raydium-rm67200.c | 503 ++++++++++++++++++++++++++
>  3 files changed, 514 insertions(+)
> 
> diff --git a/drivers/gpu/drm/panel/Kconfig b/drivers/gpu/drm/panel/Kconfig
> index d7469c565d1db8b8e974dd6c45d03d9352d99d63..ab962c7d572827774dabd2cdf329367a102c43de 100644
> --- a/drivers/gpu/drm/panel/Kconfig
> +++ b/drivers/gpu/drm/panel/Kconfig
> @@ -573,6 +573,16 @@ config DRM_PANEL_RAYDIUM_RM67191
>  	  Say Y here if you want to enable support for Raydium RM67191 FHD
>  	  (1080x1920) DSI panel.
>  
> +config DRM_PANEL_RAYDIUM_RM67200
> +	tristate "Raydium RM67200-based DSI panel"
> +	depends on OF
> +	depends on DRM_MIPI_DSI
> +	help
> +	  Say Y here if you want to enable support for Raydium RM67200-based
> +	  DSI video mode panels. This panel controller can be found in the
> +	  Wanchanglong W552793BAA panel found on the Rockchip RK3588 EVB1
> +	  evaluation boards.
> +
>  config DRM_PANEL_RAYDIUM_RM68200
>  	tristate "Raydium RM68200 720x1280 DSI video mode panel"
>  	depends on OF
> diff --git a/drivers/gpu/drm/panel/Makefile b/drivers/gpu/drm/panel/Makefile
> index 7dcf72646cacff11bab90c78e3b8b1f357e5f14a..f7b7cd1794927401cab1930402ef5c5df9e4c1c5 100644
> --- a/drivers/gpu/drm/panel/Makefile
> +++ b/drivers/gpu/drm/panel/Makefile
> @@ -58,6 +58,7 @@ obj-$(CONFIG_DRM_PANEL_OSD_OSD101T2587_53TS) += panel-osd-osd101t2587-53ts.o
>  obj-$(CONFIG_DRM_PANEL_PANASONIC_VVX10F034N00) += panel-panasonic-vvx10f034n00.o
>  obj-$(CONFIG_DRM_PANEL_RASPBERRYPI_TOUCHSCREEN) += panel-raspberrypi-touchscreen.o
>  obj-$(CONFIG_DRM_PANEL_RAYDIUM_RM67191) += panel-raydium-rm67191.o
> +obj-$(CONFIG_DRM_PANEL_RAYDIUM_RM67200) += panel-raydium-rm67200.o
>  obj-$(CONFIG_DRM_PANEL_RAYDIUM_RM68200) += panel-raydium-rm68200.o
>  obj-$(CONFIG_DRM_PANEL_RAYDIUM_RM692E5) += panel-raydium-rm692e5.o
>  obj-$(CONFIG_DRM_PANEL_RAYDIUM_RM69380) += panel-raydium-rm69380.o
> diff --git a/drivers/gpu/drm/panel/panel-raydium-rm67200.c b/drivers/gpu/drm/panel/panel-raydium-rm67200.c
> new file mode 100644
> index 0000000000000000000000000000000000000000..1a7201ce6c9825d3c91661f612723306be1c7981
> --- /dev/null
> +++ b/drivers/gpu/drm/panel/panel-raydium-rm67200.c
> @@ -0,0 +1,503 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +// Copyright (c) 2024 Collabora
> +
> +#include <linux/delay.h>
> +#include <linux/gpio/consumer.h>
> +#include <linux/module.h>
> +#include <linux/mod_devicetable.h>
> +#include <linux/property.h>
> +#include <linux/regulator/consumer.h>
> +
> +#include <drm/drm_mipi_dsi.h>
> +#include <drm/drm_probe_helper.h>
> +#include <drm/drm_modes.h>
> +#include <drm/drm_panel.h>
> +
> +struct raydium_rm67200_panel_info {
> +	struct drm_display_mode mode;
> +	const struct regulator_bulk_data *regulators;
> +	int num_regulators;
> +	void (*panel_setup)(struct mipi_dsi_multi_context *ctx);
> +};
> +
> +struct raydium_rm67200 {
> +	struct drm_panel panel;
> +	const struct raydium_rm67200_panel_info *panel_info;
> +	struct mipi_dsi_device *dsi;
> +	struct gpio_desc *reset_gpio;
> +	struct regulator_bulk_data *supplies;
> +	int num_supplies;
> +};
> +
> +static inline struct raydium_rm67200 *to_raydium_rm67200(struct drm_panel *panel)
> +{
> +	return container_of(panel, struct raydium_rm67200, panel);
> +}
> +
> +static void raydium_rm67200_reset(struct raydium_rm67200 *ctx)
> +{
> +	gpiod_set_value_cansleep(ctx->reset_gpio, 0);
> +	msleep(60);
> +	gpiod_set_value_cansleep(ctx->reset_gpio, 1);
> +	msleep(60);
> +	gpiod_set_value_cansleep(ctx->reset_gpio, 0);
> +	msleep(60);
> +}
> +
> +static void raydium_rm67200_write(struct mipi_dsi_multi_context *ctx,
> +				  u8 arg1, u8 arg2)
> +{
> +	u8 d[] = { arg1, arg2 };
> +
> +	mipi_dsi_generic_write_multi(ctx, d, ARRAY_SIZE(d));
> +}
> +
> +static void w552793baa_setup(struct mipi_dsi_multi_context *ctx)
> +{
> +	raydium_rm67200_write(ctx, 0xFE, 0x21);

Nit: Lowercase hex, please.

> +	raydium_rm67200_write(ctx, 0x04, 0x00);
> +	raydium_rm67200_write(ctx, 0x00, 0x64);
> +	raydium_rm67200_write(ctx, 0x2A, 0x00);

[...]

> +}
> +
> +static int raydium_rm67200_prepare(struct drm_panel *panel)
> +{
> +	struct raydium_rm67200 *ctx = to_raydium_rm67200(panel);
> +	int ret;
> +
> +	ret = regulator_bulk_enable(ctx->num_supplies, ctx->supplies);
> +	if (ret < 0)
> +		return ret;
> +
> +	raydium_rm67200_reset(ctx);
> +
> +	msleep(60);
> +
> +	return 0;
> +}
> +
> +static int raydium_rm67200_unprepare(struct drm_panel *panel)
> +{
> +	struct raydium_rm67200 *ctx = to_raydium_rm67200(panel);
> +
> +	gpiod_set_value_cansleep(ctx->reset_gpio, 1);
> +	regulator_bulk_disable(ctx->num_supplies, ctx->supplies);
> +
> +	msleep(60);
> +
> +	return 0;
> +}
> +
> +static int raydium_rm67200_enable(struct drm_panel *panel)
> +{
> +	struct raydium_rm67200 *rm67200 = to_raydium_rm67200(panel);
> +	struct mipi_dsi_multi_context ctx = { .dsi = rm67200->dsi };
> +
> +	rm67200->panel_info->panel_setup(&ctx);
> +	mipi_dsi_dcs_exit_sleep_mode_multi(&ctx);
> +	mipi_dsi_msleep(&ctx, 120);
> +	mipi_dsi_dcs_set_display_on_multi(&ctx);
> +	mipi_dsi_msleep(&ctx, 30);
> +
> +	msleep(60);

So, this function will sleep for 30 msec and then for 60 more. Is that
expected? Granted that the first line uses msi_dsi_multi() and the
second one is just msleep() I can assume that this is some debugging
lefrover or a  rebase issues.

> +
> +	return ctx.accum_err;
> +}
> +
> +static int raydium_rm67200_disable(struct drm_panel *panel)
> +{
> +	struct raydium_rm67200 *rm67200 = to_raydium_rm67200(panel);
> +	struct mipi_dsi_multi_context ctx = { .dsi = rm67200->dsi };
> +
> +	mipi_dsi_dcs_set_display_off_multi(&ctx);
> +	mipi_dsi_dcs_enter_sleep_mode_multi(&ctx);
> +
> +	msleep(60);
> +
> +	return ctx.accum_err;
> +}
> +
> +static int raydium_rm67200_get_modes(struct drm_panel *panel,
> +				    struct drm_connector *connector)
> +{
> +	struct raydium_rm67200 *ctx = to_raydium_rm67200(panel);
> +
> +	drm_connector_helper_get_modes_fixed(connector, &ctx->panel_info->mode);
> +	return 1;

return drm_connector_helper_get_modes_fixed().

> +}
> +

-- 
With best wishes
Dmitry

