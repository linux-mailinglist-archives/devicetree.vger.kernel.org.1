Return-Path: <devicetree+bounces-15277-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FB5D7E96D4
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 08:03:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9D79C1F21044
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 07:03:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D920F9F9;
	Mon, 13 Nov 2023 07:03:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b="nDCBJM6f"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AE5AF9EC;
	Mon, 13 Nov 2023 07:03:29 +0000 (UTC)
Received: from mx07-00178001.pphosted.com (mx07-00178001.pphosted.com [185.132.182.106])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 21BE510EB;
	Sun, 12 Nov 2023 23:03:23 -0800 (PST)
Received: from pps.filterd (m0241204.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 3ACNWpik012350;
	Mon, 13 Nov 2023 08:02:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	date:from:to:cc:subject:message-id:references:mime-version
	:content-type:in-reply-to; s=selector1; bh=EM8mNtwOxaOIpXq32Lk/c
	K3eyiZYn9VQa324Pa8zIgs=; b=nDCBJM6f5fnF+bmCTDtxiLLJzdfW5zITw2D74
	nCtPwZ2KMxkb1SolFp5w+EMe2zxyylZPKz5QBMgH5z3nb/TiQI0X0ccn/it2WFjX
	l9/ek/yiFOwnRGMaiQb5hdM80lxh62euvQe2MM8hu/XsxxAFxy9js0yHOPK4rF51
	d715UY7D4l9WNeR38y89vI06G4O9/GojaNFiT0gKtXldqdabVNr8Bkusdwr0M0UL
	VmlLY7JrQwXQ+4OJ0ry6SsbnkM0876hUIJSIph4rYjrLMweVhR/WWuzsmoNxDAB4
	r9mzywfW287c6q4/SAtt0pU1goJtzzDZ+danfaywlL7iIMCrQ==
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3ua1u1nkk3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 13 Nov 2023 08:02:35 +0100 (CET)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 088AE10005D;
	Mon, 13 Nov 2023 08:02:31 +0100 (CET)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 2466F208D67;
	Mon, 13 Nov 2023 08:02:31 +0100 (CET)
Received: from gnbcxd0016.gnb.st.com (10.129.178.213) by SHFDAG1NODE1.st.com
 (10.75.129.69) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Mon, 13 Nov
 2023 08:02:30 +0100
Date: Mon, 13 Nov 2023 08:02:24 +0100
From: Alain Volmat <alain.volmat@foss.st.com>
To: Sakari Ailus <sakari.ailus@linux.intel.com>
CC: Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring
	<robh+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue
	<alexandre.torgue@foss.st.com>,
        Russell King <linux@armlinux.org.uk>,
        Philipp
 Zabel <p.zabel@pengutronix.de>,
        Laurent Pinchart
	<laurent.pinchart@ideasonboard.com>,
        Dan Scally
	<dan.scally@ideasonboard.com>,
        Hugues Fruchet <hugues.fruchet@foss.st.com>,
        <linux-media@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-stm32@st-md-mailman.stormreply.com>,
        <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v5 3/5] media: stm32-dcmipp: STM32 DCMIPP camera
 interface driver
Message-ID: <20231113070224.GA71235@gnbcxd0016.gnb.st.com>
Mail-Followup-To: Sakari Ailus <sakari.ailus@linux.intel.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Russell King <linux@armlinux.org.uk>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Dan Scally <dan.scally@ideasonboard.com>,
	Hugues Fruchet <hugues.fruchet@foss.st.com>,
	linux-media@vger.kernel.org, devicetree@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20231010082413.1717919-1-alain.volmat@foss.st.com>
 <20231010082413.1717919-4-alain.volmat@foss.st.com>
 <ZTpJecRqYS0lMEQb@kekkonen.localdomain>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <ZTpJecRqYS0lMEQb@kekkonen.localdomain>
X-Disclaimer: ce message est personnel / this message is private
X-Originating-IP: [10.129.178.213]
X-ClientProxiedBy: SHFCAS1NODE2.st.com (10.75.129.73) To SHFDAG1NODE1.st.com
 (10.75.129.69)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-12_24,2023-11-09_01,2023-05-22_02

Hi Sakari,

On Thu, Oct 26, 2023 at 11:11:53AM +0000, Sakari Ailus wrote:
> Hi Alain, Hugues,
> 
> Thanks for the update.
> 
> A few minor comments below.
> 
> On Tue, Oct 10, 2023 at 10:24:03AM +0200, Alain Volmat wrote:
> > From: Hugues Fruchet <hugues.fruchet@foss.st.com>
> > 
> > This V4L2 subdev driver enables Digital Camera Memory Interface
> > Pixel Processor(DCMIPP) of STMicroelectronics STM32 SoC series.
> > 
> > Signed-off-by: Hugues Fruchet <hugues.fruchet@foss.st.com>
> > Signed-off-by: Alain Volmat <alain.volmat@foss.st.com>
> > ---
> >  drivers/media/platform/st/stm32/Kconfig       |  15 +
> >  drivers/media/platform/st/stm32/Makefile      |   1 +
> >  .../platform/st/stm32/stm32-dcmipp/Makefile   |   4 +
> >  .../st/stm32/stm32-dcmipp/dcmipp-bytecap.c    | 916 ++++++++++++++++++
> >  .../st/stm32/stm32-dcmipp/dcmipp-byteproc.c   | 555 +++++++++++
> >  .../st/stm32/stm32-dcmipp/dcmipp-common.c     | 106 ++
> >  .../st/stm32/stm32-dcmipp/dcmipp-common.h     | 216 +++++
> >  .../st/stm32/stm32-dcmipp/dcmipp-core.c       | 603 ++++++++++++
> >  .../st/stm32/stm32-dcmipp/dcmipp-parallel.c   | 441 +++++++++
> >  9 files changed, 2857 insertions(+)
> >  create mode 100644 drivers/media/platform/st/stm32/stm32-dcmipp/Makefile
> >  create mode 100644 drivers/media/platform/st/stm32/stm32-dcmipp/dcmipp-bytecap.c
> >  create mode 100644 drivers/media/platform/st/stm32/stm32-dcmipp/dcmipp-byteproc.c
> >  create mode 100644 drivers/media/platform/st/stm32/stm32-dcmipp/dcmipp-common.c
> >  create mode 100644 drivers/media/platform/st/stm32/stm32-dcmipp/dcmipp-common.h
> >  create mode 100644 drivers/media/platform/st/stm32/stm32-dcmipp/dcmipp-core.c
> >  create mode 100644 drivers/media/platform/st/stm32/stm32-dcmipp/dcmipp-parallel.c
> > 
> > diff --git a/drivers/media/platform/st/stm32/Kconfig b/drivers/media/platform/st/stm32/Kconfig
> > index b22dd4753496..fab531866941 100644
> > --- a/drivers/media/platform/st/stm32/Kconfig
> > +++ b/drivers/media/platform/st/stm32/Kconfig
> > @@ -16,6 +16,21 @@ config VIDEO_STM32_DCMI
> >  	  To compile this driver as a module, choose M here: the module
> >  	  will be called stm32-dcmi.
> >  
> > +config VIDEO_STM32_DCMIPP
> > +	tristate "STM32 Digital Camera Memory Interface Pixel Processor (DCMIPP) support"
> > +	depends on V4L_PLATFORM_DRIVERS
> > +	depends on VIDEO_DEV && OF
> 
> Do you actually need OF? See my comment on of_device_get_match_data(), too.

Removed, moved to device_get_match_data instead.

> 
> > +	depends on MEDIA_CONTROLLER
> 
> You'll also need:
> 
> 	depends on VIDEO_V4L2_SUBDEV_API

Added and use select instead.

> 
> > +	depends on ARCH_STM32 || COMPILE_TEST
> > +	select VIDEOBUF2_DMA_CONTIG
> > +	select V4L2_FWNODE
> > +	help
> > +	  This module makes the STM32 Digital Camera Memory Interface
> > +	  Pixel Processor (DCMIPP) available as a v4l2 device.
> > +
> > +	  To compile this driver as a module, choose M here: the module
> > +	  will be called stm32-dcmipp.
> > +
> >  # Mem2mem drivers
> >  config VIDEO_STM32_DMA2D
> >  	tristate "STM32 Chrom-Art Accelerator (DMA2D)"
> > diff --git a/drivers/media/platform/st/stm32/Makefile b/drivers/media/platform/st/stm32/Makefile
> > index 896ef98a73ab..7ed8297b9b19 100644
> > --- a/drivers/media/platform/st/stm32/Makefile
> > +++ b/drivers/media/platform/st/stm32/Makefile
> > @@ -1,4 +1,5 @@
> >  # SPDX-License-Identifier: GPL-2.0-only
> >  obj-$(CONFIG_VIDEO_STM32_DCMI) += stm32-dcmi.o
> > +obj-$(CONFIG_VIDEO_STM32_DCMIPP) += stm32-dcmipp/
> >  stm32-dma2d-objs := dma2d/dma2d.o dma2d/dma2d-hw.o
> >  obj-$(CONFIG_VIDEO_STM32_DMA2D) += stm32-dma2d.o
> > diff --git a/drivers/media/platform/st/stm32/stm32-dcmipp/Makefile b/drivers/media/platform/st/stm32/stm32-dcmipp/Makefile
> > new file mode 100644
> > index 000000000000..8920d9388a21
> > --- /dev/null
> > +++ b/drivers/media/platform/st/stm32/stm32-dcmipp/Makefile
> > @@ -0,0 +1,4 @@
> > +# SPDX-License-Identifier: GPL-2.0
> > +stm32-dcmipp-y := dcmipp-core.o dcmipp-common.o dcmipp-parallel.o dcmipp-byteproc.o dcmipp-bytecap.o
> > +
> > +obj-$(CONFIG_VIDEO_STM32_DCMIPP) += stm32-dcmipp.o
> > diff --git a/drivers/media/platform/st/stm32/stm32-dcmipp/dcmipp-bytecap.c b/drivers/media/platform/st/stm32/stm32-dcmipp/dcmipp-bytecap.c
> > new file mode 100644
> > index 000000000000..4f784c5791e7
> > --- /dev/null
> > +++ b/drivers/media/platform/st/stm32/stm32-dcmipp/dcmipp-bytecap.c
> > @@ -0,0 +1,916 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * Driver for STM32 Digital Camera Memory Interface Pixel Processor
> > + *
> > + * Copyright (C) STMicroelectronics SA 2022
> 
> 2023?

Done in all files.

> 
> > + * Authors: Hugues Fruchet <hugues.fruchet@foss.st.com>
> > + *          Alain Volmat <alain.volmat@foss.st.com>
> > + *          for STMicroelectronics.
> > + */
> > +
> > +#include <linux/iopoll.h>
> > +#include <linux/pm_runtime.h>
> > +#include <media/v4l2-ioctl.h>
> > +#include <media/v4l2-mc.h>
> > +#include <media/videobuf2-core.h>
> > +#include <media/videobuf2-dma-contig.h>
> > +
> > +#include "dcmipp-common.h"
> > +
> > +#define DCMIPP_PRSR		0x1f8
> > +#define DCMIPP_CMIER		0x3f0
> > +#define DCMIPP_CMIER_P0FRAMEIE	BIT(9)
> > +#define DCMIPP_CMIER_P0VSYNCIE	BIT(10)
> > +#define DCMIPP_CMIER_P0OVRIE	BIT(15)
> > +#define DCMIPP_CMIER_P0ALL	(DCMIPP_CMIER_P0VSYNCIE |\
> > +				 DCMIPP_CMIER_P0FRAMEIE |\
> > +				 DCMIPP_CMIER_P0OVRIE)
> > +#define DCMIPP_CMSR1		0x3f4
> > +#define DCMIPP_CMSR2		0x3f8
> > +#define DCMIPP_CMSR2_P0FRAMEF	BIT(9)
> > +#define DCMIPP_CMSR2_P0VSYNCF	BIT(10)
> > +#define DCMIPP_CMSR2_P0OVRF	BIT(15)
> > +#define DCMIPP_CMFCR		0x3fc
> > +#define DCMIPP_P0FSCR		0x404
> > +#define DCMIPP_P0FSCR_PIPEN	BIT(31)
> > +#define DCMIPP_P0FCTCR		0x500
> > +#define DCMIPP_P0FCTCR_CPTREQ	BIT(3)
> > +#define DCMIPP_P0DCCNTR		0x5b0
> > +#define DCMIPP_P0DCLMTR		0x5b4
> > +#define DCMIPP_P0DCLMTR_ENABLE	BIT(31)
> > +#define DCMIPP_P0DCLMTR_LIMIT_MASK	GENMASK(23, 0)
> > +#define DCMIPP_P0PPM0AR1	0x5c4
> > +#define DCMIPP_P0SR		0x5f8
> > +#define DCMIPP_P0SR_CPTACT	BIT(23)
> > +
> > +struct dcmipp_bytecap_pix_map {
> > +	unsigned int code;
> > +	u32 pixelformat;
> > +};
> > +
> > +#define PIXMAP_MBUS_PFMT(mbus, fmt)			\
> > +	{						\
> > +		.code = MEDIA_BUS_FMT_##mbus,		\
> > +		.pixelformat = V4L2_PIX_FMT_##fmt	\
> > +	}
> > +
> > +static const struct dcmipp_bytecap_pix_map dcmipp_bytecap_pix_map_list[] = {
> > +	PIXMAP_MBUS_PFMT(RGB565_2X8_LE, RGB565),
> > +	PIXMAP_MBUS_PFMT(YUYV8_2X8, YUYV),
> > +	PIXMAP_MBUS_PFMT(YVYU8_2X8, YVYU),
> > +	PIXMAP_MBUS_PFMT(UYVY8_2X8, UYVY),
> > +	PIXMAP_MBUS_PFMT(VYUY8_2X8, VYUY),
> > +	PIXMAP_MBUS_PFMT(Y8_1X8, GREY),
> > +	PIXMAP_MBUS_PFMT(SBGGR8_1X8, SBGGR8),
> > +	PIXMAP_MBUS_PFMT(SGBRG8_1X8, SGBRG8),
> > +	PIXMAP_MBUS_PFMT(SGRBG8_1X8, SGRBG8),
> > +	PIXMAP_MBUS_PFMT(SRGGB8_1X8, SRGGB8),
> > +	PIXMAP_MBUS_PFMT(JPEG_1X8, JPEG),
> > +};
> > +
> > +static const struct dcmipp_bytecap_pix_map *
> > +dcmipp_bytecap_pix_map_by_pixelformat(u32 pixelformat)
> > +{
> > +	unsigned int i;
> > +
> > +	for (i = 0; i < ARRAY_SIZE(dcmipp_bytecap_pix_map_list); i++) {
> 
> No need for braces. Up to you.

I'll keep the braces.  I tend to avoid them usually but since the
codyingstyle document mention it, I'll follow that.

> 
> > +		if (dcmipp_bytecap_pix_map_list[i].pixelformat == pixelformat)
> > +			return &dcmipp_bytecap_pix_map_list[i];
> > +	}
> > +
> > +	return NULL;
> > +}
> > +
> > +struct dcmipp_buf {
> > +	struct vb2_v4l2_buffer	vb;
> > +	bool			prepared;
> > +	dma_addr_t		addr;
> > +	size_t			size;
> > +	struct list_head	list;
> > +};
> > +
> > +enum dcmipp_state {
> > +	DCMIPP_STOPPED = 0,
> > +	DCMIPP_WAIT_FOR_BUFFER,
> > +	DCMIPP_RUNNING,
> > +};
> > +
> > +struct dcmipp_bytecap_device {
> > +	struct dcmipp_ent_device ved;
> > +	struct video_device vdev;
> > +	struct device *dev;
> > +	struct v4l2_pix_format format;
> > +	struct vb2_queue queue;
> > +	struct list_head buffers;
> > +	/*
> > +	 * Protects concurrent calls of buf queue / irq handler
> > +	 * and buffer handling related variables / lists
> > +	 */
> > +	spinlock_t irqlock;
> > +	/* mutex used as vdev and queue lock */
> > +	struct mutex lock;
> > +	u32 sequence;
> > +	struct media_pipeline pipe;
> > +	struct v4l2_subdev *s_subdev;
> > +
> > +	enum dcmipp_state state;
> > +
> > +	/*
> > +	 * DCMIPP driver is handling 2 buffers
> > +	 * active: buffer into which DCMIPP is currently writing into
> > +	 * next: buffer given to the DCMIPP and which will become
> > +	 *       automatically active on next VSYNC
> > +	 */
> > +	struct dcmipp_buf *active, *next;
> > +
> > +	void __iomem *regs;
> > +
> > +	u32 cmier;
> > +	u32 cmsr2;
> > +
> > +	struct {
> > +		u32 errors;
> > +		u32 limit;
> > +		u32 overrun;
> > +		u32 buffers;
> > +		u32 vsync;
> > +		u32 frame;
> > +		u32 it;
> > +		u32 underrun;
> > +		u32 nactive;
> > +	} count;
> > +};
> > +
> > +static const struct v4l2_pix_format fmt_default = {
> > +	.width = DCMIPP_FMT_WIDTH_DEFAULT,
> > +	.height = DCMIPP_FMT_HEIGHT_DEFAULT,
> > +	.pixelformat = V4L2_PIX_FMT_RGB565,
> > +	.field = V4L2_FIELD_NONE,
> > +	.bytesperline = DCMIPP_FMT_WIDTH_DEFAULT * 2,
> > +	.sizeimage = DCMIPP_FMT_WIDTH_DEFAULT * DCMIPP_FMT_HEIGHT_DEFAULT * 2,
> > +	.colorspace = DCMIPP_COLORSPACE_DEFAULT,
> > +	.ycbcr_enc = DCMIPP_YCBCR_ENC_DEFAULT,
> > +	.quantization = DCMIPP_QUANTIZATION_DEFAULT,
> > +	.xfer_func = DCMIPP_XFER_FUNC_DEFAULT,
> > +};
> > +
> > +static int dcmipp_bytecap_querycap(struct file *file, void *priv,
> > +				   struct v4l2_capability *cap)
> > +{
> > +	strscpy(cap->driver, DCMIPP_PDEV_NAME, sizeof(cap->driver));
> > +	strscpy(cap->card, KBUILD_MODNAME, sizeof(cap->card));
> > +
> > +	return 0;
> > +}
> > +
> > +static int dcmipp_bytecap_g_fmt_vid_cap(struct file *file, void *priv,
> > +					struct v4l2_format *f)
> > +{
> > +	struct dcmipp_bytecap_device *vcap = video_drvdata(file);
> > +
> > +	f->fmt.pix = vcap->format;
> > +
> > +	return 0;
> > +}
> > +
> > +static int dcmipp_bytecap_try_fmt_vid_cap(struct file *file, void *priv,
> > +					  struct v4l2_format *f)
> > +{
> > +	struct dcmipp_bytecap_device *vcap = video_drvdata(file);
> > +	struct v4l2_pix_format *format = &f->fmt.pix;
> > +	const struct dcmipp_bytecap_pix_map *vpix;
> > +	u32 in_w, in_h;
> > +
> > +	/* Don't accept a pixelformat that is not on the table */
> > +	vpix = dcmipp_bytecap_pix_map_by_pixelformat(format->pixelformat);
> > +	if (!vpix)
> > +		format->pixelformat = fmt_default.pixelformat;
> > +
> > +	/* Adjust width & height */
> > +	in_w = format->width;
> > +	in_h = format->height;
> > +	v4l_bound_align_image(&format->width,
> > +			      DCMIPP_FRAME_MIN_WIDTH, DCMIPP_FRAME_MAX_WIDTH,
> > +			      0,
> > +			      &format->height,
> > +			      DCMIPP_FRAME_MIN_HEIGHT, DCMIPP_FRAME_MAX_HEIGHT,
> > +			      0,
> > +			      0);
> 
> This could fit on fewer lines..

Done.

> 
> > +	if (format->width != in_w || format->height != in_h)
> > +		dev_dbg(vcap->dev, "resolution updated: %dx%d -> %dx%d\n",
> > +			in_w, in_h, format->width, format->height);
> > +
> > +	if (format->pixelformat == V4L2_PIX_FMT_JPEG) {
> > +		format->bytesperline = format->width;
> > +		format->sizeimage = format->bytesperline * format->height;
> > +	} else {
> > +		v4l2_fill_pixfmt(format, format->pixelformat,
> > +				 format->width, format->height);
> > +	}
> > +
> > +	if (format->field == V4L2_FIELD_ANY)
> > +		format->field = fmt_default.field;
> > +
> > +	dcmipp_colorimetry_clamp(format);
> > +
> > +	return 0;
> > +}
> > +
> > +static int dcmipp_bytecap_s_fmt_vid_cap(struct file *file, void *priv,
> > +					struct v4l2_format *f)
> > +{
> > +	struct dcmipp_bytecap_device *vcap = video_drvdata(file);
> > +	int ret;
> > +
> > +	/* Do not change the format while stream is on */
> > +	if (vb2_is_busy(&vcap->queue))
> > +		return -EBUSY;
> > +
> > +	ret = dcmipp_bytecap_try_fmt_vid_cap(file, priv, f);
> > +	if (ret)
> > +		return ret;
> > +
> > +	dev_dbg(vcap->dev, "%s: format update: old:%ux%u (0x%p4cc, %u, %u, %u, %u) new:%ux%d (0x%p4cc, %u, %u, %u, %u)\n",
> > +		vcap->vdev.name,
> > +		/* old */
> > +		vcap->format.width, vcap->format.height,
> > +		&vcap->format.pixelformat, vcap->format.colorspace,
> > +		vcap->format.quantization, vcap->format.xfer_func,
> > +		vcap->format.ycbcr_enc,
> > +		/* new */
> > +		f->fmt.pix.width, f->fmt.pix.height,
> > +		&f->fmt.pix.pixelformat, f->fmt.pix.colorspace,
> > +		f->fmt.pix.quantization, f->fmt.pix.xfer_func,
> > +		f->fmt.pix.ycbcr_enc);
> > +
> > +	vcap->format = f->fmt.pix;
> > +
> > +	return 0;
> > +}
> > +
> > +static int dcmipp_bytecap_enum_fmt_vid_cap(struct file *file, void *priv,
> > +					   struct v4l2_fmtdesc *f)
> > +{
> > +	const struct dcmipp_bytecap_pix_map *vpix;
> > +	unsigned int index = f->index;
> > +	unsigned int i;
> > +
> > +	if (f->mbus_code) {
> > +		/*
> > +		 * If a media bus code is specified, only enumerate formats
> > +		 * compatible with it.
> > +		 */
> > +		for (i = 0; i < ARRAY_SIZE(dcmipp_bytecap_pix_map_list); i++) {
> > +			vpix = &dcmipp_bytecap_pix_map_list[i];
> > +			if (vpix->code != f->mbus_code)
> > +				continue;
> > +
> > +			if (index == 0)
> > +				break;
> > +
> > +			index--;
> > +		}
> > +
> > +		if (i == ARRAY_SIZE(dcmipp_bytecap_pix_map_list))
> > +			return -EINVAL;
> > +	} else {
> > +		/* Otherwise, enumerate all formats. */
> > +		if (f->index >= ARRAY_SIZE(dcmipp_bytecap_pix_map_list))
> > +			return -EINVAL;
> > +
> > +		vpix = &dcmipp_bytecap_pix_map_list[f->index];
> > +	}
> > +
> > +	f->pixelformat = vpix->pixelformat;
> > +
> > +	return 0;
> > +}
> > +
> > +static int dcmipp_bytecap_enum_framesizes(struct file *file, void *fh,
> > +					  struct v4l2_frmsizeenum *fsize)
> > +{
> > +	const struct dcmipp_bytecap_pix_map *vpix;
> > +
> > +	if (fsize->index)
> > +		return -EINVAL;
> > +
> > +	/* Only accept code in the pix map table */
> > +	vpix = dcmipp_bytecap_pix_map_by_pixelformat(fsize->pixel_format);
> > +	if (!vpix)
> > +		return -EINVAL;
> > +
> > +	fsize->type = V4L2_FRMSIZE_TYPE_CONTINUOUS;
> > +	fsize->stepwise.min_width = DCMIPP_FRAME_MIN_WIDTH;
> > +	fsize->stepwise.max_width = DCMIPP_FRAME_MAX_WIDTH;
> > +	fsize->stepwise.min_height = DCMIPP_FRAME_MIN_HEIGHT;
> > +	fsize->stepwise.max_height = DCMIPP_FRAME_MAX_HEIGHT;
> > +	fsize->stepwise.step_width = 1;
> > +	fsize->stepwise.step_height = 1;
> > +
> > +	return 0;
> > +}
> > +
> > +static const struct v4l2_file_operations dcmipp_bytecap_fops = {
> > +	.owner		= THIS_MODULE,
> > +	.open		= v4l2_fh_open,
> > +	.release	= vb2_fop_release,
> > +	.read           = vb2_fop_read,
> > +	.poll		= vb2_fop_poll,
> > +	.unlocked_ioctl = video_ioctl2,
> > +	.mmap           = vb2_fop_mmap,
> > +};
> > +
> > +static const struct v4l2_ioctl_ops dcmipp_bytecap_ioctl_ops = {
> > +	.vidioc_querycap = dcmipp_bytecap_querycap,
> > +
> > +	.vidioc_g_fmt_vid_cap = dcmipp_bytecap_g_fmt_vid_cap,
> > +	.vidioc_s_fmt_vid_cap = dcmipp_bytecap_s_fmt_vid_cap,
> > +	.vidioc_try_fmt_vid_cap = dcmipp_bytecap_try_fmt_vid_cap,
> > +	.vidioc_enum_fmt_vid_cap = dcmipp_bytecap_enum_fmt_vid_cap,
> > +	.vidioc_enum_framesizes = dcmipp_bytecap_enum_framesizes,
> > +
> > +	.vidioc_reqbufs = vb2_ioctl_reqbufs,
> > +	.vidioc_create_bufs = vb2_ioctl_create_bufs,
> > +	.vidioc_prepare_buf = vb2_ioctl_prepare_buf,
> > +	.vidioc_querybuf = vb2_ioctl_querybuf,
> > +	.vidioc_qbuf = vb2_ioctl_qbuf,
> > +	.vidioc_dqbuf = vb2_ioctl_dqbuf,
> > +	.vidioc_expbuf = vb2_ioctl_expbuf,
> > +	.vidioc_streamon = vb2_ioctl_streamon,
> > +	.vidioc_streamoff = vb2_ioctl_streamoff,
> > +};
> > +
> > +static int dcmipp_pipeline_s_stream(struct dcmipp_bytecap_device *vcap,
> > +				    int state)
> > +{
> > +	struct media_pad *pad;
> > +	int ret;
> > +
> > +	/*
> > +	 * Get source subdev - since link is IMMUTABLE, pointer is cached
> > +	 * within the dcmipp_bytecap_device structure
> > +	 */
> > +	if (!vcap->s_subdev) {
> > +		pad = media_pad_remote_pad_first(&vcap->vdev.entity.pads[0]);
> > +		if (!pad || !is_media_entity_v4l2_subdev(pad->entity))
> > +			return -EINVAL;
> > +		vcap->s_subdev = media_entity_to_v4l2_subdev(pad->entity);
> > +	}
> > +
> > +	ret = v4l2_subdev_call(vcap->s_subdev, video, s_stream, state);
> > +	if (ret < 0) {
> > +		dev_err(vcap->dev, "failed to %s streaming (%d)\n",
> > +			state ? "start" : "stop", ret);
> > +		return ret;
> > +	}
> > +
> > +	return 0;
> > +}
> > +
> > +static void dcmipp_start_capture(struct dcmipp_bytecap_device *vcap,
> > +				 struct dcmipp_buf *buf)
> > +{
> > +	/* Set buffer address */
> > +	reg_write(vcap, DCMIPP_P0PPM0AR1, buf->addr);
> > +
> > +	/* Set buffer size */
> > +	reg_write(vcap, DCMIPP_P0DCLMTR, DCMIPP_P0DCLMTR_ENABLE |
> > +		  ((buf->size / 4) & DCMIPP_P0DCLMTR_LIMIT_MASK));
> > +
> > +	/* Capture request */
> > +	reg_set(vcap, DCMIPP_P0FCTCR, DCMIPP_P0FCTCR_CPTREQ);
> > +}
> > +
> > +static void dcmipp_bytecap_all_buffers_done(struct dcmipp_bytecap_device *vcap,
> > +					    enum vb2_buffer_state state)
> > +{
> > +	struct dcmipp_buf *buf, *node;
> > +
> > +	list_for_each_entry_safe(buf, node, &vcap->buffers, list) {
> > +		list_del_init(&buf->list);
> > +		vb2_buffer_done(&buf->vb.vb2_buf, state);
> > +	}
> > +}
> > +
> > +static int dcmipp_bytecap_start_streaming(struct vb2_queue *vq,
> > +					  unsigned int count)
> > +{
> > +	struct dcmipp_bytecap_device *vcap = vb2_get_drv_priv(vq);
> > +	struct media_entity *entity = &vcap->vdev.entity;
> > +	struct dcmipp_buf *buf;
> > +	int ret;
> > +
> > +	vcap->sequence = 0;
> > +	memset(&vcap->count, 0, sizeof(vcap->count));
> > +
> > +	ret = pm_runtime_resume_and_get(vcap->dev);
> > +	if (ret < 0) {
> > +		dev_err(vcap->dev, "%s: Failed to start streaming, cannot get sync (%d)\n",
> > +			__func__, ret);
> > +		goto err_buffer_done;
> > +	}
> > +
> > +	ret = media_pipeline_start(entity->pads, &vcap->pipe);
> > +	if (ret) {
> > +		dev_dbg(vcap->dev, "%s: Failed to start streaming, media pipeline start error (%d)\n",
> > +			__func__, ret);
> > +		goto err_pm_put;
> > +	}
> > +
> > +	ret = dcmipp_pipeline_s_stream(vcap, 1);
> > +	if (ret)
> > +		goto err_media_pipeline_stop;
> > +
> > +	spin_lock_irq(&vcap->irqlock);
> > +
> > +	/* Enable pipe at the end of programming */
> > +	reg_set(vcap, DCMIPP_P0FSCR, DCMIPP_P0FSCR_PIPEN);
> > +
> > +	/*
> > +	 * vb2 framework guarantee that we have at least 'min_buffers_needed'
> > +	 * buffers in the list at this moment
> > +	 */
> > +	vcap->next = list_first_entry(&vcap->buffers, typeof(*buf), list);
> > +	dev_dbg(vcap->dev, "Start with next [%d] %p phy=%pad\n",
> > +		vcap->next->vb.vb2_buf.index, vcap->next, &vcap->next->addr);
> > +
> > +	dcmipp_start_capture(vcap, vcap->next);
> > +
> > +	/* Enable interruptions */
> > +	vcap->cmier |= DCMIPP_CMIER_P0ALL;
> > +	reg_set(vcap, DCMIPP_CMIER, vcap->cmier);
> > +
> > +	vcap->state = DCMIPP_RUNNING;
> > +
> > +	spin_unlock_irq(&vcap->irqlock);
> > +
> > +	return 0;
> > +
> > +err_media_pipeline_stop:
> > +	media_pipeline_stop(entity->pads);
> > +err_pm_put:
> > +	pm_runtime_put(vcap->dev);
> > +err_buffer_done:
> > +	spin_lock_irq(&vcap->irqlock);
> > +	/*
> > +	 * Return all buffers to vb2 in QUEUED state.
> > +	 * This will give ownership back to userspace
> > +	 */
> > +	dcmipp_bytecap_all_buffers_done(vcap, VB2_BUF_STATE_QUEUED);
> > +	vcap->active = NULL;
> > +	spin_unlock_irq(&vcap->irqlock);
> > +
> > +	return ret;
> > +}
> > +
> > +static void dcmipp_dump_status(struct dcmipp_bytecap_device *vcap)
> > +{
> > +	struct device *dev = vcap->dev;
> > +
> > +	dev_dbg(dev, "[DCMIPP_PRSR]  =%#10.8x\n", reg_read(vcap, DCMIPP_PRSR));
> > +	dev_dbg(dev, "[DCMIPP_P0SR] =%#10.8x\n", reg_read(vcap, DCMIPP_P0SR));
> > +	dev_dbg(dev, "[DCMIPP_P0DCCNTR]=%#10.8x\n",
> > +		reg_read(vcap, DCMIPP_P0DCCNTR));
> > +	dev_dbg(dev, "[DCMIPP_CMSR1] =%#10.8x\n", reg_read(vcap, DCMIPP_CMSR1));
> > +	dev_dbg(dev, "[DCMIPP_CMSR2] =%#10.8x\n", reg_read(vcap, DCMIPP_CMSR2));
> > +}
> > +
> > +/*
> > + * Stop the stream engine. Any remaining buffers in the stream queue are
> > + * dequeued and passed on to the vb2 framework marked as STATE_ERROR.
> > + */
> > +static void dcmipp_bytecap_stop_streaming(struct vb2_queue *vq)
> > +{
> > +	struct dcmipp_bytecap_device *vcap = vb2_get_drv_priv(vq);
> > +	int ret;
> > +	u32 status;
> > +
> > +	dcmipp_pipeline_s_stream(vcap, 0);
> > +
> > +	/* Stop the media pipeline */
> > +	media_pipeline_stop(vcap->vdev.entity.pads);
> > +
> > +	/* Disable interruptions */
> > +	reg_clear(vcap, DCMIPP_CMIER, vcap->cmier);
> > +
> > +	/* Stop capture */
> > +	reg_clear(vcap, DCMIPP_P0FCTCR, DCMIPP_P0FCTCR_CPTREQ);
> > +
> > +	/* Wait until CPTACT become 0 */
> > +	ret = readl_relaxed_poll_timeout(vcap->regs + DCMIPP_P0SR, status,
> > +					 !(status & DCMIPP_P0SR_CPTACT),
> > +					 20 * USEC_PER_MSEC,
> > +					 1000 * USEC_PER_MSEC);
> > +	if (ret)
> > +		dev_warn(vcap->dev, "Timeout when stopping\n");
> > +
> > +	/* Disable pipe */
> > +	reg_clear(vcap, DCMIPP_P0FSCR, DCMIPP_P0FSCR_PIPEN);
> > +
> > +	spin_lock_irq(&vcap->irqlock);
> > +
> > +	/* Return all queued buffers to vb2 in ERROR state */
> > +	dcmipp_bytecap_all_buffers_done(vcap, VB2_BUF_STATE_ERROR);
> > +	INIT_LIST_HEAD(&vcap->buffers);
> > +
> > +	vcap->active = NULL;
> > +	vcap->state = DCMIPP_STOPPED;
> > +
> > +	spin_unlock_irq(&vcap->irqlock);
> > +
> > +	dcmipp_dump_status(vcap);
> > +
> > +	pm_runtime_put(vcap->dev);
> > +
> > +	if (vcap->count.errors)
> > +		dev_warn(vcap->dev, "Some errors found while streaming: errors=%d (overrun=%d, limit=%d, nactive=%d), underrun=%d, buffers=%d\n",
> > +			 vcap->count.errors, vcap->count.overrun,
> > +			 vcap->count.limit, vcap->count.nactive,
> > +			 vcap->count.underrun, vcap->count.buffers);
> > +}
> > +
> > +static int dcmipp_bytecap_buf_prepare(struct vb2_buffer *vb)
> > +{
> > +	struct dcmipp_bytecap_device *vcap =  vb2_get_drv_priv(vb->vb2_queue);
> > +	struct vb2_v4l2_buffer *vbuf = to_vb2_v4l2_buffer(vb);
> > +	struct dcmipp_buf *buf = container_of(vbuf, struct dcmipp_buf, vb);
> > +	unsigned long size;
> > +
> > +	size = vcap->format.sizeimage;
> > +
> > +	if (vb2_plane_size(vb, 0) < size) {
> > +		dev_err(vcap->dev, "%s data will not fit into plane (%lu < %lu)\n",
> > +			__func__, vb2_plane_size(vb, 0), size);
> > +		return -EINVAL;
> > +	}
> > +
> > +	vb2_set_plane_payload(vb, 0, size);
> > +
> > +	if (!buf->prepared) {
> > +		/* Get memory addresses */
> > +		buf->addr = vb2_dma_contig_plane_dma_addr(&buf->vb.vb2_buf, 0);
> > +		buf->size = vb2_plane_size(&buf->vb.vb2_buf, 0);
> > +		buf->prepared = true;
> > +
> > +		vb2_set_plane_payload(&buf->vb.vb2_buf, 0, buf->size);
> > +
> > +		dev_dbg(vcap->dev, "Setup [%d] phy=%pad size=%zu\n",
> > +			vb->index, &buf->addr, buf->size);
> > +	}
> > +
> > +	return 0;
> > +}
> > +
> > +static void dcmipp_bytecap_buf_queue(struct vb2_buffer *vb2_buf)
> > +{
> > +	struct dcmipp_bytecap_device *vcap =
> > +		vb2_get_drv_priv(vb2_buf->vb2_queue);
> > +	struct vb2_v4l2_buffer *vbuf = to_vb2_v4l2_buffer(vb2_buf);
> > +	struct dcmipp_buf *buf = container_of(vbuf, struct dcmipp_buf, vb);
> > +
> > +	dev_dbg(vcap->dev, "Queue [%d] %p phy=%pad\n", buf->vb.vb2_buf.index,
> > +		buf, &buf->addr);
> > +
> > +	spin_lock_irq(&vcap->irqlock);
> > +	list_add_tail(&buf->list, &vcap->buffers);
> > +
> > +	if (vcap->state == DCMIPP_WAIT_FOR_BUFFER) {
> > +		vcap->next = buf;
> > +		dev_dbg(vcap->dev, "Restart with next [%d] %p phy=%pad\n",
> > +			buf->vb.vb2_buf.index, buf, &buf->addr);
> > +
> > +		dcmipp_start_capture(vcap, buf);
> > +
> > +		vcap->state = DCMIPP_RUNNING;
> > +	}
> > +
> > +	spin_unlock_irq(&vcap->irqlock);
> > +}
> > +
> > +static int dcmipp_bytecap_queue_setup(struct vb2_queue *vq,
> > +				      unsigned int *nbuffers,
> > +				      unsigned int *nplanes,
> > +				      unsigned int sizes[],
> > +				      struct device *alloc_devs[])
> > +{
> > +	struct dcmipp_bytecap_device *vcap = vb2_get_drv_priv(vq);
> > +	unsigned int size;
> > +
> > +	size = vcap->format.sizeimage;
> > +
> > +	/* Make sure the image size is large enough */
> > +	if (*nplanes)
> > +		return sizes[0] < vcap->format.sizeimage ? -EINVAL : 0;
> > +
> > +	*nplanes = 1;
> > +	sizes[0] = vcap->format.sizeimage;
> > +
> > +	dev_dbg(vcap->dev, "Setup queue, count=%d, size=%d\n",
> > +		*nbuffers, size);
> > +
> > +	return 0;
> > +}
> > +
> > +static int dcmipp_bytecap_buf_init(struct vb2_buffer *vb)
> > +{
> > +	struct vb2_v4l2_buffer *vbuf = to_vb2_v4l2_buffer(vb);
> > +	struct dcmipp_buf *buf = container_of(vbuf, struct dcmipp_buf, vb);
> > +
> > +	INIT_LIST_HEAD(&buf->list);
> > +
> > +	return 0;
> > +}
> > +
> > +static const struct vb2_ops dcmipp_bytecap_qops = {
> > +	.start_streaming	= dcmipp_bytecap_start_streaming,
> > +	.stop_streaming		= dcmipp_bytecap_stop_streaming,
> > +	.buf_init		= dcmipp_bytecap_buf_init,
> > +	.buf_prepare		= dcmipp_bytecap_buf_prepare,
> > +	.buf_queue		= dcmipp_bytecap_buf_queue,
> > +	.queue_setup		= dcmipp_bytecap_queue_setup,
> > +	/*
> > +	 * Since q->lock is set we can use the standard
> > +	 * vb2_ops_wait_prepare/finish helper functions.
> > +	 */
> > +	.wait_prepare		= vb2_ops_wait_prepare,
> > +	.wait_finish		= vb2_ops_wait_finish,
> > +};
> > +
> > +static void dcmipp_bytecap_release(struct video_device *vdev)
> > +{
> > +	struct dcmipp_bytecap_device *vcap =
> > +		container_of(vdev, struct dcmipp_bytecap_device, vdev);
> > +
> > +	dcmipp_pads_cleanup(vcap->ved.pads);
> > +	mutex_destroy(&vcap->lock);
> > +
> > +	kfree(vcap);
> > +}
> > +
> > +void dcmipp_bytecap_ent_release(struct dcmipp_ent_device *ved)
> > +{
> > +	struct dcmipp_bytecap_device *vcap =
> > +		container_of(ved, struct dcmipp_bytecap_device, ved);
> > +
> > +	media_entity_cleanup(ved->ent);
> > +	vb2_video_unregister_device(&vcap->vdev);
> > +}
> > +
> > +static void dcmipp_buffer_done(struct dcmipp_bytecap_device *vcap,
> > +			       struct dcmipp_buf *buf,
> > +			       size_t bytesused,
> > +			       int err)
> > +{
> > +	struct vb2_v4l2_buffer *vbuf;
> > +
> > +	list_del_init(&buf->list);
> > +
> > +	vbuf = &buf->vb;
> > +
> > +	vbuf->sequence = vcap->sequence++;
> > +	vbuf->field = V4L2_FIELD_NONE;
> > +	vbuf->vb2_buf.timestamp = ktime_get_ns();
> > +	vb2_set_plane_payload(&vbuf->vb2_buf, 0, bytesused);
> > +	vb2_buffer_done(&vbuf->vb2_buf,
> > +			err ? VB2_BUF_STATE_ERROR : VB2_BUF_STATE_DONE);
> > +	dev_dbg(vcap->dev, "Done  [%d] %p phy=%pad\n", buf->vb.vb2_buf.index,
> > +		buf, &buf->addr);
> > +	vcap->count.buffers++;
> > +}
> > +
> > +/* irqlock must be held */
> > +static void
> > +dcmipp_bytecap_set_next_frame_or_stop(struct dcmipp_bytecap_device *vcap)
> > +{
> > +	if (!vcap->next && list_is_singular(&vcap->buffers)) {
> > +		/*
> > +		 * If there is no available buffer (none or a single one in the
> > +		 * list while two are expected), stop the capture (effective
> > +		 * for next frame). On-going frame capture will continue until
> > +		 * FRAME END but no further capture will be done.
> > +		 */
> > +		reg_clear(vcap, DCMIPP_P0FCTCR, DCMIPP_P0FCTCR_CPTREQ);
> > +
> > +		dev_dbg(vcap->dev, "Capture restart is deferred to next buffer queueing\n");
> > +		vcap->next = NULL;
> > +		vcap->state = DCMIPP_WAIT_FOR_BUFFER;
> > +		return;
> > +	}
> > +
> > +	/* If we don't have buffer yet, pick the one after active */
> > +	if (!vcap->next)
> > +		vcap->next = list_next_entry(vcap->active, list);
> > +
> > +	/*
> > +	 * Set buffer address
> > +	 * This register is shadowed and will be taken into
> > +	 * account on next VSYNC (start of next frame)
> > +	 */
> > +	reg_write(vcap, DCMIPP_P0PPM0AR1, vcap->next->addr);
> > +	dev_dbg(vcap->dev, "Write [%d] %p phy=%pad\n",
> > +		vcap->next->vb.vb2_buf.index, vcap->next, &vcap->next->addr);
> > +}
> > +
> > +/* irqlock must be held */
> > +static void dcmipp_bytecap_process_frame(struct dcmipp_bytecap_device *vcap,
> > +					 size_t bytesused)
> > +{
> > +	int err = 0;
> > +	struct dcmipp_buf *buf = vcap->active;
> > +
> > +	if (!buf) {
> > +		vcap->count.nactive++;
> > +		vcap->count.errors++;
> > +		return;
> > +	}
> > +
> > +	if (bytesused > buf->size) {
> > +		dev_dbg(vcap->dev, "frame larger than expected (%zu > %zu)\n",
> > +			bytesused, buf->size);
> > +		/* Clip to buffer size and return buffer to V4L2 in error */
> > +		bytesused = buf->size;
> > +		vcap->count.limit++;
> > +		vcap->count.errors++;
> > +		err = -EOVERFLOW;
> > +	}
> > +
> > +	dcmipp_buffer_done(vcap, buf, bytesused, err);
> > +	vcap->active = NULL;
> > +}
> > +
> > +static irqreturn_t dcmipp_bytecap_irq_thread(int irq, void *arg)
> > +{
> > +	struct dcmipp_bytecap_device *vcap =
> > +			container_of(arg, struct dcmipp_bytecap_device, ved);
> > +	size_t bytesused = 0;
> > +	u32 cmsr2;
> > +
> > +	spin_lock_irq(&vcap->irqlock);
> > +
> > +	cmsr2 = vcap->cmsr2 & vcap->cmier;
> > +
> > +	/*
> > +	 * If we have an overrun, a frame-end will probably not be generated,
> > +	 * in that case the active buffer will be recycled as next buffer by
> > +	 * the VSYNC handler
> > +	 */
> > +	if (cmsr2 & DCMIPP_CMSR2_P0OVRF) {
> > +		vcap->count.errors++;
> > +		vcap->count.overrun++;
> > +	}
> > +
> > +	if (cmsr2 & DCMIPP_CMSR2_P0FRAMEF) {
> > +		vcap->count.frame++;
> > +
> > +		/* Read captured buffer size */
> > +		bytesused = reg_read(vcap, DCMIPP_P0DCCNTR);
> > +		dcmipp_bytecap_process_frame(vcap, bytesused);
> > +	}
> > +
> > +	if (cmsr2 & DCMIPP_CMSR2_P0VSYNCF) {
> > +		vcap->count.vsync++;
> > +		if (vcap->state == DCMIPP_WAIT_FOR_BUFFER) {
> > +			vcap->count.underrun++;
> > +			goto out;
> > +		}
> > +
> > +		/*
> > +		 * On VSYNC, the previously set next buffer is going to become
> > +		 * active thanks to the shadowing mechanism of the DCMIPP. In
> > +		 * most of the cases, since a FRAMEEND has already come,
> > +		 * pointer next is NULL since active is reset during the
> > +		 * FRAMEEND handling. However, in case of framerate adjustment,
> > +		 * there are more VSYNC than FRAMEEND. Thus we recycle the
> > +		 * active (but not used) buffer and put it back into next.
> > +		 */
> > +		swap(vcap->active, vcap->next);
> > +		dcmipp_bytecap_set_next_frame_or_stop(vcap);
> > +	}
> > +
> > +out:
> > +	spin_unlock_irq(&vcap->irqlock);
> > +	return IRQ_HANDLED;
> > +}
> > +
> > +static irqreturn_t dcmipp_bytecap_irq_callback(int irq, void *arg)
> > +{
> > +	struct dcmipp_bytecap_device *vcap =
> > +			container_of(arg, struct dcmipp_bytecap_device, ved);
> > +
> > +	/* Store interrupt status register */
> > +	vcap->cmsr2 = reg_read(vcap, DCMIPP_CMSR2) & vcap->cmier;
> > +	vcap->count.it++;
> > +
> > +	/* Clear interrupt */
> > +	reg_write(vcap, DCMIPP_CMFCR, vcap->cmsr2);
> > +
> > +	return IRQ_WAKE_THREAD;
> > +}
> > +
> > +struct dcmipp_ent_device *dcmipp_bytecap_ent_init(struct device *dev,
> > +						  const char *entity_name,
> > +						  struct v4l2_device *v4l2_dev,
> > +						  void __iomem *regs)
> > +{
> > +	struct dcmipp_bytecap_device *vcap;
> > +	struct video_device *vdev;
> > +	struct vb2_queue *q;
> > +	int ret = 0;
> > +
> > +	/* Allocate the dcmipp_bytecap_device struct */
> > +	vcap = kzalloc(sizeof(*vcap), GFP_KERNEL);
> > +	if (!vcap)
> > +		return ERR_PTR(-ENOMEM);
> > +
> > +	/* Allocate the pads */
> > +	vcap->ved.pads =
> > +		dcmipp_pads_init(1,
> > +				 (const unsigned long[1]) {MEDIA_PAD_FL_SINK});
> > +	if (IS_ERR(vcap->ved.pads)) {
> > +		ret = PTR_ERR(vcap->ved.pads);
> > +		goto err_free_vcap;
> > +	}
> > +
> > +	/* Initialize the media entity */
> > +	vcap->vdev.entity.name = entity_name;
> > +	vcap->vdev.entity.function = MEDIA_ENT_F_IO_V4L;
> > +	ret = media_entity_pads_init(&vcap->vdev.entity, 1, vcap->ved.pads);
> > +	if (ret)
> > +		goto err_clean_pads;
> > +
> > +	/* Initialize the lock */
> > +	mutex_init(&vcap->lock);
> 
> Remember mutex_destroy() in error handling.

Oups, indeed, that was missing.  Thanks, I added it.

> 
> > +
> > +	/* Initialize the vb2 queue */
> > +	q = &vcap->queue;
> > +	q->type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
> > +	q->io_modes = VB2_MMAP | VB2_DMABUF;
> > +	q->lock = &vcap->lock;
> > +	q->drv_priv = vcap;
> > +	q->buf_struct_size = sizeof(struct dcmipp_buf);
> > +	q->ops = &dcmipp_bytecap_qops;
> > +	q->mem_ops = &vb2_dma_contig_memops;
> > +	q->timestamp_flags = V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC;
> > +	q->min_buffers_needed = 1;
> > +	q->dev = dev;
> > +
> > +	/* DCMIPP requires 16 bytes aligned buffers */
> > +	ret = dma_set_mask_and_coherent(dev, DMA_BIT_MASK(32) & ~0x0f);
> > +	if (ret) {
> > +		dev_err(dev, "Failed to set DMA mask\n");
> > +		goto err_clean_pads;
> > +	}
> > +
> > +	ret = vb2_queue_init(q);
> > +	if (ret) {
> > +		dev_err(dev, "%s: vb2 queue init failed (err=%d)\n",
> > +			entity_name, ret);
> > +		goto err_clean_m_ent;
> > +	}
> > +
> > +	/* Initialize buffer list and its lock */
> > +	INIT_LIST_HEAD(&vcap->buffers);
> > +	spin_lock_init(&vcap->irqlock);
> > +
> > +	/* Set default frame format */
> > +	vcap->format = fmt_default;
> > +
> > +	/* Fill the dcmipp_ent_device struct */
> > +	vcap->ved.ent = &vcap->vdev.entity;
> > +	vcap->ved.handler = dcmipp_bytecap_irq_callback;
> > +	vcap->ved.thread_fn = dcmipp_bytecap_irq_thread;
> > +	vcap->dev = dev;
> > +	vcap->regs = regs;
> > +
> > +	/* Initialize the video_device struct */
> > +	vdev = &vcap->vdev;
> > +	vdev->device_caps = V4L2_CAP_VIDEO_CAPTURE | V4L2_CAP_STREAMING |
> > +			    V4L2_CAP_IO_MC;
> > +	vdev->release = dcmipp_bytecap_release;
> > +	vdev->fops = &dcmipp_bytecap_fops;
> > +	vdev->ioctl_ops = &dcmipp_bytecap_ioctl_ops;
> > +	vdev->lock = &vcap->lock;
> > +	vdev->queue = q;
> > +	vdev->v4l2_dev = v4l2_dev;
> > +	strscpy(vdev->name, entity_name, sizeof(vdev->name));
> > +	video_set_drvdata(vdev, &vcap->ved);
> > +
> > +	/* Register the video_device with the v4l2 and the media framework */
> > +	ret = video_register_device(vdev, VFL_TYPE_VIDEO, -1);
> > +	if (ret) {
> > +		dev_err(dev, "%s: video register failed (err=%d)\n",
> > +			vcap->vdev.name, ret);
> > +		goto err_clean_m_ent;
> > +	}
> > +
> > +	return &vcap->ved;
> > +
> > +err_clean_m_ent:
> > +	media_entity_cleanup(&vcap->vdev.entity);
> > +err_clean_pads:
> > +	dcmipp_pads_cleanup(vcap->ved.pads);
> > +err_free_vcap:
> > +	kfree(vcap);
> > +
> > +	return ERR_PTR(ret);
> > +}
> > diff --git a/drivers/media/platform/st/stm32/stm32-dcmipp/dcmipp-byteproc.c b/drivers/media/platform/st/stm32/stm32-dcmipp/dcmipp-byteproc.c
> > new file mode 100644
> > index 000000000000..747a0b95b127
> > --- /dev/null
> > +++ b/drivers/media/platform/st/stm32/stm32-dcmipp/dcmipp-byteproc.c
> > @@ -0,0 +1,555 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * Driver for STM32 Digital Camera Memory Interface Pixel Processor
> > + *
> > + * Copyright (C) STMicroelectronics SA 2022
> 
> 2023?
> 
> > + * Authors: Hugues Fruchet <hugues.fruchet@foss.st.com>
> > + *          Alain Volmat <alain.volmat@foss.st.com>
> > + *          for STMicroelectronics.
> > + */
> > +
> > +#include <linux/vmalloc.h>
> > +#include <linux/v4l2-mediabus.h>
> > +#include <media/v4l2-rect.h>
> > +#include <media/v4l2-subdev.h>
> > +
> > +#include "dcmipp-common.h"
> > +
> > +#define DCMIPP_P0FCTCR	0x500
> > +#define DCMIPP_P0FCTCR_FRATE_MASK	GENMASK(1, 0)
> > +#define DCMIPP_P0SCSTR	0x504
> > +#define DCMIPP_P0SCSTR_HSTART_SHIFT	0
> > +#define DCMIPP_P0SCSTR_VSTART_SHIFT	16
> > +#define DCMIPP_P0SCSZR	0x508
> > +#define DCMIPP_P0SCSZR_ENABLE		BIT(31)
> > +#define DCMIPP_P0SCSZR_HSIZE_SHIFT	0
> > +#define DCMIPP_P0SCSZR_VSIZE_SHIFT	16
> > +#define DCMIPP_P0PPCR	0x5c0
> > +#define DCMIPP_P0PPCR_BSM_1_2		0x1
> > +#define DCMIPP_P0PPCR_BSM_1_4		0x2
> > +#define DCMIPP_P0PPCR_BSM_2_4		0x3
> > +#define DCMIPP_P0PPCR_BSM_MASK		GENMASK(8, 7)
> > +#define DCMIPP_P0PPCR_BSM_SHIFT		0x7
> > +#define DCMIPP_P0PPCR_LSM		BIT(10)
> > +#define DCMIPP_P0PPCR_OELS		BIT(11)
> > +
> > +#define IS_SINK(pad) (!(pad))
> > +#define IS_SRC(pad)  ((pad))
> > +
> > +struct dcmipp_byteproc_pix_map {
> > +	unsigned int code;
> > +	unsigned int bpp;
> > +};
> > +
> > +#define PIXMAP_MBUS_BPP(mbus, byteperpixel)		\
> > +	{						\
> > +		.code = MEDIA_BUS_FMT_##mbus,		\
> > +		.bpp = byteperpixel,			\
> > +	}
> > +static const struct dcmipp_byteproc_pix_map dcmipp_byteproc_pix_map_list[] = {
> > +	PIXMAP_MBUS_BPP(RGB565_2X8_LE, 2),
> > +	PIXMAP_MBUS_BPP(YUYV8_2X8, 2),
> > +	PIXMAP_MBUS_BPP(YVYU8_2X8, 2),
> > +	PIXMAP_MBUS_BPP(UYVY8_2X8, 2),
> > +	PIXMAP_MBUS_BPP(VYUY8_2X8, 2),
> > +	PIXMAP_MBUS_BPP(Y8_1X8, 1),
> > +	PIXMAP_MBUS_BPP(SBGGR8_1X8, 1),
> > +	PIXMAP_MBUS_BPP(SGBRG8_1X8, 1),
> > +	PIXMAP_MBUS_BPP(SGRBG8_1X8, 1),
> > +	PIXMAP_MBUS_BPP(SRGGB8_1X8, 1),
> > +	PIXMAP_MBUS_BPP(JPEG_1X8, 1),
> > +};
> > +
> > +static const struct dcmipp_byteproc_pix_map *
> > +dcmipp_byteproc_pix_map_by_code(u32 code)
> > +{
> > +	unsigned int i;
> > +
> > +	for (i = 0; i < ARRAY_SIZE(dcmipp_byteproc_pix_map_list); i++) {
> 
> Same here. Up to you.
> 
> > +		if (dcmipp_byteproc_pix_map_list[i].code == code)
> > +			return &dcmipp_byteproc_pix_map_list[i];
> > +	}
> > +
> > +	return NULL;
> > +}
> > +
> > +struct dcmipp_byteproc_device {
> > +	struct dcmipp_ent_device ved;
> > +	struct v4l2_subdev sd;
> > +	struct device *dev;
> > +	void __iomem *regs;
> > +	bool streaming;
> > +};
> > +
> > +static const struct v4l2_mbus_framefmt fmt_default = {
> > +	.width = DCMIPP_FMT_WIDTH_DEFAULT,
> > +	.height = DCMIPP_FMT_HEIGHT_DEFAULT,
> > +	.code = MEDIA_BUS_FMT_RGB565_2X8_LE,
> > +	.field = V4L2_FIELD_NONE,
> > +	.colorspace = DCMIPP_COLORSPACE_DEFAULT,
> > +	.ycbcr_enc = DCMIPP_YCBCR_ENC_DEFAULT,
> > +	.quantization = DCMIPP_QUANTIZATION_DEFAULT,
> > +	.xfer_func = DCMIPP_XFER_FUNC_DEFAULT,
> > +};
> > +
> > +static const struct v4l2_rect crop_min = {
> > +	.width = DCMIPP_FRAME_MIN_WIDTH,
> > +	.height = DCMIPP_FRAME_MIN_HEIGHT,
> > +	.top = 0,
> > +	.left = 0,
> > +};
> > +
> > +static void dcmipp_byteproc_adjust_crop(struct v4l2_rect *r,
> > +					struct v4l2_rect *compose)
> > +{
> > +	/* Disallow rectangles smaller than the minimal one. */
> > +	v4l2_rect_set_min_size(r, &crop_min);
> > +	v4l2_rect_map_inside(r, compose);
> > +}
> > +
> > +static void dcmipp_byteproc_adjust_compose(struct v4l2_rect *r,
> > +					   const struct v4l2_mbus_framefmt *fmt)
> > +{
> > +	r->top = 0;
> > +	r->left = 0;
> > +
> > +	/* Compose is not possible for JPEG or Bayer formats */
> > +	if (fmt->code == MEDIA_BUS_FMT_JPEG_1X8 ||
> > +	    fmt->code == MEDIA_BUS_FMT_SBGGR8_1X8 ||
> > +	    fmt->code == MEDIA_BUS_FMT_SGBRG8_1X8 ||
> > +	    fmt->code == MEDIA_BUS_FMT_SGRBG8_1X8 ||
> > +	    fmt->code == MEDIA_BUS_FMT_SRGGB8_1X8) {
> > +		r->width = fmt->width;
> > +		r->height = fmt->height;
> > +		return;
> > +	}
> > +
> > +	/* Adjust height - we can only perform 1/2 decimation */
> > +	if (r->height <= (fmt->height / 2))
> > +		r->height = fmt->height / 2;
> > +	else
> > +		r->height = fmt->height;
> > +
> > +	/* Adjust width /2 or /4 for 8bits formats and /2 for 16bits formats */
> > +	if (fmt->code == MEDIA_BUS_FMT_Y8_1X8 && r->width <= (fmt->width / 4))
> > +		r->width = fmt->width / 4;
> > +	else if (r->width <= (fmt->width / 2))
> > +		r->width = fmt->width / 2;
> > +	else
> > +		r->width = fmt->width;
> > +}
> > +
> > +static void dcmipp_byteproc_adjust_fmt(struct v4l2_mbus_framefmt *fmt)
> > +{
> > +	const struct dcmipp_byteproc_pix_map *vpix;
> > +
> > +	/* Only accept code in the pix map table */
> > +	vpix = dcmipp_byteproc_pix_map_by_code(fmt->code);
> > +	if (!vpix)
> > +		fmt->code = fmt_default.code;
> > +
> > +	fmt->width = clamp_t(u32, fmt->width, DCMIPP_FRAME_MIN_WIDTH,
> > +			     DCMIPP_FRAME_MAX_WIDTH) & ~1;
> > +	fmt->height = clamp_t(u32, fmt->height, DCMIPP_FRAME_MIN_HEIGHT,
> > +			      DCMIPP_FRAME_MAX_HEIGHT) & ~1;
> > +
> > +	if (fmt->field == V4L2_FIELD_ANY || fmt->field == V4L2_FIELD_ALTERNATE)
> > +		fmt->field = fmt_default.field;
> > +
> > +	dcmipp_colorimetry_clamp(fmt);
> > +}
> > +
> > +static int dcmipp_byteproc_init_cfg(struct v4l2_subdev *sd,
> > +				    struct v4l2_subdev_state *sd_state)
> > +{
> > +	unsigned int i;
> > +
> > +	for (i = 0; i < sd->entity.num_pads; i++) {
> > +		struct v4l2_mbus_framefmt *mf;
> > +		struct v4l2_rect *r;
> > +
> > +		mf = v4l2_subdev_get_try_format(sd, sd_state, i);
> > +		*mf = fmt_default;
> > +
> > +		if (IS_SINK(i))
> > +			r = v4l2_subdev_get_try_compose(sd, sd_state, i);
> > +		else
> > +			r = v4l2_subdev_get_try_crop(sd, sd_state, i);
> > +
> > +		r->top = 0;
> > +		r->left = 0;
> > +		r->width = DCMIPP_FMT_WIDTH_DEFAULT;
> > +		r->height = DCMIPP_FMT_HEIGHT_DEFAULT;
> > +	}
> > +
> > +	return 0;
> > +}
> > +
> > +static int
> > +dcmipp_byteproc_enum_mbus_code(struct v4l2_subdev *sd,
> > +			       struct v4l2_subdev_state *sd_state,
> > +			       struct v4l2_subdev_mbus_code_enum *code)
> > +{
> > +	const struct dcmipp_byteproc_pix_map *vpix;
> > +	struct v4l2_mbus_framefmt *sink_fmt;
> > +
> > +	if (IS_SINK(code->pad)) {
> > +		if (code->index >= ARRAY_SIZE(dcmipp_byteproc_pix_map_list))
> > +			return -EINVAL;
> > +		vpix = &dcmipp_byteproc_pix_map_list[code->index];
> > +		code->code = vpix->code;
> > +	} else {
> > +		/* byteproc doesn't support transformation on format */
> > +		if (code->index > 0)
> > +			return -EINVAL;
> > +
> > +		sink_fmt = v4l2_subdev_get_pad_format(sd, sd_state, 0);
> > +		code->code = sink_fmt->code;
> > +	}
> > +
> > +	return 0;
> > +}
> > +
> > +static int
> > +dcmipp_byteproc_enum_frame_size(struct v4l2_subdev *sd,
> > +				struct v4l2_subdev_state *sd_state,
> > +				struct v4l2_subdev_frame_size_enum *fse)
> > +{
> > +	struct v4l2_rect *compose;
> > +
> > +	if (fse->index)
> > +		return -EINVAL;
> > +
> > +	fse->min_width = DCMIPP_FRAME_MIN_WIDTH;
> > +	fse->min_height = DCMIPP_FRAME_MIN_HEIGHT;
> > +
> > +	if (IS_SINK(fse->pad)) {
> > +		fse->max_width = DCMIPP_FRAME_MAX_WIDTH;
> > +		fse->max_height = DCMIPP_FRAME_MAX_HEIGHT;
> > +	} else {
> > +		compose = v4l2_subdev_get_pad_compose(sd, sd_state, 0);
> > +		fse->max_width = compose->width;
> > +		fse->max_height = compose->height;
> > +	}
> > +
> > +	return 0;
> > +}
> > +
> > +static int dcmipp_byteproc_set_fmt(struct v4l2_subdev *sd,
> > +				   struct v4l2_subdev_state *sd_state,
> > +				   struct v4l2_subdev_format *fmt)
> > +{
> > +	struct dcmipp_byteproc_device *byteproc = v4l2_get_subdevdata(sd);
> > +	struct v4l2_mbus_framefmt *sink_fmt;
> > +	struct v4l2_rect *crop, *compose;
> > +
> > +	if (byteproc->streaming)
> > +		return -EBUSY;
> > +
> > +	sink_fmt = v4l2_subdev_get_pad_format(sd, sd_state, 0);
> > +	crop = v4l2_subdev_get_pad_crop(sd, sd_state, 1);
> > +	compose = v4l2_subdev_get_pad_compose(sd, sd_state, 0);
> > +
> > +	if (IS_SRC(fmt->pad)) {
> > +		fmt->format = *sink_fmt;
> > +		fmt->format.width = crop->width;
> > +		fmt->format.height = crop->height;
> > +	} else {
> > +		dcmipp_byteproc_adjust_fmt(&fmt->format);
> > +		crop->top = 0;
> > +		crop->left = 0;
> > +		crop->width = fmt->format.width;
> > +		crop->height = fmt->format.height;
> > +		*compose = *crop;
> > +		*sink_fmt = fmt->format;
> > +	}
> > +
> > +	return 0;
> > +}
> > +
> > +static int dcmipp_byteproc_get_selection(struct v4l2_subdev *sd,
> > +					 struct v4l2_subdev_state *sd_state,
> > +					 struct v4l2_subdev_selection *s)
> > +{
> > +	struct v4l2_mbus_framefmt *sink_fmt;
> > +	struct v4l2_rect *crop, *compose;
> > +
> > +	/*
> > +	 * In the HW, the decimation block is located prior to the crop hence:
> > +	 * Compose is done on the sink pad
> > +	 * Crop is done on the src pad
> > +	 */
> > +	if (IS_SINK(s->pad) &&
> > +	    (s->target == V4L2_SEL_TGT_CROP ||
> > +	     s->target == V4L2_SEL_TGT_CROP_BOUNDS ||
> > +	     s->target == V4L2_SEL_TGT_CROP_DEFAULT))
> > +		return -EINVAL;
> > +
> > +	if (IS_SRC(s->pad) &&
> > +	    (s->target == V4L2_SEL_TGT_COMPOSE ||
> > +	     s->target == V4L2_SEL_TGT_COMPOSE_BOUNDS ||
> > +	     s->target == V4L2_SEL_TGT_COMPOSE_DEFAULT))
> > +		return -EINVAL;
> > +
> > +	sink_fmt = v4l2_subdev_get_pad_format(sd, sd_state, 0);
> > +	crop = v4l2_subdev_get_pad_crop(sd, sd_state, 1);
> > +	compose = v4l2_subdev_get_pad_compose(sd, sd_state, 0);
> > +
> > +	switch (s->target) {
> > +	case V4L2_SEL_TGT_CROP:
> > +		s->r = *crop;
> > +		break;
> > +	case V4L2_SEL_TGT_CROP_BOUNDS:
> > +	case V4L2_SEL_TGT_CROP_DEFAULT:
> > +		s->r = *compose;
> > +		break;
> > +	case V4L2_SEL_TGT_COMPOSE:
> > +		s->r = *compose;
> > +		break;
> > +	case V4L2_SEL_TGT_COMPOSE_BOUNDS:
> > +	case V4L2_SEL_TGT_COMPOSE_DEFAULT:
> > +		s->r.top = 0;
> > +		s->r.left = 0;
> > +		s->r.width = sink_fmt->width;
> > +		s->r.height = sink_fmt->height;
> > +		break;
> > +	default:
> > +		return -EINVAL;
> > +	}
> > +
> > +	return 0;
> > +}
> > +
> > +static int dcmipp_byteproc_set_selection(struct v4l2_subdev *sd,
> > +					 struct v4l2_subdev_state *sd_state,
> > +					 struct v4l2_subdev_selection *s)
> > +{
> > +	struct dcmipp_byteproc_device *byteproc = v4l2_get_subdevdata(sd);
> > +	struct v4l2_mbus_framefmt *sink_fmt;
> > +	struct v4l2_rect *crop, *compose;
> > +
> > +	/*
> > +	 * In the HW, the decimation block is located prior to the crop hence:
> > +	 * Compose is done on the sink pad
> > +	 * Crop is done on the src pad
> > +	 */
> > +	if ((s->target == V4L2_SEL_TGT_CROP ||
> > +	     s->target == V4L2_SEL_TGT_CROP_BOUNDS ||
> > +	     s->target == V4L2_SEL_TGT_CROP_DEFAULT) && IS_SINK(s->pad))
> > +		return -EINVAL;
> > +
> > +	if ((s->target == V4L2_SEL_TGT_COMPOSE ||
> > +	     s->target == V4L2_SEL_TGT_COMPOSE_BOUNDS ||
> > +	     s->target == V4L2_SEL_TGT_COMPOSE_DEFAULT) && IS_SRC(s->pad))
> > +		return -EINVAL;
> > +
> > +	sink_fmt = v4l2_subdev_get_pad_format(sd, sd_state, 0);
> > +	crop = v4l2_subdev_get_pad_crop(sd, sd_state, 1);
> > +	compose = v4l2_subdev_get_pad_compose(sd, sd_state, 0);
> > +
> > +	switch (s->target) {
> > +	case V4L2_SEL_TGT_CROP:
> > +		dcmipp_byteproc_adjust_crop(&s->r, compose);
> > +
> > +		*crop = s->r;
> > +
> > +		dev_dbg(byteproc->dev, "s_selection: crop %ux%u@(%u,%u)\n",
> > +			crop->width, crop->height, crop->left, crop->top);
> > +		break;
> > +	case V4L2_SEL_TGT_COMPOSE:
> > +		dcmipp_byteproc_adjust_compose(&s->r, sink_fmt);
> > +		*compose = s->r;
> > +		*crop = s->r;
> > +
> > +		dev_dbg(byteproc->dev, "s_selection: compose %ux%u@(%u,%u)\n",
> > +			compose->width, compose->height,
> > +			compose->left, compose->top);
> > +		break;
> > +	default:
> > +		return -EINVAL;
> > +	}
> > +
> > +	return 0;
> > +}
> > +
> > +static const struct v4l2_subdev_pad_ops dcmipp_byteproc_pad_ops = {
> > +	.init_cfg		= dcmipp_byteproc_init_cfg,
> > +	.enum_mbus_code		= dcmipp_byteproc_enum_mbus_code,
> > +	.enum_frame_size	= dcmipp_byteproc_enum_frame_size,
> > +	.get_fmt		= v4l2_subdev_get_fmt,
> > +	.set_fmt		= dcmipp_byteproc_set_fmt,
> > +	.get_selection		= dcmipp_byteproc_get_selection,
> > +	.set_selection		= dcmipp_byteproc_set_selection,
> > +};
> > +
> > +static int dcmipp_byteproc_configure_scale_crop
> > +			(struct dcmipp_byteproc_device *byteproc)
> > +{
> > +	const struct dcmipp_byteproc_pix_map *vpix;
> > +	struct v4l2_subdev_state *state;
> > +	struct v4l2_mbus_framefmt *sink_fmt;
> > +	u32 hprediv, vprediv;
> > +	struct v4l2_rect *compose, *crop;
> > +	u32 val = 0;
> > +
> > +	state = v4l2_subdev_lock_and_get_active_state(&byteproc->sd);
> > +	sink_fmt = v4l2_subdev_get_pad_format(&byteproc->sd, state, 0);
> > +	compose = v4l2_subdev_get_pad_compose(&byteproc->sd, state, 0);
> > +	crop = v4l2_subdev_get_pad_crop(&byteproc->sd, state, 1);
> > +	v4l2_subdev_unlock_state(state);
> > +
> > +	/* find output format bpp */
> > +	vpix = dcmipp_byteproc_pix_map_by_code(sink_fmt->code);
> > +	if (!vpix)
> > +		return -EINVAL;
> > +
> > +	/* clear decimation/crop */
> > +	reg_clear(byteproc, DCMIPP_P0PPCR, DCMIPP_P0PPCR_BSM_MASK);
> > +	reg_clear(byteproc, DCMIPP_P0PPCR, DCMIPP_P0PPCR_LSM);
> > +	reg_write(byteproc, DCMIPP_P0SCSTR, 0);
> > +	reg_write(byteproc, DCMIPP_P0SCSZR, 0);
> > +
> > +	/* Ignore decimation/crop with JPEG */
> > +	if (vpix->code == MEDIA_BUS_FMT_JPEG_1X8)
> > +		return 0;
> > +
> > +	/* decimation */
> > +	hprediv = sink_fmt->width / compose->width;
> > +	if (hprediv == 4)
> > +		val |= DCMIPP_P0PPCR_BSM_1_4 << DCMIPP_P0PPCR_BSM_SHIFT;
> > +	else if ((vpix->code == MEDIA_BUS_FMT_Y8_1X8) && (hprediv == 2))
> > +		val |= DCMIPP_P0PPCR_BSM_1_2 << DCMIPP_P0PPCR_BSM_SHIFT;
> > +	else if (hprediv == 2)
> > +		val |= DCMIPP_P0PPCR_BSM_2_4 << DCMIPP_P0PPCR_BSM_SHIFT;
> > +
> > +	vprediv = sink_fmt->height / compose->height;
> > +	if (vprediv == 2)
> > +		val |= DCMIPP_P0PPCR_LSM | DCMIPP_P0PPCR_OELS;
> > +
> > +	/* decimate using bytes and lines skipping */
> > +	if (val) {
> > +		reg_set(byteproc, DCMIPP_P0PPCR, val);
> > +
> > +		dev_dbg(byteproc->dev, "decimate to %dx%d [prediv=%dx%d]\n",
> > +			compose->width, compose->height,
> > +			hprediv, vprediv);
> > +	}
> > +
> > +	dev_dbg(byteproc->dev, "crop to %dx%d\n", crop->width, crop->height);
> > +
> > +	/* expressed in 32-bits words on X axis, lines on Y axis */
> > +	reg_write(byteproc, DCMIPP_P0SCSTR,
> > +		  (((crop->left * vpix->bpp) / 4) <<
> > +		   DCMIPP_P0SCSTR_HSTART_SHIFT) |
> > +		  (crop->top << DCMIPP_P0SCSTR_VSTART_SHIFT));
> > +	reg_write(byteproc, DCMIPP_P0SCSZR,
> > +		  DCMIPP_P0SCSZR_ENABLE |
> > +		  (((crop->width * vpix->bpp) / 4) <<
> > +		   DCMIPP_P0SCSZR_HSIZE_SHIFT) |
> > +		  (crop->height << DCMIPP_P0SCSZR_VSIZE_SHIFT));
> > +
> > +	return 0;
> > +}
> > +
> > +static int dcmipp_byteproc_s_stream(struct v4l2_subdev *sd, int enable)
> > +{
> > +	struct dcmipp_byteproc_device *byteproc = v4l2_get_subdevdata(sd);
> > +	struct v4l2_subdev *s_subdev;
> > +	struct media_pad *pad;
> > +	int ret = 0;
> > +
> > +	/* Get source subdev */
> > +	pad = media_pad_remote_pad_first(&sd->entity.pads[0]);
> > +	if (!pad || !is_media_entity_v4l2_subdev(pad->entity))
> > +		return -EINVAL;
> > +	s_subdev = media_entity_to_v4l2_subdev(pad->entity);
> > +
> > +	if (enable) {
> > +		ret = dcmipp_byteproc_configure_scale_crop(byteproc);
> > +		if (ret)
> > +			return ret;
> > +
> > +		ret = v4l2_subdev_call(s_subdev, video, s_stream, enable);
> > +		if (ret < 0) {
> > +			dev_err(byteproc->dev,
> > +				"failed to start source subdev streaming (%d)\n",
> > +				ret);
> > +			return ret;
> > +		}
> > +	} else {
> > +		ret = v4l2_subdev_call(s_subdev, video, s_stream, enable);
> > +		if (ret < 0) {
> > +			dev_err(byteproc->dev,
> > +				"failed to stop source subdev streaming (%d)\n",
> > +				ret);
> > +			return ret;
> > +		}
> > +	}
> > +
> > +	byteproc->streaming = enable;
> > +
> > +	return 0;
> > +}
> > +
> > +static const struct v4l2_subdev_video_ops dcmipp_byteproc_video_ops = {
> > +	.s_stream = dcmipp_byteproc_s_stream,
> > +};
> > +
> > +static const struct v4l2_subdev_ops dcmipp_byteproc_ops = {
> > +	.pad = &dcmipp_byteproc_pad_ops,
> > +	.video = &dcmipp_byteproc_video_ops,
> > +};
> > +
> > +static void dcmipp_byteproc_release(struct v4l2_subdev *sd)
> > +{
> > +	struct dcmipp_byteproc_device *byteproc = v4l2_get_subdevdata(sd);
> > +
> > +	kfree(byteproc);
> > +}
> > +
> > +static const struct v4l2_subdev_internal_ops dcmipp_byteproc_int_ops = {
> > +	.release = dcmipp_byteproc_release,
> > +};
> > +
> > +void dcmipp_byteproc_ent_release(struct dcmipp_ent_device *ved)
> > +{
> > +	struct dcmipp_byteproc_device *byteproc =
> > +			container_of(ved, struct dcmipp_byteproc_device, ved);
> > +
> > +	dcmipp_ent_sd_unregister(ved, &byteproc->sd);
> > +}
> > +
> > +struct dcmipp_ent_device *
> > +dcmipp_byteproc_ent_init(struct device *dev, const char *entity_name,
> > +			 struct v4l2_device *v4l2_dev, void __iomem *regs)
> > +{
> > +	struct dcmipp_byteproc_device *byteproc;
> > +	int ret;
> > +
> > +	/* Allocate the byteproc struct */
> > +	byteproc = kzalloc(sizeof(*byteproc), GFP_KERNEL);
> > +	if (!byteproc)
> > +		return ERR_PTR(-ENOMEM);
> > +
> > +	byteproc->regs = regs;
> > +
> > +	/* Initialize ved and sd */
> > +	ret = dcmipp_ent_sd_register(&byteproc->ved, &byteproc->sd,
> > +				     v4l2_dev, entity_name,
> > +				     MEDIA_ENT_F_PROC_VIDEO_SCALER, 2,
> > +				     (const unsigned long[2]) {
> > +				     MEDIA_PAD_FL_SINK,
> > +				     MEDIA_PAD_FL_SOURCE,
> > +				     },
> > +				     &dcmipp_byteproc_int_ops,
> > +				     &dcmipp_byteproc_ops,
> > +				     NULL, NULL);
> > +	if (ret) {
> > +		kfree(byteproc);
> > +		return ERR_PTR(ret);
> > +	}
> > +
> > +	byteproc->dev = dev;
> > +
> > +	return &byteproc->ved;
> > +}
> > diff --git a/drivers/media/platform/st/stm32/stm32-dcmipp/dcmipp-common.c b/drivers/media/platform/st/stm32/stm32-dcmipp/dcmipp-common.c
> > new file mode 100644
> > index 000000000000..76016955dc1d
> > --- /dev/null
> > +++ b/drivers/media/platform/st/stm32/stm32-dcmipp/dcmipp-common.c
> > @@ -0,0 +1,106 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * Driver for STM32 Digital Camera Memory Interface Pixel Processor
> > + *
> > + * Copyright (C) STMicroelectronics SA 2022
> > + * Authors: Hugues Fruchet <hugues.fruchet@foss.st.com>
> > + *          Alain Volmat <alain.volmat@foss.st.com>
> > + *          for STMicroelectronics.
> > + */
> > +
> > +#include <linux/init.h>
> > +#include <linux/module.h>
> > +
> > +#include "dcmipp-common.h"
> > +
> > +/* Helper function to allocate and initialize pads */
> > +struct media_pad *dcmipp_pads_init(u16 num_pads, const unsigned long *pads_flag)
> > +{
> > +	struct media_pad *pads;
> > +	unsigned int i;
> > +
> > +	/* Allocate memory for the pads */
> > +	pads = kcalloc(num_pads, sizeof(*pads), GFP_KERNEL);
> > +	if (!pads)
> > +		return ERR_PTR(-ENOMEM);
> > +
> > +	/* Initialize the pads */
> > +	for (i = 0; i < num_pads; i++) {
> > +		pads[i].index = i;
> > +		pads[i].flags = pads_flag[i];
> > +	}
> > +
> > +	return pads;
> > +}
> > +
> > +int dcmipp_ent_sd_register(struct dcmipp_ent_device *ved,
> > +			   struct v4l2_subdev *sd,
> > +			   struct v4l2_device *v4l2_dev,
> > +			   const char *const name,
> > +			   u32 function,
> > +			   u16 num_pads,
> > +			   const unsigned long *pads_flag,
> > +			   const struct v4l2_subdev_internal_ops *sd_int_ops,
> > +			   const struct v4l2_subdev_ops *sd_ops,
> > +			   irq_handler_t handler,
> > +			   irq_handler_t thread_fn)
> > +{
> > +	int ret;
> > +
> > +	/* Allocate the pads. Should be released from the sd_int_op release */
> > +	ved->pads = dcmipp_pads_init(num_pads, pads_flag);
> > +	if (IS_ERR(ved->pads))
> > +		return PTR_ERR(ved->pads);
> > +
> > +	/* Fill the dcmipp_ent_device struct */
> > +	ved->ent = &sd->entity;
> > +
> > +	/* Initialize the subdev */
> > +	v4l2_subdev_init(sd, sd_ops);
> > +	sd->internal_ops = sd_int_ops;
> > +	sd->entity.function = function;
> > +	sd->owner = THIS_MODULE;
> > +	strscpy(sd->name, name, sizeof(sd->name));
> > +	v4l2_set_subdevdata(sd, ved);
> > +
> > +	/* Expose this subdev to user space */
> > +	sd->flags |= V4L2_SUBDEV_FL_HAS_DEVNODE;
> > +	if (sd->ctrl_handler)
> > +		sd->flags |= V4L2_SUBDEV_FL_HAS_EVENTS;
> > +
> > +	/* Initialize the media entity */
> > +	ret = media_entity_pads_init(&sd->entity, num_pads, ved->pads);
> > +	if (ret)
> > +		goto err_clean_pads;
> > +
> > +	ret = v4l2_subdev_init_finalize(sd);
> > +	if (ret < 0)
> > +		goto err_clean_m_ent;
> > +
> > +	/* Register the subdev with the v4l2 and the media framework */
> > +	ret = v4l2_device_register_subdev(v4l2_dev, sd);
> > +	if (ret) {
> > +		dev_err(v4l2_dev->dev,
> > +			"%s: subdev register failed (err=%d)\n",
> > +			name, ret);
> > +		goto err_clean_m_ent;
> > +	}
> > +
> > +	ved->handler = handler;
> > +	ved->thread_fn = thread_fn;
> > +
> > +	return 0;
> > +
> > +err_clean_m_ent:
> > +	media_entity_cleanup(&sd->entity);
> > +err_clean_pads:
> > +	dcmipp_pads_cleanup(ved->pads);
> > +	return ret;
> > +}
> > +
> > +void
> > +dcmipp_ent_sd_unregister(struct dcmipp_ent_device *ved, struct v4l2_subdev *sd)
> > +{
> > +	media_entity_cleanup(ved->ent);
> > +	v4l2_device_unregister_subdev(sd);
> > +}
> > diff --git a/drivers/media/platform/st/stm32/stm32-dcmipp/dcmipp-common.h b/drivers/media/platform/st/stm32/stm32-dcmipp/dcmipp-common.h
> > new file mode 100644
> > index 000000000000..5f6b0ed6dc0d
> > --- /dev/null
> > +++ b/drivers/media/platform/st/stm32/stm32-dcmipp/dcmipp-common.h
> > @@ -0,0 +1,216 @@
> > +/* SPDX-License-Identifier: GPL-2.0-or-later */
> > +/*
> > + * Driver for STM32 Digital Camera Memory Interface Pixel Processor
> > + *
> > + * Copyright (C) STMicroelectronics SA 2022
> > + * Authors: Hugues Fruchet <hugues.fruchet@foss.st.com>
> > + *          Alain Volmat <alain.volmat@foss.st.com>
> > + *          for STMicroelectronics.
> > + */
> > +
> > +#ifndef _DCMIPP_COMMON_H_
> > +#define _DCMIPP_COMMON_H_
> > +
> > +#include <linux/interrupt.h>
> > +#include <linux/slab.h>
> > +#include <media/media-device.h>
> > +#include <media/v4l2-device.h>
> > +#include <media/v4l2-fwnode.h>
> > +
> > +#define DCMIPP_PDEV_NAME "dcmipp"
> > +
> > +#define DCMIPP_FRAME_MAX_WIDTH 4096
> > +#define DCMIPP_FRAME_MAX_HEIGHT 2160
> > +#define DCMIPP_FRAME_MIN_WIDTH 16
> > +#define DCMIPP_FRAME_MIN_HEIGHT 16
> > +
> > +#define DCMIPP_FMT_WIDTH_DEFAULT  640
> > +#define DCMIPP_FMT_HEIGHT_DEFAULT 480
> > +
> > +#define DCMIPP_COLORSPACE_DEFAULT	V4L2_COLORSPACE_REC709
> > +#define DCMIPP_YCBCR_ENC_DEFAULT	V4L2_YCBCR_ENC_DEFAULT
> > +#define DCMIPP_QUANTIZATION_DEFAULT	V4L2_QUANTIZATION_DEFAULT
> > +#define DCMIPP_XFER_FUNC_DEFAULT	V4L2_XFER_FUNC_DEFAULT
> > +
> > +/**
> > + * struct dcmipp_colorimetry_clamp - Adjust colorimetry parameters
> > + *
> > + * @fmt:		the pointer to struct v4l2_pix_format or
> > + *			struct v4l2_mbus_framefmt
> > + *
> > + * Entities must check if colorimetry given by the userspace is valid, if not
> > + * then set them as DEFAULT
> > + */
> > +#define dcmipp_colorimetry_clamp(fmt)					\
> > +do {									\
> > +	if ((fmt)->colorspace == V4L2_COLORSPACE_DEFAULT ||		\
> > +	    (fmt)->colorspace > V4L2_COLORSPACE_DCI_P3) {		\
> > +		(fmt)->colorspace = DCMIPP_COLORSPACE_DEFAULT;		\
> > +		(fmt)->ycbcr_enc = DCMIPP_YCBCR_ENC_DEFAULT;		\
> > +		(fmt)->quantization = DCMIPP_QUANTIZATION_DEFAULT;	\
> > +		(fmt)->xfer_func = DCMIPP_XFER_FUNC_DEFAULT;		\
> > +	}								\
> > +	if ((fmt)->ycbcr_enc > V4L2_YCBCR_ENC_SMPTE240M)		\
> > +		(fmt)->ycbcr_enc = DCMIPP_YCBCR_ENC_DEFAULT;		\
> > +	if ((fmt)->quantization > V4L2_QUANTIZATION_LIM_RANGE)		\
> > +		(fmt)->quantization = DCMIPP_QUANTIZATION_DEFAULT;	\
> > +	if ((fmt)->xfer_func > V4L2_XFER_FUNC_SMPTE2084)		\
> > +		(fmt)->xfer_func = DCMIPP_XFER_FUNC_DEFAULT;		\
> > +} while (0)
> > +
> > +/**
> > + * struct dcmipp_ent_device - core struct that represents a node in the topology
> > + *
> > + * @ent:		the pointer to struct media_entity for the node
> > + * @pads:		the list of pads of the node
> > + * @bus:		struct v4l2_mbus_config_parallel describing input bus
> > + * @bus_type:		type of input bus (parallel or BT656)
> > + * @handler:		irq handler dedicated to the subdev
> > + * @handler_ret:	value returned by the irq handler
> > + * @thread_fn:		threaded irq handler
> > + *
> > + * The DCMIPP provides a single IRQ line and a IRQ status registers for all
> > + * subdevs, hence once the main irq handler (registered at probe time) is
> > + * called, it will chain calls to the irq handler of each the subdevs of the
> > + * pipelines, using the handler/handler_ret/thread_fn variables.
> > + *
> > + * Each node of the topology must create a dcmipp_ent_device struct.
> > + * Depending on the node it will be of an instance of v4l2_subdev or
> > + * video_device struct where both contains a struct media_entity.
> > + * Those structures should embedded the dcmipp_ent_device struct through
> > + * v4l2_set_subdevdata() and video_set_drvdata() respectivaly, allowing the
> > + * dcmipp_ent_device struct to be retrieved from the corresponding struct
> > + * media_entity
> > + */
> > +struct dcmipp_ent_device {
> > +	struct media_entity *ent;
> > +	struct media_pad *pads;
> > +
> > +	/* Parallel input device */
> > +	struct v4l2_mbus_config_parallel bus;
> > +	enum v4l2_mbus_type bus_type;
> > +	irq_handler_t handler;
> > +	irqreturn_t handler_ret;
> > +	irq_handler_t thread_fn;
> > +};
> > +
> > +/**
> > + * dcmipp_pads_init - initialize pads
> > + *
> > + * @num_pads:	number of pads to initialize
> > + * @pads_flags:	flags to use in each pad
> > + *
> > + * Helper functions to allocate/initialize pads
> > + */
> > +struct media_pad *dcmipp_pads_init(u16 num_pads,
> > +				   const unsigned long *pads_flag);
> > +
> > +/**
> > + * dcmipp_pads_cleanup - free pads
> > + *
> > + * @pads: pointer to the pads
> > + *
> > + * Helper function to free the pads initialized with dcmipp_pads_init
> > + */
> > +static inline void dcmipp_pads_cleanup(struct media_pad *pads)
> > +{
> > +	kfree(pads);
> > +}
> > +
> > +/**
> > + * dcmipp_ent_sd_register - initialize and register a subdev node
> > + *
> > + * @ved:	the dcmipp_ent_device struct to be initialize
> > + * @sd:		the v4l2_subdev struct to be initialize and registered
> > + * @v4l2_dev:	the v4l2 device to register the v4l2_subdev
> > + * @name:	name of the sub-device. Please notice that the name must be
> > + *		unique.
> > + * @function:	media entity function defined by MEDIA_ENT_F_* macros
> > + * @num_pads:	number of pads to initialize
> > + * @pads_flag:	flags to use in each pad
> > + * @sd_int_ops:	pointer to &struct v4l2_subdev_internal_ops
> > + * @sd_ops:	pointer to &struct v4l2_subdev_ops.
> > + *
> > + * Helper function initialize and register the struct dcmipp_ent_device and
> > + * struct v4l2_subdev which represents a subdev node in the topology
> > + */
> > +int dcmipp_ent_sd_register(struct dcmipp_ent_device *ved,
> > +			   struct v4l2_subdev *sd,
> > +			   struct v4l2_device *v4l2_dev,
> > +			   const char *const name,
> > +			   u32 function,
> > +			   u16 num_pads,
> > +			   const unsigned long *pads_flag,
> > +			   const struct v4l2_subdev_internal_ops *sd_int_ops,
> > +			   const struct v4l2_subdev_ops *sd_ops,
> > +			   irq_handler_t handler,
> > +			   irq_handler_t thread_fn);
> > +
> > +/**
> > + * dcmipp_ent_sd_unregister - cleanup and unregister a subdev node
> > + *
> > + * @ved:	the dcmipp_ent_device struct to be cleaned up
> > + * @sd:		the v4l2_subdev struct to be unregistered
> > + *
> > + * Helper function cleanup and unregister the struct dcmipp_ent_device and
> > + * struct v4l2_subdev which represents a subdev node in the topology
> > + */
> > +void dcmipp_ent_sd_unregister(struct dcmipp_ent_device *ved,
> > +			      struct v4l2_subdev *sd);
> > +
> > +#define reg_write(device, reg, val) \
> > +	(__reg_write((device)->dev, (device)->regs, (reg), (val)))
> > +#define reg_read(device, reg) \
> > +	(__reg_read((device)->dev, (device)->regs, (reg)))
> > +#define reg_set(device, reg, mask) \
> > +	(__reg_set((device)->dev, (device)->regs, (reg), (mask)))
> > +#define reg_clear(device, reg, mask) \
> > +	(__reg_clear((device)->dev, (device)->regs, (reg), (mask)))
> > +
> > +static inline u32 __reg_read(struct device *dev, void __iomem *base, u32 reg)
> > +{
> > +	u32 val = readl_relaxed(base + reg);
> > +
> > +	dev_dbg(dev, "RD 0x%x %#10.8x\n", reg, val);
> > +	return val;
> > +}
> > +
> > +static inline void __reg_write(struct device *dev, void __iomem *base, u32 reg,
> > +			       u32 val)
> > +{
> > +	dev_dbg(dev, "WR 0x%x %#10.8x\n", reg, val);
> > +	writel_relaxed(val, base + reg);
> > +}
> > +
> > +static inline void __reg_set(struct device *dev, void __iomem *base, u32 reg,
> > +			     u32 mask)
> > +{
> > +	dev_dbg(dev, "SET 0x%x %#10.8x\n", reg, mask);
> > +	__reg_write(dev, base, reg, readl_relaxed(base + reg) | mask);
> > +}
> > +
> > +static inline void __reg_clear(struct device *dev, void __iomem *base, u32 reg,
> > +			       u32 mask)
> > +{
> > +	dev_dbg(dev, "CLR 0x%x %#10.8x\n", reg, mask);
> > +	__reg_write(dev, base, reg, readl_relaxed(base + reg) & ~mask);
> > +}
> > +
> > +/* DCMIPP subdev init / release entry points */
> > +struct dcmipp_ent_device *dcmipp_par_ent_init(struct device *dev,
> > +					      const char *entity_name,
> > +					      struct v4l2_device *v4l2_dev,
> > +					      void __iomem *regs);
> > +void dcmipp_par_ent_release(struct dcmipp_ent_device *ved);
> > +struct dcmipp_ent_device *
> > +dcmipp_byteproc_ent_init(struct device *dev, const char *entity_name,
> > +			 struct v4l2_device *v4l2_dev, void __iomem *regs);
> > +void dcmipp_byteproc_ent_release(struct dcmipp_ent_device *ved);
> > +struct dcmipp_ent_device *dcmipp_bytecap_ent_init(struct device *dev,
> > +						  const char *entity_name,
> > +						  struct v4l2_device *v4l2_dev,
> > +						  void __iomem *regs);
> > +void dcmipp_bytecap_ent_release(struct dcmipp_ent_device *ved);
> > +
> > +#endif
> > +
> > diff --git a/drivers/media/platform/st/stm32/stm32-dcmipp/dcmipp-core.c b/drivers/media/platform/st/stm32/stm32-dcmipp/dcmipp-core.c
> > new file mode 100644
> > index 000000000000..4562182768b2
> > --- /dev/null
> > +++ b/drivers/media/platform/st/stm32/stm32-dcmipp/dcmipp-core.c
> > @@ -0,0 +1,603 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * Driver for STM32 Digital Camera Memory Interface Pixel Processor
> > + *
> > + * Copyright (C) STMicroelectronics SA 2022
> > + * Authors: Hugues Fruchet <hugues.fruchet@foss.st.com>
> > + *          Alain Volmat <alain.volmat@foss.st.com>
> > + *          for STMicroelectronics.
> > + */
> > +
> > +#include <linux/clk.h>
> > +#include <linux/delay.h>
> > +#include <linux/init.h>
> > +#include <linux/module.h>
> > +#include <linux/pinctrl/consumer.h>
> > +#include <linux/platform_device.h>
> > +#include <linux/pm_runtime.h>
> > +#include <linux/property.h>
> > +#include <linux/reset.h>
> > +#include <media/media-device.h>
> > +#include <media/v4l2-device.h>
> > +#include <media/v4l2-fwnode.h>
> > +
> > +#include "dcmipp-common.h"
> > +
> > +#define DCMIPP_MDEV_MODEL_NAME "DCMIPP MDEV"
> > +
> > +#define DCMIPP_ENT_LINK(src, srcpad, sink, sinkpad, link_flags) {	\
> > +	.src_ent = src,						\
> > +	.src_pad = srcpad,					\
> > +	.sink_ent = sink,					\
> > +	.sink_pad = sinkpad,					\
> > +	.flags = link_flags,					\
> > +}
> > +
> > +struct dcmipp_device {
> > +	/* The platform device */
> > +	struct platform_device		pdev;
> > +	struct device			*dev;
> > +
> > +	/* Hardware resources */
> > +	struct reset_control		*rstc;
> > +	void __iomem			*regs;
> > +	struct clk			*kclk;
> > +
> > +	/* The pipeline configuration */
> > +	const struct dcmipp_pipeline_config	*pipe_cfg;
> > +
> > +	/* The Associated media_device parent */
> > +	struct media_device		mdev;
> > +
> > +	/* Internal v4l2 parent device*/
> > +	struct v4l2_device		v4l2_dev;
> > +
> > +	/* Entities */
> > +	struct dcmipp_ent_device	**entity;
> > +
> > +	struct v4l2_async_notifier	notifier;
> > +};
> > +
> > +static inline struct dcmipp_device *
> > +notifier_to_dcmipp(struct v4l2_async_notifier *n)
> > +{
> > +	return container_of(n, struct dcmipp_device, notifier);
> > +}
> > +
> > +/* Structure which describes individual configuration for each entity */
> > +struct dcmipp_ent_config {
> > +	const char *name;
> > +	struct dcmipp_ent_device *(*init)
> > +		(struct device *dev, const char *entity_name,
> > +		 struct v4l2_device *v4l2_dev, void __iomem *regs);
> > +	void (*release)(struct dcmipp_ent_device *ved);
> > +};
> > +
> > +/* Structure which describes links between entities */
> > +struct dcmipp_ent_link {
> > +	unsigned int src_ent;
> > +	u16 src_pad;
> > +	unsigned int sink_ent;
> > +	u16 sink_pad;
> > +	u32 flags;
> > +};
> > +
> > +/* Structure which describes the whole topology */
> > +struct dcmipp_pipeline_config {
> > +	const struct dcmipp_ent_config *ents;
> > +	size_t num_ents;
> > +	const struct dcmipp_ent_link *links;
> > +	size_t num_links;
> > +};
> > +
> > +/* --------------------------------------------------------------------------
> > + * Topology Configuration
> > + */
> > +
> > +static const struct dcmipp_ent_config stm32mp13_ent_config[] = {
> > +	{
> > +		.name = "dcmipp_parallel",
> > +		.init = dcmipp_par_ent_init,
> > +		.release = dcmipp_par_ent_release,
> > +	},
> > +	{
> > +		.name = "dcmipp_dump_postproc",
> > +		.init = dcmipp_byteproc_ent_init,
> > +		.release = dcmipp_byteproc_ent_release,
> > +	},
> > +	{
> > +		.name = "dcmipp_dump_capture",
> > +		.init = dcmipp_bytecap_ent_init,
> > +		.release = dcmipp_bytecap_ent_release,
> > +	},
> > +};
> > +
> > +#define ID_PARALLEL 0
> > +#define ID_DUMP_BYTEPROC 1
> > +#define ID_DUMP_CAPTURE 2
> > +
> > +static const struct dcmipp_ent_link stm32mp13_ent_links[] = {
> > +	DCMIPP_ENT_LINK(ID_PARALLEL,      1, ID_DUMP_BYTEPROC, 0,
> > +			MEDIA_LNK_FL_ENABLED | MEDIA_LNK_FL_IMMUTABLE),
> > +	DCMIPP_ENT_LINK(ID_DUMP_BYTEPROC, 1, ID_DUMP_CAPTURE,  0,
> > +			MEDIA_LNK_FL_ENABLED | MEDIA_LNK_FL_IMMUTABLE),
> > +};
> > +
> > +static const struct dcmipp_pipeline_config stm32mp13_pipe_cfg = {
> > +	.ents		= stm32mp13_ent_config,
> > +	.num_ents	= ARRAY_SIZE(stm32mp13_ent_config),
> > +	.links		= stm32mp13_ent_links,
> > +	.num_links	= ARRAY_SIZE(stm32mp13_ent_links)
> > +};
> > +
> > +#define LINK_FLAG_TO_STR(f) ((f) == 0 ? "" :\
> > +			     (f) == MEDIA_LNK_FL_ENABLED ? "ENABLED" :\
> > +			     (f) == MEDIA_LNK_FL_IMMUTABLE ? "IMMUTABLE" :\
> > +			     (f) == (MEDIA_LNK_FL_ENABLED |\
> > +				     MEDIA_LNK_FL_IMMUTABLE) ?\
> > +					"ENABLED, IMMUTABLE" :\
> > +			     "UNKNOWN")
> > +
> > +static int dcmipp_create_links(struct dcmipp_device *dcmipp)
> > +{
> > +	unsigned int i;
> > +	int ret;
> > +
> > +	/* Initialize the links between entities */
> > +	for (i = 0; i < dcmipp->pipe_cfg->num_links; i++) {
> > +		const struct dcmipp_ent_link *link =
> > +			&dcmipp->pipe_cfg->links[i];
> > +		struct dcmipp_ent_device *ved_src =
> > +			dcmipp->entity[link->src_ent];
> > +		struct dcmipp_ent_device *ved_sink =
> > +			dcmipp->entity[link->sink_ent];
> > +
> > +		dev_dbg(dcmipp->dev, "Create link \"%s\":%d -> %d:\"%s\" [%s]\n",
> > +			dcmipp->pipe_cfg->ents[link->src_ent].name,
> > +			link->src_pad, link->sink_pad,
> > +			dcmipp->pipe_cfg->ents[link->sink_ent].name,
> > +			LINK_FLAG_TO_STR(link->flags));
> > +
> > +		ret = media_create_pad_link(ved_src->ent, link->src_pad,
> > +					    ved_sink->ent, link->sink_pad,
> > +					    link->flags);
> > +		if (ret)
> > +			return ret;
> > +	}
> > +
> > +	return 0;
> > +}
> > +
> > +static int dcmipp_graph_init(struct dcmipp_device *dcmipp);
> > +
> > +static int dcmipp_create_subdevs(struct dcmipp_device *dcmipp)
> > +{
> > +	int ret, i;
> > +
> > +	/* Call all subdev inits */
> > +	for (i = 0; i < dcmipp->pipe_cfg->num_ents; i++) {
> > +		const char *name = dcmipp->pipe_cfg->ents[i].name;
> > +
> > +		dev_dbg(dcmipp->dev, "add subdev %s\n", name);
> > +		dcmipp->entity[i] =
> > +			dcmipp->pipe_cfg->ents[i].init(dcmipp->dev, name,
> > +						       &dcmipp->v4l2_dev,
> > +						       dcmipp->regs);
> > +		if (IS_ERR(dcmipp->entity[i])) {
> > +			dev_err(dcmipp->dev, "failed to init subdev %s\n",
> > +				name);
> > +			ret = PTR_ERR(dcmipp->entity[i]);
> > +			goto err_init_entity;
> > +		}
> > +	}
> > +
> > +	/* Initialize links */
> > +	ret = dcmipp_create_links(dcmipp);
> > +	if (ret)
> > +		goto err_init_entity;
> > +
> > +	ret = dcmipp_graph_init(dcmipp);
> > +	if (ret < 0)
> > +		goto err_init_entity;
> > +
> > +	return 0;
> > +
> > +err_init_entity:
> > +	while (i > 0)
> > +		dcmipp->pipe_cfg->ents[i - 1].release(dcmipp->entity[i - 1]);
> > +	return ret;
> > +}
> > +
> > +static const struct of_device_id dcmipp_of_match[] = {
> > +	{ .compatible = "st,stm32mp13-dcmipp", .data = &stm32mp13_pipe_cfg },
> > +	{ /* end node */ },
> > +};
> > +MODULE_DEVICE_TABLE(of, dcmipp_of_match);
> > +
> > +static irqreturn_t dcmipp_irq_thread(int irq, void *arg)
> > +{
> > +	struct dcmipp_device *dcmipp = arg;
> > +	struct dcmipp_ent_device *ved;
> > +	unsigned int i;
> > +
> > +	/* Call irq thread of each entities of pipeline */
> > +	for (i = 0; i < dcmipp->pipe_cfg->num_ents; i++) {
> > +		ved = dcmipp->entity[i];
> > +		if (ved->thread_fn && ved->handler_ret == IRQ_WAKE_THREAD)
> > +			ved->thread_fn(irq, ved);
> > +	}
> > +
> > +	return IRQ_HANDLED;
> > +}
> > +
> > +static irqreturn_t dcmipp_irq_callback(int irq, void *arg)
> > +{
> > +	struct dcmipp_device *dcmipp = arg;
> > +	struct dcmipp_ent_device *ved;
> > +	irqreturn_t ret = IRQ_HANDLED;
> > +	unsigned int i;
> > +
> > +	/* Call irq handler of each entities of pipeline */
> > +	for (i = 0; i < dcmipp->pipe_cfg->num_ents; i++) {
> > +		ved = dcmipp->entity[i];
> > +		if (ved->handler)
> > +			ved->handler_ret = ved->handler(irq, ved);
> > +		else if (ved->thread_fn)
> > +			ved->handler_ret = IRQ_WAKE_THREAD;
> > +		else
> > +			ved->handler_ret = IRQ_HANDLED;
> > +		if (ved->handler_ret != IRQ_HANDLED)
> > +			ret = ved->handler_ret;
> > +	}
> > +
> > +	return ret;
> > +}
> > +
> > +static int dcmipp_graph_notify_bound(struct v4l2_async_notifier *notifier,
> > +				     struct v4l2_subdev *subdev,
> > +				     struct v4l2_async_connection *asd)
> > +{
> > +	struct dcmipp_device *dcmipp = notifier_to_dcmipp(notifier);
> > +	unsigned int ret;
> > +	int src_pad;
> > +	struct dcmipp_ent_device *sink;
> > +	struct v4l2_fwnode_endpoint vep = { .bus_type = V4L2_MBUS_PARALLEL };
> > +	struct fwnode_handle *ep;
> > +
> > +	dev_dbg(dcmipp->dev, "Subdev \"%s\" bound\n", subdev->name);
> > +
> > +	/*
> > +	 * Link this sub-device to DCMIPP, it could be
> > +	 * a parallel camera sensor or a CSI-2 to parallel bridge
> > +	 */
> > +	src_pad = media_entity_get_fwnode_pad(&subdev->entity,
> > +					      subdev->fwnode,
> > +					      MEDIA_PAD_FL_SOURCE);
> > +
> > +	/* Get bus characteristics from devicetree */
> > +	ep = fwnode_graph_get_endpoint_by_id(dev_fwnode(dcmipp->dev), 0, 0,
> > +					     FWNODE_GRAPH_ENDPOINT_NEXT);
> > +	if (!ep) {
> > +		dev_err(dcmipp->dev, "Could not find the endpoint\n");
> > +		return -ENODEV;
> > +	}
> > +
> > +	/* Check for parallel bus-type first, then bt656 */
> > +	ret = v4l2_fwnode_endpoint_parse(ep, &vep);
> > +	if (ret) {
> > +		vep.bus_type = V4L2_MBUS_BT656;
> > +		ret = v4l2_fwnode_endpoint_parse(ep, &vep);
> > +		if (ret) {
> > +			dev_err(dcmipp->dev, "Could not parse the endpoint\n");
> > +			fwnode_handle_put(ep);
> > +			return ret;
> > +		}
> > +	}
> > +
> > +	fwnode_handle_put(ep);
> > +
> > +	if (vep.bus.parallel.bus_width == 0) {
> > +		dev_err(dcmipp->dev, "Invalid parallel interface bus-width\n");
> > +		return -ENODEV;
> > +	}
> > +
> > +	/* Only 8 bits bus width supported with BT656 bus */
> > +	if (vep.bus_type == V4L2_MBUS_BT656 &&
> > +	    vep.bus.parallel.bus_width != 8) {
> > +		dev_err(dcmipp->dev, "BT656 bus conflicts with %u bits bus width (8 bits required)\n",
> > +			vep.bus.parallel.bus_width);
> > +		return -ENODEV;
> > +	}
> > +
> > +	/* Parallel input device detected, connect it to parallel subdev */
> > +	sink = dcmipp->entity[ID_PARALLEL];
> > +	sink->bus.flags = vep.bus.parallel.flags;
> > +	sink->bus.bus_width = vep.bus.parallel.bus_width;
> > +	sink->bus.data_shift = vep.bus.parallel.data_shift;
> > +	sink->bus_type = vep.bus_type;
> > +	ret = media_create_pad_link(&subdev->entity, src_pad, sink->ent, 0,
> > +				    MEDIA_LNK_FL_IMMUTABLE |
> > +				    MEDIA_LNK_FL_ENABLED);
> > +	if (ret) {
> > +		dev_err(dcmipp->dev, "Failed to create media pad link with subdev \"%s\"\n",
> > +			subdev->name);
> > +		return ret;
> > +	}
> > +
> > +	dev_dbg(dcmipp->dev, "DCMIPP is now linked to \"%s\"\n", subdev->name);
> > +
> > +	return 0;
> > +}
> > +
> > +static void dcmipp_graph_notify_unbind(struct v4l2_async_notifier *notifier,
> > +				       struct v4l2_subdev *sd,
> > +				       struct v4l2_async_connection *asd)
> > +{
> > +	struct dcmipp_device *dcmipp = notifier_to_dcmipp(notifier);
> > +
> > +	dev_dbg(dcmipp->dev, "Removing %s\n", sd->name);
> > +}
> > +
> > +static int dcmipp_graph_notify_complete(struct v4l2_async_notifier *notifier)
> > +{
> > +	struct dcmipp_device *dcmipp = notifier_to_dcmipp(notifier);
> > +	int ret;
> > +
> > +	/* Register the media device */
> > +	ret = media_device_register(&dcmipp->mdev);
> > +	if (ret) {
> > +		dev_err(dcmipp->mdev.dev,
> > +			"media device register failed (err=%d)\n", ret);
> > +		return ret;
> > +	}
> > +
> > +	/* Expose all subdev's nodes*/
> > +	ret = v4l2_device_register_subdev_nodes(&dcmipp->v4l2_dev);
> > +	if (ret) {
> > +		dev_err(dcmipp->mdev.dev,
> > +			"dcmipp subdev nodes registration failed (err=%d)\n",
> > +			ret);
> > +		media_device_unregister(&dcmipp->mdev);
> > +		return ret;
> > +	}
> > +
> > +	dev_dbg(dcmipp->dev, "Notify complete !\n");
> > +
> > +	return 0;
> > +}
> > +
> > +static const struct v4l2_async_notifier_operations dcmipp_graph_notify_ops = {
> > +	.bound = dcmipp_graph_notify_bound,
> > +	.unbind = dcmipp_graph_notify_unbind,
> > +	.complete = dcmipp_graph_notify_complete,
> > +};
> > +
> > +static int dcmipp_graph_init(struct dcmipp_device *dcmipp)
> > +{
> > +	struct v4l2_async_connection *asd;
> > +	struct fwnode_handle *ep;
> > +	int ret;
> > +
> > +	ep = fwnode_graph_get_next_endpoint(dev_fwnode(dcmipp->dev), NULL);
> 
> You should get the endpoint explicitly by port, as you do elsewhere in the
> patch.

Replaced by call to fwnode_graph_get_endpoint_by_id instead.

> 
> > +	if (!ep) {
> > +		dev_err(dcmipp->dev, "Failed to get next endpoint\n");
> > +		return -EINVAL;
> > +	}
> > +
> > +	v4l2_async_nf_init(&dcmipp->notifier, &dcmipp->v4l2_dev);
> > +
> > +	asd = v4l2_async_nf_add_fwnode_remote(&dcmipp->notifier, ep,
> > +					      struct v4l2_async_connection);
> > +
> > +	fwnode_handle_put(ep);
> > +
> > +	if (IS_ERR(asd)) {
> > +		dev_err(dcmipp->dev, "Failed to add fwnode remote subdev\n");
> > +		return PTR_ERR(asd);
> > +	}
> > +
> > +	dcmipp->notifier.ops = &dcmipp_graph_notify_ops;
> > +
> > +	ret = v4l2_async_nf_register(&dcmipp->notifier);
> > +	if (ret < 0) {
> > +		dev_err(dcmipp->dev, "Failed to register notifier\n");
> > +		v4l2_async_nf_cleanup(&dcmipp->notifier);
> > +		return ret;
> > +	}
> > +
> > +	return 0;
> > +}
> > +
> > +static int dcmipp_probe(struct platform_device *pdev)
> > +{
> > +	struct dcmipp_device *dcmipp;
> > +	struct clk *kclk;
> > +	const struct dcmipp_pipeline_config *pipe_cfg;
> > +	int irq;
> > +	int ret;
> > +
> > +	dcmipp = devm_kzalloc(&pdev->dev, sizeof(*dcmipp), GFP_KERNEL);
> > +	if (!dcmipp)
> > +		return -ENOMEM;
> > +
> > +	dcmipp->dev = &pdev->dev;
> > +
> > +	pipe_cfg = of_device_get_match_data(&pdev->dev);
> 
> Can you use device_get_match_data()?

Done

> 
> > +	if (!pipe_cfg) {
> > +		dev_err(&pdev->dev, "Can't get device data\n");
> > +		return -ENODEV;
> > +	}
> > +	dcmipp->pipe_cfg = pipe_cfg;
> > +
> > +	platform_set_drvdata(pdev, dcmipp);
> > +
> > +	/* Get hardware resources from devicetree */
> > +	dcmipp->rstc = devm_reset_control_get_exclusive(&pdev->dev, NULL);
> > +	if (IS_ERR(dcmipp->rstc))
> > +		return dev_err_probe(&pdev->dev, PTR_ERR(dcmipp->rstc),
> > +				     "Could not get reset control\n");
> > +
> > +	irq = platform_get_irq(pdev, 0);
> > +	if (irq <= 0) {
> > +		if (irq != -EPROBE_DEFER)
> > +			dev_err(&pdev->dev, "Could not get irq\n");
> > +		return irq ? irq : -ENXIO;
> > +	}
> > +
> > +	dcmipp->regs = devm_platform_get_and_ioremap_resource(pdev, 0, NULL);
> > +	if (IS_ERR(dcmipp->regs)) {
> > +		dev_err(&pdev->dev, "Could not map registers\n");
> > +		return PTR_ERR(dcmipp->regs);
> > +	}
> > +
> > +	ret = devm_request_threaded_irq(&pdev->dev, irq, dcmipp_irq_callback,
> > +					dcmipp_irq_thread, IRQF_ONESHOT,
> > +					dev_name(&pdev->dev), dcmipp);
> > +	if (ret) {
> > +		dev_err(&pdev->dev, "Unable to request irq %d\n", irq);
> > +		return ret;
> > +	}
> > +
> > +	/* Reset device */
> > +	ret = reset_control_assert(dcmipp->rstc);
> > +	if (ret) {
> > +		dev_err(&pdev->dev, "Failed to assert the reset line\n");
> > +		return ret;
> > +	}
> > +
> > +	usleep_range(3000, 5000);
> > +
> > +	ret = reset_control_deassert(dcmipp->rstc);
> > +	if (ret) {
> > +		dev_err(&pdev->dev, "Failed to deassert the reset line\n");
> > +		return ret;
> > +	}
> > +
> > +	kclk = devm_clk_get(&pdev->dev, NULL);
> > +	if (IS_ERR(kclk))
> > +		return dev_err_probe(&pdev->dev, PTR_ERR(kclk),
> > +				     "Unable to get kclk\n");
> > +	dcmipp->kclk = kclk;
> > +
> > +	dcmipp->entity = devm_kcalloc(&pdev->dev, dcmipp->pipe_cfg->num_ents,
> > +				      sizeof(*dcmipp->entity), GFP_KERNEL);
> > +	if (!dcmipp->entity)
> > +		return -ENOMEM;
> > +
> > +	/* Register the v4l2 struct */
> > +	ret = v4l2_device_register(&pdev->dev, &dcmipp->v4l2_dev);
> > +	if (ret) {
> > +		dev_err(&pdev->dev,
> > +			"v4l2 device register failed (err=%d)\n", ret);
> > +		return ret;
> > +	}
> > +
> > +	/* Link the media device within the v4l2_device */
> > +	dcmipp->v4l2_dev.mdev = &dcmipp->mdev;
> > +
> > +	/* Initialize media device */
> > +	strscpy(dcmipp->mdev.model, DCMIPP_MDEV_MODEL_NAME,
> > +		sizeof(dcmipp->mdev.model));
> > +	dcmipp->mdev.dev = &pdev->dev;
> > +	media_device_init(&dcmipp->mdev);
> > +
> > +	/* Initialize subdevs */
> > +	ret = dcmipp_create_subdevs(dcmipp);
> > +	if (ret) {
> > +		media_device_cleanup(&dcmipp->mdev);
> > +		v4l2_device_unregister(&dcmipp->v4l2_dev);
> > +		return ret;
> > +	}
> > +
> > +	pm_runtime_enable(dcmipp->dev);
> > +
> > +	dev_info(&pdev->dev, "Probe done");
> > +
> > +	return 0;
> > +}
> > +
> > +static int dcmipp_remove(struct platform_device *pdev)
> > +{
> > +	struct dcmipp_device *dcmipp = platform_get_drvdata(pdev);
> > +	unsigned int i;
> > +
> > +	pm_runtime_disable(&pdev->dev);
> > +
> > +	v4l2_async_nf_unregister(&dcmipp->notifier);
> > +	v4l2_async_nf_cleanup(&dcmipp->notifier);
> > +
> > +	media_device_unregister(&dcmipp->mdev);
> > +	media_device_cleanup(&dcmipp->mdev);
> > +
> > +	for (i = 0; i < dcmipp->pipe_cfg->num_ents; i++)
> > +		dcmipp->pipe_cfg->ents[i].release(dcmipp->entity[i]);
> > +
> > +	v4l2_device_unregister(&dcmipp->v4l2_dev);
> > +
> > +	return 0;
> > +}
> > +
> > +static int dcmipp_runtime_suspend(struct device *dev)
> > +{
> > +	struct dcmipp_device *dcmipp = dev_get_drvdata(dev);
> > +
> > +	clk_disable_unprepare(dcmipp->kclk);
> > +
> > +	return 0;
> > +}
> > +
> > +static int dcmipp_runtime_resume(struct device *dev)
> > +{
> > +	struct dcmipp_device *dcmipp = dev_get_drvdata(dev);
> > +	int ret;
> > +
> > +	ret = clk_prepare_enable(dcmipp->kclk);
> > +	if (ret)
> > +		dev_err(dev, "%s: Failed to prepare_enable kclk\n", __func__);
> > +
> > +	return ret;
> > +}
> > +
> > +static int dcmipp_suspend(struct device *dev)
> > +{
> > +	/* disable clock */
> > +	pm_runtime_force_suspend(dev);
> > +
> > +	/* change pinctrl state */
> > +	pinctrl_pm_select_sleep_state(dev);
> > +
> > +	return 0;
> > +}
> > +
> > +static int dcmipp_resume(struct device *dev)
> > +{
> > +	/* restore pinctl default state */
> > +	pinctrl_pm_select_default_state(dev);
> > +
> > +	/* clock enable */
> > +	pm_runtime_force_resume(dev);
> > +
> > +	return 0;
> > +}
> > +
> > +static const struct dev_pm_ops dcmipp_pm_ops = {
> > +	SYSTEM_SLEEP_PM_OPS(dcmipp_suspend, dcmipp_resume)
> > +	RUNTIME_PM_OPS(dcmipp_runtime_suspend, dcmipp_runtime_resume, NULL)
> > +};
> > +
> > +static struct platform_driver dcmipp_pdrv = {
> > +	.probe		= dcmipp_probe,
> > +	.remove		= dcmipp_remove,
> > +	.driver		= {
> > +		.name	= DCMIPP_PDEV_NAME,
> > +		.of_match_table = dcmipp_of_match,
> > +		.pm = pm_ptr(&dcmipp_pm_ops),
> > +	},
> > +};
> > +
> > +module_platform_driver(dcmipp_pdrv);
> > +
> > +MODULE_AUTHOR("Hugues Fruchet <hugues.fruchet@foss.st.com>");
> > +MODULE_AUTHOR("Alain Volmat <alain.volmat@foss.st.com>");
> > +MODULE_DESCRIPTION("STMicroelectronics STM32 Digital Camera Memory Interface with Pixel Processor driver");
> > +MODULE_LICENSE("GPL");
> > diff --git a/drivers/media/platform/st/stm32/stm32-dcmipp/dcmipp-parallel.c b/drivers/media/platform/st/stm32/stm32-dcmipp/dcmipp-parallel.c
> > new file mode 100644
> > index 000000000000..e05f4346ad5e
> > --- /dev/null
> > +++ b/drivers/media/platform/st/stm32/stm32-dcmipp/dcmipp-parallel.c
> > @@ -0,0 +1,441 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * Driver for STM32 Digital Camera Memory Interface Pixel Processor
> > + *
> > + * Copyright (C) STMicroelectronics SA 2022
> > + * Authors: Hugues Fruchet <hugues.fruchet@foss.st.com>
> > + *          Alain Volmat <alain.volmat@foss.st.com>
> > + *          for STMicroelectronics.
> > + */
> > +
> > +#include <linux/v4l2-mediabus.h>
> > +#include <media/v4l2-event.h>
> > +#include <media/v4l2-subdev.h>
> > +
> > +#include "dcmipp-common.h"
> > +
> > +#define DCMIPP_PRCR	0x104
> > +#define DCMIPP_PRCR_FORMAT_SHIFT	16
> > +#define DCMIPP_PRCR_FORMAT_YUV422	0x1e
> > +#define DCMIPP_PRCR_FORMAT_RGB565	0x22
> > +#define DCMIPP_PRCR_FORMAT_RAW8		0x2a
> > +#define DCMIPP_PRCR_FORMAT_G8		0x4a
> > +#define DCMIPP_PRCR_FORMAT_BYTE_STREAM	0x5a
> > +#define DCMIPP_PRCR_ESS			BIT(4)
> > +#define DCMIPP_PRCR_PCKPOL		BIT(5)
> > +#define DCMIPP_PRCR_HSPOL		BIT(6)
> > +#define DCMIPP_PRCR_VSPOL		BIT(7)
> > +#define DCMIPP_PRCR_ENABLE		BIT(14)
> > +#define DCMIPP_PRCR_SWAPCYCLES		BIT(25)
> > +
> > +#define DCMIPP_PRESCR	0x108
> > +#define DCMIPP_PRESUR	0x10c
> > +
> > +#define IS_SINK(pad) (!(pad))
> > +#define IS_SRC(pad)  ((pad))
> > +
> > +struct dcmipp_par_pix_map {
> > +	unsigned int code_sink;
> > +	unsigned int code_src;
> > +	u8 prcr_format;
> > +	u8 prcr_swapcycles;
> > +};
> > +
> > +#define PIXMAP_SINK_SRC_PRCR_SWAP(sink, src, prcr, swap)	\
> > +	{							\
> > +		.code_sink = MEDIA_BUS_FMT_##sink,		\
> > +		.code_src = MEDIA_BUS_FMT_##src,		\
> > +		.prcr_format = DCMIPP_PRCR_FORMAT_##prcr,	\
> > +		.prcr_swapcycles = swap,			\
> > +	}
> > +static const struct dcmipp_par_pix_map dcmipp_par_pix_map_list[] = {
> > +	/* RGB565 */
> > +	PIXMAP_SINK_SRC_PRCR_SWAP(RGB565_2X8_LE, RGB565_2X8_LE, RGB565, 1),
> > +	PIXMAP_SINK_SRC_PRCR_SWAP(RGB565_2X8_BE, RGB565_2X8_LE, RGB565, 0),
> > +	/* YUV422 */
> > +	PIXMAP_SINK_SRC_PRCR_SWAP(YUYV8_2X8, YUYV8_2X8, YUV422, 1),
> > +	PIXMAP_SINK_SRC_PRCR_SWAP(YUYV8_2X8, UYVY8_2X8, YUV422, 0),
> > +	PIXMAP_SINK_SRC_PRCR_SWAP(UYVY8_2X8, UYVY8_2X8, YUV422, 1),
> > +	PIXMAP_SINK_SRC_PRCR_SWAP(UYVY8_2X8, YUYV8_2X8, YUV422, 0),
> > +	PIXMAP_SINK_SRC_PRCR_SWAP(YVYU8_2X8, YVYU8_2X8, YUV422, 1),
> > +	PIXMAP_SINK_SRC_PRCR_SWAP(VYUY8_2X8, VYUY8_2X8, YUV422, 1),
> > +	/* GREY */
> > +	PIXMAP_SINK_SRC_PRCR_SWAP(Y8_1X8, Y8_1X8, G8, 0),
> > +	/* Raw Bayer */
> > +	PIXMAP_SINK_SRC_PRCR_SWAP(SBGGR8_1X8, SBGGR8_1X8, RAW8, 0),
> > +	PIXMAP_SINK_SRC_PRCR_SWAP(SGBRG8_1X8, SGBRG8_1X8, RAW8, 0),
> > +	PIXMAP_SINK_SRC_PRCR_SWAP(SGRBG8_1X8, SGRBG8_1X8, RAW8, 0),
> > +	PIXMAP_SINK_SRC_PRCR_SWAP(SRGGB8_1X8, SRGGB8_1X8, RAW8, 0),
> > +	/* JPEG */
> > +	PIXMAP_SINK_SRC_PRCR_SWAP(JPEG_1X8, JPEG_1X8, BYTE_STREAM, 0),
> > +};
> > +
> > +/*
> > + * Search through the pix_map table, skipping two consecutive entry with the
> > + * same code
> > + */
> > +static inline const struct dcmipp_par_pix_map *dcmipp_par_pix_map_by_index
> > +						(unsigned int index,
> > +						 unsigned int pad)
> > +{
> > +	unsigned int i = 0;
> > +	u32 prev_code = 0, cur_code;
> > +
> > +	while (i < ARRAY_SIZE(dcmipp_par_pix_map_list)) {
> > +		if (IS_SRC(pad))
> > +			cur_code = dcmipp_par_pix_map_list[i].code_src;
> > +		else
> > +			cur_code = dcmipp_par_pix_map_list[i].code_sink;
> > +
> > +		if (cur_code == prev_code) {
> > +			i++;
> > +			continue;
> > +		}
> > +		prev_code = cur_code;
> > +
> > +		if (index == 0)
> > +			break;
> > +		i++;
> > +		index--;
> > +	}
> > +
> > +	if (i >= ARRAY_SIZE(dcmipp_par_pix_map_list))
> > +		return NULL;
> > +
> > +	return &dcmipp_par_pix_map_list[i];
> > +}
> > +
> > +static inline const struct dcmipp_par_pix_map *dcmipp_par_pix_map_by_code
> > +					(u32 code_sink, u32 code_src)
> > +{
> > +	unsigned int i;
> > +
> > +	for (i = 0; i < ARRAY_SIZE(dcmipp_par_pix_map_list); i++) {
> > +		if ((dcmipp_par_pix_map_list[i].code_sink == code_sink &&
> > +		     dcmipp_par_pix_map_list[i].code_src == code_src) ||
> > +		    (dcmipp_par_pix_map_list[i].code_sink == code_src &&
> > +		     dcmipp_par_pix_map_list[i].code_src == code_sink) ||
> > +		    (dcmipp_par_pix_map_list[i].code_sink == code_sink &&
> > +		     code_src == 0) ||
> > +		    (code_sink == 0 &&
> > +		     dcmipp_par_pix_map_list[i].code_src == code_src))
> > +			return &dcmipp_par_pix_map_list[i];
> > +	}
> > +	return NULL;
> > +}
> > +
> > +struct dcmipp_par_device {
> > +	struct dcmipp_ent_device ved;
> > +	struct v4l2_subdev sd;
> > +	struct device *dev;
> > +	void __iomem *regs;
> > +	bool streaming;
> > +};
> > +
> > +static const struct v4l2_mbus_framefmt fmt_default = {
> > +	.width = DCMIPP_FMT_WIDTH_DEFAULT,
> > +	.height = DCMIPP_FMT_HEIGHT_DEFAULT,
> > +	.code = MEDIA_BUS_FMT_RGB565_2X8_LE,
> > +	.field = V4L2_FIELD_NONE,
> > +	.colorspace = DCMIPP_COLORSPACE_DEFAULT,
> > +	.ycbcr_enc = DCMIPP_YCBCR_ENC_DEFAULT,
> > +	.quantization = DCMIPP_QUANTIZATION_DEFAULT,
> > +	.xfer_func = DCMIPP_XFER_FUNC_DEFAULT,
> > +};
> > +
> > +static int dcmipp_par_init_cfg(struct v4l2_subdev *sd,
> > +			       struct v4l2_subdev_state *sd_state)
> > +{
> > +	unsigned int i;
> > +
> > +	for (i = 0; i < sd->entity.num_pads; i++) {
> > +		struct v4l2_mbus_framefmt *mf;
> > +
> > +		mf = v4l2_subdev_get_try_format(sd, sd_state, i);
> > +		*mf = fmt_default;
> > +	}
> > +
> > +	return 0;
> > +}
> > +
> > +static int dcmipp_par_enum_mbus_code(struct v4l2_subdev *sd,
> > +				     struct v4l2_subdev_state *sd_state,
> > +				     struct v4l2_subdev_mbus_code_enum *code)
> > +{
> > +	const struct dcmipp_par_pix_map *vpix =
> > +		dcmipp_par_pix_map_by_index(code->index, code->pad);
> > +
> > +	if (!vpix)
> > +		return -EINVAL;
> > +
> > +	code->code = IS_SRC(code->pad) ? vpix->code_src : vpix->code_sink;
> > +
> > +	return 0;
> > +}
> > +
> > +static int dcmipp_par_enum_frame_size(struct v4l2_subdev *sd,
> > +				      struct v4l2_subdev_state *sd_state,
> > +				      struct v4l2_subdev_frame_size_enum *fse)
> > +{
> > +	const struct dcmipp_par_pix_map *vpix;
> > +
> > +	if (fse->index)
> > +		return -EINVAL;
> > +
> > +	/* Only accept code in the pix map table */
> > +	vpix = dcmipp_par_pix_map_by_code(IS_SINK(fse->pad) ? fse->code : 0,
> > +					  IS_SRC(fse->pad) ? fse->code : 0);
> > +	if (!vpix)
> > +		return -EINVAL;
> > +
> > +	fse->min_width = DCMIPP_FRAME_MIN_WIDTH;
> > +	fse->max_width = DCMIPP_FRAME_MAX_WIDTH;
> > +	fse->min_height = DCMIPP_FRAME_MIN_HEIGHT;
> > +	fse->max_height = DCMIPP_FRAME_MAX_HEIGHT;
> > +
> > +	return 0;
> > +}
> > +
> > +static void dcmipp_par_adjust_fmt(struct dcmipp_par_device *par,
> > +				  struct v4l2_mbus_framefmt *fmt, __u32 pad)
> > +{
> > +	const struct dcmipp_par_pix_map *vpix;
> > +
> > +	/* Only accept code in the pix map table */
> > +	vpix = dcmipp_par_pix_map_by_code(IS_SINK(pad) ? fmt->code : 0,
> > +					  IS_SRC(pad) ? fmt->code : 0);
> > +	if (!vpix)
> > +		fmt->code = fmt_default.code;
> > +
> > +	/* Exclude JPEG if BT656 bus is selected */
> > +	if (vpix && vpix->code_sink == MEDIA_BUS_FMT_JPEG_1X8 &&
> > +	    par->ved.bus_type == V4L2_MBUS_BT656)
> > +		fmt->code = fmt_default.code;
> > +
> > +	fmt->width = clamp_t(u32, fmt->width, DCMIPP_FRAME_MIN_WIDTH,
> > +			     DCMIPP_FRAME_MAX_WIDTH) & ~1;
> > +	fmt->height = clamp_t(u32, fmt->height, DCMIPP_FRAME_MIN_HEIGHT,
> > +			      DCMIPP_FRAME_MAX_HEIGHT) & ~1;
> > +
> > +	if (fmt->field == V4L2_FIELD_ANY || fmt->field == V4L2_FIELD_ALTERNATE)
> > +		fmt->field = fmt_default.field;
> > +
> > +	dcmipp_colorimetry_clamp(fmt);
> > +}
> > +
> > +static int dcmipp_par_set_fmt(struct v4l2_subdev *sd,
> > +			      struct v4l2_subdev_state *sd_state,
> > +			      struct v4l2_subdev_format *fmt)
> > +{
> > +	struct dcmipp_par_device *par = v4l2_get_subdevdata(sd);
> > +	struct v4l2_mbus_framefmt *mf;
> > +
> > +	if (par->streaming)
> > +		return -EBUSY;
> > +
> > +	mf = v4l2_subdev_get_pad_format(sd, sd_state, fmt->pad);
> > +
> > +	/* Set the new format */
> > +	dcmipp_par_adjust_fmt(par, &fmt->format, fmt->pad);
> > +
> > +	dev_dbg(par->dev, "%s: format update: old:%dx%d (0x%x, %d, %d, %d, %d) new:%dx%d (0x%x, %d, %d, %d, %d)\n",
> > +		par->sd.name,
> > +		/* old */
> > +		mf->width, mf->height, mf->code,
> > +		mf->colorspace,	mf->quantization,
> > +		mf->xfer_func, mf->ycbcr_enc,
> > +		/* new */
> > +		fmt->format.width, fmt->format.height, fmt->format.code,
> > +		fmt->format.colorspace, fmt->format.quantization,
> > +		fmt->format.xfer_func, fmt->format.ycbcr_enc);
> > +
> > +	*mf = fmt->format;
> > +
> > +	/* When setting the sink format, report that format on the src pad */
> > +	if (IS_SINK(fmt->pad)) {
> > +		mf = v4l2_subdev_get_pad_format(sd, sd_state, 1);
> > +		*mf = fmt->format;
> > +		dcmipp_par_adjust_fmt(par, mf, 1);
> > +	}
> > +
> > +	return 0;
> > +}
> > +
> > +static const struct v4l2_subdev_pad_ops dcmipp_par_pad_ops = {
> > +	.init_cfg		= dcmipp_par_init_cfg,
> > +	.enum_mbus_code		= dcmipp_par_enum_mbus_code,
> > +	.enum_frame_size	= dcmipp_par_enum_frame_size,
> > +	.get_fmt		= v4l2_subdev_get_fmt,
> > +	.set_fmt		= dcmipp_par_set_fmt,
> > +};
> > +
> > +static int dcmipp_par_configure(struct dcmipp_par_device *par)
> > +{
> > +	u32 val = 0;
> > +	const struct dcmipp_par_pix_map *vpix;
> > +	struct v4l2_subdev_state *state;
> > +	struct v4l2_mbus_framefmt *sink_fmt;
> > +	struct v4l2_mbus_framefmt *src_fmt;
> > +
> > +	/* Set vertical synchronization polarity */
> > +	if (par->ved.bus.flags & V4L2_MBUS_VSYNC_ACTIVE_HIGH)
> > +		val |= DCMIPP_PRCR_VSPOL;
> > +
> > +	/* Set horizontal synchronization polarity */
> > +	if (par->ved.bus.flags & V4L2_MBUS_HSYNC_ACTIVE_HIGH)
> > +		val |= DCMIPP_PRCR_HSPOL;
> > +
> > +	/* Set pixel clock polarity */
> > +	if (par->ved.bus.flags & V4L2_MBUS_PCLK_SAMPLE_RISING)
> > +		val |= DCMIPP_PRCR_PCKPOL;
> > +
> > +	/*
> > +	 * BT656 embedded synchronisation bus mode.
> > +	 *
> > +	 * Default SAV/EAV mode is supported here with default codes
> > +	 * SAV=0xff000080 & EAV=0xff00009d.
> > +	 * With DCMIPP this means LSC=SAV=0x80 & LEC=EAV=0x9d.
> > +	 */
> > +	if (par->ved.bus_type == V4L2_MBUS_BT656) {
> > +		val |= DCMIPP_PRCR_ESS;
> > +
> > +		/* Unmask all codes */
> > +		reg_write(par, DCMIPP_PRESUR, 0xffffffff);/* FEC:LEC:LSC:FSC */
> > +
> > +		/* Trig on LSC=0x80 & LEC=0x9d codes, ignore FSC and FEC */
> > +		reg_write(par, DCMIPP_PRESCR, 0xff9d80ff);/* FEC:LEC:LSC:FSC */
> > +	}
> > +
> > +	/* Set format */
> > +	state = v4l2_subdev_lock_and_get_active_state(&par->sd);
> > +	sink_fmt = v4l2_subdev_get_pad_format(&par->sd, state, 0);
> > +	src_fmt = v4l2_subdev_get_pad_format(&par->sd, state, 1);
> > +	v4l2_subdev_unlock_state(state);
> > +
> > +	vpix = dcmipp_par_pix_map_by_code(sink_fmt->code, src_fmt->code);
> > +	if (!vpix) {
> > +		dev_err(par->dev, "Invalid sink/src format configuration\n");
> > +		return -EINVAL;
> > +	}
> > +
> > +	val |= vpix->prcr_format << DCMIPP_PRCR_FORMAT_SHIFT;
> > +
> > +	/* swap cycles */
> > +	if (vpix->prcr_swapcycles)
> > +		val |= DCMIPP_PRCR_SWAPCYCLES;
> > +
> > +	reg_write(par, DCMIPP_PRCR, val);
> > +
> > +	return 0;
> > +}
> > +
> > +static int dcmipp_par_s_stream(struct v4l2_subdev *sd, int enable)
> > +{
> > +	struct dcmipp_par_device *par =
> > +				container_of(sd, struct dcmipp_par_device, sd);
> > +	struct v4l2_subdev *s_subdev;
> > +	struct media_pad *pad;
> > +	int ret = 0;
> > +
> > +	/* Get source subdev */
> > +	pad = media_pad_remote_pad_first(&sd->entity.pads[0]);
> > +	if (!pad || !is_media_entity_v4l2_subdev(pad->entity))
> > +		return -EINVAL;
> > +	s_subdev = media_entity_to_v4l2_subdev(pad->entity);
> > +
> > +	if (enable) {
> > +		ret = dcmipp_par_configure(par);
> > +		if (ret)
> > +			return ret;
> > +
> > +		/* Enable parallel interface */
> > +		reg_set(par, DCMIPP_PRCR, DCMIPP_PRCR_ENABLE);
> > +
> > +		ret = v4l2_subdev_call(s_subdev, video, s_stream, enable);
> > +		if (ret < 0) {
> > +			dev_err(par->dev,
> > +				"failed to start source subdev streaming (%d)\n",
> > +				ret);
> > +			return ret;
> > +		}
> > +	} else {
> > +		ret = v4l2_subdev_call(s_subdev, video, s_stream, enable);
> > +		if (ret < 0) {
> > +			dev_err(par->dev,
> > +				"failed to stop source subdev streaming (%d)\n",
> > +				ret);
> > +			return ret;
> > +		}
> > +
> > +		/* Disable parallel interface */
> > +		reg_clear(par, DCMIPP_PRCR, DCMIPP_PRCR_ENABLE);
> > +	}
> > +
> > +	par->streaming = enable;
> > +
> > +	return ret;
> > +}
> > +
> > +static const struct v4l2_subdev_video_ops dcmipp_par_video_ops = {
> > +	.s_stream = dcmipp_par_s_stream,
> > +};
> > +
> > +static const struct v4l2_subdev_ops dcmipp_par_ops = {
> > +	.pad = &dcmipp_par_pad_ops,
> > +	.video = &dcmipp_par_video_ops,
> > +};
> > +
> > +static void dcmipp_par_release(struct v4l2_subdev *sd)
> > +{
> > +	struct dcmipp_par_device *par =
> > +				container_of(sd, struct dcmipp_par_device, sd);
> > +
> > +	kfree(par);
> > +}
> > +
> > +static const struct v4l2_subdev_internal_ops dcmipp_par_int_ops = {
> > +	.release = dcmipp_par_release,
> > +};
> > +
> > +void dcmipp_par_ent_release(struct dcmipp_ent_device *ved)
> > +{
> > +	struct dcmipp_par_device *par =
> > +			container_of(ved, struct dcmipp_par_device, ved);
> > +
> > +	dcmipp_ent_sd_unregister(ved, &par->sd);
> > +}
> > +
> > +struct dcmipp_ent_device *dcmipp_par_ent_init(struct device *dev,
> > +					      const char *entity_name,
> > +					      struct v4l2_device *v4l2_dev,
> > +					      void __iomem *regs)
> > +{
> > +	struct dcmipp_par_device *par;
> > +	int ret;
> > +
> > +	/* Allocate the par struct */
> > +	par = kzalloc(sizeof(*par), GFP_KERNEL);
> > +	if (!par)
> > +		return ERR_PTR(-ENOMEM);
> > +
> > +	par->regs = regs;
> > +
> > +	/* Initialize ved and sd */
> > +	ret = dcmipp_ent_sd_register(&par->ved, &par->sd, v4l2_dev,
> > +				     entity_name,
> > +				     MEDIA_ENT_F_VID_IF_BRIDGE, 2,
> > +				     (const unsigned long[2]) {
> > +				     MEDIA_PAD_FL_SINK,
> > +				     MEDIA_PAD_FL_SOURCE,
> 
> These should be indented. It'd be nicer to have them in a local variable
> actually.

Use pads_flag local variable instead in this functions are 2 other
places doing same thing.

Regards,
Alain

> 
> > +				     },
> > +				     &dcmipp_par_int_ops, &dcmipp_par_ops,
> > +				     NULL, NULL);
> > +	if (ret) {
> > +		kfree(par);
> > +		return ERR_PTR(ret);
> > +	}
> > +
> > +	par->dev = dev;
> > +
> > +	return &par->ved;
> > +}
> 
> -- 
> Kind regards,
> 
> Sakari Ailus

