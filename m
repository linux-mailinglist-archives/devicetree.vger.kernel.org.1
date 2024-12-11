Return-Path: <devicetree+bounces-129901-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 10A0A9ED02B
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 16:45:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8A0EF16769F
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 15:45:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7CB4C1DD0F8;
	Wed, 11 Dec 2024 15:42:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="I0j+/9o+"
X-Original-To: devicetree@vger.kernel.org
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D83911D3576;
	Wed, 11 Dec 2024 15:42:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.167.242.64
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733931779; cv=none; b=f1Vf890Gd5Fa/YhHuPSFL7P/3Zfjn/2CQ/DHYRQdbD1ZVmbZW8xGFfqedVY5aVO/dqevguArU7t8oOKBdwqNeayJ7OxpBjXizQ3R0soOIrw5fF7PXcffs44yStAgr5TSJ5dj1SGYDx+F2n7TOLdNcD3Ih3p18nfdn2Nin+a6B+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733931779; c=relaxed/simple;
	bh=D+pC8XXKMwgKJdNejIAAsOC1z2kLwI/JOqA8mlpF9mw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=f4EkziUEEe491+DaJqFnkd6HKZuJrZbf0wruks1QsiJBTwhudJyxfO/8c/797uGKD3pHGMaQzauOloEZL1ZQdxKtBtJ2Vjt4TOokv1OGAq49mCr3oLXpDcNbMaVGITYXWRoI1CK+7PNpXwb2QfjvaORKqfs00A9JBFRctrVBEDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com; spf=pass smtp.mailfrom=ideasonboard.com; dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b=I0j+/9o+; arc=none smtp.client-ip=213.167.242.64
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ideasonboard.com
Received: from ideasonboard.com (93-61-96-190.ip145.fastwebnet.it [93.61.96.190])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id AA7C9352;
	Wed, 11 Dec 2024 16:42:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1733931739;
	bh=D+pC8XXKMwgKJdNejIAAsOC1z2kLwI/JOqA8mlpF9mw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=I0j+/9o+VQHZzwZ6MJmyxenGx0Tzb2BrG1RbW6WbQBKDXcxpm2Q8SgrNTPUHyVubn
	 hqZxuVtR2l56TonC1YCFmooFe7QBPnjav7od2ZaVz0WEfGQn2wyW7lTCEeGBiQNpz/
	 oeCz67gHf73wIuCWZXZzyLkzMEcO2G5RbnE7MM18=
Date: Wed, 11 Dec 2024 16:42:49 +0100
From: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
To: keke.li@amlogic.com
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-media@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, kieran.bingham@ideasonboard.com, 
	laurent.pinchart@ideasonboard.com, dan.scally@ideasonboard.com
Subject: Re: [PATCH v4 04/10] media: platform: Add c3 mipi adapter driver
Message-ID: <ey33m3kcvbadlkbcbey3xbocknpvyv3osj564c7676eru4umxm@u4bwfxy5xulr>
References: <20241205-c3isp-v4-0-cb1868be0105@amlogic.com>
 <20241205-c3isp-v4-4-cb1868be0105@amlogic.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20241205-c3isp-v4-4-cb1868be0105@amlogic.com>

Hi Keke

On Thu, Dec 05, 2024 at 05:04:30PM +0800, Keke Li via B4 Relay wrote:
> From: Keke Li <keke.li@amlogic.com>
>
> This driver mainly responsible for organizing
> MIPI data and sending raw data to ISP pipeline.
>
> Reviewed-by: Daniel Scally <dan.scally@ideasonboard.com>
> Signed-off-by: Keke Li <keke.li@amlogic.com>
> ---
>  MAINTAINERS                                        |   7 +
>  drivers/media/platform/amlogic/c3/Kconfig          |   1 +
>  drivers/media/platform/amlogic/c3/Makefile         |   1 +
>  .../media/platform/amlogic/c3/mipi-adapter/Kconfig |  16 +
>  .../platform/amlogic/c3/mipi-adapter/Makefile      |   3 +
>  .../amlogic/c3/mipi-adapter/c3-mipi-adap.c         | 892 +++++++++++++++++++++
>  6 files changed, 920 insertions(+)
>
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 9b405a694881..0136101bef0d 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -1224,6 +1224,13 @@ F:	Documentation/devicetree/bindings/perf/amlogic,g12-ddr-pmu.yaml
>  F:	drivers/perf/amlogic/
>  F:	include/soc/amlogic/
>
> +AMLOGIC MIPI ADAPTER DRIVER
> +M:	Keke Li <keke.li@amlogic.com>
> +L:	linux-media@vger.kernel.org
> +S:	Maintained
> +F:	Documentation/devicetree/bindings/media/amlogic,c3-mipi-adapter.yaml
> +F:	drivers/media/platform/amlogic/c3/mipi-adapter/
> +
>  AMLOGIC MIPI CSI2 DRIVER
>  M:	Keke Li <keke.li@amlogic.com>
>  L:	linux-media@vger.kernel.org
> diff --git a/drivers/media/platform/amlogic/c3/Kconfig b/drivers/media/platform/amlogic/c3/Kconfig
> index 098d458747b8..a504a1eb22e6 100644
> --- a/drivers/media/platform/amlogic/c3/Kconfig
> +++ b/drivers/media/platform/amlogic/c3/Kconfig
> @@ -1,3 +1,4 @@
>  # SPDX-License-Identifier: GPL-2.0-only
>
> +source "drivers/media/platform/amlogic/c3/mipi-adapter/Kconfig"
>  source "drivers/media/platform/amlogic/c3/mipi-csi2/Kconfig"
> diff --git a/drivers/media/platform/amlogic/c3/Makefile b/drivers/media/platform/amlogic/c3/Makefile
> index a468fb782f94..770b2a2903ad 100644
> --- a/drivers/media/platform/amlogic/c3/Makefile
> +++ b/drivers/media/platform/amlogic/c3/Makefile
> @@ -1,3 +1,4 @@
>  # SPDX-License-Identifier: GPL-2.0-only
>
> +obj-y += mipi-adapter/
>  obj-y += mipi-csi2/
> diff --git a/drivers/media/platform/amlogic/c3/mipi-adapter/Kconfig b/drivers/media/platform/amlogic/c3/mipi-adapter/Kconfig
> new file mode 100644
> index 000000000000..bf19059b3543
> --- /dev/null
> +++ b/drivers/media/platform/amlogic/c3/mipi-adapter/Kconfig
> @@ -0,0 +1,16 @@
> +# SPDX-License-Identifier: GPL-2.0-only
> +
> +config VIDEO_C3_MIPI_ADAPTER
> +	tristate "Amlogic C3 MIPI adapter"
> +	depends on ARCH_MESON || COMPILE_TEST
> +	depends on VIDEO_DEV
> +	depends on OF
> +	select MEDIA_CONTROLLER
> +	select V4L2_FWNODE
> +	select VIDEO_V4L2_SUBDEV_API
> +	help
> +	  Video4Linux2 driver for Amlogic C3 MIPI adapter.
> +	  C3 MIPI adapter mainly responsible for organizing
> +	  MIPI data and sending raw data to ISP pipeline.
> +
> +	  To compile this driver as a module choose m here.
> diff --git a/drivers/media/platform/amlogic/c3/mipi-adapter/Makefile b/drivers/media/platform/amlogic/c3/mipi-adapter/Makefile
> new file mode 100644
> index 000000000000..216fc310c5b4
> --- /dev/null
> +++ b/drivers/media/platform/amlogic/c3/mipi-adapter/Makefile
> @@ -0,0 +1,3 @@
> +# SPDX-License-Identifier: GPL-2.0-only
> +
> +obj-$(CONFIG_VIDEO_C3_MIPI_ADAPTER) += c3-mipi-adap.o
> diff --git a/drivers/media/platform/amlogic/c3/mipi-adapter/c3-mipi-adap.c b/drivers/media/platform/amlogic/c3/mipi-adapter/c3-mipi-adap.c
> new file mode 100644
> index 000000000000..01557759f211
> --- /dev/null
> +++ b/drivers/media/platform/amlogic/c3/mipi-adapter/c3-mipi-adap.c
> @@ -0,0 +1,892 @@
> +// SPDX-License-Identifier: (GPL-2.0-only OR MIT)
> +/*
> + * Copyright (C) 2024 Amlogic, Inc. All rights reserved
> + */
> +
> +#include <linux/clk.h>
> +#include <linux/device.h>
> +#include <linux/module.h>
> +#include <linux/mutex.h>
> +#include <linux/platform_device.h>
> +#include <linux/pm_runtime.h>
> +
> +#include <media/mipi-csi2.h>
> +#include <media/v4l2-async.h>
> +#include <media/v4l2-common.h>
> +#include <media/v4l2-device.h>
> +#include <media/v4l2-fwnode.h>
> +#include <media/v4l2-mc.h>
> +#include <media/v4l2-subdev.h>
> +
> +/*
> + * Adapter Block Diagram
> + * ---------------------
> + *
> + *                   +--------------------------------------------+
> + *                   |                   Adapter                  |
> + *                   |--------------------------------------------|
> + * +------------+    |          |          |         |            |    +-----+
> + * | MIPI CSI-2 |--->| Frontend -> DDR_RD0 -> PIXEL0 -> ALIGNMENT |--->| ISP |
> + * +------------+    |          |          |         |            |    +-----+
> + *                   +--------------------------------------------+
> + *
> + */
> +
> +/* C3 adapter submodule definition */
> +enum {
> +	SUBMD_TOP,
> +	SUBMD_FD,
> +	SUBMD_RD,
> +};
> +
> +#define ADAP_SUBMD_MASK             GENMASK(17, 16)
> +#define ADAP_SUBMD_SHIFT            16
> +#define ADAP_SUBMD(x)               (((x) & (ADAP_SUBMD_MASK)) >> (ADAP_SUBMD_SHIFT))
> +#define ADAP_REG_ADDR_MASK          GENMASK(15, 0)
> +#define ADAP_REG_ADDR(x)            ((x) & (ADAP_REG_ADDR_MASK))
> +#define ADAP_REG_T(x)               ((SUBMD_TOP << ADAP_SUBMD_SHIFT) | (x))
> +#define ADAP_REG_F(x)               ((SUBMD_FD << ADAP_SUBMD_SHIFT) | (x))
> +#define ADAP_REG_R(x)               ((SUBMD_RD << ADAP_SUBMD_SHIFT) | (x))
> +
> +#define MIPI_ADAP_CLOCK_NUM_MAX                               3
> +#define MIPI_ADAP_SUBDEV_NAME                                 "c3-mipi-adapter"
> +
> +/* C3 MIPI adapter TOP register */
> +#define MIPI_ADAPT_DE_CTRL0                                   ADAP_REG_T(0x40)
> +#define MIPI_ADAPT_DE_CTRL0_RD_BUS_BYPASS_MASK                BIT(3)
> +#define MIPI_ADAPT_DE_CTRL0_RD_BUS_BYPASS_EN                  BIT(3)
> +#define MIPI_ADAPT_DE_CTRL0_RD_BUS_BYPASS_DIS                 (0 << 3)
> +#define MIPI_ADAPT_DE_CTRL0_WR_BUS_BYPASS_MASK                BIT(7)
> +#define MIPI_ADAPT_DE_CTRL0_WR_BUS_BYPASS_EN                  BIT(7)
> +#define MIPI_ADAPT_DE_CTRL0_WR_BUS_BYPASS_DIS                 (0 << 7)
> +
> +/* C3 MIPI adapter FRONTEND register */
> +#define CSI2_CLK_RESET                                        ADAP_REG_F(0x00)
> +#define CSI2_CLK_RESET_SW_RESET_MASK                          BIT(0)
> +#define CSI2_CLK_RESET_SW_RESET_APPLY                         BIT(0)
> +#define CSI2_CLK_RESET_SW_RESET_RELEASE                       (0 << 0)
> +#define CSI2_CLK_RESET_CLK_ENABLE_MASK                        BIT(1)
> +#define CSI2_CLK_RESET_CLK_ENABLE_EN                          BIT(1)
> +#define CSI2_CLK_RESET_CLK_ENABLE_DIS                         (0 << 1)
> +
> +#define CSI2_GEN_CTRL0                                        ADAP_REG_F(0x04)
> +#define CSI2_GEN_CTRL0_VC0_MASK                               BIT(0)
> +#define CSI2_GEN_CTRL0_VC0_EN                                 BIT(0)
> +#define CSI2_GEN_CTRL0_VC0_DIS                                (0 << 0)
> +#define CSI2_GEN_CTRL0_ENABLE_PACKETS_MASK                    GENMASK(20, 16)
> +#define CSI2_GEN_CTRL0_ENABLE_PACKETS_RAW                     BIT(16)
> +#define CSI2_GEN_CTRL0_ENABLE_PACKETS_YUV                     (2 << 16)
> +
> +#define CSI2_X_START_END_ISP                                  ADAP_REG_F(0x0c)
> +#define CSI2_X_START_END_ISP_X_START_MASK                     GENMASK(15, 0)
> +#define CSI2_X_START_END_ISP_X_START(x)                       ((x) << 0)
> +#define CSI2_X_START_END_ISP_X_END_MASK                       GENMASK(31, 16)
> +#define CSI2_X_START_END_ISP_X_END(x)                         (((x) - 1) << 16)
> +
> +#define CSI2_Y_START_END_ISP                                  ADAP_REG_F(0x10)
> +#define CSI2_Y_START_END_ISP_Y_START_MASK                     GENMASK(15, 0)
> +#define CSI2_Y_START_END_ISP_Y_START(x)                       ((x) << 0)
> +#define CSI2_Y_START_END_ISP_Y_END_MASK                       GENMASK(31, 16)
> +#define CSI2_Y_START_END_ISP_Y_END(x)                         (((x) - 1) << 16)
> +
> +#define CSI2_VC_MODE                                          ADAP_REG_F(0x1c)
> +#define CSI2_VC_MODE_VS_ISP_SEL_VC_MASK                       GENMASK(19, 16)
> +#define CSI2_VC_MODE_VS_ISP_SEL_VC_0                          BIT(16)
> +#define CSI2_VC_MODE_VS_ISP_SEL_VC_1                          (2 << 16)
> +#define CSI2_VC_MODE_VS_ISP_SEL_VC_2                          (4 << 16)
> +#define CSI2_VC_MODE_VS_ISP_SEL_VC_3                          (8 << 16)
> +#define CSI2_VC_MODE_HS_ISP_SEL_VC_MASK                       GENMASK(23, 20)
> +#define CSI2_VC_MODE_HS_ISP_SEL_VC_0                          BIT(20)
> +#define CSI2_VC_MODE_HS_ISP_SEL_VC_1                          (2 << 20)
> +#define CSI2_VC_MODE_HS_ISP_SEL_VC_2                          (4 << 20)
> +#define CSI2_VC_MODE_HS_ISP_SEL_VC_3                          (8 << 20)
> +
> +/* C3 MIPI adapter READER register */
> +#define MIPI_ADAPT_DDR_RD0_CNTL0                              ADAP_REG_R(0x00)
> +#define MIPI_ADAPT_DDR_RD0_CNTL0_MODULE_EN_MASK               BIT(0)
> +#define MIPI_ADAPT_DDR_RD0_CNTL0_MODULE_EN                    BIT(0)
> +#define MIPI_ADAPT_DDR_RD0_CNTL0_MODULE_DIS                   (0 << 0)
> +
> +#define MIPI_ADAPT_DDR_RD0_CNTL1                              ADAP_REG_R(0x04)
> +#define MIPI_ADAPT_DDR_RD0_CNTL1_PORT_SEL_MASK                GENMASK(31, 30)
> +#define MIPI_ADAPT_DDR_RD0_CNTL1_PORT_SEL_DIRECT_MODE         (0 << 30)
> +#define MIPI_ADAPT_DDR_RD0_CNTL1_PORT_SEL_DDR_MODE            BIT(30)
> +
> +#define MIPI_ADAPT_PIXEL0_CNTL0                               ADAP_REG_R(0x80)
> +#define MIPI_ADAPT_PIXEL0_CNTL0_WORK_MODE_MASK                GENMASK(17, 16)
> +#define MIPI_ADAPT_PIXEL0_CNTL0_WORK_MODE_RAW_DDR_PATH        (0 << 16)
> +#define MIPI_ADAPT_PIXEL0_CNTL0_WORK_MODE_RAW_DIRECT_PATH     BIT(16)
> +#define MIPI_ADAPT_PIXEL0_CNTL0_DATA_TYPE_MASK                GENMASK(25, 20)
> +#define MIPI_ADAPT_PIXEL0_CNTL0_DATA_TYPE(x)                  ((x) << 20)
> +#define MIPI_ADAPT_PIXEL0_CNTL0_START_EN_MASK                 BIT(31)
> +#define MIPI_ADAPT_PIXEL0_CNTL0_START_EN                      BIT(31)
> +
> +#define MIPI_ADAPT_ALIG_CNTL0                                 ADAP_REG_R(0x100)
> +#define MIPI_ADAPT_ALIG_CNTL0_H_TOTAL_NUM_MASK                GENMASK(15, 0)
> +#define MIPI_ADAPT_ALIG_CNTL0_H_TOTAL_NUM(x)                  ((x) << 0)
> +#define MIPI_ADAPT_ALIG_CNTL0_V_TOTAL_NUM_MASK                GENMASK(31, 16)
> +#define MIPI_ADAPT_ALIG_CNTL0_V_TOTAL_NUM(x)                  ((x) << 16)
> +
> +#define MIPI_ADAPT_ALIG_CNTL1                                 ADAP_REG_R(0x104)
> +#define MIPI_ADAPT_ALIG_CNTL1_HPE_NUM_MASK                    GENMASK(31, 16)
> +#define MIPI_ADAPT_ALIG_CNTL1_HPE_NUM(x)                      ((x) << 16)
> +
> +#define MIPI_ADAPT_ALIG_CNTL2                                 ADAP_REG_R(0x108)
> +#define MIPI_ADAPT_ALIG_CNTL2_VPE_NUM_MASK                    GENMASK(31, 16)
> +#define MIPI_ADAPT_ALIG_CNTL2_VPE_NUM(x)                      ((x) << 16)
> +
> +#define MIPI_ADAPT_ALIG_CNTL6                                 ADAP_REG_R(0x118)
> +#define MIPI_ADAPT_ALIG_CNTL6_PATH0_EN_MASK                   BIT(0)
> +#define MIPI_ADAPT_ALIG_CNTL6_PATH0_EN                        BIT(0)
> +#define MIPI_ADAPT_ALIG_CNTL6_PATH0_DIS                       (0 << 0)
> +#define MIPI_ADAPT_ALIG_CNTL6_PIX0_DATA_MODE_MASK             BIT(4)
> +#define MIPI_ADAPT_ALIG_CNTL6_PIX0_DATA_MODE_DDR              (0 << 4)
> +#define MIPI_ADAPT_ALIG_CNTL6_PIX0_DATA_MODE_DIRECT           BIT(4)
> +#define MIPI_ADAPT_ALIG_CNTL6_DATA0_EN_MASK                   BIT(12)
> +#define MIPI_ADAPT_ALIG_CNTL6_DATA0_EN                        BIT(12)
> +#define MIPI_ADAPT_ALIG_CNTL6_DATA0_DIS                       (0 << 12)
> +
> +#define MIPI_ADAPT_ALIG_CNTL8                                 ADAP_REG_R(0x120)
> +#define MIPI_ADAPT_ALIG_CNTL8_FRMAE_CONTINUE_MASK             BIT(5)
> +#define MIPI_ADAPT_ALIG_CNTL8_FRMAE_CONTINUE_EN               BIT(5)
> +#define MIPI_ADAPT_ALIG_CNTL8_FRMAE_CONTINUE_DIS              (0 << 5)
> +#define MIPI_ADAPT_ALIG_CNTL8_EXCEED_DIS_MASK                 BIT(12)
> +#define MIPI_ADAPT_ALIG_CNTL8_EXCEED_HOLD                     (0 << 12)
> +#define MIPI_ADAPT_ALIG_CNTL8_EXCEED_NOT_HOLD                 BIT(12)
> +#define MIPI_ADAPT_ALIG_CNTL8_START_EN_MASK                   BIT(31)
> +#define MIPI_ADAPT_ALIG_CNTL8_START_EN                        BIT(31)
> +
> +#define MIPI_ADAP_MAX_WIDTH                                   2888
> +#define MIPI_ADAP_MIN_WIDTH                                   160
> +#define MIPI_ADAP_MAX_HEIGHT                                  2240
> +#define MIPI_ADAP_MIN_HEIGHT                                  120
> +#define MIPI_ADAP_DEFAULT_WIDTH                               1920
> +#define MIPI_ADAP_DEFAULT_HEIGHT                              1080
> +#define MIPI_ADAP_DEFAULT_FMT                                 MEDIA_BUS_FMT_SRGGB10_1X10
> +
> +/* C3 MIPI adapter pad list */
> +enum {
> +	MIPI_ADAP_PAD_SINK,
> +	MIPI_ADAP_PAD_SRC,
> +	MIPI_ADAP_PAD_MAX
> +};
> +
> +/*
> + * struct adap_info - mipi adapter information
> + *
> + * @clocks: array of mipi adapter clock names
> + * @clock_rates: array of mipi adapter clock rate
> + * @clock_num: actual clock number
> + */
> +struct adap_info {
> +	char *clocks[MIPI_ADAP_CLOCK_NUM_MAX];
> +	u32 clock_rates[MIPI_ADAP_CLOCK_NUM_MAX];
> +	u32 clock_num;
> +};
> +
> +/*
> + * struct adap_device - mipi adapter platform device
> + *
> + * @dev: pointer to the struct device
> + * @top: mipi adapter top register address
> + * @fd: mipi adapter frontend register address
> + * @rd: mipi adapter reader register address
> + * @clks: array of MIPI adapter clocks
> + * @sd: mipi adapter sub-device
> + * @pads: mipi adapter sub-device pads
> + * @notifier: notifier to register on the v4l2-async API
> + * @src_sd: source sub-device
> + * @src_sd_pad: source sub-device pad
> + * @info: version-specific MIPI adapter information
> + */
> +struct adap_device {
> +	struct device *dev;
> +	void __iomem *top;
> +	void __iomem *fd;
> +	void __iomem *rd;
> +	struct clk_bulk_data clks[MIPI_ADAP_CLOCK_NUM_MAX];
> +
> +	struct v4l2_subdev sd;
> +	struct media_pad pads[MIPI_ADAP_PAD_MAX];
> +	struct v4l2_async_notifier notifier;
> +	struct v4l2_subdev *src_sd;
> +
> +	u16 src_sd_pad;
> +	const struct adap_info *info;
> +};
> +
> +/* Format helpers */
> +
> +struct adap_pix_format {
> +	u32 code;
> +	u8 data_type;
> +};
> +
> +static const struct adap_pix_format c3_mipi_adap_formats[] = {
> +	{ MEDIA_BUS_FMT_SBGGR10_1X10, MIPI_CSI2_DT_RAW10 },
> +	{ MEDIA_BUS_FMT_SGBRG10_1X10, MIPI_CSI2_DT_RAW10 },
> +	{ MEDIA_BUS_FMT_SGRBG10_1X10, MIPI_CSI2_DT_RAW10 },
> +	{ MEDIA_BUS_FMT_SRGGB10_1X10, MIPI_CSI2_DT_RAW10 },
> +	{ MEDIA_BUS_FMT_SBGGR12_1X12, MIPI_CSI2_DT_RAW12 },
> +	{ MEDIA_BUS_FMT_SGBRG12_1X12, MIPI_CSI2_DT_RAW12 },
> +	{ MEDIA_BUS_FMT_SGRBG12_1X12, MIPI_CSI2_DT_RAW12 },
> +	{ MEDIA_BUS_FMT_SRGGB12_1X12, MIPI_CSI2_DT_RAW12 },
> +};
> +
> +static const struct adap_pix_format
> +*c3_mipi_adap_find_format(u32 code)
> +{
> +	unsigned int i;
> +
> +	for (i = 0; i < ARRAY_SIZE(c3_mipi_adap_formats); i++)
> +		if (code == c3_mipi_adap_formats[i].code)
> +			return &c3_mipi_adap_formats[i];
> +
> +	return NULL;
> +}
> +
> +/* Hardware configuration */
> +
> +static void c3_mipi_adap_update_bits(struct adap_device *adap, u32 reg,
> +				     u32 mask, u32 val)
> +{
> +	void __iomem *addr;
> +	u32 orig, tmp;
> +
> +	switch (ADAP_SUBMD(reg)) {
> +	case SUBMD_TOP:
> +		addr = adap->top + ADAP_REG_ADDR(reg);
> +		break;
> +	case SUBMD_FD:
> +		addr = adap->fd + ADAP_REG_ADDR(reg);
> +		break;
> +	case SUBMD_RD:
> +		addr = adap->rd + ADAP_REG_ADDR(reg);
> +		break;
> +	default:
> +		dev_err(adap->dev, "Invalid sub-module: %lu\n", ADAP_SUBMD(reg));
> +		return;
> +	}
> +
> +	orig = readl(addr);
> +	tmp = orig & ~mask;
> +	tmp |= val & mask;
> +
> +	if (tmp != orig)
> +		writel(tmp, addr);
> +}
> +
> +/* Configure adapter top sub module */
> +static void c3_mipi_adap_cfg_top(struct adap_device *adap)
> +{
> +	/* Bypass decompress */
> +	c3_mipi_adap_update_bits(adap, MIPI_ADAPT_DE_CTRL0,
> +				 MIPI_ADAPT_DE_CTRL0_RD_BUS_BYPASS_MASK,
> +				 MIPI_ADAPT_DE_CTRL0_RD_BUS_BYPASS_EN);
> +	c3_mipi_adap_update_bits(adap, MIPI_ADAPT_DE_CTRL0,
> +				 MIPI_ADAPT_DE_CTRL0_WR_BUS_BYPASS_MASK,
> +				 MIPI_ADAPT_DE_CTRL0_WR_BUS_BYPASS_EN);
> +}
> +
> +/* Configure adapter frontend sub module */
> +static void c3_mipi_adap_cfg_frontend(struct adap_device *adap,
> +				      struct v4l2_mbus_framefmt *fmt)
> +{
> +	/* Reset frontend module */
> +	c3_mipi_adap_update_bits(adap, CSI2_CLK_RESET,
> +				 CSI2_CLK_RESET_SW_RESET_MASK, CSI2_CLK_RESET_SW_RESET_APPLY);
> +	c3_mipi_adap_update_bits(adap, CSI2_CLK_RESET,
> +				 CSI2_CLK_RESET_SW_RESET_MASK, CSI2_CLK_RESET_SW_RESET_RELEASE);
> +	c3_mipi_adap_update_bits(adap, CSI2_CLK_RESET,
> +				 CSI2_CLK_RESET_CLK_ENABLE_MASK, CSI2_CLK_RESET_CLK_ENABLE_EN);
> +
> +	c3_mipi_adap_update_bits(adap, CSI2_X_START_END_ISP, CSI2_X_START_END_ISP_X_START_MASK,
> +				 CSI2_X_START_END_ISP_X_START(0));
> +	c3_mipi_adap_update_bits(adap, CSI2_X_START_END_ISP, CSI2_X_START_END_ISP_X_END_MASK,
> +				 CSI2_X_START_END_ISP_X_END(fmt->width));
> +
> +	c3_mipi_adap_update_bits(adap, CSI2_Y_START_END_ISP, CSI2_Y_START_END_ISP_Y_START_MASK,
> +				 CSI2_Y_START_END_ISP_Y_START(0));
> +	c3_mipi_adap_update_bits(adap, CSI2_Y_START_END_ISP, CSI2_Y_START_END_ISP_Y_END_MASK,
> +				 CSI2_Y_START_END_ISP_Y_END(fmt->height));
> +
> +	/* Select VS and HS signal for direct path */
> +	c3_mipi_adap_update_bits(adap, CSI2_VC_MODE, CSI2_VC_MODE_VS_ISP_SEL_VC_MASK,
> +				 CSI2_VC_MODE_VS_ISP_SEL_VC_0);
> +	c3_mipi_adap_update_bits(adap, CSI2_VC_MODE, CSI2_VC_MODE_HS_ISP_SEL_VC_MASK,
> +				 CSI2_VC_MODE_HS_ISP_SEL_VC_0);
> +
> +	/* Enable to receive RAW packet */
> +	c3_mipi_adap_update_bits(adap, CSI2_GEN_CTRL0, CSI2_GEN_CTRL0_ENABLE_PACKETS_MASK,
> +				 CSI2_GEN_CTRL0_ENABLE_PACKETS_RAW);
> +
> +	/* Enable virtual channel 0 */
> +	c3_mipi_adap_update_bits(adap, CSI2_GEN_CTRL0,
> +				 CSI2_GEN_CTRL0_VC0_MASK, CSI2_GEN_CTRL0_VC0_EN);
> +}
> +
> +static void c3_mipi_adap_cfg_rd0(struct adap_device *adap)
> +{
> +	/* Select direct mode for DDR_RD0 mode */
> +	c3_mipi_adap_update_bits(adap, MIPI_ADAPT_DDR_RD0_CNTL1,
> +				 MIPI_ADAPT_DDR_RD0_CNTL1_PORT_SEL_MASK,
> +				 MIPI_ADAPT_DDR_RD0_CNTL1_PORT_SEL_DIRECT_MODE);
> +
> +	/*
> +	 * Data can't bypass DDR_RD0 in direct mode,
> +	 * so need to enable DDR_RD0 module here.
> +	 */

Please reflow to 80 cols

> +	c3_mipi_adap_update_bits(adap, MIPI_ADAPT_DDR_RD0_CNTL0,
> +				 MIPI_ADAPT_DDR_RD0_CNTL0_MODULE_EN_MASK,
> +				 MIPI_ADAPT_DDR_RD0_CNTL0_MODULE_EN);
> +}
> +
> +static void c3_mipi_adap_cfg_pixel0(struct adap_device *adap,
> +				    struct v4l2_mbus_framefmt *fmt)
> +{
> +	const struct adap_pix_format *pix_fmt;
> +
> +	pix_fmt = c3_mipi_adap_find_format(fmt->code);
> +
> +	/* Set work mode and data type for PIXEL0 module */
> +	c3_mipi_adap_update_bits(adap, MIPI_ADAPT_PIXEL0_CNTL0,
> +				 MIPI_ADAPT_PIXEL0_CNTL0_WORK_MODE_MASK,
> +				 MIPI_ADAPT_PIXEL0_CNTL0_WORK_MODE_RAW_DIRECT_PATH);
> +	c3_mipi_adap_update_bits(adap, MIPI_ADAPT_PIXEL0_CNTL0,
> +				 MIPI_ADAPT_PIXEL0_CNTL0_DATA_TYPE_MASK,
> +				 MIPI_ADAPT_PIXEL0_CNTL0_DATA_TYPE(pix_fmt->data_type));
> +
> +	/* Start PIXEL0 module */
> +	c3_mipi_adap_update_bits(adap, MIPI_ADAPT_PIXEL0_CNTL0,
> +				 MIPI_ADAPT_PIXEL0_CNTL0_START_EN_MASK,
> +				 MIPI_ADAPT_PIXEL0_CNTL0_START_EN);
> +}
> +
> +static void c3_mipi_adap_cfg_alig(struct adap_device *adap,
> +				  struct v4l2_mbus_framefmt *fmt)
> +{
> +	/*
> +	 * ISP hardware requires the number of horizonal blanks
> +	 * greater than 64 cycles, so adding 72 here.

if it requires 64, why adding 72 ? :)

> +	 */
> +	c3_mipi_adap_update_bits(adap, MIPI_ADAPT_ALIG_CNTL0,
> +				 MIPI_ADAPT_ALIG_CNTL0_H_TOTAL_NUM_MASK,
> +				 MIPI_ADAPT_ALIG_CNTL0_H_TOTAL_NUM(fmt->width + 72));
> +	/*
> +	 * ISP hardware requires the number of vertical blanks
> +	 * greater than 40 lines, so adding 48 here.

This can be reflowed as well, and same question, if it need 40 why 48?

> +	 */
> +	c3_mipi_adap_update_bits(adap, MIPI_ADAPT_ALIG_CNTL0,
> +				 MIPI_ADAPT_ALIG_CNTL0_V_TOTAL_NUM_MASK,
> +				 MIPI_ADAPT_ALIG_CNTL0_V_TOTAL_NUM(fmt->height + 48));
> +
> +	/* End pixel in a line */
> +	c3_mipi_adap_update_bits(adap, MIPI_ADAPT_ALIG_CNTL1,
> +				 MIPI_ADAPT_ALIG_CNTL1_HPE_NUM_MASK,
> +				 MIPI_ADAPT_ALIG_CNTL1_HPE_NUM(fmt->width));
> +
> +	/* End line in a frame */
> +	c3_mipi_adap_update_bits(adap, MIPI_ADAPT_ALIG_CNTL2,
> +				 MIPI_ADAPT_ALIG_CNTL2_VPE_NUM_MASK,
> +				 MIPI_ADAPT_ALIG_CNTL2_VPE_NUM(fmt->height));
> +
> +	c3_mipi_adap_update_bits(adap, MIPI_ADAPT_ALIG_CNTL6,
> +				 MIPI_ADAPT_ALIG_CNTL6_PATH0_EN_MASK,
> +				 MIPI_ADAPT_ALIG_CNTL6_PATH0_EN);
> +
> +	/* Select direct mode for ALIG module */
> +	c3_mipi_adap_update_bits(adap, MIPI_ADAPT_ALIG_CNTL6,
> +				 MIPI_ADAPT_ALIG_CNTL6_PIX0_DATA_MODE_MASK,
> +				 MIPI_ADAPT_ALIG_CNTL6_PIX0_DATA_MODE_DIRECT);
> +
> +	/* Enable to send raw data */
> +	c3_mipi_adap_update_bits(adap, MIPI_ADAPT_ALIG_CNTL6,
> +				 MIPI_ADAPT_ALIG_CNTL6_DATA0_EN_MASK,
> +				 MIPI_ADAPT_ALIG_CNTL6_DATA0_EN);
> +
> +	/* Set continue mode and disable hold counter */
> +	c3_mipi_adap_update_bits(adap, MIPI_ADAPT_ALIG_CNTL8,
> +				 MIPI_ADAPT_ALIG_CNTL8_FRMAE_CONTINUE_MASK,
> +				 MIPI_ADAPT_ALIG_CNTL8_FRMAE_CONTINUE_EN);
> +	c3_mipi_adap_update_bits(adap, MIPI_ADAPT_ALIG_CNTL8,
> +				 MIPI_ADAPT_ALIG_CNTL8_EXCEED_DIS_MASK,
> +				 MIPI_ADAPT_ALIG_CNTL8_EXCEED_NOT_HOLD);
> +
> +	/* Start ALIG module */
> +	c3_mipi_adap_update_bits(adap, MIPI_ADAPT_ALIG_CNTL8,
> +				 MIPI_ADAPT_ALIG_CNTL8_START_EN_MASK,
> +				 MIPI_ADAPT_ALIG_CNTL8_START_EN);
> +}
> +
> +/* V4L2 subdev operations */
> +
> +static int c3_mipi_adap_enable_streams(struct v4l2_subdev *sd,
> +				       struct v4l2_subdev_state *state,
> +				       u32 pad, u64 streams_mask)
> +{
> +	struct adap_device *adap = v4l2_get_subdevdata(sd);
> +	struct v4l2_mbus_framefmt *fmt;
> +	u64 sink_streams;
> +	int ret;
> +
> +	pm_runtime_resume_and_get(adap->dev);
> +
> +	fmt = v4l2_subdev_state_get_format(state, MIPI_ADAP_PAD_SINK);
> +
> +	c3_mipi_adap_cfg_top(adap);
> +	c3_mipi_adap_cfg_frontend(adap, fmt);
> +	c3_mipi_adap_cfg_rd0(adap);
> +	c3_mipi_adap_cfg_pixel0(adap, fmt);
> +	c3_mipi_adap_cfg_alig(adap, fmt);
> +
> +	sink_streams = v4l2_subdev_state_xlate_streams(state, pad,
> +						       MIPI_ADAP_PAD_SINK,
> +						       &streams_mask);

Same comment as the previous patch, you have no streams, so you can
assume stream#0 on the source subdev

> +	ret = v4l2_subdev_enable_streams(adap->src_sd,
> +					 adap->src_sd_pad,
> +					 sink_streams);
> +	if (ret) {
> +		pm_runtime_put(adap->dev);
> +		return ret;
> +	}
> +
> +	return 0;
> +}
> +
> +static int c3_mipi_adap_disable_streams(struct v4l2_subdev *sd,
> +					struct v4l2_subdev_state *state,
> +					u32 pad, u64 streams_mask)
> +{
> +	struct adap_device *adap = v4l2_get_subdevdata(sd);
> +	u64 sink_streams;
> +	int ret;
> +
> +	sink_streams = v4l2_subdev_state_xlate_streams(state, pad,
> +						       MIPI_ADAP_PAD_SINK,
> +						       &streams_mask);

ditto

> +	ret = v4l2_subdev_disable_streams(adap->src_sd,
> +					  adap->src_sd_pad,
> +					  sink_streams);
> +	if (ret)
> +		dev_err(adap->dev, "Failed to disable %s\n", adap->src_sd->name);
> +
> +	pm_runtime_put(adap->dev);
> +
> +	return ret;
> +}
> +
> +static int c3_mipi_adap_cfg_routing(struct v4l2_subdev *sd,
> +				    struct v4l2_subdev_state *state,
> +				    struct v4l2_subdev_krouting *routing)
> +{

You should remove routing support

> +	static const struct v4l2_mbus_framefmt format = {
> +		.width = MIPI_ADAP_DEFAULT_WIDTH,
> +		.height = MIPI_ADAP_DEFAULT_HEIGHT,
> +		.code = MIPI_ADAP_DEFAULT_FMT,
> +		.field = V4L2_FIELD_NONE,
> +		.colorspace = V4L2_COLORSPACE_RAW,
> +		.ycbcr_enc = V4L2_YCBCR_ENC_601,
> +		.quantization = V4L2_QUANTIZATION_LIM_RANGE,
> +		.xfer_func = V4L2_XFER_FUNC_NONE,
> +	};
> +	int ret;
> +
> +	ret = v4l2_subdev_routing_validate(sd, routing,
> +					   V4L2_SUBDEV_ROUTING_ONLY_1_TO_1);
> +	if (ret)
> +		return ret;
> +
> +	ret = v4l2_subdev_set_routing_with_fmt(sd, state, routing, &format);
> +	if (ret)
> +		return ret;
> +
> +	return 0;
> +}
> +
> +static int c3_mipi_adap_init_routing(struct v4l2_subdev *sd,
> +				     struct v4l2_subdev_state *state)
> +{
> +	struct v4l2_subdev_route routes;
> +	struct v4l2_subdev_krouting routing;
> +
> +	routes.sink_pad = MIPI_ADAP_PAD_SINK;
> +	routes.sink_stream = 0;
> +	routes.source_pad = MIPI_ADAP_PAD_SRC;
> +	routes.source_stream = 0;
> +	routes.flags = V4L2_SUBDEV_ROUTE_FL_ACTIVE;
> +
> +	routing.num_routes = 1;
> +	routing.routes = &routes;
> +
> +	return c3_mipi_adap_cfg_routing(sd, state, &routing);
> +}
> +
> +static int c3_mipi_adap_enum_mbus_code(struct v4l2_subdev *sd,
> +				       struct v4l2_subdev_state *state,
> +				       struct v4l2_subdev_mbus_code_enum *code)
> +{
> +	switch (code->pad) {
> +	case MIPI_ADAP_PAD_SINK:
> +		if (code->index >= ARRAY_SIZE(c3_mipi_adap_formats))
> +			return -EINVAL;
> +
> +		code->code = c3_mipi_adap_formats[code->index].code;
> +		break;
> +	case MIPI_ADAP_PAD_SRC:
> +		struct v4l2_mbus_framefmt *fmt;
> +
> +		if (code->index)
> +			return -EINVAL;
> +
> +		fmt = v4l2_subdev_state_get_format(state, code->pad);
> +		code->code = fmt->code;
> +		break;
> +	default:
> +		return -EINVAL;
> +	}
> +
> +	return 0;
> +}
> +
> +static int c3_mipi_adap_set_fmt(struct v4l2_subdev *sd,
> +				struct v4l2_subdev_state *state,
> +				struct v4l2_subdev_format *format)
> +{
> +	struct v4l2_mbus_framefmt *fmt;
> +	const struct adap_pix_format *pix_format;
> +
> +	if (format->pad != MIPI_ADAP_PAD_SINK)
> +		return v4l2_subdev_get_fmt(sd, state, format);
> +
> +	pix_format = c3_mipi_adap_find_format(format->format.code);
> +	if (!pix_format)
> +		pix_format = &c3_mipi_adap_formats[0];
> +
> +	fmt = v4l2_subdev_state_get_format(state, format->pad);
> +	fmt->code = pix_format->code;
> +	fmt->width = clamp_t(u32, format->format.width,
> +			     MIPI_ADAP_MIN_WIDTH, MIPI_ADAP_MAX_WIDTH);
> +	fmt->height = clamp_t(u32, format->format.height,
> +			      MIPI_ADAP_MIN_HEIGHT, MIPI_ADAP_MAX_HEIGHT);
> +
> +	format->format = *fmt;
> +
> +	/* Synchronize the format to source pad */
> +	fmt = v4l2_subdev_state_get_format(state, MIPI_ADAP_PAD_SRC);
> +	*fmt = format->format;
> +
> +	return 0;
> +}
> +
> +static int c3_mipi_adap_init_state(struct v4l2_subdev *sd,
> +				   struct v4l2_subdev_state *state)
> +{
> +	struct v4l2_mbus_framefmt *sink_fmt;
> +	struct v4l2_mbus_framefmt *src_fmt;
> +
> +	sink_fmt = v4l2_subdev_state_get_format(state, MIPI_ADAP_PAD_SINK);
> +	src_fmt = v4l2_subdev_state_get_format(state, MIPI_ADAP_PAD_SRC);
> +
> +	sink_fmt->width = MIPI_ADAP_DEFAULT_WIDTH;
> +	sink_fmt->height = MIPI_ADAP_DEFAULT_HEIGHT;
> +	sink_fmt->field = V4L2_FIELD_NONE;
> +	sink_fmt->code = MIPI_ADAP_DEFAULT_FMT;
> +	sink_fmt->colorspace = V4L2_COLORSPACE_RAW;
> +	sink_fmt->xfer_func = V4L2_XFER_FUNC_NONE;
> +	sink_fmt->ycbcr_enc = V4L2_YCBCR_ENC_601;
> +	sink_fmt->quantization = V4L2_QUANTIZATION_FULL_RANGE;
> +
> +	*src_fmt = *sink_fmt;
> +
> +	return c3_mipi_adap_init_routing(sd, state);
> +}
> +
> +static const struct v4l2_subdev_pad_ops c3_mipi_adap_pad_ops = {
> +	.enum_mbus_code = c3_mipi_adap_enum_mbus_code,
> +	.get_fmt = v4l2_subdev_get_fmt,
> +	.set_fmt = c3_mipi_adap_set_fmt,
> +	.enable_streams = c3_mipi_adap_enable_streams,
> +	.disable_streams = c3_mipi_adap_disable_streams,
> +};
> +
> +static const struct v4l2_subdev_ops c3_mipi_adap_subdev_ops = {
> +	.pad = &c3_mipi_adap_pad_ops,
> +};
> +
> +static const struct v4l2_subdev_internal_ops c3_mipi_adap_internal_ops = {
> +	.init_state = c3_mipi_adap_init_state,
> +};
> +
> +/* Media entity operations */
> +static const struct media_entity_operations c3_mipi_adap_entity_ops = {
> +	.link_validate = v4l2_subdev_link_validate,
> +};
> +
> +/* PM runtime */
> +
> +static int c3_mipi_adap_runtime_suspend(struct device *dev)
> +{
> +	struct adap_device *adap = dev_get_drvdata(dev);
> +
> +	clk_bulk_disable_unprepare(adap->info->clock_num, adap->clks);
> +
> +	return 0;
> +}
> +
> +static int c3_mipi_adap_runtime_resume(struct device *dev)
> +{
> +	struct adap_device *adap = dev_get_drvdata(dev);
> +
> +	return clk_bulk_prepare_enable(adap->info->clock_num, adap->clks);
> +}
> +
> +static const struct dev_pm_ops c3_mipi_adap_pm_ops = {
> +	SYSTEM_SLEEP_PM_OPS(pm_runtime_force_suspend,
> +			    pm_runtime_force_resume)
> +	RUNTIME_PM_OPS(c3_mipi_adap_runtime_suspend,
> +		       c3_mipi_adap_runtime_resume, NULL)
> +};
> +
> +/* Probe/remove & platform driver */
> +
> +static int c3_mipi_adap_subdev_init(struct adap_device *adap)
> +{
> +	struct v4l2_subdev *sd = &adap->sd;
> +	int ret;
> +
> +	v4l2_subdev_init(sd, &c3_mipi_adap_subdev_ops);
> +	sd->owner = THIS_MODULE;
> +	sd->flags |= V4L2_SUBDEV_FL_HAS_DEVNODE;
> +	sd->internal_ops = &c3_mipi_adap_internal_ops;
> +	snprintf(sd->name, sizeof(sd->name), "%s", MIPI_ADAP_SUBDEV_NAME);
> +
> +	sd->entity.function = MEDIA_ENT_F_VID_IF_BRIDGE;
> +	sd->entity.ops = &c3_mipi_adap_entity_ops;
> +
> +	sd->dev = adap->dev;
> +	v4l2_set_subdevdata(sd, adap);
> +
> +	adap->pads[MIPI_ADAP_PAD_SINK].flags = MEDIA_PAD_FL_SINK;
> +	adap->pads[MIPI_ADAP_PAD_SRC].flags = MEDIA_PAD_FL_SOURCE;
> +	ret = media_entity_pads_init(&sd->entity, MIPI_ADAP_PAD_MAX, adap->pads);
> +	if (ret)
> +		return ret;
> +
> +	ret = v4l2_subdev_init_finalize(sd);
> +	if (ret) {
> +		media_entity_cleanup(&sd->entity);
> +		return ret;
> +	}
> +
> +	return 0;
> +}
> +
> +static void c3_mipi_adap_subdev_deinit(struct adap_device *adap)
> +{
> +	v4l2_subdev_cleanup(&adap->sd);
> +	media_entity_cleanup(&adap->sd.entity);
> +}
> +
> +/* Subdev notifier register */
> +static int c3_mipi_adap_notify_bound(struct v4l2_async_notifier *notifier,
> +				     struct v4l2_subdev *sd,
> +				     struct v4l2_async_connection *asc)
> +{
> +	struct adap_device *adap = v4l2_get_subdevdata(notifier->sd);
> +	struct media_pad *sink = &adap->sd.entity.pads[MIPI_ADAP_PAD_SINK];
> +	int ret;
> +
> +	ret = media_entity_get_fwnode_pad(&sd->entity,
> +					  sd->fwnode, MEDIA_PAD_FL_SOURCE);
> +	if (ret < 0) {
> +		dev_err(adap->dev, "Failed to find pad for %s\n", sd->name);
> +		return ret;
> +	}
> +
> +	adap->src_sd = sd;
> +	adap->src_sd_pad = ret;
> +
> +	return v4l2_create_fwnode_links_to_pad(sd, sink, MEDIA_LNK_FL_ENABLED |
> +					       MEDIA_LNK_FL_IMMUTABLE);
> +}
> +
> +static const struct v4l2_async_notifier_operations c3_mipi_adap_notify_ops = {
> +	.bound = c3_mipi_adap_notify_bound,
> +};
> +
> +static int c3_mipi_adap_async_register(struct adap_device *adap)
> +{
> +	struct v4l2_async_connection *asc;
> +	struct fwnode_handle *ep;
> +	int ret;
> +
> +	v4l2_async_subdev_nf_init(&adap->notifier, &adap->sd);
> +
> +	ep = fwnode_graph_get_endpoint_by_id(dev_fwnode(adap->dev), 0, 0,
> +					     FWNODE_GRAPH_ENDPOINT_NEXT);
> +	if (!ep)
> +		return -ENOTCONN;
> +
> +	asc = v4l2_async_nf_add_fwnode_remote(&adap->notifier, ep,
> +					      struct v4l2_async_connection);
> +	if (IS_ERR(asc)) {
> +		ret = PTR_ERR(asc);
> +		goto err_put_handle;
> +	}
> +
> +	adap->notifier.ops = &c3_mipi_adap_notify_ops;
> +	ret = v4l2_async_nf_register(&adap->notifier);
> +	if (ret)
> +		goto err_cleanup_nf;
> +
> +	ret = v4l2_async_register_subdev(&adap->sd);
> +	if (ret)
> +		goto err_unregister_nf;
> +
> +	fwnode_handle_put(ep);
> +
> +	return 0;
> +
> +err_unregister_nf:
> +	v4l2_async_nf_unregister(&adap->notifier);
> +err_cleanup_nf:
> +	v4l2_async_nf_cleanup(&adap->notifier);
> +err_put_handle:
> +	fwnode_handle_put(ep);
> +	return ret;
> +}
> +
> +static void c3_mipi_adap_async_unregister(struct adap_device *adap)
> +{
> +	v4l2_async_unregister_subdev(&adap->sd);
> +	v4l2_async_nf_unregister(&adap->notifier);
> +	v4l2_async_nf_cleanup(&adap->notifier);
> +}
> +
> +static int c3_mipi_adap_ioremap_resource(struct adap_device *adap)
> +{
> +	struct device *dev = adap->dev;
> +	struct platform_device *pdev = to_platform_device(dev);
> +
> +	adap->top = devm_platform_ioremap_resource_byname(pdev, "top");
> +	if (IS_ERR(adap->top))
> +		return PTR_ERR(adap->top);
> +
> +	adap->fd = devm_platform_ioremap_resource_byname(pdev, "fd");
> +	if (IS_ERR(adap->fd))
> +		return PTR_ERR(adap->fd);
> +
> +	adap->rd = devm_platform_ioremap_resource_byname(pdev, "rd");
> +	if (IS_ERR(adap->rd))
> +		return PTR_ERR(adap->rd);
> +
> +	return 0;
> +}
> +
> +static int c3_mipi_adap_configure_clocks(struct adap_device *adap)
> +{
> +	const struct adap_info *info = adap->info;
> +	int ret;
> +	u32 i;
> +
> +	for (i = 0; i < info->clock_num; i++)
> +		adap->clks[i].id = info->clocks[i];
> +
> +	ret = devm_clk_bulk_get(adap->dev, info->clock_num, adap->clks);
> +	if (ret)
> +		return ret;
> +
> +	for (i = 0; i < info->clock_num; i++) {
> +		if (!info->clock_rates[i])
> +			continue;

Same comments, maybe add one empty line here

> +		ret = clk_set_rate(adap->clks[i].clk, info->clock_rates[i]);
> +		if (ret) {

and I wonder if you should bulk_release here

The rest looks good!

Thanks
  j


> +			dev_err(adap->dev, "Failed to set %s rate %u\n", info->clocks[i],
> +				info->clock_rates[i]);
> +			return ret;
> +		}
> +	}
> +
> +	return 0;
> +}
> +
> +static int c3_mipi_adap_probe(struct platform_device *pdev)
> +{
> +	struct device *dev = &pdev->dev;
> +	struct adap_device *adap;
> +	int ret;
> +
> +	adap = devm_kzalloc(dev, sizeof(*adap), GFP_KERNEL);
> +	if (!adap)
> +		return -ENOMEM;
> +
> +	adap->info = of_device_get_match_data(dev);
> +	adap->dev = dev;
> +
> +	ret = c3_mipi_adap_ioremap_resource(adap);
> +	if (ret)
> +		return dev_err_probe(dev, ret, "Failed to ioremap resource\n");
> +
> +	ret = c3_mipi_adap_configure_clocks(adap);
> +	if (ret)
> +		return dev_err_probe(dev, ret, "Failed to configure clocks\n");
> +
> +	platform_set_drvdata(pdev, adap);
> +
> +	pm_runtime_enable(dev);
> +
> +	ret = c3_mipi_adap_subdev_init(adap);
> +	if (ret < 0)
> +		goto err_disable_runtime_pm;
> +
> +	ret = c3_mipi_adap_async_register(adap);
> +	if (ret < 0)
> +		goto err_deinit_subdev;
> +
> +	return 0;
> +
> +err_deinit_subdev:
> +	c3_mipi_adap_subdev_deinit(adap);
> +err_disable_runtime_pm:
> +	pm_runtime_disable(dev);
> +	return ret;
> +};
> +
> +static void c3_mipi_adap_remove(struct platform_device *pdev)
> +{
> +	struct adap_device *adap = platform_get_drvdata(pdev);
> +
> +	c3_mipi_adap_async_unregister(adap);
> +	c3_mipi_adap_subdev_deinit(adap);
> +
> +	pm_runtime_disable(&pdev->dev);
> +};
> +
> +static const struct adap_info c3_mipi_adap_info = {
> +	.clocks = {"vapb", "isp0"},
> +	.clock_rates = {0, 400000000},
> +	.clock_num = 2
> +};
> +
> +static const struct of_device_id c3_mipi_adap_of_match[] = {
> +	{ .compatible = "amlogic,c3-mipi-adapter",
> +	  .data = &c3_mipi_adap_info },
> +	{ },
> +};
> +MODULE_DEVICE_TABLE(of, c3_mipi_adap_of_match);
> +
> +static struct platform_driver c3_mipi_adap_driver = {
> +	.probe = c3_mipi_adap_probe,
> +	.remove = c3_mipi_adap_remove,
> +	.driver = {
> +		.name = "c3-mipi-adapter",
> +		.of_match_table = c3_mipi_adap_of_match,
> +		.pm = pm_ptr(&c3_mipi_adap_pm_ops),
> +	},
> +};
> +
> +module_platform_driver(c3_mipi_adap_driver);
> +
> +MODULE_AUTHOR("Keke Li <keke.li@amlogic.com>");
> +MODULE_DESCRIPTION("Amlogic C3 MIPI adapter");
> +MODULE_LICENSE("GPL");
>
> --
> 2.47.0
>
>
>

