Return-Path: <devicetree+bounces-70573-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D29D08D3AF4
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2024 17:30:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 01C891C2130C
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2024 15:30:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 475D4181B9C;
	Wed, 29 May 2024 15:29:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="uFxecbGh"
X-Original-To: devicetree@vger.kernel.org
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B67C181D1C;
	Wed, 29 May 2024 15:29:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.167.242.64
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716996581; cv=none; b=KdLpyuvV8N3qJUXI+pCmL9+L3NQjtRu79/4d+XEzl0T7TWjmoB6mZ7WRjEjozO/PBed2RkUhNNuJinV3aAimyOAnRTZ5T6ROK+ZV7fnFoZHVa5yYHS4OmwEWFe7E4T4sa3VG+dLQu8qDw5hBTu2H15VukJkaZlVLhd4lk20yJY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716996581; c=relaxed/simple;
	bh=XxcGSyPAiUZ/hh5eIE+k+9lAAocmer1k9qTXVmiX/bw=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=R1Gb7MQsspefeFenUKX+1dKM7vP/xGb2Cr0aVctd1OPlF0z4Tom5hH1uaO4U/dLE4WRWlYr93tq7tyQKBkQW6ipeYsK3iY66/3S7foO1quJMJ1xyt39m8BX3QlT/jseQh755HTNNR+W6M3S+99QzyKnUs1+AjJofhUhpf/spycM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com; spf=pass smtp.mailfrom=ideasonboard.com; dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b=uFxecbGh; arc=none smtp.client-ip=213.167.242.64
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ideasonboard.com
Received: from mail.ideasonboard.com (cpc141996-chfd3-2-0-cust928.12-3.cable.virginm.net [86.13.91.161])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id ED6692F62;
	Wed, 29 May 2024 17:29:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1716996562;
	bh=XxcGSyPAiUZ/hh5eIE+k+9lAAocmer1k9qTXVmiX/bw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=uFxecbGh6SzBSyIAXuF66EmBBRlZJeU6JfZJ8AgMuGkl/n/vyLmIO/qteYxwWg7up
	 f6rKNQhxDxXRUwrOO6JRDhJkQRj+xOZqNA5u9UnA+3AOc5o6Lz/Rh7VEVqRUp+yGO3
	 e9aC1V2cSLQglEmJ4KwCVJzooQubiProqYaAfI7k=
From: Daniel Scally <dan.scally@ideasonboard.com>
To: linux-media@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Cc: jacopo.mondi@ideasonboard.com,
	nayden.kanchev@arm.com,
	robh+dt@kernel.org,
	mchehab@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	jerome.forissier@linaro.org,
	kieran.bingham@ideasonboard.com,
	laurent.pinchart@ideasonboard.com,
	sakari.ailus@iki.fi,
	dan.scally@ideasonboard.com
Subject: [PATCH v5 10/16] media: platform: Add mali-c55 3a stats devnode
Date: Wed, 29 May 2024 16:28:52 +0100
Message-Id: <20240529152858.183799-11-dan.scally@ideasonboard.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240529152858.183799-1-dan.scally@ideasonboard.com>
References: <20240529152858.183799-1-dan.scally@ideasonboard.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add a new code file to govern the 3a statistics capture node.

Acked-by: Nayden Kanchev  <nayden.kanchev@arm.com>
Co-developed-by: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
Signed-off-by: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
Signed-off-by: Daniel Scally <dan.scally@ideasonboard.com>
---
Changes in v5:

	- New patch

 drivers/media/platform/arm/mali-c55/Makefile  |   3 +-
 .../platform/arm/mali-c55/mali-c55-common.h   |  28 ++
 .../platform/arm/mali-c55/mali-c55-core.c     |  15 +
 .../platform/arm/mali-c55/mali-c55-isp.c      |   1 +
 .../arm/mali-c55/mali-c55-registers.h         |   3 +
 .../platform/arm/mali-c55/mali-c55-stats.c    | 350 ++++++++++++++++++
 6 files changed, 399 insertions(+), 1 deletion(-)
 create mode 100644 drivers/media/platform/arm/mali-c55/mali-c55-stats.c

diff --git a/drivers/media/platform/arm/mali-c55/Makefile b/drivers/media/platform/arm/mali-c55/Makefile
index 77dcb2fbf0f4..cd5a64bf0c62 100644
--- a/drivers/media/platform/arm/mali-c55/Makefile
+++ b/drivers/media/platform/arm/mali-c55/Makefile
@@ -4,6 +4,7 @@ mali-c55-y := mali-c55-capture.o \
 	      mali-c55-core.o \
 	      mali-c55-isp.o \
 	      mali-c55-tpg.o \
-	      mali-c55-resizer.o
+	      mali-c55-resizer.o \
+	      mali-c55-stats.o
 
 obj-$(CONFIG_VIDEO_MALI_C55) += mali-c55.o
diff --git a/drivers/media/platform/arm/mali-c55/mali-c55-common.h b/drivers/media/platform/arm/mali-c55/mali-c55-common.h
index 2d0c4d152beb..44119e04009b 100644
--- a/drivers/media/platform/arm/mali-c55/mali-c55-common.h
+++ b/drivers/media/platform/arm/mali-c55/mali-c55-common.h
@@ -79,6 +79,7 @@ enum mali_c55_isp_pads {
 	MALI_C55_ISP_PAD_SINK_VIDEO,
 	MALI_C55_ISP_PAD_SOURCE,
 	MALI_C55_ISP_PAD_SOURCE_BYPASS,
+	MALI_C55_ISP_PAD_SOURCE_3A,
 	MALI_C55_ISP_NUM_PADS,
 };
 
@@ -194,6 +195,28 @@ struct mali_c55_cap_dev {
 	bool streaming;
 };
 
+struct mali_c55_stats_buf {
+	struct vb2_v4l2_buffer vb;
+	spinlock_t lock;
+	unsigned int segments_remaining;
+	struct list_head queue;
+	bool failed;
+};
+
+struct mali_c55_stats {
+	struct mali_c55 *mali_c55;
+	struct video_device vdev;
+	struct dma_chan *channel;
+	struct vb2_queue queue;
+	struct media_pad pad;
+	struct mutex lock;
+
+	struct {
+		spinlock_t lock;
+		struct list_head queue;
+	} buffers;
+};
+
 enum mali_c55_config_spaces {
 	MALI_C55_CONFIG_PING,
 	MALI_C55_CONFIG_PONG,
@@ -224,6 +247,7 @@ struct mali_c55 {
 	struct mali_c55_isp isp;
 	struct mali_c55_resizer resizers[MALI_C55_NUM_RZRS];
 	struct mali_c55_cap_dev cap_devs[MALI_C55_NUM_CAP_DEVS];
+	struct mali_c55_stats stats;
 
 	struct list_head contexts;
 	enum mali_c55_config_spaces next_config;
@@ -245,6 +269,8 @@ int mali_c55_register_resizers(struct mali_c55 *mali_c55);
 void mali_c55_unregister_resizers(struct mali_c55 *mali_c55);
 int mali_c55_register_capture_devs(struct mali_c55 *mali_c55);
 void mali_c55_unregister_capture_devs(struct mali_c55 *mali_c55);
+int mali_c55_register_stats(struct mali_c55 *mali_c55);
+void mali_c55_unregister_stats(struct mali_c55 *mali_c55);
 struct mali_c55_ctx *mali_c55_get_active_context(struct mali_c55 *mali_c55);
 void mali_c55_set_plane_done(struct mali_c55_cap_dev *cap_dev,
 			     enum mali_c55_planes plane);
@@ -262,5 +288,7 @@ mali_c55_isp_fmt_next(const struct mali_c55_isp_fmt *fmt);
 bool mali_c55_isp_is_format_supported(unsigned int mbus_code);
 #define for_each_mali_isp_fmt(fmt)\
 	for ((fmt) = NULL; ((fmt) = mali_c55_isp_fmt_next((fmt)));)
+void mali_c55_stats_fill_buffer(struct mali_c55 *mali_c55,
+				enum mali_c55_config_spaces cfg_space);
 
 #endif /* _MALI_C55_COMMON_H */
diff --git a/drivers/media/platform/arm/mali-c55/mali-c55-core.c b/drivers/media/platform/arm/mali-c55/mali-c55-core.c
index 50caf5ee7474..9ea70010876c 100644
--- a/drivers/media/platform/arm/mali-c55/mali-c55-core.c
+++ b/drivers/media/platform/arm/mali-c55/mali-c55-core.c
@@ -337,6 +337,16 @@ static int mali_c55_create_links(struct mali_c55 *mali_c55)
 		}
 	}
 
+	ret = media_create_pad_link(&mali_c55->isp.sd.entity,
+			MALI_C55_ISP_PAD_SOURCE_3A,
+			&mali_c55->stats.vdev.entity, 0,
+			MEDIA_LNK_FL_ENABLED | MEDIA_LNK_FL_IMMUTABLE);
+	if (ret) {
+		dev_err(mali_c55->dev,
+			"failed to link ISP and 3a stats node\n");
+		goto err_remove_links;
+	}
+
 	return 0;
 
 err_remove_links:
@@ -350,6 +360,7 @@ static void mali_c55_unregister_entities(struct mali_c55 *mali_c55)
 	mali_c55_unregister_isp(mali_c55);
 	mali_c55_unregister_resizers(mali_c55);
 	mali_c55_unregister_capture_devs(mali_c55);
+	mali_c55_unregister_stats(mali_c55);
 }
 
 static int mali_c55_register_entities(struct mali_c55 *mali_c55)
@@ -372,6 +383,10 @@ static int mali_c55_register_entities(struct mali_c55 *mali_c55)
 	if (ret)
 		goto err_unregister_entities;
 
+	ret = mali_c55_register_stats(mali_c55);
+	if (ret)
+		goto err_unregister_entities;
+
 	ret = mali_c55_create_links(mali_c55);
 	if (ret)
 		goto err_unregister_entities;
diff --git a/drivers/media/platform/arm/mali-c55/mali-c55-isp.c b/drivers/media/platform/arm/mali-c55/mali-c55-isp.c
index ea8b7b866e7a..94876fba3353 100644
--- a/drivers/media/platform/arm/mali-c55/mali-c55-isp.c
+++ b/drivers/media/platform/arm/mali-c55/mali-c55-isp.c
@@ -564,6 +564,7 @@ int mali_c55_register_isp(struct mali_c55 *mali_c55)
 	isp->pads[MALI_C55_ISP_PAD_SINK_VIDEO].flags = MEDIA_PAD_FL_SINK;
 	isp->pads[MALI_C55_ISP_PAD_SOURCE].flags = MEDIA_PAD_FL_SOURCE;
 	isp->pads[MALI_C55_ISP_PAD_SOURCE_BYPASS].flags = MEDIA_PAD_FL_SOURCE;
+	isp->pads[MALI_C55_ISP_PAD_SOURCE_3A].flags = MEDIA_PAD_FL_SOURCE;
 
 	ret = media_entity_pads_init(&sd->entity, MALI_C55_ISP_NUM_PADS,
 				     isp->pads);
diff --git a/drivers/media/platform/arm/mali-c55/mali-c55-registers.h b/drivers/media/platform/arm/mali-c55/mali-c55-registers.h
index cb27abde2aa5..eb3719245ec3 100644
--- a/drivers/media/platform/arm/mali-c55/mali-c55-registers.h
+++ b/drivers/media/platform/arm/mali-c55/mali-c55-registers.h
@@ -68,6 +68,9 @@
 #define MALI_C55_VC_START(v)				((v) & 0xffff)
 #define MALI_C55_VC_SIZE(v)				(((v) & 0xffff) << 16)
 
+#define MALI_C55_REG_1024BIN_HIST			0x054a8
+#define MALI_C55_1024BIN_HIST_SIZE			4096
+
 /* Ping/Pong Configuration Space */
 #define MALI_C55_REG_BASE_ADDR				0x18e88
 #define MALI_C55_REG_BYPASS_0				0x18eac
diff --git a/drivers/media/platform/arm/mali-c55/mali-c55-stats.c b/drivers/media/platform/arm/mali-c55/mali-c55-stats.c
new file mode 100644
index 000000000000..aa40480ed814
--- /dev/null
+++ b/drivers/media/platform/arm/mali-c55/mali-c55-stats.c
@@ -0,0 +1,350 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * ARM Mali-C55 ISP Driver - 3A Statistics capture device
+ *
+ * Copyright (C) 2023 Ideas on Board Oy
+ */
+
+#include <linux/dmaengine.h>
+#include <linux/media/arm/mali-c55-config.h>
+#include <linux/spinlock.h>
+
+#include <media/media-entity.h>
+#include <media/v4l2-dev.h>
+#include <media/v4l2-event.h>
+#include <media/v4l2-fh.h>
+#include <media/v4l2-ioctl.h>
+#include <media/videobuf2-core.h>
+#include <media/videobuf2-dma-contig.h>
+
+#include "mali-c55-common.h"
+#include "mali-c55-registers.h"
+
+static unsigned int metering_space_addrs[] = {
+	[MALI_C55_CONFIG_PING] = 0x095AC,
+	[MALI_C55_CONFIG_PONG] = 0x2156C,
+};
+
+static int mali_c55_stats_enum_fmt_meta_cap(struct file *file, void *fh,
+					    struct v4l2_fmtdesc *f)
+{
+	if (f->index || f->type != V4L2_BUF_TYPE_META_CAPTURE)
+		return -EINVAL;
+
+	f->pixelformat = V4L2_META_FMT_MALI_C55_3A_STATS;
+
+	return 0;
+}
+
+static int mali_c55_stats_g_fmt_meta_cap(struct file *file, void *fh,
+					 struct v4l2_format *f)
+{
+	static const struct v4l2_meta_format mfmt = {
+		.dataformat = V4L2_META_FMT_MALI_C55_3A_STATS,
+		.buffersize = sizeof(struct mali_c55_stats_buffer)
+	};
+
+	if (f->type != V4L2_BUF_TYPE_META_CAPTURE)
+		return -EINVAL;
+
+	f->fmt.meta = mfmt;
+
+	return 0;
+}
+
+static int mali_c55_stats_querycap(struct file *file,
+				   void *priv, struct v4l2_capability *cap)
+{
+	strscpy(cap->driver, MALI_C55_DRIVER_NAME, sizeof(cap->driver));
+	strscpy(cap->card, "ARM Mali-C55 ISP", sizeof(cap->card));
+
+	return 0;
+}
+
+static const struct v4l2_ioctl_ops mali_c55_stats_v4l2_ioctl_ops = {
+	.vidioc_reqbufs = vb2_ioctl_reqbufs,
+	.vidioc_querybuf = vb2_ioctl_querybuf,
+	.vidioc_create_bufs = vb2_ioctl_create_bufs,
+	.vidioc_qbuf = vb2_ioctl_qbuf,
+	.vidioc_expbuf = vb2_ioctl_expbuf,
+	.vidioc_dqbuf = vb2_ioctl_dqbuf,
+	.vidioc_prepare_buf = vb2_ioctl_prepare_buf,
+	.vidioc_streamon = vb2_ioctl_streamon,
+	.vidioc_streamoff = vb2_ioctl_streamoff,
+	.vidioc_enum_fmt_meta_cap = mali_c55_stats_enum_fmt_meta_cap,
+	.vidioc_g_fmt_meta_cap = mali_c55_stats_g_fmt_meta_cap,
+	.vidioc_s_fmt_meta_cap = mali_c55_stats_g_fmt_meta_cap,
+	.vidioc_try_fmt_meta_cap = mali_c55_stats_g_fmt_meta_cap,
+	.vidioc_querycap = mali_c55_stats_querycap,
+	.vidioc_subscribe_event = v4l2_ctrl_subscribe_event,
+	.vidioc_unsubscribe_event = v4l2_event_unsubscribe,
+};
+
+static const struct v4l2_file_operations mali_c55_stats_v4l2_fops = {
+	.owner = THIS_MODULE,
+	.unlocked_ioctl = video_ioctl2,
+	.open = v4l2_fh_open,
+	.release = vb2_fop_release,
+	.poll = vb2_fop_poll,
+	.mmap = vb2_fop_mmap,
+};
+
+static int
+mali_c55_stats_queue_setup(struct vb2_queue *q, unsigned int *num_buffers,
+			   unsigned int *num_planes, unsigned int sizes[],
+			   struct device *alloc_devs[])
+{
+	struct mali_c55_stats *stats = vb2_get_drv_priv(q);
+
+	if (*num_planes && *num_planes > 1)
+		return -EINVAL;
+
+	if (sizes[0] && sizes[0] != sizeof(struct mali_c55_stats_buffer))
+		return -EINVAL;
+
+	*num_planes = 1;
+	sizes[0] = sizeof(struct mali_c55_stats_buffer);
+
+	if (stats->channel)
+		alloc_devs[0] = stats->channel->device->dev;
+
+	return 0;
+}
+
+static void mali_c55_stats_buf_queue(struct vb2_buffer *vb)
+{
+	struct mali_c55_stats *stats = vb2_get_drv_priv(vb->vb2_queue);
+	struct vb2_v4l2_buffer *vbuf = to_vb2_v4l2_buffer(vb);
+	struct mali_c55_stats_buf *buf = container_of(vbuf,
+						struct mali_c55_stats_buf, vb);
+
+	vb2_set_plane_payload(vb, 0, sizeof(struct mali_c55_stats_buffer));
+	buf->segments_remaining = 2;
+	buf->failed = false;
+
+	spin_lock(&stats->buffers.lock);
+	list_add_tail(&buf->queue, &stats->buffers.queue);
+	spin_unlock(&stats->buffers.lock);
+}
+
+static void mali_c55_stats_stop_streaming(struct vb2_queue *q)
+{
+	struct mali_c55_stats *stats = vb2_get_drv_priv(q);
+	struct mali_c55_stats_buf *buf, *tmp;
+
+	spin_lock(&stats->buffers.lock);
+
+	list_for_each_entry_safe(buf, tmp, &stats->buffers.queue, queue) {
+		list_del(&buf->queue);
+		vb2_buffer_done(&buf->vb.vb2_buf, VB2_BUF_STATE_ERROR);
+	}
+
+	spin_unlock(&stats->buffers.lock);
+}
+
+static const struct vb2_ops mali_c55_stats_vb2_ops = {
+	.queue_setup = mali_c55_stats_queue_setup,
+	.buf_queue = mali_c55_stats_buf_queue,
+	.wait_prepare = vb2_ops_wait_prepare,
+	.wait_finish = vb2_ops_wait_finish,
+	.stop_streaming = mali_c55_stats_stop_streaming,
+};
+
+static void
+mali_c55_stats_metering_complete(void *param,
+				 const struct dmaengine_result *result)
+{
+	struct mali_c55_stats_buf *buf = param;
+
+	spin_lock(&buf->lock);
+
+	if (buf->failed)
+		goto out_unlock;
+
+	buf->vb.vb2_buf.timestamp = ktime_get_boottime_ns();
+
+	if (result->result != DMA_TRANS_NOERROR) {
+		buf->failed = true;
+		vb2_buffer_done(&buf->vb.vb2_buf, VB2_BUF_STATE_ERROR);
+		goto out_unlock;
+	}
+
+	if (!--buf->segments_remaining)
+		vb2_buffer_done(&buf->vb.vb2_buf, VB2_BUF_STATE_DONE);
+
+out_unlock:
+	spin_unlock(&buf->lock);
+}
+
+static int mali_c55_stats_dma_xfer(struct mali_c55_stats *stats, dma_addr_t src,
+				   dma_addr_t dst,
+				   struct mali_c55_stats_buf *buf,
+				   size_t length,
+				   void (*callback)(void *, const struct dmaengine_result *result))
+{
+	struct dma_async_tx_descriptor *tx;
+	dma_cookie_t cookie;
+
+	tx = dmaengine_prep_dma_memcpy(stats->channel, dst, src, length, 0);
+	if (!tx) {
+		dev_err(stats->mali_c55->dev, "failed to prep stats DMA\n");
+		return -EIO;
+	}
+
+	tx->callback_result = callback;
+	tx->callback_param = buf;
+
+	cookie = dmaengine_submit(tx);
+	if (dma_submit_error(cookie)) {
+		dev_err(stats->mali_c55->dev, "failed to submit stats DMA\n");
+		return -EIO;
+	}
+
+	dma_async_issue_pending(stats->channel);
+	return 0;
+}
+
+void mali_c55_stats_fill_buffer(struct mali_c55 *mali_c55,
+				enum mali_c55_config_spaces cfg_space)
+{
+	struct mali_c55_ctx *ctx = mali_c55_get_active_context(mali_c55);
+	struct mali_c55_stats *stats = &mali_c55->stats;
+	struct mali_c55_stats_buf *buf = NULL;
+	dma_addr_t src, dst;
+	int ret;
+
+	spin_lock(&stats->buffers.lock);
+	if (!list_empty(&stats->buffers.queue)) {
+		buf = list_first_entry(&stats->buffers.queue,
+				       struct mali_c55_stats_buf, queue);
+		list_del(&buf->queue);
+	}
+	spin_unlock(&stats->buffers.lock);
+
+	if (!buf)
+		return;
+
+	buf->vb.sequence = mali_c55->isp.frame_sequence;
+
+	/*
+	 * There are infact two noncontiguous sections of the ISP's
+	 * memory space that hold statistics for 3a algorithms to use. A
+	 * section in each config space and a global section holding
+	 * histograms which is double buffered and so holds data for the
+	 * last frame. We need to read both.
+	 */
+	src = ctx->base + MALI_C55_REG_1024BIN_HIST;
+	dst = vb2_dma_contig_plane_dma_addr(&buf->vb.vb2_buf, 0);
+
+	ret = mali_c55_stats_dma_xfer(stats, src, dst, buf,
+				      MALI_C55_1024BIN_HIST_SIZE,
+				      mali_c55_stats_metering_complete);
+	if (ret)
+		goto err_fail_buffer;
+
+	src = ctx->base + metering_space_addrs[cfg_space];
+	dst += MALI_C55_1024BIN_HIST_SIZE;
+
+	ret = mali_c55_stats_dma_xfer(
+		stats, src, dst, buf,
+		sizeof(struct mali_c55_stats_buffer) - MALI_C55_1024BIN_HIST_SIZE,
+		mali_c55_stats_metering_complete);
+	if (ret) {
+		dmaengine_terminate_sync(stats->channel);
+		goto err_fail_buffer;
+	}
+
+	return;
+
+err_fail_buffer:
+	vb2_buffer_done(&buf->vb.vb2_buf, VB2_BUF_STATE_ERROR);
+}
+
+void mali_c55_unregister_stats(struct mali_c55 *mali_c55)
+{
+	struct mali_c55_stats *stats = &mali_c55->stats;
+
+	if (!video_is_registered(&stats->vdev))
+		return;
+
+	vb2_video_unregister_device(&stats->vdev);
+	media_entity_cleanup(&stats->vdev.entity);
+	dma_release_channel(stats->channel);
+	mutex_destroy(&stats->lock);
+}
+
+int mali_c55_register_stats(struct mali_c55 *mali_c55)
+{
+	struct mali_c55_stats *stats = &mali_c55->stats;
+	struct video_device *vdev = &stats->vdev;
+	struct vb2_queue *vb2q = &stats->queue;
+	dma_cap_mask_t mask;
+	int ret;
+
+	mutex_init(&stats->lock);
+	INIT_LIST_HEAD(&stats->buffers.queue);
+
+	dma_cap_zero(mask);
+	dma_cap_set(DMA_MEMCPY, mask);
+
+	stats->channel = dma_request_channel(mask, 0, NULL);
+	if (!stats->channel) {
+		ret = -ENODEV;
+		goto err_destroy_mutex;
+	}
+
+	stats->pad.flags = MEDIA_PAD_FL_SINK;
+	ret = media_entity_pads_init(&stats->vdev.entity, 1, &stats->pad);
+	if (ret)
+		goto err_release_dma_channel;
+
+	vb2q->type = V4L2_BUF_TYPE_META_CAPTURE;
+	vb2q->io_modes = VB2_MMAP | VB2_DMABUF;
+	vb2q->drv_priv = stats;
+	vb2q->mem_ops = &vb2_dma_contig_memops;
+	vb2q->ops = &mali_c55_stats_vb2_ops;
+	vb2q->buf_struct_size = sizeof(struct mali_c55_stats_buf);
+	vb2q->min_queued_buffers = 1;
+	vb2q->timestamp_flags = V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC;
+	vb2q->lock = &stats->lock;
+	vb2q->dev = mali_c55->dev;
+
+	ret = vb2_queue_init(vb2q);
+	if (ret) {
+		dev_err(mali_c55->dev, "stats vb2 queue init failed\n");
+		goto err_cleanup_entity;
+	}
+
+	strscpy(stats->vdev.name, "mali-c55 3a stats", sizeof(stats->vdev.name));
+	vdev->release = video_device_release_empty;
+	vdev->fops = &mali_c55_stats_v4l2_fops;
+	vdev->ioctl_ops = &mali_c55_stats_v4l2_ioctl_ops;
+	vdev->lock = &stats->lock;
+	vdev->v4l2_dev = &mali_c55->v4l2_dev;
+	vdev->queue = &stats->queue;
+	vdev->device_caps = V4L2_CAP_META_CAPTURE | V4L2_CAP_STREAMING;
+	vdev->vfl_dir = VFL_DIR_RX;
+	video_set_drvdata(vdev, stats);
+
+	ret = video_register_device(vdev, VFL_TYPE_VIDEO, -1);
+	if (ret) {
+		dev_err(mali_c55->dev,
+			"failed to register stats video device\n");
+		goto err_release_vb2q;
+	}
+
+	stats->mali_c55 = mali_c55;
+
+	return 0;
+
+err_release_vb2q:
+	vb2_queue_release(vb2q);
+err_cleanup_entity:
+	media_entity_cleanup(&stats->vdev.entity);
+err_release_dma_channel:
+	dma_release_channel(stats->channel);
+err_destroy_mutex:
+	mutex_destroy(&stats->lock);
+
+	return ret;
+}
-- 
2.34.1


