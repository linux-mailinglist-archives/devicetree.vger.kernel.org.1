Return-Path: <devicetree+bounces-133152-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 491399F966C
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 17:25:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 66E7916C8A8
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 16:24:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 344DB220694;
	Fri, 20 Dec 2024 16:21:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="bcj57ufj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EDC621C9FA
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 16:21:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734711709; cv=none; b=nAzel30B/uoWY2DzGdUWHuZKRDI/DqLdRjZMZlfVAcw5fpkkF6Xt2nfzpHJ5t346W9NAO2c/7MVk5OaV5STIxwwQHxNJ3eECBVLAQibQ4BG05p/NCgQxH3Xd1otGACrQ0r68/FgUgn0+ZlpMed9YFamUCjcdBACGOxHOdBdAT6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734711709; c=relaxed/simple;
	bh=ROIyY0xLzT+ESD5kPU8S9j3mVwEJ9VABbE4pbSeHCEs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=DAdnzAqY5WtRKS57lY/ijeruXxcjfuDgOl9zposBKzBFoBpVn7+VBuef/Gcef3XVRLmoN0luUt3nJXswSe5HZKdRll6d2uT+HOLu5KpXz5layJQ6N5jpdNHkjdCYexIH74ot4JJG4BQLsCBPuNMFo2kjz/rJGIdXB2wJJAmQ4PM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=bcj57ufj; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-4362f61757fso20315775e9.2
        for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 08:21:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1734711700; x=1735316500; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Zif+qmE4hhQoMdQz6neCGbn9C316VPN9v66fb3e8Y+Y=;
        b=bcj57ufj9FiLv3PpQhPgBZl1me576wY/JnelYyDTomf2elxTDNneEbAMo4CZW8fFIW
         I68QNL3eIkCyWP6GsQfDCp7gtLntTXiD+RCAuP5FVQ7tNYVUis7WVhAtpQUArgQAx+du
         GSQ2DUKsMay5/tKeW5vqqwTCtIHRJIyDc56f9IQX+e71xnoaEo+7TLAXxWOzCyxO2NT6
         4/CT3bE713Z40lRlSEST6uOHZaGZtmdQi/jc8L9htFeaC3jBRC7wbU5mPMTBZ23/wWDd
         9aAITDHDIrc3w9p+hMsJtw2j0++TCAD7yge5SsUkllxeoCD1cucdLOGFhpZK0VvssTwu
         WZ2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734711700; x=1735316500;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Zif+qmE4hhQoMdQz6neCGbn9C316VPN9v66fb3e8Y+Y=;
        b=GWaHkObKBCeHgk1xsWxqWKFkdzsoan14LqQ3//KbL/BAWTNqhwCe9bVKCly2wTEULz
         l3gROBRkUETMBh005LDEYz5XIVxx19HqwaGI+FoRXGntEGOGHBbqI3pkjhOfQ5eeCLVl
         fKaSu3igi7T01YFtRF5cyurwnbRWJYVQXqOwitFzqAKzwBTV9dLwQOSxraZjLqA75622
         yJ9OufK0CEfZlahJodOP1s4EGJX5GaKHtEU0HqJxEL1gS+rC3+ZLozKvr1/zRwi6P03c
         oCa65ULx1EPeQ6VzwkKitptQ2ELHQgX85/Gq3Ah6y2i+v6gGfBTlWb+7PEcnQ7xd75q8
         4SRg==
X-Forwarded-Encrypted: i=1; AJvYcCW/KLk7jUg3aqjsk59sVnDgQFjkK+9ZOu+HNRS9QXnyZ8hQCwLCnKWsnR+QEGQVpKSa2QCRv6OI+SWl@vger.kernel.org
X-Gm-Message-State: AOJu0YyYjkk2H8/yJadSGWqr3pCEC6/Tm9JHUb1YdTz2le4TIwzQDq++
	G4nCGkwW2az4kN9zHkKYvlIjaFX6WYa89Xel1sFqbpH3YCqd/p1GBQ5n1KzQsFM=
X-Gm-Gg: ASbGncv/OW0blwTR9Cc6MwV2dTRn0SmYSZdCC8DpfM9NjTdNcJqv4u+7mDS4ndjj/AN
	ufMeJQggzeqfcos2/x09O47xBr4IPtDWapWKxofk1uvh3I/9sYKJChxJL5+xcchiQpgrmNUTBg8
	Gqdrn1nRabFXUpRhCNF9RufOy4CISuA09gf3V5Bg1VgGmZm8YM0YKPPAEiylZbmmQ0fxX2pmKzM
	7PPFNmvYapPEJyXjQvY60CcnPCXo1roYJNH4lO6L8GGNo8o
X-Google-Smtp-Source: AGHT+IHITdvBwFl/qBQ3qSY3hM5h290AmiHt2dw9uG31Nm0uUOiazrjH5+qb+vNZV2G5UeH0CDSP+Q==
X-Received: by 2002:a05:600c:3b20:b0:434:9df4:5485 with SMTP id 5b1f17b1804b1-43668b76ae9mr26511815e9.32.1734711698943;
        Fri, 20 Dec 2024 08:21:38 -0800 (PST)
Received: from [127.0.1.1] ([2a00:1098:3142:e::8])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-43656b013e1sm82824045e9.12.2024.12.20.08.21.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Dec 2024 08:21:38 -0800 (PST)
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Fri, 20 Dec 2024 16:21:16 +0000
Subject: [PATCH 5/7] media: platform: Add Raspberry Pi HEVC decoder driver
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241220-media-rpi-hevc-dec-v1-5-0ebcc04ed42e@raspberrypi.com>
References: <20241220-media-rpi-hevc-dec-v1-0-0ebcc04ed42e@raspberrypi.com>
In-Reply-To: <20241220-media-rpi-hevc-dec-v1-0-0ebcc04ed42e@raspberrypi.com>
To: Sakari Ailus <sakari.ailus@linux.intel.com>, 
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Florian Fainelli <florian.fainelli@broadcom.com>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
 John Cox <john.cox@raspberrypi.com>, Dom Cobley <dom@raspberrypi.com>, 
 review list <kernel-list@raspberrypi.com>, 
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Cc: John Cox <jc@kynesim.co.uk>, linux-media@vger.kernel.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 Dave Stevenson <dave.stevenson@raspberrypi.com>
X-Mailer: b4 0.14.1

From: John Cox <john.cox@raspberrypi.com>

The BCM2711 and BCM2712 SoCs used on Rapsberry Pi 4 and Raspberry
Pi 5 boards include an HEVC decoder block. Add a driver for it.

Signed-off-by: John Cox <john.cox@raspberrypi.com>
Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
---
 MAINTAINERS                                        |   10 +
 drivers/media/platform/raspberrypi/Kconfig         |    1 +
 drivers/media/platform/raspberrypi/Makefile        |    1 +
 .../media/platform/raspberrypi/hevc_dec/Kconfig    |   17 +
 .../media/platform/raspberrypi/hevc_dec/Makefile   |    5 +
 .../media/platform/raspberrypi/hevc_dec/hevc_d.c   |  443 ++++
 .../media/platform/raspberrypi/hevc_dec/hevc_d.h   |  190 ++
 .../platform/raspberrypi/hevc_dec/hevc_d_h265.c    | 2629 ++++++++++++++++++++
 .../platform/raspberrypi/hevc_dec/hevc_d_hw.c      |  376 +++
 .../platform/raspberrypi/hevc_dec/hevc_d_hw.h      |  303 +++
 .../platform/raspberrypi/hevc_dec/hevc_d_video.c   |  685 +++++
 .../platform/raspberrypi/hevc_dec/hevc_d_video.h   |   38 +
 12 files changed, 4698 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index a33a97d5ffff..569b478c44fe 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -19567,6 +19567,16 @@ L:	linux-edac@vger.kernel.org
 S:	Maintained
 F:	drivers/ras/amd/fmpm.c
 
+RASPBERRY PI HEVC DECODER
+M:	John Cox <john.cox@raspberrypi.com>
+M:	Dom Cobley <dom@raspberrypi.com>
+M:	Dave Stevenson <dave.stevenson@raspberrypi.com>
+M:	Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>
+L:	linux-media@vger.kernel.org
+S:	Maintained
+F:	Documentation/devicetree/bindings/media/raspberrypi,rpi_hevc_dec.yaml
+F:	drivers/media/platform/raspberrypi/hevc_dec
+
 RASPBERRY PI PISP BACK END
 M:	Jacopo Mondi <jacopo.mondi@ideasonboard.com>
 L:	Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>
diff --git a/drivers/media/platform/raspberrypi/Kconfig b/drivers/media/platform/raspberrypi/Kconfig
index bd5101ffefb5..fbe2edd24f8e 100644
--- a/drivers/media/platform/raspberrypi/Kconfig
+++ b/drivers/media/platform/raspberrypi/Kconfig
@@ -2,5 +2,6 @@
 
 comment "Raspberry Pi media platform drivers"
 
+source "drivers/media/platform/raspberrypi/hevc_dec/Kconfig"
 source "drivers/media/platform/raspberrypi/pisp_be/Kconfig"
 source "drivers/media/platform/raspberrypi/rp1-cfe/Kconfig"
diff --git a/drivers/media/platform/raspberrypi/Makefile b/drivers/media/platform/raspberrypi/Makefile
index af7fde84eefe..c63985cd8d17 100644
--- a/drivers/media/platform/raspberrypi/Makefile
+++ b/drivers/media/platform/raspberrypi/Makefile
@@ -1,4 +1,5 @@
 # SPDX-License-Identifier: GPL-2.0
 
+obj-y += hevc_dec/
 obj-y += pisp_be/
 obj-y += rp1-cfe/
diff --git a/drivers/media/platform/raspberrypi/hevc_dec/Kconfig b/drivers/media/platform/raspberrypi/hevc_dec/Kconfig
new file mode 100644
index 000000000000..ae1fd079e5c9
--- /dev/null
+++ b/drivers/media/platform/raspberrypi/hevc_dec/Kconfig
@@ -0,0 +1,17 @@
+# SPDX-License-Identifier: GPL-2.0
+
+config VIDEO_RPI_HEVC_DEC
+	tristate "Rasperry Pi HEVC decoder"
+	depends on VIDEO_DEV && VIDEO_DEV
+	depends on OF
+	select MEDIA_CONTROLLER
+	select MEDIA_CONTROLLER_REQUEST_API
+	select VIDEOBUF2_DMA_CONTIG
+	select V4L2_MEM2MEM_DEV
+	help
+	  Support for the Raspberry Pi HEVC / H265 H/W decoder as a stateless
+	  V4L2 decoder device.
+
+	  To compile this driver as a module, choose M here: the module
+	  will be called rpi-hevc-dec.
+
diff --git a/drivers/media/platform/raspberrypi/hevc_dec/Makefile b/drivers/media/platform/raspberrypi/hevc_dec/Makefile
new file mode 100644
index 000000000000..b6506bf2e00d
--- /dev/null
+++ b/drivers/media/platform/raspberrypi/hevc_dec/Makefile
@@ -0,0 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0
+obj-$(CONFIG_VIDEO_RPI_HEVC_DEC) += rpi-hevc-dec.o
+
+rpi-hevc-dec-y = hevc_d.o hevc_d_video.o hevc_d_hw.o\
+		 hevc_d_h265.o
diff --git a/drivers/media/platform/raspberrypi/hevc_dec/hevc_d.c b/drivers/media/platform/raspberrypi/hevc_dec/hevc_d.c
new file mode 100644
index 000000000000..b906f453fd6f
--- /dev/null
+++ b/drivers/media/platform/raspberrypi/hevc_dec/hevc_d.c
@@ -0,0 +1,443 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Raspberry Pi HEVC driver
+ *
+ * Copyright (C) 2024 Raspberry Pi Ltd
+ *
+ * Based on the Cedrus VPU driver, that is:
+ *
+ * Copyright (C) 2016 Florent Revest <florent.revest@free-electrons.com>
+ * Copyright (C) 2018 Paul Kocialkowski <paul.kocialkowski@bootlin.com>
+ * Copyright (C) 2018 Bootlin
+ */
+
+#include <linux/platform_device.h>
+#include <linux/module.h>
+#include <linux/of.h>
+
+#include <media/v4l2-device.h>
+#include <media/v4l2-ioctl.h>
+#include <media/v4l2-ctrls.h>
+#include <media/v4l2-mem2mem.h>
+
+#include "hevc_d.h"
+#include "hevc_d_h265.h"
+#include "hevc_d_video.h"
+#include "hevc_d_hw.h"
+
+static const struct hevc_d_control hevc_d_ctrls[] = {
+	{
+		.cfg = {
+			.id	= V4L2_CID_STATELESS_HEVC_SPS,
+			.ops	= &hevc_d_hevc_sps_ctrl_ops,
+		},
+		.required	= false,
+	}, {
+		.cfg = {
+			.id	= V4L2_CID_STATELESS_HEVC_PPS,
+			.ops	= &hevc_d_hevc_pps_ctrl_ops,
+		},
+		.required	= false,
+	}, {
+		.cfg = {
+			.id = V4L2_CID_STATELESS_HEVC_SCALING_MATRIX,
+		},
+		.required	= false,
+	}, {
+		.cfg = {
+			.id	= V4L2_CID_STATELESS_HEVC_DECODE_PARAMS,
+		},
+		.required	= true,
+	}, {
+		.cfg = {
+			.name	= "Slice param array",
+			.id	= V4L2_CID_STATELESS_HEVC_SLICE_PARAMS,
+			.type	= V4L2_CTRL_TYPE_HEVC_SLICE_PARAMS,
+			.flags	= V4L2_CTRL_FLAG_DYNAMIC_ARRAY,
+			.dims	= { 0x1000 },
+		},
+		.required	= true,
+	}, {
+		.cfg = {
+			.id	= V4L2_CID_STATELESS_HEVC_DECODE_MODE,
+			.min	= V4L2_STATELESS_HEVC_DECODE_MODE_SLICE_BASED,
+			.max	= V4L2_STATELESS_HEVC_DECODE_MODE_SLICE_BASED,
+			.def	= V4L2_STATELESS_HEVC_DECODE_MODE_SLICE_BASED,
+		},
+		.required	= false,
+	}, {
+		.cfg = {
+			.id	= V4L2_CID_STATELESS_HEVC_START_CODE,
+			.min	= V4L2_STATELESS_HEVC_START_CODE_NONE,
+			.max	= V4L2_STATELESS_HEVC_START_CODE_ANNEX_B,
+			.def	= V4L2_STATELESS_HEVC_START_CODE_NONE,
+		},
+		.required	= false,
+	},
+};
+
+#define HEVC_D_CTRLS_COUNT	ARRAY_SIZE(hevc_d_ctrls)
+
+struct v4l2_ctrl *hevc_d_find_ctrl(struct hevc_d_ctx *ctx, u32 id)
+{
+	unsigned int i;
+
+	for (i = 0; i < HEVC_D_CTRLS_COUNT; i++)
+		if (ctx->ctrls[i]->id == id)
+			return ctx->ctrls[i];
+
+	return NULL;
+}
+
+void *hevc_d_find_control_data(struct hevc_d_ctx *ctx, u32 id)
+{
+	struct v4l2_ctrl *const ctrl = hevc_d_find_ctrl(ctx, id);
+
+	return !ctrl ? NULL : ctrl->p_cur.p;
+}
+
+static int hevc_d_init_ctrls(struct hevc_d_dev *dev, struct hevc_d_ctx *ctx)
+{
+	struct v4l2_ctrl_handler *hdl = &ctx->hdl;
+	struct v4l2_ctrl *ctrl;
+	unsigned int i;
+
+	v4l2_ctrl_handler_init(hdl, HEVC_D_CTRLS_COUNT);
+	if (hdl->error) {
+		v4l2_err(&dev->v4l2_dev,
+			 "Failed to initialize control handler\n");
+		return hdl->error;
+	}
+
+	ctx->ctrls = kzalloc(HEVC_D_CTRLS_COUNT * sizeof(ctrl), GFP_KERNEL);
+	if (!ctx->ctrls)
+		return -ENOMEM;
+
+	for (i = 0; i < HEVC_D_CTRLS_COUNT; i++) {
+		ctrl = v4l2_ctrl_new_custom(hdl, &hevc_d_ctrls[i].cfg,
+					    ctx);
+		if (hdl->error) {
+			v4l2_err(&dev->v4l2_dev,
+				 "Failed to create new custom control id=%#x\n",
+				 hevc_d_ctrls[i].cfg.id);
+
+			v4l2_ctrl_handler_free(hdl);
+			kfree(ctx->ctrls);
+			return hdl->error;
+		}
+
+		ctx->ctrls[i] = ctrl;
+	}
+
+	ctx->fh.ctrl_handler = hdl;
+	v4l2_ctrl_handler_setup(hdl);
+
+	return 0;
+}
+
+static int hevc_d_request_validate(struct media_request *req)
+{
+	struct media_request_object *obj;
+	struct v4l2_ctrl_handler *parent_hdl, *hdl;
+	struct hevc_d_ctx *ctx = NULL;
+	struct v4l2_ctrl *ctrl_test;
+	unsigned int count;
+	unsigned int i;
+
+	list_for_each_entry(obj, &req->objects, list) {
+		struct vb2_buffer *vb;
+
+		if (vb2_request_object_is_buffer(obj)) {
+			vb = container_of(obj, struct vb2_buffer, req_obj);
+			ctx = vb2_get_drv_priv(vb->vb2_queue);
+
+			break;
+		}
+	}
+
+	if (!ctx)
+		return -ENOENT;
+
+	count = vb2_request_buffer_cnt(req);
+	if (!count) {
+		v4l2_info(&ctx->dev->v4l2_dev,
+			  "No buffer was provided with the request\n");
+		return -ENOENT;
+	} else if (count > 1) {
+		v4l2_info(&ctx->dev->v4l2_dev,
+			  "More than one buffer was provided with the request\n");
+		return -EINVAL;
+	}
+
+	parent_hdl = &ctx->hdl;
+
+	hdl = v4l2_ctrl_request_hdl_find(req, parent_hdl);
+	if (!hdl) {
+		v4l2_info(&ctx->dev->v4l2_dev, "Missing codec control(s)\n");
+		return -ENOENT;
+	}
+
+	for (i = 0; i < HEVC_D_CTRLS_COUNT; i++) {
+		if (!hevc_d_ctrls[i].required)
+			continue;
+
+		ctrl_test =
+			v4l2_ctrl_request_hdl_ctrl_find(hdl,
+							hevc_d_ctrls[i].cfg.id);
+		if (!ctrl_test) {
+			v4l2_info(&ctx->dev->v4l2_dev,
+				  "Missing required codec control\n");
+			v4l2_ctrl_request_hdl_put(hdl);
+			return -ENOENT;
+		}
+	}
+
+	v4l2_ctrl_request_hdl_put(hdl);
+
+	return vb2_request_validate(req);
+}
+
+static int hevc_d_open(struct file *file)
+{
+	struct hevc_d_dev *dev = video_drvdata(file);
+	struct hevc_d_ctx *ctx = NULL;
+	int ret;
+
+	if (mutex_lock_interruptible(&dev->dev_mutex))
+		return -ERESTARTSYS;
+
+	ctx = kzalloc(sizeof(*ctx), GFP_KERNEL);
+	if (!ctx) {
+		mutex_unlock(&dev->dev_mutex);
+		ret = -ENOMEM;
+		goto err_unlock;
+	}
+
+	mutex_init(&ctx->ctx_mutex);
+
+	v4l2_fh_init(&ctx->fh, video_devdata(file));
+	file->private_data = &ctx->fh;
+	ctx->dev = dev;
+
+	ret = hevc_d_init_ctrls(dev, ctx);
+	if (ret)
+		goto err_free;
+
+	ctx->fh.m2m_ctx = v4l2_m2m_ctx_init(dev->m2m_dev, ctx,
+					    &hevc_d_queue_init);
+	if (IS_ERR(ctx->fh.m2m_ctx)) {
+		ret = PTR_ERR(ctx->fh.m2m_ctx);
+		goto err_ctrls;
+	}
+
+	/* The only bit of format info that we can guess now is H265 src
+	 * Everything else we need more info for
+	 */
+	hevc_d_prepare_src_format(&ctx->src_fmt);
+
+	v4l2_fh_add(&ctx->fh);
+
+	mutex_unlock(&dev->dev_mutex);
+
+	return 0;
+
+err_ctrls:
+	v4l2_ctrl_handler_free(&ctx->hdl);
+	kfree(ctx->ctrls);
+err_free:
+	mutex_destroy(&ctx->ctx_mutex);
+	kfree(ctx);
+err_unlock:
+	mutex_unlock(&dev->dev_mutex);
+
+	return ret;
+}
+
+static int hevc_d_release(struct file *file)
+{
+	struct hevc_d_dev *dev = video_drvdata(file);
+	struct hevc_d_ctx *ctx = container_of(file->private_data,
+					      struct hevc_d_ctx, fh);
+
+	mutex_lock(&dev->dev_mutex);
+
+	v4l2_fh_del(&ctx->fh);
+	v4l2_m2m_ctx_release(ctx->fh.m2m_ctx);
+
+	v4l2_ctrl_handler_free(&ctx->hdl);
+	kfree(ctx->ctrls);
+
+	v4l2_fh_exit(&ctx->fh);
+	mutex_destroy(&ctx->ctx_mutex);
+
+	kfree(ctx);
+
+	mutex_unlock(&dev->dev_mutex);
+
+	return 0;
+}
+
+static const struct v4l2_file_operations hevc_d_fops = {
+	.owner		= THIS_MODULE,
+	.open		= hevc_d_open,
+	.release	= hevc_d_release,
+	.poll		= v4l2_m2m_fop_poll,
+	.unlocked_ioctl	= video_ioctl2,
+	.mmap		= v4l2_m2m_fop_mmap,
+};
+
+static const struct video_device hevc_d_video_device = {
+	.name		= HEVC_D_NAME,
+	.vfl_dir	= VFL_DIR_M2M,
+	.fops		= &hevc_d_fops,
+	.ioctl_ops	= &hevc_d_ioctl_ops,
+	.minor		= -1,
+	.release	= video_device_release_empty,
+	.device_caps	= V4L2_CAP_VIDEO_M2M_MPLANE | V4L2_CAP_STREAMING,
+};
+
+static const struct v4l2_m2m_ops hevc_d_m2m_ops = {
+	.device_run	= hevc_d_device_run,
+};
+
+static const struct media_device_ops hevc_d_m2m_media_ops = {
+	.req_validate	= hevc_d_request_validate,
+	.req_queue	= v4l2_m2m_request_queue,
+};
+
+static int hevc_d_probe(struct platform_device *pdev)
+{
+	struct hevc_d_dev *dev;
+	struct video_device *vfd;
+	int ret;
+
+	dev = devm_kzalloc(&pdev->dev, sizeof(*dev), GFP_KERNEL);
+	if (!dev)
+		return -ENOMEM;
+
+	dev->vfd = hevc_d_video_device;
+	dev->dev = &pdev->dev;
+	dev->pdev = pdev;
+
+	ret = 0;
+	ret = hevc_d_hw_probe(dev);
+	if (ret) {
+		dev_err(&pdev->dev, "Failed to probe hardware - %d\n", ret);
+		return ret;
+	}
+
+	mutex_init(&dev->dev_mutex);
+
+	ret = v4l2_device_register(&pdev->dev, &dev->v4l2_dev);
+	if (ret) {
+		dev_err(&pdev->dev, "Failed to register V4L2 device\n");
+		return ret;
+	}
+
+	vfd = &dev->vfd;
+	vfd->lock = &dev->dev_mutex;
+	vfd->v4l2_dev = &dev->v4l2_dev;
+
+	snprintf(vfd->name, sizeof(vfd->name), "%s", hevc_d_video_device.name);
+	video_set_drvdata(vfd, dev);
+
+	ret = dma_set_mask_and_coherent(dev->dev, DMA_BIT_MASK(36));
+	if (ret) {
+		v4l2_err(&dev->v4l2_dev,
+			 "Failed dma_set_mask_and_coherent\n");
+		goto err_v4l2;
+	}
+
+	dev->m2m_dev = v4l2_m2m_init(&hevc_d_m2m_ops);
+	if (IS_ERR(dev->m2m_dev)) {
+		v4l2_err(&dev->v4l2_dev,
+			 "Failed to initialize V4L2 M2M device\n");
+		ret = PTR_ERR(dev->m2m_dev);
+
+		goto err_v4l2;
+	}
+
+	dev->mdev.dev = &pdev->dev;
+	strscpy(dev->mdev.model, HEVC_D_NAME, sizeof(dev->mdev.model));
+	strscpy(dev->mdev.bus_info, "platform:" HEVC_D_NAME,
+		sizeof(dev->mdev.bus_info));
+
+	media_device_init(&dev->mdev);
+	dev->mdev.ops = &hevc_d_m2m_media_ops;
+	dev->v4l2_dev.mdev = &dev->mdev;
+
+	ret = video_register_device(vfd, VFL_TYPE_VIDEO, -1);
+	if (ret) {
+		v4l2_err(&dev->v4l2_dev, "Failed to register video device\n");
+		goto err_m2m;
+	}
+
+	v4l2_info(&dev->v4l2_dev,
+		  "Device registered as /dev/video%d\n", vfd->num);
+
+	ret = v4l2_m2m_register_media_controller(dev->m2m_dev, vfd,
+						 MEDIA_ENT_F_PROC_VIDEO_DECODER);
+	if (ret) {
+		v4l2_err(&dev->v4l2_dev,
+			 "Failed to initialize V4L2 M2M media controller\n");
+		goto err_video;
+	}
+
+	ret = media_device_register(&dev->mdev);
+	if (ret) {
+		v4l2_err(&dev->v4l2_dev, "Failed to register media device\n");
+		goto err_m2m_mc;
+	}
+
+	platform_set_drvdata(pdev, dev);
+
+	return 0;
+
+err_m2m_mc:
+	v4l2_m2m_unregister_media_controller(dev->m2m_dev);
+err_video:
+	video_unregister_device(&dev->vfd);
+err_m2m:
+	v4l2_m2m_release(dev->m2m_dev);
+err_v4l2:
+	v4l2_device_unregister(&dev->v4l2_dev);
+
+	return ret;
+}
+
+static void hevc_d_remove(struct platform_device *pdev)
+{
+	struct hevc_d_dev *dev = platform_get_drvdata(pdev);
+
+	if (media_devnode_is_registered(dev->mdev.devnode)) {
+		media_device_unregister(&dev->mdev);
+		v4l2_m2m_unregister_media_controller(dev->m2m_dev);
+		media_device_cleanup(&dev->mdev);
+	}
+
+	v4l2_m2m_release(dev->m2m_dev);
+	video_unregister_device(&dev->vfd);
+	v4l2_device_unregister(&dev->v4l2_dev);
+
+	hevc_d_hw_remove(dev);
+}
+
+static const struct of_device_id hevc_d_dt_match[] = {
+	{ .compatible = "raspberrypi,hevc-dec", },
+	{ /* sentinel */ }
+};
+MODULE_DEVICE_TABLE(of, hevc_d_dt_match);
+
+static struct platform_driver hevc_d_driver = {
+	.probe		= hevc_d_probe,
+	.remove		= hevc_d_remove,
+	.driver		= {
+		.name = HEVC_D_NAME,
+		.of_match_table	= of_match_ptr(hevc_d_dt_match),
+	},
+};
+module_platform_driver(hevc_d_driver);
+
+MODULE_LICENSE("GPL");
+MODULE_AUTHOR("John Cox <john.cox@raspberrypi.com>");
+MODULE_DESCRIPTION("Raspberry Pi HEVC V4L2 driver");
diff --git a/drivers/media/platform/raspberrypi/hevc_dec/hevc_d.h b/drivers/media/platform/raspberrypi/hevc_dec/hevc_d.h
new file mode 100644
index 000000000000..1c42b32c7a11
--- /dev/null
+++ b/drivers/media/platform/raspberrypi/hevc_dec/hevc_d.h
@@ -0,0 +1,190 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Raspberry Pi HEVC driver
+ *
+ * Copyright (C) 2024 Raspberry Pi Ltd
+ *
+ * Based on the Cedrus VPU driver, that is:
+ *
+ * Copyright (C) 2016 Florent Revest <florent.revest@free-electrons.com>
+ * Copyright (C) 2018 Paul Kocialkowski <paul.kocialkowski@bootlin.com>
+ * Copyright (C) 2018 Bootlin
+ */
+
+#ifndef _HEVC_D_H_
+#define _HEVC_D_H_
+
+#include <linux/clk.h>
+#include <linux/platform_device.h>
+#include <media/v4l2-ctrls.h>
+#include <media/v4l2-device.h>
+#include <media/v4l2-mem2mem.h>
+#include <media/videobuf2-v4l2.h>
+#include <media/videobuf2-dma-contig.h>
+
+#define HEVC_D_DEC_ENV_COUNT 6
+#define HEVC_D_P1BUF_COUNT 3
+#define HEVC_D_P2BUF_COUNT 3
+
+#define HEVC_D_NAME			"rpi-hevc-dec"
+
+#define HEVC_D_CAPABILITY_UNTILED	BIT(0)
+#define HEVC_D_CAPABILITY_H265_DEC	BIT(1)
+
+#define HEVC_D_QUIRK_NO_DMA_OFFSET	BIT(0)
+
+enum hevc_d_irq_status {
+	HEVC_D_IRQ_NONE,
+	HEVC_D_IRQ_ERROR,
+	HEVC_D_IRQ_OK,
+};
+
+struct hevc_d_control {
+	struct v4l2_ctrl_config cfg;
+	unsigned char		required:1;
+};
+
+struct hevc_d_h265_run {
+	u32 slice_ents;
+	const struct v4l2_ctrl_hevc_sps			*sps;
+	const struct v4l2_ctrl_hevc_pps			*pps;
+	const struct v4l2_ctrl_hevc_decode_params	*dec;
+	const struct v4l2_ctrl_hevc_slice_params	*slice_params;
+	const struct v4l2_ctrl_hevc_scaling_matrix	*scaling_matrix;
+};
+
+struct hevc_d_run {
+	struct vb2_v4l2_buffer	*src;
+	struct vb2_v4l2_buffer	*dst;
+
+	struct hevc_d_h265_run	h265;
+};
+
+struct hevc_d_buffer {
+	struct v4l2_m2m_buffer          m2m_buf;
+};
+
+struct hevc_d_dec_state;
+struct hevc_d_dec_env;
+
+struct hevc_d_gptr {
+	size_t size;
+	__u8 *ptr;
+	dma_addr_t addr;
+	unsigned long attrs;
+};
+
+struct hevc_d_dev;
+typedef void (*hevc_d_irq_callback)(struct hevc_d_dev *dev, void *ctx);
+
+struct hevc_d_q_aux;
+#define HEVC_D_AUX_ENT_COUNT VB2_MAX_FRAME
+
+struct hevc_d_ctx {
+	struct v4l2_fh			fh;
+	struct hevc_d_dev		*dev;
+
+	struct v4l2_pix_format_mplane	src_fmt;
+	struct v4l2_pix_format_mplane	dst_fmt;
+	int dst_fmt_set;
+
+	int				src_stream_on;
+	int				dst_stream_on;
+
+	/*
+	 * fatal_err is set if an error has occurred s.t. decode cannot
+	 * continue (such as running out of CMA)
+	 */
+	int fatal_err;
+
+	/* Lock for queue operations */
+	struct mutex			ctx_mutex;
+
+	struct v4l2_ctrl_handler	hdl;
+	struct v4l2_ctrl		**ctrls;
+
+	/*
+	 * state contains stuff that is only needed in phase0
+	 * it could be held in dec_env but that would be wasteful
+	 */
+	struct hevc_d_dec_state *state;
+	struct hevc_d_dec_env *dec0;
+
+	/* Spinlock protecting dec_free */
+	spinlock_t dec_lock;
+	struct hevc_d_dec_env *dec_free;
+
+	struct hevc_d_dec_env *dec_pool;
+
+	unsigned int p1idx;
+	atomic_t p1out;
+	struct hevc_d_gptr bitbufs[HEVC_D_P1BUF_COUNT];
+
+	unsigned int p2idx;
+	struct hevc_d_gptr pu_bufs[HEVC_D_P2BUF_COUNT];
+	struct hevc_d_gptr coeff_bufs[HEVC_D_P2BUF_COUNT];
+
+	/* Spinlock protecting aux_free */
+	spinlock_t aux_lock;
+	struct hevc_d_q_aux *aux_free;
+
+	struct hevc_d_q_aux *aux_ents[HEVC_D_AUX_ENT_COUNT];
+
+	unsigned int colmv_stride;
+	unsigned int colmv_picsize;
+};
+
+struct hevc_d_variant {
+	unsigned int	capabilities;
+	unsigned int	quirks;
+	unsigned int	mod_rate;
+};
+
+struct hevc_d_hw_irq_ent;
+
+#define HEVC_D_ICTL_ENABLE_UNLIMITED (-1)
+
+struct hevc_d_hw_irq_ctrl {
+	/* Spinlock protecting claim and tail */
+	spinlock_t lock;
+	struct hevc_d_hw_irq_ent *claim;
+	struct hevc_d_hw_irq_ent *tail;
+
+	/* Ent for pending irq - also prevents sched */
+	struct hevc_d_hw_irq_ent *irq;
+	/* Non-zero => do not start a new job - outer layer sched pending */
+	int no_sched;
+	/* Enable count. -1 always OK, 0 do not sched, +ve shed & count down */
+	int enable;
+	/* Thread CB requested */
+	bool thread_reqed;
+};
+
+struct hevc_d_dev {
+	struct v4l2_device	v4l2_dev;
+	struct video_device	vfd;
+	struct media_device	mdev;
+	struct media_pad	pad[2];
+	struct platform_device	*pdev;
+	struct device		*dev;
+	struct v4l2_m2m_dev	*m2m_dev;
+
+	/* Device file mutex */
+	struct mutex		dev_mutex;
+
+	void __iomem		*base_irq;
+	void __iomem		*base_h265;
+
+	struct clk		*clock;
+	unsigned long		max_clock_rate;
+
+	int			cache_align;
+
+	struct hevc_d_hw_irq_ctrl ic_active1;
+	struct hevc_d_hw_irq_ctrl ic_active2;
+};
+
+struct v4l2_ctrl *hevc_d_find_ctrl(struct hevc_d_ctx *ctx, u32 id);
+void *hevc_d_find_control_data(struct hevc_d_ctx *ctx, u32 id);
+
+#endif
diff --git a/drivers/media/platform/raspberrypi/hevc_dec/hevc_d_h265.c b/drivers/media/platform/raspberrypi/hevc_dec/hevc_d_h265.c
new file mode 100644
index 000000000000..8b714c30c803
--- /dev/null
+++ b/drivers/media/platform/raspberrypi/hevc_dec/hevc_d_h265.c
@@ -0,0 +1,2629 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Raspberry Pi HEVC driver
+ *
+ * Copyright (C) 2020 Raspberry Pi Ltd
+ *
+ * Based on the Cedrus VPU driver, that is:
+ *
+ * Copyright (C) 2016 Florent Revest <florent.revest@free-electrons.com>
+ * Copyright (C) 2018 Paul Kocialkowski <paul.kocialkowski@bootlin.com>
+ * Copyright (C) 2018 Bootlin
+ */
+
+#include <linux/delay.h>
+#include <linux/types.h>
+
+#include <media/videobuf2-dma-contig.h>
+
+#include "hevc_d.h"
+#include "hevc_d_h265.h"
+#include "hevc_d_hw.h"
+#include "hevc_d_video.h"
+
+enum hevc_slice_type {
+	HEVC_SLICE_B = 0,
+	HEVC_SLICE_P = 1,
+	HEVC_SLICE_I = 2,
+};
+
+enum hevc_layer { L0 = 0, L1 = 1 };
+
+static int gptr_alloc(struct hevc_d_dev *const dev, struct hevc_d_gptr *gptr,
+		      size_t size, unsigned long attrs)
+{
+	gptr->size = size;
+	gptr->attrs = attrs;
+	gptr->addr = 0;
+	gptr->ptr = dma_alloc_attrs(dev->dev, gptr->size, &gptr->addr,
+				    GFP_KERNEL, gptr->attrs);
+	return !gptr->ptr ? -ENOMEM : 0;
+}
+
+static void gptr_free(struct hevc_d_dev *const dev,
+		      struct hevc_d_gptr *const gptr)
+{
+	if (gptr->ptr)
+		dma_free_attrs(dev->dev, gptr->size, gptr->ptr, gptr->addr,
+			       gptr->attrs);
+	gptr->size = 0;
+	gptr->ptr = NULL;
+	gptr->addr = 0;
+	gptr->attrs = 0;
+}
+
+/* Realloc but do not copy
+ *
+ * Frees then allocs.
+ * If the alloc fails then it attempts to re-allocote the old size
+ * On error then check gptr->ptr to determine if anything is currently
+ * allocated.
+ */
+static int gptr_realloc_new(struct hevc_d_dev * const dev,
+			    struct hevc_d_gptr * const gptr, size_t size)
+{
+	const size_t old_size = gptr->size;
+
+	if (size == gptr->size)
+		return 0;
+
+	if (gptr->ptr)
+		dma_free_attrs(dev->dev, gptr->size, gptr->ptr,
+			       gptr->addr, gptr->attrs);
+
+	gptr->addr = 0;
+	gptr->size = size;
+	gptr->ptr = dma_alloc_attrs(dev->dev, gptr->size,
+				    &gptr->addr, GFP_KERNEL, gptr->attrs);
+
+	if (!gptr->ptr) {
+		gptr->addr = 0;
+		gptr->size = old_size;
+		gptr->ptr = dma_alloc_attrs(dev->dev, gptr->size,
+					    &gptr->addr, GFP_KERNEL, gptr->attrs);
+		if (!gptr->ptr) {
+			gptr->size = 0;
+			gptr->addr = 0;
+			gptr->attrs = 0;
+		}
+		return -ENOMEM;
+	}
+
+	return 0;
+}
+
+static size_t next_size(const size_t x)
+{
+	return hevc_d_round_up_size(x + 1);
+}
+
+#define NUM_SCALING_FACTORS 4064 /* Not a typo = 0xbe0 + 0x400 */
+
+#define AXI_BASE64 0
+
+#define PROB_BACKUP ((20 << 12) + (20 << 6) + (0 << 0))
+#define PROB_RELOAD ((20 << 12) + (20 << 0) + (0 << 6))
+
+#define HEVC_MAX_REFS V4L2_HEVC_DPB_ENTRIES_NUM_MAX
+
+struct rpi_cmd {
+	u32 addr;
+	u32 data;
+} __packed;
+
+struct hevc_d_q_aux {
+	unsigned int refcount;
+	unsigned int q_index;
+	struct hevc_d_q_aux *next;
+	struct hevc_d_gptr col;
+};
+
+enum hevc_d_decode_state {
+	HEVC_D_DECODE_SLICE_START,
+	HEVC_D_DECODE_SLICE_CONTINUE,
+	HEVC_D_DECODE_ERROR_CONTINUE,
+	HEVC_D_DECODE_ERROR_DONE,
+	HEVC_D_DECODE_PHASE1,
+	HEVC_D_DECODE_END,
+};
+
+struct hevc_d_dec_env {
+	struct hevc_d_ctx *ctx;
+	struct hevc_d_dec_env *next;
+
+	enum hevc_d_decode_state state;
+	unsigned int decode_order;
+	int p1_status;		/* P1 status - what to realloc */
+
+	struct rpi_cmd *cmd_fifo;
+	unsigned int cmd_len, cmd_max;
+	unsigned int num_slice_msgs;
+	unsigned int pic_width_in_ctbs_y;
+	unsigned int pic_height_in_ctbs_y;
+	unsigned int dpbno_col;
+	u32 reg_slicestart;
+	int collocated_from_l0_flag;
+	/*
+	 * Last CTB/Tile X,Y processed by (wpp_)entry_point
+	 * Could be in _state as P0 only but needs updating where _state
+	 * is const
+	 */
+	unsigned int entry_ctb_x;
+	unsigned int entry_ctb_y;
+	unsigned int entry_tile_x;
+	unsigned int entry_tile_y;
+	unsigned int entry_qp;
+	u32 entry_slice;
+
+	u32 rpi_config2;
+	u32 rpi_framesize;
+	u32 rpi_currpoc;
+
+	struct vb2_v4l2_buffer *frame_buf;
+	struct vb2_v4l2_buffer *src_buf;
+	dma_addr_t frame_luma_addr;
+	unsigned int luma_stride;
+	dma_addr_t frame_chroma_addr;
+	unsigned int chroma_stride;
+	dma_addr_t ref_addrs[16][2];
+	struct hevc_d_q_aux *frame_aux;
+	struct hevc_d_q_aux *col_aux;
+
+	dma_addr_t cmd_addr;
+	size_t cmd_size;
+
+	dma_addr_t pu_base_vc;
+	dma_addr_t coeff_base_vc;
+	u32 pu_stride;
+	u32 coeff_stride;
+
+	struct hevc_d_gptr *bit_copy_gptr;
+	size_t bit_copy_len;
+
+#define SLICE_MSGS_MAX (2 * HEVC_MAX_REFS * 8 + 3)
+	u16 slice_msgs[SLICE_MSGS_MAX];
+	u8 scaling_factors[NUM_SCALING_FACTORS];
+
+	struct media_request *req_pin;
+	struct hevc_d_hw_irq_ent irq_ent;
+};
+
+struct hevc_d_dec_state {
+	struct v4l2_ctrl_hevc_sps sps;
+	struct v4l2_ctrl_hevc_pps pps;
+
+	/* Helper vars & tables derived from sps/pps */
+	unsigned int log2_ctb_size;     /* log2 width of a CTB */
+	unsigned int ctb_width;         /* Width in CTBs */
+	unsigned int ctb_height;        /* Height in CTBs */
+	unsigned int ctb_size;          /* Pic area in CTBs */
+	unsigned int tile_width;        /* Width in tiles */
+	unsigned int tile_height;       /* Height in tiles */
+
+	int *col_bd;
+	int *row_bd;
+	int *ctb_addr_rs_to_ts;
+	int *ctb_addr_ts_to_rs;
+
+	/* Aux starage for DPB */
+	struct hevc_d_q_aux *ref_aux[HEVC_MAX_REFS];
+	struct hevc_d_q_aux *frame_aux;
+
+	/* Slice vars */
+	unsigned int slice_idx;
+	bool slice_temporal_mvp;  /* Slice flag but constant for frame */
+	bool use_aux;
+	bool mk_aux;
+
+	/* Temp vars per run - don't actually need to persist */
+	u8 *src_buf;
+	dma_addr_t src_addr;
+	const struct v4l2_ctrl_hevc_slice_params *sh;
+	const struct v4l2_ctrl_hevc_decode_params *dec;
+	unsigned int nb_refs[2];
+	unsigned int slice_qp;
+	unsigned int max_num_merge_cand; // 0 if I-slice
+	bool dependent_slice_segment_flag;
+
+	unsigned int start_ts;          /* slice_segment_addr -> ts */
+	unsigned int start_ctb_x;       /* CTB X,Y of start_ts */
+	unsigned int start_ctb_y;
+	unsigned int prev_ctb_x;        /* CTB X,Y of start_ts - 1 */
+	unsigned int prev_ctb_y;
+};
+
+static inline int clip_int(const int x, const int lo, const int hi)
+{
+	return x < lo ? lo : x > hi ? hi : x;
+}
+
+/* Phase 1 command and bit FIFOs */
+static int cmds_check_space(struct hevc_d_dec_env *const de, unsigned int n)
+{
+	struct rpi_cmd *a;
+	unsigned int newmax;
+
+	if (n > 0x100000) {
+		v4l2_err(&de->ctx->dev->v4l2_dev,
+			 "%s: n %u implausible\n", __func__, n);
+		return -ENOMEM;
+	}
+
+	if (de->cmd_len + n <= de->cmd_max)
+		return 0;
+
+	newmax = roundup_pow_of_two(de->cmd_len + n);
+
+	a = krealloc(de->cmd_fifo, newmax * sizeof(struct rpi_cmd),
+		     GFP_KERNEL);
+	if (!a) {
+		v4l2_err(&de->ctx->dev->v4l2_dev,
+			 "Failed cmd buffer realloc from %u to %u\n",
+			 de->cmd_max, newmax);
+		return -ENOMEM;
+	}
+	v4l2_info(&de->ctx->dev->v4l2_dev,
+		  "cmd buffer realloc from %u to %u\n", de->cmd_max, newmax);
+
+	de->cmd_fifo = a;
+	de->cmd_max = newmax;
+	return 0;
+}
+
+// ???? u16 addr - put in u32
+static void p1_apb_write(struct hevc_d_dec_env *const de, const u16 addr,
+			 const u32 data)
+{
+	if (de->cmd_len >= de->cmd_max) {
+		v4l2_err(&de->ctx->dev->v4l2_dev,
+			 "%s: Overflow @ %d\n", __func__, de->cmd_len);
+		return;
+	}
+
+	de->cmd_fifo[de->cmd_len].addr = addr;
+	de->cmd_fifo[de->cmd_len].data = data;
+
+	de->cmd_len++;
+}
+
+static int ctb_to_tile(unsigned int ctb, unsigned int *bd, int num)
+{
+	int i;
+
+	for (i = 1; ctb >= bd[i]; i++)
+		; /* bd[] has num+1 elements; bd[0]=0; */
+
+	return i - 1;
+}
+
+static unsigned int ctb_to_tile_x(const struct hevc_d_dec_state *const s,
+				  const unsigned int ctb_x)
+{
+	return ctb_to_tile(ctb_x, s->col_bd, s->tile_width);
+}
+
+static unsigned int ctb_to_tile_y(const struct hevc_d_dec_state *const s,
+				  const unsigned int ctb_y)
+{
+	return ctb_to_tile(ctb_y, s->row_bd, s->tile_height);
+}
+
+static void aux_q_free(struct hevc_d_ctx *const ctx,
+		       struct hevc_d_q_aux *const aq)
+{
+	struct hevc_d_dev *const dev = ctx->dev;
+
+	gptr_free(dev, &aq->col);
+	kfree(aq);
+}
+
+static struct hevc_d_q_aux *aux_q_alloc(struct hevc_d_ctx *const ctx,
+					const unsigned int q_index)
+{
+	struct hevc_d_dev *const dev = ctx->dev;
+	struct hevc_d_q_aux *const aq = kzalloc(sizeof(*aq), GFP_KERNEL);
+
+	if (!aq)
+		return NULL;
+
+	if (gptr_alloc(dev, &aq->col, ctx->colmv_picsize,
+		       DMA_ATTR_FORCE_CONTIGUOUS | DMA_ATTR_NO_KERNEL_MAPPING))
+		goto fail;
+
+	/*
+	 * Spinlock not required as called in P0 only and
+	 * aux checks done by _new
+	 */
+	aq->refcount = 1;
+	aq->q_index = q_index;
+	ctx->aux_ents[q_index] = aq;
+	return aq;
+
+fail:
+	kfree(aq);
+	return NULL;
+}
+
+static struct hevc_d_q_aux *aux_q_new(struct hevc_d_ctx *const ctx,
+				      const unsigned int q_index)
+{
+	struct hevc_d_q_aux *aq;
+	unsigned long lockflags;
+
+	spin_lock_irqsave(&ctx->aux_lock, lockflags);
+	/*
+	 * If we already have this allocated to a slot then use that
+	 * and assume that it will all work itself out in the pipeline
+	 */
+	aq = ctx->aux_ents[q_index];
+	if (aq) {
+		++aq->refcount;
+	} else {
+		aq = ctx->aux_free;
+		if (aq) {
+			ctx->aux_free = aq->next;
+			aq->next = NULL;
+			aq->refcount = 1;
+			aq->q_index = q_index;
+			ctx->aux_ents[q_index] = aq;
+		}
+	}
+	spin_unlock_irqrestore(&ctx->aux_lock, lockflags);
+
+	if (!aq)
+		aq = aux_q_alloc(ctx, q_index);
+
+	return aq;
+}
+
+static struct hevc_d_q_aux *aux_q_ref_idx(struct hevc_d_ctx *const ctx,
+					  const int q_index)
+{
+	unsigned long lockflags;
+	struct hevc_d_q_aux *aq;
+
+	spin_lock_irqsave(&ctx->aux_lock, lockflags);
+	aq = ctx->aux_ents[q_index];
+	if (aq)
+		++aq->refcount;
+	spin_unlock_irqrestore(&ctx->aux_lock, lockflags);
+
+	return aq;
+}
+
+static struct hevc_d_q_aux *aux_q_ref(struct hevc_d_ctx *const ctx,
+				      struct hevc_d_q_aux *const aq)
+{
+	unsigned long lockflags;
+
+	if (aq) {
+		spin_lock_irqsave(&ctx->aux_lock, lockflags);
+		++aq->refcount;
+		spin_unlock_irqrestore(&ctx->aux_lock, lockflags);
+	}
+	return aq;
+}
+
+static void aux_q_release(struct hevc_d_ctx *const ctx,
+			  struct hevc_d_q_aux **const paq)
+{
+	struct hevc_d_q_aux *const aq = *paq;
+	unsigned long lockflags;
+
+	if (!aq)
+		return;
+
+	*paq = NULL;
+
+	spin_lock_irqsave(&ctx->aux_lock, lockflags);
+	if (--aq->refcount == 0) {
+		aq->next = ctx->aux_free;
+		ctx->aux_free = aq;
+		ctx->aux_ents[aq->q_index] = NULL;
+		aq->q_index = ~0U;
+	}
+	spin_unlock_irqrestore(&ctx->aux_lock, lockflags);
+}
+
+static void aux_q_init(struct hevc_d_ctx *const ctx)
+{
+	spin_lock_init(&ctx->aux_lock);
+	ctx->aux_free = NULL;
+}
+
+static void aux_q_uninit(struct hevc_d_ctx *const ctx)
+{
+	struct hevc_d_q_aux *aq;
+
+	ctx->colmv_picsize = 0;
+	ctx->colmv_stride = 0;
+	while ((aq = ctx->aux_free) != NULL) {
+		ctx->aux_free = aq->next;
+		aux_q_free(ctx, aq);
+	}
+}
+
+/*
+ * Initialisation process for context variables (CABAC init)
+ * see H.265 9.3.2.2
+ *
+ * N.B. If comparing with FFmpeg note that this h/w uses slightly different
+ * offsets to FFmpegs array
+ */
+
+/* Actual number of values */
+#define RPI_PROB_VALS 154U
+/* Rounded up as we copy words */
+#define RPI_PROB_ARRAY_SIZE ((154 + 3) & ~3)
+
+/* Initialiser values - see tables H.265 9-4 through 9-42 */
+static const u8 prob_init[3][156] = {
+	{
+		153, 200, 139, 141, 157, 154, 154, 154, 154, 154, 184, 154, 154,
+		154, 184, 63,  154, 154, 154, 154, 154, 154, 154, 154, 154, 154,
+		154, 154, 154, 153, 138, 138, 111, 141, 94,  138, 182, 154, 154,
+		154, 140, 92,  137, 138, 140, 152, 138, 139, 153, 74,  149, 92,
+		139, 107, 122, 152, 140, 179, 166, 182, 140, 227, 122, 197, 110,
+		110, 124, 125, 140, 153, 125, 127, 140, 109, 111, 143, 127, 111,
+		79,  108, 123, 63,  110, 110, 124, 125, 140, 153, 125, 127, 140,
+		109, 111, 143, 127, 111, 79,  108, 123, 63,  91,  171, 134, 141,
+		138, 153, 136, 167, 152, 152, 139, 139, 111, 111, 125, 110, 110,
+		94,  124, 108, 124, 107, 125, 141, 179, 153, 125, 107, 125, 141,
+		179, 153, 125, 107, 125, 141, 179, 153, 125, 140, 139, 182, 182,
+		152, 136, 152, 136, 153, 136, 139, 111, 136, 139, 111, 0,   0,
+	},
+	{
+		153, 185, 107, 139, 126, 197, 185, 201, 154, 149, 154, 139, 154,
+		154, 154, 152, 110, 122, 95,  79,  63,  31,  31,  153, 153, 168,
+		140, 198, 79,  124, 138, 94,  153, 111, 149, 107, 167, 154, 154,
+		154, 154, 196, 196, 167, 154, 152, 167, 182, 182, 134, 149, 136,
+		153, 121, 136, 137, 169, 194, 166, 167, 154, 167, 137, 182, 125,
+		110, 94,  110, 95,  79,  125, 111, 110, 78,  110, 111, 111, 95,
+		94,  108, 123, 108, 125, 110, 94,  110, 95,  79,  125, 111, 110,
+		78,  110, 111, 111, 95,  94,  108, 123, 108, 121, 140, 61,  154,
+		107, 167, 91,  122, 107, 167, 139, 139, 155, 154, 139, 153, 139,
+		123, 123, 63,  153, 166, 183, 140, 136, 153, 154, 166, 183, 140,
+		136, 153, 154, 166, 183, 140, 136, 153, 154, 170, 153, 123, 123,
+		107, 121, 107, 121, 167, 151, 183, 140, 151, 183, 140, 0,   0,
+	},
+	{
+		153, 160, 107, 139, 126, 197, 185, 201, 154, 134, 154, 139, 154,
+		154, 183, 152, 154, 137, 95,  79,  63,  31,  31,  153, 153, 168,
+		169, 198, 79,  224, 167, 122, 153, 111, 149, 92,  167, 154, 154,
+		154, 154, 196, 167, 167, 154, 152, 167, 182, 182, 134, 149, 136,
+		153, 121, 136, 122, 169, 208, 166, 167, 154, 152, 167, 182, 125,
+		110, 124, 110, 95,  94,  125, 111, 111, 79,  125, 126, 111, 111,
+		79,  108, 123, 93,  125, 110, 124, 110, 95,  94,  125, 111, 111,
+		79,  125, 126, 111, 111, 79,  108, 123, 93,  121, 140, 61,  154,
+		107, 167, 91,  107, 107, 167, 139, 139, 170, 154, 139, 153, 139,
+		123, 123, 63,  124, 166, 183, 140, 136, 153, 154, 166, 183, 140,
+		136, 153, 154, 166, 183, 140, 136, 153, 154, 170, 153, 138, 138,
+		122, 121, 122, 121, 167, 151, 183, 140, 151, 183, 140, 0,   0,
+	},
+};
+
+#define CMDS_WRITE_PROB ((RPI_PROB_ARRAY_SIZE / 4) + 1)
+
+static void write_prob(struct hevc_d_dec_env *const de,
+		       const struct hevc_d_dec_state *const s)
+{
+	const unsigned int init_type =
+		((s->sh->flags & V4L2_HEVC_SLICE_PARAMS_FLAG_CABAC_INIT) != 0 &&
+		 s->sh->slice_type != HEVC_SLICE_I) ?
+			s->sh->slice_type + 1 :
+			2 - s->sh->slice_type;
+	const int q = clip_int(s->slice_qp, 0, 51);
+	const u8 *p = prob_init[init_type];
+	u8 dst[RPI_PROB_ARRAY_SIZE];
+	unsigned int i;
+
+	for (i = 0; i < RPI_PROB_VALS; i++) {
+		int init_value = p[i];
+		int m = (init_value >> 4) * 5 - 45;
+		int n = ((init_value & 15) << 3) - 16;
+		int pre = 2 * (((m * q) >> 4) + n) - 127;
+
+		pre ^= pre >> 31;
+		if (pre > 124)
+			pre = 124 + (pre & 1);
+		dst[i] = pre;
+	}
+	for (i = RPI_PROB_VALS; i != RPI_PROB_ARRAY_SIZE; ++i)
+		dst[i] = 0;
+
+	for (i = 0; i < RPI_PROB_ARRAY_SIZE; i += 4)
+		p1_apb_write(de, 0x1000 + i,
+			     dst[i] + (dst[i + 1] << 8) + (dst[i + 2] << 16) +
+				     (dst[i + 3] << 24));
+
+	/*
+	 * Having written the prob array back it up
+	 * This is not always needed but is a small overhead that simplifies
+	 * (and speeds up) some multi-tile & WPP scenarios
+	 * There are no scenarios where having written a prob we ever want
+	 * a previous (non-initial) state back
+	 */
+	p1_apb_write(de, RPI_TRANSFER, PROB_BACKUP);
+}
+
+#define CMDS_WRITE_SCALING_FACTORS NUM_SCALING_FACTORS
+static void write_scaling_factors(struct hevc_d_dec_env *const de)
+{
+	const u8 *p = (u8 *)de->scaling_factors;
+	int i;
+
+	for (i = 0; i < NUM_SCALING_FACTORS; i += 4, p += 4)
+		p1_apb_write(de, 0x2000 + i,
+			     p[0] + (p[1] << 8) + (p[2] << 16) + (p[3] << 24));
+}
+
+static inline __u32 dma_to_axi_addr(dma_addr_t a)
+{
+	return (__u32)(a >> 6);
+}
+
+#define CMDS_WRITE_BITSTREAM 4
+static int write_bitstream(struct hevc_d_dec_env *const de,
+			   const struct hevc_d_dec_state *const s)
+{
+	// FIXME!!!!
+	// Note that FFmpeg V4L2 does not remove emulation prevention bytes,
+	// so this is matched in the configuration here.
+	// Whether that is the correct behaviour or not is not clear in the
+	// spec.
+	const int rpi_use_emu = 1;
+	unsigned int offset = s->sh->data_byte_offset;
+	const unsigned int len = (s->sh->bit_size + 7) / 8 - offset;
+	dma_addr_t addr;
+
+	if (s->src_addr != 0) {
+		addr = s->src_addr + offset;
+	} else {
+		if (len + de->bit_copy_len > de->bit_copy_gptr->size) {
+			v4l2_warn(&de->ctx->dev->v4l2_dev,
+				  "Bit copy buffer overflow: size=%zu, offset=%zu, len=%u\n",
+				  de->bit_copy_gptr->size,
+				  de->bit_copy_len, len);
+			return -ENOMEM;
+		}
+		memcpy(de->bit_copy_gptr->ptr + de->bit_copy_len,
+		       s->src_buf + offset, len);
+		addr = de->bit_copy_gptr->addr + de->bit_copy_len;
+		de->bit_copy_len += (len + 63) & ~63;
+	}
+	offset = addr & 63;
+
+	p1_apb_write(de, RPI_BFBASE, dma_to_axi_addr(addr));
+	p1_apb_write(de, RPI_BFNUM, len);
+	p1_apb_write(de, RPI_BFCONTROL, offset + (1 << 7)); // Stop
+	p1_apb_write(de, RPI_BFCONTROL, offset + (rpi_use_emu << 6));
+	return 0;
+}
+
+/*
+ * The slice constant part of the slice register - width and height need to
+ * be ORed in later as they are per-tile / WPP-row
+ */
+static u32 slice_reg_const(const struct hevc_d_dec_state *const s)
+{
+	u32 x = (s->max_num_merge_cand << 0) |
+		(s->nb_refs[L0] << 4) |
+		(s->nb_refs[L1] << 8) |
+		(s->sh->slice_type << 12);
+
+	if (s->sh->flags & V4L2_HEVC_SLICE_PARAMS_FLAG_SLICE_SAO_LUMA)
+		x |= BIT(14);
+	if (s->sh->flags & V4L2_HEVC_SLICE_PARAMS_FLAG_SLICE_SAO_CHROMA)
+		x |= BIT(15);
+	if (s->sh->slice_type == HEVC_SLICE_B &&
+	    (s->sh->flags & V4L2_HEVC_SLICE_PARAMS_FLAG_MVD_L1_ZERO))
+		x |= BIT(16);
+
+	return x;
+}
+
+#define CMDS_NEW_SLICE_SEGMENT (4 + CMDS_WRITE_SCALING_FACTORS)
+
+static void new_slice_segment(struct hevc_d_dec_env *const de,
+			      const struct hevc_d_dec_state *const s)
+{
+	const struct v4l2_ctrl_hevc_sps *const sps = &s->sps;
+	const struct v4l2_ctrl_hevc_pps *const pps = &s->pps;
+
+	p1_apb_write(de,
+		     RPI_SPS0,
+		     ((sps->log2_min_luma_coding_block_size_minus3 + 3) << 0) |
+		     (s->log2_ctb_size << 4) |
+		     ((sps->log2_min_luma_transform_block_size_minus2 + 2)
+							<< 8) |
+		     ((sps->log2_min_luma_transform_block_size_minus2 + 2 +
+		       sps->log2_diff_max_min_luma_transform_block_size)
+						<< 12) |
+		     ((sps->bit_depth_luma_minus8 + 8) << 16) |
+		     ((sps->bit_depth_chroma_minus8 + 8) << 20) |
+		     (sps->max_transform_hierarchy_depth_intra << 24) |
+		     (sps->max_transform_hierarchy_depth_inter << 28));
+
+	p1_apb_write(de,
+		     RPI_SPS1,
+		     ((sps->pcm_sample_bit_depth_luma_minus1 + 1) << 0) |
+		     ((sps->pcm_sample_bit_depth_chroma_minus1 + 1) << 4) |
+		     ((sps->log2_min_pcm_luma_coding_block_size_minus3 + 3)
+						<< 8) |
+		     ((sps->log2_min_pcm_luma_coding_block_size_minus3 + 3 +
+		       sps->log2_diff_max_min_pcm_luma_coding_block_size)
+						<< 12) |
+		     (((sps->flags & V4L2_HEVC_SPS_FLAG_SEPARATE_COLOUR_PLANE) ?
+				0 : sps->chroma_format_idc) << 16) |
+		     ((!!(sps->flags & V4L2_HEVC_SPS_FLAG_AMP_ENABLED)) << 18) |
+		     ((!!(sps->flags & V4L2_HEVC_SPS_FLAG_PCM_ENABLED)) << 19) |
+		     ((!!(sps->flags & V4L2_HEVC_SPS_FLAG_SCALING_LIST_ENABLED))
+						<< 20) |
+		     ((!!(sps->flags &
+			   V4L2_HEVC_SPS_FLAG_STRONG_INTRA_SMOOTHING_ENABLED))
+						<< 21));
+
+	p1_apb_write(de,
+		     RPI_PPS,
+		     ((s->log2_ctb_size - pps->diff_cu_qp_delta_depth) << 0) |
+		     ((!!(pps->flags & V4L2_HEVC_PPS_FLAG_CU_QP_DELTA_ENABLED))
+						 << 4) |
+		     ((!!(pps->flags &
+				V4L2_HEVC_PPS_FLAG_TRANSQUANT_BYPASS_ENABLED))
+						 << 5) |
+		     ((!!(pps->flags & V4L2_HEVC_PPS_FLAG_TRANSFORM_SKIP_ENABLED))
+						 << 6) |
+		     ((!!(pps->flags &
+				V4L2_HEVC_PPS_FLAG_SIGN_DATA_HIDING_ENABLED))
+						<< 7) |
+		     (((pps->pps_cb_qp_offset + s->sh->slice_cb_qp_offset) & 255)
+						<< 8) |
+		     (((pps->pps_cr_qp_offset + s->sh->slice_cr_qp_offset) & 255)
+						<< 16) |
+		     ((!!(pps->flags &
+				V4L2_HEVC_PPS_FLAG_CONSTRAINED_INTRA_PRED))
+						<< 24));
+
+	if (!s->start_ts &&
+	    (sps->flags & V4L2_HEVC_SPS_FLAG_SCALING_LIST_ENABLED) != 0)
+		write_scaling_factors(de);
+
+	if (!s->dependent_slice_segment_flag) {
+		int ctb_col = s->sh->slice_segment_addr %
+							de->pic_width_in_ctbs_y;
+		int ctb_row = s->sh->slice_segment_addr /
+							de->pic_width_in_ctbs_y;
+
+		de->reg_slicestart = (ctb_col << 0) + (ctb_row << 16);
+	}
+
+	p1_apb_write(de, RPI_SLICESTART, de->reg_slicestart);
+}
+
+/* Slice messages */
+
+static void msg_slice(struct hevc_d_dec_env *const de, const u16 msg)
+{
+	de->slice_msgs[de->num_slice_msgs++] = msg;
+}
+
+#define CMDS_PROGRAM_SLICECMDS (1 + SLICE_MSGS_MAX)
+static void program_slicecmds(struct hevc_d_dec_env *const de,
+			      const int sliceid)
+{
+	int i;
+
+	p1_apb_write(de, RPI_SLICECMDS, de->num_slice_msgs + (sliceid << 8));
+
+	for (i = 0; i < de->num_slice_msgs; i++)
+		p1_apb_write(de, 0x4000 + 4 * i, de->slice_msgs[i] & 0xffff);
+}
+
+/* NoBackwardPredictionFlag 8.3.5 - Simply checks POCs */
+static int has_backward(const struct v4l2_hevc_dpb_entry *const dpb,
+			const __u8 *const idx, const unsigned int n,
+			const s32 cur_poc)
+{
+	unsigned int i;
+
+	for (i = 0; i < n; ++i) {
+		if (cur_poc < dpb[idx[i]].pic_order_cnt_val)
+			return 0;
+	}
+	return 1;
+}
+
+static void pre_slice_decode(struct hevc_d_dec_env *const de,
+			     const struct hevc_d_dec_state *const s)
+{
+	const struct v4l2_ctrl_hevc_slice_params *const sh = s->sh;
+	const struct v4l2_ctrl_hevc_decode_params *const dec = s->dec;
+	int weighted_pred_flag, idx;
+	u16 cmd_slice;
+	unsigned int collocated_from_l0_flag;
+
+	de->num_slice_msgs = 0;
+
+	cmd_slice = 0;
+	if (sh->slice_type == HEVC_SLICE_I)
+		cmd_slice = 1;
+	if (sh->slice_type == HEVC_SLICE_P)
+		cmd_slice = 2;
+	if (sh->slice_type == HEVC_SLICE_B)
+		cmd_slice = 3;
+
+	cmd_slice |= (s->nb_refs[L0] << 2) | (s->nb_refs[L1] << 6) |
+		     (s->max_num_merge_cand << 11);
+
+	collocated_from_l0_flag =
+		!s->slice_temporal_mvp ||
+		sh->slice_type != HEVC_SLICE_B ||
+		(sh->flags & V4L2_HEVC_SLICE_PARAMS_FLAG_COLLOCATED_FROM_L0);
+	cmd_slice |= collocated_from_l0_flag << 14;
+
+	if (sh->slice_type == HEVC_SLICE_P || sh->slice_type == HEVC_SLICE_B) {
+		/* Flag to say all reference pictures are from the past */
+		const int no_backward_pred_flag =
+			has_backward(dec->dpb, sh->ref_idx_l0, s->nb_refs[L0],
+				     sh->slice_pic_order_cnt) &&
+			has_backward(dec->dpb, sh->ref_idx_l1, s->nb_refs[L1],
+				     sh->slice_pic_order_cnt);
+		cmd_slice |= no_backward_pred_flag << 10;
+		msg_slice(de, cmd_slice);
+
+		if (s->slice_temporal_mvp) {
+			const __u8 *const rpl = collocated_from_l0_flag ?
+						sh->ref_idx_l0 : sh->ref_idx_l1;
+			de->dpbno_col = rpl[sh->collocated_ref_idx];
+		}
+
+		/* Write reference picture descriptions */
+		weighted_pred_flag =
+			sh->slice_type == HEVC_SLICE_P ?
+				!!(s->pps.flags & V4L2_HEVC_PPS_FLAG_WEIGHTED_PRED) :
+				!!(s->pps.flags & V4L2_HEVC_PPS_FLAG_WEIGHTED_BIPRED);
+
+		for (idx = 0; idx < s->nb_refs[L0]; ++idx) {
+			unsigned int dpb_no = sh->ref_idx_l0[idx];
+
+			msg_slice(de,
+				  dpb_no |
+				  ((dec->dpb[dpb_no].flags &
+					V4L2_HEVC_DPB_ENTRY_LONG_TERM_REFERENCE) ?
+						 (1 << 4) : 0) |
+				  (weighted_pred_flag ? (3 << 5) : 0));
+			msg_slice(de, dec->dpb[dpb_no].pic_order_cnt_val & 0xffff);
+
+			if (weighted_pred_flag) {
+				const struct v4l2_hevc_pred_weight_table
+					*const w = &sh->pred_weight_table;
+				const int luma_weight_denom =
+					(1 << w->luma_log2_weight_denom);
+				const unsigned int chroma_log2_weight_denom =
+					(w->luma_log2_weight_denom +
+					 w->delta_chroma_log2_weight_denom);
+				const int chroma_weight_denom =
+					(1 << chroma_log2_weight_denom);
+
+				msg_slice(de,
+					  w->luma_log2_weight_denom |
+					  (((w->delta_luma_weight_l0[idx] +
+					     luma_weight_denom) & 0x1ff)
+						 << 3));
+				msg_slice(de, w->luma_offset_l0[idx] & 0xff);
+				msg_slice(de,
+					  chroma_log2_weight_denom |
+					  (((w->delta_chroma_weight_l0[idx][0] +
+					     chroma_weight_denom) & 0x1ff)
+						   << 3));
+				msg_slice(de,
+					  w->chroma_offset_l0[idx][0] & 0xff);
+				msg_slice(de,
+					  chroma_log2_weight_denom |
+					  (((w->delta_chroma_weight_l0[idx][1] +
+					     chroma_weight_denom) & 0x1ff)
+						   << 3));
+				msg_slice(de,
+					  w->chroma_offset_l0[idx][1] & 0xff);
+			}
+		}
+
+		for (idx = 0; idx < s->nb_refs[L1]; ++idx) {
+			unsigned int dpb_no = sh->ref_idx_l1[idx];
+
+			msg_slice(de,
+				  dpb_no |
+				  ((dec->dpb[dpb_no].flags &
+					 V4L2_HEVC_DPB_ENTRY_LONG_TERM_REFERENCE) ?
+						 (1 << 4) : 0) |
+					(weighted_pred_flag ? (3 << 5) : 0));
+			msg_slice(de, dec->dpb[dpb_no].pic_order_cnt_val & 0xffff);
+			if (weighted_pred_flag) {
+				const struct v4l2_hevc_pred_weight_table
+					*const w = &sh->pred_weight_table;
+				const int luma_weight_denom =
+					(1 << w->luma_log2_weight_denom);
+				const unsigned int chroma_log2_weight_denom =
+					(w->luma_log2_weight_denom +
+					 w->delta_chroma_log2_weight_denom);
+				const int chroma_weight_denom =
+					(1 << chroma_log2_weight_denom);
+
+				msg_slice(de,
+					  w->luma_log2_weight_denom |
+					  (((w->delta_luma_weight_l1[idx] +
+					     luma_weight_denom) & 0x1ff) << 3));
+				msg_slice(de, w->luma_offset_l1[idx] & 0xff);
+				msg_slice(de,
+					  chroma_log2_weight_denom |
+					  (((w->delta_chroma_weight_l1[idx][0] +
+					     chroma_weight_denom) & 0x1ff)
+							<< 3));
+				msg_slice(de,
+					  w->chroma_offset_l1[idx][0] & 0xff);
+				msg_slice(de,
+					  chroma_log2_weight_denom |
+					  (((w->delta_chroma_weight_l1[idx][1] +
+					     chroma_weight_denom) & 0x1ff)
+						   << 3));
+				msg_slice(de,
+					  w->chroma_offset_l1[idx][1] & 0xff);
+			}
+		}
+	} else {
+		msg_slice(de, cmd_slice);
+	}
+
+	msg_slice(de,
+		  (sh->slice_beta_offset_div2 & 15) |
+		  ((sh->slice_tc_offset_div2 & 15) << 4) |
+		  ((sh->flags &
+		    V4L2_HEVC_SLICE_PARAMS_FLAG_SLICE_DEBLOCKING_FILTER_DISABLED) ?
+						1 << 8 : 0) |
+		  ((sh->flags &
+			  V4L2_HEVC_SLICE_PARAMS_FLAG_SLICE_LOOP_FILTER_ACROSS_SLICES_ENABLED) ?
+						1 << 9 : 0) |
+		  ((s->pps.flags &
+			  V4L2_HEVC_PPS_FLAG_LOOP_FILTER_ACROSS_TILES_ENABLED) ?
+						1 << 10 : 0));
+
+	msg_slice(de, ((sh->slice_cr_qp_offset & 31) << 5) +
+		       (sh->slice_cb_qp_offset & 31)); /* CMD_QPOFF */
+}
+
+#define CMDS_WRITE_SLICE 1
+static void write_slice(struct hevc_d_dec_env *const de,
+			const struct hevc_d_dec_state *const s,
+			const u32 slice_const,
+			const unsigned int ctb_col,
+			const unsigned int ctb_row)
+{
+	const unsigned int cs = (1 << s->log2_ctb_size);
+	const unsigned int w_last = s->sps.pic_width_in_luma_samples & (cs - 1);
+	const unsigned int h_last = s->sps.pic_height_in_luma_samples & (cs - 1);
+
+	p1_apb_write(de, RPI_SLICE,
+		     slice_const |
+		     ((ctb_col + 1 < s->ctb_width || !w_last ?
+				cs : w_last) << 17) |
+		     ((ctb_row + 1 < s->ctb_height || !h_last ?
+				cs : h_last) << 24));
+}
+
+#define PAUSE_MODE_WPP  1
+#define PAUSE_MODE_TILE 0xffff
+
+/*
+ * N.B. This can be called to fill in data from the previous slice so must not
+ * use any state data that may change from slice to slice (e.g. qp)
+ */
+#define CMDS_NEW_ENTRY_POINT (6 + CMDS_WRITE_SLICE)
+
+static void new_entry_point(struct hevc_d_dec_env *const de,
+			    const struct hevc_d_dec_state *const s,
+			    const bool do_bte,
+			    const bool reset_qp_y,
+			    const u32 pause_mode,
+			    const unsigned int tile_x,
+			    const unsigned int tile_y,
+			    const unsigned int ctb_col,
+			    const unsigned int ctb_row,
+			    const unsigned int slice_qp,
+			    const u32 slice_const)
+{
+	const unsigned int endx = s->col_bd[tile_x + 1] - 1;
+	const unsigned int endy = (pause_mode == PAUSE_MODE_WPP) ?
+		ctb_row : s->row_bd[tile_y + 1] - 1;
+
+	p1_apb_write(de, RPI_TILESTART,
+		     s->col_bd[tile_x] | (s->row_bd[tile_y] << 16));
+	p1_apb_write(de, RPI_TILEEND, endx | (endy << 16));
+
+	if (do_bte)
+		p1_apb_write(de, RPI_BEGINTILEEND, endx | (endy << 16));
+
+	write_slice(de, s, slice_const, endx, endy);
+
+	if (reset_qp_y) {
+		unsigned int sps_qp_bd_offset =
+			6 * s->sps.bit_depth_luma_minus8;
+
+		p1_apb_write(de, RPI_QP, sps_qp_bd_offset + slice_qp);
+	}
+
+	p1_apb_write(de, RPI_MODE,
+		     pause_mode |
+			((endx == s->ctb_width - 1) << 17) |
+			((endy == s->ctb_height - 1) << 18));
+
+	p1_apb_write(de, RPI_CONTROL, (ctb_col << 0) | (ctb_row << 16));
+
+	de->entry_tile_x = tile_x;
+	de->entry_tile_y = tile_y;
+	de->entry_ctb_x = ctb_col;
+	de->entry_ctb_y = ctb_row;
+	de->entry_qp = slice_qp;
+	de->entry_slice = slice_const;
+}
+
+/* Wavefront mode */
+
+#define CMDS_WPP_PAUSE 4
+static void wpp_pause(struct hevc_d_dec_env *const de, int ctb_row)
+{
+	p1_apb_write(de, RPI_STATUS, (ctb_row << 18) | 0x25);
+	p1_apb_write(de, RPI_TRANSFER, PROB_BACKUP);
+	p1_apb_write(de, RPI_MODE,
+		     ctb_row == de->pic_height_in_ctbs_y - 1 ?
+							0x70000 : 0x30000);
+	p1_apb_write(de, RPI_CONTROL, (ctb_row << 16) + 2);
+}
+
+#define CMDS_WPP_ENTRY_FILL_1 (CMDS_WPP_PAUSE + 2 + CMDS_NEW_ENTRY_POINT)
+static int wpp_entry_fill(struct hevc_d_dec_env *const de,
+			  const struct hevc_d_dec_state *const s,
+			  const unsigned int last_y)
+{
+	int rv;
+	const unsigned int last_x = s->ctb_width - 1;
+
+	rv = cmds_check_space(de, CMDS_WPP_ENTRY_FILL_1 *
+				  (last_y - de->entry_ctb_y));
+	if (rv)
+		return rv;
+
+	while (de->entry_ctb_y < last_y) {
+		/* wpp_entry_x/y set by wpp_entry_point */
+		if (s->ctb_width > 2)
+			wpp_pause(de, de->entry_ctb_y);
+		p1_apb_write(de, RPI_STATUS,
+			     (de->entry_ctb_y << 18) | (last_x << 5) | 2);
+
+		/* if width == 1 then the saved state is the init one */
+		if (s->ctb_width == 2)
+			p1_apb_write(de, RPI_TRANSFER, PROB_BACKUP);
+		else
+			p1_apb_write(de, RPI_TRANSFER, PROB_RELOAD);
+
+		new_entry_point(de, s, false, true, PAUSE_MODE_WPP,
+				0, 0, 0, de->entry_ctb_y + 1,
+				de->entry_qp, de->entry_slice);
+	}
+	return 0;
+}
+
+static int wpp_end_previous_slice(struct hevc_d_dec_env *const de,
+				  const struct hevc_d_dec_state *const s)
+{
+	int rv;
+
+	rv = wpp_entry_fill(de, s, s->prev_ctb_y);
+	if (rv)
+		return rv;
+
+	rv = cmds_check_space(de, CMDS_WPP_PAUSE + 2);
+	if (rv)
+		return rv;
+
+	if (de->entry_ctb_x < 2 &&
+	    (de->entry_ctb_y < s->start_ctb_y || s->start_ctb_x > 2) &&
+	    s->ctb_width > 2)
+		wpp_pause(de, s->prev_ctb_y);
+	p1_apb_write(de, RPI_STATUS,
+		     1 | (s->prev_ctb_x << 5) | (s->prev_ctb_y << 18));
+	if (s->start_ctb_x == 2 ||
+	    (s->ctb_width == 2 && de->entry_ctb_y < s->start_ctb_y))
+		p1_apb_write(de, RPI_TRANSFER, PROB_BACKUP);
+	return 0;
+}
+
+/*
+ * Only main profile supported so WPP => !Tiles which makes some of the
+ * next chunk code simpler
+ */
+static int wpp_decode_slice(struct hevc_d_dec_env *const de,
+			    const struct hevc_d_dec_state *const s,
+			    bool last_slice)
+{
+	bool reset_qp_y = true;
+	const bool indep = !s->dependent_slice_segment_flag;
+	int rv;
+
+	if (s->start_ts) {
+		rv = wpp_end_previous_slice(de, s);
+		if (rv)
+			return rv;
+	}
+	pre_slice_decode(de, s);
+
+	rv = cmds_check_space(de,
+			      CMDS_WRITE_BITSTREAM +
+				CMDS_WRITE_PROB +
+				CMDS_PROGRAM_SLICECMDS +
+				CMDS_NEW_SLICE_SEGMENT +
+				CMDS_NEW_ENTRY_POINT);
+	if (rv)
+		return rv;
+
+	rv = write_bitstream(de, s);
+	if (rv)
+		return rv;
+
+	if (!s->start_ts || indep || s->ctb_width == 1)
+		write_prob(de, s);
+	else if (!s->start_ctb_x)
+		p1_apb_write(de, RPI_TRANSFER, PROB_RELOAD);
+	else
+		reset_qp_y = false;
+
+	program_slicecmds(de, s->slice_idx);
+	new_slice_segment(de, s);
+	new_entry_point(de, s, indep, reset_qp_y, PAUSE_MODE_WPP,
+			0, 0, s->start_ctb_x, s->start_ctb_y,
+			s->slice_qp, slice_reg_const(s));
+
+	if (last_slice) {
+		rv = wpp_entry_fill(de, s, s->ctb_height - 1);
+		if (rv)
+			return rv;
+
+		rv = cmds_check_space(de, CMDS_WPP_PAUSE + 1);
+		if (rv)
+			return rv;
+
+		if (de->entry_ctb_x < 2 && s->ctb_width > 2)
+			wpp_pause(de, s->ctb_height - 1);
+
+		p1_apb_write(de, RPI_STATUS,
+			     1 | ((s->ctb_width - 1) << 5) |
+				((s->ctb_height - 1) << 18));
+	}
+	return 0;
+}
+
+/* Tiles mode */
+
+/* Guarantees 1 cmd entry free on exit */
+static int tile_entry_fill(struct hevc_d_dec_env *const de,
+			   const struct hevc_d_dec_state *const s,
+			   const unsigned int last_tile_x,
+			   const unsigned int last_tile_y)
+{
+	while (de->entry_tile_y < last_tile_y ||
+	       (de->entry_tile_y == last_tile_y &&
+		de->entry_tile_x < last_tile_x)) {
+		int rv;
+		unsigned int t_x = de->entry_tile_x;
+		unsigned int t_y = de->entry_tile_y;
+		const unsigned int last_x = s->col_bd[t_x + 1] - 1;
+		const unsigned int last_y = s->row_bd[t_y + 1] - 1;
+
+		/* One more than needed here */
+		rv = cmds_check_space(de, CMDS_NEW_ENTRY_POINT + 3);
+		if (rv)
+			return rv;
+
+		p1_apb_write(de, RPI_STATUS,
+			     2 | (last_x << 5) | (last_y << 18));
+		p1_apb_write(de, RPI_TRANSFER, PROB_RELOAD);
+
+		// Inc tile
+		if (++t_x >= s->tile_width) {
+			t_x = 0;
+			++t_y;
+		}
+
+		new_entry_point(de, s, false, true, PAUSE_MODE_TILE,
+				t_x, t_y, s->col_bd[t_x], s->row_bd[t_y],
+				de->entry_qp, de->entry_slice);
+	}
+	return 0;
+}
+
+/* Write STATUS register with expected end CTU address of previous slice */
+static int end_previous_slice(struct hevc_d_dec_env *const de,
+			      const struct hevc_d_dec_state *const s)
+{
+	int rv;
+
+	rv = tile_entry_fill(de, s,
+			     ctb_to_tile_x(s, s->prev_ctb_x),
+			     ctb_to_tile_y(s, s->prev_ctb_y));
+	if (rv)
+		return rv;
+
+	p1_apb_write(de, RPI_STATUS,
+		     1 | (s->prev_ctb_x << 5) | (s->prev_ctb_y << 18));
+	return 0;
+}
+
+static int decode_slice(struct hevc_d_dec_env *const de,
+			const struct hevc_d_dec_state *const s,
+			bool last_slice)
+{
+	bool reset_qp_y;
+	unsigned int tile_x = ctb_to_tile_x(s, s->start_ctb_x);
+	unsigned int tile_y = ctb_to_tile_y(s, s->start_ctb_y);
+	int rv;
+
+	if (s->start_ts) {
+		rv = end_previous_slice(de, s);
+		if (rv)
+			return rv;
+	}
+
+	rv = cmds_check_space(de,
+			      CMDS_WRITE_BITSTREAM +
+				CMDS_WRITE_PROB +
+				CMDS_PROGRAM_SLICECMDS +
+				CMDS_NEW_SLICE_SEGMENT +
+				CMDS_NEW_ENTRY_POINT);
+	if (rv)
+		return rv;
+
+	pre_slice_decode(de, s);
+	rv = write_bitstream(de, s);
+	if (rv)
+		return rv;
+
+	reset_qp_y = !s->start_ts ||
+		!s->dependent_slice_segment_flag ||
+		tile_x != ctb_to_tile_x(s, s->prev_ctb_x) ||
+		tile_y != ctb_to_tile_y(s, s->prev_ctb_y);
+	if (reset_qp_y)
+		write_prob(de, s);
+
+	program_slicecmds(de, s->slice_idx);
+	new_slice_segment(de, s);
+	new_entry_point(de, s, !s->dependent_slice_segment_flag, reset_qp_y,
+			PAUSE_MODE_TILE,
+			tile_x, tile_y, s->start_ctb_x, s->start_ctb_y,
+			s->slice_qp, slice_reg_const(s));
+
+	/*
+	 * If this is the last slice then fill in the other tile entries
+	 * now, otherwise this will be done at the start of the next slice
+	 * when it will be known where this slice finishes
+	 */
+	if (last_slice) {
+		rv = tile_entry_fill(de, s,
+				     s->tile_width - 1,
+				     s->tile_height - 1);
+		if (rv)
+			return rv;
+		p1_apb_write(de, RPI_STATUS,
+			     1 | ((s->ctb_width - 1) << 5) |
+				((s->ctb_height - 1) << 18));
+	}
+	return 0;
+}
+
+/* Scaling factors */
+
+static void expand_scaling_list(const unsigned int size_id,
+				u8 *const dst0,
+				const u8 *const src0, uint8_t dc)
+{
+	u8 *d;
+	unsigned int x, y;
+
+	switch (size_id) {
+	case 0:
+		memcpy(dst0, src0, 16);
+		break;
+	case 1:
+		memcpy(dst0, src0, 64);
+		break;
+	case 2:
+		d = dst0;
+
+		for (y = 0; y != 16; y++) {
+			const u8 *s = src0 + (y >> 1) * 8;
+
+			for (x = 0; x != 8; ++x) {
+				*d++ = *s;
+				*d++ = *s++;
+			}
+		}
+		dst0[0] = dc;
+		break;
+	default:
+		d = dst0;
+
+		for (y = 0; y != 32; y++) {
+			const u8 *s = src0 + (y >> 2) * 8;
+
+			for (x = 0; x != 8; ++x) {
+				*d++ = *s;
+				*d++ = *s;
+				*d++ = *s;
+				*d++ = *s++;
+			}
+		}
+		dst0[0] = dc;
+		break;
+	}
+}
+
+static void populate_scaling_factors(const struct hevc_d_run *const run,
+				     struct hevc_d_dec_env *const de,
+				     const struct hevc_d_dec_state *const s)
+{
+	const struct v4l2_ctrl_hevc_scaling_matrix *const sl =
+		run->h265.scaling_matrix;
+	/* Array of constants for scaling factors */
+	static const u32 scaling_factor_offsets[4][6] = {
+		/*
+		 * MID0    MID1    MID2    MID3    MID4    MID5
+		 */
+		/* SID0 (4x4) */
+		{ 0x0000, 0x0010, 0x0020, 0x0030, 0x0040, 0x0050 },
+		/* SID1 (8x8) */
+		{ 0x0060, 0x00A0, 0x00E0, 0x0120, 0x0160, 0x01A0 },
+		/* SID2 (16x16) */
+		{ 0x01E0, 0x02E0, 0x03E0, 0x04E0, 0x05E0, 0x06E0 },
+		/* SID3 (32x32) */
+		{ 0x07E0, 0x0BE0, 0x0000, 0x0000, 0x0000, 0x0000 }
+	};
+	unsigned int mid;
+
+	for (mid = 0; mid < 6; mid++)
+		expand_scaling_list(0, de->scaling_factors +
+					    scaling_factor_offsets[0][mid],
+				    sl->scaling_list_4x4[mid], 0);
+	for (mid = 0; mid < 6; mid++)
+		expand_scaling_list(1, de->scaling_factors +
+					    scaling_factor_offsets[1][mid],
+				    sl->scaling_list_8x8[mid], 0);
+	for (mid = 0; mid < 6; mid++)
+		expand_scaling_list(2, de->scaling_factors +
+					    scaling_factor_offsets[2][mid],
+				    sl->scaling_list_16x16[mid],
+				    sl->scaling_list_dc_coef_16x16[mid]);
+	for (mid = 0; mid < 2; mid++)
+		expand_scaling_list(3, de->scaling_factors +
+					    scaling_factor_offsets[3][mid],
+				    sl->scaling_list_32x32[mid],
+				    sl->scaling_list_dc_coef_32x32[mid]);
+}
+
+static void free_ps_info(struct hevc_d_dec_state *const s)
+{
+	kfree(s->ctb_addr_rs_to_ts);
+	s->ctb_addr_rs_to_ts = NULL;
+	kfree(s->ctb_addr_ts_to_rs);
+	s->ctb_addr_ts_to_rs = NULL;
+
+	kfree(s->col_bd);
+	s->col_bd = NULL;
+	kfree(s->row_bd);
+	s->row_bd = NULL;
+}
+
+static unsigned int tile_width(const struct hevc_d_dec_state *const s,
+			       const unsigned int t_x)
+{
+	return s->col_bd[t_x + 1] - s->col_bd[t_x];
+}
+
+static unsigned int tile_height(const struct hevc_d_dec_state *const s,
+				const unsigned int t_y)
+{
+	return s->row_bd[t_y + 1] - s->row_bd[t_y];
+}
+
+static void fill_rs_to_ts(struct hevc_d_dec_state *const s)
+{
+	unsigned int ts = 0;
+	unsigned int t_y;
+	unsigned int tr_rs = 0;
+
+	for (t_y = 0; t_y != s->tile_height; ++t_y) {
+		const unsigned int t_h = tile_height(s, t_y);
+		unsigned int t_x;
+		unsigned int tc_rs = tr_rs;
+
+		for (t_x = 0; t_x != s->tile_width; ++t_x) {
+			const unsigned int t_w = tile_width(s, t_x);
+			unsigned int y;
+			unsigned int rs = tc_rs;
+
+			for (y = 0; y != t_h; ++y) {
+				unsigned int x;
+
+				for (x = 0; x != t_w; ++x) {
+					s->ctb_addr_rs_to_ts[rs + x] = ts;
+					s->ctb_addr_ts_to_rs[ts] = rs + x;
+					++ts;
+				}
+				rs += s->ctb_width;
+			}
+			tc_rs += t_w;
+		}
+		tr_rs += t_h * s->ctb_width;
+	}
+}
+
+static int updated_ps(struct hevc_d_dec_state *const s)
+{
+	unsigned int i;
+
+	free_ps_info(s);
+
+	/* Inferred parameters */
+	s->log2_ctb_size = s->sps.log2_min_luma_coding_block_size_minus3 + 3 +
+			   s->sps.log2_diff_max_min_luma_coding_block_size;
+
+	s->ctb_width = (s->sps.pic_width_in_luma_samples +
+			(1 << s->log2_ctb_size) - 1) >>
+		       s->log2_ctb_size;
+	s->ctb_height = (s->sps.pic_height_in_luma_samples +
+			 (1 << s->log2_ctb_size) - 1) >>
+			s->log2_ctb_size;
+	s->ctb_size = s->ctb_width * s->ctb_height;
+
+	s->ctb_addr_rs_to_ts = kmalloc_array(s->ctb_size,
+					     sizeof(*s->ctb_addr_rs_to_ts),
+					     GFP_KERNEL);
+	if (!s->ctb_addr_rs_to_ts)
+		goto fail;
+	s->ctb_addr_ts_to_rs = kmalloc_array(s->ctb_size,
+					     sizeof(*s->ctb_addr_ts_to_rs),
+					     GFP_KERNEL);
+	if (!s->ctb_addr_ts_to_rs)
+		goto fail;
+
+	if (!(s->pps.flags & V4L2_HEVC_PPS_FLAG_TILES_ENABLED)) {
+		s->tile_width = 1;
+		s->tile_height = 1;
+	} else {
+		s->tile_width = s->pps.num_tile_columns_minus1 + 1;
+		s->tile_height = s->pps.num_tile_rows_minus1 + 1;
+	}
+
+	s->col_bd = kmalloc_array((s->tile_width + 1), sizeof(*s->col_bd),
+				  GFP_KERNEL);
+	if (!s->col_bd)
+		goto fail;
+	s->row_bd = kmalloc_array((s->tile_height + 1), sizeof(*s->row_bd),
+				  GFP_KERNEL);
+	if (!s->row_bd)
+		goto fail;
+
+	s->col_bd[0] = 0;
+	for (i = 1; i < s->tile_width; i++)
+		s->col_bd[i] = s->col_bd[i - 1] +
+			s->pps.column_width_minus1[i - 1] + 1;
+	s->col_bd[s->tile_width] = s->ctb_width;
+
+	s->row_bd[0] = 0;
+	for (i = 1; i < s->tile_height; i++)
+		s->row_bd[i] = s->row_bd[i - 1] +
+			s->pps.row_height_minus1[i - 1] + 1;
+	s->row_bd[s->tile_height] = s->ctb_height;
+
+	fill_rs_to_ts(s);
+	return 0;
+
+fail:
+	free_ps_info(s);
+	/* Set invalid to force reload */
+	s->sps.pic_width_in_luma_samples = 0;
+	return -ENOMEM;
+}
+
+static int write_cmd_buffer(struct hevc_d_dev *const dev,
+			    struct hevc_d_dec_env *const de,
+			    const struct hevc_d_dec_state *const s)
+{
+	const size_t cmd_size = ALIGN(de->cmd_len * sizeof(de->cmd_fifo[0]),
+				      dev->cache_align);
+
+	de->cmd_addr = dma_map_single(dev->dev, de->cmd_fifo,
+				      cmd_size, DMA_TO_DEVICE);
+	if (dma_mapping_error(dev->dev, de->cmd_addr)) {
+		v4l2_err(&dev->v4l2_dev,
+			 "Map cmd buffer (%zu): FAILED\n", cmd_size);
+		return -ENOMEM;
+	}
+	de->cmd_size = cmd_size;
+	return 0;
+}
+
+static void setup_colmv(struct hevc_d_ctx *const ctx, struct hevc_d_run *run,
+			struct hevc_d_dec_state *const s)
+{
+	ctx->colmv_stride = ALIGN(s->sps.pic_width_in_luma_samples, 64);
+	ctx->colmv_picsize = ctx->colmv_stride *
+		(ALIGN(s->sps.pic_height_in_luma_samples, 64) >> 4);
+}
+
+/* Can be called from irq context */
+static struct hevc_d_dec_env *dec_env_new(struct hevc_d_ctx *const ctx)
+{
+	struct hevc_d_dec_env *de;
+	unsigned long lock_flags;
+
+	spin_lock_irqsave(&ctx->dec_lock, lock_flags);
+
+	de = ctx->dec_free;
+	if (de) {
+		ctx->dec_free = de->next;
+		de->next = NULL;
+		de->state = HEVC_D_DECODE_SLICE_START;
+	}
+
+	spin_unlock_irqrestore(&ctx->dec_lock, lock_flags);
+	return de;
+}
+
+/* Can be called from irq context */
+static void dec_env_delete(struct hevc_d_dec_env *const de)
+{
+	struct hevc_d_ctx * const ctx = de->ctx;
+	unsigned long lock_flags;
+
+	if (de->cmd_size) {
+		dma_unmap_single(ctx->dev->dev, de->cmd_addr, de->cmd_size,
+				 DMA_TO_DEVICE);
+		de->cmd_size = 0;
+	}
+
+	aux_q_release(ctx, &de->frame_aux);
+	aux_q_release(ctx, &de->col_aux);
+
+	spin_lock_irqsave(&ctx->dec_lock, lock_flags);
+
+	de->state = HEVC_D_DECODE_END;
+	de->next = ctx->dec_free;
+	ctx->dec_free = de;
+
+	spin_unlock_irqrestore(&ctx->dec_lock, lock_flags);
+}
+
+static void dec_env_uninit(struct hevc_d_ctx *const ctx)
+{
+	unsigned int i;
+
+	if (ctx->dec_pool) {
+		for (i = 0; i != HEVC_D_DEC_ENV_COUNT; ++i) {
+			struct hevc_d_dec_env *const de = ctx->dec_pool + i;
+
+			kfree(de->cmd_fifo);
+		}
+
+		kfree(ctx->dec_pool);
+	}
+
+	ctx->dec_pool = NULL;
+	ctx->dec_free = NULL;
+}
+
+static int dec_env_init(struct hevc_d_ctx *const ctx)
+{
+	unsigned int i;
+
+	ctx->dec_pool = kzalloc(sizeof(*ctx->dec_pool) * HEVC_D_DEC_ENV_COUNT,
+				GFP_KERNEL);
+	if (!ctx->dec_pool)
+		return -1;
+
+	spin_lock_init(&ctx->dec_lock);
+
+	ctx->dec_free = ctx->dec_pool;
+	for (i = 0; i != HEVC_D_DEC_ENV_COUNT - 1; ++i)
+		ctx->dec_pool[i].next = ctx->dec_pool + i + 1;
+
+	for (i = 0; i != HEVC_D_DEC_ENV_COUNT; ++i) {
+		struct hevc_d_dec_env *const de = ctx->dec_pool + i;
+
+		de->ctx = ctx;
+		de->decode_order = i;
+		de->cmd_max = 8096;
+		de->cmd_fifo = kmalloc_array(de->cmd_max,
+					     sizeof(struct rpi_cmd),
+					     GFP_KERNEL);
+		if (!de->cmd_fifo)
+			goto fail;
+	}
+
+	return 0;
+
+fail:
+	dec_env_uninit(ctx);
+	return -1;
+}
+
+/*
+ * Assume that we get exactly the same DPB for every slice it makes no real
+ * sense otherwise.
+ */
+#if V4L2_HEVC_DPB_ENTRIES_NUM_MAX > 16
+#error HEVC_DPB_ENTRIES > h/w slots
+#endif
+
+static u32 mk_config2(const struct hevc_d_dec_state *const s)
+{
+	const struct v4l2_ctrl_hevc_sps *const sps = &s->sps;
+	const struct v4l2_ctrl_hevc_pps *const pps = &s->pps;
+	u32 c;
+
+	c = (sps->bit_depth_luma_minus8 + 8) << 0;	/* BitDepthY */
+	c |= (sps->bit_depth_chroma_minus8 + 8) << 4;	/* BitDepthC */
+	if (sps->bit_depth_luma_minus8)			/* BitDepthY */
+		c |= BIT(8);
+	if (sps->bit_depth_chroma_minus8)		/* BitDepthC */
+		c |= BIT(9);
+	c |= s->log2_ctb_size << 10;
+	if (pps->flags & V4L2_HEVC_PPS_FLAG_CONSTRAINED_INTRA_PRED)
+		c |= BIT(13);
+	if (sps->flags & V4L2_HEVC_SPS_FLAG_STRONG_INTRA_SMOOTHING_ENABLED)
+		c |= BIT(14);
+	if (s->mk_aux)
+		c |= BIT(15); /* Write motion vectors to external memory */
+	c |= (pps->log2_parallel_merge_level_minus2 + 2) << 16;
+	if (s->slice_temporal_mvp)
+		c |= BIT(19);
+	if (sps->flags & V4L2_HEVC_SPS_FLAG_PCM_LOOP_FILTER_DISABLED)
+		c |= BIT(20);
+	c |= (pps->pps_cb_qp_offset & 31) << 21;
+	c |= (pps->pps_cr_qp_offset & 31) << 26;
+	return c;
+}
+
+static inline bool is_ref_unit_type(const unsigned int nal_unit_type)
+{
+	/* From Table 7-1
+	 * True for 1, 3, 5, 7, 9, 11, 13, 15
+	 */
+	return (nal_unit_type & ~0xe) != 0;
+}
+
+void hevc_d_h265_setup(struct hevc_d_ctx *ctx, struct hevc_d_run *run)
+{
+	struct hevc_d_dev *const dev = ctx->dev;
+	const struct v4l2_ctrl_hevc_decode_params *const dec =
+						run->h265.dec;
+	/* sh0 used where slice header contents should be constant over all
+	 * slices, or first slice of frame
+	 */
+	const struct v4l2_ctrl_hevc_slice_params *const sh0 =
+					run->h265.slice_params;
+	struct hevc_d_q_aux *dpb_q_aux[V4L2_HEVC_DPB_ENTRIES_NUM_MAX];
+	struct hevc_d_dec_state *const s = ctx->state;
+	struct vb2_queue *vq;
+	struct hevc_d_dec_env *de = ctx->dec0;
+	unsigned int prev_rs;
+	unsigned int i;
+	int rv;
+	bool slice_temporal_mvp;
+	bool frame_end;
+
+	s->sh = NULL;  /* Avoid use until in the slice loop */
+
+	frame_end =
+		((run->src->flags & V4L2_BUF_FLAG_M2M_HOLD_CAPTURE_BUF) == 0);
+
+	slice_temporal_mvp = (sh0->flags &
+		   V4L2_HEVC_SLICE_PARAMS_FLAG_SLICE_TEMPORAL_MVP_ENABLED);
+
+	if (de && de->state != HEVC_D_DECODE_END) {
+		switch (de->state) {
+		case HEVC_D_DECODE_SLICE_CONTINUE:
+			break;
+		default:
+			v4l2_err(&dev->v4l2_dev, "%s: Unexpected state: %d\n",
+				 __func__, de->state);
+			fallthrough;
+		case HEVC_D_DECODE_ERROR_CONTINUE:
+			/* Uncleared error - fail now */
+			goto fail;
+		}
+
+		if (s->slice_temporal_mvp != slice_temporal_mvp) {
+			v4l2_warn(&dev->v4l2_dev,
+				  "Slice Temporal MVP non-constant\n");
+			goto fail;
+		}
+	} else {
+		/* Frame start */
+		unsigned int ctb_size_y;
+		bool sps_changed = false;
+
+		if (!is_sps_set(run->h265.sps)) {
+			v4l2_warn(&dev->v4l2_dev, "SPS never set\n");
+			goto fail;
+		}
+		/* Can't check for PPS easily as all 0's looks valid */
+
+		if (memcmp(&s->sps, run->h265.sps, sizeof(s->sps)) != 0) {
+			/* SPS changed */
+			memcpy(&s->sps, run->h265.sps, sizeof(s->sps));
+			sps_changed = true;
+		}
+		if (sps_changed ||
+		    memcmp(&s->pps, run->h265.pps, sizeof(s->pps)) != 0) {
+			/* SPS changed */
+			memcpy(&s->pps, run->h265.pps, sizeof(s->pps));
+
+			/* Recalc stuff as required */
+			rv = updated_ps(s);
+			if (rv)
+				goto fail;
+		}
+
+		de = dec_env_new(ctx);
+		if (!de) {
+			v4l2_err(&dev->v4l2_dev,
+				 "Failed to find free decode env\n");
+			goto fail;
+		}
+		ctx->dec0 = de;
+
+		ctb_size_y =
+			1U << (s->sps.log2_min_luma_coding_block_size_minus3 +
+			       3 +
+			       s->sps.log2_diff_max_min_luma_coding_block_size);
+
+		de->pic_width_in_ctbs_y =
+			(s->sps.pic_width_in_luma_samples + ctb_size_y - 1) /
+				ctb_size_y; /* 7-15 */
+		de->pic_height_in_ctbs_y =
+			(s->sps.pic_height_in_luma_samples + ctb_size_y - 1) /
+				ctb_size_y; /* 7-17 */
+		de->cmd_len = 0;
+		de->dpbno_col = ~0U;
+
+		de->bit_copy_gptr = ctx->bitbufs + ctx->p1idx;
+		de->bit_copy_len = 0;
+
+		de->luma_stride = ctx->dst_fmt.height * 128;
+		de->frame_luma_addr =
+			vb2_dma_contig_plane_dma_addr(&run->dst->vb2_buf, 0);
+		de->chroma_stride = de->luma_stride / 2;
+		de->frame_chroma_addr =
+			vb2_dma_contig_plane_dma_addr(&run->dst->vb2_buf, 1);
+		de->frame_aux = NULL;
+
+		if (s->sps.bit_depth_luma_minus8 !=
+		    s->sps.bit_depth_chroma_minus8) {
+			v4l2_warn(&dev->v4l2_dev,
+				  "Chroma depth (%d) != Luma depth (%d)\n",
+				  s->sps.bit_depth_chroma_minus8 + 8,
+				  s->sps.bit_depth_luma_minus8 + 8);
+			goto fail;
+		}
+		if (s->sps.bit_depth_luma_minus8 == 0) {
+			if (ctx->dst_fmt.pixelformat !=
+						V4L2_PIX_FMT_NV12MT_COL128) {
+				v4l2_err(&dev->v4l2_dev,
+					 "Pixel format %#x != NV12MT_COL128 for 8-bit output",
+					 ctx->dst_fmt.pixelformat);
+				goto fail;
+			}
+		} else if (s->sps.bit_depth_luma_minus8 == 2) {
+			if (ctx->dst_fmt.pixelformat !=
+						V4L2_PIX_FMT_NV12MT_10_COL128) {
+				v4l2_err(&dev->v4l2_dev,
+					 "Pixel format %#x != NV12MT_10_COL128 for 10-bit output",
+					 ctx->dst_fmt.pixelformat);
+				goto fail;
+			}
+		} else {
+			v4l2_warn(&dev->v4l2_dev,
+				  "Luma depth (%d) unsupported\n",
+				  s->sps.bit_depth_luma_minus8 + 8);
+			goto fail;
+		}
+		if (run->dst->vb2_buf.num_planes != 2) {
+			v4l2_warn(&dev->v4l2_dev, "Capture planes (%d) != 2\n",
+				  run->dst->vb2_buf.num_planes);
+			goto fail;
+		}
+		if (run->dst->planes[0].length < ctx->dst_fmt.plane_fmt[0].sizeimage ||
+		    run->dst->planes[1].length < ctx->dst_fmt.plane_fmt[1].sizeimage) {
+			v4l2_warn(&dev->v4l2_dev,
+				  "Capture planes length (%d/%d) < sizeimage (%d/%d)\n",
+				  run->dst->planes[0].length,
+				  run->dst->planes[1].length,
+				  ctx->dst_fmt.plane_fmt[0].sizeimage,
+				  ctx->dst_fmt.plane_fmt[1].sizeimage);
+			goto fail;
+		}
+
+		/*
+		 * Fill in ref planes with our address s.t. if we mess up refs
+		 * somehow then we still have a valid address entry
+		 */
+		for (i = 0; i != 16; ++i) {
+			de->ref_addrs[i][0] = de->frame_luma_addr;
+			de->ref_addrs[i][1] = de->frame_chroma_addr;
+		}
+
+		/*
+		 * Stash initial temporal_mvp flag
+		 * This must be the same for all pic slices (7.4.7.1)
+		 */
+		s->slice_temporal_mvp = slice_temporal_mvp;
+
+		/*
+		 * Need Aux ents for all (ref) DPB ents if temporal MV could
+		 * be enabled for any pic
+		 */
+		s->use_aux = ((s->sps.flags &
+			       V4L2_HEVC_SPS_FLAG_SPS_TEMPORAL_MVP_ENABLED) != 0);
+		s->mk_aux = s->use_aux &&
+			    (s->sps.sps_max_sub_layers_minus1 >= sh0->nuh_temporal_id_plus1 ||
+			     is_ref_unit_type(sh0->nal_unit_type));
+
+		/* Phase 2 reg pre-calc */
+		de->rpi_config2 = mk_config2(s);
+		de->rpi_framesize = (s->sps.pic_height_in_luma_samples << 16) |
+				    s->sps.pic_width_in_luma_samples;
+		de->rpi_currpoc = sh0->slice_pic_order_cnt;
+
+		if (s->sps.flags &
+		    V4L2_HEVC_SPS_FLAG_SPS_TEMPORAL_MVP_ENABLED) {
+			setup_colmv(ctx, run, s);
+		}
+
+		s->slice_idx = 0;
+
+		if (sh0->slice_segment_addr != 0) {
+			v4l2_warn(&dev->v4l2_dev,
+				  "New frame but segment_addr=%d\n",
+				  sh0->slice_segment_addr);
+			goto fail;
+		}
+
+		/* Allocate a bitbuf if we need one - don't need one if single
+		 * slice as we can use the src buf directly
+		 */
+		if (!frame_end && !de->bit_copy_gptr->ptr) {
+			size_t bits_alloc;
+
+			bits_alloc = hevc_d_bit_buf_size(s->sps.pic_width_in_luma_samples,
+							 s->sps.pic_height_in_luma_samples,
+							 s->sps.bit_depth_luma_minus8);
+
+			if (gptr_alloc(dev, de->bit_copy_gptr,
+				       bits_alloc,
+				       DMA_ATTR_FORCE_CONTIGUOUS) != 0) {
+				v4l2_err(&dev->v4l2_dev,
+					 "Unable to alloc buf (%zu) for bit copy\n",
+					 bits_alloc);
+				goto fail;
+			}
+			v4l2_info(&dev->v4l2_dev,
+				  "Alloc buf (%zu) for bit copy OK\n",
+				  bits_alloc);
+		}
+	}
+
+	/* Either map src buffer or use directly */
+	s->src_addr = 0;
+	s->src_buf = NULL;
+
+	if (frame_end)
+		s->src_addr = vb2_dma_contig_plane_dma_addr(&run->src->vb2_buf,
+							    0);
+	if (!s->src_addr)
+		s->src_buf = vb2_plane_vaddr(&run->src->vb2_buf, 0);
+	if (!s->src_addr && !s->src_buf) {
+		v4l2_err(&dev->v4l2_dev, "Failed to map src buffer\n");
+		goto fail;
+	}
+
+	/* Pre calc parameters */
+	s->dec = dec;
+	for (i = 0; i != run->h265.slice_ents; ++i) {
+		const struct v4l2_ctrl_hevc_slice_params *const sh = sh0 + i;
+		const bool last_slice = frame_end && i + 1 == run->h265.slice_ents;
+
+		s->sh = sh;
+
+		if (run->src->planes[0].bytesused < (sh->bit_size + 7) / 8) {
+			v4l2_warn(&dev->v4l2_dev,
+				  "Bit size %d > bytesused %d\n",
+				  sh->bit_size, run->src->planes[0].bytesused);
+			goto fail;
+		}
+		if (sh->data_byte_offset >= sh->bit_size / 8) {
+			v4l2_warn(&dev->v4l2_dev,
+				  "Bit size %u < Byte offset %u * 8\n",
+				  sh->bit_size, sh->data_byte_offset);
+			goto fail;
+		}
+
+		s->slice_qp = 26 + s->pps.init_qp_minus26 + sh->slice_qp_delta;
+		s->max_num_merge_cand = sh->slice_type == HEVC_SLICE_I ?
+						0 :
+						(5 - sh->five_minus_max_num_merge_cand);
+		s->dependent_slice_segment_flag =
+			((sh->flags &
+			  V4L2_HEVC_SLICE_PARAMS_FLAG_DEPENDENT_SLICE_SEGMENT) != 0);
+
+		s->nb_refs[0] = (sh->slice_type == HEVC_SLICE_I) ?
+					0 :
+					sh->num_ref_idx_l0_active_minus1 + 1;
+		s->nb_refs[1] = (sh->slice_type != HEVC_SLICE_B) ?
+					0 :
+					sh->num_ref_idx_l1_active_minus1 + 1;
+
+		if (s->sps.flags & V4L2_HEVC_SPS_FLAG_SCALING_LIST_ENABLED)
+			populate_scaling_factors(run, de, s);
+
+		/* Calc all the random coord info to avoid repeated conversion in/out */
+		s->start_ts = s->ctb_addr_rs_to_ts[sh->slice_segment_addr];
+		s->start_ctb_x = sh->slice_segment_addr % de->pic_width_in_ctbs_y;
+		s->start_ctb_y = sh->slice_segment_addr / de->pic_width_in_ctbs_y;
+		/* Last CTB of previous slice */
+		prev_rs = !s->start_ts ? 0 : s->ctb_addr_ts_to_rs[s->start_ts - 1];
+		s->prev_ctb_x = prev_rs % de->pic_width_in_ctbs_y;
+		s->prev_ctb_y = prev_rs / de->pic_width_in_ctbs_y;
+
+		if ((s->pps.flags & V4L2_HEVC_PPS_FLAG_ENTROPY_CODING_SYNC_ENABLED))
+			rv = wpp_decode_slice(de, s, last_slice);
+		else
+			rv = decode_slice(de, s, last_slice);
+		if (rv)
+			goto fail;
+
+		++s->slice_idx;
+	}
+
+	if (!frame_end)
+		return;
+
+	/* Frame end */
+	memset(dpb_q_aux, 0,
+	       sizeof(*dpb_q_aux) * V4L2_HEVC_DPB_ENTRIES_NUM_MAX);
+
+	/*
+	 * Locate ref frames
+	 * At least in the current implementation this is constant across all
+	 * slices. If this changes we will need idx mapping code.
+	 * Uses sh so here rather than trigger
+	 */
+
+	vq = v4l2_m2m_get_vq(ctx->fh.m2m_ctx,
+			     V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE);
+
+	if (!vq) {
+		v4l2_err(&dev->v4l2_dev, "VQ gone!\n");
+		goto fail;
+	}
+
+	if (write_cmd_buffer(dev, de, s))
+		goto fail;
+
+	for (i = 0; i < dec->num_active_dpb_entries; ++i) {
+		struct vb2_buffer *buf = vb2_find_buffer(vq, dec->dpb[i].timestamp);
+
+		if (!buf) {
+			v4l2_warn(&dev->v4l2_dev,
+				  "Missing DPB ent %d, timestamp=%lld\n",
+				  i, (long long)dec->dpb[i].timestamp);
+			continue;
+		}
+
+		if (s->use_aux) {
+			int buffer_index = buf->index;
+
+			dpb_q_aux[i] = aux_q_ref_idx(ctx, buffer_index);
+			if (!dpb_q_aux[i])
+				v4l2_warn(&dev->v4l2_dev,
+					  "Missing DPB AUX ent %d, timestamp=%lld, index=%d\n",
+					  i, (long long)dec->dpb[i].timestamp,
+					  buffer_index);
+		}
+
+		de->ref_addrs[i][0] =
+			vb2_dma_contig_plane_dma_addr(buf, 0);
+		de->ref_addrs[i][1] =
+			vb2_dma_contig_plane_dma_addr(buf, 1);
+	}
+
+	/* Move DPB from temp */
+	for (i = 0; i != V4L2_HEVC_DPB_ENTRIES_NUM_MAX; ++i) {
+		aux_q_release(ctx, &s->ref_aux[i]);
+		s->ref_aux[i] = dpb_q_aux[i];
+	}
+
+	/* Unref the old frame aux too - it is either in the DPB or not now */
+	aux_q_release(ctx, &s->frame_aux);
+
+	if (s->mk_aux) {
+		s->frame_aux = aux_q_new(ctx, run->dst->vb2_buf.index);
+
+		if (!s->frame_aux) {
+			v4l2_err(&dev->v4l2_dev,
+				 "Failed to obtain aux storage for frame\n");
+			goto fail;
+		}
+
+		de->frame_aux = aux_q_ref(ctx, s->frame_aux);
+	}
+
+	if (de->dpbno_col != ~0U) {
+		if (de->dpbno_col >= dec->num_active_dpb_entries) {
+			v4l2_err(&dev->v4l2_dev,
+				 "Col ref index %d >= %d\n",
+				 de->dpbno_col,
+				 dec->num_active_dpb_entries);
+		} else {
+			/* Standard requires that the col pic is constant for
+			 * the duration of the pic (text of collocated_ref_idx
+			 * in H265-2 2018 7.4.7.1)
+			 */
+
+			/* Spot the collocated ref in passing */
+			de->col_aux = aux_q_ref(ctx,
+						dpb_q_aux[de->dpbno_col]);
+
+			if (!de->col_aux) {
+				v4l2_warn(&dev->v4l2_dev,
+					  "Missing DPB ent for col\n");
+				/* Need to abort if this fails as P2 may
+				 * explode on bad data
+				 */
+				goto fail;
+			}
+		}
+	}
+
+	de->state = HEVC_D_DECODE_PHASE1;
+	return;
+
+fail:
+	if (de)
+		// Actual error reporting happens in Trigger
+		de->state = frame_end ? HEVC_D_DECODE_ERROR_DONE :
+					HEVC_D_DECODE_ERROR_CONTINUE;
+}
+
+/* Handle PU and COEFF stream overflow
+ *
+ * Returns:
+ * -1  Phase 1 decode error
+ *  0  OK
+ * >0  Out of space (bitmask)
+ */
+
+#define STATUS_COEFF_EXHAUSTED	8
+#define STATUS_PU_EXHAUSTED	16
+
+static int check_status(const struct hevc_d_dev *const dev)
+{
+	const u32 cfstatus = apb_read(dev, RPI_CFSTATUS);
+	const u32 cfnum = apb_read(dev, RPI_CFNUM);
+	u32 status = apb_read(dev, RPI_STATUS);
+
+	/*
+	 * Handle PU and COEFF stream overflow
+	 * This is the definition of successful completion of phase 1.
+	 * It assures that status register is zero and all blocks in each tile
+	 * have completed
+	 */
+	if (cfstatus == cfnum)
+		return 0;
+
+	status &= (STATUS_PU_EXHAUSTED | STATUS_COEFF_EXHAUSTED);
+	if (status)
+		return status;
+
+	return -1;
+}
+
+static void phase2_cb(struct hevc_d_dev *const dev, void *v)
+{
+	struct hevc_d_dec_env *const de = v;
+
+	/* Done with buffers - allow new P1 */
+	hevc_d_hw_irq_active1_enable_claim(dev, 1);
+
+	v4l2_m2m_buf_done(de->frame_buf, VB2_BUF_STATE_DONE);
+	de->frame_buf = NULL;
+
+	media_request_unpin(de->req_pin);
+	de->req_pin = NULL;
+
+	dec_env_delete(de);
+}
+
+static void phase2_claimed(struct hevc_d_dev *const dev, void *v)
+{
+	struct hevc_d_dec_env *const de = v;
+	unsigned int i;
+
+	apb_write_vc_addr(dev, RPI_PURBASE, de->pu_base_vc);
+	apb_write_vc_len(dev, RPI_PURSTRIDE, de->pu_stride);
+	apb_write_vc_addr(dev, RPI_COEFFRBASE, de->coeff_base_vc);
+	apb_write_vc_len(dev, RPI_COEFFRSTRIDE, de->coeff_stride);
+
+	apb_write_vc_addr(dev, RPI_OUTYBASE, de->frame_luma_addr);
+	apb_write_vc_addr(dev, RPI_OUTCBASE, de->frame_chroma_addr);
+	apb_write_vc_len(dev, RPI_OUTYSTRIDE, de->luma_stride);
+	apb_write_vc_len(dev, RPI_OUTCSTRIDE, de->chroma_stride);
+
+	for (i = 0; i < 16; i++) {
+		// Strides are in fact unused but fill in anyway
+		apb_write_vc_addr(dev, 0x9000 + 16 * i, de->ref_addrs[i][0]);
+		apb_write_vc_len(dev, 0x9004 + 16 * i, de->luma_stride);
+		apb_write_vc_addr(dev, 0x9008 + 16 * i, de->ref_addrs[i][1]);
+		apb_write_vc_len(dev, 0x900C + 16 * i, de->chroma_stride);
+	}
+
+	apb_write(dev, RPI_CONFIG2, de->rpi_config2);
+	apb_write(dev, RPI_FRAMESIZE, de->rpi_framesize);
+	apb_write(dev, RPI_CURRPOC, de->rpi_currpoc);
+
+	/* collocated reads/writes */
+	apb_write_vc_len(dev, RPI_COLSTRIDE,
+			 de->ctx->colmv_stride);
+	apb_write_vc_len(dev, RPI_MVSTRIDE,
+			 de->ctx->colmv_stride);
+	apb_write_vc_addr(dev, RPI_MVBASE,
+			  !de->frame_aux ? 0 : de->frame_aux->col.addr);
+	apb_write_vc_addr(dev, RPI_COLBASE,
+			  !de->col_aux ? 0 : de->col_aux->col.addr);
+
+	hevc_d_hw_irq_active2_irq(dev, &de->irq_ent, phase2_cb, de);
+
+	apb_write_final(dev, RPI_NUMROWS, de->pic_height_in_ctbs_y);
+}
+
+static void phase1_claimed(struct hevc_d_dev *const dev, void *v);
+
+/* release any and all objects associated with de and reenable phase 1 if
+ * required
+ *///  1 if required
+static void phase1_err_fin(struct hevc_d_dev *const dev,
+			   struct hevc_d_ctx *const ctx,
+			   struct hevc_d_dec_env *const de)
+{
+	/* Return all detached buffers */
+	if (de->src_buf)
+		v4l2_m2m_buf_done(de->src_buf, VB2_BUF_STATE_ERROR);
+	de->src_buf = NULL;
+	if (de->frame_buf)
+		v4l2_m2m_buf_done(de->frame_buf, VB2_BUF_STATE_ERROR);
+	de->frame_buf = NULL;
+
+	if (de->req_pin)
+		media_request_unpin(de->req_pin);
+	de->req_pin = NULL;
+
+	dec_env_delete(de);
+
+	/* Reenable phase 0 if we were blocking */
+	if (atomic_add_return(-1, &ctx->p1out) >= HEVC_D_P1BUF_COUNT - 1)
+		v4l2_m2m_job_finish(dev->m2m_dev, ctx->fh.m2m_ctx);
+
+	/* Done with P1-P2 buffers - allow new P1 */
+	hevc_d_hw_irq_active1_enable_claim(dev, 1);
+}
+
+static void phase1_thread(struct hevc_d_dev *const dev, void *v)
+{
+	struct hevc_d_dec_env *const de = v;
+	struct hevc_d_ctx *const ctx = de->ctx;
+
+	struct hevc_d_gptr *const pu_gptr = ctx->pu_bufs + ctx->p2idx;
+	struct hevc_d_gptr *const coeff_gptr = ctx->coeff_bufs + ctx->p2idx;
+
+	if (de->p1_status & STATUS_PU_EXHAUSTED) {
+		if (gptr_realloc_new(dev, pu_gptr, next_size(pu_gptr->size))) {
+			v4l2_err(&dev->v4l2_dev,
+				 "%s: PU realloc (%zx) failed\n",
+				 __func__, pu_gptr->size);
+			goto fail;
+		}
+		v4l2_info(&dev->v4l2_dev, "%s: PU realloc (%zx) OK\n",
+			  __func__, pu_gptr->size);
+	}
+
+	if (de->p1_status & STATUS_COEFF_EXHAUSTED) {
+		if (gptr_realloc_new(dev, coeff_gptr,
+				     next_size(coeff_gptr->size))) {
+			v4l2_err(&dev->v4l2_dev,
+				 "%s: Coeff realloc (%zx) failed\n",
+				 __func__, coeff_gptr->size);
+			goto fail;
+		}
+		v4l2_info(&dev->v4l2_dev, "%s: Coeff realloc (%zx) OK\n",
+			  __func__, coeff_gptr->size);
+	}
+
+	phase1_claimed(dev, de);
+	return;
+
+fail:
+	if (!pu_gptr->addr || !coeff_gptr->addr) {
+		v4l2_err(&dev->v4l2_dev,
+			 "%s: Fatal: failed to reclaim old alloc\n",
+			 __func__);
+		ctx->fatal_err = 1;
+	}
+	phase1_err_fin(dev, ctx, de);
+}
+
+/* Always called in irq context (this is good) */
+static void phase1_cb(struct hevc_d_dev *const dev, void *v)
+{
+	struct hevc_d_dec_env *const de = v;
+	struct hevc_d_ctx *const ctx = de->ctx;
+
+	de->p1_status = check_status(dev);
+
+	if (de->p1_status != 0) {
+		v4l2_info(&dev->v4l2_dev, "%s: Post wait: %#x\n",
+			  __func__, de->p1_status);
+
+		if (de->p1_status < 0)
+			goto fail;
+
+		/* Need to realloc - push onto a thread rather than IRQ */
+		hevc_d_hw_irq_active1_thread(dev, &de->irq_ent,
+					     phase1_thread, de);
+		return;
+	}
+
+	v4l2_m2m_buf_done(de->src_buf, VB2_BUF_STATE_DONE);
+	de->src_buf = NULL;
+
+	/* All phase1 error paths done - it is safe to inc p2idx */
+	ctx->p2idx =
+		(ctx->p2idx + 1 >= HEVC_D_P2BUF_COUNT) ? 0 : ctx->p2idx + 1;
+
+	/* Renable the next setup if we were blocking */
+	if (atomic_add_return(-1, &ctx->p1out) >= HEVC_D_P1BUF_COUNT - 1)
+		v4l2_m2m_job_finish(dev->m2m_dev, ctx->fh.m2m_ctx);
+
+	hevc_d_hw_irq_active2_claim(dev, &de->irq_ent, phase2_claimed, de);
+
+	return;
+
+fail:
+	phase1_err_fin(dev, ctx, de);
+}
+
+static void phase1_claimed(struct hevc_d_dev *const dev, void *v)
+{
+	struct hevc_d_dec_env *const de = v;
+	struct hevc_d_ctx *const ctx = de->ctx;
+
+	const struct hevc_d_gptr * const pu_gptr = ctx->pu_bufs + ctx->p2idx;
+	const struct hevc_d_gptr * const coeff_gptr = ctx->coeff_bufs +
+						      ctx->p2idx;
+
+	if (ctx->fatal_err)
+		goto fail;
+
+	de->pu_base_vc = pu_gptr->addr;
+	de->pu_stride =
+		ALIGN_DOWN(pu_gptr->size / de->pic_height_in_ctbs_y, 64);
+
+	de->coeff_base_vc = coeff_gptr->addr;
+	de->coeff_stride =
+		ALIGN_DOWN(coeff_gptr->size / de->pic_height_in_ctbs_y, 64);
+
+	/* phase1_claimed blocked until cb_phase1 completed so p2idx inc
+	 * in cb_phase1 after error detection
+	 */
+
+	apb_write_vc_addr(dev, RPI_PUWBASE, de->pu_base_vc);
+	apb_write_vc_len(dev, RPI_PUWSTRIDE, de->pu_stride);
+	apb_write_vc_addr(dev, RPI_COEFFWBASE, de->coeff_base_vc);
+	apb_write_vc_len(dev, RPI_COEFFWSTRIDE, de->coeff_stride);
+
+	/* Trigger command FIFO */
+	apb_write(dev, RPI_CFNUM, de->cmd_len);
+
+	/* Claim irq */
+	hevc_d_hw_irq_active1_irq(dev, &de->irq_ent, phase1_cb, de);
+
+	/* Start the h/w */
+	apb_write_vc_addr_final(dev, RPI_CFBASE, de->cmd_addr);
+
+	return;
+
+fail:
+	phase1_err_fin(dev, ctx, de);
+}
+
+static void dec_state_delete(struct hevc_d_ctx *const ctx)
+{
+	unsigned int i;
+	struct hevc_d_dec_state *const s = ctx->state;
+
+	if (!s)
+		return;
+	ctx->state = NULL;
+
+	free_ps_info(s);
+
+	for (i = 0; i != HEVC_MAX_REFS; ++i)
+		aux_q_release(ctx, &s->ref_aux[i]);
+	aux_q_release(ctx, &s->frame_aux);
+
+	kfree(s);
+}
+
+struct irq_sync {
+	atomic_t done;
+	wait_queue_head_t wq;
+	struct hevc_d_hw_irq_ent irq_ent;
+};
+
+static void phase2_sync_claimed(struct hevc_d_dev *const dev, void *v)
+{
+	struct irq_sync *const sync = v;
+
+	atomic_set(&sync->done, 1);
+	wake_up(&sync->wq);
+}
+
+static void phase1_sync_claimed(struct hevc_d_dev *const dev, void *v)
+{
+	struct irq_sync *const sync = v;
+
+	hevc_d_hw_irq_active1_enable_claim(dev, 1);
+	hevc_d_hw_irq_active2_claim(dev, &sync->irq_ent, phase2_sync_claimed, sync);
+}
+
+/* Sync with IRQ operations
+ *
+ * Claims phase1 and phase2 in turn and waits for the phase2 claim so any
+ * pending IRQ ops will have completed by the time this returns
+ *
+ * phase1 has counted enables so must reenable once claimed
+ * phase2 has unlimited enables
+ */
+static void irq_sync(struct hevc_d_dev *const dev)
+{
+	struct irq_sync sync;
+
+	atomic_set(&sync.done, 0);
+	init_waitqueue_head(&sync.wq);
+
+	hevc_d_hw_irq_active1_claim(dev, &sync.irq_ent, phase1_sync_claimed, &sync);
+	wait_event(sync.wq, atomic_read(&sync.done));
+}
+
+static void h265_ctx_uninit(struct hevc_d_dev *const dev, struct hevc_d_ctx *ctx)
+{
+	unsigned int i;
+
+	dec_env_uninit(ctx);
+	dec_state_delete(ctx);
+
+	/*
+	 * dec_env & state must be killed before this to release the buffer to
+	 * the free pool
+	 */
+	aux_q_uninit(ctx);
+
+	for (i = 0; i != ARRAY_SIZE(ctx->bitbufs); ++i)
+		gptr_free(dev, ctx->bitbufs + i);
+	for (i = 0; i != ARRAY_SIZE(ctx->pu_bufs); ++i)
+		gptr_free(dev, ctx->pu_bufs + i);
+	for (i = 0; i != ARRAY_SIZE(ctx->coeff_bufs); ++i)
+		gptr_free(dev, ctx->coeff_bufs + i);
+}
+
+void hevc_d_h265_stop(struct hevc_d_ctx *ctx)
+{
+	struct hevc_d_dev *const dev = ctx->dev;
+
+	irq_sync(dev);
+	h265_ctx_uninit(dev, ctx);
+}
+
+int hevc_d_h265_start(struct hevc_d_ctx *ctx)
+{
+	struct hevc_d_dev *const dev = ctx->dev;
+	unsigned int i;
+
+	unsigned int w = ctx->dst_fmt.width;
+	unsigned int h = ctx->dst_fmt.height;
+	unsigned int wxh;
+	size_t pu_alloc;
+	size_t coeff_alloc;
+
+	/* Generate a sanitised WxH for memory alloc.  Assume HD if unset */
+	if (w == 0)
+		w = 1920;
+	if (w > 4096)
+		w = 4096;
+	if (h == 0)
+		h = 1088;
+	if (h > 4096)
+		h = 4096;
+	wxh = w * h;
+
+	ctx->fatal_err = 0;
+	ctx->dec0 = NULL;
+	ctx->state = kzalloc(sizeof(*ctx->state), GFP_KERNEL);
+	if (!ctx->state) {
+		v4l2_err(&dev->v4l2_dev, "Failed to allocate decode state\n");
+		goto fail;
+	}
+
+	if (dec_env_init(ctx) != 0) {
+		v4l2_err(&dev->v4l2_dev, "Failed to allocate decode envs\n");
+		goto fail;
+	}
+
+	coeff_alloc = hevc_d_round_up_size(wxh);
+	pu_alloc = hevc_d_round_up_size(wxh / 4);
+	for (i = 0; i != ARRAY_SIZE(ctx->pu_bufs); ++i) {
+		/* Don't actually need a kernel mapping here */
+		if (gptr_alloc(dev, ctx->pu_bufs + i, pu_alloc,
+			       DMA_ATTR_NO_KERNEL_MAPPING)) {
+			v4l2_err(&dev->v4l2_dev,
+				 "Failed to alloc %#zx PU%d buffer\n",
+				 pu_alloc, i);
+			goto fail;
+		}
+		if (gptr_alloc(dev, ctx->coeff_bufs + i, coeff_alloc,
+			       DMA_ATTR_NO_KERNEL_MAPPING)) {
+			v4l2_err(&dev->v4l2_dev,
+				 "Failed to alloc %#zx Coeff%d buffer\n",
+				 pu_alloc, i);
+			goto fail;
+		}
+	}
+	aux_q_init(ctx);
+
+	return 0;
+
+fail:
+	h265_ctx_uninit(dev, ctx);
+	return -ENOMEM;
+}
+
+void hevc_d_h265_trigger(struct hevc_d_ctx *ctx)
+{
+	struct hevc_d_dev *const dev = ctx->dev;
+	struct hevc_d_dec_env *const de = ctx->dec0;
+
+	switch (!de ? HEVC_D_DECODE_ERROR_CONTINUE : de->state) {
+	case HEVC_D_DECODE_SLICE_START:
+		de->state = HEVC_D_DECODE_SLICE_CONTINUE;
+		fallthrough;
+	case HEVC_D_DECODE_SLICE_CONTINUE:
+		v4l2_m2m_buf_done_and_job_finish(dev->m2m_dev, ctx->fh.m2m_ctx,
+						 VB2_BUF_STATE_DONE);
+		break;
+
+	default:
+		v4l2_err(&dev->v4l2_dev, "%s: Unexpected state: %d\n", __func__,
+			 de->state);
+		fallthrough;
+	case HEVC_D_DECODE_ERROR_DONE:
+		ctx->dec0 = NULL;
+		dec_env_delete(de);
+		fallthrough;
+	case HEVC_D_DECODE_ERROR_CONTINUE:
+		v4l2_m2m_buf_done_and_job_finish(dev->m2m_dev, ctx->fh.m2m_ctx,
+						 VB2_BUF_STATE_ERROR);
+		break;
+
+	case HEVC_D_DECODE_PHASE1:
+		ctx->dec0 = NULL;
+
+		ctx->p1idx = (ctx->p1idx + 1 >= HEVC_D_P1BUF_COUNT) ?
+							0 : ctx->p1idx + 1;
+
+		/* We know we have src & dst so no need to test */
+		de->src_buf = v4l2_m2m_src_buf_remove(ctx->fh.m2m_ctx);
+		de->frame_buf = v4l2_m2m_dst_buf_remove(ctx->fh.m2m_ctx);
+
+		de->req_pin = de->src_buf->vb2_buf.req_obj.req;
+		media_request_pin(de->req_pin);
+
+		/* We could get rid of the src buffer here if we've already
+		 * copied it, but we don't copy the last buffer unless it
+		 * didn't return a contig dma addr, and that shouldn't happen
+		 */
+
+		/* Enable the next setup if our Q isn't too big */
+		if (atomic_add_return(1, &ctx->p1out) < HEVC_D_P1BUF_COUNT)
+			v4l2_m2m_job_finish(dev->m2m_dev, ctx->fh.m2m_ctx);
+
+		hevc_d_hw_irq_active1_claim(dev, &de->irq_ent, phase1_claimed,
+					    de);
+		break;
+	}
+}
+
+static int try_ctrl_sps(struct v4l2_ctrl *ctrl)
+{
+	const struct v4l2_ctrl_hevc_sps *const sps = ctrl->p_new.p_hevc_sps;
+	struct hevc_d_ctx *const ctx = ctrl->priv;
+	struct hevc_d_dev *const dev = ctx->dev;
+
+	if (sps->chroma_format_idc != 1) {
+		v4l2_warn(&dev->v4l2_dev,
+			  "Chroma format (%d) unsupported\n",
+			  sps->chroma_format_idc);
+		return -EINVAL;
+	}
+
+	if (sps->bit_depth_luma_minus8 != 0 &&
+	    sps->bit_depth_luma_minus8 != 2) {
+		v4l2_warn(&dev->v4l2_dev,
+			  "Luma depth (%d) unsupported\n",
+			  sps->bit_depth_luma_minus8 + 8);
+		return -EINVAL;
+	}
+
+	if (sps->bit_depth_luma_minus8 != sps->bit_depth_chroma_minus8) {
+		v4l2_warn(&dev->v4l2_dev,
+			  "Chroma depth (%d) != Luma depth (%d)\n",
+			  sps->bit_depth_chroma_minus8 + 8,
+			  sps->bit_depth_luma_minus8 + 8);
+		return -EINVAL;
+	}
+
+	if (!sps->pic_width_in_luma_samples ||
+	    !sps->pic_height_in_luma_samples ||
+	    sps->pic_width_in_luma_samples > 4096 ||
+	    sps->pic_height_in_luma_samples > 4096) {
+		v4l2_warn(&dev->v4l2_dev,
+			  "Bad sps width (%u) x height (%u)\n",
+			  sps->pic_width_in_luma_samples,
+			  sps->pic_height_in_luma_samples);
+		return -EINVAL;
+	}
+
+	if (!ctx->dst_fmt_set)
+		return 0;
+
+	if ((sps->bit_depth_luma_minus8 == 0 &&
+	     ctx->dst_fmt.pixelformat != V4L2_PIX_FMT_NV12MT_COL128) ||
+	    (sps->bit_depth_luma_minus8 == 2 &&
+	     ctx->dst_fmt.pixelformat != V4L2_PIX_FMT_NV12MT_10_COL128)) {
+		v4l2_warn(&dev->v4l2_dev,
+			  "SPS luma depth %d does not match capture format\n",
+			  sps->bit_depth_luma_minus8 + 8);
+		return -EINVAL;
+	}
+
+	if (sps->pic_width_in_luma_samples > ctx->dst_fmt.width ||
+	    sps->pic_height_in_luma_samples > ctx->dst_fmt.height) {
+		v4l2_warn(&dev->v4l2_dev,
+			  "SPS size (%dx%d) > capture size (%d,%d)\n",
+			  sps->pic_width_in_luma_samples,
+			  sps->pic_height_in_luma_samples,
+			  ctx->dst_fmt.width,
+			  ctx->dst_fmt.height);
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+const struct v4l2_ctrl_ops hevc_d_hevc_sps_ctrl_ops = {
+	.try_ctrl = try_ctrl_sps,
+};
+
+static int try_ctrl_pps(struct v4l2_ctrl *ctrl)
+{
+	const struct v4l2_ctrl_hevc_pps *const pps = ctrl->p_new.p_hevc_pps;
+	struct hevc_d_ctx *const ctx = ctrl->priv;
+	struct hevc_d_dev *const dev = ctx->dev;
+
+	if ((pps->flags &
+	     V4L2_HEVC_PPS_FLAG_ENTROPY_CODING_SYNC_ENABLED) &&
+	    (pps->flags &
+	     V4L2_HEVC_PPS_FLAG_TILES_ENABLED) &&
+	    (pps->num_tile_columns_minus1 || pps->num_tile_rows_minus1)) {
+		v4l2_warn(&dev->v4l2_dev,
+			  "WPP + Tiles not supported\n");
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+const struct v4l2_ctrl_ops hevc_d_hevc_pps_ctrl_ops = {
+	.try_ctrl = try_ctrl_pps,
+};
+
+void hevc_d_device_run(void *priv)
+{
+	struct hevc_d_ctx *const ctx = priv;
+	struct hevc_d_dev *const dev = ctx->dev;
+	struct hevc_d_run run = {};
+	struct media_request *src_req;
+
+	run.src = v4l2_m2m_next_src_buf(ctx->fh.m2m_ctx);
+	run.dst = v4l2_m2m_next_dst_buf(ctx->fh.m2m_ctx);
+
+	if (!run.src || !run.dst) {
+		v4l2_err(&dev->v4l2_dev, "%s: Missing buffer: src=%p, dst=%p\n",
+			 __func__, run.src, run.dst);
+		goto fail;
+	}
+
+	/* Apply request(s) controls */
+	src_req = run.src->vb2_buf.req_obj.req;
+	if (!src_req) {
+		v4l2_err(&dev->v4l2_dev, "%s: Missing request\n", __func__);
+		goto fail;
+	}
+
+	v4l2_ctrl_request_setup(src_req, &ctx->hdl);
+
+	switch (ctx->src_fmt.pixelformat) {
+	case V4L2_PIX_FMT_HEVC_SLICE:
+	{
+		const struct v4l2_ctrl *ctrl;
+
+		run.h265.sps =
+			hevc_d_find_control_data(ctx,
+						 V4L2_CID_STATELESS_HEVC_SPS);
+		run.h265.pps =
+			hevc_d_find_control_data(ctx,
+						 V4L2_CID_STATELESS_HEVC_PPS);
+		run.h265.dec =
+			hevc_d_find_control_data(ctx,
+						 V4L2_CID_STATELESS_HEVC_DECODE_PARAMS);
+
+		ctrl = hevc_d_find_ctrl(ctx,
+					V4L2_CID_STATELESS_HEVC_SLICE_PARAMS);
+		if (!ctrl || !ctrl->elems) {
+			v4l2_err(&dev->v4l2_dev, "%s: Missing slice params\n",
+				 __func__);
+			goto fail;
+		}
+		run.h265.slice_ents = ctrl->elems;
+		run.h265.slice_params = ctrl->p_cur.p;
+
+		run.h265.scaling_matrix =
+			hevc_d_find_control_data(ctx,
+						 V4L2_CID_STATELESS_HEVC_SCALING_MATRIX);
+		break;
+	}
+
+	default:
+		break;
+	}
+
+	v4l2_m2m_buf_copy_metadata(run.src, run.dst, true);
+
+	hevc_d_h265_setup(ctx, &run);
+
+	/* Complete request(s) controls */
+	v4l2_ctrl_request_complete(src_req, &ctx->hdl);
+
+	hevc_d_h265_trigger(ctx);
+	return;
+
+fail:
+	/* We really shouldn't get here but tidy up what we can */
+	v4l2_m2m_buf_done_and_job_finish(dev->m2m_dev, ctx->fh.m2m_ctx,
+					 VB2_BUF_STATE_ERROR);
+}
diff --git a/drivers/media/platform/raspberrypi/hevc_dec/hevc_d_hw.c b/drivers/media/platform/raspberrypi/hevc_dec/hevc_d_hw.c
new file mode 100644
index 000000000000..1ca364bfa820
--- /dev/null
+++ b/drivers/media/platform/raspberrypi/hevc_dec/hevc_d_hw.c
@@ -0,0 +1,376 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Raspberry Pi HEVC driver
+ *
+ * Copyright (C) 2024 Raspberry Pi Ltd
+ *
+ * Based on the Cedrus VPU driver, that is:
+ *
+ * Copyright (C) 2016 Florent Revest <florent.revest@free-electrons.com>
+ * Copyright (C) 2018 Paul Kocialkowski <paul.kocialkowski@bootlin.com>
+ * Copyright (C) 2018 Bootlin
+ */
+#include <linux/clk.h>
+#include <linux/component.h>
+#include <linux/dma-mapping.h>
+#include <linux/interrupt.h>
+#include <linux/io.h>
+#include <linux/of_reserved_mem.h>
+#include <linux/of_device.h>
+#include <linux/of_platform.h>
+#include <linux/platform_device.h>
+#include <linux/regmap.h>
+#include <linux/reset.h>
+
+#include <media/videobuf2-core.h>
+#include <media/v4l2-mem2mem.h>
+
+#include <soc/bcm2835/raspberrypi-firmware.h>
+
+#include "hevc_d.h"
+#include "hevc_d_hw.h"
+
+static void pre_irq(struct hevc_d_dev *dev, struct hevc_d_hw_irq_ent *ient,
+		    hevc_d_irq_callback cb, void *v,
+		    struct hevc_d_hw_irq_ctrl *ictl)
+{
+	unsigned long flags;
+
+	if (ictl->irq) {
+		v4l2_err(&dev->v4l2_dev, "Attempt to claim IRQ when already claimed\n");
+		return;
+	}
+
+	ient->cb = cb;
+	ient->v = v;
+
+	spin_lock_irqsave(&ictl->lock, flags);
+	ictl->irq = ient;
+	ictl->no_sched++;
+	spin_unlock_irqrestore(&ictl->lock, flags);
+}
+
+/* Should be called from inside ictl->lock */
+static inline bool sched_enabled(const struct hevc_d_hw_irq_ctrl * const ictl)
+{
+	return ictl->no_sched <= 0 && ictl->enable;
+}
+
+/* Should be called from inside ictl->lock & after checking sched_enabled() */
+static inline void set_claimed(struct hevc_d_hw_irq_ctrl * const ictl)
+{
+	if (ictl->enable > 0)
+		--ictl->enable;
+	ictl->no_sched = 1;
+}
+
+/* Should be called from inside ictl->lock */
+static struct hevc_d_hw_irq_ent *get_sched(struct hevc_d_hw_irq_ctrl * const ictl)
+{
+	struct hevc_d_hw_irq_ent *ient;
+
+	if (!sched_enabled(ictl))
+		return NULL;
+
+	ient = ictl->claim;
+	if (!ient)
+		return NULL;
+	ictl->claim = ient->next;
+
+	set_claimed(ictl);
+	return ient;
+}
+
+/* Run a callback & check to see if there is anything else to run */
+static void sched_cb(struct hevc_d_dev * const dev,
+		     struct hevc_d_hw_irq_ctrl * const ictl,
+		     struct hevc_d_hw_irq_ent *ient)
+{
+	while (ient) {
+		unsigned long flags;
+
+		ient->cb(dev, ient->v);
+
+		spin_lock_irqsave(&ictl->lock, flags);
+
+		/*
+		 * Always dec no_sched after cb exec - must have been set
+		 * on entry to cb
+		 */
+		--ictl->no_sched;
+		ient = get_sched(ictl);
+
+		spin_unlock_irqrestore(&ictl->lock, flags);
+	}
+}
+
+/* Should only ever be called from its own IRQ cb so no lock required */
+static void pre_thread(struct hevc_d_dev *dev,
+		       struct hevc_d_hw_irq_ent *ient,
+		       hevc_d_irq_callback cb, void *v,
+		       struct hevc_d_hw_irq_ctrl *ictl)
+{
+	ient->cb = cb;
+	ient->v = v;
+	ictl->irq = ient;
+	ictl->thread_reqed = true;
+	ictl->no_sched++;	/* This is unwound in do_thread */
+}
+
+/* Called in irq context */
+static void do_irq(struct hevc_d_dev * const dev,
+		   struct hevc_d_hw_irq_ctrl * const ictl)
+{
+	struct hevc_d_hw_irq_ent *ient;
+	unsigned long flags;
+
+	spin_lock_irqsave(&ictl->lock, flags);
+	ient = ictl->irq;
+	ictl->irq = NULL;
+	spin_unlock_irqrestore(&ictl->lock, flags);
+
+	sched_cb(dev, ictl, ient);
+}
+
+static void do_claim(struct hevc_d_dev * const dev,
+		     struct hevc_d_hw_irq_ent *ient,
+		     const hevc_d_irq_callback cb, void * const v,
+		     struct hevc_d_hw_irq_ctrl * const ictl)
+{
+	unsigned long flags;
+
+	ient->next = NULL;
+	ient->cb = cb;
+	ient->v = v;
+
+	spin_lock_irqsave(&ictl->lock, flags);
+
+	if (ictl->claim) {
+		/* If we have a Q then add to end */
+		ictl->tail->next = ient;
+		ictl->tail = ient;
+		ient = NULL;
+	} else if (!sched_enabled(ictl)) {
+		/* Empty Q but other activity in progress so Q */
+		ictl->claim = ient;
+		ictl->tail = ient;
+		ient = NULL;
+	} else {
+		/*
+		 * Nothing else going on - schedule immediately and
+		 * prevent anything else scheduling claims
+		 */
+		set_claimed(ictl);
+	}
+
+	spin_unlock_irqrestore(&ictl->lock, flags);
+
+	sched_cb(dev, ictl, ient);
+}
+
+/* Enable n claims.
+ * n < 0   set to unlimited (default on init)
+ * n = 0   if previously unlimited then disable otherwise nop
+ * n > 0   if previously unlimited then set to n enables
+ *         otherwise add n enables
+ * The enable count is automatically decremented every time a claim is run
+ */
+static void do_enable_claim(struct hevc_d_dev * const dev,
+			    int n,
+			    struct hevc_d_hw_irq_ctrl * const ictl)
+{
+	unsigned long flags;
+	struct hevc_d_hw_irq_ent *ient;
+
+	spin_lock_irqsave(&ictl->lock, flags);
+	ictl->enable = n < 0 ? -1 : ictl->enable <= 0 ? n : ictl->enable + n;
+	ient = get_sched(ictl);
+	spin_unlock_irqrestore(&ictl->lock, flags);
+
+	sched_cb(dev, ictl, ient);
+}
+
+static void ictl_init(struct hevc_d_hw_irq_ctrl * const ictl, int enables)
+{
+	spin_lock_init(&ictl->lock);
+	ictl->claim = NULL;
+	ictl->tail = NULL;
+	ictl->irq = NULL;
+	ictl->no_sched = 0;
+	ictl->enable = enables;
+	ictl->thread_reqed = false;
+}
+
+static void ictl_uninit(struct hevc_d_hw_irq_ctrl * const ictl)
+{
+	/* Nothing to do */
+}
+
+static irqreturn_t hevc_d_irq_irq(int irq, void *data)
+{
+	struct hevc_d_dev * const dev = data;
+	__u32 ictrl;
+
+	ictrl = irq_read(dev, ARG_IC_ICTRL);
+	if (!(ictrl & ARG_IC_ICTRL_ALL_IRQ_MASK)) {
+		v4l2_warn(&dev->v4l2_dev, "IRQ but no IRQ bits set\n");
+		return IRQ_NONE;
+	}
+
+	/* Cancel any/all irqs */
+	irq_write(dev, ARG_IC_ICTRL, ictrl & ~ARG_IC_ICTRL_SET_ZERO_MASK);
+
+	/*
+	 * Service Active2 before Active1 so Phase 1 can transition to Phase 2
+	 * without delay
+	 */
+	if (ictrl & ARG_IC_ICTRL_ACTIVE2_INT_SET)
+		do_irq(dev, &dev->ic_active2);
+	if (ictrl & ARG_IC_ICTRL_ACTIVE1_INT_SET)
+		do_irq(dev, &dev->ic_active1);
+
+	return dev->ic_active1.thread_reqed || dev->ic_active2.thread_reqed ?
+		IRQ_WAKE_THREAD : IRQ_HANDLED;
+}
+
+static void do_thread(struct hevc_d_dev * const dev,
+		      struct hevc_d_hw_irq_ctrl *const ictl)
+{
+	unsigned long flags;
+	struct hevc_d_hw_irq_ent *ient = NULL;
+
+	spin_lock_irqsave(&ictl->lock, flags);
+
+	if (ictl->thread_reqed) {
+		ient = ictl->irq;
+		ictl->thread_reqed = false;
+		ictl->irq = NULL;
+	}
+
+	spin_unlock_irqrestore(&ictl->lock, flags);
+
+	sched_cb(dev, ictl, ient);
+}
+
+static irqreturn_t hevc_d_irq_thread(int irq, void *data)
+{
+	struct hevc_d_dev * const dev = data;
+
+	do_thread(dev, &dev->ic_active1);
+	do_thread(dev, &dev->ic_active2);
+
+	return IRQ_HANDLED;
+}
+
+/*
+ * May only be called from Active1 CB
+ * IRQs should not be expected until execution continues in the cb
+ */
+void hevc_d_hw_irq_active1_thread(struct hevc_d_dev *dev,
+				  struct hevc_d_hw_irq_ent *ient,
+				  hevc_d_irq_callback thread_cb, void *ctx)
+{
+	pre_thread(dev, ient, thread_cb, ctx, &dev->ic_active1);
+}
+
+void hevc_d_hw_irq_active1_enable_claim(struct hevc_d_dev *dev,
+					int n)
+{
+	do_enable_claim(dev, n, &dev->ic_active1);
+}
+
+void hevc_d_hw_irq_active1_claim(struct hevc_d_dev *dev,
+				 struct hevc_d_hw_irq_ent *ient,
+				 hevc_d_irq_callback ready_cb, void *ctx)
+{
+	do_claim(dev, ient, ready_cb, ctx, &dev->ic_active1);
+}
+
+void hevc_d_hw_irq_active1_irq(struct hevc_d_dev *dev,
+			       struct hevc_d_hw_irq_ent *ient,
+			       hevc_d_irq_callback irq_cb, void *ctx)
+{
+	pre_irq(dev, ient, irq_cb, ctx, &dev->ic_active1);
+}
+
+void hevc_d_hw_irq_active2_claim(struct hevc_d_dev *dev,
+				 struct hevc_d_hw_irq_ent *ient,
+				 hevc_d_irq_callback ready_cb, void *ctx)
+{
+	do_claim(dev, ient, ready_cb, ctx, &dev->ic_active2);
+}
+
+void hevc_d_hw_irq_active2_irq(struct hevc_d_dev *dev,
+			       struct hevc_d_hw_irq_ent *ient,
+			       hevc_d_irq_callback irq_cb, void *ctx)
+{
+	pre_irq(dev, ient, irq_cb, ctx, &dev->ic_active2);
+}
+
+int hevc_d_hw_probe(struct hevc_d_dev *dev)
+{
+	struct rpi_firmware *firmware;
+	struct device_node *node;
+	__u32 irq_stat;
+	int irq_dec;
+	int ret = 0;
+
+	ictl_init(&dev->ic_active1, HEVC_D_P2BUF_COUNT);
+	ictl_init(&dev->ic_active2, HEVC_D_ICTL_ENABLE_UNLIMITED);
+
+	dev->base_irq = devm_platform_ioremap_resource_byname(dev->pdev, "intc");
+	if (IS_ERR(dev->base_irq))
+		return PTR_ERR(dev->base_irq);
+
+	dev->base_h265 = devm_platform_ioremap_resource_byname(dev->pdev, "hevc");
+	if (IS_ERR(dev->base_h265))
+		return PTR_ERR(dev->base_h265);
+
+	dev->clock = devm_clk_get(&dev->pdev->dev, "hevc");
+	if (IS_ERR(dev->clock))
+		return PTR_ERR(dev->clock);
+
+	node = rpi_firmware_find_node();
+	if (!node)
+		return -EINVAL;
+
+	firmware = rpi_firmware_get(node);
+	of_node_put(node);
+	if (!firmware)
+		return -EPROBE_DEFER;
+
+	dev->max_clock_rate = rpi_firmware_clk_get_max_rate(firmware,
+							    RPI_FIRMWARE_HEVC_CLK_ID);
+	rpi_firmware_put(firmware);
+
+	dev->cache_align = dma_get_cache_alignment();
+
+	/* Disable IRQs & reset anything pending */
+	irq_write(dev, 0,
+		  ARG_IC_ICTRL_ACTIVE1_EN_SET | ARG_IC_ICTRL_ACTIVE2_EN_SET);
+	irq_stat = irq_read(dev, 0);
+	irq_write(dev, 0, irq_stat);
+
+	irq_dec = platform_get_irq(dev->pdev, 0);
+	if (irq_dec <= 0)
+		return irq_dec;
+	ret = devm_request_threaded_irq(dev->dev, irq_dec,
+					hevc_d_irq_irq,
+					hevc_d_irq_thread,
+					0, dev_name(dev->dev), dev);
+	if (ret)
+		dev_err(dev->dev, "Failed to request IRQ - %d\n", ret);
+
+	return ret;
+}
+
+void hevc_d_hw_remove(struct hevc_d_dev *dev)
+{
+	/*
+	 * IRQ auto freed on unload so no need to do it here
+	 * ioremap auto freed on unload
+	 */
+	ictl_uninit(&dev->ic_active1);
+	ictl_uninit(&dev->ic_active2);
+}
+
diff --git a/drivers/media/platform/raspberrypi/hevc_dec/hevc_d_hw.h b/drivers/media/platform/raspberrypi/hevc_dec/hevc_d_hw.h
new file mode 100644
index 000000000000..8d91931aadf2
--- /dev/null
+++ b/drivers/media/platform/raspberrypi/hevc_dec/hevc_d_hw.h
@@ -0,0 +1,303 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Raspberry Pi HEVC driver
+ *
+ * Copyright (C) 2024 Raspberry Pi Ltd
+ *
+ * Based on the Cedrus VPU driver, that is:
+ *
+ * Copyright (C) 2016 Florent Revest <florent.revest@free-electrons.com>
+ * Copyright (C) 2018 Paul Kocialkowski <paul.kocialkowski@bootlin.com>
+ * Copyright (C) 2018 Bootlin
+ */
+
+#ifndef _HEVC_D_HW_H_
+#define _HEVC_D_HW_H_
+
+struct hevc_d_hw_irq_ent {
+	struct hevc_d_hw_irq_ent *next;
+	hevc_d_irq_callback cb;
+	void *v;
+};
+
+/* Phase 1 Register offsets */
+
+#define RPI_SPS0 0
+#define RPI_SPS1 4
+#define RPI_PPS 8
+#define RPI_SLICE 12
+#define RPI_TILESTART 16
+#define RPI_TILEEND 20
+#define RPI_SLICESTART 24
+#define RPI_MODE 28
+#define RPI_LEFT0 32
+#define RPI_LEFT1 36
+#define RPI_LEFT2 40
+#define RPI_LEFT3 44
+#define RPI_QP 48
+#define RPI_CONTROL 52
+#define RPI_STATUS 56
+#define RPI_VERSION 60
+#define RPI_BFBASE 64
+#define RPI_BFNUM 68
+#define RPI_BFCONTROL 72
+#define RPI_BFSTATUS 76
+#define RPI_PUWBASE 80
+#define RPI_PUWSTRIDE 84
+#define RPI_COEFFWBASE 88
+#define RPI_COEFFWSTRIDE 92
+#define RPI_SLICECMDS 96
+#define RPI_BEGINTILEEND 100
+#define RPI_TRANSFER 104
+#define RPI_CFBASE 108
+#define RPI_CFNUM 112
+#define RPI_CFSTATUS 116
+
+/* Phase 2 Register offsets */
+
+#define RPI_PURBASE 0x8000
+#define RPI_PURSTRIDE 0x8004
+#define RPI_COEFFRBASE 0x8008
+#define RPI_COEFFRSTRIDE 0x800C
+#define RPI_NUMROWS 0x8010
+#define RPI_CONFIG2 0x8014
+#define RPI_OUTYBASE 0x8018
+#define RPI_OUTYSTRIDE 0x801C
+#define RPI_OUTCBASE 0x8020
+#define RPI_OUTCSTRIDE 0x8024
+#define RPI_STATUS2 0x8028
+#define RPI_FRAMESIZE 0x802C
+#define RPI_MVBASE 0x8030
+#define RPI_MVSTRIDE 0x8034
+#define RPI_COLBASE 0x8038
+#define RPI_COLSTRIDE 0x803C
+#define RPI_CURRPOC 0x8040
+
+/*
+ * Write a general register value
+ * Order is unimportant
+ */
+static inline void apb_write(const struct hevc_d_dev * const dev,
+			     const unsigned int offset, const u32 val)
+{
+	writel_relaxed(val, dev->base_h265 + offset);
+}
+
+/* Write the final register value that actually starts the phase */
+static inline void apb_write_final(const struct hevc_d_dev * const dev,
+				   const unsigned int offset, const u32 val)
+{
+	writel(val, dev->base_h265 + offset);
+}
+
+static inline u32 apb_read(const struct hevc_d_dev * const dev,
+			   const unsigned int offset)
+{
+	return readl(dev->base_h265 + offset);
+}
+
+static inline void irq_write(const struct hevc_d_dev * const dev,
+			     const unsigned int offset, const u32 val)
+{
+	writel(val, dev->base_irq + offset);
+}
+
+static inline u32 irq_read(const struct hevc_d_dev * const dev,
+			   const unsigned int offset)
+{
+	return readl(dev->base_irq + offset);
+}
+
+static inline void apb_write_vc_addr(const struct hevc_d_dev * const dev,
+				     const unsigned int offset,
+				     const dma_addr_t a)
+{
+	apb_write(dev, offset, (u32)(a >> 6));
+}
+
+static inline void apb_write_vc_addr_final(const struct hevc_d_dev * const dev,
+					   const unsigned int offset,
+					   const dma_addr_t a)
+{
+	apb_write_final(dev, offset, (u32)(a >> 6));
+}
+
+static inline void apb_write_vc_len(const struct hevc_d_dev * const dev,
+				    const unsigned int offset,
+				    const unsigned int x)
+{
+	apb_write(dev, offset, (x + 63) >> 6);
+}
+
+/* *ARG_IC_ICTRL - Interrupt control for ARGON Core*
+ * Offset (byte space) = 40'h2b10000
+ * Physical Address (byte space) = 40'h7eb10000
+ * Verilog Macro Address = `ARG_IC_REG_START + `ARGON_INTCTRL_ICTRL
+ * Reset Value = 32'b100x100x_100xxxxx_xxxxxxx0_x100x100
+ * Access = RW (32-bit only)
+ * Interrupt control logic for ARGON Core.
+ */
+#define ARG_IC_ICTRL 0
+
+/* acc=LWC ACTIVE1_INT FIELD ACCESS: LWC
+ *
+ * Interrupt 1
+ * This is set and held when an hevc_active1 interrupt edge is detected
+ * The polarity of the edge is set by the ACTIVE1_EDGE field
+ * Write a 1 to this bit to clear down the latched interrupt
+ * The latched interrupt is only enabled out onto the interrupt line if
+ * ACTIVE1_EN is set
+ * Reset value is *0* decimal.
+ */
+#define ARG_IC_ICTRL_ACTIVE1_INT_SET		BIT(0)
+
+/* ACTIVE1_EDGE Sets the polarity of the interrupt edge detection logic
+ * This logic detects edges of the hevc_active1 line from the argon core
+ * 0 = negedge, 1 = posedge
+ * Reset value is *0* decimal.
+ */
+#define ARG_IC_ICTRL_ACTIVE1_EDGE_SET		BIT(1)
+
+/* ACTIVE1_EN Enables ACTIVE1_INT out onto the argon interrupt line.
+ * If this isn't set, the interrupt logic will work but no interrupt will be
+ * set to the interrupt controller
+ * Reset value is *1* decimal.
+ *
+ * [JC] The above appears to be a lie - if unset then b0 is never set
+ */
+#define ARG_IC_ICTRL_ACTIVE1_EN_SET		BIT(2)
+
+/* acc=RO ACTIVE1_STATUS FIELD ACCESS: RO
+ *
+ * The current status of the hevc_active1 signal
+ */
+#define ARG_IC_ICTRL_ACTIVE1_STATUS_SET		BIT(3)
+
+/* acc=LWC ACTIVE2_INT FIELD ACCESS: LWC
+ *
+ * Interrupt 2
+ * This is set and held when an hevc_active2 interrupt edge is detected
+ * The polarity of the edge is set by the ACTIVE2_EDGE field
+ * Write a 1 to this bit to clear down the latched interrupt
+ * The latched interrupt is only enabled out onto the interrupt line if
+ * ACTIVE2_EN is set
+ * Reset value is *0* decimal.
+ */
+#define ARG_IC_ICTRL_ACTIVE2_INT_SET		BIT(4)
+
+/* ACTIVE2_EDGE Sets the polarity of the interrupt edge detection logic
+ * This logic detects edges of the hevc_active2 line from the argon core
+ * 0 = negedge, 1 = posedge
+ * Reset value is *0* decimal.
+ */
+#define ARG_IC_ICTRL_ACTIVE2_EDGE_SET		BIT(5)
+
+/* ACTIVE2_EN Enables ACTIVE2_INT out onto the argon interrupt line.
+ * If this isn't set, the interrupt logic will work but no interrupt will be
+ * set to the interrupt controller
+ * Reset value is *1* decimal.
+ */
+#define ARG_IC_ICTRL_ACTIVE2_EN_SET		BIT(6)
+
+/* acc=RO ACTIVE2_STATUS FIELD ACCESS: RO
+ *
+ * The current status of the hevc_active2 signal
+ */
+#define ARG_IC_ICTRL_ACTIVE2_STATUS_SET		BIT(7)
+
+/* TEST_INT Forces the argon int high for test purposes.
+ * Reset value is *0* decimal.
+ */
+#define ARG_IC_ICTRL_TEST_INT			BIT(8)
+#define ARG_IC_ICTRL_SPARE			BIT(9)
+
+/* acc=RO VP9_INTERRUPT_STATUS FIELD ACCESS: RO
+ *
+ * The current status of the vp9_interrupt signal
+ */
+#define ARG_IC_ICTRL_VP9_INTERRUPT_STATUS	BIT(10)
+
+/* AIO_INT_ENABLE 1 = Or the AIO int in with the Argon int so the VPU can see
+ * it
+ * 0 = the AIO int is masked. (It should still be connected to the GIC though).
+ */
+#define ARG_IC_ICTRL_AIO_INT_ENABLE		BIT(20)
+#define ARG_IC_ICTRL_H264_ACTIVE_INT		BIT(21)
+#define ARG_IC_ICTRL_H264_ACTIVE_EDGE		BIT(22)
+#define ARG_IC_ICTRL_H264_ACTIVE_EN		BIT(23)
+#define ARG_IC_ICTRL_H264_ACTIVE_STATUS		BIT(24)
+#define ARG_IC_ICTRL_H264_INTERRUPT_INT		BIT(25)
+#define ARG_IC_ICTRL_H264_INTERRUPT_EDGE	BIT(26)
+#define ARG_IC_ICTRL_H264_INTERRUPT_EN		BIT(27)
+
+/* acc=RO H264_INTERRUPT_STATUS FIELD ACCESS: RO
+ *
+ * The current status of the h264_interrupt signal
+ */
+#define ARG_IC_ICTRL_H264_INTERRUPT_STATUS	BIT(28)
+
+/* acc=LWC VP9_INTERRUPT_INT FIELD ACCESS: LWC
+ *
+ * Interrupt 1
+ * This is set and held when an vp9_interrupt interrupt edge is detected
+ * The polarity of the edge is set by the VP9_INTERRUPT_EDGE field
+ * Write a 1 to this bit to clear down the latched interrupt
+ * The latched interrupt is only enabled out onto the interrupt line if
+ * VP9_INTERRUPT_EN is set
+ * Reset value is *0* decimal.
+ */
+#define ARG_IC_ICTRL_VP9_INTERRUPT_INT		BIT(29)
+
+/* VP9_INTERRUPT_EDGE Sets the polarity of the interrupt edge detection logic
+ * This logic detects edges of the vp9_interrupt line from the argon h264 core
+ * 0 = negedge, 1 = posedge
+ * Reset value is *0* decimal.
+ */
+#define ARG_IC_ICTRL_VP9_INTERRUPT_EDGE		BIT(30)
+
+/* VP9_INTERRUPT_EN Enables VP9_INTERRUPT_INT out onto the argon interrupt line.
+ * If this isn't set, the interrupt logic will work but no interrupt will be
+ * set to the interrupt controller
+ * Reset value is *1* decimal.
+ */
+#define ARG_IC_ICTRL_VP9_INTERRUPT_EN		BIT(31)
+
+/* Bits 19:12, 11 reserved - read ?, write 0 */
+#define ARG_IC_ICTRL_SET_ZERO_MASK		((0xff << 12) | BIT(11))
+
+/* All IRQ bits */
+#define ARG_IC_ICTRL_ALL_IRQ_MASK   (\
+		ARG_IC_ICTRL_VP9_INTERRUPT_INT  |\
+		ARG_IC_ICTRL_H264_INTERRUPT_INT |\
+		ARG_IC_ICTRL_ACTIVE1_INT_SET    |\
+		ARG_IC_ICTRL_ACTIVE2_INT_SET)
+
+/* Regulate claim Q */
+void hevc_d_hw_irq_active1_enable_claim(struct hevc_d_dev *dev,
+					int n);
+/* Auto release once all CBs called */
+void hevc_d_hw_irq_active1_claim(struct hevc_d_dev *dev,
+				 struct hevc_d_hw_irq_ent *ient,
+				 hevc_d_irq_callback ready_cb, void *ctx);
+/* May only be called in claim cb */
+void hevc_d_hw_irq_active1_irq(struct hevc_d_dev *dev,
+			       struct hevc_d_hw_irq_ent *ient,
+			       hevc_d_irq_callback irq_cb, void *ctx);
+/* May only be called in irq cb */
+void hevc_d_hw_irq_active1_thread(struct hevc_d_dev *dev,
+				  struct hevc_d_hw_irq_ent *ient,
+				  hevc_d_irq_callback thread_cb, void *ctx);
+
+/* Auto release once all CBs called */
+void hevc_d_hw_irq_active2_claim(struct hevc_d_dev *dev,
+				 struct hevc_d_hw_irq_ent *ient,
+				 hevc_d_irq_callback ready_cb, void *ctx);
+/* May only be called in claim cb */
+void hevc_d_hw_irq_active2_irq(struct hevc_d_dev *dev,
+			       struct hevc_d_hw_irq_ent *ient,
+			       hevc_d_irq_callback irq_cb, void *ctx);
+
+int hevc_d_hw_probe(struct hevc_d_dev *dev);
+void hevc_d_hw_remove(struct hevc_d_dev *dev);
+
+#endif
diff --git a/drivers/media/platform/raspberrypi/hevc_dec/hevc_d_video.c b/drivers/media/platform/raspberrypi/hevc_dec/hevc_d_video.c
new file mode 100644
index 000000000000..3f2307dd964f
--- /dev/null
+++ b/drivers/media/platform/raspberrypi/hevc_dec/hevc_d_video.c
@@ -0,0 +1,685 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Raspberry Pi HEVC driver
+ *
+ * Copyright (C) 2024 Raspberry Pi Ltd
+ *
+ * Based on the Cedrus VPU driver, that is:
+ *
+ * Copyright (C) 2016 Florent Revest <florent.revest@free-electrons.com>
+ * Copyright (C) 2018 Paul Kocialkowski <paul.kocialkowski@bootlin.com>
+ * Copyright (C) 2018 Bootlin
+ */
+
+#include <media/videobuf2-dma-contig.h>
+#include <media/v4l2-device.h>
+#include <media/v4l2-ioctl.h>
+#include <media/v4l2-event.h>
+#include <media/v4l2-mem2mem.h>
+
+#include "hevc_d.h"
+#include "hevc_d_h265.h"
+#include "hevc_d_hw.h"
+#include "hevc_d_video.h"
+
+#define HEVC_D_DECODE_SRC	BIT(0)
+#define HEVC_D_DECODE_DST	BIT(1)
+
+#define HEVC_D_MIN_WIDTH	16U
+#define HEVC_D_MIN_HEIGHT	16U
+#define HEVC_D_DEFAULT_WIDTH	1920U
+#define HEVC_D_DEFAULT_HEIGHT	1088U
+#define HEVC_D_MAX_WIDTH	4096U
+#define HEVC_D_MAX_HEIGHT	4096U
+
+static inline struct hevc_d_ctx *hevc_d_file2ctx(struct file *file)
+{
+	return container_of(file->private_data, struct hevc_d_ctx, fh);
+}
+
+/* constrain x to y,y*2 */
+static inline unsigned int constrain2x(unsigned int x, unsigned int y)
+{
+	return (x < y) ?
+			y :
+			(x > y * 2) ? y : x;
+}
+
+size_t hevc_d_round_up_size(const size_t x)
+{
+	/* Admit no size < 256 */
+	const unsigned int n = x < 256 ? 8 : ilog2(x);
+
+	return x >= (3 << n) ? 4 << n : (3 << n);
+}
+
+size_t hevc_d_bit_buf_size(unsigned int w, unsigned int h, unsigned int bits_minus8)
+{
+	const size_t wxh = w * h;
+	size_t bits_alloc;
+
+	/* Annex A gives a min compression of 2 @ lvl 3.1
+	 * (wxh <= 983040) and min 4 thereafter but avoid
+	 * the odity of 983041 having a lower limit than
+	 * 983040.
+	 * Multiply by 3/2 for 4:2:0
+	 */
+	bits_alloc = wxh < 983040 ? wxh * 3 / 4 :
+		wxh < 983040 * 2 ? 983040 * 3 / 4 :
+		wxh * 3 / 8;
+	/* Allow for bit depth */
+	bits_alloc += (bits_alloc * bits_minus8) / 8;
+	return hevc_d_round_up_size(bits_alloc);
+}
+
+void hevc_d_prepare_src_format(struct v4l2_pix_format_mplane *pix_fmt)
+{
+	size_t size;
+	u32 w;
+	u32 h;
+
+	w = pix_fmt->width;
+	h = pix_fmt->height;
+	if (!w || !h) {
+		w = HEVC_D_DEFAULT_WIDTH;
+		h = HEVC_D_DEFAULT_HEIGHT;
+	}
+	if (w > HEVC_D_MAX_WIDTH)
+		w = HEVC_D_MAX_WIDTH;
+	if (h > HEVC_D_MAX_HEIGHT)
+		h = HEVC_D_MAX_HEIGHT;
+
+	if (!pix_fmt->plane_fmt[0].sizeimage ||
+	    pix_fmt->plane_fmt[0].sizeimage > SZ_32M) {
+		/* Unspecified or way too big - pick max for size */
+		size = hevc_d_bit_buf_size(w, h, 2);
+	}
+	/* Set a minimum */
+	size = max_t(u32, SZ_4K, pix_fmt->plane_fmt[0].sizeimage);
+
+	pix_fmt->pixelformat = V4L2_PIX_FMT_HEVC_SLICE;
+	pix_fmt->width = w;
+	pix_fmt->height = h;
+	pix_fmt->num_planes = 1;
+	pix_fmt->field = V4L2_FIELD_NONE;
+	/* Zero bytes per line for encoded source. */
+	pix_fmt->plane_fmt[0].bytesperline = 0;
+	pix_fmt->plane_fmt[0].sizeimage = size;
+}
+
+/* Take any pix_format and make it valid */
+static void hevc_d_prepare_dst_format(struct v4l2_pix_format_mplane *pix_fmt)
+{
+	unsigned int width = pix_fmt->width;
+	unsigned int height = pix_fmt->height;
+	unsigned int sizeimage = pix_fmt->plane_fmt[0].sizeimage;
+	unsigned int bytesperline = pix_fmt->plane_fmt[0].bytesperline;
+
+	if (!width)
+		width = HEVC_D_DEFAULT_WIDTH;
+	if (width > HEVC_D_MAX_WIDTH)
+		width = HEVC_D_MAX_WIDTH;
+	if (!height)
+		height = HEVC_D_DEFAULT_HEIGHT;
+	if (height > HEVC_D_MAX_HEIGHT)
+		height = HEVC_D_MAX_HEIGHT;
+
+	/* For column formats set bytesperline to column height (stride2) */
+	switch (pix_fmt->pixelformat) {
+	default:
+		pix_fmt->pixelformat = V4L2_PIX_FMT_NV12MT_COL128;
+		fallthrough;
+	case V4L2_PIX_FMT_NV12MT_COL128:
+		/* Width rounds up to columns */
+		width = ALIGN(width, 128);
+		height = ALIGN(height, 8);
+
+		/* column height is sizeimage / bytesperline */
+		bytesperline = width;
+		sizeimage = bytesperline * height;
+		break;
+
+	case V4L2_PIX_FMT_NV12MT_10_COL128:
+		/* width in pixels (3 pels = 4 bytes) rounded to 128 byte
+		 * columns
+		 */
+		width = ALIGN(((width + 2) / 3), 32) * 3;
+		height = ALIGN(height, 8);
+
+		/* column height is sizeimage / bytesperline */
+		bytesperline = width * 4 / 3;
+		sizeimage = bytesperline * height;
+		break;
+	}
+
+	pix_fmt->width = width;
+	pix_fmt->height = height;
+
+	pix_fmt->field = V4L2_FIELD_NONE;
+	pix_fmt->plane_fmt[0].bytesperline = bytesperline;
+	pix_fmt->plane_fmt[0].sizeimage = sizeimage;
+	pix_fmt->plane_fmt[1].bytesperline = bytesperline;
+	pix_fmt->plane_fmt[1].sizeimage = sizeimage / 2;
+	pix_fmt->num_planes = 2;
+}
+
+static int hevc_d_querycap(struct file *file, void *priv,
+			   struct v4l2_capability *cap)
+{
+	strscpy(cap->driver, HEVC_D_NAME, sizeof(cap->driver));
+	strscpy(cap->card, HEVC_D_NAME, sizeof(cap->card));
+	snprintf(cap->bus_info, sizeof(cap->bus_info),
+		 "platform:%s", HEVC_D_NAME);
+
+	return 0;
+}
+
+static int hevc_d_enum_fmt_vid_out(struct file *file, void *priv,
+				   struct v4l2_fmtdesc *f)
+{
+	/*
+	 * Input formats
+	 * H.265 Slice only
+	 */
+	if (f->index == 0) {
+		f->pixelformat = V4L2_PIX_FMT_HEVC_SLICE;
+		return 0;
+	}
+
+	return -EINVAL;
+}
+
+static int hevc_d_hevc_validate_sps(const struct v4l2_ctrl_hevc_sps * const sps)
+{
+	const unsigned int ctb_log2_size_y =
+			sps->log2_min_luma_coding_block_size_minus3 + 3 +
+			sps->log2_diff_max_min_luma_coding_block_size;
+	const unsigned int min_tb_log2_size_y =
+			sps->log2_min_luma_transform_block_size_minus2 + 2;
+	const unsigned int max_tb_log2_size_y = min_tb_log2_size_y +
+			sps->log2_diff_max_min_luma_transform_block_size;
+
+	/* Local limitations */
+	if (sps->pic_width_in_luma_samples < 32 ||
+	    sps->pic_width_in_luma_samples > 4096)
+		return 0;
+	if (sps->pic_height_in_luma_samples < 32 ||
+	    sps->pic_height_in_luma_samples > 4096)
+		return 0;
+	if (!(sps->bit_depth_luma_minus8 == 0 ||
+	      sps->bit_depth_luma_minus8 == 2))
+		return 0;
+	if (sps->bit_depth_luma_minus8 != sps->bit_depth_chroma_minus8)
+		return 0;
+	if (sps->chroma_format_idc != 1)
+		return 0;
+
+	/*  Limits from H.265 7.4.3.2.1 */
+	if (sps->log2_max_pic_order_cnt_lsb_minus4 > 12)
+		return 0;
+	if (sps->sps_max_dec_pic_buffering_minus1 > 15)
+		return 0;
+	if (sps->sps_max_num_reorder_pics >
+				sps->sps_max_dec_pic_buffering_minus1)
+		return 0;
+	if (ctb_log2_size_y > 6)
+		return 0;
+	if (max_tb_log2_size_y > 5)
+		return 0;
+	if (max_tb_log2_size_y > ctb_log2_size_y)
+		return 0;
+	if (sps->max_transform_hierarchy_depth_inter >
+				(ctb_log2_size_y - min_tb_log2_size_y))
+		return 0;
+	if (sps->max_transform_hierarchy_depth_intra >
+				(ctb_log2_size_y - min_tb_log2_size_y))
+		return 0;
+	/* Check pcm stuff */
+	if (sps->num_short_term_ref_pic_sets > 64)
+		return 0;
+	if (sps->num_long_term_ref_pics_sps > 32)
+		return 0;
+	return 1;
+}
+
+static u32 pixelformat_from_sps(const struct v4l2_ctrl_hevc_sps * const sps,
+				const int index)
+{
+	u32 pf = 0;
+
+	if (!is_sps_set(sps) || !hevc_d_hevc_validate_sps(sps)) {
+		/* Treat this as an error? For now return both */
+		if (index == 0)
+			pf = V4L2_PIX_FMT_NV12MT_COL128;
+		else if (index == 1)
+			pf = V4L2_PIX_FMT_NV12MT_10_COL128;
+	} else if (index == 0) {
+		if (sps->bit_depth_luma_minus8 == 0)
+			pf = V4L2_PIX_FMT_NV12MT_COL128;
+		else if (sps->bit_depth_luma_minus8 == 2)
+			pf = V4L2_PIX_FMT_NV12MT_10_COL128;
+	}
+
+	return pf;
+}
+
+static struct v4l2_pix_format_mplane
+hevc_d_hevc_default_dst_fmt(struct hevc_d_ctx * const ctx)
+{
+	const struct v4l2_ctrl_hevc_sps * const sps =
+		hevc_d_find_control_data(ctx, V4L2_CID_STATELESS_HEVC_SPS);
+	struct v4l2_pix_format_mplane pix_fmt;
+
+	memset(&pix_fmt, 0, sizeof(pix_fmt));
+	if (is_sps_set(sps)) {
+		pix_fmt.width = sps->pic_width_in_luma_samples;
+		pix_fmt.height = sps->pic_height_in_luma_samples;
+		pix_fmt.pixelformat = pixelformat_from_sps(sps, 0);
+	}
+
+	hevc_d_prepare_dst_format(&pix_fmt);
+	return pix_fmt;
+}
+
+static u32 hevc_d_hevc_get_dst_pixelformat(struct hevc_d_ctx * const ctx,
+					   const int index)
+{
+	const struct v4l2_ctrl_hevc_sps * const sps =
+		hevc_d_find_control_data(ctx, V4L2_CID_STATELESS_HEVC_SPS);
+
+	return pixelformat_from_sps(sps, index);
+}
+
+static int hevc_d_enum_fmt_vid_cap(struct file *file, void *priv,
+				   struct v4l2_fmtdesc *f)
+{
+	struct hevc_d_ctx * const ctx = hevc_d_file2ctx(file);
+
+	const u32 pf = hevc_d_hevc_get_dst_pixelformat(ctx, f->index);
+
+	if (pf == 0)
+		return -EINVAL;
+
+	f->pixelformat = pf;
+	return 0;
+}
+
+/*
+ * get dst format - sets it to default if otherwise unset
+ * returns a pointer to the struct as a convienience
+ */
+static struct v4l2_pix_format_mplane *get_dst_fmt(struct hevc_d_ctx *const ctx)
+{
+	if (!ctx->dst_fmt_set)
+		ctx->dst_fmt = hevc_d_hevc_default_dst_fmt(ctx);
+	return &ctx->dst_fmt;
+}
+
+static int hevc_d_g_fmt_vid_cap(struct file *file, void *priv,
+				struct v4l2_format *f)
+{
+	struct hevc_d_ctx *ctx = hevc_d_file2ctx(file);
+
+	f->fmt.pix_mp = *get_dst_fmt(ctx);
+	return 0;
+}
+
+static int hevc_d_g_fmt_vid_out(struct file *file, void *priv,
+				struct v4l2_format *f)
+{
+	struct hevc_d_ctx *ctx = hevc_d_file2ctx(file);
+
+	f->fmt.pix_mp = ctx->src_fmt;
+	return 0;
+}
+
+static inline void copy_color(struct v4l2_pix_format_mplane *d,
+			      const struct v4l2_pix_format_mplane *s)
+{
+	d->colorspace   = s->colorspace;
+	d->xfer_func    = s->xfer_func;
+	d->ycbcr_enc    = s->ycbcr_enc;
+	d->quantization = s->quantization;
+}
+
+static int hevc_d_try_fmt_vid_cap(struct file *file, void *priv,
+				  struct v4l2_format *f)
+{
+	struct hevc_d_ctx *ctx = hevc_d_file2ctx(file);
+	const struct v4l2_ctrl_hevc_sps * const sps =
+		hevc_d_find_control_data(ctx, V4L2_CID_STATELESS_HEVC_SPS);
+	u32 pixelformat;
+	int i;
+
+	for (i = 0; (pixelformat = pixelformat_from_sps(sps, i)) != 0; i++) {
+		if (f->fmt.pix_mp.pixelformat == pixelformat)
+			break;
+	}
+
+	/*
+	 * We don't have any way of finding out colourspace so believe
+	 * anything we are told - take anything set in src as a default
+	 */
+	if (f->fmt.pix_mp.colorspace == V4L2_COLORSPACE_DEFAULT)
+		copy_color(&f->fmt.pix_mp, &ctx->src_fmt);
+
+	f->fmt.pix_mp.pixelformat = pixelformat;
+	hevc_d_prepare_dst_format(&f->fmt.pix_mp);
+	return 0;
+}
+
+static int hevc_d_try_fmt_vid_out(struct file *file, void *priv,
+				  struct v4l2_format *f)
+{
+	hevc_d_prepare_src_format(&f->fmt.pix_mp);
+	return 0;
+}
+
+static int hevc_d_s_fmt_vid_cap(struct file *file, void *priv,
+				struct v4l2_format *f)
+{
+	struct hevc_d_ctx *ctx = hevc_d_file2ctx(file);
+	struct vb2_queue *vq;
+	int ret;
+
+	vq = v4l2_m2m_get_vq(ctx->fh.m2m_ctx, f->type);
+	if (vb2_is_busy(vq))
+		return -EBUSY;
+
+	ret = hevc_d_try_fmt_vid_cap(file, priv, f);
+	if (ret)
+		return ret;
+
+	ctx->dst_fmt = f->fmt.pix_mp;
+	ctx->dst_fmt_set = 1;
+
+	return 0;
+}
+
+static int hevc_d_s_fmt_vid_out(struct file *file, void *priv,
+				struct v4l2_format *f)
+{
+	struct hevc_d_ctx *ctx = hevc_d_file2ctx(file);
+	struct vb2_queue *vq;
+	int ret;
+
+	vq = v4l2_m2m_get_vq(ctx->fh.m2m_ctx, f->type);
+	if (vb2_is_busy(vq))
+		return -EBUSY;
+
+	ret = hevc_d_try_fmt_vid_out(file, priv, f);
+	if (ret)
+		return ret;
+
+	ctx->src_fmt = f->fmt.pix_mp;
+	ctx->dst_fmt_set = 0;  /* Setting src invalidates dst */
+
+	vq->subsystem_flags |=
+		VB2_V4L2_FL_SUPPORTS_M2M_HOLD_CAPTURE_BUF;
+
+	/* Propagate colorspace information to capture. */
+	copy_color(&ctx->dst_fmt, &f->fmt.pix_mp);
+	return 0;
+}
+
+const struct v4l2_ioctl_ops hevc_d_ioctl_ops = {
+	.vidioc_querycap		= hevc_d_querycap,
+
+	.vidioc_enum_fmt_vid_cap	= hevc_d_enum_fmt_vid_cap,
+	.vidioc_g_fmt_vid_cap_mplane	= hevc_d_g_fmt_vid_cap,
+	.vidioc_try_fmt_vid_cap_mplane	= hevc_d_try_fmt_vid_cap,
+	.vidioc_s_fmt_vid_cap_mplane	= hevc_d_s_fmt_vid_cap,
+
+	.vidioc_enum_fmt_vid_out	= hevc_d_enum_fmt_vid_out,
+	.vidioc_g_fmt_vid_out_mplane	= hevc_d_g_fmt_vid_out,
+	.vidioc_try_fmt_vid_out_mplane	= hevc_d_try_fmt_vid_out,
+	.vidioc_s_fmt_vid_out_mplane	= hevc_d_s_fmt_vid_out,
+
+	.vidioc_reqbufs			= v4l2_m2m_ioctl_reqbufs,
+	.vidioc_querybuf		= v4l2_m2m_ioctl_querybuf,
+	.vidioc_qbuf			= v4l2_m2m_ioctl_qbuf,
+	.vidioc_dqbuf			= v4l2_m2m_ioctl_dqbuf,
+	.vidioc_prepare_buf		= v4l2_m2m_ioctl_prepare_buf,
+	.vidioc_create_bufs		= v4l2_m2m_ioctl_create_bufs,
+	.vidioc_expbuf			= v4l2_m2m_ioctl_expbuf,
+
+	.vidioc_streamon		= v4l2_m2m_ioctl_streamon,
+	.vidioc_streamoff		= v4l2_m2m_ioctl_streamoff,
+
+	.vidioc_try_decoder_cmd		= v4l2_m2m_ioctl_stateless_try_decoder_cmd,
+	.vidioc_decoder_cmd		= v4l2_m2m_ioctl_stateless_decoder_cmd,
+
+	.vidioc_subscribe_event		= v4l2_ctrl_subscribe_event,
+	.vidioc_unsubscribe_event	= v4l2_event_unsubscribe,
+};
+
+static int hevc_d_queue_setup(struct vb2_queue *vq, unsigned int *nbufs,
+			      unsigned int *nplanes, unsigned int sizes[],
+			      struct device *alloc_devs[])
+{
+	struct hevc_d_ctx *ctx = vb2_get_drv_priv(vq);
+	struct v4l2_pix_format_mplane *pix_fmt;
+
+	if (V4L2_TYPE_IS_OUTPUT(vq->type))
+		pix_fmt = &ctx->src_fmt;
+	else
+		pix_fmt = get_dst_fmt(ctx);
+
+	if (*nplanes) {
+		if (*nplanes < 2 ||
+		    sizes[0] < pix_fmt->plane_fmt[0].sizeimage ||
+		    sizes[1] < pix_fmt->plane_fmt[1].sizeimage)
+			return -EINVAL;
+	} else {
+		sizes[0] = pix_fmt->plane_fmt[0].sizeimage;
+		if (V4L2_TYPE_IS_OUTPUT(vq->type)) {
+			*nplanes = 1;
+		} else {
+			sizes[1] = pix_fmt->plane_fmt[1].sizeimage;
+			*nplanes = 2;
+		}
+	}
+
+	return 0;
+}
+
+static void hevc_d_queue_cleanup(struct vb2_queue *vq, u32 state)
+{
+	struct hevc_d_ctx *ctx = vb2_get_drv_priv(vq);
+	struct vb2_v4l2_buffer *vbuf;
+
+	for (;;) {
+		if (V4L2_TYPE_IS_OUTPUT(vq->type))
+			vbuf = v4l2_m2m_src_buf_remove(ctx->fh.m2m_ctx);
+		else
+			vbuf = v4l2_m2m_dst_buf_remove(ctx->fh.m2m_ctx);
+
+		if (!vbuf)
+			return;
+
+		v4l2_ctrl_request_complete(vbuf->vb2_buf.req_obj.req,
+					   &ctx->hdl);
+		v4l2_m2m_buf_done(vbuf, state);
+	}
+}
+
+static int hevc_d_buf_out_validate(struct vb2_buffer *vb)
+{
+	struct vb2_v4l2_buffer *vbuf = to_vb2_v4l2_buffer(vb);
+
+	vbuf->field = V4L2_FIELD_NONE;
+	return 0;
+}
+
+static int hevc_d_buf_prepare(struct vb2_buffer *vb)
+{
+	struct vb2_queue *vq = vb->vb2_queue;
+	struct hevc_d_ctx *ctx = vb2_get_drv_priv(vq);
+	struct v4l2_pix_format_mplane *pix_fmt;
+
+	if (V4L2_TYPE_IS_OUTPUT(vq->type))
+		pix_fmt = &ctx->src_fmt;
+	else
+		pix_fmt = &ctx->dst_fmt;
+
+	if (vb2_plane_size(vb, 0) < pix_fmt->plane_fmt[0].sizeimage ||
+	    vb2_plane_size(vb, 1) < pix_fmt->plane_fmt[1].sizeimage)
+		return -EINVAL;
+
+	vb2_set_plane_payload(vb, 0, pix_fmt->plane_fmt[0].sizeimage);
+	vb2_set_plane_payload(vb, 1, pix_fmt->plane_fmt[1].sizeimage);
+
+	return 0;
+}
+
+/* Only stops the clock if streaom off on both output & capture */
+static void stop_clock(struct hevc_d_dev *dev, struct hevc_d_ctx *ctx)
+{
+	if (ctx->src_stream_on ||
+	    ctx->dst_stream_on)
+		return;
+
+	clk_set_min_rate(dev->clock, 0);
+	clk_disable_unprepare(dev->clock);
+}
+
+/* Always starts the clock if it isn't already on this ctx */
+static int start_clock(struct hevc_d_dev *dev, struct hevc_d_ctx *ctx)
+{
+	int rv;
+
+	rv = clk_set_min_rate(dev->clock, dev->max_clock_rate);
+	if (rv) {
+		dev_err(dev->dev, "Failed to set clock rate\n");
+		return rv;
+	}
+
+	rv = clk_prepare_enable(dev->clock);
+	if (rv) {
+		dev_err(dev->dev, "Failed to enable clock\n");
+		return rv;
+	}
+
+	return 0;
+}
+
+static int hevc_d_start_streaming(struct vb2_queue *vq, unsigned int count)
+{
+	struct hevc_d_ctx *ctx = vb2_get_drv_priv(vq);
+	struct hevc_d_dev *dev = ctx->dev;
+	int ret = 0;
+
+	if (!V4L2_TYPE_IS_OUTPUT(vq->type)) {
+		ctx->dst_stream_on = 1;
+		goto ok;
+	}
+
+	if (ctx->src_fmt.pixelformat != V4L2_PIX_FMT_HEVC_SLICE) {
+		ret = -EINVAL;
+		goto fail_cleanup;
+	}
+
+	if (ctx->src_stream_on)
+		goto ok;
+
+	ret = start_clock(dev, ctx);
+	if (ret)
+		goto fail_cleanup;
+
+	ret = hevc_d_h265_start(ctx);
+	if (ret)
+		goto fail_stop_clock;
+
+	ctx->src_stream_on = 1;
+ok:
+	return 0;
+
+fail_stop_clock:
+	stop_clock(dev, ctx);
+fail_cleanup:
+	v4l2_err(&dev->v4l2_dev, "%s: qtype=%d: FAIL\n", __func__, vq->type);
+	hevc_d_queue_cleanup(vq, VB2_BUF_STATE_QUEUED);
+	return ret;
+}
+
+static void hevc_d_stop_streaming(struct vb2_queue *vq)
+{
+	struct hevc_d_ctx *ctx = vb2_get_drv_priv(vq);
+	struct hevc_d_dev *dev = ctx->dev;
+
+	if (V4L2_TYPE_IS_OUTPUT(vq->type)) {
+		ctx->src_stream_on = 0;
+		hevc_d_h265_stop(ctx);
+	} else {
+		ctx->dst_stream_on = 0;
+	}
+
+	hevc_d_queue_cleanup(vq, VB2_BUF_STATE_ERROR);
+
+	vb2_wait_for_all_buffers(vq);
+
+	stop_clock(dev, ctx);
+}
+
+static void hevc_d_buf_queue(struct vb2_buffer *vb)
+{
+	struct vb2_v4l2_buffer *vbuf = to_vb2_v4l2_buffer(vb);
+	struct hevc_d_ctx *ctx = vb2_get_drv_priv(vb->vb2_queue);
+
+	v4l2_m2m_buf_queue(ctx->fh.m2m_ctx, vbuf);
+}
+
+static void hevc_d_buf_request_complete(struct vb2_buffer *vb)
+{
+	struct hevc_d_ctx *ctx = vb2_get_drv_priv(vb->vb2_queue);
+
+	v4l2_ctrl_request_complete(vb->req_obj.req, &ctx->hdl);
+}
+
+static const struct vb2_ops hevc_d_qops = {
+	.queue_setup		= hevc_d_queue_setup,
+	.buf_prepare		= hevc_d_buf_prepare,
+	.buf_queue		= hevc_d_buf_queue,
+	.buf_out_validate	= hevc_d_buf_out_validate,
+	.buf_request_complete	= hevc_d_buf_request_complete,
+	.start_streaming	= hevc_d_start_streaming,
+	.stop_streaming		= hevc_d_stop_streaming,
+	.wait_prepare		= vb2_ops_wait_prepare,
+	.wait_finish		= vb2_ops_wait_finish,
+};
+
+int hevc_d_queue_init(void *priv, struct vb2_queue *src_vq,
+		      struct vb2_queue *dst_vq)
+{
+	struct hevc_d_ctx *ctx = priv;
+	int ret;
+
+	src_vq->type = V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE;
+	src_vq->io_modes = VB2_MMAP | VB2_DMABUF;
+	src_vq->drv_priv = ctx;
+	src_vq->buf_struct_size = sizeof(struct hevc_d_buffer);
+	src_vq->ops = &hevc_d_qops;
+	src_vq->mem_ops = &vb2_dma_contig_memops;
+	src_vq->timestamp_flags = V4L2_BUF_FLAG_TIMESTAMP_COPY;
+	src_vq->lock = &ctx->ctx_mutex;
+	src_vq->dev = ctx->dev->dev;
+	src_vq->supports_requests = true;
+	src_vq->requires_requests = true;
+
+	ret = vb2_queue_init(src_vq);
+	if (ret)
+		return ret;
+
+	dst_vq->type = V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE;
+	dst_vq->io_modes = VB2_MMAP | VB2_DMABUF;
+	dst_vq->drv_priv = ctx;
+	dst_vq->buf_struct_size = sizeof(struct hevc_d_buffer);
+	dst_vq->min_queued_buffers = 1;
+	dst_vq->ops = &hevc_d_qops;
+	dst_vq->mem_ops = &vb2_dma_contig_memops;
+	dst_vq->timestamp_flags = V4L2_BUF_FLAG_TIMESTAMP_COPY;
+	dst_vq->lock = &ctx->ctx_mutex;
+	dst_vq->dev = ctx->dev->dev;
+
+	return vb2_queue_init(dst_vq);
+}
diff --git a/drivers/media/platform/raspberrypi/hevc_dec/hevc_d_video.h b/drivers/media/platform/raspberrypi/hevc_dec/hevc_d_video.h
new file mode 100644
index 000000000000..3ea193423194
--- /dev/null
+++ b/drivers/media/platform/raspberrypi/hevc_dec/hevc_d_video.h
@@ -0,0 +1,38 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Raspberry Pi HEVC driver
+ *
+ * Copyright (C) 2024 Raspberry Pi Ltd
+ *
+ * Based on the Cedrus VPU driver, that is:
+ *
+ * Copyright (C) 2016 Florent Revest <florent.revest@free-electrons.com>
+ * Copyright (C) 2018 Paul Kocialkowski <paul.kocialkowski@bootlin.com>
+ * Copyright (C) 2018 Bootlin
+ */
+
+#ifndef _HEVC_D_VIDEO_H_
+#define _HEVC_D_VIDEO_H_
+
+struct hevc_d_format {
+	u32		pixelformat;
+	u32		directions;
+	unsigned int	capabilities;
+};
+
+static inline int is_sps_set(const struct v4l2_ctrl_hevc_sps * const sps)
+{
+	return sps && sps->pic_width_in_luma_samples;
+}
+
+extern const struct v4l2_ioctl_ops hevc_d_ioctl_ops;
+
+int hevc_d_queue_init(void *priv, struct vb2_queue *src_vq,
+		      struct vb2_queue *dst_vq);
+
+size_t hevc_d_bit_buf_size(unsigned int w, unsigned int h, unsigned int bits_minus8);
+size_t hevc_d_round_up_size(const size_t x);
+
+void hevc_d_prepare_src_format(struct v4l2_pix_format_mplane *pix_fmt);
+
+#endif

-- 
2.34.1


