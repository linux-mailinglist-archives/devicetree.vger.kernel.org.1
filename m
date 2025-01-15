Return-Path: <devicetree+bounces-138737-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 55AE7A11F1D
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 11:21:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5113C188C894
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 10:21:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0754820B1F5;
	Wed, 15 Jan 2025 10:21:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fCFBwGxV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 001191FBCBF
	for <devicetree@vger.kernel.org>; Wed, 15 Jan 2025 10:21:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736936508; cv=none; b=MEOlXCeLQ86FYXCDbVDIzPy+jEN9hOlvAbdlm1AaAcls/Pn9j1Hx7wki966mVmmbSjE9ZO4Mr6TRyelnLbIvUk+++f4HFcF8bqwVsvfOhuTxVaGEZowp/Em2p4qVSWxhh+wMs14w4o+S3GQRZN585yfNjtHL9ddMNRWVpHiWUVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736936508; c=relaxed/simple;
	bh=nM97VSfw7+XfarjLhrslIRBzZqrMj7WfHWtAysdrkRI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LOXTBa8JT8q9l6r8y4IuPWEgN/XkbQAaWpX5sqCoUqRHx/dKlYLaTUqhuMff2STh24F90G4sIFL2+etd6OOT2Og9NXbEUGlHI4NR3rc/z688H0+R0+HRDCQTqLlYtcgg8Z6CY8+nfidQVYnSs+BbtgpHfwa4dOMiET36CGafopU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=fCFBwGxV; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-54298ec925bso4338082e87.3
        for <devicetree@vger.kernel.org>; Wed, 15 Jan 2025 02:21:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736936504; x=1737541304; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=63aj+UwgHNGwqeZiQ3uZihtLpU5vDRHvMYeWhWkXD+o=;
        b=fCFBwGxVbpRyGoDE2aIIGH0CRAaNSiNCq+DKIqhGh+2YRtgwuGo0d5ExClWh34OA+f
         6/oJEEOoQzXFtyHqd3FkByHb92E5WL3/cxuR1F8eTMRtVKVbhKldS2Z6hQnwq2bcEfB+
         dZ15rLpjbOFeWZhCSJBLc02ddV3J5WrFDWtpjELI5M6amJ1shDJfBpqdywn0Oge9Ea4o
         gqeGB6FOl/7GxHe3IS/LmV0nJClH4LzCgc3DySZmtIWP3re+CibONrrnsVRMcVuhXuMt
         pFn1LvHHzuMCdTG4ie51TSZZc/2pOmQIutYQoe73KBEqhd49+zHigCJT80su8aPvoFdI
         yWpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736936504; x=1737541304;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=63aj+UwgHNGwqeZiQ3uZihtLpU5vDRHvMYeWhWkXD+o=;
        b=iCdOmufiwd3nHFNmGtidAiPTHt/N0zQNV2xwS1w/fMnT/NYtZgi9AJGkVGNrCeQkO2
         +23TCXlDQa8L1iNhDeG+Uj6uMV2b90+bCRn029sphVd9bAlLPZZol29pOm2jHp/r+Ufv
         w0U+SAks7CQ9JyPgDAK5pTl6BvaVot9G2HoN+8kJR6KWX2TiBg7b81dbeoZC1g7lSixE
         Go4EggyYFOdyEKeeIGcQs4Ou/5OG13rFulHqJcbBqdMnLTHNXdwyV+uc37fQMsYvqbXu
         Bdx3s3zlP606dRdw5k67yUqBnVfO/uAYkBeOwUC8ByZUIB0nwC2ASCE60cUPaEmTySId
         i3QA==
X-Forwarded-Encrypted: i=1; AJvYcCWvpocm1USeBfPotdE1A7CMz/ysaF+ZxlhRWkB7u5vzqitdTe6YhbOcwftNKjuy1/mMaNjp/LPegzqq@vger.kernel.org
X-Gm-Message-State: AOJu0YxuAuXYjQXDR1oWBfnagSdK8zpm5L5xjOzOrYkVaimWq9MR7QuQ
	vPkl8BpozpFqflofdK6n3QDGNkfBQyVoru2bAflwnWsbQqgMxaLfosTdvgwdUWM=
X-Gm-Gg: ASbGnctAk1h2mcSlCQKZL6oIq+jGs8IVL5VbkTge5r+3j/i7pxe2hIy1Y0o+WwA+Xk9
	Nu7Ey2gHd2yHrVfzT6zaCwMgCm5hjGaOaDcs41FsjYQmZ8b0WKW4k2PpAMNEkJ8n682w0ipdE8j
	MJO7kkMf+DhhxmDGwoZNgXTwvxaW5dc5DYrgs+yRAEmeTCM0ahCyUhQ65ZQFwvkzGCDCgBW9//J
	/wWkfr1QqQEQtmi1pCGSjB8KHLns89mAKDVoGnIy/yzbRgb++FCOkfoV3jz6W7/P+psEqnzQwBf
	LVpdk8aTZsM+eBoWdLnEeIeh9zxlBVnrQeNP
X-Google-Smtp-Source: AGHT+IGKCYIL6ms0CNNzmPSUPRA+pYj/8YtBYJSEZqXbMLOxu7olTwp/SWnq5+EVxgC4Ani9OCd0CQ==
X-Received: by 2002:a05:6512:318d:b0:540:2223:9b0b with SMTP id 2adb3069b0e04-54284801dbemr8835764e87.35.1736936503649;
        Wed, 15 Jan 2025 02:21:43 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5428bea67e0sm2014142e87.159.2025.01.15.02.21.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jan 2025 02:21:42 -0800 (PST)
Date: Wed, 15 Jan 2025 12:21:39 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: fnkl.kernel@gmail.com
Cc: Hector Martin <marcan@marcan.st>, Sven Peter <sven@svenpeter.dev>, 
	Alyssa Rosenzweig <alyssa@rosenzweig.io>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Jessica Zhang <quic_jesszhan@quicinc.com>, asahi@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Alyssa Ross <hi@alyssa.is>, Janne Grunau <j@jannau.net>
Subject: Re: [PATCH v4 2/5] drm: adp: Add Apple Display Pipe driver
Message-ID: <mu7qiybhj7tu5hauk7izfxqlookc3awpknhjk74zwpkbznei4m@kewap6vivzoa>
References: <20250114-adpdrm-v4-0-e9b5260a39f1@gmail.com>
 <20250114-adpdrm-v4-2-e9b5260a39f1@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250114-adpdrm-v4-2-e9b5260a39f1@gmail.com>

On Tue, Jan 14, 2025 at 10:38:53PM +0100, Sasha Finkelstein via B4 Relay wrote:
> From: Sasha Finkelstein <fnkl.kernel@gmail.com>
> 
> This display controller is present on M-series chips and is used
> to drive the touchbar display.
> 
> Co-developed-by: Janne Grunau <j@jannau.net>
> Signed-off-by: Janne Grunau <j@jannau.net>
> Signed-off-by: Sasha Finkelstein <fnkl.kernel@gmail.com>
> ---
>  drivers/gpu/drm/Kconfig        |   2 +
>  drivers/gpu/drm/Makefile       |   1 +
>  drivers/gpu/drm/adp/Kconfig    |  16 ++
>  drivers/gpu/drm/adp/Makefile   |   5 +
>  drivers/gpu/drm/adp/adp-mipi.c | 251 +++++++++++++++++
>  drivers/gpu/drm/adp/adp_drv.c  | 594 +++++++++++++++++++++++++++++++++++++++++
>  6 files changed, 869 insertions(+)
> 
> diff --git a/drivers/gpu/drm/Kconfig b/drivers/gpu/drm/Kconfig
> index 772fc7625639de07de873afa0e5e0c37bf4f4420..bba7a9c1f1d213c9cf0418a388646da7a8504f4f 100644
> --- a/drivers/gpu/drm/Kconfig
> +++ b/drivers/gpu/drm/Kconfig
> @@ -503,6 +503,8 @@ source "drivers/gpu/drm/mcde/Kconfig"
>  
>  source "drivers/gpu/drm/tidss/Kconfig"
>  
> +source "drivers/gpu/drm/adp/Kconfig"
> +
>  source "drivers/gpu/drm/xlnx/Kconfig"
>  
>  source "drivers/gpu/drm/gud/Kconfig"
> diff --git a/drivers/gpu/drm/Makefile b/drivers/gpu/drm/Makefile
> index 463afad1b5ca6275e61223adc8ca036c3d4d6b03..acd8d8943ef2bf85c80db7c218c59a7ec2df56da 100644
> --- a/drivers/gpu/drm/Makefile
> +++ b/drivers/gpu/drm/Makefile
> @@ -213,6 +213,7 @@ obj-y			+= mxsfb/
>  obj-y			+= tiny/
>  obj-$(CONFIG_DRM_PL111) += pl111/
>  obj-$(CONFIG_DRM_TVE200) += tve200/
> +obj-$(CONFIG_DRM_ADP) += adp/
>  obj-$(CONFIG_DRM_XEN) += xen/
>  obj-$(CONFIG_DRM_VBOXVIDEO) += vboxvideo/
>  obj-$(CONFIG_DRM_LIMA)  += lima/
> diff --git a/drivers/gpu/drm/adp/Kconfig b/drivers/gpu/drm/adp/Kconfig
> new file mode 100644
> index 0000000000000000000000000000000000000000..7e70b2e26555a2c2ddf71350bce74c97dfe292da
> --- /dev/null
> +++ b/drivers/gpu/drm/adp/Kconfig
> @@ -0,0 +1,16 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR MIT
> +config DRM_ADP
> +	tristate "DRM Support for pre-DCP Apple display controllers"
> +	depends on DRM && OF && ARM64
> +	depends on ARCH_APPLE || COMPILE_TEST
> +	select DRM_KMS_HELPER
> +	select DRM_BRIDGE_CONNECTOR
> +	select DRM_DISPLAY_HELPER
> +	select DRM_KMS_DMA_HELPER
> +	select DRM_GEM_DMA_HELPER
> +	select VIDEOMODE_HELPERS
> +	select DRM_MIPI_DSI
> +	help
> +	  Chose this option if you have an Apple Arm laptop with a touchbar.
> +
> +	  If M is selected, this module will be called adpdrm.
> diff --git a/drivers/gpu/drm/adp/Makefile b/drivers/gpu/drm/adp/Makefile
> new file mode 100644
> index 0000000000000000000000000000000000000000..8e7b618edd35591ce9b480a8fd3819cce41557f5
> --- /dev/null
> +++ b/drivers/gpu/drm/adp/Makefile
> @@ -0,0 +1,5 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR MIT
> +
> +adpdrm-y := adp_drv.o
> +adpdrm-mipi-y := adp-mipi.o
> +obj-$(CONFIG_DRM_ADP) += adpdrm.o adpdrm-mipi.o
> diff --git a/drivers/gpu/drm/adp/adp-mipi.c b/drivers/gpu/drm/adp/adp-mipi.c
> new file mode 100644
> index 0000000000000000000000000000000000000000..7e6135422f65cee2a8df123360ba3c16c886b38a
> --- /dev/null
> +++ b/drivers/gpu/drm/adp/adp-mipi.c
> @@ -0,0 +1,251 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +
> +#include <linux/iopoll.h>
> +#include <linux/of.h>
> +#include <linux/platform_device.h>
> +
> +#include <drm/drm_bridge.h>
> +#include <drm/drm_mipi_dsi.h>
> +
> +#define DSI_GEN_HDR 0x6c
> +#define DSI_GEN_PLD_DATA 0x70
> +
> +#define DSI_CMD_PKT_STATUS 0x74
> +
> +#define GEN_PLD_R_EMPTY BIT(4)
> +#define GEN_PLD_W_FULL BIT(3)
> +#define GEN_PLD_W_EMPTY BIT(2)
> +#define GEN_CMD_FULL BIT(1)
> +#define GEN_CMD_EMPTY BIT(0)
> +#define GEN_RD_CMD_BUSY BIT(6)
> +#define CMD_PKT_STATUS_TIMEOUT_US 20000
> +
> +struct adp_mipi_drv_private {
> +	struct mipi_dsi_host dsi;
> +	struct drm_bridge bridge;
> +	struct drm_bridge *next_bridge;
> +	void __iomem *mipi;
> +};
> +
> +#define mipi_to_adp(x) container_of(x, struct adp_mipi_drv_private, dsi)
> +
> +static int adp_dsi_gen_pkt_hdr_write(struct adp_mipi_drv_private *adp, u32 hdr_val)
> +{
> +	int ret;
> +	u32 val, mask;
> +
> +	ret = readl_poll_timeout(adp->mipi + DSI_CMD_PKT_STATUS,
> +				 val, !(val & GEN_CMD_FULL), 1000,
> +				 CMD_PKT_STATUS_TIMEOUT_US);
> +	if (ret) {
> +		dev_err(adp->dsi.dev, "failed to get available command FIFO\n");
> +		return ret;
> +	}
> +
> +	writel(hdr_val, adp->mipi + DSI_GEN_HDR);
> +
> +	mask = GEN_CMD_EMPTY | GEN_PLD_W_EMPTY;
> +	ret = readl_poll_timeout(adp->mipi + DSI_CMD_PKT_STATUS,
> +				 val, (val & mask) == mask,
> +				 1000, CMD_PKT_STATUS_TIMEOUT_US);
> +	if (ret) {
> +		dev_err(adp->dsi.dev, "failed to write command FIFO\n");
> +		return ret;
> +	}
> +
> +	return 0;
> +}
> +
> +static int adp_dsi_write(struct adp_mipi_drv_private *adp,
> +			 const struct mipi_dsi_packet *packet)
> +{
> +	const u8 *tx_buf = packet->payload;
> +	int len = packet->payload_length, pld_data_bytes = sizeof(u32), ret;
> +	__le32 word;
> +	u32 val;
> +
> +	while (len) {
> +		if (len < pld_data_bytes) {
> +			word = 0;
> +			memcpy(&word, tx_buf, len);
> +			writel(le32_to_cpu(word), adp->mipi + DSI_GEN_PLD_DATA);
> +			len = 0;
> +		} else {
> +			memcpy(&word, tx_buf, pld_data_bytes);
> +			writel(le32_to_cpu(word), adp->mipi + DSI_GEN_PLD_DATA);
> +			tx_buf += pld_data_bytes;
> +			len -= pld_data_bytes;
> +		}
> +
> +		ret = readl_poll_timeout(adp->mipi + DSI_CMD_PKT_STATUS,
> +					 val, !(val & GEN_PLD_W_FULL), 1000,
> +					 CMD_PKT_STATUS_TIMEOUT_US);
> +		if (ret) {
> +			dev_err(adp->dsi.dev,
> +				"failed to get available write payload FIFO\n");
> +			return ret;
> +		}
> +	}
> +
> +	word = 0;
> +	memcpy(&word, packet->header, sizeof(packet->header));
> +	return adp_dsi_gen_pkt_hdr_write(adp, le32_to_cpu(word));
> +}
> +
> +static int adp_dsi_read(struct adp_mipi_drv_private *adp,
> +			const struct mipi_dsi_msg *msg)
> +{
> +	int i, j, ret, len = msg->rx_len;
> +	u8 *buf = msg->rx_buf;
> +	u32 val;
> +
> +	/* Wait end of the read operation */
> +	ret = readl_poll_timeout(adp->mipi + DSI_CMD_PKT_STATUS,
> +				 val, !(val & GEN_RD_CMD_BUSY),
> +				 1000, CMD_PKT_STATUS_TIMEOUT_US);
> +	if (ret) {
> +		dev_err(adp->dsi.dev, "Timeout during read operation\n");
> +		return ret;
> +	}
> +
> +	for (i = 0; i < len; i += 4) {
> +		/* Read fifo must not be empty before all bytes are read */
> +		ret = readl_poll_timeout(adp->mipi + DSI_CMD_PKT_STATUS,
> +					 val, !(val & GEN_PLD_R_EMPTY),
> +					 1000, CMD_PKT_STATUS_TIMEOUT_US);
> +		if (ret) {
> +			dev_err(adp->dsi.dev, "Read payload FIFO is empty\n");
> +			return ret;
> +		}
> +
> +		val = readl(adp->mipi + DSI_GEN_PLD_DATA);
> +		for (j = 0; j < 4 && j + i < len; j++)
> +			buf[i + j] = val >> (8 * j);
> +	}
> +
> +	return ret;
> +}
> +
> +static ssize_t adp_dsi_host_transfer(struct mipi_dsi_host *host,
> +				     const struct mipi_dsi_msg *msg)
> +{
> +	struct adp_mipi_drv_private *adp = mipi_to_adp(host);
> +	struct mipi_dsi_packet packet;
> +	int ret, nb_bytes;
> +
> +	ret = mipi_dsi_create_packet(&packet, msg);
> +	if (ret) {
> +		dev_err(adp->dsi.dev, "failed to create packet: %d\n", ret);
> +		return ret;
> +	}
> +
> +	ret = adp_dsi_write(adp, &packet);
> +	if (ret)
> +		return ret;
> +
> +	if (msg->rx_buf && msg->rx_len) {
> +		ret = adp_dsi_read(adp, msg);
> +		if (ret)
> +			return ret;
> +		nb_bytes = msg->rx_len;
> +	} else {
> +		nb_bytes = packet.size;
> +	}
> +
> +	return nb_bytes;
> +}
> +
> +static int adp_dsi_host_attach(struct mipi_dsi_host *host,
> +			       struct mipi_dsi_device *dev)
> +{
> +	struct adp_mipi_drv_private *adp = mipi_to_adp(host);
> +	struct drm_bridge *next;
> +
> +	next = devm_drm_of_get_bridge(adp->dsi.dev, adp->dsi.dev->of_node, 1, 0);

select DRM_PANEL_BRIDGE for this API to be available.
Also there is an issue of lifetimes. The bridge will be destroyed only
when MIPI driver is unbound, however the panel can be attached and
detached several times.


> +	if (IS_ERR(next))
> +		return PTR_ERR(next);
> +
> +	adp->next_bridge = next;
> +
> +	drm_bridge_add(&adp->bridge);
> +	return 0;
> +}
> +
> +static int adp_dsi_host_detach(struct mipi_dsi_host *host,
> +			       struct mipi_dsi_device *dev)
> +{
> +	struct adp_mipi_drv_private *adp = mipi_to_adp(host);
> +
> +	drm_bridge_remove(&adp->bridge);
> +	return 0;
> +}
> +
> +static const struct mipi_dsi_host_ops adp_dsi_host_ops = {
> +	.transfer = adp_dsi_host_transfer,
> +	.attach = adp_dsi_host_attach,
> +	.detach = adp_dsi_host_detach,
> +};
> +
> +static int adp_dsi_bridge_attach(struct drm_bridge *bridge,
> +				 enum drm_bridge_attach_flags flags)
> +{
> +	struct adp_mipi_drv_private *adp =
> +		container_of(bridge, struct adp_mipi_drv_private, bridge);
> +
> +	return drm_bridge_attach(bridge->encoder, adp->next_bridge, bridge, flags);
> +}
> +
> +static const struct drm_bridge_funcs adp_dsi_bridge_funcs = {
> +	.attach	= adp_dsi_bridge_attach,
> +};
> +
> +static int adp_mipi_probe(struct platform_device *pdev)
> +{
> +	struct adp_mipi_drv_private *adp;
> +
> +	adp = devm_kzalloc(&pdev->dev, sizeof(*adp), GFP_KERNEL);
> +	if (!adp)
> +		return -ENOMEM;
> +
> +	adp->mipi = devm_platform_ioremap_resource(pdev, 0);
> +	if (IS_ERR(adp->mipi)) {
> +		dev_err(&pdev->dev, "failed to map mipi mmio");
> +		return PTR_ERR(adp->mipi);
> +	}
> +
> +	adp->dsi.dev = &pdev->dev;
> +	adp->dsi.ops = &adp_dsi_host_ops;
> +	adp->bridge.funcs = &adp_dsi_bridge_funcs;
> +	adp->bridge.of_node = pdev->dev.of_node;
> +	adp->bridge.type = DRM_MODE_CONNECTOR_DSI;
> +	dev_set_drvdata(&pdev->dev, adp);
> +	return mipi_dsi_host_register(&adp->dsi);
> +}
> +
> +static void adp_mipi_remove(struct platform_device *pdev)
> +{
> +	struct device *dev = &pdev->dev;
> +	struct adp_mipi_drv_private *adp = dev_get_drvdata(dev);
> +
> +	mipi_dsi_host_unregister(&adp->dsi);

What happens if the MIPI driver is unbound. The DRM device is still
registered at this point and doesn't have a way to know that MIPI and
the panel were pulled away. I'd suggest switching to the component
framework here, so that unbinding of either of drivers also destroys the
DRM device.

> +}
> +
> +static const struct of_device_id adp_mipi_of_match[] = {
> +	{ .compatible = "apple,h7-display-pipe-mipi", },
> +	{ },
> +};
> +MODULE_DEVICE_TABLE(of, adp_mipi_of_match);
> +
> +static struct platform_driver adp_mipi_platform_driver = {
> +	.driver = {
> +		.name = "adp-mipi",
> +		.of_match_table = adp_mipi_of_match,
> +	},
> +	.probe = adp_mipi_probe,
> +	.remove = adp_mipi_remove,
> +};
> +
> +module_platform_driver(adp_mipi_platform_driver);
> +
> +MODULE_DESCRIPTION("Apple Display Pipe MIPI driver");
> +MODULE_LICENSE("GPL");
> diff --git a/drivers/gpu/drm/adp/adp_drv.c b/drivers/gpu/drm/adp/adp_drv.c
> new file mode 100644
> index 0000000000000000000000000000000000000000..9384490e2895f7808a987b0aec147b52516a2f8c
> --- /dev/null
> +++ b/drivers/gpu/drm/adp/adp_drv.c
> @@ -0,0 +1,594 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +
> +#include <linux/iopoll.h>
> +#include <linux/of.h>
> +#include <linux/platform_device.h>
> +
> +#include <drm/drm_atomic.h>
> +#include <drm/drm_atomic_helper.h>
> +#include <drm/drm_bridge.h>
> +#include <drm/drm_bridge_connector.h>
> +#include <drm/drm_drv.h>
> +#include <drm/drm_fb_dma_helper.h>
> +#include <drm/drm_framebuffer.h>
> +#include <drm/drm_gem_atomic_helper.h>
> +#include <drm/drm_gem_dma_helper.h>
> +#include <drm/drm_gem_framebuffer_helper.h>
> +#include <drm/drm_probe_helper.h>
> +#include <drm/drm_simple_kms_helper.h>
> +#include <drm/drm_vblank.h>
> +
> +#define ADP_INT_STATUS 0x34
> +#define ADP_INT_STATUS_INT_MASK 0x7
> +#define ADP_INT_STATUS_VBLANK 0x1
> +#define ADP_CTRL 0x100
> +#define ADP_CTRL_VBLANK_ON 0x12
> +#define ADP_CTRL_FIFO_ON 0x601
> +#define ADP_SCREEN_SIZE 0x0c
> +#define ADP_SCREEN_HSIZE GENMASK(15, 0)
> +#define ADP_SCREEN_VSIZE GENMASK(31, 16)
> +
> +#define ADBE_FIFO 0x10c0
> +#define ADBE_FIFO_SYNC 0xc0000000
> +
> +#define ADBE_BLEND_BYPASS 0x2020
> +#define ADBE_BLEND_EN1 0x2028
> +#define ADBE_BLEND_EN2 0x2074
> +#define ADBE_BLEND_EN3 0x202c
> +#define ADBE_BLEND_EN4 0x2034
> +#define ADBE_MASK_BUF 0x2200
> +
> +#define ADBE_SRC_START 0x4040
> +#define ADBE_SRC_SIZE 0x4048
> +#define ADBE_DST_START 0x4050
> +#define ADBE_DST_SIZE 0x4054
> +#define ADBE_STRIDE 0x4038
> +#define ADBE_FB_BASE 0x4030
> +
> +#define ADBE_LAYER_EN1 0x4020
> +#define ADBE_LAYER_EN2 0x4068
> +#define ADBE_LAYER_EN3 0x40b4
> +#define ADBE_LAYER_EN4 0x40f4
> +#define ADBE_SCALE_CTL 0x40ac
> +#define ADBE_SCALE_CTL_BYPASS 0x100000
> +
> +#define ADBE_LAYER_CTL 0x1038
> +#define ADBE_LAYER_CTL_ENABLE 0x10000
> +
> +#define ADBE_PIX_FMT 0x402c
> +#define ADBE_PIX_FMT_XRGB32 0x53e4001
> +
> +static int adp_open(struct inode *inode, struct file *filp)
> +{
> +	/*
> +	 * The modesetting driver does not check the non-desktop connector
> +	 * property and keeps the device open and locked. If the touchbar daemon
> +	 * opens the device first modesetting breaks the whole X session.
> +	 * Simply refuse to open the device for X11 server processes as
> +	 * workaround.
> +	 */
> +	if (current->comm[0] == 'X')
> +		return -EBUSY;
> +
> +	return drm_open(inode, filp);
> +}
> +
> +static const struct file_operations adp_fops = {
> +	.owner          = THIS_MODULE,
> +	.open           = adp_open,
> +	.release        = drm_release,
> +	.unlocked_ioctl = drm_ioctl,
> +	.compat_ioctl   = drm_compat_ioctl,
> +	.poll           = drm_poll,
> +	.read           = drm_read,
> +	.llseek         = noop_llseek,
> +	.mmap           = drm_gem_mmap,
> +	.fop_flags      = FOP_UNSIGNED_OFFSET,
> +	DRM_GEM_DMA_UNMAPPED_AREA_FOPS
> +};
> +
> +static int adp_drm_gem_dumb_create(struct drm_file *file_priv,
> +					struct drm_device *drm,
> +					struct drm_mode_create_dumb *args)
> +{
> +	args->height = ALIGN(args->height, 64);
> +	args->size = args->pitch * args->height;
> +
> +	return drm_gem_dma_dumb_create_internal(file_priv, drm, args);
> +}
> +
> +static const struct drm_driver adp_driver = {
> +	.driver_features = DRIVER_GEM | DRIVER_MODESET | DRIVER_ATOMIC,
> +	.fops = &adp_fops,
> +	DRM_GEM_DMA_DRIVER_OPS_VMAP_WITH_DUMB_CREATE(adp_drm_gem_dumb_create),
> +	.name = "adp",
> +	.desc = "Apple Display Pipe DRM Driver",
> +	.date = "20230412",
> +	.major = 0,
> +	.minor = 1,
> +};
> +
> +struct adp_drv_private {
> +	struct drm_device drm;
> +	struct drm_crtc crtc;
> +	struct drm_encoder encoder;
> +	struct drm_connector *connector;
> +	struct drm_bridge *next_bridge;
> +	void __iomem *be;
> +	void __iomem *fe;
> +	u32 *mask_buf;
> +	u64 mask_buf_size;
> +	dma_addr_t mask_iova;
> +	int be_irq;
> +	int fe_irq;
> +	spinlock_t irq_lock;
> +	struct drm_pending_vblank_event *event;
> +};
> +
> +struct adp_plane {
> +	struct drm_plane base_plane;
> +	u8 id;

Do you need the id? You can use drm_plane instead of subclassing it.

> +};
> +
> +#define to_adp(x) container_of(x, struct adp_drv_private, drm)
> +#define crtc_to_adp(x) container_of(x, struct adp_drv_private, crtc)
> +
> +static int adp_plane_atomic_check(struct drm_plane *plane,
> +				    struct drm_atomic_state *state)
> +{
> +	struct drm_plane_state *new_plane_state;
> +	struct drm_crtc_state *crtc_state;
> +
> +	new_plane_state = drm_atomic_get_new_plane_state(state, plane);
> +
> +	if (!new_plane_state->crtc)
> +		return 0;
> +
> +	crtc_state = drm_atomic_get_crtc_state(state, new_plane_state->crtc);
> +	if (IS_ERR(crtc_state))
> +		return PTR_ERR(crtc_state);

empty line, please

> +	return drm_atomic_helper_check_plane_state(new_plane_state,
> +						   crtc_state,
> +						   DRM_PLANE_NO_SCALING,
> +						   DRM_PLANE_NO_SCALING,
> +						   true, true);
> +}
> +
> +static void adp_plane_atomic_update(struct drm_plane *plane,
> +				    struct drm_atomic_state *state)
> +{
> +	struct adp_drv_private *adp;
> +	struct drm_rect src_rect;
> +	struct drm_gem_dma_object *obj;
> +	struct drm_framebuffer *fb;
> +	struct drm_plane_state *new_state = drm_atomic_get_new_plane_state(state, plane);
> +	u32 src_pos, src_size, dst_pos, dst_size;
> +
> +	if (!plane || !new_state)
> +		return;
> +
> +	fb = new_state->fb;
> +	if (!fb)
> +		return;
> +	adp = to_adp(plane->dev);
> +
> +	drm_rect_fp_to_int(&src_rect, &new_state->src);
> +	src_pos = src_rect.x1 << 16 | src_rect.y1;
> +	dst_pos = new_state->dst.x1 << 16 | new_state->dst.y1;
> +	src_size = drm_rect_width(&src_rect) << 16 | drm_rect_height(&src_rect);
> +	dst_size = drm_rect_width(&new_state->dst) << 16 |
> +		drm_rect_height(&new_state->dst);
> +	writel(src_pos, adp->be + ADBE_SRC_START);
> +	writel(src_size, adp->be + ADBE_SRC_SIZE);
> +	writel(dst_pos, adp->be + ADBE_DST_START);
> +	writel(dst_size, adp->be + ADBE_DST_SIZE);
> +	writel(fb->pitches[0], adp->be + ADBE_STRIDE);
> +	obj = drm_fb_dma_get_gem_obj(fb, 0);
> +	if (obj)
> +		writel(obj->dma_addr + fb->offsets[0], adp->be + ADBE_FB_BASE);
> +
> +	writel(BIT(0), adp->be + ADBE_LAYER_EN1);
> +	writel(BIT(0), adp->be + ADBE_LAYER_EN2);
> +	writel(BIT(0), adp->be + ADBE_LAYER_EN3);
> +	writel(BIT(0), adp->be + ADBE_LAYER_EN4);
> +	writel(ADBE_SCALE_CTL_BYPASS, adp->be + ADBE_SCALE_CTL);
> +	writel(ADBE_LAYER_CTL_ENABLE | BIT(0), adp->be + ADBE_LAYER_CTL);
> +	writel(ADBE_PIX_FMT_XRGB32, adp->be + ADBE_PIX_FMT);
> +}
> +
> +static void adp_plane_atomic_disable(struct drm_plane *plane,
> +				     struct drm_atomic_state *state)
> +{
> +	struct adp_drv_private *adp = to_adp(plane->dev);
> +
> +	writel(0x0, adp->be + ADBE_LAYER_EN1);
> +	writel(0x0, adp->be + ADBE_LAYER_EN2);
> +	writel(0x0, adp->be + ADBE_LAYER_EN3);
> +	writel(0x0, adp->be + ADBE_LAYER_EN4);
> +	writel(ADBE_LAYER_CTL_ENABLE, adp->be + ADBE_LAYER_CTL);
> +}
> +
> +static const struct drm_plane_helper_funcs adp_plane_helper_funcs = {
> +	.atomic_check = adp_plane_atomic_check,
> +	.atomic_update = adp_plane_atomic_update,
> +	.atomic_disable = adp_plane_atomic_disable,
> +	DRM_GEM_SHADOW_PLANE_HELPER_FUNCS
> +};
> +
> +static const struct drm_plane_funcs adp_plane_funcs = {
> +	.update_plane = drm_atomic_helper_update_plane,
> +	.disable_plane = drm_atomic_helper_disable_plane,
> +	DRM_GEM_SHADOW_PLANE_FUNCS
> +};
> +
> +static const u32 plane_formats[] = {
> +	DRM_FORMAT_XRGB8888,
> +};
> +
> +#define ALL_CRTCS 1
> +
> +static struct adp_plane *adp_plane_new(struct adp_drv_private *adp, u8 id)
> +{
> +	struct drm_device *drm = &adp->drm;
> +	struct adp_plane *plane;
> +	enum drm_plane_type plane_type;
> +
> +	plane_type = (id == 0) ? DRM_PLANE_TYPE_PRIMARY :
> +		DRM_PLANE_TYPE_OVERLAY;
> +
> +	plane = drmm_universal_plane_alloc(drm, struct adp_plane, base_plane,
> +					   ALL_CRTCS, &adp_plane_funcs,
> +					   plane_formats, ARRAY_SIZE(plane_formats),
> +					   NULL, plane_type, "plane %d", id);
> +	if (!plane) {
> +		drm_err(drm, "failed to allocate plane");
> +		return ERR_PTR(-ENOMEM);
> +	}
> +	plane->id = id;
> +
> +	drm_plane_helper_add(&plane->base_plane, &adp_plane_helper_funcs);
> +	return plane;
> +}
> +
> +static void adp_enable_vblank(struct adp_drv_private *adp)
> +{
> +	u32 cur_ctrl;
> +
> +	writel(ADP_INT_STATUS_INT_MASK, adp->fe + ADP_INT_STATUS);
> +
> +	cur_ctrl = readl(adp->fe + ADP_CTRL);
> +	writel(cur_ctrl | ADP_CTRL_VBLANK_ON, adp->fe + ADP_CTRL);
> +}
> +
> +static int adp_crtc_enable_vblank(struct drm_crtc *crtc)
> +{
> +	struct drm_device *dev = crtc->dev;
> +	struct adp_drv_private *adp = to_adp(dev);
> +
> +	adp_enable_vblank(adp);
> +
> +	return 0;
> +}
> +
> +static void adp_disable_vblank(struct adp_drv_private *adp)
> +{
> +	u32 cur_ctrl;
> +
> +	cur_ctrl = readl(adp->fe + ADP_CTRL);
> +	writel(cur_ctrl & ~ADP_CTRL_VBLANK_ON, adp->fe + ADP_CTRL);
> +	writel(ADP_INT_STATUS_INT_MASK, adp->fe + ADP_INT_STATUS);
> +}
> +
> +static void adp_crtc_disable_vblank(struct drm_crtc *crtc)
> +{
> +	struct drm_device *dev = crtc->dev;
> +	struct adp_drv_private *adp = to_adp(dev);
> +
> +	adp_disable_vblank(adp);
> +}
> +
> +static void adp_crtc_atomic_enable(struct drm_crtc *crtc,
> +				   struct drm_atomic_state *state)
> +{
> +	struct adp_drv_private *adp = crtc_to_adp(crtc);
> +
> +	writel(BIT(0), adp->be + ADBE_BLEND_EN2);
> +	writel(BIT(4), adp->be + ADBE_BLEND_EN1);
> +	writel(BIT(0), adp->be + ADBE_BLEND_EN3);
> +	writel(BIT(0), adp->be + ADBE_BLEND_BYPASS);
> +	writel(BIT(0), adp->be + ADBE_BLEND_EN4);
> +}
> +
> +static void adp_crtc_atomic_disable(struct drm_crtc *crtc,
> +				    struct drm_atomic_state *state)
> +{
> +	struct adp_drv_private *adp = crtc_to_adp(crtc);
> +	struct drm_crtc_state *old_state = drm_atomic_get_old_crtc_state(state, crtc);
> +
> +	drm_atomic_helper_disable_planes_on_crtc(old_state, false);
> +
> +	writel(0x0, adp->be + ADBE_BLEND_EN2);
> +	writel(0x0, adp->be + ADBE_BLEND_EN1);
> +	writel(0x0, adp->be + ADBE_BLEND_EN3);
> +	writel(0x0, adp->be + ADBE_BLEND_BYPASS);
> +	writel(0x0, adp->be + ADBE_BLEND_EN4);
> +	drm_crtc_vblank_off(crtc);
> +}
> +
> +static void adp_crtc_atomic_flush(struct drm_crtc *crtc,
> +				  struct drm_atomic_state *state)
> +{
> +	u32 frame_num = 1;
> +	struct adp_drv_private *adp = crtc_to_adp(crtc);
> +	struct drm_crtc_state *new_state = drm_atomic_get_new_crtc_state(state, crtc);
> +	u64 new_size = ALIGN(new_state->mode.hdisplay *
> +			     new_state->mode.vdisplay * 4, PAGE_SIZE);
> +
> +	if (new_size != adp->mask_buf_size) {
> +		if (adp->mask_buf)
> +			dma_free_coherent(crtc->dev->dev, adp->mask_buf_size,
> +					  adp->mask_buf, adp->mask_iova);
> +		adp->mask_buf = NULL;
> +		if (new_size != 0) {
> +			adp->mask_buf = dma_alloc_coherent(crtc->dev->dev, new_size,
> +							   &adp->mask_iova, GFP_KERNEL);
> +			memset(adp->mask_buf, 0xFF, new_size);
> +			writel(adp->mask_iova, adp->be + ADBE_MASK_BUF);
> +		}
> +		adp->mask_buf_size = new_size;
> +	}
> +	writel(ADBE_FIFO_SYNC | frame_num, adp->be + ADBE_FIFO);
> +	//FIXME: use adbe flush interrupt
> +	spin_lock_irq(&crtc->dev->event_lock);
> +	if (crtc->state->event) {
> +		drm_crtc_vblank_get(crtc);
> +		adp->event = crtc->state->event;
> +	}
> +	crtc->state->event = NULL;
> +	spin_unlock_irq(&crtc->dev->event_lock);
> +}
> +
> +static const struct drm_crtc_funcs adp_crtc_funcs = {
> +	.destroy = drm_crtc_cleanup,
> +	.set_config = drm_atomic_helper_set_config,
> +	.page_flip = drm_atomic_helper_page_flip,
> +	.reset = drm_atomic_helper_crtc_reset,
> +	.atomic_duplicate_state = drm_atomic_helper_crtc_duplicate_state,
> +	.atomic_destroy_state = drm_atomic_helper_crtc_destroy_state,
> +	.enable_vblank = adp_crtc_enable_vblank,
> +	.disable_vblank = adp_crtc_disable_vblank,
> +};
> +
> +
> +static const struct drm_crtc_helper_funcs adp_crtc_helper_funcs = {
> +	.atomic_enable = adp_crtc_atomic_enable,
> +	.atomic_disable = adp_crtc_atomic_disable,
> +	.atomic_flush = adp_crtc_atomic_flush,
> +};
> +
> +static int adp_setup_crtc(struct adp_drv_private *adp)
> +{
> +	struct drm_device *drm = &adp->drm;
> +	struct adp_plane *primary;
> +	int ret;
> +
> +	primary = adp_plane_new(adp, 0);
> +	if (IS_ERR(primary))
> +		return PTR_ERR(primary);
> +
> +	ret = drm_crtc_init_with_planes(drm, &adp->crtc, &primary->base_plane,
> +					NULL, &adp_crtc_funcs, NULL);
> +	if (ret)
> +		return ret;
> +
> +	drm_crtc_helper_add(&adp->crtc, &adp_crtc_helper_funcs);
> +	return 0;
> +}
> +
> +static const struct drm_mode_config_funcs adp_mode_config_funcs = {
> +	.fb_create = drm_gem_fb_create_with_dirty,
> +	.atomic_check = drm_atomic_helper_check,
> +	.atomic_commit = drm_atomic_helper_commit,
> +};
> +
> +static int adp_setup_mode_config(struct adp_drv_private *adp)
> +{
> +	struct drm_device *drm = &adp->drm;
> +	int ret;
> +	u32 size;
> +
> +	ret = drmm_mode_config_init(drm);
> +	if (ret)
> +		return ret;
> +
> +	/*
> +	 * Query screen size restrict the frame buffer size to the screen size
> +	 * aligned to the next multiple of 64. This is not necessary but can be
> +	 * used as simple check for non-desktop devices.
> +	 * Xorg's modesetting driver does not care about the connector
> +	 * "non-desktop" property. The max frame buffer width or height can be
> +	 * easily checked and a device can be reject if the max width/height is
> +	 * smaller than 120 for example.
> +	 * Any touchbar daemon is not limited by this small framebuffer size.
> +	 */
> +	size = readl(adp->fe + ADP_SCREEN_SIZE);
> +
> +	drm->mode_config.min_width = 32;
> +	drm->mode_config.min_height = 32;
> +	drm->mode_config.max_width = ALIGN(FIELD_GET(ADP_SCREEN_HSIZE, size), 64);
> +	drm->mode_config.max_height = ALIGN(FIELD_GET(ADP_SCREEN_VSIZE, size), 64);
> +	drm->mode_config.preferred_depth = 24;
> +	drm->mode_config.prefer_shadow = 0;
> +	drm->mode_config.funcs = &adp_mode_config_funcs;
> +
> +	ret = adp_setup_crtc(adp);
> +	if (ret) {
> +		drm_err(drm, "failed to create crtc");
> +		return ret;
> +	}
> +
> +	adp->encoder.possible_crtcs = ALL_CRTCS;
> +	ret = drm_simple_encoder_init(drm, &adp->encoder, DRM_MODE_ENCODER_DSI);

This is being deprecated, please use drm_encoder_init() /
drmm_encoder_init() instead.

> +	if (ret) {
> +		drm_err(drm, "failed to init encoder");
> +		return ret;
> +	}
> +
> +	ret = drm_bridge_attach(&adp->encoder, adp->next_bridge, NULL,
> +				DRM_BRIDGE_ATTACH_NO_CONNECTOR);
> +	if (ret) {
> +		drm_err(drm, "failed to init bridge chain");
> +		return ret;
> +	}
> +
> +	adp->connector = drm_bridge_connector_init(drm, &adp->encoder);
> +	if (IS_ERR(adp->connector))
> +		return PTR_ERR(adp->connector);
> +
> +	drm_connector_attach_encoder(adp->connector, &adp->encoder);
> +
> +	ret = drm_vblank_init(drm, drm->mode_config.num_crtc);
> +	if (ret < 0) {
> +		drm_err(drm, "failed to initialize vblank");
> +		return ret;
> +	}
> +
> +	drm_mode_config_reset(drm);
> +
> +	return 0;
> +}
> +
> +static int adp_parse_of(struct platform_device *pdev, struct adp_drv_private *adp)
> +{
> +	struct device *dev = &pdev->dev;
> +
> +	adp->be = devm_platform_ioremap_resource_byname(pdev, "be");
> +	if (IS_ERR(adp->be)) {
> +		dev_err(dev, "failed to map display backend mmio");
> +		return PTR_ERR(adp->be);
> +	}
> +
> +	adp->fe = devm_platform_ioremap_resource_byname(pdev, "fe");
> +	if (IS_ERR(adp->fe)) {
> +		dev_err(dev, "failed to map display pipe mmio");
> +		return PTR_ERR(adp->fe);
> +	}
> +
> +	adp->be_irq = platform_get_irq_byname(pdev, "be");
> +	if (adp->be_irq < 0) {
> +		dev_err(dev, "failed to find be irq");
> +		return adp->be_irq;
> +	}
> +
> +	adp->fe_irq = platform_get_irq_byname(pdev, "fe");
> +	if (adp->fe_irq < 0) {
> +		dev_err(dev, "failed to find fe irq");
> +		return adp->fe_irq;
> +	}
> +
> +	adp->next_bridge = devm_drm_of_get_bridge(dev, dev->of_node, 0, 0);
> +	if (IS_ERR(adp->next_bridge)) {
> +		if (PTR_ERR(adp->next_bridge) != EPROBE_DEFER)
> +			dev_err(dev, "failed to find next bridge");
> +		return PTR_ERR(adp->next_bridge);
> +	}
> +
> +	return 0;
> +}
> +
> +static irqreturn_t adp_fe_irq(int irq, void *arg)
> +{
> +	struct adp_drv_private *adp = (struct adp_drv_private *)arg;
> +	u32 int_status;
> +	u32 int_ctl;
> +
> +	spin_lock(&adp->irq_lock);
> +
> +	int_status = readl(adp->fe + ADP_INT_STATUS);
> +	if (int_status & ADP_INT_STATUS_VBLANK) {
> +		drm_crtc_handle_vblank(&adp->crtc);
> +		spin_lock(&adp->crtc.dev->event_lock);
> +		if (adp->event) {
> +			int_ctl = readl(adp->fe + ADP_CTRL);
> +			if ((int_ctl & 0xF00) == 0x600) {
> +				drm_crtc_send_vblank_event(&adp->crtc, adp->event);
> +				adp->event = NULL;
> +				drm_crtc_vblank_put(&adp->crtc);
> +			}
> +		}
> +		spin_unlock(&adp->crtc.dev->event_lock);
> +	}
> +
> +	writel(int_status, adp->fe + ADP_INT_STATUS);
> +
> +	spin_unlock(&adp->irq_lock);
> +
> +	return IRQ_HANDLED;
> +}
> +
> +static int adp_probe(struct platform_device *pdev)
> +{
> +	struct adp_drv_private *adp;
> +	int err;
> +
> +	adp = devm_drm_dev_alloc(&pdev->dev, &adp_driver, struct adp_drv_private, drm);
> +	if (IS_ERR(adp))
> +		return PTR_ERR(adp);
> +
> +	spin_lock_init(&adp->irq_lock);
> +
> +	dev_set_drvdata(&pdev->dev, &adp->drm);
> +
> +	err = adp_parse_of(pdev, adp);
> +	if (err < 0)
> +		return err;
> +
> +	adp_disable_vblank(adp);
> +	writel(ADP_CTRL_FIFO_ON | ADP_CTRL_VBLANK_ON, adp->fe + ADP_CTRL);
> +
> +	err = adp_setup_mode_config(adp);
> +	if (err < 0)
> +		return err;
> +
> +	err = devm_request_irq(&pdev->dev, adp->fe_irq, adp_fe_irq, 0,
> +			       "adp-fe", adp);
> +	if (err)
> +		return err;
> +
> +	err = drm_dev_register(&adp->drm, 0);
> +	if (err)
> +		return err;
> +	return 0;
> +}
> +
> +static void adp_remove(struct platform_device *pdev)
> +{
> +	struct device *dev = &pdev->dev;
> +	struct drm_device *drm = dev_get_drvdata(dev);
> +	struct adp_drv_private *adp = to_adp(drm);
> +
> +	adp_disable_vblank(adp);

Isn't it being helped by the DRM itself? Anyway, I'd suggest moving it
after DRM device unregistration and shutdown.

> +	drm_dev_unregister(drm);
> +	dev_set_drvdata(dev, NULL);
> +	drm_atomic_helper_shutdown(drm);
> +}
> +
> +static const struct of_device_id adp_of_match[] = {
> +	{ .compatible = "apple,h7-display-pipe", },
> +	{ },
> +};
> +MODULE_DEVICE_TABLE(of, adp_of_match);
> +
> +static struct platform_driver adp_platform_driver = {
> +	.driver = {
> +		.name = "adp",
> +		.of_match_table = adp_of_match,
> +	},
> +	.probe = adp_probe,
> +	.remove = adp_remove,
> +};
> +
> +module_platform_driver(adp_platform_driver);
> +
> +MODULE_DESCRIPTION("Apple Display Pipe DRM driver");
> +MODULE_LICENSE("GPL");
> 
> -- 
> 2.48.0
> 
> 

-- 
With best wishes
Dmitry

