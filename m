Return-Path: <devicetree+bounces-134748-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B64C9FE6B3
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 14:54:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E8E6C162024
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 13:54:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1EBC51A8413;
	Mon, 30 Dec 2024 13:54:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qRGFnvd3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B372126BEE
	for <devicetree@vger.kernel.org>; Mon, 30 Dec 2024 13:54:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735566846; cv=none; b=Lnt/B7vcKMkrtY4dWACOE20ceyF1JyL08Xj0UttiVNifRVyrgfjo3GZvJ08aFTgwKBPJs5u9L+jAFGVM+ySRusq+fq5oLx2+w64xh3RLMfc7V3MS7fZ6XWYQ2KFnl9v4Cyw5kfDRDWfn0IQ6VCOTWqYGJHd3EmyWCwQiEafqHa0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735566846; c=relaxed/simple;
	bh=UpXd1k9FoRK6L54HkO0ToPsPCv86hT8khfIHlleNjrY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YXHcaWdKi+yJrBH9nl9kegMgbI7frzz8aQnfHdV2m5JygIgFBhSMCfzEuBxCJsjVmJDMsAG7gogCg95BQcCsIp0fH3J7+chJeagLv4vb19NuBlDToPGvTz3u9lwjL1ZgT8t6tsWFoqzGab+Q8vgUM9EEe0+fhVka09fzP4c0uos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qRGFnvd3; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-5401b7f7141so8189314e87.1
        for <devicetree@vger.kernel.org>; Mon, 30 Dec 2024 05:54:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735566842; x=1736171642; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=LZVM2zPN6L2gDpXgEClDD4y7loTVwnmztC78xHYfwSA=;
        b=qRGFnvd30eEqQtzhHKQGKGqfr0oKaW1WTWSTXbElOOIdmWL3Khi1kRJNHq12Mg2Jji
         Ab6DwL3WCWTavk5m6crzhPgqdCI99UbJRCu5+4Lu51JJkWcjicTJU5UbgMADaxqPO9+H
         saSO2ZlfJLaNiG58iHe4FN23q6XgkNI0/yB2xyGremnAS0RBgeP/mhH5KyKz4YgDVBeP
         iLd3/SgMPdcJAv4HJL2aChnGlgxeIW7HXKy1xgNLqsI7uIThZ5ug1Bqox7Kfl5e6ZdF+
         kA/nGBsiKWNR564Xk5MpNHtQXLxdYsdcSqp9HS3PD9L2bmIuDLdjiL3727QKvk1wo4od
         B3Kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735566842; x=1736171642;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LZVM2zPN6L2gDpXgEClDD4y7loTVwnmztC78xHYfwSA=;
        b=slvy28YTb4EGHdPUhP5+eRJY3h1oyimet4ZKE74cEXNunw215mOLySzg8VuhPtWVwO
         K2nJu9yA5aOsjz2Omc1My3yoR6XOh7PjCk1qBarlGBNfmWFLkia3AKhsBSCxzu6niCVL
         UtmRAnYYoe6HOux3Gv2cSZwseyHgxpi/3BK2VC16B0cyC7Jx3feRJeotUcoYyVTXdQnC
         gos7LPlmG8KsSJlGLOwXpjB+N7Fr5Nv3Uzxxp/MsyhEsi3moHhGMGTLABA1PRMxBeaey
         cyRXiIkeEo+ke0jfR8dleDbb0n9UsbfJKjJCWsKzR6yMjq7pjn9M39J/tiMXOs+vEFpB
         f86g==
X-Forwarded-Encrypted: i=1; AJvYcCUlUMRm+e7HcfPOf2/rYHhExfebxKZCeVHI2JrmnpKlnEmZDa1Ls35Dzb5CgZ8qnoGJZRUfu9vfAd+K@vger.kernel.org
X-Gm-Message-State: AOJu0YyrpR/6HSXDHQ08jmwYOs7n6ifMfyrdzWQ2f2Kjjvi44GH+eDqG
	WEGAR6r+bgDoZJXlBm0DB/AQbwV2htKHICVuaQy5NsfHEEapEjDWT4X3Rhi20+U=
X-Gm-Gg: ASbGncvv9ZbjYKyOdB8KdE8+m+MpA/N/1ZNCyjz8hZQ++x0++6Pat1dS1lOWpbBWdQw
	D0lf+PeB6Kdz/GUp3aWcEWcFsSG71+9FGQ8hHNEWO/j8k1EyzmVDd67TSAhSQpXI0uLVX3FZoD5
	j9kUnhbMC/nWQKWYtFcZzacUsuJIls79YEcAXhjbTEUIltjtdVPezLQIXB1RkJ7yDrr1XjbwBS2
	24igKiXzThbDeTMA04qtGqrdskn6Sn37aE3n7sg7+2kjRDOMCRyeO1gskpvgD2Mm0ttpKKMux1o
	kHonXEtAXymSGg50L5DI+0ZzxIkeL9WAMJvd
X-Google-Smtp-Source: AGHT+IGkoo0Vy3n2XSE61emNSga/H7UrJDmZxbosqVYNBSs3wJ7j24LD7CrYiFc4wcwMO4B5yUjSfA==
X-Received: by 2002:a05:6512:1193:b0:540:1e17:10eb with SMTP id 2adb3069b0e04-5422957acaamr10481149e87.48.1735566841639;
        Mon, 30 Dec 2024 05:54:01 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5422382161esm3024084e87.204.2024.12.30.05.53.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Dec 2024 05:54:00 -0800 (PST)
Date: Mon, 30 Dec 2024 15:53:57 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Sandor Yu <sandor.yu@nxp.com>
Cc: "andrzej.hajda@intel.com" <andrzej.hajda@intel.com>, 
	"neil.armstrong@linaro.org" <neil.armstrong@linaro.org>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
	"jonas@kwiboo.se" <jonas@kwiboo.se>, "jernej.skrabec@gmail.com" <jernej.skrabec@gmail.com>, 
	"airlied@gmail.com" <airlied@gmail.com>, "daniel@ffwll.ch" <daniel@ffwll.ch>, 
	"robh+dt@kernel.org" <robh+dt@kernel.org>, 
	"krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>, 
	"s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>, 
	"vkoul@kernel.org" <vkoul@kernel.org>, 
	"dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>, "mripard@kernel.org" <mripard@kernel.org>, 
	"kernel@pengutronix.de" <kernel@pengutronix.de>, dl-linux-imx <linux-imx@nxp.com>, 
	Oliver Brown <oliver.brown@nxp.com>, 
	"alexander.stein@ew.tq-group.com" <alexander.stein@ew.tq-group.com>, "sam@ravnborg.org" <sam@ravnborg.org>
Subject: Re: [PATCH v20 5/9] drm: bridge: Cadence: Add MHDP8501 DP/HDMI driver
Message-ID: <dpj333mzr5azqhrgw3cxd7x5kiwxms4iomwy74uqfhr2zu4ocr@36rkth27d2jc>
References: <cover.1734340233.git.Sandor.yu@nxp.com>
 <fbd12029fab1f60e2ba4fad75ef650298a59cb15.1734340233.git.Sandor.yu@nxp.com>
 <3ivd4mdmcb56mrgg2yo3rszksiusfkyxr3eycuw5kspczqcqse@4nub63fnrsur>
 <DB9PR04MB94528AAF7B7B60C48710CDFEF40C2@DB9PR04MB9452.eurprd04.prod.outlook.com>
 <zrigjfyxzbc57ab3xm2m5gcjandsotcbmlgoc4ma7olz2iobqd@7cmsyinjw4xc>
 <PAXPR04MB9448D9906E03A8216081D315F4092@PAXPR04MB9448.eurprd04.prod.outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <PAXPR04MB9448D9906E03A8216081D315F4092@PAXPR04MB9448.eurprd04.prod.outlook.com>

On Mon, Dec 30, 2024 at 08:05:33AM +0000, Sandor Yu wrote:
>  
> > On Wed, Dec 25, 2024 at 07:57:01AM +0000, Sandor Yu wrote:
> > > >
> > > > On Tue, Dec 17, 2024 at 02:51:47PM +0800, Sandor Yu wrote:
> > > > > Add a new DRM DisplayPort and HDMI bridge driver for Candence
> > > > MHDP8501
> > > > > used in i.MX8MQ SOC. MHDP8501 could support HDMI or DisplayPort
> > > > > standards according embedded Firmware running in the uCPU.
> > > > >
> > > > > For iMX8MQ SOC, the DisplayPort/HDMI FW was loaded and activated
> > > > > by SOC's ROM code. Bootload binary included respective specific
> > > > > firmware is required.
> > > > >
> > > > > Driver will check display connector type and then load the
> > > > > corresponding driver.
> > > > >
> > > > > Signed-off-by: Sandor Yu <Sandor.yu@nxp.com>
> > > > > ---
> > > > > v19->v20:
> > > > > - Dump mhdp FW version by debugfs
> > > > > - Combine HDMI and DP cable detect functions into one function
> > > > > - Combine HDMI and DP cable bridge_mode_valid() functions into one
> > > > function
> > > > > - Rename cdns_hdmi_reset_link() to cdns_hdmi_handle_hotplug()
> > > > > - Add comments for EDID in cdns_hdmi_handle_hotplug() and
> > > > cdns_dp_check_link_state()
> > > > > - Add atomic_get_input_bus_fmts() and bridge_atomic_check() for DP
> > > > > driver
> > > > > - Remove bpc and color_fmt init in atomic_enable() function.
> > > > > - More detail comments for DDC adapter only support
> > > > SCDC_I2C_SLAVE_ADDRESS
> > > > >   read and write in HDMI driver.
> > > > >
> > > > >
> > > > > v18->v19:
> > > > > - Get endpoint for data-lanes as it had move to endpoint of port@1
> > > > > - Update clock management as devm_clk_get_enabled() introduced.
> > > > > - Fix clear_infoframe() function is not work issue.
> > > > > - Manage PHY power state via phy_power_on() and phy_power_off().
> > > > >
> > > > > v17->v18:
> > > > > - MHDP8501 HDMI and DP commands that need access mailbox are
> > > > rewrited
> > > > >   with new API functions created in patch #1.
> > > > > - replace lane-mapping with data-lanes, use the value from data-lanes
> > > > >   to reorder HDMI and DP lane mapping.
> > > > > - create I2C adapter for HDMI SCDC, remove cdns_hdmi_scdc_write()
> > > > function.
> > > > > - Rewrite cdns_hdmi_sink_config() function, use HDMI SCDC helper
> > function
> > > > >   drm_scdc_set_high_tmds_clock_ratio() and
> > drm_scdc_set_scrambling()
> > > > >   to config HDMI sink TMDS.
> > > > > - Remove struct video_info from HDMI driver.
> > > > > - Remove tmds_char_rate_valid() be called in bridge_mode_valid(),
> > > > >   community had patch in reviewing to implement the function.
> > > > > - Remove warning message print when get unknown HPD cable status.
> > > > > - Add more detail comments for HDP plugin and plugout interrupt.
> > > > > - use dev_dbg to repleace DRM_INFO when cable HPD status changed.
> > > > > - Remove t-b tag as above code change.
> > > > >
> > > > >  drivers/gpu/drm/bridge/cadence/Kconfig        |  16 +
> > > > >  drivers/gpu/drm/bridge/cadence/Makefile       |   2 +
> > > > >  .../drm/bridge/cadence/cdns-mhdp8501-core.c   | 379 +++++++++
> > > > >  .../drm/bridge/cadence/cdns-mhdp8501-core.h   | 380 +++++++++
> > > > >  .../gpu/drm/bridge/cadence/cdns-mhdp8501-dp.c | 694
> > > > ++++++++++++++++
> > > > >  .../drm/bridge/cadence/cdns-mhdp8501-hdmi.c   | 745
> > > > ++++++++++++++++++
> > > > >  6 files changed, 2216 insertions(+)  create mode 100644
> > > > drivers/gpu/drm/bridge/cadence/cdns-mhdp8501-core.c
> > > > >  create mode 100644
> > > > drivers/gpu/drm/bridge/cadence/cdns-mhdp8501-core.h
> > > > >  create mode 100644
> > > > drivers/gpu/drm/bridge/cadence/cdns-mhdp8501-dp.c
> > > > >  create mode 100644
> > > > drivers/gpu/drm/bridge/cadence/cdns-mhdp8501-hdmi.c
> > > > >
> > > > > diff --git a/drivers/gpu/drm/bridge/cadence/Kconfig
> > > > b/drivers/gpu/drm/bridge/cadence/Kconfig
> > > > > index dbb06533ccab2..bd979f3e6df48 100644
> > > > > --- a/drivers/gpu/drm/bridge/cadence/Kconfig
> > > > > +++ b/drivers/gpu/drm/bridge/cadence/Kconfig
> > > > > @@ -48,3 +48,19 @@ config DRM_CDNS_MHDP8546_J721E
> > > > >         initializes the J721E Display Port and sets up the
> > > > >         clock and data muxes.
> > > > >  endif
> > > > > +
> > > > > +config DRM_CDNS_MHDP8501
> > > > > +     tristate "Cadence MHDP8501 DP/HDMI bridge"
> > > > > +     select DRM_KMS_HELPER
> > > > > +     select DRM_PANEL_BRIDGE
> > > > > +     select DRM_DISPLAY_DP_HELPER
> > > > > +     select DRM_DISPLAY_HELPER
> > > > > +     select DRM_CDNS_AUDIO
> > > > > +     select CDNS_MHDP_HELPER
> > > > > +     depends on OF
> > > > > +     help
> > > > > +       Support Cadence MHDP8501 DisplayPort/HDMI bridge.
> > > > > +       Cadence MHDP8501 support one or more protocols,
> > > > > +       including DisplayPort and HDMI.
> > > > > +       To use the DP and HDMI drivers, their respective
> > > > > +       specific firmware is required.
> > > > > diff --git a/drivers/gpu/drm/bridge/cadence/Makefile
> > > > b/drivers/gpu/drm/bridge/cadence/Makefile
> > > > > index c95fd5b81d137..ea327287d1c14 100644
> > > > > --- a/drivers/gpu/drm/bridge/cadence/Makefile
> > > > > +++ b/drivers/gpu/drm/bridge/cadence/Makefile
> > > > > @@ -5,3 +5,5 @@ cdns-dsi-$(CONFIG_DRM_CDNS_DSI_J721E) +=
> > > > cdns-dsi-j721e.o
> > > > >  obj-$(CONFIG_DRM_CDNS_MHDP8546) += cdns-mhdp8546.o
> > > > > cdns-mhdp8546-y := cdns-mhdp8546-core.o cdns-mhdp8546-hdcp.o
> > > > >  cdns-mhdp8546-$(CONFIG_DRM_CDNS_MHDP8546_J721E) +=
> > > > cdns-mhdp8546-j721e.o
> > > > > +obj-$(CONFIG_DRM_CDNS_MHDP8501) += cdns-mhdp8501.o
> > > > > +cdns-mhdp8501-y := cdns-mhdp8501-core.o cdns-mhdp8501-dp.o
> > > > cdns-mhdp8501-hdmi.o
> > > > > diff --git a/drivers/gpu/drm/bridge/cadence/cdns-mhdp8501-core.c
> > > > b/drivers/gpu/drm/bridge/cadence/cdns-mhdp8501-core.c
> > > > > new file mode 100644
> > > > > index 0000000000000..98116ef012fa3
> > > > > --- /dev/null
> > > > > +++ b/drivers/gpu/drm/bridge/cadence/cdns-mhdp8501-core.c
> > > > > @@ -0,0 +1,379 @@
> > > > > +// SPDX-License-Identifier: GPL-2.0-only
> > > > > +/*
> > > > > + * Cadence Display Port Interface (DP) driver
> > > > > + *
> > > > > + * Copyright (C) 2023-2024 NXP Semiconductor, Inc.
> > > > > + *
> > > > > + */
> > > > > +#include <drm/drm_of.h>
> > > > > +#include <drm/drm_print.h>
> > > > > +#include <linux/clk.h>
> > > > > +#include <linux/irq.h>
> > > > > +#include <linux/mutex.h>
> > > > > +#include <linux/of_device.h>
> > > > > +#include <linux/platform_device.h> #include <linux/phy/phy.h>
> > > > > +
> > > > > +#include "cdns-mhdp8501-core.h"
> > > > > +
> > > > > +static ssize_t firmware_version_show(struct device *dev,
> > > > > +                                  struct device_attribute *attr,
> > > > char *buf);
> > > > > +static struct device_attribute firmware_version =
> > > > __ATTR_RO(firmware_version);
> > > > > +
> > > > > +ssize_t firmware_version_show(struct device *dev,
> > > > > +                           struct device_attribute *attr, char
> > > > > +*buf) {
> > > > > +     struct cdns_mhdp8501_device *mhdp = dev_get_drvdata(dev);
> > > > > +
> > > > > +     u32 version = readl(mhdp->base.regs + VER_L) |
> > > > readl(mhdp->base.regs + VER_H) << 8;
> > > > > +     u32 lib_version = readl(mhdp->base.regs + VER_LIB_L_ADDR) |
> > > > > +                       readl(mhdp->base.regs +
> > VER_LIB_H_ADDR)
> > > > << 8;
> > > > > +
> > > > > +     return sprintf(buf, "FW version %d, Lib version %d\n",
> > > > > + version,
> > > > lib_version);
> > > > > +}
> > > > > +
> > > > > +static void cdns_mhdp8501_create_device_files(struct
> > > > cdns_mhdp8501_device *mhdp)
> > > > > +{
> > > > > +     if (device_create_file(mhdp->dev, &firmware_version)) {
> > > > > +             DRM_ERROR("Unable to create firmware_version
> > > > sysfs\n");
> > > > > +             device_remove_file(mhdp->dev, &firmware_version);
> > > > > +     }
> > > > > +}
> > > > > +
> > > > > +static void cdns_mhdp8501_remove_device_files(struct
> > > > cdns_mhdp8501_device *mhdp)
> > > > > +{
> > > > > +     device_remove_file(mhdp->dev, &firmware_version); }
> > > > > +
> > > > > +static int cdns_mhdp8501_read_hpd(struct cdns_mhdp8501_device
> > > > *mhdp)
> > > > > +{
> > > > > +     u8 status;
> > > > > +     int ret;
> > > > > +
> > > > > +     ret = cdns_mhdp_mailbox_send_recv(&mhdp->base,
> > > > MB_MODULE_ID_GENERAL,
> > > > > +
> > > > GENERAL_GET_HPD_STATE,
> > > > > +                                       0, NULL,
> > sizeof(status),
> > > > &status);
> > > > > +     if (ret) {
> > > > > +             dev_err(mhdp->dev, "read hpd failed: %d\n", ret);
> > > > > +             return ret;
> > > > > +     }
> > > > > +
> > > > > +     return status;
> > > > > +}
> > > > > +
> > > > > +enum drm_connector_status cdns_mhdp8501_detect(struct
> > drm_bridge
> > > > *bridge)
> > > > > +{
> > > > > +     struct cdns_mhdp8501_device *mhdp = bridge->driver_private;
> > > > > +
> > > > > +     u8 hpd = 0xf;
> > > > > +
> > > > > +     hpd = cdns_mhdp8501_read_hpd(mhdp);
> > > > > +     if (hpd == 1)
> > > > > +             return connector_status_connected;
> > > > > +     else if (hpd == 0)
> > > > > +             return connector_status_disconnected;
> > > > > +
> > > > > +     return connector_status_unknown; }
> > > > > +
> > > > > +enum drm_mode_status
> > > > > +cdns_mhdp8501_mode_valid(struct drm_bridge *bridge,
> > > > > +                      const struct drm_display_info *info,
> > > > > +                      const struct drm_display_mode *mode) {
> > > > > +     /* We don't support double-clocked */
> > > > > +     if (mode->flags & DRM_MODE_FLAG_DBLCLK)
> > > > > +             return MODE_BAD;
> > > > > +
> > > > > +     /* MAX support pixel clock rate 594MHz */
> > > > > +     if (mode->clock > 594000)
> > > > > +             return MODE_CLOCK_HIGH;
> > > > > +
> > > > > +     if (mode->hdisplay > 3840)
> > > > > +             return MODE_BAD_HVALUE;
> > > > > +
> > > > > +     if (mode->vdisplay > 2160)
> > > > > +             return MODE_BAD_VVALUE;
> > > > > +
> > > > > +     return MODE_OK;
> > > > > +}
> > > > > +
> > > > > +static void hotplug_work_func(struct work_struct *work) {
> > > > > +     struct cdns_mhdp8501_device *mhdp = container_of(work,
> > > > > +                                                  struct
> > > > cdns_mhdp8501_device,
> > > > > +
> > > > hotplug_work.work);
> > > > > +     enum drm_connector_status status =
> > > > cdns_mhdp8501_detect(&mhdp->bridge);
> > > > > +
> > > > > +     drm_bridge_hpd_notify(&mhdp->bridge, status);
> > > > > +
> > > > > +     /*
> > > > > +      * iMX8MQ has two HPD interrupts: one for plugout and one
> > > > > + for
> > > > plugin.
> > > > > +      * These interrupts cannot be masked and cleaned, so we must
> > > > enable one
> > > > > +      * and disable the other to avoid continuous interrupt
> > generation.
> > > > > +      */
> > > > > +     if (status == connector_status_connected) {
> > > > > +             /* Cable connected  */
> > > > > +             dev_dbg(mhdp->dev, "HDMI/DP Cable Plug In\n");
> > > > > +             enable_irq(mhdp->irq[IRQ_OUT]);
> > > > > +
> > > > > +             /* Reset HDMI/DP link with sink */
> > > > > +             if (mhdp->connector_type ==
> > > > DRM_MODE_CONNECTOR_HDMIA)
> > > > > +                     cdns_hdmi_handle_hotplug(mhdp);
> > > > > +             else
> > > > > +                     cdns_dp_check_link_state(mhdp);
> > > > > +
> > > > > +     } else if (status == connector_status_disconnected) {
> > > > > +             /* Cable Disconnected  */
> > > > > +             dev_dbg(mhdp->dev, "HDMI/DP Cable Plug Out\n");
> > > > > +             enable_irq(mhdp->irq[IRQ_IN]);
> > > > > +     }
> > > > > +}
> > > > > +
> > > > > +static irqreturn_t cdns_mhdp8501_irq_thread(int irq, void *data)
> > > > > +{
> > > > > +     struct cdns_mhdp8501_device *mhdp = data;
> > > > > +
> > > > > +     disable_irq_nosync(irq);
> > > > > +
> > > > > +     mod_delayed_work(system_wq, &mhdp->hotplug_work,
> > > > > +
> > msecs_to_jiffies(HOTPLUG_DEBOUNCE_MS));
> > > > > +
> > > > > +     return IRQ_HANDLED;
> > > > > +}
> > > > > +
> > > > > +#define DATA_LANES_COUNT     4
> > > > > +static int cdns_mhdp8501_dt_parse(struct cdns_mhdp8501_device
> > > > *mhdp,
> > > > > +                               struct platform_device *pdev) {
> > > > > +     struct device *dev = &pdev->dev;
> > > > > +     struct device_node *np = dev->of_node;
> > > > > +     struct device_node *remote, *endpoint;
> > > > > +     u32 data_lanes[DATA_LANES_COUNT];
> > > > > +     u32 lane_value;
> > > > > +     int ret, i;
> > > > > +
> > > > > +     remote = of_graph_get_remote_node(np, 1, 0);
> > > > > +     if (!remote) {
> > > > > +             dev_err(dev, "fail to get remote node\n");
> > > > > +             of_node_put(remote);
> > > > > +             return -EINVAL;
> > > > > +     }
> > > > > +
> > > > > +     /* get connector type */
> > > > > +     if (of_device_is_compatible(remote, "hdmi-connector")) {
> > > > > +             mhdp->connector_type =
> > > > DRM_MODE_CONNECTOR_HDMIA;
> > > > > +
> > > > > +     } else if (of_device_is_compatible(remote, "dp-connector")) {
> > > > > +             mhdp->connector_type =
> > > > DRM_MODE_CONNECTOR_DisplayPort;
> > > >
> > > > Interesting hack. What if somebody wraps DP signals with the USB-C
> > > > controller in order to provide DP over USB-C?
> > >
> > > There is no such requirement now, and the supported types of
> > display-connectors do not include Type-C DP connectors.
> > > If type-C DP connectors is added in the future, I think it would be acceptable
> > to modify the code here.
> > 
> > It would be acceptable, but it most likely will also require chaning the DT
> > bindings as there is no longer an easy way to identify the next bridge. Also you
> > might not have that now, but it is pretty common to have DP retimers on the
> > board in order to improve the sinal integrity.
> > Thus I think it is not a proper solution to check the next node's compatible. I
> > think we need a way to specify HDMI vs DP firmware / mode in the device
> > tree.
> > 
> 
> Since there already have the connector type for HDMI or DP.
> adding another parameter to the DT bindings to specify the PHY type seems redundant.
> 
> If anyone add DP retimer to the board, the similar code as followed may add to the driver.
>          last_remote = remote;
>          while (of_graph_get_remote_node(last_remote, 1, 0))
>                  last_remote = of_graph_get_remote_node(last_remote, 1, 0);

Definite NAK for such a code piece. It's not a host driver's business to
traverse DT for other, independent devices. They might or might not
follow the usb-switch.yaml

> 
> Before new requirements arise, I hope to keep the current implementation.

I'd say, no. Please make it good from the beginning.

-- 
With best wishes
Dmitry

