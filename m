Return-Path: <devicetree+bounces-77948-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DF55910824
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2024 16:26:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D22CE282D2D
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2024 14:26:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F5411AE87C;
	Thu, 20 Jun 2024 14:26:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="uagEoOdW"
X-Original-To: devicetree@vger.kernel.org
Received: from madrid.collaboradmins.com (madrid.collaboradmins.com [46.235.227.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 505431AE0B2;
	Thu, 20 Jun 2024 14:26:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.235.227.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718893581; cv=none; b=JKnwaCnskv+8Jd0+CcwIsMhXnXEULZaxnv6De6xXdg2d8Btj9MQsh691yg3+IHxPX/fStICdUwV3qWbg3P3geJ0emWAq0dbTxg6mZ38f60zRFVLiCvZhLtXkAtvFDFfMLXujIuk9Hz152ZnKlLH/Up9xDsqiNNdlJlZozkcRCHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718893581; c=relaxed/simple;
	bh=tpfqWtguJcRWvUgvyb8g/OiIES7RkTLgjWkHtpz7ikA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=r/VqFeKzyUejJ6YlEnL6axI5I9EXXTVnAyxT4jOUQB9gotjqGKeTpu3naspk1S/xLsvk9FsuyR9hlSPbOx4rzwmy7Hmd9R3sApDG0PHkchqj+xAIqxoIj87jgmcZB3oEwxyG7WF455iTuusSeGFuhWtvMRdImOx/Nynl9zniXh8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=uagEoOdW; arc=none smtp.client-ip=46.235.227.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1718893575;
	bh=tpfqWtguJcRWvUgvyb8g/OiIES7RkTLgjWkHtpz7ikA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=uagEoOdWHYcBS6Z1+BBF7Fmty/0ECTlN/Pfu8b1dkb/1zUy2MJVEO/eFfUQfXdMsm
	 Ee+9on4duYbMPWRIEGmsiaO7e7R2f2auiw3Q2Da8W5S77afwkTgnu0h6bLXZwJwXwE
	 Vp44QOYfVBkM5kmrAYCS6pNRI+oezobx6dz1jz5kAyoqX5wlQR+FojvySj6gRiTCCJ
	 3tRq0rjkqi4XJjzpSjCvyDzsX0tXUiU4l2MMWK9yZjwwYaAe1V6l4C71UAaDCXKHw9
	 3LNdC1CCK+a1swLU8g+k9CjJ7Im737duMOpUDMTEhq6AQOCPosW0sq0tD5rhh03viV
	 xUgRKl2qTDj3Q==
Received: from arisu.hitronhub.home (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: detlev)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 0301137821D8;
	Thu, 20 Jun 2024 14:26:11 +0000 (UTC)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: linux-kernel@vger.kernel.org
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Dragan Simic <dsimic@manjaro.org>,
	Diederik de Haas <didi.debian@cknow.org>,
	Andy Yan <andy.yan@rock-chips.com>,
	Boris Brezillon <boris.brezillon@collabora.com>,
	Hans Verkuil <hverkuil-cisco@xs4all.nl>,
	Daniel Almeida <daniel.almeida@collabora.com>,
	Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
	Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Alex Bee <knaerzche@gmail.com>,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-staging@lists.linux.dev,
	Detlev Casanova <detlev.casanova@collabora.com>
Subject: [PATCH v3 2/4] media: rockchip: Introduce the rkvdec2 driver
Date: Thu, 20 Jun 2024 10:19:44 -0400
Message-ID: <20240620142532.406564-3-detlev.casanova@collabora.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240620142532.406564-1-detlev.casanova@collabora.com>
References: <20240620142532.406564-1-detlev.casanova@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This driver supports the second generation of the Rockchip Video
decoder, also known as vdpu34x.
It is currently only used on the RK3588(s) SoC.

There are 2 decoders on the RK3588 SoC that can work in pair to decode
8K video at 30 FPS but currently, only using one core at a time is
supported.

Scheduling requests between the two cores will be implemented later.

The core supports H264, HEVC, VP9 and AVS2 decoding but this driver
currently only supports H264.

The driver is based on rkvdec and they may share some code in the
future.
The decision to make a different driver is mainly because rkvdec2 has
more features and can work with multiple cores.

The registers are mapped in a struct in RAM using bitfields. It is IO
copied to the HW when all values are configured.
The decision to use such a struct instead of writing buffers one by one
is based on the following reasons:
 - Rockchip cores are known to misbehave when registers are not written
   in address order,
 - Those cores also need the software to write all registers, even if
   they are written their default values or are not related to the task
   (this core will not start decoding some H264 frames if some VP9
   registers are not written to 0)
 - In the future, to support multiple cores, the scheduler could be
   optimized by storing the precomputed registers values and copy them
   to the HW as soos as a core becomes available.

This makes the code more readable and may bring performance improvements
in future features.

Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
---
 drivers/staging/media/Kconfig                |    1 +
 drivers/staging/media/Makefile               |    1 +
 drivers/staging/media/rkvdec2/Kconfig        |   15 +
 drivers/staging/media/rkvdec2/Makefile       |    3 +
 drivers/staging/media/rkvdec2/TODO           |    9 +
 drivers/staging/media/rkvdec2/rkvdec2-h264.c |  739 +++++++++++
 drivers/staging/media/rkvdec2/rkvdec2-regs.h |  345 +++++
 drivers/staging/media/rkvdec2/rkvdec2.c      | 1253 ++++++++++++++++++
 drivers/staging/media/rkvdec2/rkvdec2.h      |  130 ++
 9 files changed, 2496 insertions(+)
 create mode 100644 drivers/staging/media/rkvdec2/Kconfig
 create mode 100644 drivers/staging/media/rkvdec2/Makefile
 create mode 100644 drivers/staging/media/rkvdec2/TODO
 create mode 100644 drivers/staging/media/rkvdec2/rkvdec2-h264.c
 create mode 100644 drivers/staging/media/rkvdec2/rkvdec2-regs.h
 create mode 100644 drivers/staging/media/rkvdec2/rkvdec2.c
 create mode 100644 drivers/staging/media/rkvdec2/rkvdec2.h

diff --git a/drivers/staging/media/Kconfig b/drivers/staging/media/Kconfig
index 554c2e475ce3..7f377d37e670 100644
--- a/drivers/staging/media/Kconfig
+++ b/drivers/staging/media/Kconfig
@@ -35,6 +35,7 @@ source "drivers/staging/media/meson/vdec/Kconfig"
 source "drivers/staging/media/omap4iss/Kconfig"
 
 source "drivers/staging/media/rkvdec/Kconfig"
+source "drivers/staging/media/rkvdec2/Kconfig"
 
 source "drivers/staging/media/starfive/Kconfig"
 
diff --git a/drivers/staging/media/Makefile b/drivers/staging/media/Makefile
index dcaeeca0ee6d..0a2d89db32b2 100644
--- a/drivers/staging/media/Makefile
+++ b/drivers/staging/media/Makefile
@@ -6,6 +6,7 @@ obj-$(CONFIG_VIDEO_MAX96712)	+= max96712/
 obj-$(CONFIG_VIDEO_MESON_VDEC)	+= meson/vdec/
 obj-$(CONFIG_VIDEO_OMAP4)	+= omap4iss/
 obj-$(CONFIG_VIDEO_ROCKCHIP_VDEC)	+= rkvdec/
+obj-$(CONFIG_VIDEO_ROCKCHIP_VDEC2)	+= rkvdec2/
 obj-$(CONFIG_VIDEO_STARFIVE_CAMSS)	+= starfive/
 obj-$(CONFIG_VIDEO_SUNXI)	+= sunxi/
 obj-$(CONFIG_VIDEO_TEGRA)	+= tegra-video/
diff --git a/drivers/staging/media/rkvdec2/Kconfig b/drivers/staging/media/rkvdec2/Kconfig
new file mode 100644
index 000000000000..fd505cb7aff9
--- /dev/null
+++ b/drivers/staging/media/rkvdec2/Kconfig
@@ -0,0 +1,15 @@
+# SPDX-License-Identifier: GPL-2.0
+config VIDEO_ROCKCHIP_VDEC2
+	tristate "Rockchip Video Decoder driver 2"
+	depends on ARCH_ROCKCHIP || COMPILE_TEST
+	depends on VIDEO_DEV
+	select MEDIA_CONTROLLER
+	select VIDEOBUF2_DMA_CONTIG
+	select VIDEOBUF2_VMALLOC
+	select V4L2_MEM2MEM_DEV
+	select V4L2_H264
+	help
+	  Support for the Rockchip Video Decoder 2 IP present on Rockchip SoCs,
+	  which accelerates video decoding.
+	  To compile this driver as a module, choose M here: the module
+	  will be called rockchip-vdec2.
diff --git a/drivers/staging/media/rkvdec2/Makefile b/drivers/staging/media/rkvdec2/Makefile
new file mode 100644
index 000000000000..b5a6ac701970
--- /dev/null
+++ b/drivers/staging/media/rkvdec2/Makefile
@@ -0,0 +1,3 @@
+obj-$(CONFIG_VIDEO_ROCKCHIP_VDEC2) += rockchip-vdec2.o
+
+rockchip-vdec2-y += rkvdec2.o rkvdec2-h264.o
diff --git a/drivers/staging/media/rkvdec2/TODO b/drivers/staging/media/rkvdec2/TODO
new file mode 100644
index 000000000000..9f64270e789e
--- /dev/null
+++ b/drivers/staging/media/rkvdec2/TODO
@@ -0,0 +1,9 @@
+* Support for 4:2:2 and 10 bits
+* Support for rockchip IOMMU
+* Support for HEVC and VP9 are planned for this driver.
+
+  First, the h264 backend needs to be stabilized.
+
+* Evaluate sharing code with rkvdec
+
+  As rkvdec is still in staging, this driver stays there as well.
diff --git a/drivers/staging/media/rkvdec2/rkvdec2-h264.c b/drivers/staging/media/rkvdec2/rkvdec2-h264.c
new file mode 100644
index 000000000000..37606f6833a1
--- /dev/null
+++ b/drivers/staging/media/rkvdec2/rkvdec2-h264.c
@@ -0,0 +1,739 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Rockchip Video Decoder 2 H264 backend
+ *
+ * Copyright (C) 2024 Collabora, Ltd.
+ *  Detlev Casanova <detlev.casanova@collabora.com>
+ *
+ * Based on rkvdec driver by Boris Brezillon <boris.brezillon@collabora.com>
+ */
+
+#include <media/v4l2-h264.h>
+#include <media/v4l2-mem2mem.h>
+
+#include "rkvdec2.h"
+#include "rkvdec2-regs.h"
+/* This header will move to a rockchip/common folder when de-staging */
+#include "../rkvdec/rkvdec-h264-cabac.h"
+
+#define RKVDEC_NUM_REFLIST		3
+
+struct rkvdec2_h264_scaling_list {
+	u8 scaling_list_4x4[6][16];
+	u8 scaling_list_8x8[6][64];
+	u8 padding[128];
+};
+
+struct rkvdec2_sps {
+	u16 seq_parameter_set_id:			4;
+	u16 profile_idc:				8;
+	u16 constraint_set3_flag:			1;
+	u16 chroma_format_idc:				2;
+	u16 bit_depth_luma:				3;
+	u16 bit_depth_chroma:				3;
+	u16 qpprime_y_zero_transform_bypass_flag:	1;
+	u16 log2_max_frame_num_minus4:			4;
+	u16 max_num_ref_frames:				5;
+	u16 pic_order_cnt_type:				2;
+	u16 log2_max_pic_order_cnt_lsb_minus4:		4;
+	u16 delta_pic_order_always_zero_flag:		1;
+	u16 pic_width_in_mbs:				12;
+	u16 pic_height_in_mbs:				12;
+	u16 frame_mbs_only_flag:			1;
+	u16 mb_adaptive_frame_field_flag:		1;
+	u16 direct_8x8_inference_flag:			1;
+	u16 mvc_extension_enable:			1;
+	u16 num_views:					2;
+
+	u16 reserved_bits:				12;
+	u16 reserved[11];
+} __packed;
+
+struct rkvdec2_pps {
+	u16 pic_parameter_set_id:				8;
+	u16 pps_seq_parameter_set_id:				5;
+	u16 entropy_coding_mode_flag:				1;
+	u16 bottom_field_pic_order_in_frame_present_flag:	1;
+	u16 num_ref_idx_l0_default_active_minus1:		5;
+	u16 num_ref_idx_l1_default_active_minus1:		5;
+	u16 weighted_pred_flag:					1;
+	u16 weighted_bipred_idc:				2;
+	u16 pic_init_qp_minus26:				7;
+	u16 pic_init_qs_minus26:				6;
+	u16 chroma_qp_index_offset:				5;
+	u16 deblocking_filter_control_present_flag:		1;
+	u16 constrained_intra_pred_flag:			1;
+	u16 redundant_pic_cnt_present:				1;
+	u16 transform_8x8_mode_flag:				1;
+	u16 second_chroma_qp_index_offset:			5;
+	u16 scaling_list_enable_flag:				1;
+	u32 scaling_list_address;
+	u16 is_longterm;
+
+	u8 reserved[3];
+} __packed;
+
+struct rkvdec2_rps_entry {
+	u32 dpb_info0:		5;
+	u32 bottom_flag0:	1;
+	u32 view_index_off0:	1;
+	u32 dpb_info1:		5;
+	u32 bottom_flag1:	1;
+	u32 view_index_off1:	1;
+	u32 dpb_info2:		5;
+	u32 bottom_flag2:	1;
+	u32 view_index_off2:	1;
+	u32 dpb_info3:		5;
+	u32 bottom_flag3:	1;
+	u32 view_index_off3:	1;
+	u32 dpb_info4:		5;
+	u32 bottom_flag4:	1;
+	u32 view_index_off4:	1;
+	u32 dpb_info5:		5;
+	u32 bottom_flag5:	1;
+	u32 view_index_off5:	1;
+	u32 dpb_info6:		5;
+	u32 bottom_flag6:	1;
+	u32 view_index_off6:	1;
+	u32 dpb_info7:		5;
+	u32 bottom_flag7:	1;
+	u32 view_index_off7:	1;
+} __packed;
+
+struct rkvdec2_rps {
+	u16 frame_num[16];
+	u32 reserved0;
+	struct rkvdec2_rps_entry entries[12];
+	u32 reserved1[66];
+}  __packed;
+
+struct rkvdec2_sps_pps {
+	struct rkvdec2_sps sps;
+	struct rkvdec2_pps pps;
+}  __packed;
+
+/* Data structure describing auxiliary buffer format. */
+struct rkvdec2_h264_priv_tbl {
+	u32 cabac_table[928];
+	struct rkvdec2_h264_scaling_list scaling_list;
+	struct rkvdec2_sps_pps param_set[256];
+	struct rkvdec2_rps rps;
+};
+
+struct rkvdec2_h264_reflists {
+	struct v4l2_h264_reference p[V4L2_H264_REF_LIST_LEN];
+	struct v4l2_h264_reference b0[V4L2_H264_REF_LIST_LEN];
+	struct v4l2_h264_reference b1[V4L2_H264_REF_LIST_LEN];
+};
+
+struct rkvdec2_h264_run {
+	struct rkvdec2_run					base;
+	const struct v4l2_ctrl_h264_decode_params		*decode_params;
+	const struct v4l2_ctrl_h264_sps				*sps;
+	const struct v4l2_ctrl_h264_pps				*pps;
+	const struct v4l2_ctrl_h264_scaling_matrix		*scaling_matrix;
+	struct vb2_buffer *ref_buf[V4L2_H264_NUM_DPB_ENTRIES];
+};
+
+struct rkvdec2_h264_ctx {
+	struct rkvdec2_aux_buf		priv_tbl;
+	struct rkvdec2_h264_reflists	reflists;
+	struct rkvdec2_regs_h264	regs;
+};
+
+static void assemble_hw_pps(struct rkvdec2_ctx *ctx,
+			    struct rkvdec2_h264_run *run)
+{
+	struct rkvdec2_h264_ctx *h264_ctx = ctx->priv;
+	const struct v4l2_ctrl_h264_sps *sps = run->sps;
+	const struct v4l2_ctrl_h264_pps *pps = run->pps;
+	const struct v4l2_ctrl_h264_decode_params *dec_params = run->decode_params;
+	const struct v4l2_h264_dpb_entry *dpb = dec_params->dpb;
+	struct rkvdec2_h264_priv_tbl *priv_tbl = h264_ctx->priv_tbl.cpu;
+	struct rkvdec2_sps_pps *hw_ps;
+	dma_addr_t scaling_list_address;
+	u32 scaling_distance;
+	u32 i;
+
+	/*
+	 * HW read the SPS/PPS information from PPS packet index by PPS id.
+	 * offset from the base can be calculated by PPS_id * 32 (size per PPS
+	 * packet unit). so the driver copy SPS/PPS information to the exact PPS
+	 * packet unit for HW accessing.
+	 */
+	hw_ps = &priv_tbl->param_set[pps->pic_parameter_set_id];
+	memset(hw_ps, 0, sizeof(*hw_ps));
+
+	/* write sps */
+	hw_ps->sps.seq_parameter_set_id = 0xf;
+	hw_ps->sps.profile_idc = 0xff;
+	hw_ps->sps.constraint_set3_flag = 1;
+	hw_ps->sps.chroma_format_idc = sps->chroma_format_idc;
+	hw_ps->sps.bit_depth_luma = sps->bit_depth_luma_minus8;
+	hw_ps->sps.bit_depth_chroma = sps->bit_depth_chroma_minus8;
+	hw_ps->sps.qpprime_y_zero_transform_bypass_flag = 0;
+	hw_ps->sps.log2_max_frame_num_minus4 = sps->log2_max_frame_num_minus4;
+	hw_ps->sps.max_num_ref_frames = sps->max_num_ref_frames;
+	hw_ps->sps.pic_order_cnt_type = sps->pic_order_cnt_type;
+	hw_ps->sps.log2_max_pic_order_cnt_lsb_minus4 =
+		sps->log2_max_pic_order_cnt_lsb_minus4;
+	hw_ps->sps.delta_pic_order_always_zero_flag =
+		!!(sps->flags & V4L2_H264_SPS_FLAG_DELTA_PIC_ORDER_ALWAYS_ZERO);
+	hw_ps->sps.mvc_extension_enable = 1;
+	hw_ps->sps.num_views = 1;
+
+	/*
+	 * Use the SPS values since they are already in macroblocks
+	 * dimensions, height can be field height (halved) if
+	 * V4L2_H264_SPS_FLAG_FRAME_MBS_ONLY is not set and also it allows
+	 * decoding smaller images into larger allocation which can be used
+	 * to implementing SVC spatial layer support.
+	 */
+	hw_ps->sps.pic_width_in_mbs = sps->pic_width_in_mbs_minus1 + 1;
+	hw_ps->sps.pic_height_in_mbs = sps->pic_height_in_map_units_minus1 + 1;
+	hw_ps->sps.frame_mbs_only_flag =
+		!!(sps->flags & V4L2_H264_SPS_FLAG_FRAME_MBS_ONLY);
+	hw_ps->sps.mb_adaptive_frame_field_flag =
+		!!(sps->flags & V4L2_H264_SPS_FLAG_MB_ADAPTIVE_FRAME_FIELD);
+	hw_ps->sps.direct_8x8_inference_flag =
+		!!(sps->flags & V4L2_H264_SPS_FLAG_DIRECT_8X8_INFERENCE);
+
+	/* write pps */
+	hw_ps->pps.pic_parameter_set_id = 0xff;
+	hw_ps->pps.pps_seq_parameter_set_id = 0x1f;
+	hw_ps->pps.entropy_coding_mode_flag =
+		!!(pps->flags & V4L2_H264_PPS_FLAG_ENTROPY_CODING_MODE);
+	hw_ps->pps.bottom_field_pic_order_in_frame_present_flag =
+		!!(pps->flags & V4L2_H264_PPS_FLAG_BOTTOM_FIELD_PIC_ORDER_IN_FRAME_PRESENT);
+	hw_ps->pps.num_ref_idx_l0_default_active_minus1 =
+		pps->num_ref_idx_l0_default_active_minus1;
+	hw_ps->pps.num_ref_idx_l1_default_active_minus1 =
+		pps->num_ref_idx_l1_default_active_minus1;
+	hw_ps->pps.weighted_pred_flag =
+		!!(pps->flags & V4L2_H264_PPS_FLAG_WEIGHTED_PRED);
+	hw_ps->pps.weighted_bipred_idc = pps->weighted_bipred_idc;
+	hw_ps->pps.pic_init_qp_minus26 = pps->pic_init_qp_minus26;
+	hw_ps->pps.pic_init_qs_minus26 = pps->pic_init_qs_minus26;
+	hw_ps->pps.chroma_qp_index_offset = pps->chroma_qp_index_offset;
+	hw_ps->pps.deblocking_filter_control_present_flag =
+		!!(pps->flags & V4L2_H264_PPS_FLAG_DEBLOCKING_FILTER_CONTROL_PRESENT);
+	hw_ps->pps.constrained_intra_pred_flag =
+		!!(pps->flags & V4L2_H264_PPS_FLAG_CONSTRAINED_INTRA_PRED);
+	hw_ps->pps.redundant_pic_cnt_present =
+		!!(pps->flags & V4L2_H264_PPS_FLAG_REDUNDANT_PIC_CNT_PRESENT);
+	hw_ps->pps.transform_8x8_mode_flag =
+		!!(pps->flags & V4L2_H264_PPS_FLAG_TRANSFORM_8X8_MODE);
+	hw_ps->pps.second_chroma_qp_index_offset = pps->second_chroma_qp_index_offset;
+	hw_ps->pps.scaling_list_enable_flag =
+		!!(pps->flags & V4L2_H264_PPS_FLAG_SCALING_MATRIX_PRESENT);
+
+	/*
+	 * To be on the safe side, program the scaling matrix address
+	 *
+	 * With this set here,
+	 *  RKVDEC_SWREG12_SENCODARY_EN:sw_scanlist_addr_valid_en
+	 * can stay at 0
+	 */
+	scaling_distance = offsetof(struct rkvdec2_h264_priv_tbl, scaling_list);
+	scaling_list_address = h264_ctx->priv_tbl.dma + scaling_distance;
+	hw_ps->pps.scaling_list_address = scaling_list_address;
+
+	for (i = 0; i < ARRAY_SIZE(dec_params->dpb); i++) {
+		if (dpb[i].flags & V4L2_H264_DPB_ENTRY_FLAG_LONG_TERM)
+			hw_ps->pps.is_longterm |= (1 << i);
+	}
+}
+
+static void lookup_ref_buf_idx(struct rkvdec2_ctx *ctx,
+			       struct rkvdec2_h264_run *run)
+{
+	const struct v4l2_ctrl_h264_decode_params *dec_params = run->decode_params;
+	u32 i;
+
+	for (i = 0; i < ARRAY_SIZE(dec_params->dpb); i++) {
+		struct v4l2_m2m_ctx *m2m_ctx = ctx->fh.m2m_ctx;
+		const struct v4l2_h264_dpb_entry *dpb = run->decode_params->dpb;
+		struct vb2_queue *cap_q = &m2m_ctx->cap_q_ctx.q;
+		struct vb2_buffer *buf = NULL;
+
+		if (dpb[i].flags & V4L2_H264_DPB_ENTRY_FLAG_ACTIVE) {
+			buf = vb2_find_buffer(cap_q, dpb[i].reference_ts);
+			if (!buf) {
+				dev_dbg(ctx->dev->dev, "No buffer for reference_ts %llu",
+					dpb[i].reference_ts);
+			}
+		}
+
+		run->ref_buf[i] = buf;
+	}
+}
+
+static void set_dpb_info(struct rkvdec2_rps_entry *entries,
+			 u8 reflist,
+			 u8 refnum,
+			 u8 info,
+			 bool bottom)
+{
+	struct rkvdec2_rps_entry *entry = &entries[(reflist * 4) + refnum / 8];
+	u8 idx = refnum % 8;
+
+	switch (idx) {
+	case 0:
+		entry->dpb_info0 = info;
+		entry->bottom_flag0 = bottom;
+		break;
+	case 1:
+		entry->dpb_info1 = info;
+		entry->bottom_flag1 = bottom;
+		break;
+	case 2:
+		entry->dpb_info2 = info;
+		entry->bottom_flag2 = bottom;
+		break;
+	case 3:
+		entry->dpb_info3 = info;
+		entry->bottom_flag3 = bottom;
+		break;
+	case 4:
+		entry->dpb_info4 = info;
+		entry->bottom_flag4 = bottom;
+		break;
+	case 5:
+		entry->dpb_info5 = info;
+		entry->bottom_flag5 = bottom;
+		break;
+	case 6:
+		entry->dpb_info6 = info;
+		entry->bottom_flag6 = bottom;
+		break;
+	case 7:
+		entry->dpb_info7 = info;
+		entry->bottom_flag7 = bottom;
+		break;
+	}
+}
+
+static void assemble_hw_rps(struct rkvdec2_ctx *ctx,
+			    struct v4l2_h264_reflist_builder *builder,
+			    struct rkvdec2_h264_run *run)
+{
+	const struct v4l2_ctrl_h264_decode_params *dec_params = run->decode_params;
+	const struct v4l2_h264_dpb_entry *dpb = dec_params->dpb;
+	struct rkvdec2_h264_ctx *h264_ctx = ctx->priv;
+	struct rkvdec2_h264_priv_tbl *priv_tbl = h264_ctx->priv_tbl.cpu;
+
+	struct rkvdec2_rps *hw_rps = &priv_tbl->rps;
+	u32 i, j;
+
+	memset(hw_rps, 0, sizeof(priv_tbl->rps));
+
+	/*
+	 * Assign an invalid pic_num if DPB entry at that position is inactive.
+	 * If we assign 0 in that position hardware will treat that as a real
+	 * reference picture with pic_num 0, triggering output picture
+	 * corruption.
+	 */
+	for (i = 0; i < ARRAY_SIZE(dec_params->dpb); i++) {
+		if (!(dpb[i].flags & V4L2_H264_DPB_ENTRY_FLAG_ACTIVE))
+			continue;
+
+		hw_rps->frame_num[i] = builder->refs[i].frame_num;
+	}
+
+	for (j = 0; j < RKVDEC_NUM_REFLIST; j++) {
+		for (i = 0; i < builder->num_valid; i++) {
+			struct v4l2_h264_reference *ref;
+			bool dpb_valid;
+			bool bottom;
+
+			switch (j) {
+			case 0:
+				ref = &h264_ctx->reflists.p[i];
+				break;
+			case 1:
+				ref = &h264_ctx->reflists.b0[i];
+				break;
+			case 2:
+				ref = &h264_ctx->reflists.b1[i];
+				break;
+			}
+
+			if (WARN_ON(ref->index >= ARRAY_SIZE(dec_params->dpb)))
+				continue;
+
+			dpb_valid = !!(run->ref_buf[ref->index]);
+			bottom = ref->fields == V4L2_H264_BOTTOM_FIELD_REF;
+
+			set_dpb_info(hw_rps->entries, j, i, ref->index | (dpb_valid << 4), bottom);
+		}
+	}
+}
+
+static void assemble_hw_scaling_list(struct rkvdec2_ctx *ctx,
+				     struct rkvdec2_h264_run *run)
+{
+	const struct v4l2_ctrl_h264_scaling_matrix *scaling = run->scaling_matrix;
+	const struct v4l2_ctrl_h264_pps *pps = run->pps;
+	struct rkvdec2_h264_ctx *h264_ctx = ctx->priv;
+	struct rkvdec2_h264_priv_tbl *tbl = h264_ctx->priv_tbl.cpu;
+
+	if (!(pps->flags & V4L2_H264_PPS_FLAG_SCALING_MATRIX_PRESENT))
+		return;
+
+	BUILD_BUG_ON(sizeof(tbl->scaling_list.scaling_list_4x4) !=
+		     sizeof(scaling->scaling_list_4x4));
+	BUILD_BUG_ON(sizeof(tbl->scaling_list.scaling_list_8x8) !=
+		     sizeof(scaling->scaling_list_8x8));
+
+	memcpy(tbl->scaling_list.scaling_list_4x4,
+	       scaling->scaling_list_4x4,
+	       sizeof(scaling->scaling_list_4x4));
+
+	memcpy(tbl->scaling_list.scaling_list_8x8,
+	       scaling->scaling_list_8x8,
+	       sizeof(scaling->scaling_list_8x8));
+}
+
+static inline void rkvdec2_memcpy_toio(void __iomem *dst, void *src, size_t len)
+{
+#ifdef CONFIG_ARM64
+	__iowrite32_copy(dst, src, len);
+#elif defined(CONFIG_ARM)
+	memcpy_toio(dst, src, len);
+#endif
+}
+
+static void rkvdec2_write_regs(struct rkvdec2_ctx *ctx)
+{
+	struct rkvdec2_dev *rkvdec = ctx->dev;
+	struct rkvdec2_h264_ctx *h264_ctx = ctx->priv;
+
+	rkvdec2_memcpy_toio(rkvdec->regs + OFFSET_COMMON_REGS,
+			    &h264_ctx->regs.common,
+			    sizeof(h264_ctx->regs.common));
+	rkvdec2_memcpy_toio(rkvdec->regs + OFFSET_CODEC_PARAMS_REGS,
+			    &h264_ctx->regs.h264_param,
+			    sizeof(h264_ctx->regs.h264_param));
+	rkvdec2_memcpy_toio(rkvdec->regs + OFFSET_COMMON_ADDR_REGS,
+			    &h264_ctx->regs.common_addr,
+			    sizeof(h264_ctx->regs.common_addr));
+	rkvdec2_memcpy_toio(rkvdec->regs + OFFSET_CODEC_ADDR_REGS,
+			    &h264_ctx->regs.h264_addr,
+			    sizeof(h264_ctx->regs.h264_addr));
+	rkvdec2_memcpy_toio(rkvdec->regs + OFFSET_POC_HIGHBIT_REGS,
+			    &h264_ctx->regs.h264_highpoc,
+			    sizeof(h264_ctx->regs.h264_highpoc));
+}
+
+static void config_registers(struct rkvdec2_ctx *ctx,
+			     struct rkvdec2_h264_run *run)
+{
+	const struct v4l2_ctrl_h264_decode_params *dec_params = run->decode_params;
+	const struct v4l2_ctrl_h264_sps *sps = run->sps;
+	const struct v4l2_h264_dpb_entry *dpb = dec_params->dpb;
+	struct rkvdec2_h264_ctx *h264_ctx = ctx->priv;
+	dma_addr_t priv_start_addr = h264_ctx->priv_tbl.dma;
+	const struct v4l2_pix_format_mplane *dst_fmt;
+	struct vb2_v4l2_buffer *src_buf = run->base.bufs.src;
+	struct vb2_v4l2_buffer *dst_buf = run->base.bufs.dst;
+	struct rkvdec2_regs_h264 *regs = &h264_ctx->regs;
+	const struct v4l2_format *f;
+	dma_addr_t rlc_addr;
+	dma_addr_t dst_addr;
+	u32 hor_virstride = 0;
+	u32 ver_virstride = 0;
+	u32 y_virstride = 0;
+	u32 offset;
+	u32 pixels;
+	u32 i;
+
+	memset(regs, 0, sizeof(*regs));
+
+	/* Set H264 mode */
+	regs->common.reg009.dec_mode = RKVDEC2_MODE_H264;
+
+	/* Set config */
+	regs->common.reg011.buf_empty_en = 1;
+	regs->common.reg011.dec_clkgate_e = 1;
+	regs->common.reg011.dec_timeout_e = 1;
+	regs->common.reg011.pix_range_detection_e = 1;
+
+	/* Set IDR flag */
+	regs->common.reg013.cur_pic_is_idr =
+		!!(dec_params->flags & V4L2_H264_DECODE_PARAM_FLAG_IDR_PIC);
+
+	/* Set input stream length */
+	regs->common.stream_len = vb2_get_plane_payload(&src_buf->vb2_buf, 0);
+
+	/* Set max slice number */
+	regs->common.reg017.slice_num = MAX_SLICE_NUMBER;
+
+	/* Set strides */
+	f = &ctx->decoded_fmt;
+	dst_fmt = &f->fmt.pix_mp;
+	hor_virstride = (sps->bit_depth_luma_minus8 + 8) * dst_fmt->width / 8;
+	ver_virstride = round_up(dst_fmt->height, 16);
+	y_virstride = hor_virstride * ver_virstride;
+	pixels = dst_fmt->height * dst_fmt->width;
+
+	regs->common.reg018.y_hor_virstride = hor_virstride / 16;
+	regs->common.reg019.uv_hor_virstride = hor_virstride / 16;
+	regs->common.reg020.y_virstride = y_virstride / 16;
+
+	/* Activate block gating */
+	regs->common.reg026.swreg_block_gating_e = 0xfffef;
+	regs->common.reg026.reg_cfg_gating_en = 1;
+
+	/* Set timeout threshold */
+	if (pixels < RKVDEC2_1080P_PIXELS)
+		regs->common.timeout_threshold = RKVDEC2_TIMEOUT_1080p;
+	else if (pixels < RKVDEC2_4K_PIXELS)
+		regs->common.timeout_threshold = RKVDEC2_TIMEOUT_4K;
+	else if (pixels < RKVDEC2_8K_PIXELS)
+		regs->common.timeout_threshold = RKVDEC2_TIMEOUT_8K;
+
+	/* Set TOP and BOTTOM POCs */
+	regs->h264_param.cur_top_poc = dec_params->top_field_order_cnt;
+	regs->h264_param.cur_bot_poc = dec_params->bottom_field_order_cnt;
+
+	/* Set ref pic address & poc */
+	for (i = 0; i < ARRAY_SIZE(dec_params->dpb); i++) {
+		struct vb2_buffer *vb_buf = run->ref_buf[i];
+		dma_addr_t buf_dma;
+
+		/*
+		 * If a DPB entry is unused or invalid, address of current destination
+		 * buffer is returned.
+		 */
+		if (!vb_buf)
+			vb_buf = &dst_buf->vb2_buf;
+
+		buf_dma = vb2_dma_contig_plane_dma_addr(vb_buf, 0);
+
+		/* Set reference addresses */
+		regs->h264_addr.ref_base[i] = buf_dma;
+
+		/* Set COLMV addresses */
+		regs->h264_addr.colmv_base[i] = buf_dma + ctx->colmv_offset;
+
+		struct rkvdec2_h264_ref_info *ref_info =
+			&regs->h264_param.ref_info_regs[i / 4].ref_info[i % 4];
+
+		ref_info->ref_field =
+			!!(dpb[i].flags & V4L2_H264_DPB_ENTRY_FLAG_FIELD);
+		ref_info->ref_colmv_use_flag =
+			!!(dpb[i].flags & V4L2_H264_DPB_ENTRY_FLAG_ACTIVE);
+		ref_info->ref_topfield_used =
+			!!(dpb[i].fields & V4L2_H264_TOP_FIELD_REF);
+		ref_info->ref_botfield_used =
+			!!(dpb[i].fields & V4L2_H264_BOTTOM_FIELD_REF);
+
+		regs->h264_param.ref_pocs[i * 2] =
+			dpb[i].top_field_order_cnt;
+		regs->h264_param.ref_pocs[i * 2 + 1] =
+			dpb[i].bottom_field_order_cnt;
+	}
+
+	/* Set rlc base address (input stream) */
+	rlc_addr = vb2_dma_contig_plane_dma_addr(&src_buf->vb2_buf, 0);
+	regs->common_addr.rlc_base = rlc_addr;
+	regs->common_addr.rlcwrite_base = rlc_addr;
+
+	/* Set output base address */
+	dst_addr = vb2_dma_contig_plane_dma_addr(&dst_buf->vb2_buf, 0);
+	regs->common_addr.decout_base = dst_addr;
+
+	/* Set colmv address */
+	regs->common_addr.colmv_cur_base = dst_addr + ctx->colmv_offset;
+
+	/* Set RCB addresses */
+	for (i = 0; i < RKVDEC2_RCB_COUNT; i++)
+		regs->common_addr.rcb_base[i] = ctx->rcb_bufs[i].dma;
+
+	/* Set hw pps address */
+	offset = offsetof(struct rkvdec2_h264_priv_tbl, param_set);
+	regs->h264_addr.pps_base = priv_start_addr + offset;
+
+	/* Set hw rps address */
+	offset = offsetof(struct rkvdec2_h264_priv_tbl, rps);
+	regs->h264_addr.rps_base = priv_start_addr + offset;
+
+	/* Set cabac table */
+	offset = offsetof(struct rkvdec2_h264_priv_tbl, cabac_table);
+	regs->h264_addr.cabactbl_base = priv_start_addr + offset;
+
+	rkvdec2_write_regs(ctx);
+}
+
+#define RKVDEC_H264_MAX_DEPTH_IN_BYTES		2
+
+static int rkvdec2_h264_adjust_fmt(struct rkvdec2_ctx *ctx,
+				   struct v4l2_format *f)
+{
+	struct v4l2_pix_format_mplane *fmt = &f->fmt.pix_mp;
+
+	fmt->num_planes = 1;
+	if (!fmt->plane_fmt[0].sizeimage)
+		fmt->plane_fmt[0].sizeimage = fmt->width * fmt->height *
+					      RKVDEC_H264_MAX_DEPTH_IN_BYTES;
+	return 0;
+}
+
+static int rkvdec2_h264_validate_sps(struct rkvdec2_ctx *ctx,
+				     const struct v4l2_ctrl_h264_sps *sps)
+{
+	unsigned int width, height;
+
+	/*
+	 * TODO: The hardware supports 10-bit and 4:2:2 profiles,
+	 * but it's currently broken in the driver.
+	 * Reject them for now, until it's fixed.
+	 */
+	if (sps->chroma_format_idc > 1)
+		/* Only 4:0:0 and 4:2:0 are supported */
+		return -EINVAL;
+	if (sps->bit_depth_luma_minus8 != sps->bit_depth_chroma_minus8)
+		/* Luma and chroma bit depth mismatch */
+		return -EINVAL;
+	if (sps->bit_depth_luma_minus8 != 0)
+		/* Only 8-bit is supported */
+		return -EINVAL;
+
+	width = (sps->pic_width_in_mbs_minus1 + 1) * 16;
+	height = (sps->pic_height_in_map_units_minus1 + 1) * 16;
+
+	/*
+	 * When frame_mbs_only_flag is not set, this is field height,
+	 * which is half the final height (see (7-8) in the
+	 * specification)
+	 */
+	if (!(sps->flags & V4L2_H264_SPS_FLAG_FRAME_MBS_ONLY))
+		height *= 2;
+
+	if (width > ctx->coded_fmt.fmt.pix_mp.width ||
+	    height > ctx->coded_fmt.fmt.pix_mp.height)
+		return -EINVAL;
+
+	return 0;
+}
+
+static int rkvdec2_h264_start(struct rkvdec2_ctx *ctx)
+{
+	struct rkvdec2_dev *rkvdec = ctx->dev;
+	struct rkvdec2_h264_priv_tbl *priv_tbl;
+	struct rkvdec2_h264_ctx *h264_ctx;
+	struct v4l2_ctrl *ctrl;
+	int ret;
+
+	ctrl = v4l2_ctrl_find(&ctx->ctrl_hdl,
+			      V4L2_CID_STATELESS_H264_SPS);
+	if (!ctrl)
+		return -EINVAL;
+
+	ret = rkvdec2_h264_validate_sps(ctx, ctrl->p_new.p_h264_sps);
+	if (ret)
+		return ret;
+
+	h264_ctx = kzalloc(sizeof(*h264_ctx), GFP_KERNEL);
+	if (!h264_ctx)
+		return -ENOMEM;
+
+	priv_tbl = dma_alloc_coherent(rkvdec->dev, sizeof(*priv_tbl),
+				      &h264_ctx->priv_tbl.dma, GFP_KERNEL);
+	if (!priv_tbl) {
+		ret = -ENOMEM;
+		goto err_free_ctx;
+	}
+
+	h264_ctx->priv_tbl.size = sizeof(*priv_tbl);
+	h264_ctx->priv_tbl.cpu = priv_tbl;
+	memcpy(priv_tbl->cabac_table, rkvdec_h264_cabac_table,
+	       sizeof(rkvdec_h264_cabac_table));
+
+	ctx->priv = h264_ctx;
+	return 0;
+
+err_free_ctx:
+	kfree(h264_ctx);
+	return ret;
+}
+
+static void rkvdec2_h264_stop(struct rkvdec2_ctx *ctx)
+{
+	struct rkvdec2_h264_ctx *h264_ctx = ctx->priv;
+	struct rkvdec2_dev *rkvdec = ctx->dev;
+
+	dma_free_coherent(rkvdec->dev, h264_ctx->priv_tbl.size,
+			  h264_ctx->priv_tbl.cpu, h264_ctx->priv_tbl.dma);
+	kfree(h264_ctx);
+}
+
+static void rkvdec2_h264_run_preamble(struct rkvdec2_ctx *ctx,
+				      struct rkvdec2_h264_run *run)
+{
+	struct v4l2_ctrl *ctrl;
+
+	ctrl = v4l2_ctrl_find(&ctx->ctrl_hdl,
+			      V4L2_CID_STATELESS_H264_DECODE_PARAMS);
+	run->decode_params = ctrl ? ctrl->p_cur.p : NULL;
+	ctrl = v4l2_ctrl_find(&ctx->ctrl_hdl,
+			      V4L2_CID_STATELESS_H264_SPS);
+	run->sps = ctrl ? ctrl->p_cur.p : NULL;
+	ctrl = v4l2_ctrl_find(&ctx->ctrl_hdl,
+			      V4L2_CID_STATELESS_H264_PPS);
+	run->pps = ctrl ? ctrl->p_cur.p : NULL;
+	ctrl = v4l2_ctrl_find(&ctx->ctrl_hdl,
+			      V4L2_CID_STATELESS_H264_SCALING_MATRIX);
+	run->scaling_matrix = ctrl ? ctrl->p_cur.p : NULL;
+
+	rkvdec2_run_preamble(ctx, &run->base);
+}
+
+static int rkvdec2_h264_run(struct rkvdec2_ctx *ctx)
+{
+	struct v4l2_h264_reflist_builder reflist_builder;
+	struct rkvdec2_dev *rkvdec = ctx->dev;
+	struct rkvdec2_h264_ctx *h264_ctx = ctx->priv;
+	struct rkvdec2_h264_run run;
+
+	rkvdec2_h264_run_preamble(ctx, &run);
+
+	/* Build the P/B{0,1} ref lists. */
+	v4l2_h264_init_reflist_builder(&reflist_builder, run.decode_params,
+				       run.sps, run.decode_params->dpb);
+	v4l2_h264_build_p_ref_list(&reflist_builder, h264_ctx->reflists.p);
+	v4l2_h264_build_b_ref_lists(&reflist_builder, h264_ctx->reflists.b0,
+				    h264_ctx->reflists.b1);
+
+	assemble_hw_scaling_list(ctx, &run);
+	assemble_hw_pps(ctx, &run);
+	lookup_ref_buf_idx(ctx, &run);
+	assemble_hw_rps(ctx, &reflist_builder, &run);
+
+	config_registers(ctx, &run);
+
+	rkvdec2_run_postamble(ctx, &run.base);
+
+	schedule_delayed_work(&rkvdec->watchdog_work, msecs_to_jiffies(2000));
+
+	/* Start decoding! */
+	writel(RKVDEC2_REG_DEC_E_BIT, rkvdec->regs + RKVDEC2_REG_DEC_E);
+
+	return 0;
+}
+
+static int rkvdec2_h264_try_ctrl(struct rkvdec2_ctx *ctx, struct v4l2_ctrl *ctrl)
+{
+	if (ctrl->id == V4L2_CID_STATELESS_H264_SPS)
+		return rkvdec2_h264_validate_sps(ctx, ctrl->p_new.p_h264_sps);
+
+	return 0;
+}
+
+const struct rkvdec2_coded_fmt_ops rkvdec2_h264_fmt_ops = {
+	.adjust_fmt = rkvdec2_h264_adjust_fmt,
+	.start = rkvdec2_h264_start,
+	.stop = rkvdec2_h264_stop,
+	.run = rkvdec2_h264_run,
+	.try_ctrl = rkvdec2_h264_try_ctrl,
+};
diff --git a/drivers/staging/media/rkvdec2/rkvdec2-regs.h b/drivers/staging/media/rkvdec2/rkvdec2-regs.h
new file mode 100644
index 000000000000..971df554fc10
--- /dev/null
+++ b/drivers/staging/media/rkvdec2/rkvdec2-regs.h
@@ -0,0 +1,345 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Rockchip Video Decoder 2 driver registers description
+ *
+ * Copyright (C) 2024 Collabora, Ltd.
+ *  Detlev Casanova <detlev.casanova@collabora.com>
+ */
+
+#ifndef _RKVDEC_REGS_H_
+#define _RKVDEC_REGS_H_
+
+#define OFFSET_COMMON_REGS		(8 * sizeof(u32))
+#define OFFSET_CODEC_PARAMS_REGS	(64 * sizeof(u32))
+#define OFFSET_COMMON_ADDR_REGS		(128 * sizeof(u32))
+#define OFFSET_CODEC_ADDR_REGS		(160 * sizeof(u32))
+#define OFFSET_POC_HIGHBIT_REGS		(200 * sizeof(u32))
+
+#define RKVDEC2_MODE_HEVC	0
+#define RKVDEC2_MODE_H264	1
+#define RKVDEC2_MODE_VP9	2
+#define RKVDEC2_MODE_AVS2	3
+
+#define MAX_SLICE_NUMBER	0x3fff
+
+#define RKVDEC2_1080P_PIXELS		(1920 * 1080)
+#define RKVDEC2_4K_PIXELS		(4096 * 2304)
+#define RKVDEC2_8K_PIXELS		(7680 * 4320)
+#define RKVDEC2_TIMEOUT_1080p		(0xefffff)
+#define RKVDEC2_TIMEOUT_4K		(0x2cfffff)
+#define RKVDEC2_TIMEOUT_8K		(0x4ffffff)
+
+#define RKVDEC2_REG_DEC_E		0x028
+#define RKVDEC2_REG_DEC_E_BIT		1
+
+#define RKVDEC2_REG_IMPORTANT_EN	0x02c
+#define RKVDEC2_REG_DEC_IRQ_DISABLE	BIT(4)
+
+#define RKVDEC2_REG_STA_INT		0x380
+#define STA_INT_DEC_RDY_STA		BIT(2)
+
+/* base: OFFSET_COMMON_REGS */
+struct rkvdec2_regs_common {
+	struct rkvdec2_in_out {
+		u32 in_endian		: 1;
+		u32 in_swap32_e		: 1;
+		u32 in_swap64_e		: 1;
+		u32 str_endian		: 1;
+		u32 str_swap32_e	: 1;
+		u32 str_swap64_e	: 1;
+		u32 out_endian		: 1;
+		u32 out_swap32_e	: 1;
+		u32 out_cbcr_swap	: 1;
+		u32 out_swap64_e	: 1;
+		u32 reserved		: 22;
+	} reg008;
+
+	struct rkvdec2_dec_mode {
+		u32 dec_mode	: 10;
+		u32 reserved	: 22;
+	} reg009;
+
+	struct rkvdec2_dec_e {
+		u32 dec_e	: 1;
+		u32 reserved	: 31;
+	} reg010;
+
+	struct rkvdec2_important_en {
+		u32 reserved			: 1;
+		u32 dec_clkgate_e		: 1;
+		u32 dec_e_strmd_clkgate_dis	: 1;
+		u32 reserved0			: 1;
+
+		u32 dec_irq_dis			: 1;
+		u32 dec_timeout_e		: 1;
+		u32 buf_empty_en		: 1;
+		u32 reserved1			: 3;
+
+		u32 dec_e_rewrite_valid		: 1;
+		u32 reserved2			: 9;
+		u32 softrst_en_p		: 1;
+		u32 force_softreset_valid	: 1;
+		u32 reserved3			: 2;
+		u32 pix_range_detection_e	: 1;
+		u32 reserved4			: 7;
+	} reg011;
+
+	struct rkvdec2_sencodary_en {
+		u32 wr_ddr_align_en		: 1;
+		u32 colmv_compress_en		: 1;
+		u32 fbc_e			: 1;
+		u32 reserved0			: 1;
+
+		u32 buspr_slot_disable		: 1;
+		u32 error_info_en		: 1;
+		u32 info_collect_en		: 1;
+		u32 wait_reset_en		: 1;
+
+		u32 scanlist_addr_valid_en	: 1;
+		u32 scale_down_en		: 1;
+		u32 error_cfg_wr_disable	: 1;
+		u32 reserved1			: 21;
+	} reg012;
+
+	struct rkvdec2_en_mode_set {
+		u32 timeout_mode		: 1;
+		u32 req_timeout_rst_sel		: 1;
+		u32 reserved0			: 1;
+		u32 dec_commonirq_mode		: 1;
+		u32 reserved1			: 2;
+		u32 stmerror_waitdecfifo_empty	: 1;
+		u32 reserved2			: 2;
+		u32 h26x_streamd_error_mode	: 1;
+		u32 reserved3			: 2;
+		u32 allow_not_wr_unref_bframe	: 1;
+		u32 fbc_output_wr_disable	: 1;
+		u32 reserved4			: 1;
+		u32 colmv_error_mode		: 1;
+
+		u32 reserved5			: 2;
+		u32 h26x_error_mode		: 1;
+		u32 reserved6			: 2;
+		u32 ycacherd_prior		: 1;
+		u32 reserved7			: 2;
+		u32 cur_pic_is_idr		: 1;
+		u32 reserved8			: 1;
+		u32 right_auto_rst_disable	: 1;
+		u32 frame_end_err_rst_flag	: 1;
+		u32 rd_prior_mode		: 1;
+		u32 rd_ctrl_prior_mode		: 1;
+		u32 reserved9			: 1;
+		u32 filter_outbuf_mode		: 1;
+	} reg013;
+
+	struct rkvdec2_fbc_param_set {
+		u32 fbc_force_uncompress	: 1;
+
+		u32 reserved0			: 2;
+		u32 allow_16x8_cp_flag		: 1;
+		u32 reserved1			: 2;
+
+		u32 fbc_h264_exten_4or8_flag	: 1;
+		u32 reserved2			: 25;
+	} reg014;
+
+	struct rkvdec2_stream_param_set {
+		u32 rlc_mode_direct_write	: 1;
+		u32 rlc_mode			: 1;
+		u32 reserved0			: 3;
+
+		u32 strm_start_bit		: 7;
+		u32 reserved1			: 20;
+	} reg015;
+
+	u32 stream_len;
+
+	struct rkvdec2_slice_number {
+		u32 slice_num	: 25;
+		u32 reserved	: 7;
+	} reg017;
+
+	struct rkvdec2_y_hor_stride {
+		u32 y_hor_virstride	: 16;
+		u32 reserved		: 16;
+	} reg018;
+
+	struct rkvdec2_uv_hor_stride {
+		u32 uv_hor_virstride	: 16;
+		u32 reserved		: 16;
+	} reg019;
+
+	struct rkvdec2_y_stride {
+		u32 y_virstride		: 28;
+		u32 reserved		: 4;
+	} reg020;
+
+	struct rkvdec2_error_ctrl_set {
+		u32 inter_error_prc_mode		: 1;
+		u32 error_intra_mode			: 1;
+		u32 error_deb_en			: 1;
+		u32 picidx_replace			: 5;
+		u32 error_spread_e			: 1;
+		u32 reserved0				: 3;
+		u32 error_inter_pred_cross_slice	: 1;
+		u32 reserved1				: 11;
+		u32 roi_error_ctu_cal_en		: 1;
+		u32 reserved2				: 7;
+	} reg021;
+
+	struct rkvdec2_err_roi_ctu_offset_start {
+		u32 roi_x_ctu_offset_st	: 12;
+		u32 reserved0		: 4;
+		u32 roi_y_ctu_offset_st	: 12;
+		u32 reserved1		: 4;
+	} reg022;
+
+	struct rkvdec2_err_roi_ctu_offset_end {
+		u32 roi_x_ctu_offset_end	: 12;
+		u32 reserved0			: 4;
+		u32 roi_y_ctu_offset_end	: 12;
+		u32 reserved1			: 4;
+	} reg023;
+
+	struct rkvdec2_cabac_error_en_lowbits {
+		u32 cabac_err_en_lowbits	: 32;
+	} reg024;
+
+	struct rkvdec2_cabac_error_en_highbits {
+		u32 cabac_err_en_highbits	: 30;
+		u32 reserved			: 2;
+	} reg025;
+
+	struct rkvdec2_block_gating_en {
+		u32 swreg_block_gating_e	: 20;
+		u32 reserved			: 11;
+		u32 reg_cfg_gating_en		: 1;
+	} reg026;
+
+	struct SW027_CORE_SAFE_PIXELS {
+		u32 core_safe_x_pixels	: 16;
+		u32 core_safe_y_pixels	: 16;
+	} reg027;
+
+	struct rkvdec2_multiply_core_ctrl {
+		u32 swreg_vp9_wr_prob_idx	: 3;
+		u32 reserved0			: 1;
+		u32 swreg_vp9_rd_prob_idx	: 3;
+		u32 reserved1			: 1;
+
+		u32 swreg_ref_req_advance_flag	: 1;
+		u32 sw_colmv_req_advance_flag	: 1;
+		u32 sw_poc_only_highbit_flag	: 1;
+		u32 sw_poc_arb_flag		: 1;
+
+		u32 reserved2			: 4;
+		u32 sw_film_idx			: 10;
+		u32 reserved3			: 2;
+		u32 sw_pu_req_mismatch_dis	: 1;
+		u32 sw_colmv_req_mismatch_dis	: 1;
+		u32 reserved4			: 2;
+	} reg028;
+
+	struct SW029_SCALE_DOWN_CTRL {
+		u32 scale_down_hor_ratio	: 2;
+		u32 reserved0			: 6;
+		u32 scale_down_vrz_ratio	: 2;
+		u32 reserved1			: 22;
+	} reg029;
+
+	struct SW032_Y_SCALE_DOWN_TILE8x8_HOR_STRIDE {
+		u32 y_scale_down_hor_stride	: 20;
+		u32 reserved0			: 12;
+	} reg030;
+
+	struct SW031_UV_SCALE_DOWN_TILE8x8_HOR_STRIDE {
+		u32 uv_scale_down_hor_stride	: 20;
+		u32 reserved0			: 12;
+	} reg031;
+
+	u32 timeout_threshold;
+} __packed;
+
+/* base: OFFSET_COMMON_ADDR_REGS */
+struct rkvdec2_regs_common_addr {
+	u32 rlc_base;
+	u32 rlcwrite_base;
+	u32 decout_base;
+	u32 colmv_cur_base;
+	u32 error_ref_base;
+	u32 rcb_base[10];
+} __packed;
+
+/* base: OFFSET_CODEC_PARAMS_REGS */
+struct rkvdec2_regs_h264_params {
+	struct rkvdec2_h26x_set {
+		u32 h26x_frame_orslice		: 1;
+		u32 h26x_rps_mode		: 1;
+		u32 h26x_stream_mode		: 1;
+		u32 h26x_stream_lastpacket	: 1;
+		u32 h264_firstslice_flag	: 1;
+		u32 reserved			: 27;
+	} reg064;
+
+	u32 cur_top_poc;
+	u32 cur_bot_poc;
+	u32 ref_pocs[32];
+
+	struct rkvdec2_h264_info {
+		struct rkvdec2_h264_ref_info {
+			u32 ref_field		: 1;
+			u32 ref_topfield_used	: 1;
+			u32 ref_botfield_used	: 1;
+			u32 ref_colmv_use_flag	: 1;
+			u32 ref_reserved	: 4;
+		} __packed ref_info[4];
+	} __packed ref_info_regs[4];
+
+	u32 reserved_103_111[9];
+
+	struct rkvdec2_error_ref_info {
+		u32 avs2_ref_error_field	: 1;
+		u32 avs2_ref_error_topfield	: 1;
+		u32 ref_error_topfield_used	: 1;
+		u32 ref_error_botfield_used	: 1;
+		u32 reserved			: 28;
+	} reg112;
+} __packed;
+
+/* base: OFFSET_CODEC_ADDR_REGS */
+struct rkvdec2_regs_h264_addr {
+	u32 reserved_160;
+	u32 pps_base;
+	u32 reserved_162;
+	u32 rps_base;
+	u32 ref_base[16];
+	u32 scanlist_addr;
+	u32 colmv_base[16];
+	u32 cabactbl_base;
+} __packed;
+
+struct rkvdec2_regs_h264_highpoc {
+	struct rkvdec2_ref_poc_highbit {
+		u32 ref0_poc_highbit	: 4;
+		u32 ref1_poc_highbit	: 4;
+		u32 ref2_poc_highbit	: 4;
+		u32 ref3_poc_highbit	: 4;
+		u32 ref4_poc_highbit	: 4;
+		u32 ref5_poc_highbit	: 4;
+		u32 ref6_poc_highbit	: 4;
+		u32 ref7_poc_highbit	: 4;
+	} reg200[4];
+	struct rkvdec2_cur_poc_highbit {
+		u32 cur_poc_highbit	: 4;
+		u32 reserved		: 28;
+	} reg204;
+} __packed;
+
+struct rkvdec2_regs_h264 {
+	struct rkvdec2_regs_common		common;
+	struct rkvdec2_regs_h264_params		h264_param;
+	struct rkvdec2_regs_common_addr		common_addr;
+	struct rkvdec2_regs_h264_addr		h264_addr;
+	struct rkvdec2_regs_h264_highpoc	h264_highpoc;
+} __packed;
+
+#endif /* __RKVDEC_REGS_H__ */
diff --git a/drivers/staging/media/rkvdec2/rkvdec2.c b/drivers/staging/media/rkvdec2/rkvdec2.c
new file mode 100644
index 000000000000..464eec67521b
--- /dev/null
+++ b/drivers/staging/media/rkvdec2/rkvdec2.c
@@ -0,0 +1,1253 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Rockchip Video Decoder 2 driver
+ *
+ * Copyright (C) 2024 Collabora, Ltd.
+ *  Detlev Casanova <detlev.casanova@collabora.com>
+ *
+ * Based on rkvdec driver by Boris Brezillon <boris.brezillon@collabora.com>
+ */
+
+#include <linux/clk.h>
+#include <linux/genalloc.h>
+#include <linux/interrupt.h>
+#include <linux/module.h>
+#include <linux/of.h>
+#include <linux/platform_device.h>
+#include <linux/pm.h>
+#include <linux/pm_runtime.h>
+#include <linux/slab.h>
+#include <linux/videodev2.h>
+#include <linux/workqueue.h>
+#include <media/v4l2-event.h>
+#include <media/v4l2-mem2mem.h>
+#include <media/videobuf2-core.h>
+#include <media/videobuf2-vmalloc.h>
+
+#include "rkvdec2.h"
+
+static int rkvdec2_try_ctrl(struct v4l2_ctrl *ctrl)
+{
+	struct rkvdec2_ctx *ctx = container_of(ctrl->handler, struct rkvdec2_ctx, ctrl_hdl);
+	const struct rkvdec2_coded_fmt_desc *desc = ctx->coded_fmt_desc;
+
+	if (desc->ops->try_ctrl)
+		return desc->ops->try_ctrl(ctx, ctrl);
+
+	return 0;
+}
+
+static const struct v4l2_ctrl_ops rkvdec2_ctrl_ops = {
+	.try_ctrl = rkvdec2_try_ctrl,
+};
+
+static const struct rkvdec2_ctrl_desc rkvdec2_h264_ctrl_descs[] = {
+	{
+		.cfg.id = V4L2_CID_STATELESS_H264_DECODE_PARAMS,
+	},
+	{
+		.cfg.id = V4L2_CID_STATELESS_H264_SPS,
+		.cfg.ops = &rkvdec2_ctrl_ops,
+	},
+	{
+		.cfg.id = V4L2_CID_STATELESS_H264_PPS,
+	},
+	{
+		.cfg.id = V4L2_CID_STATELESS_H264_SCALING_MATRIX,
+	},
+	{
+		.cfg.id = V4L2_CID_STATELESS_H264_DECODE_MODE,
+		.cfg.min = V4L2_STATELESS_H264_DECODE_MODE_FRAME_BASED,
+		.cfg.max = V4L2_STATELESS_H264_DECODE_MODE_FRAME_BASED,
+		.cfg.def = V4L2_STATELESS_H264_DECODE_MODE_FRAME_BASED,
+	},
+	{
+		.cfg.id = V4L2_CID_STATELESS_H264_START_CODE,
+		.cfg.min = V4L2_STATELESS_H264_START_CODE_ANNEX_B,
+		.cfg.def = V4L2_STATELESS_H264_START_CODE_ANNEX_B,
+		.cfg.max = V4L2_STATELESS_H264_START_CODE_ANNEX_B,
+	},
+	{
+		.cfg.id = V4L2_CID_MPEG_VIDEO_H264_PROFILE,
+		.cfg.min = V4L2_MPEG_VIDEO_H264_PROFILE_BASELINE,
+		.cfg.max = V4L2_MPEG_VIDEO_H264_PROFILE_HIGH,
+		.cfg.menu_skip_mask =
+			BIT(V4L2_MPEG_VIDEO_H264_PROFILE_EXTENDED),
+		.cfg.def = V4L2_MPEG_VIDEO_H264_PROFILE_MAIN,
+	},
+	{
+		.cfg.id = V4L2_CID_MPEG_VIDEO_H264_LEVEL,
+		.cfg.min = V4L2_MPEG_VIDEO_H264_LEVEL_1_0,
+		.cfg.max = V4L2_MPEG_VIDEO_H264_LEVEL_6_1,
+	},
+};
+
+static const struct rkvdec2_ctrls rkvdec2_h264_ctrls = {
+	.ctrls = rkvdec2_h264_ctrl_descs,
+	.num_ctrls = ARRAY_SIZE(rkvdec2_h264_ctrl_descs),
+};
+
+static const u32 rkvdec2_h264_decoded_fmts[] = {
+	V4L2_PIX_FMT_NV12
+};
+
+static const struct rkvdec2_coded_fmt_desc rkvdec2_coded_fmts[] = {
+	{
+		.fourcc = V4L2_PIX_FMT_H264_SLICE,
+		.frmsize = {
+			.min_width = 16,
+			.max_width =  65520,
+			.step_width = 16,
+			.min_height = 16,
+			.max_height =  65520,
+			.step_height = 16,
+		},
+		.ctrls = &rkvdec2_h264_ctrls,
+		.ops = &rkvdec2_h264_fmt_ops,
+		.num_decoded_fmts = ARRAY_SIZE(rkvdec2_h264_decoded_fmts),
+		.decoded_fmts = rkvdec2_h264_decoded_fmts,
+		.subsystem_flags = VB2_V4L2_FL_SUPPORTS_M2M_HOLD_CAPTURE_BUF,
+	},
+};
+
+enum rcb_axis {
+	PIC_WIDTH = 0,
+	PIC_HEIGHT = 1
+};
+
+struct rcb_size_info {
+	u8 multiplier;
+	enum rcb_axis axis;
+};
+
+static struct rcb_size_info rcb_sizes[] = {
+	{6,	PIC_WIDTH},	// intrar
+	{1,	PIC_WIDTH},	// transdr (Is actually 0.4*pic_width)
+	{1,	PIC_HEIGHT},	// transdc (Is actually 0.1*pic_height)
+	{3,	PIC_WIDTH},	// streamdr
+	{6,	PIC_WIDTH},	// interr
+	{3,	PIC_HEIGHT},	// interc
+	{22,	PIC_WIDTH},	// dblkr
+	{6,	PIC_WIDTH},	// saor
+	{11,	PIC_WIDTH},	// fbcr
+	{67,	PIC_HEIGHT},	// filtc col
+};
+
+#define RCB_SIZE(n) (rcb_sizes[(n)].multiplier * (rcb_sizes[(n)].axis ? height : width))
+
+static const struct rkvdec2_coded_fmt_desc *
+rkvdec2_find_coded_fmt_desc(u32 fourcc)
+{
+	unsigned int i;
+
+	for (i = 0; i < ARRAY_SIZE(rkvdec2_coded_fmts); i++) {
+		if (rkvdec2_coded_fmts[i].fourcc == fourcc)
+			return &rkvdec2_coded_fmts[i];
+	}
+
+	return NULL;
+}
+
+static void rkvdec2_reset_fmt(struct rkvdec2_ctx *ctx, struct v4l2_format *f,
+			      u32 fourcc)
+{
+	memset(f, 0, sizeof(*f));
+	f->fmt.pix_mp.pixelformat = fourcc;
+	f->fmt.pix_mp.field = V4L2_FIELD_NONE;
+	f->fmt.pix_mp.colorspace = V4L2_COLORSPACE_REC709;
+	f->fmt.pix_mp.ycbcr_enc = V4L2_YCBCR_ENC_DEFAULT;
+	f->fmt.pix_mp.quantization = V4L2_QUANTIZATION_DEFAULT;
+	f->fmt.pix_mp.xfer_func = V4L2_XFER_FUNC_DEFAULT;
+}
+
+static void rkvdec2_reset_coded_fmt(struct rkvdec2_ctx *ctx)
+{
+	struct v4l2_format *f = &ctx->coded_fmt;
+
+	ctx->coded_fmt_desc = &rkvdec2_coded_fmts[0];
+	rkvdec2_reset_fmt(ctx, f, ctx->coded_fmt_desc->fourcc);
+
+	f->type = V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE;
+	f->fmt.pix_mp.width = ctx->coded_fmt_desc->frmsize.min_width;
+	f->fmt.pix_mp.height = ctx->coded_fmt_desc->frmsize.min_height;
+
+	if (ctx->coded_fmt_desc->ops->adjust_fmt)
+		ctx->coded_fmt_desc->ops->adjust_fmt(ctx, f);
+}
+
+static void rkvdec2_reset_decoded_fmt(struct rkvdec2_ctx *ctx)
+{
+	struct v4l2_format *f = &ctx->decoded_fmt;
+
+	rkvdec2_reset_fmt(ctx, f, ctx->coded_fmt_desc->decoded_fmts[0]);
+	f->type = V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE;
+	v4l2_fill_pixfmt_mp(&f->fmt.pix_mp,
+			    ctx->coded_fmt_desc->decoded_fmts[0],
+			    ctx->coded_fmt.fmt.pix_mp.width,
+			    ctx->coded_fmt.fmt.pix_mp.height);
+
+	ctx->colmv_offset = f->fmt.pix_mp.plane_fmt[0].sizeimage;
+
+	f->fmt.pix_mp.plane_fmt[0].sizeimage += 128 *
+		DIV_ROUND_UP(f->fmt.pix_mp.width, 16) *
+		DIV_ROUND_UP(f->fmt.pix_mp.height, 16);
+}
+
+static int rkvdec2_enum_framesizes(struct file *file, void *priv,
+				   struct v4l2_frmsizeenum *fsize)
+{
+	const struct rkvdec2_coded_fmt_desc *fmt;
+
+	if (fsize->index != 0)
+		return -EINVAL;
+
+	fmt = rkvdec2_find_coded_fmt_desc(fsize->pixel_format);
+	if (!fmt)
+		return -EINVAL;
+
+	fsize->type = V4L2_FRMSIZE_TYPE_STEPWISE;
+	fsize->stepwise = fmt->frmsize;
+	return 0;
+}
+
+static int rkvdec2_querycap(struct file *file, void *priv,
+			    struct v4l2_capability *cap)
+{
+	struct rkvdec2_dev *rkvdec = video_drvdata(file);
+	struct video_device *vdev = video_devdata(file);
+
+	strscpy(cap->driver, rkvdec->dev->driver->name,
+		sizeof(cap->driver));
+	strscpy(cap->card, vdev->name, sizeof(cap->card));
+	snprintf(cap->bus_info, sizeof(cap->bus_info), "platform:%s",
+		 rkvdec->dev->driver->name);
+	return 0;
+}
+
+static int rkvdec2_try_capture_fmt(struct file *file, void *priv,
+				   struct v4l2_format *f)
+{
+	struct v4l2_pix_format_mplane *pix_mp = &f->fmt.pix_mp;
+	struct rkvdec2_ctx *ctx = fh_to_rkvdec2_ctx(priv);
+	const struct rkvdec2_coded_fmt_desc *coded_desc;
+	unsigned int i;
+
+	/*
+	 * The codec context should point to a coded format desc, if the format
+	 * on the coded end has not been set yet, it should point to the
+	 * default value.
+	 */
+	coded_desc = ctx->coded_fmt_desc;
+	if (WARN_ON(!coded_desc))
+		return -EINVAL;
+
+	for (i = 0; i < coded_desc->num_decoded_fmts; i++) {
+		if (coded_desc->decoded_fmts[i] == pix_mp->pixelformat)
+			break;
+	}
+
+	if (i == coded_desc->num_decoded_fmts)
+		pix_mp->pixelformat = coded_desc->decoded_fmts[0];
+
+	/* Always apply the frmsize constraint of the coded end. */
+	pix_mp->width = max(pix_mp->width, ctx->coded_fmt.fmt.pix_mp.width);
+	pix_mp->height = max(pix_mp->height, ctx->coded_fmt.fmt.pix_mp.height);
+	v4l2_apply_frmsize_constraints(&pix_mp->width,
+				       &pix_mp->height,
+				       &coded_desc->frmsize);
+
+	v4l2_fill_pixfmt_mp(pix_mp, pix_mp->pixelformat,
+			    pix_mp->width, pix_mp->height);
+
+	pix_mp->plane_fmt[0].sizeimage +=
+		128 *
+		DIV_ROUND_UP(pix_mp->width, 16) *
+		DIV_ROUND_UP(pix_mp->height, 16);
+
+	pix_mp->field = V4L2_FIELD_NONE;
+
+	return 0;
+}
+
+static int rkvdec2_try_output_fmt(struct file *file, void *priv,
+				  struct v4l2_format *f)
+{
+	struct v4l2_pix_format_mplane *pix_mp = &f->fmt.pix_mp;
+	struct rkvdec2_ctx *ctx = fh_to_rkvdec2_ctx(priv);
+	const struct rkvdec2_coded_fmt_desc *desc;
+
+	desc = rkvdec2_find_coded_fmt_desc(pix_mp->pixelformat);
+	if (!desc) {
+		pix_mp->pixelformat = rkvdec2_coded_fmts[0].fourcc;
+		desc = &rkvdec2_coded_fmts[0];
+	}
+
+	v4l2_apply_frmsize_constraints(&pix_mp->width,
+				       &pix_mp->height,
+				       &desc->frmsize);
+
+	pix_mp->field = V4L2_FIELD_NONE;
+	/* All coded formats are considered single planar for now. */
+	pix_mp->num_planes = 1;
+
+	if (desc->ops->adjust_fmt) {
+		int ret;
+
+		ret = desc->ops->adjust_fmt(ctx, f);
+		if (ret)
+			return ret;
+	}
+
+	return 0;
+}
+
+static int rkvdec2_s_capture_fmt(struct file *file, void *priv,
+				 struct v4l2_format *f)
+{
+	struct rkvdec2_ctx *ctx = fh_to_rkvdec2_ctx(priv);
+	struct vb2_queue *vq;
+	int ret;
+
+	/* Change not allowed if queue is busy */
+	vq = v4l2_m2m_get_vq(ctx->fh.m2m_ctx,
+			     V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE);
+	if (vb2_is_busy(vq))
+		return -EBUSY;
+
+	ret = rkvdec2_try_capture_fmt(file, priv, f);
+	if (ret)
+		return ret;
+
+	ctx->decoded_fmt = *f;
+	return 0;
+}
+
+static int rkvdec2_s_output_fmt(struct file *file, void *priv,
+				struct v4l2_format *f)
+{
+	struct rkvdec2_ctx *ctx = fh_to_rkvdec2_ctx(priv);
+	struct v4l2_m2m_ctx *m2m_ctx = ctx->fh.m2m_ctx;
+	const struct rkvdec2_coded_fmt_desc *desc;
+	struct v4l2_format *cap_fmt;
+	struct vb2_queue *peer_vq, *vq;
+	int ret;
+
+	/*
+	 * In order to support dynamic resolution change, the decoder admits
+	 * a resolution change, as long as the pixelformat remains. Can't be
+	 * done if streaming.
+	 */
+	vq = v4l2_m2m_get_vq(m2m_ctx, V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE);
+	if (vb2_is_streaming(vq) ||
+	    (vb2_is_busy(vq) &&
+	     f->fmt.pix_mp.pixelformat != ctx->coded_fmt.fmt.pix_mp.pixelformat))
+		return -EBUSY;
+
+	/*
+	 * Since format change on the OUTPUT queue will reset the CAPTURE
+	 * queue, we can't allow doing so when the CAPTURE queue has buffers
+	 * allocated.
+	 */
+	peer_vq = v4l2_m2m_get_vq(m2m_ctx, V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE);
+	if (vb2_is_busy(peer_vq))
+		return -EBUSY;
+
+	ret = rkvdec2_try_output_fmt(file, priv, f);
+	if (ret)
+		return ret;
+
+	desc = rkvdec2_find_coded_fmt_desc(f->fmt.pix_mp.pixelformat);
+	if (!desc)
+		return -EINVAL;
+	ctx->coded_fmt_desc = desc;
+	ctx->coded_fmt = *f;
+
+	/*
+	 * Current decoded format might have become invalid with newly
+	 * selected codec, so reset it to default just to be safe and
+	 * keep internal driver state sane. User is mandated to set
+	 * the decoded format again after we return, so we don't need
+	 * anything smarter.
+	 *
+	 * Note that this will propagate any size changes to the decoded format.
+	 */
+	rkvdec2_reset_decoded_fmt(ctx);
+
+	/* Propagate colorspace information to capture. */
+	cap_fmt = &ctx->decoded_fmt;
+	cap_fmt->fmt.pix_mp.colorspace = f->fmt.pix_mp.colorspace;
+	cap_fmt->fmt.pix_mp.xfer_func = f->fmt.pix_mp.xfer_func;
+	cap_fmt->fmt.pix_mp.ycbcr_enc = f->fmt.pix_mp.ycbcr_enc;
+	cap_fmt->fmt.pix_mp.quantization = f->fmt.pix_mp.quantization;
+
+	/* Enable format specific queue features */
+	vq->subsystem_flags |= desc->subsystem_flags;
+
+	return 0;
+}
+
+static int rkvdec2_g_output_fmt(struct file *file, void *priv,
+				struct v4l2_format *f)
+{
+	struct rkvdec2_ctx *ctx = fh_to_rkvdec2_ctx(priv);
+
+	*f = ctx->coded_fmt;
+	return 0;
+}
+
+static int rkvdec2_g_capture_fmt(struct file *file, void *priv,
+				 struct v4l2_format *f)
+{
+	struct rkvdec2_ctx *ctx = fh_to_rkvdec2_ctx(priv);
+
+	*f = ctx->decoded_fmt;
+	return 0;
+}
+
+static int rkvdec2_enum_output_fmt(struct file *file, void *priv,
+				   struct v4l2_fmtdesc *f)
+{
+	if (f->index >= ARRAY_SIZE(rkvdec2_coded_fmts))
+		return -EINVAL;
+
+	f->pixelformat = rkvdec2_coded_fmts[f->index].fourcc;
+	return 0;
+}
+
+static int rkvdec2_enum_capture_fmt(struct file *file, void *priv,
+				    struct v4l2_fmtdesc *f)
+{
+	struct rkvdec2_ctx *ctx = fh_to_rkvdec2_ctx(priv);
+
+	if (WARN_ON(!ctx->coded_fmt_desc))
+		return -EINVAL;
+
+	if (f->index >= ctx->coded_fmt_desc->num_decoded_fmts)
+		return -EINVAL;
+
+	f->pixelformat = ctx->coded_fmt_desc->decoded_fmts[f->index];
+	return 0;
+}
+
+static const struct v4l2_ioctl_ops rkvdec2_ioctl_ops = {
+	.vidioc_querycap = rkvdec2_querycap,
+	.vidioc_enum_framesizes = rkvdec2_enum_framesizes,
+
+	.vidioc_try_fmt_vid_cap_mplane = rkvdec2_try_capture_fmt,
+	.vidioc_try_fmt_vid_out_mplane = rkvdec2_try_output_fmt,
+	.vidioc_s_fmt_vid_out_mplane = rkvdec2_s_output_fmt,
+	.vidioc_s_fmt_vid_cap_mplane = rkvdec2_s_capture_fmt,
+	.vidioc_g_fmt_vid_out_mplane = rkvdec2_g_output_fmt,
+	.vidioc_g_fmt_vid_cap_mplane = rkvdec2_g_capture_fmt,
+	.vidioc_enum_fmt_vid_out = rkvdec2_enum_output_fmt,
+	.vidioc_enum_fmt_vid_cap = rkvdec2_enum_capture_fmt,
+
+	.vidioc_reqbufs = v4l2_m2m_ioctl_reqbufs,
+	.vidioc_querybuf = v4l2_m2m_ioctl_querybuf,
+	.vidioc_qbuf = v4l2_m2m_ioctl_qbuf,
+	.vidioc_dqbuf = v4l2_m2m_ioctl_dqbuf,
+	.vidioc_prepare_buf = v4l2_m2m_ioctl_prepare_buf,
+	.vidioc_create_bufs = v4l2_m2m_ioctl_create_bufs,
+	.vidioc_expbuf = v4l2_m2m_ioctl_expbuf,
+
+	.vidioc_subscribe_event = v4l2_ctrl_subscribe_event,
+	.vidioc_unsubscribe_event = v4l2_event_unsubscribe,
+
+	.vidioc_streamon = v4l2_m2m_ioctl_streamon,
+	.vidioc_streamoff = v4l2_m2m_ioctl_streamoff,
+
+	.vidioc_decoder_cmd = v4l2_m2m_ioctl_stateless_decoder_cmd,
+	.vidioc_try_decoder_cmd = v4l2_m2m_ioctl_stateless_try_decoder_cmd,
+};
+
+static int rkvdec2_queue_setup(struct vb2_queue *vq, unsigned int *num_buffers,
+			       unsigned int *num_planes, unsigned int sizes[],
+			      struct device *alloc_devs[])
+{
+	struct rkvdec2_ctx *ctx = vb2_get_drv_priv(vq);
+	struct v4l2_format *f;
+	unsigned int i;
+
+	if (V4L2_TYPE_IS_OUTPUT(vq->type))
+		f = &ctx->coded_fmt;
+	else
+		f = &ctx->decoded_fmt;
+
+	if (*num_planes) {
+		if (*num_planes != f->fmt.pix_mp.num_planes)
+			return -EINVAL;
+
+		for (i = 0; i < f->fmt.pix_mp.num_planes; i++) {
+			if (sizes[i] < f->fmt.pix_mp.plane_fmt[i].sizeimage)
+				return -EINVAL;
+		}
+	} else {
+		*num_planes = f->fmt.pix_mp.num_planes;
+		for (i = 0; i < f->fmt.pix_mp.num_planes; i++)
+			sizes[i] = f->fmt.pix_mp.plane_fmt[i].sizeimage;
+	}
+
+	return 0;
+}
+
+static int rkvdec2_buf_prepare(struct vb2_buffer *vb)
+{
+	struct vb2_queue *vq = vb->vb2_queue;
+	struct rkvdec2_ctx *ctx = vb2_get_drv_priv(vq);
+	struct v4l2_format *f;
+	unsigned int i;
+
+	if (V4L2_TYPE_IS_OUTPUT(vq->type))
+		f = &ctx->coded_fmt;
+	else
+		f = &ctx->decoded_fmt;
+
+	for (i = 0; i < f->fmt.pix_mp.num_planes; ++i) {
+		u32 sizeimage = f->fmt.pix_mp.plane_fmt[i].sizeimage;
+
+		if (vb2_plane_size(vb, i) < sizeimage)
+			return -EINVAL;
+	}
+
+	/*
+	 * Buffer's bytesused must be written by driver for CAPTURE buffers.
+	 * (for OUTPUT buffers, if userspace passes 0 bytesused, v4l2-core sets
+	 * it to buffer length).
+	 */
+	if (V4L2_TYPE_IS_CAPTURE(vq->type))
+		vb2_set_plane_payload(vb, 0, f->fmt.pix_mp.plane_fmt[0].sizeimage);
+
+	return 0;
+}
+
+static void rkvdec2_buf_queue(struct vb2_buffer *vb)
+{
+	struct rkvdec2_ctx *ctx = vb2_get_drv_priv(vb->vb2_queue);
+	struct vb2_v4l2_buffer *vbuf = to_vb2_v4l2_buffer(vb);
+
+	v4l2_m2m_buf_queue(ctx->fh.m2m_ctx, vbuf);
+}
+
+static int rkvdec2_buf_out_validate(struct vb2_buffer *vb)
+{
+	struct vb2_v4l2_buffer *vbuf = to_vb2_v4l2_buffer(vb);
+
+	vbuf->field = V4L2_FIELD_NONE;
+	return 0;
+}
+
+static void rkvdec2_buf_request_complete(struct vb2_buffer *vb)
+{
+	struct rkvdec2_ctx *ctx = vb2_get_drv_priv(vb->vb2_queue);
+
+	v4l2_ctrl_request_complete(vb->req_obj.req, &ctx->ctrl_hdl);
+}
+
+static void rkvdec2_free_rcb(struct rkvdec2_ctx *ctx)
+{
+	u32 width, height;
+	int i;
+
+	width = ctx->decoded_fmt.fmt.pix_mp.width;
+	height = ctx->decoded_fmt.fmt.pix_mp.height;
+
+	for (i = 0; i < RKVDEC2_RCB_COUNT; i++) {
+		if (!ctx->rcb_bufs[i].cpu)
+			continue;
+
+		switch (ctx->rcb_bufs[i].type) {
+		case RKVDEC2_ALLOC_SRAM:
+			gen_pool_free(ctx->dev->sram_pool,
+				      (unsigned long)ctx->rcb_bufs[i].cpu,
+				      RCB_SIZE(i));
+			break;
+		case RKVDEC2_ALLOC_DMA:
+			dma_free_coherent(ctx->dev->dev,
+					  RCB_SIZE(i),
+					  ctx->rcb_bufs[i].cpu,
+					  ctx->rcb_bufs[i].dma);
+			break;
+		}
+	}
+}
+
+static int rkvdec2_allocate_rcb(struct rkvdec2_ctx *ctx)
+{
+	int ret, i;
+	u32 width, height;
+
+	memset(ctx->rcb_bufs, 0, sizeof(*ctx->rcb_bufs));
+
+	width = ctx->decoded_fmt.fmt.pix_mp.width;
+	height = ctx->decoded_fmt.fmt.pix_mp.height;
+
+	for (i = 0; i < RKVDEC2_RCB_COUNT; i++) {
+		void *cpu = NULL;
+		dma_addr_t dma;
+		size_t rcb_size = RCB_SIZE(i);
+		enum rkvdec2_alloc_type alloc_type = RKVDEC2_ALLOC_SRAM;
+
+		if (ctx->dev->sram_pool) {
+			cpu = gen_pool_dma_zalloc_align(ctx->dev->sram_pool,
+							rcb_size,
+							&dma,
+							64);
+		}
+
+		/* Fallback to RAM */
+		if (!cpu) {
+			cpu = dma_alloc_coherent(ctx->dev->dev,
+						 rcb_size,
+						 &dma,
+						 GFP_KERNEL);
+			alloc_type = RKVDEC2_ALLOC_DMA;
+		}
+
+		if (!cpu) {
+			ret = -ENOMEM;
+			goto err_alloc;
+		}
+
+		ctx->rcb_bufs[i].cpu = cpu;
+		ctx->rcb_bufs[i].dma = dma;
+		ctx->rcb_bufs[i].size = rcb_size;
+		ctx->rcb_bufs[i].type = alloc_type;
+	}
+
+	return 0;
+
+err_alloc:
+	rkvdec2_free_rcb(ctx);
+
+	return ret;
+}
+
+static int rkvdec2_start_streaming(struct vb2_queue *q, unsigned int count)
+{
+	struct rkvdec2_ctx *ctx = vb2_get_drv_priv(q);
+	const struct rkvdec2_coded_fmt_desc *desc;
+	int ret;
+
+	if (V4L2_TYPE_IS_CAPTURE(q->type))
+		return 0;
+
+	desc = ctx->coded_fmt_desc;
+	if (WARN_ON(!desc))
+		return -EINVAL;
+
+	ret = rkvdec2_allocate_rcb(ctx);
+	if (ret)
+		return ret;
+
+	if (desc->ops->start) {
+		ret = desc->ops->start(ctx);
+		if (ret)
+			goto err_ops_start;
+	}
+
+	return 0;
+
+err_ops_start:
+	rkvdec2_free_rcb(ctx);
+
+	return ret;
+}
+
+static void rkvdec2_queue_cleanup(struct vb2_queue *vq, u32 state)
+{
+	struct rkvdec2_ctx *ctx = vb2_get_drv_priv(vq);
+
+	while (true) {
+		struct vb2_v4l2_buffer *vbuf;
+
+		if (V4L2_TYPE_IS_OUTPUT(vq->type))
+			vbuf = v4l2_m2m_src_buf_remove(ctx->fh.m2m_ctx);
+		else
+			vbuf = v4l2_m2m_dst_buf_remove(ctx->fh.m2m_ctx);
+
+		if (!vbuf)
+			break;
+
+		v4l2_ctrl_request_complete(vbuf->vb2_buf.req_obj.req,
+					   &ctx->ctrl_hdl);
+		v4l2_m2m_buf_done(vbuf, state);
+	}
+}
+
+static void rkvdec2_stop_streaming(struct vb2_queue *q)
+{
+	struct rkvdec2_ctx *ctx = vb2_get_drv_priv(q);
+
+	if (V4L2_TYPE_IS_OUTPUT(q->type)) {
+		const struct rkvdec2_coded_fmt_desc *desc = ctx->coded_fmt_desc;
+
+		if (WARN_ON(!desc))
+			return;
+
+		if (desc->ops->stop)
+			desc->ops->stop(ctx);
+
+		rkvdec2_free_rcb(ctx);
+	}
+
+	rkvdec2_queue_cleanup(q, VB2_BUF_STATE_ERROR);
+}
+
+static const struct vb2_ops rkvdec2_queue_ops = {
+	.queue_setup = rkvdec2_queue_setup,
+	.buf_prepare = rkvdec2_buf_prepare,
+	.buf_queue = rkvdec2_buf_queue,
+	.buf_out_validate = rkvdec2_buf_out_validate,
+	.buf_request_complete = rkvdec2_buf_request_complete,
+	.start_streaming = rkvdec2_start_streaming,
+	.stop_streaming = rkvdec2_stop_streaming,
+	.wait_prepare = vb2_ops_wait_prepare,
+	.wait_finish = vb2_ops_wait_finish,
+};
+
+static int rkvdec2_request_validate(struct media_request *req)
+{
+	unsigned int count;
+
+	count = vb2_request_buffer_cnt(req);
+	if (!count)
+		return -ENOENT;
+	else if (count > 1)
+		return -EINVAL;
+
+	return vb2_request_validate(req);
+}
+
+static const struct media_device_ops rkvdec2_media_ops = {
+	.req_validate = rkvdec2_request_validate,
+	.req_queue = v4l2_m2m_request_queue,
+};
+
+static void rkvdec2_job_finish_no_pm(struct rkvdec2_ctx *ctx,
+				     enum vb2_buffer_state result)
+{
+	if (ctx->coded_fmt_desc->ops->done) {
+		struct vb2_v4l2_buffer *src_buf, *dst_buf;
+
+		src_buf = v4l2_m2m_next_src_buf(ctx->fh.m2m_ctx);
+		dst_buf = v4l2_m2m_next_dst_buf(ctx->fh.m2m_ctx);
+		ctx->coded_fmt_desc->ops->done(ctx, src_buf, dst_buf, result);
+	}
+
+	v4l2_m2m_buf_done_and_job_finish(ctx->dev->m2m_dev, ctx->fh.m2m_ctx,
+					 result);
+}
+
+static void rkvdec2_job_finish(struct rkvdec2_ctx *ctx,
+			       enum vb2_buffer_state result)
+{
+	struct rkvdec2_dev *rkvdec = ctx->dev;
+
+	pm_runtime_mark_last_busy(rkvdec->dev);
+	pm_runtime_put_autosuspend(rkvdec->dev);
+	rkvdec2_job_finish_no_pm(ctx, result);
+}
+
+void rkvdec2_run_preamble(struct rkvdec2_ctx *ctx, struct rkvdec2_run *run)
+{
+	struct media_request *src_req;
+
+	memset(run, 0, sizeof(*run));
+
+	run->bufs.src = v4l2_m2m_next_src_buf(ctx->fh.m2m_ctx);
+	run->bufs.dst = v4l2_m2m_next_dst_buf(ctx->fh.m2m_ctx);
+
+	/* Apply request(s) controls if needed. */
+	src_req = run->bufs.src->vb2_buf.req_obj.req;
+	if (src_req)
+		v4l2_ctrl_request_setup(src_req, &ctx->ctrl_hdl);
+
+	v4l2_m2m_buf_copy_metadata(run->bufs.src, run->bufs.dst, true);
+}
+
+void rkvdec2_run_postamble(struct rkvdec2_ctx *ctx, struct rkvdec2_run *run)
+{
+	struct media_request *src_req = run->bufs.src->vb2_buf.req_obj.req;
+
+	if (src_req)
+		v4l2_ctrl_request_complete(src_req, &ctx->ctrl_hdl);
+}
+
+static void rkvdec2_device_run(void *priv)
+{
+	struct rkvdec2_ctx *ctx = priv;
+	struct rkvdec2_dev *rkvdec = ctx->dev;
+	const struct rkvdec2_coded_fmt_desc *desc = ctx->coded_fmt_desc;
+	int ret;
+
+	if (WARN_ON(!desc))
+		return;
+
+	ret = pm_runtime_resume_and_get(rkvdec->dev);
+	if (ret < 0) {
+		rkvdec2_job_finish_no_pm(ctx, VB2_BUF_STATE_ERROR);
+		return;
+	}
+
+	ret = desc->ops->run(ctx);
+	if (ret)
+		rkvdec2_job_finish(ctx, VB2_BUF_STATE_ERROR);
+}
+
+static const struct v4l2_m2m_ops rkvdec2_m2m_ops = {
+	.device_run = rkvdec2_device_run,
+};
+
+static int rkvdec2_queue_init(void *priv,
+			      struct vb2_queue *src_vq,
+			      struct vb2_queue *dst_vq)
+{
+	struct rkvdec2_ctx *ctx = priv;
+	struct rkvdec2_dev *rkvdec = ctx->dev;
+	int ret;
+
+	src_vq->type = V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE;
+	src_vq->io_modes = VB2_MMAP | VB2_DMABUF;
+	src_vq->drv_priv = ctx;
+	src_vq->ops = &rkvdec2_queue_ops;
+	src_vq->mem_ops = &vb2_dma_contig_memops;
+
+	/*
+	 * No CPU access on the queues, so no kernel mapping needed.
+	 */
+	src_vq->dma_attrs = DMA_ATTR_NO_KERNEL_MAPPING;
+	src_vq->buf_struct_size = sizeof(struct v4l2_m2m_buffer);
+	src_vq->timestamp_flags = V4L2_BUF_FLAG_TIMESTAMP_COPY;
+	src_vq->lock = &rkvdec->vdev_lock;
+	src_vq->dev = rkvdec->v4l2_dev.dev;
+	src_vq->supports_requests = true;
+	src_vq->requires_requests = true;
+
+	ret = vb2_queue_init(src_vq);
+	if (ret)
+		return ret;
+
+	dst_vq->bidirectional = true;
+	dst_vq->mem_ops = &vb2_dma_contig_memops;
+	dst_vq->dma_attrs = DMA_ATTR_NO_KERNEL_MAPPING;
+	dst_vq->type = V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE;
+	dst_vq->io_modes = VB2_MMAP | VB2_DMABUF;
+	dst_vq->drv_priv = ctx;
+	dst_vq->ops = &rkvdec2_queue_ops;
+	dst_vq->buf_struct_size = sizeof(struct rkvdec2_decoded_buffer);
+	dst_vq->timestamp_flags = V4L2_BUF_FLAG_TIMESTAMP_COPY;
+	dst_vq->lock = &rkvdec->vdev_lock;
+	dst_vq->dev = rkvdec->v4l2_dev.dev;
+
+	return vb2_queue_init(dst_vq);
+}
+
+static int rkvdec2_add_ctrls(struct rkvdec2_ctx *ctx,
+			     const struct rkvdec2_ctrls *ctrls)
+{
+	unsigned int i;
+
+	for (i = 0; i < ctrls->num_ctrls; i++) {
+		const struct v4l2_ctrl_config *cfg = &ctrls->ctrls[i].cfg;
+
+		v4l2_ctrl_new_custom(&ctx->ctrl_hdl, cfg, ctx);
+		if (ctx->ctrl_hdl.error)
+			return ctx->ctrl_hdl.error;
+	}
+
+	return 0;
+}
+
+static int rkvdec2_init_ctrls(struct rkvdec2_ctx *ctx)
+{
+	unsigned int i, nctrls = 0;
+	int ret;
+
+	for (i = 0; i < ARRAY_SIZE(rkvdec2_coded_fmts); i++)
+		nctrls += rkvdec2_coded_fmts[i].ctrls->num_ctrls;
+
+	v4l2_ctrl_handler_init(&ctx->ctrl_hdl, nctrls);
+
+	for (i = 0; i < ARRAY_SIZE(rkvdec2_coded_fmts); i++) {
+		ret = rkvdec2_add_ctrls(ctx, rkvdec2_coded_fmts[i].ctrls);
+		if (ret)
+			goto err_free_handler;
+	}
+
+	ret = v4l2_ctrl_handler_setup(&ctx->ctrl_hdl);
+	if (ret)
+		goto err_free_handler;
+
+	ctx->fh.ctrl_handler = &ctx->ctrl_hdl;
+	return 0;
+
+err_free_handler:
+	v4l2_ctrl_handler_free(&ctx->ctrl_hdl);
+	return ret;
+}
+
+static int rkvdec2_open(struct file *filp)
+{
+	struct rkvdec2_dev *rkvdec = video_drvdata(filp);
+	struct rkvdec2_ctx *ctx;
+	int ret;
+
+	ctx = kzalloc(sizeof(*ctx), GFP_KERNEL);
+	if (!ctx)
+		return -ENOMEM;
+
+	ctx->dev = rkvdec;
+	rkvdec2_reset_coded_fmt(ctx);
+	rkvdec2_reset_decoded_fmt(ctx);
+	v4l2_fh_init(&ctx->fh, video_devdata(filp));
+
+	ret = rkvdec2_init_ctrls(ctx);
+	if (ret)
+		goto err_free_ctx;
+
+	ctx->fh.m2m_ctx = v4l2_m2m_ctx_init(rkvdec->m2m_dev, ctx,
+					    rkvdec2_queue_init);
+	if (IS_ERR(ctx->fh.m2m_ctx)) {
+		ret = PTR_ERR(ctx->fh.m2m_ctx);
+		goto err_cleanup_ctrls;
+	}
+
+	filp->private_data = &ctx->fh;
+	v4l2_fh_add(&ctx->fh);
+
+	return 0;
+
+err_cleanup_ctrls:
+	v4l2_ctrl_handler_free(&ctx->ctrl_hdl);
+
+err_free_ctx:
+	kfree(ctx);
+	return ret;
+}
+
+static int rkvdec2_release(struct file *filp)
+{
+	struct rkvdec2_ctx *ctx = fh_to_rkvdec2_ctx(filp->private_data);
+
+	v4l2_fh_del(&ctx->fh);
+	v4l2_m2m_ctx_release(ctx->fh.m2m_ctx);
+	v4l2_ctrl_handler_free(&ctx->ctrl_hdl);
+	v4l2_fh_exit(&ctx->fh);
+	kfree(ctx);
+
+	return 0;
+}
+
+static const struct v4l2_file_operations rkvdec2_fops = {
+	.owner = THIS_MODULE,
+	.open = rkvdec2_open,
+	.release = rkvdec2_release,
+	.poll = v4l2_m2m_fop_poll,
+	.unlocked_ioctl = video_ioctl2,
+	.mmap = v4l2_m2m_fop_mmap,
+};
+
+static int rkvdec2_v4l2_init(struct rkvdec2_dev *rkvdec)
+{
+	int ret;
+
+	ret = v4l2_device_register(rkvdec->dev, &rkvdec->v4l2_dev);
+	if (ret) {
+		dev_err(rkvdec->dev, "Failed to register V4L2 device\n");
+		return ret;
+	}
+
+	rkvdec->m2m_dev = v4l2_m2m_init(&rkvdec2_m2m_ops);
+	if (IS_ERR(rkvdec->m2m_dev)) {
+		v4l2_err(&rkvdec->v4l2_dev, "Failed to init mem2mem device\n");
+		ret = PTR_ERR(rkvdec->m2m_dev);
+		goto err_unregister_v4l2;
+	}
+
+	rkvdec->mdev.dev = rkvdec->dev;
+	strscpy(rkvdec->mdev.model, "rkvdec2", sizeof(rkvdec->mdev.model));
+	strscpy(rkvdec->mdev.bus_info, "platform:rkvdec2",
+		sizeof(rkvdec->mdev.bus_info));
+	media_device_init(&rkvdec->mdev);
+	rkvdec->mdev.ops = &rkvdec2_media_ops;
+	rkvdec->v4l2_dev.mdev = &rkvdec->mdev;
+
+	rkvdec->vdev.lock = &rkvdec->vdev_lock;
+	rkvdec->vdev.v4l2_dev = &rkvdec->v4l2_dev;
+	rkvdec->vdev.fops = &rkvdec2_fops;
+	rkvdec->vdev.release = video_device_release_empty;
+	rkvdec->vdev.vfl_dir = VFL_DIR_M2M;
+	rkvdec->vdev.device_caps = V4L2_CAP_STREAMING |
+				   V4L2_CAP_VIDEO_M2M_MPLANE;
+	rkvdec->vdev.ioctl_ops = &rkvdec2_ioctl_ops;
+	video_set_drvdata(&rkvdec->vdev, rkvdec);
+	strscpy(rkvdec->vdev.name, "rkvdec2", sizeof(rkvdec->vdev.name));
+
+	ret = video_register_device(&rkvdec->vdev, VFL_TYPE_VIDEO, -1);
+	if (ret) {
+		v4l2_err(&rkvdec->v4l2_dev, "Failed to register video device\n");
+		goto err_cleanup_mc;
+	}
+
+	ret = v4l2_m2m_register_media_controller(rkvdec->m2m_dev, &rkvdec->vdev,
+						 MEDIA_ENT_F_PROC_VIDEO_DECODER);
+	if (ret) {
+		v4l2_err(&rkvdec->v4l2_dev,
+			 "Failed to initialize V4L2 M2M media controller\n");
+		goto err_unregister_vdev;
+	}
+
+	ret = media_device_register(&rkvdec->mdev);
+	if (ret) {
+		v4l2_err(&rkvdec->v4l2_dev, "Failed to register media device\n");
+		goto err_unregister_mc;
+	}
+
+	return 0;
+
+err_unregister_mc:
+	v4l2_m2m_unregister_media_controller(rkvdec->m2m_dev);
+
+err_unregister_vdev:
+	video_unregister_device(&rkvdec->vdev);
+
+err_cleanup_mc:
+	media_device_cleanup(&rkvdec->mdev);
+	v4l2_m2m_release(rkvdec->m2m_dev);
+
+err_unregister_v4l2:
+	v4l2_device_unregister(&rkvdec->v4l2_dev);
+	return ret;
+}
+
+static void rkvdec2_v4l2_cleanup(struct rkvdec2_dev *rkvdec)
+{
+	media_device_unregister(&rkvdec->mdev);
+	v4l2_m2m_unregister_media_controller(rkvdec->m2m_dev);
+	video_unregister_device(&rkvdec->vdev);
+	media_device_cleanup(&rkvdec->mdev);
+	v4l2_m2m_release(rkvdec->m2m_dev);
+	v4l2_device_unregister(&rkvdec->v4l2_dev);
+}
+
+static irqreturn_t rkvdec2_irq_handler(int irq, void *priv)
+{
+	struct rkvdec2_dev *rkvdec = priv;
+	enum vb2_buffer_state state;
+	u32 status;
+
+	status = readl(rkvdec->regs + RKVDEC2_REG_STA_INT);
+	state = (status & STA_INT_DEC_RDY_STA) ?
+		VB2_BUF_STATE_DONE : VB2_BUF_STATE_ERROR;
+
+	/* Clear interrupt status */
+	writel(0, rkvdec->regs + RKVDEC2_REG_STA_INT);
+	if (cancel_delayed_work(&rkvdec->watchdog_work)) {
+		struct rkvdec2_ctx *ctx;
+
+		ctx = v4l2_m2m_get_curr_priv(rkvdec->m2m_dev);
+		rkvdec2_job_finish(ctx, state);
+	}
+
+	return IRQ_HANDLED;
+}
+
+static void rkvdec2_watchdog_func(struct work_struct *work)
+{
+	struct rkvdec2_dev *rkvdec = container_of(to_delayed_work(work), struct rkvdec2_dev,
+			      watchdog_work);
+	struct rkvdec2_ctx *ctx;
+
+	ctx = v4l2_m2m_get_curr_priv(rkvdec->m2m_dev);
+	if (ctx) {
+		dev_err(rkvdec->dev, "Frame processing timed out!\n");
+		writel(RKVDEC2_REG_DEC_IRQ_DISABLE, rkvdec->regs + RKVDEC2_REG_IMPORTANT_EN);
+		writel(0, rkvdec->regs + RKVDEC2_REG_DEC_E);
+		rkvdec2_job_finish(ctx, VB2_BUF_STATE_ERROR);
+	}
+}
+
+static const struct of_device_id of_rkvdec2_match[] = {
+	{ .compatible = "rockchip,rk3588-vdec" },
+	{ /* sentinel */ }
+};
+MODULE_DEVICE_TABLE(of, of_rkvdec2_match);
+
+static const char * const rkvdec2_clk_names[] = {
+	"axi",
+	"ahb",
+	"core",
+	"cabac",
+	"hevc_cabac",
+};
+
+/*
+ * Some SoCs, like RK3588 have multiple identical vdpu34x cores, but the
+ * kernel is currently missing support for multi-core handling. Exposing
+ * separate devices for each core to userspace is bad, since that does
+ * not allow scheduling tasks properly (and creates ABI). With this workaround
+ * the driver will only probe for the first core and early exit for the other
+ * cores. Once the driver gains multi-core support, the same technique
+ * for detecting the main core can be used to cluster all cores together.
+ */
+static int rkvdec2_disable_multicore(struct rkvdec2_dev *rkvdec)
+{
+	const char *compatible;
+	struct device_node *node;
+	int ret;
+
+	/* Intentionally ignores the fallback strings */
+	ret = of_property_read_string(rkvdec->dev->of_node, "compatible", &compatible);
+	if (ret)
+		return ret;
+
+	/* first compatible node found from the root node is considered the main core */
+	node = of_find_compatible_node(NULL, NULL, compatible);
+	if (!node)
+		return -EINVAL; /* broken DT? */
+
+	if (rkvdec->dev->of_node != node) {
+		dev_info(rkvdec->dev, "missing multi-core support, ignoring this instance\n");
+		return -ENODEV;
+	}
+
+	return 0;
+}
+
+static int rkvdec2_probe(struct platform_device *pdev)
+{
+	struct rkvdec2_dev *rkvdec;
+	unsigned int i;
+	int ret, irq;
+
+	rkvdec = devm_kzalloc(&pdev->dev, sizeof(*rkvdec), GFP_KERNEL);
+	if (!rkvdec)
+		return -ENOMEM;
+
+	platform_set_drvdata(pdev, rkvdec);
+	rkvdec->dev = &pdev->dev;
+
+	ret = rkvdec2_disable_multicore(rkvdec);
+	if (ret)
+		return ret;
+
+	mutex_init(&rkvdec->vdev_lock);
+	INIT_DELAYED_WORK(&rkvdec->watchdog_work, rkvdec2_watchdog_func);
+
+	rkvdec->clocks = devm_kcalloc(&pdev->dev, ARRAY_SIZE(rkvdec2_clk_names),
+				      sizeof(*rkvdec->clocks), GFP_KERNEL);
+	if (!rkvdec->clocks)
+		return -ENOMEM;
+
+	for (i = 0; i < ARRAY_SIZE(rkvdec2_clk_names); i++)
+		rkvdec->clocks[i].id = rkvdec2_clk_names[i];
+
+	ret = devm_clk_bulk_get(&pdev->dev, ARRAY_SIZE(rkvdec2_clk_names),
+				rkvdec->clocks);
+	if (ret)
+		return ret;
+
+	rkvdec->regs = devm_platform_ioremap_resource(pdev, 0);
+	if (IS_ERR(rkvdec->regs))
+		return PTR_ERR(rkvdec->regs);
+
+	/*
+	 * Without IOMMU support, keep DMA in the lower 32 bits.
+	 */
+	ret = dma_set_coherent_mask(&pdev->dev, DMA_BIT_MASK(32));
+	if (ret) {
+		dev_err(&pdev->dev, "Could not set DMA coherent mask.\n");
+		return ret;
+	}
+
+	vb2_dma_contig_set_max_seg_size(&pdev->dev, DMA_BIT_MASK(32));
+
+	irq = platform_get_irq(pdev, 0);
+	if (irq <= 0)
+		return -ENXIO;
+
+	ret = devm_request_threaded_irq(&pdev->dev, irq, NULL,
+					rkvdec2_irq_handler, IRQF_ONESHOT,
+					dev_name(&pdev->dev), rkvdec);
+	if (ret) {
+		dev_err(&pdev->dev, "Could not request vdec2 IRQ\n");
+		return ret;
+	}
+
+	rkvdec->sram_pool = of_gen_pool_get(pdev->dev.of_node, "sram", 0);
+	if (!rkvdec->sram_pool)
+		dev_info(&pdev->dev, "No sram node, RCB will be stored in RAM\n");
+
+	pm_runtime_set_autosuspend_delay(&pdev->dev, 100);
+	pm_runtime_use_autosuspend(&pdev->dev);
+	pm_runtime_enable(&pdev->dev);
+
+	ret = rkvdec2_v4l2_init(rkvdec);
+	if (ret)
+		goto err_disable_runtime_pm;
+
+	return 0;
+
+err_disable_runtime_pm:
+	pm_runtime_dont_use_autosuspend(&pdev->dev);
+	pm_runtime_disable(&pdev->dev);
+
+	if (rkvdec->sram_pool)
+		gen_pool_destroy(rkvdec->sram_pool);
+
+	return ret;
+}
+
+static void rkvdec2_remove(struct platform_device *pdev)
+{
+	struct rkvdec2_dev *rkvdec = platform_get_drvdata(pdev);
+
+	cancel_delayed_work_sync(&rkvdec->watchdog_work);
+
+	rkvdec2_v4l2_cleanup(rkvdec);
+	pm_runtime_disable(&pdev->dev);
+	pm_runtime_dont_use_autosuspend(&pdev->dev);
+
+	if (rkvdec->sram_pool)
+		gen_pool_destroy(rkvdec->sram_pool);
+}
+
+#ifdef CONFIG_PM
+static int rkvdec2_runtime_resume(struct device *dev)
+{
+	struct rkvdec2_dev *rkvdec = dev_get_drvdata(dev);
+
+	return clk_bulk_prepare_enable(ARRAY_SIZE(rkvdec2_clk_names),
+				       rkvdec->clocks);
+}
+
+static int rkvdec2_runtime_suspend(struct device *dev)
+{
+	struct rkvdec2_dev *rkvdec = dev_get_drvdata(dev);
+
+	clk_bulk_disable_unprepare(ARRAY_SIZE(rkvdec2_clk_names),
+				   rkvdec->clocks);
+	return 0;
+}
+#endif
+
+static const struct dev_pm_ops rkvdec2_pm_ops = {
+	SET_SYSTEM_SLEEP_PM_OPS(pm_runtime_force_suspend,
+				pm_runtime_force_resume)
+	SET_RUNTIME_PM_OPS(rkvdec2_runtime_suspend, rkvdec2_runtime_resume, NULL)
+};
+
+static struct platform_driver rkvdec2_driver = {
+	.probe = rkvdec2_probe,
+	.remove_new = rkvdec2_remove,
+	.driver = {
+		   .name = "rkvdec2",
+		   .of_match_table = of_rkvdec2_match,
+		   .pm = &rkvdec2_pm_ops,
+	},
+};
+module_platform_driver(rkvdec2_driver);
+
+MODULE_AUTHOR("Detlev Casanova <detlev.casanova@collabora.com>");
+MODULE_DESCRIPTION("Rockchip Video Decoder 2 driver");
+MODULE_LICENSE("GPL");
diff --git a/drivers/staging/media/rkvdec2/rkvdec2.h b/drivers/staging/media/rkvdec2/rkvdec2.h
new file mode 100644
index 000000000000..8613051775e9
--- /dev/null
+++ b/drivers/staging/media/rkvdec2/rkvdec2.h
@@ -0,0 +1,130 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Rockchip Video Decoder 2 driver
+ *
+ * Copyright (C) 2024 Collabora, Ltd.
+ *  Detlev Casanova <detlev.casanova@collabora.com>
+ *
+ * Based on rkvdec driver by Boris Brezillon <boris.brezillon@collabora.com>
+ */
+#ifndef RKVDEC_H_
+#define RKVDEC_H_
+
+#include <linux/platform_device.h>
+#include <linux/videodev2.h>
+#include <linux/wait.h>
+#include <linux/clk.h>
+#include <linux/dma-mapping.h>
+
+#include <media/v4l2-ctrls.h>
+#include <media/v4l2-device.h>
+#include <media/v4l2-ioctl.h>
+#include <media/videobuf2-core.h>
+#include <media/videobuf2-dma-contig.h>
+
+#include "rkvdec2-regs.h"
+
+#define RKVDEC2_RCB_COUNT	10
+
+struct rkvdec2_ctx;
+
+enum rkvdec2_alloc_type {
+	RKVDEC2_ALLOC_SRAM,
+	RKVDEC2_ALLOC_DMA,
+};
+
+struct rkvdec2_aux_buf {
+	void *cpu;
+	dma_addr_t dma;
+	size_t size;
+	enum rkvdec2_alloc_type type;
+};
+
+struct rkvdec2_ctrl_desc {
+	struct v4l2_ctrl_config cfg;
+};
+
+struct rkvdec2_ctrls {
+	const struct rkvdec2_ctrl_desc *ctrls;
+	unsigned int num_ctrls;
+};
+
+struct rkvdec2_run {
+	struct {
+		struct vb2_v4l2_buffer *src;
+		struct vb2_v4l2_buffer *dst;
+	} bufs;
+};
+
+struct rkvdec2_decoded_buffer {
+	/* Must be the first field in this struct. */
+	struct v4l2_m2m_buffer base;
+};
+
+static inline struct rkvdec2_decoded_buffer *
+vb2_to_rkvdec2_decoded_buf(struct vb2_buffer *buf)
+{
+	return container_of(buf, struct rkvdec2_decoded_buffer,
+			    base.vb.vb2_buf);
+}
+
+struct rkvdec2_coded_fmt_ops {
+	int (*adjust_fmt)(struct rkvdec2_ctx *ctx,
+			  struct v4l2_format *f);
+	int (*start)(struct rkvdec2_ctx *ctx);
+	void (*stop)(struct rkvdec2_ctx *ctx);
+	int (*run)(struct rkvdec2_ctx *ctx);
+	void (*done)(struct rkvdec2_ctx *ctx, struct vb2_v4l2_buffer *src_buf,
+		     struct vb2_v4l2_buffer *dst_buf,
+		     enum vb2_buffer_state result);
+	int (*try_ctrl)(struct rkvdec2_ctx *ctx, struct v4l2_ctrl *ctrl);
+};
+
+struct rkvdec2_coded_fmt_desc {
+	u32 fourcc;
+	struct v4l2_frmsize_stepwise frmsize;
+	const struct rkvdec2_ctrls *ctrls;
+	const struct rkvdec2_coded_fmt_ops *ops;
+	unsigned int num_decoded_fmts;
+	const u32 *decoded_fmts;
+	u32 subsystem_flags;
+};
+
+struct rkvdec2_dev {
+	struct v4l2_device v4l2_dev;
+	struct media_device mdev;
+	struct video_device vdev;
+	struct v4l2_m2m_dev *m2m_dev;
+	struct device *dev;
+	struct clk_bulk_data *clocks;
+	void __iomem *regs;
+	struct gen_pool *sram_pool;
+	struct mutex vdev_lock; /* serializes ioctls */
+	struct delayed_work watchdog_work;
+};
+
+struct rkvdec2_ctx {
+	struct v4l2_fh fh;
+	struct v4l2_format coded_fmt;
+	struct v4l2_format decoded_fmt;
+	const struct rkvdec2_coded_fmt_desc *coded_fmt_desc;
+	struct v4l2_ctrl_handler ctrl_hdl;
+	struct rkvdec2_dev *dev;
+	struct rkvdec2_aux_buf rcb_bufs[RKVDEC2_RCB_COUNT];
+
+	u32 colmv_offset;
+
+	void *priv;
+};
+
+static inline struct rkvdec2_ctx *fh_to_rkvdec2_ctx(struct v4l2_fh *fh)
+{
+	return container_of(fh, struct rkvdec2_ctx, fh);
+}
+
+void rkvdec2_run_preamble(struct rkvdec2_ctx *ctx, struct rkvdec2_run *run);
+void rkvdec2_run_postamble(struct rkvdec2_ctx *ctx, struct rkvdec2_run *run);
+
+extern const struct rkvdec2_coded_fmt_ops rkvdec2_h264_fmt_ops;
+
+#endif /* RKVDEC_H_ */
-- 
2.44.2


