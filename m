Return-Path: <devicetree+bounces-131818-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BF7549F4A41
	for <lists+devicetree@lfdr.de>; Tue, 17 Dec 2024 12:47:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DB47C164BD1
	for <lists+devicetree@lfdr.de>; Tue, 17 Dec 2024 11:47:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F120C1EE002;
	Tue, 17 Dec 2024 11:47:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Il497FBN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 432AF1DA309
	for <devicetree@vger.kernel.org>; Tue, 17 Dec 2024 11:47:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734436064; cv=none; b=kCelEzYH8tMhj6jpoJJ4R86X/pQ8kv2iQisV/37TYJ2ZcVzjmCh3OA2zg2qq4qIfIcXmIdyTm9Altn+sWi59EErHbsAVAftgoQ5EjcFQ1tUFMlyMJOvrtqwUeIplLbtujd3+GqD2tMSIIL6SXHD5v30cbI/DAe0yXKAJTlI10s8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734436064; c=relaxed/simple;
	bh=V1iRLmHmU4rAfHaPJ5tN2ldgXc7/m2HaO/fMF5NRThk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=q+5tkgUmxtTsNSRNPVAUrLmWh3SNF1LjgAhxZAXpurRP65leGyLasRxtUFg5kj52aG7lAwuk/bI2MzD4D6t4DZevo8wx7oZPP+K3no2E66gRXrfAVa6ItbHyG/+kCQ2lDOoVyvdTwfknb80FDq5hUV6dyJaiy9ZNcdDK8HI7mUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Il497FBN; arc=none smtp.client-ip=209.85.208.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-30039432861so58457691fa.2
        for <devicetree@vger.kernel.org>; Tue, 17 Dec 2024 03:47:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734436058; x=1735040858; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=bjmuy1SGjbKhy9ZZt2FWjbSLBFf6PQsl2zJKkfKTqOw=;
        b=Il497FBN7DAHLav+IGtMsfeFnx+RiNTpT5tH09glZOuP5t8jnlzoonMoqAEVc1fiww
         vNnJZrH31NGWhTfDyjAW+T/53qsEuoZVwooT98yTHxk+OwJA/gYfz31zl39Ff99+r1gb
         01g59xSndLLnzIGQk/yAQmd6p4hA3W0p2omH/CAt3JcZ5RMjeHg9OWsDC9NG6CePBdfx
         abpxTsV5yNlCA35169tQqnc5TmiDYAwn2BCAnXKZZ3hAHyyzgA4kzyqheTAEtDACTx2c
         drHNcV+ccClYzCFsGxUwOHqe+KNvel1MacCxDlcbEFRliOeyUuo4vFWw8DJpU3lw+WWE
         2ghA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734436058; x=1735040858;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bjmuy1SGjbKhy9ZZt2FWjbSLBFf6PQsl2zJKkfKTqOw=;
        b=HQ/hFrqFtgsaqhsVobjQa8XwP5WhZCQXDVzymS790syp5Lg1YC0MG4Wu5HD0lSuNqg
         kLh6yn4DKhSgiP9OG8VbNRgFX5cNrc8YxKoy8rGJRVwvpEXqpmxQfLrGlVs40JzfJrwF
         IMKf8PQtODwyZqMeh+9goq46FjJ0pbI9Ym5JlBfsFurgmoTdWyAQ8XJ1R3t5xBEh1oHR
         7QAx3E+grEYURJ1NX9H1UikWJHEFdnWi1/H98FGzutTS5TRBku6WiH2bp9MCC0a+t4FF
         38YPciEoLmjwNNacugpp4U5erIxvSNUFkkmXD+vyqFNr6hHoekZCd2EQ9YylnH3oEXwJ
         iICw==
X-Forwarded-Encrypted: i=1; AJvYcCWXb4okosBFL0v8jsCWf/YkwHBJL+6LSsaYqzIbN79IN9tosN4pJ/bY5pcStYLGnlxFioK7tn/p/H/s@vger.kernel.org
X-Gm-Message-State: AOJu0YwSzLpCzA6HWdKnZpvXb0GoATzy4TzSkqv6t7GIVCVkhQMw1LBL
	K6bPRPOlpdng8zp9DxGqfPLucYi64XpSYY4fafrFY4w877/IH99Sk8tiZdqWum4=
X-Gm-Gg: ASbGncvgphUlGjmESdV4OxdQVYeNw4IEHdAykQ+OgkL97R/FAFDaGOmztu7IL68JV/3
	/CyXBTAORGTr4c4tjhNfr2SLkkXlg2Ba/Ny0q1xjPjOJkXF1yeNVGex4hdl8G0tpJu6vreY6Dyn
	X+AnxvgmM57sgA3QNVvBmOUaUxh7aO6u+V9F0Alpl2v0crypEiK8ZyOwkrwt8CtMc/dzc4sKP/m
	EhF0XQPraqasKo7lghNvAj2DEm2mrWAIKMrK8dWvwjaaNcWInIs+/kdZpHD064+joICksWjgVxL
	3OEmT7O6uPJLjiHLpeSLvyYes5Jdw7acWTn3
X-Google-Smtp-Source: AGHT+IEjqGLFDTbC63ZlRU7jLIovVBuc5iKkG727h+GIEljsinR1kpnCbKGlaI1wY3h0ODg8vyR/sg==
X-Received: by 2002:a05:651c:b0c:b0:300:2ddb:aaa5 with SMTP id 38308e7fff4ca-302544f93b8mr53489121fa.30.1734436057846;
        Tue, 17 Dec 2024 03:47:37 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30344044f89sm12433121fa.26.2024.12.17.03.47.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Dec 2024 03:47:37 -0800 (PST)
Date: Tue, 17 Dec 2024 13:47:34 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Sandor Yu <Sandor.yu@nxp.com>
Cc: andrzej.hajda@intel.com, neil.armstrong@linaro.org, 
	Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se, jernej.skrabec@gmail.com, airlied@gmail.com, 
	daniel@ffwll.ch, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	shawnguo@kernel.org, s.hauer@pengutronix.de, festevam@gmail.com, vkoul@kernel.org, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, mripard@kernel.org, 
	kernel@pengutronix.de, linux-imx@nxp.com, oliver.brown@nxp.com, 
	alexander.stein@ew.tq-group.com, sam@ravnborg.org
Subject: Re: [PATCH v20 5/9] drm: bridge: Cadence: Add MHDP8501 DP/HDMI driver
Message-ID: <3ivd4mdmcb56mrgg2yo3rszksiusfkyxr3eycuw5kspczqcqse@4nub63fnrsur>
References: <cover.1734340233.git.Sandor.yu@nxp.com>
 <fbd12029fab1f60e2ba4fad75ef650298a59cb15.1734340233.git.Sandor.yu@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <fbd12029fab1f60e2ba4fad75ef650298a59cb15.1734340233.git.Sandor.yu@nxp.com>

On Tue, Dec 17, 2024 at 02:51:47PM +0800, Sandor Yu wrote:
> Add a new DRM DisplayPort and HDMI bridge driver for Candence MHDP8501
> used in i.MX8MQ SOC. MHDP8501 could support HDMI or DisplayPort
> standards according embedded Firmware running in the uCPU.
> 
> For iMX8MQ SOC, the DisplayPort/HDMI FW was loaded and activated by
> SOC's ROM code. Bootload binary included respective specific firmware
> is required.
> 
> Driver will check display connector type and
> then load the corresponding driver.
> 
> Signed-off-by: Sandor Yu <Sandor.yu@nxp.com>
> ---
> v19->v20:
> - Dump mhdp FW version by debugfs
> - Combine HDMI and DP cable detect functions into one function
> - Combine HDMI and DP cable bridge_mode_valid() functions into one function
> - Rename cdns_hdmi_reset_link() to cdns_hdmi_handle_hotplug()
> - Add comments for EDID in cdns_hdmi_handle_hotplug() and cdns_dp_check_link_state()
> - Add atomic_get_input_bus_fmts() and bridge_atomic_check() for DP driver
> - Remove bpc and color_fmt init in atomic_enable() function.
> - More detail comments for DDC adapter only support SCDC_I2C_SLAVE_ADDRESS
>   read and write in HDMI driver.
> 
> 
> v18->v19:
> - Get endpoint for data-lanes as it had move to endpoint of port@1
> - Update clock management as devm_clk_get_enabled() introduced.
> - Fix clear_infoframe() function is not work issue.
> - Manage PHY power state via phy_power_on() and phy_power_off().
> 
> v17->v18:
> - MHDP8501 HDMI and DP commands that need access mailbox are rewrited
>   with new API functions created in patch #1.
> - replace lane-mapping with data-lanes, use the value from data-lanes
>   to reorder HDMI and DP lane mapping.
> - create I2C adapter for HDMI SCDC, remove cdns_hdmi_scdc_write() function.
> - Rewrite cdns_hdmi_sink_config() function, use HDMI SCDC helper function
>   drm_scdc_set_high_tmds_clock_ratio() and drm_scdc_set_scrambling()
>   to config HDMI sink TMDS.
> - Remove struct video_info from HDMI driver.
> - Remove tmds_char_rate_valid() be called in bridge_mode_valid(),
>   community had patch in reviewing to implement the function.
> - Remove warning message print when get unknown HPD cable status.
> - Add more detail comments for HDP plugin and plugout interrupt.
> - use dev_dbg to repleace DRM_INFO when cable HPD status changed.
> - Remove t-b tag as above code change.
> 
>  drivers/gpu/drm/bridge/cadence/Kconfig        |  16 +
>  drivers/gpu/drm/bridge/cadence/Makefile       |   2 +
>  .../drm/bridge/cadence/cdns-mhdp8501-core.c   | 379 +++++++++
>  .../drm/bridge/cadence/cdns-mhdp8501-core.h   | 380 +++++++++
>  .../gpu/drm/bridge/cadence/cdns-mhdp8501-dp.c | 694 ++++++++++++++++
>  .../drm/bridge/cadence/cdns-mhdp8501-hdmi.c   | 745 ++++++++++++++++++
>  6 files changed, 2216 insertions(+)
>  create mode 100644 drivers/gpu/drm/bridge/cadence/cdns-mhdp8501-core.c
>  create mode 100644 drivers/gpu/drm/bridge/cadence/cdns-mhdp8501-core.h
>  create mode 100644 drivers/gpu/drm/bridge/cadence/cdns-mhdp8501-dp.c
>  create mode 100644 drivers/gpu/drm/bridge/cadence/cdns-mhdp8501-hdmi.c
> 
> diff --git a/drivers/gpu/drm/bridge/cadence/Kconfig b/drivers/gpu/drm/bridge/cadence/Kconfig
> index dbb06533ccab2..bd979f3e6df48 100644
> --- a/drivers/gpu/drm/bridge/cadence/Kconfig
> +++ b/drivers/gpu/drm/bridge/cadence/Kconfig
> @@ -48,3 +48,19 @@ config DRM_CDNS_MHDP8546_J721E
>  	  initializes the J721E Display Port and sets up the
>  	  clock and data muxes.
>  endif
> +
> +config DRM_CDNS_MHDP8501
> +	tristate "Cadence MHDP8501 DP/HDMI bridge"
> +	select DRM_KMS_HELPER
> +	select DRM_PANEL_BRIDGE
> +	select DRM_DISPLAY_DP_HELPER
> +	select DRM_DISPLAY_HELPER
> +	select DRM_CDNS_AUDIO
> +	select CDNS_MHDP_HELPER
> +	depends on OF
> +	help
> +	  Support Cadence MHDP8501 DisplayPort/HDMI bridge.
> +	  Cadence MHDP8501 support one or more protocols,
> +	  including DisplayPort and HDMI.
> +	  To use the DP and HDMI drivers, their respective
> +	  specific firmware is required.
> diff --git a/drivers/gpu/drm/bridge/cadence/Makefile b/drivers/gpu/drm/bridge/cadence/Makefile
> index c95fd5b81d137..ea327287d1c14 100644
> --- a/drivers/gpu/drm/bridge/cadence/Makefile
> +++ b/drivers/gpu/drm/bridge/cadence/Makefile
> @@ -5,3 +5,5 @@ cdns-dsi-$(CONFIG_DRM_CDNS_DSI_J721E) += cdns-dsi-j721e.o
>  obj-$(CONFIG_DRM_CDNS_MHDP8546) += cdns-mhdp8546.o
>  cdns-mhdp8546-y := cdns-mhdp8546-core.o cdns-mhdp8546-hdcp.o
>  cdns-mhdp8546-$(CONFIG_DRM_CDNS_MHDP8546_J721E) += cdns-mhdp8546-j721e.o
> +obj-$(CONFIG_DRM_CDNS_MHDP8501) += cdns-mhdp8501.o
> +cdns-mhdp8501-y := cdns-mhdp8501-core.o cdns-mhdp8501-dp.o cdns-mhdp8501-hdmi.o
> diff --git a/drivers/gpu/drm/bridge/cadence/cdns-mhdp8501-core.c b/drivers/gpu/drm/bridge/cadence/cdns-mhdp8501-core.c
> new file mode 100644
> index 0000000000000..98116ef012fa3
> --- /dev/null
> +++ b/drivers/gpu/drm/bridge/cadence/cdns-mhdp8501-core.c
> @@ -0,0 +1,379 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Cadence Display Port Interface (DP) driver
> + *
> + * Copyright (C) 2023-2024 NXP Semiconductor, Inc.
> + *
> + */
> +#include <drm/drm_of.h>
> +#include <drm/drm_print.h>
> +#include <linux/clk.h>
> +#include <linux/irq.h>
> +#include <linux/mutex.h>
> +#include <linux/of_device.h>
> +#include <linux/platform_device.h>
> +#include <linux/phy/phy.h>
> +
> +#include "cdns-mhdp8501-core.h"
> +
> +static ssize_t firmware_version_show(struct device *dev,
> +				     struct device_attribute *attr, char *buf);
> +static struct device_attribute firmware_version = __ATTR_RO(firmware_version);
> +
> +ssize_t firmware_version_show(struct device *dev,
> +			      struct device_attribute *attr, char *buf)
> +{
> +	struct cdns_mhdp8501_device *mhdp = dev_get_drvdata(dev);
> +
> +	u32 version = readl(mhdp->base.regs + VER_L) | readl(mhdp->base.regs + VER_H) << 8;
> +	u32 lib_version = readl(mhdp->base.regs + VER_LIB_L_ADDR) |
> +			  readl(mhdp->base.regs + VER_LIB_H_ADDR) << 8;
> +
> +	return sprintf(buf, "FW version %d, Lib version %d\n", version, lib_version);
> +}
> +
> +static void cdns_mhdp8501_create_device_files(struct cdns_mhdp8501_device *mhdp)
> +{
> +	if (device_create_file(mhdp->dev, &firmware_version)) {
> +		DRM_ERROR("Unable to create firmware_version sysfs\n");
> +		device_remove_file(mhdp->dev, &firmware_version);
> +	}
> +}
> +
> +static void cdns_mhdp8501_remove_device_files(struct cdns_mhdp8501_device *mhdp)
> +{
> +	device_remove_file(mhdp->dev, &firmware_version);
> +}
> +
> +static int cdns_mhdp8501_read_hpd(struct cdns_mhdp8501_device *mhdp)
> +{
> +	u8 status;
> +	int ret;
> +
> +	ret = cdns_mhdp_mailbox_send_recv(&mhdp->base, MB_MODULE_ID_GENERAL,
> +					  GENERAL_GET_HPD_STATE,
> +					  0, NULL, sizeof(status), &status);
> +	if (ret) {
> +		dev_err(mhdp->dev, "read hpd failed: %d\n", ret);
> +		return ret;
> +	}
> +
> +	return status;
> +}
> +
> +enum drm_connector_status cdns_mhdp8501_detect(struct drm_bridge *bridge)
> +{
> +	struct cdns_mhdp8501_device *mhdp = bridge->driver_private;
> +
> +	u8 hpd = 0xf;
> +
> +	hpd = cdns_mhdp8501_read_hpd(mhdp);
> +	if (hpd == 1)
> +		return connector_status_connected;
> +	else if (hpd == 0)
> +		return connector_status_disconnected;
> +
> +	return connector_status_unknown;
> +}
> +
> +enum drm_mode_status
> +cdns_mhdp8501_mode_valid(struct drm_bridge *bridge,
> +			 const struct drm_display_info *info,
> +			 const struct drm_display_mode *mode)
> +{
> +	/* We don't support double-clocked */
> +	if (mode->flags & DRM_MODE_FLAG_DBLCLK)
> +		return MODE_BAD;
> +
> +	/* MAX support pixel clock rate 594MHz */
> +	if (mode->clock > 594000)
> +		return MODE_CLOCK_HIGH;
> +
> +	if (mode->hdisplay > 3840)
> +		return MODE_BAD_HVALUE;
> +
> +	if (mode->vdisplay > 2160)
> +		return MODE_BAD_VVALUE;
> +
> +	return MODE_OK;
> +}
> +
> +static void hotplug_work_func(struct work_struct *work)
> +{
> +	struct cdns_mhdp8501_device *mhdp = container_of(work,
> +						     struct cdns_mhdp8501_device,
> +						     hotplug_work.work);
> +	enum drm_connector_status status = cdns_mhdp8501_detect(&mhdp->bridge);
> +
> +	drm_bridge_hpd_notify(&mhdp->bridge, status);
> +
> +	/*
> +	 * iMX8MQ has two HPD interrupts: one for plugout and one for plugin.
> +	 * These interrupts cannot be masked and cleaned, so we must enable one
> +	 * and disable the other to avoid continuous interrupt generation.
> +	 */
> +	if (status == connector_status_connected) {
> +		/* Cable connected  */
> +		dev_dbg(mhdp->dev, "HDMI/DP Cable Plug In\n");
> +		enable_irq(mhdp->irq[IRQ_OUT]);
> +
> +		/* Reset HDMI/DP link with sink */
> +		if (mhdp->connector_type == DRM_MODE_CONNECTOR_HDMIA)
> +			cdns_hdmi_handle_hotplug(mhdp);
> +		else
> +			cdns_dp_check_link_state(mhdp);
> +
> +	} else if (status == connector_status_disconnected) {
> +		/* Cable Disconnected  */
> +		dev_dbg(mhdp->dev, "HDMI/DP Cable Plug Out\n");
> +		enable_irq(mhdp->irq[IRQ_IN]);
> +	}
> +}
> +
> +static irqreturn_t cdns_mhdp8501_irq_thread(int irq, void *data)
> +{
> +	struct cdns_mhdp8501_device *mhdp = data;
> +
> +	disable_irq_nosync(irq);
> +
> +	mod_delayed_work(system_wq, &mhdp->hotplug_work,
> +			 msecs_to_jiffies(HOTPLUG_DEBOUNCE_MS));
> +
> +	return IRQ_HANDLED;
> +}
> +
> +#define DATA_LANES_COUNT	4
> +static int cdns_mhdp8501_dt_parse(struct cdns_mhdp8501_device *mhdp,
> +				  struct platform_device *pdev)
> +{
> +	struct device *dev = &pdev->dev;
> +	struct device_node *np = dev->of_node;
> +	struct device_node *remote, *endpoint;
> +	u32 data_lanes[DATA_LANES_COUNT];
> +	u32 lane_value;
> +	int ret, i;
> +
> +	remote = of_graph_get_remote_node(np, 1, 0);
> +	if (!remote) {
> +		dev_err(dev, "fail to get remote node\n");
> +		of_node_put(remote);
> +		return -EINVAL;
> +	}
> +
> +	/* get connector type */
> +	if (of_device_is_compatible(remote, "hdmi-connector")) {
> +		mhdp->connector_type = DRM_MODE_CONNECTOR_HDMIA;
> +
> +	} else if (of_device_is_compatible(remote, "dp-connector")) {
> +		mhdp->connector_type = DRM_MODE_CONNECTOR_DisplayPort;

Interesting hack. What if somebody wraps DP signals with the USB-C
controller in order to provide DP over USB-C?

Unfortunately I don't have a good solution here. There might be other
format converters after your bridge, so you even can't look at the last
bridge of the chain. You might want to examine the phy-mode property and
use it to specify whether the PHY should work in the HDMI or in the DP
mode.

Also, where do get the next bridge and attach it to the bridge chain?

> +
> +	} else {
> +		dev_err(dev, "Unknown connector type\n");
> +		of_node_put(remote);
> +		return -EINVAL;
> +	}
> +
> +	of_node_put(remote);
> +
> +	endpoint = of_graph_get_endpoint_by_regs(np, 1, -1);
> +
> +	/* Get the data lanes ordering */
> +	ret = of_property_count_u32_elems(endpoint, "data-lanes");
> +	if (ret < 0)
> +		return  -EINVAL;
> +	if (ret != DATA_LANES_COUNT) {
> +		dev_err(dev, "expected 4 data lanes\n");
> +		return  -EINVAL;
> +	}

Isn't it drm_of_get_data_lanes_count_ep()?

> +
> +	ret = of_property_read_u32_array(endpoint, "data-lanes",
> +					 data_lanes, DATA_LANES_COUNT);
> +	if (ret)
> +		return  -EINVAL;
> +
> +	mhdp->lane_mapping  = 0;
> +	for (i = 0; i < DATA_LANES_COUNT; i++) {
> +		lane_value = (data_lanes[i] >= 0 && data_lanes[i] <= 3) ? data_lanes[i] : 0;
> +		mhdp->lane_mapping |= lane_value << (i * 2);
> +	}
> +
> +	return true;
> +}
> +
> +static int cdns_mhdp8501_add_bridge(struct cdns_mhdp8501_device *mhdp)
> +{
> +	mhdp->bridge.type = mhdp->connector_type;
> +	mhdp->bridge.driver_private = mhdp;
> +	mhdp->bridge.of_node = mhdp->dev->of_node;
> +	mhdp->bridge.vendor = "NXP";
> +	mhdp->bridge.product = "i.MX8";
> +	mhdp->bridge.ops = DRM_BRIDGE_OP_DETECT | DRM_BRIDGE_OP_EDID |
> +			   DRM_BRIDGE_OP_HPD;
> +
> +	if (mhdp->connector_type == DRM_MODE_CONNECTOR_HDMIA) {
> +		mhdp->bridge.funcs = &cdns_hdmi_bridge_funcs;
> +		mhdp->bridge.ops |= DRM_BRIDGE_OP_HDMI;
> +		mhdp->bridge.ddc = cdns_hdmi_i2c_adapter(mhdp);

I'd expect that bridge.ddc provides DDC service. Is it required to
control the SCDC from userspace?

> +	} else if (mhdp->connector_type == DRM_MODE_CONNECTOR_DisplayPort) {
> +		mhdp->bridge.funcs = &cdns_dp_bridge_funcs;
> +	} else {
> +		dev_err(mhdp->dev, "Unsupported connector type!\n");
> +		return -EINVAL;
> +	}
> +
> +	drm_bridge_add(&mhdp->bridge);
> +
> +	return 0;
> +}
> +
> +static int cdns_mhdp8501_probe(struct platform_device *pdev)
> +{
> +	struct device *dev = &pdev->dev;
> +	struct cdns_mhdp8501_device *mhdp;
> +	struct resource *res;
> +	enum phy_mode phy_mode;
> +	u32 reg;
> +	int ret;
> +
> +	mhdp = devm_kzalloc(dev, sizeof(*mhdp), GFP_KERNEL);
> +	if (!mhdp)
> +		return -ENOMEM;
> +
> +	mhdp->dev = dev;
> +
> +	INIT_DELAYED_WORK(&mhdp->hotplug_work, hotplug_work_func);
> +
> +	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> +	if (!res)
> +		return -ENODEV;
> +
> +	mhdp->regs = devm_ioremap(dev, res->start, resource_size(res));
> +	if (IS_ERR(mhdp->regs))
> +		return PTR_ERR(mhdp->regs);
> +
> +	cdns_mhdp8501_create_device_files(mhdp);
> +
> +	ret = cdns_mhdp8501_dt_parse(mhdp, pdev);
> +	if (ret < 0)
> +		return -EINVAL;
> +
> +	mhdp->phy = devm_of_phy_get_by_index(dev, pdev->dev.of_node, 0);
> +	if (IS_ERR(mhdp->phy))
> +		return dev_err_probe(dev, PTR_ERR(mhdp->phy), "no PHY configured\n");
> +
> +	mhdp->irq[IRQ_IN] = platform_get_irq_byname(pdev, "plug_in");
> +	if (mhdp->irq[IRQ_IN] < 0)
> +		return dev_err_probe(dev, mhdp->irq[IRQ_IN], "No plug_in irq number\n");
> +
> +	mhdp->irq[IRQ_OUT] = platform_get_irq_byname(pdev, "plug_out");
> +	if (mhdp->irq[IRQ_OUT] < 0)
> +		return dev_err_probe(dev, mhdp->irq[IRQ_OUT], "No plug_out irq number\n");
> +
> +	irq_set_status_flags(mhdp->irq[IRQ_IN], IRQ_NOAUTOEN);
> +	ret = devm_request_threaded_irq(dev, mhdp->irq[IRQ_IN],
> +					NULL, cdns_mhdp8501_irq_thread,
> +					IRQF_ONESHOT, dev_name(dev), mhdp);
> +	if (ret < 0) {
> +		dev_err(dev, "can't claim irq %d\n", mhdp->irq[IRQ_IN]);
> +		return -EINVAL;
> +	}
> +
> +	irq_set_status_flags(mhdp->irq[IRQ_OUT], IRQ_NOAUTOEN);
> +	ret = devm_request_threaded_irq(dev, mhdp->irq[IRQ_OUT],
> +					NULL, cdns_mhdp8501_irq_thread,
> +					IRQF_ONESHOT, dev_name(dev), mhdp);
> +	if (ret < 0) {
> +		dev_err(dev, "can't claim irq %d\n", mhdp->irq[IRQ_OUT]);
> +		return -EINVAL;
> +	}
> +
> +	/* cdns_mhdp8501_dt_parse() ensures connector_type is valid */
> +	if (mhdp->connector_type == DRM_MODE_CONNECTOR_DisplayPort)
> +		phy_mode = PHY_MODE_DP;
> +	else if (mhdp->connector_type == DRM_MODE_CONNECTOR_HDMIA)
> +		phy_mode = PHY_MODE_HDMI;
> +
> +	dev_set_drvdata(dev, mhdp);
> +
> +	/* init base struct for access mhdp mailbox */
> +	mhdp->base.dev = mhdp->dev;
> +	mhdp->base.regs = mhdp->regs;
> +
> +	if (mhdp->connector_type == DRM_MODE_CONNECTOR_DisplayPort) {
> +		drm_dp_aux_init(&mhdp->dp.aux);
> +		mhdp->dp.aux.name = "mhdp8501_dp_aux";
> +		mhdp->dp.aux.dev = dev;
> +		mhdp->dp.aux.transfer = cdns_dp_aux_transfer;
> +	}
> +
> +	/* Enable APB clock */
> +	mhdp->apb_clk = devm_clk_get_enabled(dev, NULL);
> +	if (IS_ERR(mhdp->apb_clk))
> +		return dev_err_probe(dev, PTR_ERR(mhdp->apb_clk),
> +				     "couldn't get apb clk\n");
> +	/*
> +	 * Wait for the KEEP_ALIVE "message" on the first 8 bits.
> +	 * Updated each sched "tick" (~2ms)
> +	 */
> +	ret = readl_poll_timeout(mhdp->regs + KEEP_ALIVE, reg,
> +				 reg & CDNS_KEEP_ALIVE_MASK, 500,
> +				 CDNS_KEEP_ALIVE_TIMEOUT);
> +	if (ret) {
> +		dev_err(dev, "device didn't give any life sign: reg %d\n", reg);
> +		return ret;
> +	}
> +
> +	ret = phy_init(mhdp->phy);
> +	if (ret) {
> +		dev_err(dev, "Failed to initialize PHY: %d\n", ret);
> +		return ret;
> +	}
> +
> +	ret = phy_set_mode(mhdp->phy, phy_mode);
> +	if (ret) {
> +		dev_err(dev, "Failed to configure PHY: %d\n", ret);
> +		return ret;
> +	}
> +
> +	/* Enable cable hotplug detect */
> +	if (cdns_mhdp8501_read_hpd(mhdp))
> +		enable_irq(mhdp->irq[IRQ_OUT]);
> +	else
> +		enable_irq(mhdp->irq[IRQ_IN]);
> +
> +	return cdns_mhdp8501_add_bridge(mhdp);
> +}
> +
> +static void cdns_mhdp8501_remove(struct platform_device *pdev)
> +{
> +	struct cdns_mhdp8501_device *mhdp = platform_get_drvdata(pdev);
> +
> +	cdns_mhdp8501_remove_device_files(mhdp);
> +
> +	if (mhdp->connector_type == DRM_MODE_CONNECTOR_DisplayPort)
> +		cdns_dp_aux_destroy(mhdp);
> +
> +	drm_bridge_remove(&mhdp->bridge);
> +}
> +
> +static const struct of_device_id cdns_mhdp8501_dt_ids[] = {
> +	{ .compatible = "fsl,imx8mq-mhdp8501",
> +	},

Strange line wrapping, I'd say. Either it should all be on the same
line, or take three lines.

> +	{ },
> +};
> +MODULE_DEVICE_TABLE(of, cdns_mhdp8501_dt_ids);
> +
> +static struct platform_driver cdns_mhdp8501_driver = {
> +	.probe = cdns_mhdp8501_probe,
> +	.remove = cdns_mhdp8501_remove,
> +	.driver = {
> +		.name = "cdns-mhdp8501",
> +		.of_match_table = cdns_mhdp8501_dt_ids,
> +	},
> +};
> +
> +module_platform_driver(cdns_mhdp8501_driver);
> +
> +MODULE_AUTHOR("Sandor Yu <sandor.yu@nxp.com>");
> +MODULE_DESCRIPTION("Cadence MHDP8501 bridge driver");
> +MODULE_LICENSE("GPL");
> diff --git a/drivers/gpu/drm/bridge/cadence/cdns-mhdp8501-core.h b/drivers/gpu/drm/bridge/cadence/cdns-mhdp8501-core.h
> new file mode 100644
> index 0000000000000..8fc463098ab84
> --- /dev/null
> +++ b/drivers/gpu/drm/bridge/cadence/cdns-mhdp8501-core.h
> @@ -0,0 +1,380 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * Cadence MHDP 8501 Common head file
> + *
> + * Copyright (C) 2019-2024 NXP Semiconductor, Inc.
> + *
> + */
> +
> +#ifndef _CDNS_MHDP8501_CORE_H_
> +#define _CDNS_MHDP8501_CORE_H_
> +
> +#include <drm/drm_bridge.h>
> +#include <drm/drm_connector.h>
> +#include <drm/display/drm_dp_helper.h>
> +#include <linux/bitops.h>
> +#include <linux/i2c.h>
> +#include <soc/cadence/cdns-mhdp-helper.h>
> +
> +#define ADDR_IMEM			0x10000
> +#define ADDR_DMEM			0x20000
> +
> +/* APB CFG addr */
> +#define APB_CTRL			0
> +#define XT_INT_CTRL			0x04
> +#define MAILBOX_FULL_ADDR		0x08
> +#define MAILBOX_EMPTY_ADDR		0x0c
> +#define MAILBOX0_WR_DATA		0x10
> +#define MAILBOX0_RD_DATA		0x14
> +#define KEEP_ALIVE			0x18
> +#define VER_L				0x1c
> +#define VER_H				0x20
> +#define VER_LIB_L_ADDR			0x24
> +#define VER_LIB_H_ADDR			0x28
> +#define SW_DEBUG_L			0x2c
> +#define SW_DEBUG_H			0x30
> +#define MAILBOX_INT_MASK		0x34
> +#define MAILBOX_INT_STATUS		0x38
> +#define SW_CLK_L			0x3c
> +#define SW_CLK_H			0x40
> +#define SW_EVENTS0			0x44
> +#define SW_EVENTS1			0x48
> +#define SW_EVENTS2			0x4c
> +#define SW_EVENTS3			0x50
> +#define XT_OCD_CTRL			0x60
> +#define APB_INT_MASK			0x6c
> +#define APB_STATUS_MASK			0x70
> +
> +/* Source phy comp */
> +#define PHY_DATA_SEL			0x0818
> +#define LANES_CONFIG			0x0814
> +
> +/* Source CAR Addr */
> +#define SOURCE_HDTX_CAR			0x0900
> +#define SOURCE_DPTX_CAR			0x0904
> +#define SOURCE_PHY_CAR			0x0908
> +#define SOURCE_CEC_CAR			0x090c
> +#define SOURCE_CBUS_CAR			0x0910
> +#define SOURCE_PKT_CAR			0x0918
> +#define SOURCE_AIF_CAR			0x091c
> +#define SOURCE_CIPHER_CAR		0x0920
> +#define SOURCE_CRYPTO_CAR		0x0924
> +
> +/* clock meters addr */
> +#define CM_CTRL				0x0a00
> +#define CM_I2S_CTRL			0x0a04
> +#define CM_SPDIF_CTRL			0x0a08
> +#define CM_VID_CTRL			0x0a0c
> +#define CM_LANE_CTRL			0x0a10
> +#define I2S_NM_STABLE			0x0a14
> +#define I2S_NCTS_STABLE			0x0a18
> +#define SPDIF_NM_STABLE			0x0a1c
> +#define SPDIF_NCTS_STABLE		0x0a20
> +#define NMVID_MEAS_STABLE		0x0a24
> +#define I2S_MEAS			0x0a40
> +#define SPDIF_MEAS			0x0a80
> +#define NMVID_MEAS			0x0ac0
> +
> +/* source vif addr */
> +#define BND_HSYNC2VSYNC			0x0b00
> +#define HSYNC2VSYNC_F1_L1		0x0b04
> +#define HSYNC2VSYNC_STATUS		0x0b0c
> +#define HSYNC2VSYNC_POL_CTRL		0x0b10
> +
> +/* MHDP TX_top_comp */
> +#define SCHEDULER_H_SIZE		0x1000
> +#define SCHEDULER_V_SIZE		0x1004
> +#define HDTX_SIGNAL_FRONT_WIDTH		0x100c
> +#define HDTX_SIGNAL_SYNC_WIDTH		0x1010
> +#define HDTX_SIGNAL_BACK_WIDTH		0x1014
> +#define HDTX_CONTROLLER			0x1018
> +#define HDTX_HPD			0x1020
> +#define HDTX_CLOCK_REG_0		0x1024
> +#define HDTX_CLOCK_REG_1		0x1028
> +
> +/* DPTX hpd addr */
> +#define HPD_IRQ_DET_MIN_TIMER		0x2100
> +#define HPD_IRQ_DET_MAX_TIMER		0x2104
> +#define HPD_UNPLGED_DET_MIN_TIMER	0x2108
> +#define HPD_STABLE_TIMER		0x210c
> +#define HPD_FILTER_TIMER		0x2110
> +#define HPD_EVENT_MASK			0x211c
> +#define HPD_EVENT_DET			0x2120
> +
> +/* DPTX framer addr */
> +#define DP_FRAMER_GLOBAL_CONFIG		0x2200
> +#define DP_SW_RESET			0x2204
> +#define DP_FRAMER_TU			0x2208
> +#define DP_FRAMER_PXL_REPR		0x220c
> +#define DP_FRAMER_SP			0x2210
> +#define AUDIO_PACK_CONTROL		0x2214
> +#define DP_VC_TABLE(x)			(0x2218 + ((x) << 2))
> +#define DP_VB_ID			0x2258
> +#define DP_MTPH_LVP_CONTROL		0x225c
> +#define DP_MTPH_SYMBOL_VALUES		0x2260
> +#define DP_MTPH_ECF_CONTROL		0x2264
> +#define DP_MTPH_ACT_CONTROL		0x2268
> +#define DP_MTPH_STATUS			0x226c
> +#define DP_INTERRUPT_SOURCE		0x2270
> +#define DP_INTERRUPT_MASK		0x2274
> +#define DP_FRONT_BACK_PORCH		0x2278
> +#define DP_BYTE_COUNT			0x227c
> +
> +/* DPTX stream addr */
> +#define MSA_HORIZONTAL_0		0x2280
> +#define MSA_HORIZONTAL_1		0x2284
> +#define MSA_VERTICAL_0			0x2288
> +#define MSA_VERTICAL_1			0x228c
> +#define MSA_MISC			0x2290
> +#define STREAM_CONFIG			0x2294
> +#define AUDIO_PACK_STATUS		0x2298
> +#define VIF_STATUS			0x229c
> +#define PCK_STUFF_STATUS_0		0x22a0
> +#define PCK_STUFF_STATUS_1		0x22a4
> +#define INFO_PACK_STATUS		0x22a8
> +#define RATE_GOVERNOR_STATUS		0x22ac
> +#define DP_HORIZONTAL			0x22b0
> +#define DP_VERTICAL_0			0x22b4
> +#define DP_VERTICAL_1			0x22b8
> +#define DP_BLOCK_SDP			0x22bc
> +
> +/* DPTX glbl addr */
> +#define DPTX_LANE_EN			0x2300
> +#define DPTX_ENHNCD			0x2304
> +#define DPTX_INT_MASK			0x2308
> +#define DPTX_INT_STATUS			0x230c
> +
> +/* DP AUX Addr */
> +#define DP_AUX_HOST_CONTROL		0x2800
> +#define DP_AUX_INTERRUPT_SOURCE		0x2804
> +#define DP_AUX_INTERRUPT_MASK		0x2808
> +#define DP_AUX_SWAP_INVERSION_CONTROL	0x280c
> +#define DP_AUX_SEND_NACK_TRANSACTION	0x2810
> +#define DP_AUX_CLEAR_RX			0x2814
> +#define DP_AUX_CLEAR_TX			0x2818
> +#define DP_AUX_TIMER_STOP		0x281c
> +#define DP_AUX_TIMER_CLEAR		0x2820
> +#define DP_AUX_RESET_SW			0x2824
> +#define DP_AUX_DIVIDE_2M		0x2828
> +#define DP_AUX_TX_PREACHARGE_LENGTH	0x282c
> +#define DP_AUX_FREQUENCY_1M_MAX		0x2830
> +#define DP_AUX_FREQUENCY_1M_MIN		0x2834
> +#define DP_AUX_RX_PRE_MIN		0x2838
> +#define DP_AUX_RX_PRE_MAX		0x283c
> +#define DP_AUX_TIMER_PRESET		0x2840
> +#define DP_AUX_NACK_FORMAT		0x2844
> +#define DP_AUX_TX_DATA			0x2848
> +#define DP_AUX_RX_DATA			0x284c
> +#define DP_AUX_TX_STATUS		0x2850
> +#define DP_AUX_RX_STATUS		0x2854
> +#define DP_AUX_RX_CYCLE_COUNTER		0x2858
> +#define DP_AUX_MAIN_STATES		0x285c
> +#define DP_AUX_MAIN_TIMER		0x2860
> +#define DP_AUX_AFE_OUT			0x2864
> +
> +/* source pif addr */
> +#define SOURCE_PIF_WR_ADDR		0x30800
> +#define SOURCE_PIF_WR_REQ		0x30804
> +#define SOURCE_PIF_RD_ADDR		0x30808
> +#define SOURCE_PIF_RD_REQ		0x3080c
> +#define SOURCE_PIF_DATA_WR		0x30810
> +#define SOURCE_PIF_DATA_RD		0x30814
> +#define SOURCE_PIF_FIFO1_FLUSH		0x30818
> +#define SOURCE_PIF_FIFO2_FLUSH		0x3081c
> +#define SOURCE_PIF_STATUS		0x30820
> +#define SOURCE_PIF_INTERRUPT_SOURCE	0x30824
> +#define SOURCE_PIF_INTERRUPT_MASK	0x30828
> +#define SOURCE_PIF_PKT_ALLOC_REG	0x3082c
> +#define SOURCE_PIF_PKT_ALLOC_WR_EN	0x30830
> +#define SOURCE_PIF_SW_RESET		0x30834
> +
> +#define LINK_TRAINING_NOT_ACTIV		0
> +#define LINK_TRAINING_RUN		1
> +#define LINK_TRAINING_RESTART		2
> +
> +#define CONTROL_VIDEO_IDLE		0
> +#define CONTROL_VIDEO_VALID		1
> +
> +#define INTERLACE_FMT_DET		BIT(12)
> +#define VIF_BYPASS_INTERLACE		BIT(13)
> +#define TU_CNT_RST_EN			BIT(15)
> +#define INTERLACE_DTCT_WIN		0x20
> +
> +#define DP_FRAMER_SP_INTERLACE_EN	BIT(2)
> +#define DP_FRAMER_SP_HSP		BIT(1)
> +#define DP_FRAMER_SP_VSP		BIT(0)
> +
> +/* Capability */
> +#define AUX_HOST_INVERT			3
> +#define FAST_LT_SUPPORT			1
> +#define FAST_LT_NOT_SUPPORT		0
> +#define LANE_MAPPING_FLIPPED		0xe4
> +#define ENHANCED			1
> +#define SCRAMBLER_EN			BIT(4)
> +
> +#define FULL_LT_STARTED			BIT(0)
> +#define FASE_LT_STARTED			BIT(1)
> +#define CLK_RECOVERY_FINISHED		BIT(2)
> +#define EQ_PHASE_FINISHED		BIT(3)
> +#define FASE_LT_START_FINISHED		BIT(4)
> +#define CLK_RECOVERY_FAILED		BIT(5)
> +#define EQ_PHASE_FAILED			BIT(6)
> +#define FASE_LT_FAILED			BIT(7)
> +
> +#define TU_SIZE				30
> +#define CDNS_DP_MAX_LINK_RATE		540000
> +
> +#define F_HDMI2_CTRL_IL_MODE(x)		(((x) & ((1 << 1) - 1)) << 19)
> +#define F_HDMI2_PREAMBLE_EN(x)		(((x) & ((1 << 1) - 1)) << 18)
> +#define F_HDMI_ENCODING(x)		(((x) & ((1 << 2) - 1)) << 16)
> +#define F_DATA_EN(x)			(((x) & ((1 << 1) - 1)) << 15)
> +#define F_CLEAR_AVMUTE(x)		(((x) & ((1 << 1) - 1)) << 14)
> +#define F_SET_AVMUTE(x)			(((x) & ((1 << 1) - 1)) << 13)
> +#define F_GCP_EN(x)			(((x) & ((1 << 1) - 1)) << 12)
> +#define F_BCH_EN(x)			(((x) & ((1 << 1) - 1)) << 11)
> +#define F_PIC_3D(x)			(((x) & ((1 << 4) - 1)) << 7)
> +#define F_VIF_DATA_WIDTH(x)		(((x) & ((1 << 2) - 1)) << 2)
> +#define F_HDMI_MODE(x)			(((x) & ((1 << 2) - 1)) << 0)
> +
> +#define F_SOURCE_PHY_MHDP_SEL(x)	(((x) & ((1 << 2) - 1)) << 3)
> +
> +#define F_HPD_GLITCH_WIDTH(x)		(((x) & ((1 << 8) - 1)) << 12)
> +#define F_PACKET_TYPE(x)		(((x) & ((1 << 8) - 1)) << 8)
> +#define F_HPD_VALID_WIDTH(x)		(((x) & ((1 << 12) - 1)) << 0)
> +
> +#define F_SOURCE_PHY_LANE3_SWAP(x)	(((x) & ((1 << 2) - 1)) << 6)
> +#define F_SOURCE_PHY_LANE2_SWAP(x)	(((x) & ((1 << 2) - 1)) << 4)
> +#define F_SOURCE_PHY_LANE1_SWAP(x)	(((x) & ((1 << 2) - 1)) << 2)
> +#define F_SOURCE_PHY_LANE0_SWAP(x)	(((x) & ((1 << 2) - 1)) << 0)
> +
> +#define F_ACTIVE_IDLE_TYPE(x)		(((x) & ((1 << 1) - 1)) << 17)
> +#define F_TYPE_VALID(x)			(((x) & ((1 << 1) - 1)) << 16)
> +#define F_PKT_ALLOC_ADDRESS(x)		(((x) & ((1 << 4) - 1)) << 0)
> +
> +#define F_FIFO1_FLUSH(x)		(((x) & ((1 << 1) - 1)) << 0)
> +#define F_PKT_ALLOC_WR_EN(x)		(((x) & ((1 << 1) - 1)) << 0)
> +#define F_DATA_WR(x)			(x)
> +#define F_WR_ADDR(x)			(((x) & ((1 << 4) - 1)) << 0)
> +#define F_HOST_WR(x)			(((x) & ((1 << 1) - 1)) << 0)
> +
> +/* Reference cycles when using lane clock as reference */
> +#define LANE_REF_CYC			0x8000
> +
> +/* HPD Debounce */
> +#define HOTPLUG_DEBOUNCE_MS		200
> +
> +/* HPD IRQ Index */
> +#define IRQ_IN    0
> +#define IRQ_OUT   1
> +#define IRQ_NUM   2
> +
> +/* FW check alive timeout */
> +#define CDNS_KEEP_ALIVE_TIMEOUT		2000
> +#define CDNS_KEEP_ALIVE_MASK		GENMASK(7, 0)
> +
> +enum voltage_swing_level {
> +	VOLTAGE_LEVEL_0,
> +	VOLTAGE_LEVEL_1,
> +	VOLTAGE_LEVEL_2,
> +	VOLTAGE_LEVEL_3,
> +};
> +
> +enum pre_emphasis_level {
> +	PRE_EMPHASIS_LEVEL_0,
> +	PRE_EMPHASIS_LEVEL_1,
> +	PRE_EMPHASIS_LEVEL_2,
> +	PRE_EMPHASIS_LEVEL_3,
> +};
> +
> +enum pattern_set {
> +	PTS1 = BIT(0),
> +	PTS2 = BIT(1),
> +	PTS3 = BIT(2),
> +	PTS4 = BIT(3),
> +	DP_NONE	= BIT(4)
> +};
> +
> +enum vic_color_depth {
> +	BCS_6 = 0x1,
> +	BCS_8 = 0x2,
> +	BCS_10 = 0x4,
> +	BCS_12 = 0x8,
> +	BCS_16 = 0x10,
> +};
> +
> +enum vic_bt_type {
> +	BT_601 = 0x0,
> +	BT_709 = 0x1,
> +};
> +
> +enum {
> +	MODE_DVI,
> +	MODE_HDMI_1_4,
> +	MODE_HDMI_2_0,
> +};
> +
> +struct video_info {
> +	int bpc;
> +	int color_fmt;
> +};
> +
> +struct cdns_hdmi_i2c {
> +	struct i2c_adapter	adap;
> +
> +	struct mutex		lock;	/* used to serialize data transfers */
> +	struct completion	cmp;
> +	u8			stat;
> +
> +	u8			slave_reg;
> +	bool			is_regaddr;
> +	bool			is_segment;
> +};
> +
> +struct cdns_mhdp8501_device {
> +	struct cdns_mhdp_base base;
> +
> +	struct device *dev;
> +	void __iomem *regs;
> +	struct drm_connector *curr_conn;
> +	struct drm_bridge bridge;
> +	struct clk *apb_clk;
> +	struct phy *phy;
> +
> +	struct video_info video_info;
> +
> +	int irq[IRQ_NUM];
> +	struct delayed_work hotplug_work;
> +	int connector_type;
> +	u32 lane_mapping;
> +
> +	union {
> +		struct _dp_data {
> +			u32 rate;
> +			u8 num_lanes;
> +			struct drm_dp_aux aux;
> +			u8 dpcd[DP_RECEIVER_CAP_SIZE];
> +		} dp;
> +		struct _hdmi_data {
> +			u32 hdmi_type;
> +			struct cdns_hdmi_i2c *i2c;
> +		} hdmi;
> +	};
> +};
> +
> +extern const struct drm_bridge_funcs cdns_dp_bridge_funcs;
> +extern const struct drm_bridge_funcs cdns_hdmi_bridge_funcs;
> +
> +enum drm_connector_status
> +cdns_mhdp8501_detect(struct drm_bridge *bridge);
> +enum drm_mode_status
> +cdns_mhdp8501_mode_valid(struct drm_bridge *bridge,
> +			 const struct drm_display_info *info,
> +			 const struct drm_display_mode *mode);
> +
> +ssize_t cdns_dp_aux_transfer(struct drm_dp_aux *aux, struct drm_dp_aux_msg *msg);
> +int cdns_dp_aux_destroy(struct cdns_mhdp8501_device *mhdp);
> +void cdns_dp_check_link_state(struct cdns_mhdp8501_device *mhdp);
> +
> +void cdns_hdmi_handle_hotplug(struct cdns_mhdp8501_device *mhdp);
> +struct i2c_adapter *cdns_hdmi_i2c_adapter(struct cdns_mhdp8501_device *mhdp);
> +#endif
> diff --git a/drivers/gpu/drm/bridge/cadence/cdns-mhdp8501-dp.c b/drivers/gpu/drm/bridge/cadence/cdns-mhdp8501-dp.c
> new file mode 100644
> index 0000000000000..157b4d44b9e2b
> --- /dev/null
> +++ b/drivers/gpu/drm/bridge/cadence/cdns-mhdp8501-dp.c
> @@ -0,0 +1,694 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Cadence MHDP8501 DisplayPort(DP) bridge driver
> + *
> + * Copyright (C) 2019-2024 NXP Semiconductor, Inc.
> + *
> + */
> +#include <drm/drm_atomic_helper.h>
> +#include <drm/drm_edid.h>
> +#include <drm/drm_print.h>
> +#include <linux/media-bus-format.h>
> +#include <linux/phy/phy.h>
> +#include <linux/phy/phy-dp.h>
> +
> +#include "cdns-mhdp8501-core.h"
> +
> +#define LINK_TRAINING_TIMEOUT_MS	500
> +#define LINK_TRAINING_RETRY_MS		20
> +
> +ssize_t cdns_dp_aux_transfer(struct drm_dp_aux *aux,
> +			     struct drm_dp_aux_msg *msg)
> +{
> +	struct cdns_mhdp8501_device *mhdp = dev_get_drvdata(aux->dev);
> +	bool native = msg->request & (DP_AUX_NATIVE_WRITE & DP_AUX_NATIVE_READ);
> +	int ret;
> +
> +	/* Ignore address only message */
> +	if (!msg->size || !msg->buffer) {
> +		msg->reply = native ?
> +			DP_AUX_NATIVE_REPLY_ACK : DP_AUX_I2C_REPLY_ACK;
> +		return msg->size;
> +	}
> +
> +	if (!native) {
> +		dev_err(mhdp->dev, "%s: only native messages supported\n", __func__);
> +		return -EINVAL;
> +	}
> +
> +	/* msg sanity check */
> +	if (msg->size > DP_AUX_MAX_PAYLOAD_BYTES) {
> +		dev_err(mhdp->dev, "%s: invalid msg: size(%zu), request(%x)\n",
> +			__func__, msg->size, (unsigned int)msg->request);
> +		return -EINVAL;
> +	}
> +
> +	if (msg->request == DP_AUX_NATIVE_WRITE) {
> +		const u8 *buf = msg->buffer;
> +		int i;
> +
> +		for (i = 0; i < msg->size; ++i) {
> +			ret = cdns_mhdp_dpcd_write(&mhdp->base,
> +						   msg->address + i, buf[i]);
> +			if (ret < 0) {
> +				dev_err(mhdp->dev, "Failed to write DPCD\n");
> +				return ret;
> +			}
> +		}
> +		msg->reply = DP_AUX_NATIVE_REPLY_ACK;
> +		return msg->size;
> +	}
> +
> +	if (msg->request == DP_AUX_NATIVE_READ) {
> +		ret = cdns_mhdp_dpcd_read(&mhdp->base, msg->address,
> +					  msg->buffer, msg->size);
> +		if (ret < 0)
> +			return ret;
> +		msg->reply = DP_AUX_NATIVE_REPLY_ACK;
> +		return msg->size;
> +	}
> +	return 0;
> +}
> +
> +int cdns_dp_aux_destroy(struct cdns_mhdp8501_device *mhdp)
> +{
> +	drm_dp_aux_unregister(&mhdp->dp.aux);
> +
> +	return 0;
> +}
> +
> +static int cdns_dp_get_msa_misc(struct video_info *video)
> +{
> +	u32 msa_misc;
> +	u8 color_space = 0;
> +	u8 bpc = 0;
> +
> +	switch (video->color_fmt) {
> +	/* set YUV default color space conversion to BT601 */
> +	case DRM_COLOR_FORMAT_YCBCR444:
> +		color_space = 6 + BT_601 * 8;
> +		break;
> +	case DRM_COLOR_FORMAT_YCBCR422:
> +		color_space = 5 + BT_601 * 8;
> +		break;
> +	case DRM_COLOR_FORMAT_YCBCR420:
> +		color_space = 5;
> +		break;
> +	case DRM_COLOR_FORMAT_RGB444:
> +	default:
> +		color_space = 0;
> +		break;
> +	};
> +
> +	switch (video->bpc) {
> +	case 6:
> +		bpc = 0;
> +		break;
> +	case 10:
> +		bpc = 2;
> +		break;
> +	case 12:
> +		bpc = 3;
> +		break;
> +	case 16:
> +		bpc = 4;
> +		break;
> +	case 8:
> +	default:
> +		bpc = 1;
> +		break;
> +	};
> +
> +	msa_misc = (bpc << 5) | (color_space << 1);
> +
> +	return msa_misc;
> +}
> +
> +static int cdns_dp_config_video(struct cdns_mhdp8501_device *mhdp,
> +				const struct drm_display_mode *mode)
> +{
> +	struct video_info *video = &mhdp->video_info;
> +	bool h_sync_polarity, v_sync_polarity;
> +	u64 symbol;
> +	u32 val, link_rate, rem;
> +	u8 bit_per_pix, tu_size_reg = TU_SIZE;
> +	int ret;
> +
> +	bit_per_pix = (video->color_fmt == DRM_COLOR_FORMAT_YCBCR422) ?
> +		      (video->bpc * 2) : (video->bpc * 3);
> +
> +	link_rate = mhdp->dp.rate / 1000;
> +
> +	ret = cdns_mhdp_reg_write(&mhdp->base, BND_HSYNC2VSYNC, VIF_BYPASS_INTERLACE);
> +	if (ret)
> +		goto err_config_video;
> +
> +	ret = cdns_mhdp_reg_write(&mhdp->base, HSYNC2VSYNC_POL_CTRL, 0);
> +	if (ret)
> +		goto err_config_video;
> +
> +	/*
> +	 * get a best tu_size and valid symbol:
> +	 * 1. chose Lclk freq(162Mhz, 270Mhz, 540Mhz), set TU to 32
> +	 * 2. calculate VS(valid symbol) = TU * Pclk * Bpp / (Lclk * Lanes)
> +	 * 3. if VS > *.85 or VS < *.1 or VS < 2 or TU < VS + 4, then set
> +	 *    TU += 2 and repeat 2nd step.
> +	 */
> +	do {
> +		tu_size_reg += 2;
> +		symbol = tu_size_reg * mode->clock * bit_per_pix;
> +		do_div(symbol, mhdp->dp.num_lanes * link_rate * 8);
> +		rem = do_div(symbol, 1000);
> +		if (tu_size_reg > 64) {
> +			ret = -EINVAL;
> +			dev_err(mhdp->dev, "tu error, clk:%d, lanes:%d, rate:%d\n",
> +				mode->clock, mhdp->dp.num_lanes, link_rate);
> +			goto err_config_video;
> +		}
> +	} while ((symbol <= 1) || (tu_size_reg - symbol < 4) ||
> +		 (rem > 850) || (rem < 100));
> +
> +	val = symbol + (tu_size_reg << 8);
> +	val |= TU_CNT_RST_EN;
> +	ret = cdns_mhdp_reg_write(&mhdp->base, DP_FRAMER_TU, val);
> +	if (ret)
> +		goto err_config_video;
> +
> +	/* set the FIFO Buffer size */
> +	val = div_u64(mode->clock * (symbol + 1), 1000) + link_rate;
> +	val /= (mhdp->dp.num_lanes * link_rate);
> +	val = div_u64(8 * (symbol + 1), bit_per_pix) - val;
> +	val += 2;
> +	ret = cdns_mhdp_reg_write(&mhdp->base, DP_VC_TABLE(15), val);
> +
> +	switch (video->bpc) {
> +	case 6:
> +		val = BCS_6;
> +		break;
> +	case 10:
> +		val = BCS_10;
> +		break;
> +	case 12:
> +		val = BCS_12;
> +		break;
> +	case 16:
> +		val = BCS_16;
> +		break;
> +	case 8:
> +	default:
> +		val = BCS_8;
> +		break;
> +	};
> +
> +	val += video->color_fmt << 8;
> +	ret = cdns_mhdp_reg_write(&mhdp->base, DP_FRAMER_PXL_REPR, val);
> +	if (ret)
> +		goto err_config_video;
> +
> +	v_sync_polarity = !!(mode->flags & DRM_MODE_FLAG_NVSYNC);
> +	h_sync_polarity = !!(mode->flags & DRM_MODE_FLAG_NHSYNC);
> +
> +	val = h_sync_polarity ? DP_FRAMER_SP_HSP : 0;
> +	val |= v_sync_polarity ? DP_FRAMER_SP_VSP : 0;
> +	ret = cdns_mhdp_reg_write(&mhdp->base, DP_FRAMER_SP, val);
> +	if (ret)
> +		goto err_config_video;
> +
> +	val = (mode->hsync_start - mode->hdisplay) << 16;
> +	val |= mode->htotal - mode->hsync_end;
> +	ret = cdns_mhdp_reg_write(&mhdp->base, DP_FRONT_BACK_PORCH, val);
> +	if (ret)
> +		goto err_config_video;
> +
> +	val = mode->hdisplay * bit_per_pix / 8;
> +	ret = cdns_mhdp_reg_write(&mhdp->base, DP_BYTE_COUNT, val);
> +	if (ret)
> +		goto err_config_video;
> +
> +	val = mode->htotal | ((mode->htotal - mode->hsync_start) << 16);
> +	ret = cdns_mhdp_reg_write(&mhdp->base, MSA_HORIZONTAL_0, val);
> +	if (ret)
> +		goto err_config_video;
> +
> +	val = mode->hsync_end - mode->hsync_start;
> +	val |= (mode->hdisplay << 16) | (h_sync_polarity << 15);
> +	ret = cdns_mhdp_reg_write(&mhdp->base, MSA_HORIZONTAL_1, val);
> +	if (ret)
> +		goto err_config_video;
> +
> +	val = mode->vtotal;
> +	val |= (mode->vtotal - mode->vsync_start) << 16;
> +	ret = cdns_mhdp_reg_write(&mhdp->base, MSA_VERTICAL_0, val);
> +	if (ret)
> +		goto err_config_video;
> +
> +	val = mode->vsync_end - mode->vsync_start;
> +	val |= (mode->vdisplay << 16) | (v_sync_polarity << 15);
> +	ret = cdns_mhdp_reg_write(&mhdp->base, MSA_VERTICAL_1, val);
> +	if (ret)
> +		goto err_config_video;
> +
> +	val = cdns_dp_get_msa_misc(video);
> +	ret = cdns_mhdp_reg_write(&mhdp->base, MSA_MISC, val);
> +	if (ret)
> +		goto err_config_video;
> +
> +	ret = cdns_mhdp_reg_write(&mhdp->base, STREAM_CONFIG, 1);
> +	if (ret)
> +		goto err_config_video;
> +
> +	val = mode->hsync_end - mode->hsync_start;
> +	val |= mode->hdisplay << 16;
> +	ret = cdns_mhdp_reg_write(&mhdp->base, DP_HORIZONTAL, val);
> +	if (ret)
> +		goto err_config_video;
> +
> +	val = mode->vdisplay;
> +	val |= (mode->vtotal - mode->vsync_start) << 16;
> +	ret = cdns_mhdp_reg_write(&mhdp->base, DP_VERTICAL_0, val);
> +	if (ret)
> +		goto err_config_video;
> +
> +	val = mode->vtotal;
> +	ret = cdns_mhdp_reg_write(&mhdp->base, DP_VERTICAL_1, val);
> +	if (ret)
> +		goto err_config_video;
> +
> +	ret = cdns_mhdp_dp_reg_write_bit(&mhdp->base, DP_VB_ID, 2, 1, 0);
> +
> +err_config_video:
> +	if (ret)
> +		dev_err(mhdp->dev, "config video failed: %d\n", ret);
> +	return ret;
> +}
> +
> +static void cdns_dp_pixel_clk_reset(struct cdns_mhdp8501_device *mhdp)
> +{
> +	u32 val;
> +
> +	/* reset pixel clk */
> +	cdns_mhdp_reg_read(&mhdp->base, SOURCE_HDTX_CAR, &val);
> +	cdns_mhdp_reg_write(&mhdp->base, SOURCE_HDTX_CAR, val & 0xFD);
> +	cdns_mhdp_reg_write(&mhdp->base, SOURCE_HDTX_CAR, val);
> +}
> +
> +static int cdns_dp_set_video_status(struct cdns_mhdp8501_device *mhdp, int active)
> +{
> +	u8 msg;
> +	int ret;
> +
> +	msg = !!active;
> +
> +	ret = cdns_mhdp_mailbox_send(&mhdp->base, MB_MODULE_ID_DP_TX,
> +				     DPTX_SET_VIDEO, sizeof(msg), &msg);
> +	if (ret)
> +		dev_err(mhdp->dev, "set video status failed: %d\n", ret);
> +
> +	return ret;
> +}
> +
> +static int cdns_dp_training_start(struct cdns_mhdp8501_device *mhdp)
> +{
> +	unsigned long timeout;
> +	u8 msg, event[2];
> +	int ret;
> +
> +	msg = LINK_TRAINING_RUN;
> +
> +	/* start training */
> +	ret = cdns_mhdp_mailbox_send(&mhdp->base, MB_MODULE_ID_DP_TX,
> +				     DPTX_TRAINING_CONTROL, sizeof(msg), &msg);
> +	if (ret)
> +		return ret;
> +
> +	timeout = jiffies + msecs_to_jiffies(LINK_TRAINING_TIMEOUT_MS);
> +	while (time_before(jiffies, timeout)) {
> +		msleep(LINK_TRAINING_RETRY_MS);
> +		ret = cdns_mhdp_mailbox_send_recv(&mhdp->base, MB_MODULE_ID_DP_TX,
> +						  DPTX_READ_EVENT,
> +						  0, NULL, sizeof(event), event);
> +		if (ret)
> +			return ret;
> +
> +		if (event[1] & CLK_RECOVERY_FAILED)
> +			dev_err(mhdp->dev, "clock recovery failed\n");
> +		else if (event[1] & EQ_PHASE_FINISHED)
> +			return 0;
> +	}
> +
> +	return -ETIMEDOUT;
> +}
> +
> +static int cdns_dp_get_training_status(struct cdns_mhdp8501_device *mhdp)
> +{
> +	u8 status[13];
> +	int ret;
> +
> +	ret = cdns_mhdp_mailbox_send_recv(&mhdp->base, MB_MODULE_ID_DP_TX,
> +					  DPTX_READ_LINK_STAT,
> +					  0, NULL, sizeof(status), status);
> +	if (ret)
> +		return ret;
> +
> +	mhdp->dp.rate = drm_dp_bw_code_to_link_rate(status[0]);
> +	mhdp->dp.num_lanes = status[1];
> +
> +	return ret;
> +}
> +
> +static int cdns_dp_train_link(struct cdns_mhdp8501_device *mhdp)
> +{
> +	int ret;
> +
> +	ret = cdns_dp_training_start(mhdp);
> +	if (ret) {
> +		dev_err(mhdp->dev, "Failed to start training %d\n", ret);
> +		return ret;
> +	}
> +
> +	ret = cdns_dp_get_training_status(mhdp);
> +	if (ret) {
> +		dev_err(mhdp->dev, "Failed to get training stat %d\n", ret);
> +		return ret;
> +	}
> +
> +	dev_dbg(mhdp->dev, "rate:0x%x, lanes:%d\n", mhdp->dp.rate,
> +		mhdp->dp.num_lanes);
> +	return ret;
> +}
> +
> +static int cdns_dp_set_host_cap(struct cdns_mhdp8501_device *mhdp)
> +{
> +	u8 msg[8];
> +	int ret;
> +
> +	msg[0] = drm_dp_link_rate_to_bw_code(mhdp->dp.rate);
> +	msg[1] = mhdp->dp.num_lanes | SCRAMBLER_EN;
> +	msg[2] = VOLTAGE_LEVEL_2;
> +	msg[3] = PRE_EMPHASIS_LEVEL_3;
> +	msg[4] = PTS1 | PTS2 | PTS3 | PTS4;
> +	msg[5] = FAST_LT_NOT_SUPPORT;
> +	msg[6] = mhdp->lane_mapping;
> +	msg[7] = ENHANCED;
> +
> +	ret = cdns_mhdp_mailbox_send(&mhdp->base, MB_MODULE_ID_DP_TX,
> +				     DPTX_SET_HOST_CAPABILITIES,
> +				     sizeof(msg), msg);
> +	if (ret)
> +		dev_err(mhdp->dev, "set host cap failed: %d\n", ret);
> +
> +	return ret;
> +}
> +
> +static int cdns_dp_get_edid_block(void *data, u8 *edid,
> +				  unsigned int block, size_t length)
> +{
> +	struct cdns_mhdp8501_device *mhdp = data;
> +	u8 msg[2], reg[2], i;
> +	int ret;
> +
> +	for (i = 0; i < 4; i++) {
> +		msg[0] = block / 2;
> +		msg[1] = block % 2;
> +
> +		ret = cdns_mhdp_mailbox_send_recv_multi(&mhdp->base,
> +							MB_MODULE_ID_DP_TX,
> +							DPTX_GET_EDID,
> +							sizeof(msg), msg,
> +							DPTX_GET_EDID,
> +							sizeof(reg), reg,
> +							length, edid);
> +		if (ret)
> +			continue;
> +
> +		if (reg[0] == length && reg[1] == block / 2)
> +			break;
> +	}
> +
> +	if (ret)
> +		dev_err(mhdp->dev, "get block[%d] edid failed: %d\n",
> +			block, ret);
> +
> +	return ret;
> +}
> +
> +static void cdns_dp_mode_set(struct cdns_mhdp8501_device *mhdp,
> +			     const struct drm_display_mode *mode)
> +{
> +	union phy_configure_opts phy_cfg;
> +	int ret;
> +
> +	cdns_dp_pixel_clk_reset(mhdp);
> +
> +	/* Get DP Caps  */
> +	ret = drm_dp_dpcd_read(&mhdp->dp.aux, DP_DPCD_REV, mhdp->dp.dpcd,
> +			       DP_RECEIVER_CAP_SIZE);
> +	if (ret < 0) {
> +		dev_err(mhdp->dev, "Failed to get caps %d\n", ret);
> +		return;
> +	}
> +
> +	mhdp->dp.rate = drm_dp_max_link_rate(mhdp->dp.dpcd);
> +	mhdp->dp.num_lanes = drm_dp_max_lane_count(mhdp->dp.dpcd);
> +
> +	/* check the max link rate */
> +	if (mhdp->dp.rate > CDNS_DP_MAX_LINK_RATE)
> +		mhdp->dp.rate = CDNS_DP_MAX_LINK_RATE;
> +
> +	phy_cfg.dp.lanes = mhdp->dp.num_lanes;
> +	phy_cfg.dp.link_rate = mhdp->dp.rate;
> +	phy_cfg.dp.set_lanes = false;
> +	phy_cfg.dp.set_rate = false;
> +	phy_cfg.dp.set_voltages = false;

If all of those are false, then you can skip setting .lanes and
.link_rate.

> +
> +	ret = phy_configure(mhdp->phy, &phy_cfg);
> +	if (ret) {
> +		dev_err(mhdp->dev, "%s: phy_configure() failed: %d\n",
> +			__func__, ret);
> +		return;
> +	}
> +
> +	/* Video off */
> +	ret = cdns_dp_set_video_status(mhdp, CONTROL_VIDEO_IDLE);
> +	if (ret) {
> +		dev_err(mhdp->dev, "Failed to valid video %d\n", ret);
> +		return;
> +	}
> +
> +	/* Line swapping */
> +	cdns_mhdp_reg_write(&mhdp->base, LANES_CONFIG, 0x00400000 | mhdp->lane_mapping);
> +
> +	/* Set DP host capability */
> +	ret = cdns_dp_set_host_cap(mhdp);
> +	if (ret) {
> +		dev_err(mhdp->dev, "Failed to set host cap %d\n", ret);
> +		return;
> +	}
> +
> +	ret = cdns_mhdp_reg_write(&mhdp->base, DP_AUX_SWAP_INVERSION_CONTROL,
> +				  AUX_HOST_INVERT);
> +	if (ret) {
> +		dev_err(mhdp->dev, "Failed to set host invert %d\n", ret);
> +		return;
> +	}
> +
> +	ret = cdns_dp_config_video(mhdp, mode);
> +	if (ret)
> +		dev_err(mhdp->dev, "Failed to config video %d\n", ret);
> +}
> +
> +static bool
> +cdns_dp_needs_link_retrain(struct cdns_mhdp8501_device *mhdp)
> +{
> +	u8 link_status[DP_LINK_STATUS_SIZE];
> +
> +	if (drm_dp_dpcd_read_phy_link_status(&mhdp->dp.aux, DP_PHY_DPRX,
> +					     link_status) < 0)
> +		return false;
> +
> +	/* Retrain if link not ok */
> +	return !drm_dp_channel_eq_ok(link_status, mhdp->dp.num_lanes);
> +}
> +
> +void cdns_dp_check_link_state(struct cdns_mhdp8501_device *mhdp)
> +{
> +	struct drm_connector *connector = mhdp->curr_conn;
> +	const struct drm_edid *drm_edid;
> +	struct drm_connector_state *conn_state;
> +	struct drm_crtc_state *crtc_state;
> +	struct drm_crtc *crtc;
> +
> +	if (!connector)
> +		return;
> +
> +	/*
> +	 * EDID data needs updating after each cable plugin
> +	 * due to potential display monitor changes
> +	 */
> +	drm_edid = drm_edid_read_custom(connector, cdns_dp_get_edid_block, mhdp);
> +	drm_edid_connector_update(connector, drm_edid);
> +
> +	if (!drm_edid)
> +		return;
> +
> +	drm_edid_free(drm_edid);
> +
> +	conn_state = connector->state;
> +	crtc = conn_state->crtc;
> +	if (!crtc)
> +		return;
> +
> +	crtc_state = crtc->state;
> +	if (!crtc_state->active)
> +		return;
> +
> +	if (!cdns_dp_needs_link_retrain(mhdp))
> +		return;
> +
> +	/* DP link retrain */
> +	if (cdns_dp_train_link(mhdp))
> +		dev_err(mhdp->dev, "Failed link train\n");

Won't this cause link traning to happen on the first monitor plug event?
Is it okay to do even with the phy being powered off?

> +}
> +
> +static int cdns_dp_bridge_attach(struct drm_bridge *bridge,
> +				 enum drm_bridge_attach_flags flags)
> +{
> +	struct cdns_mhdp8501_device *mhdp = bridge->driver_private;
> +
> +	if (!(flags & DRM_BRIDGE_ATTACH_NO_CONNECTOR)) {
> +		dev_err(mhdp->dev, "do not support creating a drm_connector\n");
> +		return -EINVAL;
> +	}
> +
> +	mhdp->dp.aux.drm_dev = bridge->dev;
> +
> +	return drm_dp_aux_register(&mhdp->dp.aux);

Why is it a part of the _attach callback? If there is anything on the DP
AUX bus, it should be already registered by this point.

> +}
> +
> +static const struct drm_edid
> +*cdns_dp_bridge_edid_read(struct drm_bridge *bridge,
> +			  struct drm_connector *connector)
> +{
> +	struct cdns_mhdp8501_device *mhdp = bridge->driver_private;
> +
> +	return drm_edid_read_custom(connector, cdns_dp_get_edid_block, mhdp);
> +}
> +
> +/* Currently supported format */
> +static const u32 mhdp8501_input_fmts[] = {
> +	MEDIA_BUS_FMT_RGB888_1X24,
> +	MEDIA_BUS_FMT_RGB101010_1X30,
> +};
> +
> +static u32 *cdns_dp_bridge_atomic_get_input_bus_fmts(struct drm_bridge *bridge,
> +						     struct drm_bridge_state *bridge_state,
> +						     struct drm_crtc_state *crtc_state,
> +						     struct drm_connector_state *conn_state,
> +						     u32 output_fmt,
> +						     unsigned int *num_input_fmts)
> +{
> +	u32 *input_fmts;
> +
> +	*num_input_fmts = 0;
> +
> +	input_fmts = kcalloc(ARRAY_SIZE(mhdp8501_input_fmts),
> +			     sizeof(*input_fmts),
> +			     GFP_KERNEL);
> +	if (!input_fmts)
> +		return NULL;
> +
> +	*num_input_fmts = ARRAY_SIZE(mhdp8501_input_fmts);
> +	memcpy(input_fmts, mhdp8501_input_fmts, sizeof(mhdp8501_input_fmts));
> +
> +	return input_fmts;
> +}
> +
> +static int cdns_dp_bridge_atomic_check(struct drm_bridge *bridge,
> +				       struct drm_bridge_state *bridge_state,
> +				       struct drm_crtc_state *crtc_state,
> +				       struct drm_connector_state *conn_state)
> +{
> +	struct cdns_mhdp8501_device *mhdp = bridge->driver_private;
> +	struct video_info *video = &mhdp->video_info;
> +
> +	if (bridge_state->input_bus_cfg.format == MEDIA_BUS_FMT_RGB888_1X24) {
> +		video->bpc = 8;
> +		video->color_fmt = DRM_COLOR_FORMAT_RGB444;
> +	} else if (bridge_state->input_bus_cfg.format == MEDIA_BUS_FMT_RGB101010_1X30) {
> +		video->bpc = 10;
> +		video->color_fmt = DRM_COLOR_FORMAT_RGB444;

Which driver is going to select bus config for you?

> +	} else {
> +		return -EINVAL;
> +	}
> +
> +	return 0;
> +}
> +
> +static void cdns_dp_bridge_atomic_disable(struct drm_bridge *bridge,
> +					  struct drm_bridge_state *old_state)
> +{
> +	struct cdns_mhdp8501_device *mhdp = bridge->driver_private;
> +
> +	cdns_dp_set_video_status(mhdp, CONTROL_VIDEO_IDLE);
> +	mhdp->curr_conn = NULL;
> +
> +	phy_power_off(mhdp->phy);
> +}
> +
> +static void cdns_dp_bridge_atomic_enable(struct drm_bridge *bridge,
> +					 struct drm_bridge_state *old_state)
> +{
> +	struct cdns_mhdp8501_device *mhdp = bridge->driver_private;
> +	struct drm_atomic_state *state = old_state->base.state;
> +	struct drm_connector *connector;
> +	struct drm_crtc_state *crtc_state;
> +	struct drm_connector_state *conn_state;
> +	int ret;
> +
> +	connector = drm_atomic_get_new_connector_for_encoder(state,
> +							     bridge->encoder);
> +	if (WARN_ON(!connector))
> +		return;
> +
> +	mhdp->curr_conn = connector;
> +
> +	conn_state = drm_atomic_get_new_connector_state(state, connector);
> +	if (WARN_ON(!conn_state))
> +		return;
> +
> +	crtc_state = drm_atomic_get_new_crtc_state(state, conn_state->crtc);
> +	if (WARN_ON(!crtc_state))
> +		return;
> +
> +	cdns_dp_mode_set(mhdp, &crtc_state->adjusted_mode);
> +
> +	/* Power up PHY before link training */
> +	phy_power_on(mhdp->phy);
> +
> +	/* Link training */
> +	ret = cdns_dp_train_link(mhdp);
> +	if (ret) {
> +		dev_err(mhdp->dev, "Failed link train %d\n", ret);
> +		return;
> +	}
> +
> +	ret = cdns_dp_set_video_status(mhdp, CONTROL_VIDEO_VALID);
> +	if (ret) {
> +		dev_err(mhdp->dev, "Failed to valid video %d\n", ret);
> +		return;
> +	}
> +}
> +
> +const struct drm_bridge_funcs cdns_dp_bridge_funcs = {
> +	.attach = cdns_dp_bridge_attach,
> +	.detect = cdns_mhdp8501_detect,
> +	.edid_read = cdns_dp_bridge_edid_read,
> +	.mode_valid = cdns_mhdp8501_mode_valid,
> +	.atomic_enable = cdns_dp_bridge_atomic_enable,
> +	.atomic_disable = cdns_dp_bridge_atomic_disable,
> +	.atomic_get_input_bus_fmts = cdns_dp_bridge_atomic_get_input_bus_fmts,
> +	.atomic_check = cdns_dp_bridge_atomic_check,
> +	.atomic_duplicate_state = drm_atomic_helper_bridge_duplicate_state,
> +	.atomic_destroy_state = drm_atomic_helper_bridge_destroy_state,
> +	.atomic_reset = drm_atomic_helper_bridge_reset,
> +};
> diff --git a/drivers/gpu/drm/bridge/cadence/cdns-mhdp8501-hdmi.c b/drivers/gpu/drm/bridge/cadence/cdns-mhdp8501-hdmi.c
> new file mode 100644
> index 0000000000000..9556d0929e21d
> --- /dev/null
> +++ b/drivers/gpu/drm/bridge/cadence/cdns-mhdp8501-hdmi.c
> @@ -0,0 +1,745 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Cadence MHDP8501 HDMI bridge driver
> + *
> + * Copyright (C) 2019-2024 NXP Semiconductor, Inc.
> + *
> + */
> +#include <drm/display/drm_hdmi_helper.h>
> +#include <drm/display/drm_hdmi_state_helper.h>
> +#include <drm/display/drm_scdc_helper.h>
> +#include <drm/drm_atomic_helper.h>
> +#include <drm/drm_edid.h>
> +#include <drm/drm_print.h>
> +#include <linux/phy/phy.h>
> +#include <linux/phy/phy-hdmi.h>
> +
> +#include "cdns-mhdp8501-core.h"
> +
> +/**
> + * cdns_hdmi_config_infoframe() - fill the HDMI infoframe
> + * @mhdp: phandle to mhdp device.
> + * @entry_id: The packet memory address in which the data is written.
> + * @len: length of infoframe.
> + * @buf: point to InfoFrame Packet.
> + * @type: Packet Type of InfoFrame in HDMI Specification.
> + *
> + */
> +
> +static void cdns_hdmi_clear_infoframe(struct cdns_mhdp8501_device *mhdp,
> +				      u8 entry_id, u8 type)
> +{
> +	u32 val;
> +
> +	/* invalidate entry */
> +	val = F_ACTIVE_IDLE_TYPE(1) | F_PKT_ALLOC_ADDRESS(entry_id) |
> +	      F_PACKET_TYPE(type);
> +	writel(val, mhdp->regs + SOURCE_PIF_PKT_ALLOC_REG);
> +	writel(F_PKT_ALLOC_WR_EN(1), mhdp->regs + SOURCE_PIF_PKT_ALLOC_WR_EN);
> +}
> +
> +static void cdns_hdmi_config_infoframe(struct cdns_mhdp8501_device *mhdp,
> +				       u8 entry_id, u8 len,
> +				       const u8 *buf, u8 type)
> +{
> +	u8 packet[32], packet_len = 32;
> +	u32 packet32, len32;
> +	u32 val, i;
> +
> +	/*
> +	 * only support 32 bytes now
> +	 * packet[0] = 0
> +	 * packet[1-3] = HB[0-2]  InfoFrame Packet Header
> +	 * packet[4-31 = PB[0-27] InfoFrame Packet Contents
> +	 */
> +	if (len >= (packet_len - 1))
> +		return;
> +	packet[0] = 0;
> +	memcpy(packet + 1, buf, len);
> +
> +	cdns_hdmi_clear_infoframe(mhdp, entry_id, type);
> +
> +	/* flush fifo 1 */
> +	writel(F_FIFO1_FLUSH(1), mhdp->regs + SOURCE_PIF_FIFO1_FLUSH);
> +
> +	/* write packet into memory */
> +	len32 = packet_len / 4;
> +	for (i = 0; i < len32; i++) {
> +		packet32 = get_unaligned_le32(packet + 4 * i);
> +		writel(F_DATA_WR(packet32), mhdp->regs + SOURCE_PIF_DATA_WR);
> +	}
> +
> +	/* write entry id */
> +	writel(F_WR_ADDR(entry_id), mhdp->regs + SOURCE_PIF_WR_ADDR);
> +
> +	/* write request */
> +	writel(F_HOST_WR(1), mhdp->regs + SOURCE_PIF_WR_REQ);
> +
> +	/* update entry */
> +	val = F_ACTIVE_IDLE_TYPE(1) | F_TYPE_VALID(1) |
> +	      F_PACKET_TYPE(type) | F_PKT_ALLOC_ADDRESS(entry_id);
> +	writel(val, mhdp->regs + SOURCE_PIF_PKT_ALLOC_REG);
> +
> +	writel(F_PKT_ALLOC_WR_EN(1), mhdp->regs + SOURCE_PIF_PKT_ALLOC_WR_EN);
> +}
> +
> +static int cdns_hdmi_get_edid_block(void *data, u8 *edid,
> +				    u32 block, size_t length)
> +{
> +	struct cdns_mhdp8501_device *mhdp = data;
> +	u8 msg[2], reg[5], i;
> +	int ret;
> +
> +	for (i = 0; i < 4; i++) {
> +		msg[0] = block / 2;
> +		msg[1] = block % 2;
> +
> +		ret = cdns_mhdp_mailbox_send_recv_multi(&mhdp->base,
> +							MB_MODULE_ID_HDMI_TX,
> +							HDMI_TX_EDID,
> +							sizeof(msg), msg,
> +							HDMI_TX_EDID,
> +							sizeof(reg), reg,
> +							length, edid);
> +
> +		if (ret)
> +			continue;

Ignoring the error?

> +
> +		if ((reg[3] << 8 | reg[4]) == length)
> +			break;
> +	}
> +
> +	if (ret)
> +		dev_err(mhdp->dev, "get block[%d] edid failed: %d\n", block, ret);
> +	return ret;
> +}
> +
> +static int cdns_hdmi_set_hdmi_mode_type(struct cdns_mhdp8501_device *mhdp)
> +{
> +	struct drm_connector_state *conn_state = mhdp->curr_conn->state;
> +	u32 protocol = mhdp->hdmi.hdmi_type;
> +	u32 val;
> +
> +	if (protocol == MODE_HDMI_2_0 &&
> +	    conn_state->hdmi.tmds_char_rate >= 340000000) {
> +		cdns_mhdp_reg_write(&mhdp->base, HDTX_CLOCK_REG_0, 0);
> +		cdns_mhdp_reg_write(&mhdp->base, HDTX_CLOCK_REG_1, 0xFFFFF);
> +	}
> +
> +	cdns_mhdp_reg_read(&mhdp->base, HDTX_CONTROLLER, &val);
> +
> +	/* set HDMI mode and preemble mode data enable */
> +	val |= F_HDMI_MODE(protocol) | F_HDMI2_PREAMBLE_EN(1) |
> +	       F_HDMI2_CTRL_IL_MODE(1);
> +	return cdns_mhdp_reg_write(&mhdp->base, HDTX_CONTROLLER, val);
> +}
> +
> +static int cdns_hdmi_ctrl_init(struct cdns_mhdp8501_device *mhdp)
> +{
> +	u32 val;
> +	int ret;
> +
> +	/* Set PHY to HDMI data */
> +	ret = cdns_mhdp_reg_write(&mhdp->base, PHY_DATA_SEL, F_SOURCE_PHY_MHDP_SEL(1));
> +	if (ret < 0)
> +		return ret;
> +
> +	ret = cdns_mhdp_reg_write(&mhdp->base, HDTX_HPD,
> +				  F_HPD_VALID_WIDTH(4) | F_HPD_GLITCH_WIDTH(0));
> +	if (ret < 0)
> +		return ret;
> +
> +	/* open CARS */
> +	ret = cdns_mhdp_reg_write(&mhdp->base, SOURCE_PHY_CAR, 0xF);
> +	if (ret < 0)
> +		return ret;
> +	ret = cdns_mhdp_reg_write(&mhdp->base, SOURCE_HDTX_CAR, 0xFF);
> +	if (ret < 0)
> +		return ret;
> +	ret = cdns_mhdp_reg_write(&mhdp->base, SOURCE_PKT_CAR, 0xF);
> +	if (ret < 0)
> +		return ret;
> +	ret = cdns_mhdp_reg_write(&mhdp->base, SOURCE_AIF_CAR, 0xF);
> +	if (ret < 0)
> +		return ret;
> +	ret = cdns_mhdp_reg_write(&mhdp->base, SOURCE_CIPHER_CAR, 0xF);
> +	if (ret < 0)
> +		return ret;
> +	ret = cdns_mhdp_reg_write(&mhdp->base, SOURCE_CRYPTO_CAR, 0xF);
> +	if (ret < 0)
> +		return ret;
> +	ret = cdns_mhdp_reg_write(&mhdp->base, SOURCE_CEC_CAR, 3);
> +	if (ret < 0)
> +		return ret;
> +
> +	ret = cdns_mhdp_reg_write(&mhdp->base, HDTX_CLOCK_REG_0, 0x7c1f);
> +	if (ret < 0)
> +		return ret;
> +	ret = cdns_mhdp_reg_write(&mhdp->base, HDTX_CLOCK_REG_1, 0x7c1f);
> +	if (ret < 0)
> +		return ret;
> +
> +	/* init HDMI Controller */
> +	val = F_BCH_EN(1) | F_PIC_3D(0xF) | F_CLEAR_AVMUTE(1);
> +	ret = cdns_mhdp_reg_write(&mhdp->base, HDTX_CONTROLLER, val);
> +	if (ret < 0)
> +		return ret;
> +
> +	return cdns_hdmi_set_hdmi_mode_type(mhdp);
> +}
> +
> +static int cdns_hdmi_mode_config(struct cdns_mhdp8501_device *mhdp,
> +				 struct drm_display_mode *mode,
> +				 struct drm_connector_hdmi_state *hdmi)
> +{
> +	u32 vsync_lines = mode->vsync_end - mode->vsync_start;
> +	u32 eof_lines = mode->vsync_start - mode->vdisplay;
> +	u32 sof_lines = mode->vtotal - mode->vsync_end;
> +	u32 hblank = mode->htotal - mode->hdisplay;
> +	u32 hactive = mode->hdisplay;
> +	u32 vblank = mode->vtotal - mode->vdisplay;
> +	u32 vactive = mode->vdisplay;
> +	u32 hfront = mode->hsync_start - mode->hdisplay;
> +	u32 hback = mode->htotal - mode->hsync_end;
> +	u32 vfront = eof_lines;
> +	u32 hsync = hblank - hfront - hback;
> +	u32 vsync = vsync_lines;
> +	u32 vback = sof_lines;
> +	u32 v_h_polarity = ((mode->flags & DRM_MODE_FLAG_NHSYNC) ? 0 : 1) +
> +			   ((mode->flags & DRM_MODE_FLAG_NVSYNC) ? 0 : 2);
> +	int ret;
> +	u32 val;
> +
> +	ret = cdns_mhdp_reg_write(&mhdp->base, SCHEDULER_H_SIZE, (hactive << 16) + hblank);
> +	if (ret < 0)
> +		return ret;
> +
> +	ret = cdns_mhdp_reg_write(&mhdp->base, SCHEDULER_V_SIZE, (vactive << 16) + vblank);
> +	if (ret < 0)
> +		return ret;
> +
> +	ret = cdns_mhdp_reg_write(&mhdp->base, HDTX_SIGNAL_FRONT_WIDTH, (vfront << 16) + hfront);
> +	if (ret < 0)
> +		return ret;
> +
> +	ret = cdns_mhdp_reg_write(&mhdp->base, HDTX_SIGNAL_SYNC_WIDTH, (vsync << 16) + hsync);
> +	if (ret < 0)
> +		return ret;
> +
> +	ret = cdns_mhdp_reg_write(&mhdp->base, HDTX_SIGNAL_BACK_WIDTH, (vback << 16) + hback);
> +	if (ret < 0)
> +		return ret;
> +
> +	ret = cdns_mhdp_reg_write(&mhdp->base, HSYNC2VSYNC_POL_CTRL, v_h_polarity);
> +	if (ret < 0)
> +		return ret;
> +
> +	/* Reset Data Enable */
> +	cdns_mhdp_reg_read(&mhdp->base, HDTX_CONTROLLER, &val);
> +	val &= ~F_DATA_EN(1);
> +	ret = cdns_mhdp_reg_write(&mhdp->base, HDTX_CONTROLLER, val);
> +	if (ret < 0)
> +		return ret;
> +
> +	/* Set bpc */
> +	val &= ~F_VIF_DATA_WIDTH(3);
> +	switch (hdmi->output_bpc) {
> +	case 10:
> +		val |= F_VIF_DATA_WIDTH(1);
> +		break;
> +	case 12:
> +		val |= F_VIF_DATA_WIDTH(2);
> +		break;
> +	case 16:
> +		val |= F_VIF_DATA_WIDTH(3);
> +		break;
> +	case 8:
> +	default:
> +		val |= F_VIF_DATA_WIDTH(0);
> +		break;
> +	}
> +
> +	/* select color encoding */
> +	val &= ~F_HDMI_ENCODING(3);
> +	switch (hdmi->output_format) {
> +	case HDMI_COLORSPACE_YUV444:
> +		val |= F_HDMI_ENCODING(2);
> +		break;
> +	case HDMI_COLORSPACE_YUV422:
> +		val |= F_HDMI_ENCODING(1);
> +		break;
> +	case HDMI_COLORSPACE_YUV420:
> +		val |= F_HDMI_ENCODING(3);
> +		break;
> +	case HDMI_COLORSPACE_RGB:
> +	default:
> +		val |= F_HDMI_ENCODING(0);
> +		break;
> +	}
> +
> +	ret = cdns_mhdp_reg_write(&mhdp->base, HDTX_CONTROLLER, val);
> +	if (ret < 0)
> +		return ret;
> +
> +	/* set data enable */
> +	val |= F_DATA_EN(1);
> +	return cdns_mhdp_reg_write(&mhdp->base, HDTX_CONTROLLER, val);
> +}
> +
> +static int cdns_hdmi_disable_gcp(struct cdns_mhdp8501_device *mhdp)
> +{
> +	u32 val;
> +
> +	cdns_mhdp_reg_read(&mhdp->base, HDTX_CONTROLLER, &val);
> +	val &= ~F_GCP_EN(1);
> +
> +	return cdns_mhdp_reg_write(&mhdp->base, HDTX_CONTROLLER, val);
> +}
> +
> +static int cdns_hdmi_enable_gcp(struct cdns_mhdp8501_device *mhdp)
> +{
> +	u32 val;
> +
> +	cdns_mhdp_reg_read(&mhdp->base, HDTX_CONTROLLER, &val);
> +	val |= F_GCP_EN(1);
> +
> +	return cdns_mhdp_reg_write(&mhdp->base, HDTX_CONTROLLER, val);
> +}
> +
> +#define HDMI_14_MAX_TMDS_CLK   (340 * 1000 * 1000)
> +static void cdns_hdmi_sink_config(struct cdns_mhdp8501_device *mhdp,
> +				  unsigned long long tmds_char_rate)
> +{
> +	struct drm_connector *connector = mhdp->curr_conn;
> +	struct drm_display_info *display = &connector->display_info;
> +	struct drm_scdc *scdc = &display->hdmi.scdc;
> +	bool hdmi_scrambling = false;
> +	bool hdmi_high_tmds_clock_ratio = false;
> +
> +	/* check sink type (HDMI or DVI) */
> +	if (!display->is_hdmi) {
> +		mhdp->hdmi.hdmi_type = MODE_DVI;
> +		return;
> +	}
> +
> +	/* Default work in HDMI1.4 */
> +	mhdp->hdmi.hdmi_type = MODE_HDMI_1_4;
> +
> +	/* check sink support SCDC or not */
> +	if (!scdc->supported) {
> +		dev_dbg(mhdp->dev, "Sink Not Support SCDC\n");
> +		return;
> +	}
> +
> +	if (tmds_char_rate > HDMI_14_MAX_TMDS_CLK) {
> +		hdmi_scrambling = true;
> +		hdmi_high_tmds_clock_ratio = true;
> +		mhdp->hdmi.hdmi_type = MODE_HDMI_2_0;
> +	} else if (scdc->scrambling.low_rates) {
> +		hdmi_scrambling = true;
> +		mhdp->hdmi.hdmi_type = MODE_HDMI_2_0;
> +	}
> +
> +	/* Set TMDS bit clock ratio to 1/40 or 1/10, and enable/disable scrambling */
> +	drm_scdc_set_high_tmds_clock_ratio(connector, hdmi_high_tmds_clock_ratio);
> +	drm_scdc_set_scrambling(connector, hdmi_scrambling);
> +}
> +
> +static int cdns_hdmi_bridge_attach(struct drm_bridge *bridge,
> +				   enum drm_bridge_attach_flags flags)
> +{
> +	struct cdns_mhdp8501_device *mhdp = bridge->driver_private;
> +
> +	if (!(flags & DRM_BRIDGE_ATTACH_NO_CONNECTOR)) {
> +		dev_err(mhdp->dev, "do not support creating a drm_connector\n");
> +		return -EINVAL;
> +	}
> +
> +	return 0;
> +}
> +
> +static int reset_pipe(struct drm_crtc *crtc)
> +{
> +	struct drm_atomic_state *state;
> +	struct drm_crtc_state *crtc_state;
> +	struct drm_modeset_acquire_ctx ctx;
> +	int ret;
> +
> +	state = drm_atomic_state_alloc(crtc->dev);
> +	if (!state)
> +		return -ENOMEM;
> +
> +	drm_modeset_acquire_init(&ctx, 0);
> +
> +	state->acquire_ctx = &ctx;
> +
> +	crtc_state = drm_atomic_get_crtc_state(state, crtc);
> +	if (IS_ERR(crtc_state)) {
> +		ret = PTR_ERR(crtc_state);
> +		goto out;
> +	}
> +
> +	crtc_state->connectors_changed = true;
> +
> +	ret = drm_atomic_commit(state);
> +out:
> +	drm_atomic_state_put(state);
> +	drm_modeset_drop_locks(&ctx);
> +	drm_modeset_acquire_fini(&ctx);
> +
> +	return ret;
> +}
> +
> +void cdns_hdmi_handle_hotplug(struct cdns_mhdp8501_device *mhdp)
> +{
> +	struct drm_connector *connector = mhdp->curr_conn;
> +	const struct drm_edid *drm_edid;
> +	struct drm_connector_state *conn_state;
> +	struct drm_crtc_state *crtc_state;
> +	struct drm_crtc *crtc;
> +
> +	if (!connector)
> +		return;
> +
> +	/*
> +	 * EDID data needs updating after each cable plugin
> +	 * due to potential display monitor changes
> +	 */
> +	drm_edid = drm_edid_read_custom(connector, cdns_hdmi_get_edid_block, mhdp);
> +	drm_edid_connector_update(connector, drm_edid);
> +
> +	if (!drm_edid)
> +		return;
> +
> +	drm_edid_free(drm_edid);
> +
> +	conn_state = connector->state;
> +	crtc = conn_state->crtc;
> +	if (!crtc)
> +		return;
> +
> +	crtc_state = crtc->state;
> +	if (!crtc_state->active)
> +		return;
> +
> +	/*
> +	 * HDMI 2.0 says that one should not send scrambled data
> +	 * prior to configuring the sink scrambling, and that
> +	 * TMDS clock/data transmission should be suspended when
> +	 * changing the TMDS clock rate in the sink. So let's
> +	 * just do a full modeset here, even though some sinks
> +	 * would be perfectly happy if were to just reconfigure
> +	 * the SCDC settings on the fly.
> +	 */
> +	reset_pipe(crtc);
> +}
> +
> +static int cdns_hdmi_i2c_write(struct cdns_mhdp8501_device *mhdp,
> +			       struct i2c_msg *msgs)
> +{
> +	u8 msg[5], reg[5];
> +	int ret;
> +
> +	msg[0] = msgs->addr;
> +	msg[1] = msgs->buf[0];
> +	msg[2] = 0;
> +	msg[3] = 1;
> +	msg[4] = msgs->buf[1];
> +
> +	ret = cdns_mhdp_mailbox_send_recv(&mhdp->base,
> +					  MB_MODULE_ID_HDMI_TX, HDMI_TX_WRITE,
> +					  sizeof(msg), msg, sizeof(reg), reg);
> +	if (ret) {
> +		dev_err(mhdp->dev, "I2C write failed: %d\n", ret);
> +		return ret;
> +	}
> +
> +	if (reg[0] != 0)
> +		return -EINVAL;
> +
> +	return 0;
> +}
> +
> +static int cdns_hdmi_i2c_read(struct cdns_mhdp8501_device *mhdp,
> +			      struct i2c_msg *msgs, int num)
> +{
> +	u8 msg[4], reg[5];
> +	u8 addr, offset, *buf, len;
> +	int ret, i;
> +
> +	for (i = 0; i < num; i++) {
> +		if (msgs[i].flags & I2C_M_RD) {
> +			addr = msgs[i].addr;
> +			buf = msgs[i].buf;
> +			len = msgs[i].len;
> +		} else {
> +			offset = msgs[i].buf[0];
> +		}
> +	}
> +
> +	msg[0] = addr;
> +	msg[1] = offset;
> +	put_unaligned_be16(len, msg + 2);
> +
> +	ret = cdns_mhdp_mailbox_send_recv_multi(&mhdp->base,
> +						MB_MODULE_ID_HDMI_TX, HDMI_TX_READ,
> +						sizeof(msg), msg,
> +						HDMI_TX_READ,
> +						sizeof(reg), reg,
> +						len, buf);
> +	if (ret) {
> +		dev_err(mhdp->dev, "I2c Read failed: %d\n", ret);
> +		return ret;
> +	}
> +
> +	return 0;
> +}
> +
> +#define  SCDC_I2C_SLAVE_ADDRESS	0x54
> +static int cdns_hdmi_i2c_xfer(struct i2c_adapter *adap,
> +			      struct i2c_msg *msgs, int num)
> +{
> +	struct cdns_mhdp8501_device *mhdp = i2c_get_adapdata(adap);
> +	struct cdns_hdmi_i2c *i2c = mhdp->hdmi.i2c;
> +	int i, ret = 0;
> +
> +	/*
> +	 * MHDP FW provides mailbox APIs for SCDC registers access, but lacks direct I2C APIs.
> +	 * While individual I2C registers can be read/written using HDMI general register APIs,
> +	 * block reads (e.g., EDID) are not supported, making it a limited I2C interface.
> +	 */
> +	for (i = 0; i < num; i++) {
> +		if (msgs[i].addr != SCDC_I2C_SLAVE_ADDRESS) {
> +			dev_err(mhdp->dev, "ADDR=%0x is not supported\n", msgs[i].addr);
> +			return -EINVAL;
> +		}
> +	}
> +
> +	mutex_lock(&i2c->lock);
> +
> +	if (num == 1)
> +		ret = cdns_hdmi_i2c_write(mhdp, msgs);
> +	else
> +		ret = cdns_hdmi_i2c_read(mhdp, msgs, num);
> +
> +	if (!ret)
> +		ret = num;
> +
> +	mutex_unlock(&i2c->lock);
> +
> +	return ret;
> +}
> +
> +static u32 cdns_hdmi_i2c_func(struct i2c_adapter *adapter)
> +{
> +	return I2C_FUNC_I2C | I2C_FUNC_SMBUS_EMUL;
> +}
> +
> +static const struct i2c_algorithm cdns_hdmi_algorithm = {
> +	.master_xfer	= cdns_hdmi_i2c_xfer,
> +	.functionality	= cdns_hdmi_i2c_func,
> +};
> +
> +struct i2c_adapter *cdns_hdmi_i2c_adapter(struct cdns_mhdp8501_device *mhdp)
> +{
> +	struct i2c_adapter *adap;
> +	struct cdns_hdmi_i2c *i2c;
> +	int ret;
> +
> +	i2c = devm_kzalloc(mhdp->dev, sizeof(*i2c), GFP_KERNEL);
> +	if (!i2c)
> +		return ERR_PTR(-ENOMEM);
> +
> +	mutex_init(&i2c->lock);
> +
> +	adap = &i2c->adap;
> +	adap->owner = THIS_MODULE;
> +	adap->dev.parent = mhdp->dev;
> +	adap->algo = &cdns_hdmi_algorithm;
> +	strscpy(adap->name, "MHDP HDMI", sizeof(adap->name));
> +	i2c_set_adapdata(adap, mhdp);
> +
> +	ret = i2c_add_adapter(adap);
> +	if (ret) {
> +		dev_warn(mhdp->dev, "cannot add %s I2C adapter\n", adap->name);
> +		devm_kfree(mhdp->dev, i2c);
> +		return ERR_PTR(ret);
> +	}
> +
> +	mhdp->hdmi.i2c = i2c;
> +
> +	return adap;
> +}
> +
> +static enum drm_mode_status
> +cdns_hdmi_tmds_char_rate_valid(const struct drm_bridge *bridge,
> +			       const struct drm_display_mode *mode,
> +			       unsigned long long tmds_rate)
> +{
> +	struct cdns_mhdp8501_device *mhdp = bridge->driver_private;
> +	union phy_configure_opts phy_cfg;
> +	int ret;
> +
> +	phy_cfg.hdmi.tmds_char_rate = tmds_rate;
> +
> +	ret = phy_validate(mhdp->phy, PHY_MODE_HDMI, 0, &phy_cfg);
> +	if (ret < 0)
> +		return MODE_CLOCK_RANGE;
> +
> +	return MODE_OK;
> +}
> +
> +static const struct drm_edid
> +*cdns_hdmi_bridge_edid_read(struct drm_bridge *bridge,
> +			    struct drm_connector *connector)
> +{
> +	struct cdns_mhdp8501_device *mhdp = bridge->driver_private;
> +
> +	return drm_edid_read_custom(connector, cdns_hdmi_get_edid_block, mhdp);
> +}
> +
> +static void cdns_hdmi_bridge_atomic_disable(struct drm_bridge *bridge,
> +					    struct drm_bridge_state *old_state)
> +{
> +	struct cdns_mhdp8501_device *mhdp = bridge->driver_private;
> +
> +	mhdp->curr_conn = NULL;
> +
> +	phy_power_off(mhdp->phy);
> +}
> +
> +static void cdns_hdmi_bridge_atomic_enable(struct drm_bridge *bridge,
> +					   struct drm_bridge_state *old_state)
> +{
> +	struct cdns_mhdp8501_device *mhdp = bridge->driver_private;
> +	struct drm_atomic_state *state = old_state->base.state;
> +	struct drm_connector *connector;
> +	struct drm_crtc_state *crtc_state;
> +	struct drm_connector_state *conn_state;
> +	struct drm_connector_hdmi_state *hdmi;
> +	union phy_configure_opts phy_cfg;
> +	int ret;
> +
> +	connector = drm_atomic_get_new_connector_for_encoder(state,
> +							     bridge->encoder);
> +	if (WARN_ON(!connector))
> +		return;
> +
> +	mhdp->curr_conn = connector;
> +
> +	conn_state = drm_atomic_get_new_connector_state(state, connector);
> +	if (WARN_ON(!conn_state))
> +		return;
> +
> +	crtc_state = drm_atomic_get_new_crtc_state(state, conn_state->crtc);
> +	if (WARN_ON(!crtc_state))
> +		return;
> +
> +	drm_atomic_helper_connector_hdmi_update_infoframes(connector, state);
> +
> +	/* Line swapping */
> +	cdns_mhdp_reg_write(&mhdp->base, LANES_CONFIG, 0x00400000 | mhdp->lane_mapping);
> +
> +	hdmi = &conn_state->hdmi;
> +	if (WARN_ON(!hdmi))
> +		return;
> +
> +	phy_cfg.hdmi.tmds_char_rate = hdmi->tmds_char_rate;
> +	ret = phy_configure(mhdp->phy, &phy_cfg);
> +	if (ret) {
> +		dev_err(mhdp->dev, "%s: phy_configure() failed: %d\n",
> +			__func__, ret);
> +		return;
> +	}
> +
> +	phy_power_on(mhdp->phy);
> +
> +	cdns_hdmi_sink_config(mhdp, hdmi->tmds_char_rate);
> +
> +	ret = cdns_hdmi_ctrl_init(mhdp);
> +	if (ret < 0) {
> +		dev_err(mhdp->dev, "hdmi ctrl init failed = %d\n",  ret);
> +		return;
> +	}
> +
> +	/* Config GCP */
> +	if (hdmi->output_bpc == 8)
> +		cdns_hdmi_disable_gcp(mhdp);
> +	else
> +		cdns_hdmi_enable_gcp(mhdp);
> +
> +	ret = cdns_hdmi_mode_config(mhdp, &crtc_state->adjusted_mode, hdmi);
> +	if (ret < 0) {
> +		dev_err(mhdp->dev, "CDN_API_HDMITX_SetVic_blocking ret = %d\n", ret);
> +		return;
> +	}
> +}
> +
> +static int cdns_hdmi_bridge_clear_infoframe(struct drm_bridge *bridge,
> +					    enum hdmi_infoframe_type type)
> +{
> +	struct cdns_mhdp8501_device *mhdp = bridge->driver_private;
> +
> +	switch (type) {
> +	case HDMI_INFOFRAME_TYPE_AVI:
> +		cdns_hdmi_clear_infoframe(mhdp, 0, HDMI_INFOFRAME_TYPE_AVI);
> +		break;
> +	case HDMI_INFOFRAME_TYPE_SPD:
> +		cdns_hdmi_clear_infoframe(mhdp, 1, HDMI_INFOFRAME_TYPE_SPD);
> +		break;
> +	case HDMI_INFOFRAME_TYPE_VENDOR:
> +		cdns_hdmi_clear_infoframe(mhdp, 2, HDMI_INFOFRAME_TYPE_VENDOR);
> +		break;
> +	default:
> +		dev_dbg(mhdp->dev, "Unsupported infoframe type %x\n", type);
> +	}
> +
> +	return 0;
> +}
> +
> +static int cdns_hdmi_bridge_write_infoframe(struct drm_bridge *bridge,
> +					    enum hdmi_infoframe_type type,
> +					    const u8 *buffer, size_t len)
> +{
> +	struct cdns_mhdp8501_device *mhdp = bridge->driver_private;
> +
> +	switch (type) {
> +	case HDMI_INFOFRAME_TYPE_AVI:
> +		cdns_hdmi_config_infoframe(mhdp, 0, len, buffer, HDMI_INFOFRAME_TYPE_AVI);
> +		break;
> +	case HDMI_INFOFRAME_TYPE_SPD:
> +		cdns_hdmi_config_infoframe(mhdp, 1, len, buffer, HDMI_INFOFRAME_TYPE_SPD);
> +		break;
> +	case HDMI_INFOFRAME_TYPE_VENDOR:
> +		cdns_hdmi_config_infoframe(mhdp, 2, len, buffer, HDMI_INFOFRAME_TYPE_VENDOR);
> +		break;
> +	default:
> +		dev_dbg(mhdp->dev, "Unsupported infoframe type %x\n", type);
> +	}
> +
> +	return 0;
> +}
> +
> +static int cdns_hdmi_bridge_atomic_check(struct drm_bridge *bridge,
> +					 struct drm_bridge_state *bridge_state,
> +					 struct drm_crtc_state *crtc_state,
> +					 struct drm_connector_state *conn_state)
> +{
> +	return drm_atomic_helper_connector_hdmi_check(conn_state->connector, conn_state->state);
> +}
> +
> +const struct drm_bridge_funcs cdns_hdmi_bridge_funcs = {
> +	.attach = cdns_hdmi_bridge_attach,
> +	.detect = cdns_mhdp8501_detect,
> +	.edid_read = cdns_hdmi_bridge_edid_read,
> +	.mode_valid = cdns_mhdp8501_mode_valid,
> +	.atomic_enable = cdns_hdmi_bridge_atomic_enable,
> +	.atomic_disable = cdns_hdmi_bridge_atomic_disable,
> +	.atomic_check = cdns_hdmi_bridge_atomic_check,
> +	.atomic_duplicate_state = drm_atomic_helper_bridge_duplicate_state,
> +	.atomic_destroy_state = drm_atomic_helper_bridge_destroy_state,
> +	.atomic_reset = drm_atomic_helper_bridge_reset,
> +	.hdmi_clear_infoframe = cdns_hdmi_bridge_clear_infoframe,
> +	.hdmi_write_infoframe = cdns_hdmi_bridge_write_infoframe,
> +	.hdmi_tmds_char_rate_valid = cdns_hdmi_tmds_char_rate_valid,
> +};
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

