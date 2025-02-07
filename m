Return-Path: <devicetree+bounces-143826-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 00DF6A2BD22
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 08:59:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6824E7A4CC8
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 07:57:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7CB6A23979A;
	Fri,  7 Feb 2025 07:56:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="N/yCBODY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A2E8239586;
	Fri,  7 Feb 2025 07:56:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738914982; cv=none; b=nFSh+i3NVYx/uiKkee8I94Lvmy1hxryAJly2xrMuPUMaw+qTDx3CGILTWDP95seRM4bG589pPi8QEFzXHUoaw3HVznjkRv2Hn693pgW5XJCzlsZLqlGhpYSquNNogV+gR1RmP9YpeN2KSEIZ0NttckjiEa89SGDvbalNgi575wg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738914982; c=relaxed/simple;
	bh=i1abWfpDch0mhKaZrogBqBunRLzGslWnAXLxoD7clrQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-ID:References:
	 In-Reply-To:To:CC; b=vD8U6CFTFNHit3XD/aV6V2uz7TNvL8qUxUxwJQwWpdln7xpwtWHIJhZtcFc0oZXZ2SDnV9NKSo47ANSs8sl+XWpKb4qX9iAHttuFCjeGKPHb87Bmq0acQxYMdQeXTX9gh4vLPgQwe3ReAK4DfcD5qeaK5dPjn69MXiOD0ZeN310=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com; spf=pass smtp.mailfrom=quicinc.com; dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b=N/yCBODY; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=quicinc.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51756V7W023974;
	Fri, 7 Feb 2025 07:56:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	QpH3nFNVJlejrJ0sCGUPaHX2bNkSJ7gMbPc2C4Nu7lw=; b=N/yCBODYgsKYgyDZ
	BrgJZTOWX8kPNmeus2D673KkLGBdRK7JCmBqEoBSENYJlhj64JzNKVGjPxg/qj1c
	Dwt1nC9ZhZt9h9e5RB91KegRCL+2DAowrQF1CnPtV7erPH+J77M8xutoCPnj1r0h
	3NavVLS56q7dOJfbRz1slCILwR6ElkNo1ESU00LYdN6BSeQGSRU0NOk7Q07nP+f1
	uceXIuNr0FXWRA1+ZbD2QltCENyRf29LfImpCwOj0ECoWFm03UTCT3TA+HMTNdH0
	tXNIPRG0icCM9t5Ixp7v+2HrsIioqbtXogvScZr2YS3kdXCi9hFXUoXaLLBPFAL8
	UUVQXA==
Received: from nalasppmta05.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44nbr40cee-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 07 Feb 2025 07:56:00 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA05.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 5177txHC027666
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 7 Feb 2025 07:55:59 GMT
Received: from hu-dikshita-hyd.qualcomm.com (10.80.80.8) by
 nalasex01a.na.qualcomm.com (10.47.209.196) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Thu, 6 Feb 2025 23:55:53 -0800
From: Dikshita Agarwal <quic_dikshita@quicinc.com>
Date: Fri, 7 Feb 2025 13:24:49 +0530
Subject: [PATCH v10 09/28] media: iris: implement reqbuf ioctl with
 vb2_queue_setup
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20250207-qcom-video-iris-v10-9-ab66eeffbd20@quicinc.com>
References: <20250207-qcom-video-iris-v10-0-ab66eeffbd20@quicinc.com>
In-Reply-To: <20250207-qcom-video-iris-v10-0-ab66eeffbd20@quicinc.com>
To: Vikash Garodia <quic_vgarodia@quicinc.com>,
        Abhinav Kumar
	<quic_abhinavk@quicinc.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        "Rob
 Herring" <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        "Conor
 Dooley" <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>
CC: Hans Verkuil <hverkuil@xs4all.nl>,
        Sebastian Fricke
	<sebastian.fricke@collabora.com>,
        Bryan O'Donoghue
	<bryan.odonoghue@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Nicolas Dufresne
	<nicolas@ndufresne.ca>,
        =?utf-8?q?Uwe_Kleine-K=C3=B6nig?=
	<u.kleine-koenig@baylibre.com>,
        Jianhua Lu <lujianhua000@gmail.com>,
        "Stefan
 Schmidt" <stefan.schmidt@linaro.org>,
        Joel Stanley <joel@jms.id.au>, "Johan
 Hovold" <johan@kernel.org>,
        <linux-media@vger.kernel.org>, <linux-arm-msm@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        Dikshita Agarwal <quic_dikshita@quicinc.com>
X-Mailer: b4 0.14.1
X-Developer-Signature: v=1; a=ed25519-sha256; t=1738914893; l=54213;
 i=quic_dikshita@quicinc.com; s=20240917; h=from:subject:message-id;
 bh=i1abWfpDch0mhKaZrogBqBunRLzGslWnAXLxoD7clrQ=;
 b=0MYuCCGXfFaLdqRgdF+GTcuvvqFX2HjEIwEBkA9UgfGmSGtWacrvfYu2x6oLsupnhAcKmqV+F
 8Aj5X61dWvSCAU3H+d7dfQFD3TZ7BPya7PdAdKesZVWiRvJAnpp+Yq6
X-Developer-Key: i=quic_dikshita@quicinc.com; a=ed25519;
 pk=EEvKY6Ar1OI5SWf44FJ1Ebo1KuQEVbbf5UNPO+UHVhM=
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: 18BInWFdezZ1rhVtGXbS_mSWZUJNOkEo
X-Proofpoint-ORIG-GUID: 18BInWFdezZ1rhVtGXbS_mSWZUJNOkEo
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-07_03,2025-02-07_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 phishscore=0 malwarescore=0 bulkscore=0 suspectscore=0 mlxscore=0
 adultscore=0 mlxlogscore=999 spamscore=0 lowpriorityscore=0 clxscore=1015
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2501170000 definitions=main-2502070059

Implement the reqbuf IOCTL op and the vb2_queue_setup vb2 op in the
driver with necessary hooks.

Reviewed-by: Hans Verkuil <hverkuil@xs4all.nl>
Tested-by: Stefan Schmidt <stefan.schmidt@linaro.org> # x1e80100 (Dell XPS 13 9345)
Reviewed-by: Stefan Schmidt <stefan.schmidt@linaro.org>
Tested-by: Neil Armstrong <neil.armstrong@linaro.org> # on SM8550-QRD
Tested-by: Neil Armstrong <neil.armstrong@linaro.org> # on SM8550-HDK
Signed-off-by: Dikshita Agarwal <quic_dikshita@quicinc.com>
---
 drivers/media/platform/qcom/iris/Makefile          |   7 +-
 drivers/media/platform/qcom/iris/iris_buffer.c     | 119 +++++++++++++++++++++
 drivers/media/platform/qcom/iris/iris_buffer.h     | 107 ++++++++++++++++++
 drivers/media/platform/qcom/iris/iris_core.h       |   6 ++
 drivers/media/platform/qcom/iris/iris_hfi_common.h |   3 +
 .../platform/qcom/iris/iris_hfi_gen1_command.c     |  40 +++++++
 .../platform/qcom/iris/iris_hfi_gen1_defines.h     |  47 +++++++-
 .../platform/qcom/iris/iris_hfi_gen1_response.c    |  79 +++++++++++++-
 drivers/media/platform/qcom/iris/iris_hfi_gen2.h   |   5 +
 .../platform/qcom/iris/iris_hfi_gen2_command.c     | 105 ++++++++++++++++++
 .../platform/qcom/iris/iris_hfi_gen2_defines.h     |  35 ++++++
 .../platform/qcom/iris/iris_hfi_gen2_packet.c      |  39 +++++++
 .../platform/qcom/iris/iris_hfi_gen2_packet.h      |   7 ++
 .../platform/qcom/iris/iris_hfi_gen2_response.c    | 111 ++++++++++++++++++-
 drivers/media/platform/qcom/iris/iris_instance.h   |  22 ++++
 .../platform/qcom/iris/iris_platform_common.h      |   5 +
 .../platform/qcom/iris/iris_platform_sm8550.c      |   6 ++
 drivers/media/platform/qcom/iris/iris_probe.c      |   2 +
 drivers/media/platform/qcom/iris/iris_utils.c      |  52 +++++++++
 drivers/media/platform/qcom/iris/iris_utils.h      |  34 ++++++
 drivers/media/platform/qcom/iris/iris_vb2.c        |  50 +++++++++
 drivers/media/platform/qcom/iris/iris_vb2.h        |  12 +++
 drivers/media/platform/qcom/iris/iris_vdec.c       |  56 ++++++++++
 drivers/media/platform/qcom/iris/iris_vdec.h       |  14 +++
 drivers/media/platform/qcom/iris/iris_vidc.c       |  81 ++++++++++++++
 drivers/media/platform/qcom/iris/iris_vpu_buffer.c |  19 ++++
 drivers/media/platform/qcom/iris/iris_vpu_buffer.h |  15 +++
 27 files changed, 1070 insertions(+), 8 deletions(-)

diff --git a/drivers/media/platform/qcom/iris/Makefile b/drivers/media/platform/qcom/iris/Makefile
index a5f290a8c4af..48ab264b7906 100644
--- a/drivers/media/platform/qcom/iris/Makefile
+++ b/drivers/media/platform/qcom/iris/Makefile
@@ -1,4 +1,5 @@
-iris-objs += iris_core.o \
+iris-objs += iris_buffer.o \
+             iris_core.o \
              iris_firmware.o \
              iris_hfi_common.o \
              iris_hfi_gen1_command.o \
@@ -10,9 +11,13 @@ iris-objs += iris_core.o \
              iris_platform_sm8550.o \
              iris_probe.o \
              iris_resources.o \
+             iris_utils.o \
              iris_vidc.o \
+             iris_vb2.o \
+             iris_vdec.o \
              iris_vpu2.o \
              iris_vpu3.o \
+             iris_vpu_buffer.o \
              iris_vpu_common.o \
 
 obj-$(CONFIG_VIDEO_QCOM_IRIS) += iris.o
diff --git a/drivers/media/platform/qcom/iris/iris_buffer.c b/drivers/media/platform/qcom/iris/iris_buffer.c
new file mode 100644
index 000000000000..037931ce6550
--- /dev/null
+++ b/drivers/media/platform/qcom/iris/iris_buffer.c
@@ -0,0 +1,119 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (c) 2022-2024 Qualcomm Innovation Center, Inc. All rights reserved.
+ */
+
+#include <media/v4l2-mem2mem.h>
+
+#include "iris_buffer.h"
+#include "iris_instance.h"
+
+#define PIXELS_4K 4096
+#define MAX_WIDTH 4096
+#define MAX_HEIGHT 2304
+#define Y_STRIDE_ALIGN 128
+#define UV_STRIDE_ALIGN 128
+#define Y_SCANLINE_ALIGN 32
+#define UV_SCANLINE_ALIGN 16
+#define UV_SCANLINE_ALIGN_QC08C 32
+#define META_STRIDE_ALIGNED 64
+#define META_SCANLINE_ALIGNED 16
+#define NUM_MBS_4K (DIV_ROUND_UP(MAX_WIDTH, 16) * DIV_ROUND_UP(MAX_HEIGHT, 16))
+
+/*
+ * NV12:
+ * YUV 4:2:0 image with a plane of 8 bit Y samples followed
+ * by an interleaved U/V plane containing 8 bit 2x2 subsampled
+ * colour difference samples.
+ *
+ * <-Y/UV_Stride (aligned to 128)->
+ * <------- Width ------->
+ * Y Y Y Y Y Y Y Y Y Y Y Y . . . .  ^           ^
+ * Y Y Y Y Y Y Y Y Y Y Y Y . . . .  |           |
+ * Y Y Y Y Y Y Y Y Y Y Y Y . . . .  Height      |
+ * Y Y Y Y Y Y Y Y Y Y Y Y . . . .  |          y_scanlines (aligned to 32)
+ * Y Y Y Y Y Y Y Y Y Y Y Y . . . .  |           |
+ * Y Y Y Y Y Y Y Y Y Y Y Y . . . .  |           |
+ * Y Y Y Y Y Y Y Y Y Y Y Y . . . .  |           |
+ * Y Y Y Y Y Y Y Y Y Y Y Y . . . .  V           |
+ * . . . . . . . . . . . . . . . .              |
+ * . . . . . . . . . . . . . . . .              |
+ * . . . . . . . . . . . . . . . .              |
+ * . . . . . . . . . . . . . . . .              V
+ * U V U V U V U V U V U V . . . .  ^
+ * U V U V U V U V U V U V . . . .  |
+ * U V U V U V U V U V U V . . . .  |
+ * U V U V U V U V U V U V . . . .  uv_scanlines (aligned to 16)
+ * . . . . . . . . . . . . . . . .  |
+ * . . . . . . . . . . . . . . . .  V
+ * . . . . . . . . . . . . . . . .  --> Buffer size aligned to 4K
+ *
+ * y_stride : Width aligned to 128
+ * uv_stride : Width aligned to 128
+ * y_scanlines: Height aligned to 32
+ * uv_scanlines: Height/2 aligned to 16
+ * Total size = align((y_stride * y_scanlines
+ *          + uv_stride * uv_scanlines , 4096)
+ *
+ * Note: All the alignments are hardware requirements.
+ */
+static u32 iris_yuv_buffer_size_nv12(struct iris_inst *inst)
+{
+	u32 y_plane, uv_plane, y_stride, uv_stride, y_scanlines, uv_scanlines;
+	struct v4l2_format *f = inst->fmt_dst;
+
+	y_stride = ALIGN(f->fmt.pix_mp.width, Y_STRIDE_ALIGN);
+	uv_stride = ALIGN(f->fmt.pix_mp.width, UV_STRIDE_ALIGN);
+	y_scanlines = ALIGN(f->fmt.pix_mp.height, Y_SCANLINE_ALIGN);
+	uv_scanlines = ALIGN((f->fmt.pix_mp.height + 1) >> 1, UV_SCANLINE_ALIGN);
+	y_plane = y_stride * y_scanlines;
+	uv_plane = uv_stride * uv_scanlines;
+
+	return ALIGN(y_plane + uv_plane, PIXELS_4K);
+}
+
+static u32 iris_bitstream_buffer_size(struct iris_inst *inst)
+{
+	struct platform_inst_caps *caps = inst->core->iris_platform_data->inst_caps;
+	u32 base_res_mbs = NUM_MBS_4K;
+	u32 frame_size, num_mbs;
+	u32 div_factor = 2;
+
+	num_mbs = iris_get_mbpf(inst);
+	if (num_mbs > NUM_MBS_4K) {
+		div_factor = 4;
+		base_res_mbs = caps->max_mbpf;
+	}
+
+	/*
+	 * frame_size = YUVsize / div_factor
+	 * where YUVsize = resolution_in_MBs * MBs_in_pixel * 3 / 2
+	 */
+	frame_size = base_res_mbs * (16 * 16) * 3 / 2 / div_factor;
+
+	return ALIGN(frame_size, PIXELS_4K);
+}
+
+int iris_get_buffer_size(struct iris_inst *inst,
+			 enum iris_buffer_type buffer_type)
+{
+	switch (buffer_type) {
+	case BUF_INPUT:
+		return iris_bitstream_buffer_size(inst);
+	case BUF_OUTPUT:
+		return iris_yuv_buffer_size_nv12(inst);
+	default:
+		return 0;
+	}
+}
+
+void iris_vb2_queue_error(struct iris_inst *inst)
+{
+	struct v4l2_m2m_ctx *m2m_ctx = inst->m2m_ctx;
+	struct vb2_queue *q;
+
+	q = v4l2_m2m_get_src_vq(m2m_ctx);
+	vb2_queue_error(q);
+	q = v4l2_m2m_get_dst_vq(m2m_ctx);
+	vb2_queue_error(q);
+}
diff --git a/drivers/media/platform/qcom/iris/iris_buffer.h b/drivers/media/platform/qcom/iris/iris_buffer.h
new file mode 100644
index 000000000000..ae2ec5637108
--- /dev/null
+++ b/drivers/media/platform/qcom/iris/iris_buffer.h
@@ -0,0 +1,107 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (c) 2022-2024 Qualcomm Innovation Center, Inc. All rights reserved.
+ */
+
+#ifndef __IRIS_BUFFER_H__
+#define __IRIS_BUFFER_H__
+
+#include <media/videobuf2-v4l2.h>
+
+struct iris_inst;
+
+#define to_iris_buffer(ptr)	container_of(ptr, struct iris_buffer, vb2)
+
+/**
+ * enum iris_buffer_type
+ *
+ * @BUF_INPUT: input buffer to the iris hardware
+ * @BUF_OUTPUT: output buffer from the iris hardware
+ * @BUF_BIN: buffer to store intermediate bin data
+ * @BUF_ARP: buffer for auto register programming
+ * @BUF_COMV: buffer to store colocated motion vectors
+ * @BUF_NON_COMV: buffer to hold config data for HW
+ * @BUF_LINE: buffer to store decoding/encoding context data for HW
+ * @BUF_DPB: buffer to store display picture buffers for reference
+ * @BUF_PERSIST: buffer to store session context data
+ * @BUF_SCRATCH_1: buffer to store decoding/encoding context data for HW
+ * @BUF_TYPE_MAX: max buffer types
+ */
+enum iris_buffer_type {
+	BUF_INPUT = 1,
+	BUF_OUTPUT,
+	BUF_BIN,
+	BUF_ARP,
+	BUF_COMV,
+	BUF_NON_COMV,
+	BUF_LINE,
+	BUF_DPB,
+	BUF_PERSIST,
+	BUF_SCRATCH_1,
+	BUF_TYPE_MAX,
+};
+
+/*
+ * enum iris_buffer_attributes
+ *
+ * BUF_ATTR_DEFERRED: buffer queued by client but not submitted to firmware.
+ * BUF_ATTR_PENDING_RELEASE: buffers requested to be released from firmware.
+ * BUF_ATTR_QUEUED: buffers submitted to firmware.
+ * BUF_ATTR_DEQUEUED: buffers received from firmware.
+ * BUF_ATTR_BUFFER_DONE: buffers sent back to vb2.
+ */
+enum iris_buffer_attributes {
+	BUF_ATTR_DEFERRED		= BIT(0),
+	BUF_ATTR_PENDING_RELEASE	= BIT(1),
+	BUF_ATTR_QUEUED			= BIT(2),
+	BUF_ATTR_DEQUEUED		= BIT(3),
+	BUF_ATTR_BUFFER_DONE		= BIT(4),
+};
+
+/**
+ * struct iris_buffer
+ *
+ * @vb2: v4l2 vb2 buffer
+ * @list: list head for the iris_buffers structure
+ * @inst: iris instance structure
+ * @type: enum for type of iris buffer
+ * @index: identifier for the iris buffer
+ * @fd: file descriptor of the buffer
+ * @buffer_size: accessible buffer size in bytes starting from addr_offset
+ * @data_offset: accessible buffer offset from base address
+ * @data_size: data size in bytes
+ * @device_addr: device address of the buffer
+ * @kvaddr: kernel virtual address of the buffer
+ * @dma_attrs: dma attributes
+ * @flags: buffer flags. It is represented as bit masks.
+ * @timestamp: timestamp of the buffer in nano seconds (ns)
+ * @attr: enum for iris buffer attributes
+ */
+struct iris_buffer {
+	struct vb2_v4l2_buffer		vb2;
+	struct list_head		list;
+	struct iris_inst		*inst;
+	enum iris_buffer_type		type;
+	u32				index;
+	int				fd;
+	size_t				buffer_size;
+	u32				data_offset;
+	size_t				data_size;
+	dma_addr_t			device_addr;
+	void				*kvaddr;
+	unsigned long			dma_attrs;
+	u32				flags; /* V4L2_BUF_FLAG_* */
+	u64				timestamp;
+	enum iris_buffer_attributes	attr;
+};
+
+struct iris_buffers {
+	struct list_head	list;
+	u32			min_count;
+	u32			size;
+};
+
+int iris_get_buffer_size(struct iris_inst *inst, enum iris_buffer_type buffer_type);
+void iris_vb2_queue_error(struct iris_inst *inst);
+
+#endif
diff --git a/drivers/media/platform/qcom/iris/iris_core.h b/drivers/media/platform/qcom/iris/iris_core.h
index 58aab78ab2c4..1ddcb8793172 100644
--- a/drivers/media/platform/qcom/iris/iris_core.h
+++ b/drivers/media/platform/qcom/iris/iris_core.h
@@ -34,6 +34,8 @@ struct icc_info {
  * @v4l2_dev: a holder for v4l2 device structure
  * @vdev_dec: iris video device structure for decoder
  * @iris_v4l2_file_ops: iris v4l2 file ops
+ * @iris_v4l2_ioctl_ops: iris v4l2 ioctl ops
+ * @iris_vb2_ops: iris vb2 ops
  * @icc_tbl: table of iris interconnects
  * @icc_count: count of iris interconnects
  * @pmdomain_tbl: table of iris power domains
@@ -60,6 +62,7 @@ struct icc_info {
  * @core_init_done: structure of signal completion for system response
  * @intr_status: interrupt status
  * @sys_error_handler: a delayed work for handling system fatal error
+ * @instances: a list_head of all instances
  */
 
 struct iris_core {
@@ -69,6 +72,8 @@ struct iris_core {
 	struct v4l2_device			v4l2_dev;
 	struct video_device			*vdev_dec;
 	const struct v4l2_file_operations	*iris_v4l2_file_ops;
+	const struct v4l2_ioctl_ops		*iris_v4l2_ioctl_ops;
+	const struct vb2_ops			*iris_vb2_ops;
 	struct icc_bulk_data			*icc_tbl;
 	u32					icc_count;
 	struct dev_pm_domain_list		*pmdomain_tbl;
@@ -95,6 +100,7 @@ struct iris_core {
 	struct completion			core_init_done;
 	u32					intr_status;
 	struct delayed_work			sys_error_handler;
+	struct list_head			instances;
 };
 
 int iris_core_init(struct iris_core *core);
diff --git a/drivers/media/platform/qcom/iris/iris_hfi_common.h b/drivers/media/platform/qcom/iris/iris_hfi_common.h
index 36673aafe1c9..eaa2db469c74 100644
--- a/drivers/media/platform/qcom/iris/iris_hfi_common.h
+++ b/drivers/media/platform/qcom/iris/iris_hfi_common.h
@@ -9,6 +9,7 @@
 #include <linux/types.h>
 #include <media/v4l2-device.h>
 
+struct iris_inst;
 struct iris_core;
 
 enum hfi_packet_port_type {
@@ -47,6 +48,8 @@ struct iris_hfi_command_ops {
 	int (*sys_image_version)(struct iris_core *core);
 	int (*sys_interframe_powercollapse)(struct iris_core *core);
 	int (*sys_pc_prep)(struct iris_core *core);
+	int (*session_open)(struct iris_inst *inst);
+	int (*session_close)(struct iris_inst *inst);
 };
 
 struct iris_hfi_response_ops {
diff --git a/drivers/media/platform/qcom/iris/iris_hfi_gen1_command.c b/drivers/media/platform/qcom/iris/iris_hfi_gen1_command.c
index b2e76d1dcbf7..7ee69c5223ce 100644
--- a/drivers/media/platform/qcom/iris/iris_hfi_gen1_command.c
+++ b/drivers/media/platform/qcom/iris/iris_hfi_gen1_command.c
@@ -66,11 +66,51 @@ static int iris_hfi_gen1_sys_pc_prep(struct iris_core *core)
 	return iris_hfi_queue_cmd_write_locked(core, &pkt, pkt.hdr.size);
 }
 
+static int iris_hfi_gen1_session_open(struct iris_inst *inst)
+{
+	struct hfi_session_open_pkt packet;
+	int ret;
+
+	packet.shdr.hdr.size = sizeof(struct hfi_session_open_pkt);
+	packet.shdr.hdr.pkt_type = HFI_CMD_SYS_SESSION_INIT;
+	packet.shdr.session_id = inst->session_id;
+	packet.session_domain = HFI_SESSION_TYPE_DEC;
+	packet.session_codec = HFI_VIDEO_CODEC_H264;
+
+	reinit_completion(&inst->completion);
+
+	ret = iris_hfi_queue_cmd_write(inst->core, &packet, packet.shdr.hdr.size);
+	if (ret)
+		return ret;
+
+	return iris_wait_for_session_response(inst);
+}
+
+static void iris_hfi_gen1_packet_session_cmd(struct iris_inst *inst,
+					     struct hfi_session_pkt *packet,
+					     u32 ptype)
+{
+	packet->shdr.hdr.size = sizeof(*packet);
+	packet->shdr.hdr.pkt_type = ptype;
+	packet->shdr.session_id = inst->session_id;
+}
+
+static int iris_hfi_gen1_session_close(struct iris_inst *inst)
+{
+	struct hfi_session_pkt packet;
+
+	iris_hfi_gen1_packet_session_cmd(inst, &packet, HFI_CMD_SYS_SESSION_END);
+
+	return iris_hfi_queue_cmd_write(inst->core, &packet, packet.shdr.hdr.size);
+}
+
 static const struct iris_hfi_command_ops iris_hfi_gen1_command_ops = {
 	.sys_init = iris_hfi_gen1_sys_init,
 	.sys_image_version = iris_hfi_gen1_sys_image_version,
 	.sys_interframe_powercollapse = iris_hfi_gen1_sys_interframe_powercollapse,
 	.sys_pc_prep = iris_hfi_gen1_sys_pc_prep,
+	.session_open = iris_hfi_gen1_session_open,
+	.session_close = iris_hfi_gen1_session_close,
 };
 
 void iris_hfi_gen1_command_ops_init(struct iris_core *core)
diff --git a/drivers/media/platform/qcom/iris/iris_hfi_gen1_defines.h b/drivers/media/platform/qcom/iris/iris_hfi_gen1_defines.h
index 81685a284f23..3640f8504db9 100644
--- a/drivers/media/platform/qcom/iris/iris_hfi_gen1_defines.h
+++ b/drivers/media/platform/qcom/iris/iris_hfi_gen1_defines.h
@@ -9,19 +9,34 @@
 #include <linux/types.h>
 
 #define HFI_VIDEO_ARCH_OX				0x1
+
+#define HFI_SESSION_TYPE_DEC				2
+
+#define HFI_VIDEO_CODEC_H264				0x00000002
+
 #define HFI_ERR_NONE					0x0
 
 #define HFI_CMD_SYS_INIT				0x10001
 #define HFI_CMD_SYS_PC_PREP				0x10002
 #define HFI_CMD_SYS_SET_PROPERTY			0x10005
 #define HFI_CMD_SYS_GET_PROPERTY			0x10006
+#define HFI_CMD_SYS_SESSION_INIT			0x10007
+#define HFI_CMD_SYS_SESSION_END				0x10008
 
-#define HFI_PROPERTY_SYS_CODEC_POWER_PLANE_CTRL		0x5
-#define HFI_PROPERTY_SYS_IMAGE_VERSION			0x6
+#define HFI_ERR_SESSION_UNSUPPORTED_SETTING		0x1008
+#define HFI_ERR_SESSION_UNSUPPORT_BUFFERTYPE		0x1010
+#define HFI_ERR_SESSION_INVALID_SCALE_FACTOR		0x1012
+#define HFI_ERR_SESSION_UPSCALE_NOT_SUPPORTED		0x1013
 
 #define HFI_EVENT_SYS_ERROR				0x1
+#define HFI_EVENT_SESSION_ERROR				0x2
+
+#define HFI_PROPERTY_SYS_CODEC_POWER_PLANE_CTRL		0x5
+#define HFI_PROPERTY_SYS_IMAGE_VERSION			0x6
 
 #define HFI_MSG_SYS_INIT				0x20001
+#define HFI_MSG_SYS_SESSION_INIT			0x20006
+#define HFI_MSG_SYS_SESSION_END				0x20007
 #define HFI_MSG_SYS_COV					0x20009
 #define HFI_MSG_SYS_PROPERTY_INFO			0x2000a
 
@@ -32,6 +47,21 @@ struct hfi_pkt_hdr {
 	u32 pkt_type;
 };
 
+struct hfi_session_hdr_pkt {
+	struct hfi_pkt_hdr hdr;
+	u32 session_id;
+};
+
+struct hfi_session_open_pkt {
+	struct hfi_session_hdr_pkt shdr;
+	u32 session_domain;
+	u32 session_codec;
+};
+
+struct hfi_session_pkt {
+	struct hfi_session_hdr_pkt shdr;
+};
+
 struct hfi_sys_init_pkt {
 	struct hfi_pkt_hdr hdr;
 	u32 arch_type;
@@ -54,7 +84,7 @@ struct hfi_sys_pc_prep_pkt {
 };
 
 struct hfi_msg_event_notify_pkt {
-	struct hfi_pkt_hdr hdr;
+	struct hfi_session_hdr_pkt shdr;
 	u32 event_id;
 	u32 event_data1;
 	u32 event_data2;
@@ -68,6 +98,17 @@ struct hfi_msg_sys_init_done_pkt {
 	u32 data[];
 };
 
+struct hfi_msg_session_hdr_pkt {
+	struct hfi_session_hdr_pkt shdr;
+	u32 error_type;
+};
+
+struct hfi_msg_session_init_done_pkt {
+	struct hfi_msg_session_hdr_pkt shdr;
+	u32 num_properties;
+	u32 data[];
+};
+
 struct hfi_msg_sys_property_info_pkt {
 	struct hfi_pkt_hdr hdr;
 	u32 num_properties;
diff --git a/drivers/media/platform/qcom/iris/iris_hfi_gen1_response.c b/drivers/media/platform/qcom/iris/iris_hfi_gen1_response.c
index 78fefa4176f9..18ba5f67dd36 100644
--- a/drivers/media/platform/qcom/iris/iris_hfi_gen1_response.c
+++ b/drivers/media/platform/qcom/iris/iris_hfi_gen1_response.c
@@ -13,13 +13,54 @@ iris_hfi_gen1_sys_event_notify(struct iris_core *core, void *packet)
 	struct hfi_msg_event_notify_pkt *pkt = packet;
 
 	if (pkt->event_id == HFI_EVENT_SYS_ERROR)
-		dev_err(core->dev, "sys error (type: %x, data1:%x, data2:%x)\n",
-			pkt->event_id, pkt->event_data1, pkt->event_data2);
+		dev_err(core->dev, "sys error (type: %x, session id:%x, data1:%x, data2:%x)\n",
+			pkt->event_id, pkt->shdr.session_id, pkt->event_data1,
+			pkt->event_data2);
 
 	core->state = IRIS_CORE_ERROR;
 	schedule_delayed_work(&core->sys_error_handler, msecs_to_jiffies(10));
 }
 
+static void
+iris_hfi_gen1_event_session_error(struct iris_inst *inst, struct hfi_msg_event_notify_pkt *pkt)
+{
+	switch (pkt->event_data1) {
+	/* non fatal session errors */
+	case HFI_ERR_SESSION_INVALID_SCALE_FACTOR:
+	case HFI_ERR_SESSION_UNSUPPORT_BUFFERTYPE:
+	case HFI_ERR_SESSION_UNSUPPORTED_SETTING:
+	case HFI_ERR_SESSION_UPSCALE_NOT_SUPPORTED:
+		dev_dbg(inst->core->dev, "session error: event id:%x, session id:%x\n",
+			pkt->event_data1, pkt->shdr.session_id);
+		break;
+	/* fatal session errors */
+	default:
+		/*
+		 * firmware fills event_data2 as an additional information about the
+		 * hfi command for which session error has ouccured.
+		 */
+		dev_err(inst->core->dev,
+			"session error for command: %x, event id:%x, session id:%x\n",
+			pkt->event_data2, pkt->event_data1,
+			pkt->shdr.session_id);
+		iris_vb2_queue_error(inst);
+		break;
+	}
+}
+
+static void iris_hfi_gen1_session_event_notify(struct iris_inst *inst, void *packet)
+{
+	struct hfi_msg_event_notify_pkt *pkt = packet;
+
+	switch (pkt->event_id) {
+	case HFI_EVENT_SESSION_ERROR:
+		iris_hfi_gen1_event_session_error(inst, pkt);
+		break;
+	default:
+		break;
+	}
+}
+
 static void iris_hfi_gen1_sys_init_done(struct iris_core *core, void *packet)
 {
 	struct hfi_msg_sys_init_done_pkt *pkt = packet;
@@ -99,6 +140,14 @@ static const struct iris_hfi_gen1_response_pkt_info pkt_infos[] = {
 	 .pkt = HFI_MSG_SYS_PROPERTY_INFO,
 	 .pkt_sz = sizeof(struct hfi_msg_sys_property_info_pkt),
 	},
+	{
+	 .pkt = HFI_MSG_SYS_SESSION_INIT,
+	 .pkt_sz = sizeof(struct hfi_msg_session_init_done_pkt),
+	},
+	{
+	 .pkt = HFI_MSG_SYS_SESSION_END,
+	 .pkt_sz = sizeof(struct hfi_msg_session_hdr_pkt),
+	},
 };
 
 static void iris_hfi_gen1_handle_response(struct iris_core *core, void *response)
@@ -106,6 +155,8 @@ static void iris_hfi_gen1_handle_response(struct iris_core *core, void *response
 	struct hfi_pkt_hdr *hdr = (struct hfi_pkt_hdr *)response;
 	const struct iris_hfi_gen1_response_pkt_info *pkt_info;
 	struct device *dev = core->dev;
+	struct hfi_session_pkt *pkt;
+	struct iris_inst *inst;
 	bool found = false;
 	u32 i;
 
@@ -132,9 +183,31 @@ static void iris_hfi_gen1_handle_response(struct iris_core *core, void *response
 		iris_hfi_gen1_sys_property_info(core, hdr);
 		break;
 	case HFI_MSG_EVENT_NOTIFY:
-		iris_hfi_gen1_sys_event_notify(core, hdr);
+		pkt = (struct hfi_session_pkt *)hdr;
+		inst = iris_get_instance(core, pkt->shdr.session_id);
+		if (inst) {
+			mutex_lock(&inst->lock);
+			iris_hfi_gen1_session_event_notify(inst, hdr);
+			mutex_unlock(&inst->lock);
+		} else {
+			iris_hfi_gen1_sys_event_notify(core, hdr);
+		}
+
 		break;
 	default:
+		pkt = (struct hfi_session_pkt *)hdr;
+		inst = iris_get_instance(core, pkt->shdr.session_id);
+		if (!inst) {
+			dev_warn(dev, "no valid instance(pkt session_id:%x, pkt:%x)\n",
+				 pkt->shdr.session_id,
+				 pkt_info ? pkt_info->pkt : 0);
+			return;
+		}
+
+		mutex_lock(&inst->lock);
+		complete(&inst->completion);
+		mutex_unlock(&inst->lock);
+
 		break;
 	}
 }
diff --git a/drivers/media/platform/qcom/iris/iris_hfi_gen2.h b/drivers/media/platform/qcom/iris/iris_hfi_gen2.h
index c43b51774978..aaf6660bc1fe 100644
--- a/drivers/media/platform/qcom/iris/iris_hfi_gen2.h
+++ b/drivers/media/platform/qcom/iris/iris_hfi_gen2.h
@@ -10,13 +10,18 @@
 
 struct iris_core;
 
+#define to_iris_inst_hfi_gen2(ptr) \
+	container_of(ptr, struct iris_inst_hfi_gen2, inst)
+
 /**
  * struct iris_inst_hfi_gen2 - holds per video instance parameters for hfi_gen2
  *
  * @inst: pointer to iris_instance structure
+ * @packet: HFI packet
  */
 struct iris_inst_hfi_gen2 {
 	struct iris_inst		inst;
+	struct iris_hfi_header		*packet;
 };
 
 void iris_hfi_gen2_command_ops_init(struct iris_core *core);
diff --git a/drivers/media/platform/qcom/iris/iris_hfi_gen2_command.c b/drivers/media/platform/qcom/iris/iris_hfi_gen2_command.c
index f8cb1177ef54..a08e844bb4bb 100644
--- a/drivers/media/platform/qcom/iris/iris_hfi_gen2_command.c
+++ b/drivers/media/platform/qcom/iris/iris_hfi_gen2_command.c
@@ -85,11 +85,116 @@ static int iris_hfi_gen2_sys_pc_prep(struct iris_core *core)
 	return ret;
 }
 
+static int iris_hfi_gen2_session_set_codec(struct iris_inst *inst)
+{
+	struct iris_inst_hfi_gen2 *inst_hfi_gen2 = to_iris_inst_hfi_gen2(inst);
+	u32 codec = HFI_CODEC_DECODE_AVC;
+
+	iris_hfi_gen2_packet_session_property(inst,
+					      HFI_PROP_CODEC,
+					      HFI_HOST_FLAGS_NONE,
+					      HFI_PORT_NONE,
+					      HFI_PAYLOAD_U32_ENUM,
+					      &codec,
+					      sizeof(u32));
+
+	return iris_hfi_queue_cmd_write(inst->core, inst_hfi_gen2->packet,
+					inst_hfi_gen2->packet->size);
+}
+
+static int iris_hfi_gen2_session_set_default_header(struct iris_inst *inst)
+{
+	struct iris_inst_hfi_gen2 *inst_hfi_gen2 = to_iris_inst_hfi_gen2(inst);
+	u32 default_header = false;
+
+	iris_hfi_gen2_packet_session_property(inst,
+					      HFI_PROP_DEC_DEFAULT_HEADER,
+					      HFI_HOST_FLAGS_NONE,
+					      HFI_PORT_BITSTREAM,
+					      HFI_PAYLOAD_U32,
+					      &default_header,
+					      sizeof(u32));
+
+	return iris_hfi_queue_cmd_write(inst->core, inst_hfi_gen2->packet,
+					inst_hfi_gen2->packet->size);
+}
+
+static int iris_hfi_gen2_session_open(struct iris_inst *inst)
+{
+	struct iris_inst_hfi_gen2 *inst_hfi_gen2 = to_iris_inst_hfi_gen2(inst);
+	int ret;
+
+	inst_hfi_gen2->packet = kzalloc(4096, GFP_KERNEL);
+	if (!inst_hfi_gen2->packet)
+		return -ENOMEM;
+
+	iris_hfi_gen2_packet_session_command(inst,
+					     HFI_CMD_OPEN,
+					     HFI_HOST_FLAGS_RESPONSE_REQUIRED |
+					     HFI_HOST_FLAGS_INTR_REQUIRED,
+					     HFI_PORT_NONE,
+					     0,
+					     HFI_PAYLOAD_U32,
+					     &inst->session_id,
+					     sizeof(u32));
+
+	ret = iris_hfi_queue_cmd_write(inst->core, inst_hfi_gen2->packet,
+				       inst_hfi_gen2->packet->size);
+	if (ret)
+		goto fail_free_packet;
+
+	ret = iris_hfi_gen2_session_set_codec(inst);
+	if (ret)
+		goto fail_free_packet;
+
+	ret = iris_hfi_gen2_session_set_default_header(inst);
+	if (ret)
+		goto fail_free_packet;
+
+	return 0;
+
+fail_free_packet:
+	kfree(inst_hfi_gen2->packet);
+	inst_hfi_gen2->packet = NULL;
+
+	return ret;
+}
+
+static int iris_hfi_gen2_session_close(struct iris_inst *inst)
+{
+	struct iris_inst_hfi_gen2 *inst_hfi_gen2 = to_iris_inst_hfi_gen2(inst);
+	int ret;
+
+	if (!inst_hfi_gen2->packet)
+		return -EINVAL;
+
+	iris_hfi_gen2_packet_session_command(inst,
+					     HFI_CMD_CLOSE,
+					     (HFI_HOST_FLAGS_RESPONSE_REQUIRED |
+					     HFI_HOST_FLAGS_INTR_REQUIRED |
+					     HFI_HOST_FLAGS_NON_DISCARDABLE),
+					     HFI_PORT_NONE,
+					     inst->session_id,
+					     HFI_PAYLOAD_NONE,
+					     NULL,
+					     0);
+
+	ret = iris_hfi_queue_cmd_write(inst->core, inst_hfi_gen2->packet,
+				       inst_hfi_gen2->packet->size);
+
+	kfree(inst_hfi_gen2->packet);
+	inst_hfi_gen2->packet = NULL;
+
+	return ret;
+}
+
 static const struct iris_hfi_command_ops iris_hfi_gen2_command_ops = {
 	.sys_init = iris_hfi_gen2_sys_init,
 	.sys_image_version = iris_hfi_gen2_sys_image_version,
 	.sys_interframe_powercollapse = iris_hfi_gen2_sys_interframe_powercollapse,
 	.sys_pc_prep = iris_hfi_gen2_sys_pc_prep,
+	.session_open = iris_hfi_gen2_session_open,
+	.session_close = iris_hfi_gen2_session_close,
 };
 
 void iris_hfi_gen2_command_ops_init(struct iris_core *core)
diff --git a/drivers/media/platform/qcom/iris/iris_hfi_gen2_defines.h b/drivers/media/platform/qcom/iris/iris_hfi_gen2_defines.h
index e6a19ffc12fb..ccf5fd0902d7 100644
--- a/drivers/media/platform/qcom/iris/iris_hfi_gen2_defines.h
+++ b/drivers/media/platform/qcom/iris/iris_hfi_gen2_defines.h
@@ -13,6 +13,8 @@
 #define HFI_CMD_BEGIN				0x01000000
 #define HFI_CMD_INIT				0x01000001
 #define HFI_CMD_POWER_COLLAPSE			0x01000002
+#define HFI_CMD_OPEN				0x01000003
+#define HFI_CMD_CLOSE				0x01000004
 #define HFI_CMD_END				0x01FFFFFF
 
 #define HFI_PROP_BEGIN				0x03000000
@@ -25,12 +27,45 @@
 #define HFI_PROP_UBWC_BANK_SWZL_LEVEL2		0x03000007
 #define HFI_PROP_UBWC_BANK_SWZL_LEVEL3		0x03000008
 #define HFI_PROP_UBWC_BANK_SPREADING		0x03000009
+#define HFI_PROP_CODEC				0x03000100
+#define HFI_PROP_DEC_DEFAULT_HEADER		0x03000168
 #define HFI_PROP_END				0x03FFFFFF
 
+#define HFI_SESSION_ERROR_BEGIN			0x04000000
+#define HFI_ERROR_UNKNOWN_SESSION		0x04000001
+#define HFI_ERROR_MAX_SESSIONS			0x04000002
+#define HFI_ERROR_FATAL				0x04000003
+#define HFI_ERROR_INVALID_STATE			0x04000004
+#define HFI_ERROR_INSUFFICIENT_RESOURCES	0x04000005
+#define HFI_ERROR_BUFFER_NOT_SET		0x04000006
+#define HFI_ERROR_STREAM_UNSUPPORTED		0x04000008
+#define HFI_SESSION_ERROR_END			0x04FFFFFF
+
 #define HFI_SYSTEM_ERROR_BEGIN			0x05000000
 #define HFI_SYS_ERROR_WD_TIMEOUT		0x05000001
 #define HFI_SYSTEM_ERROR_END			0x05FFFFFF
 
+enum hfi_codec_type {
+	HFI_CODEC_DECODE_AVC			= 1,
+	HFI_CODEC_ENCODE_AVC			= 2,
+};
+
+enum hfi_buffer_type {
+	HFI_BUFFER_BITSTREAM			= 0x00000001,
+	HFI_BUFFER_RAW				= 0x00000002,
+	HFI_BUFFER_METADATA			= 0x00000003,
+	HFI_BUFFER_SUBCACHE			= 0x00000004,
+	HFI_BUFFER_PARTIAL_DATA			= 0x00000005,
+	HFI_BUFFER_DPB				= 0x00000006,
+	HFI_BUFFER_BIN				= 0x00000007,
+	HFI_BUFFER_LINE				= 0x00000008,
+	HFI_BUFFER_ARP				= 0x00000009,
+	HFI_BUFFER_COMV				= 0x0000000A,
+	HFI_BUFFER_NON_COMV			= 0x0000000B,
+	HFI_BUFFER_PERSIST			= 0x0000000C,
+	HFI_BUFFER_VPSS				= 0x0000000D,
+};
+
 enum hfi_packet_firmware_flags {
 	HFI_FW_FLAGS_SUCCESS			= 0x00000001,
 	HFI_FW_FLAGS_INFORMATION		= 0x00000002,
diff --git a/drivers/media/platform/qcom/iris/iris_hfi_gen2_packet.c b/drivers/media/platform/qcom/iris/iris_hfi_gen2_packet.c
index 510d44408b41..739b2ce5bfae 100644
--- a/drivers/media/platform/qcom/iris/iris_hfi_gen2_packet.c
+++ b/drivers/media/platform/qcom/iris/iris_hfi_gen2_packet.c
@@ -143,6 +143,45 @@ void iris_hfi_gen2_packet_image_version(struct iris_core *core, struct iris_hfi_
 				    NULL, 0);
 }
 
+void iris_hfi_gen2_packet_session_command(struct iris_inst *inst, u32 pkt_type,
+					  u32 flags, u32 port, u32 session_id,
+					  u32 payload_type, void *payload,
+					  u32 payload_size)
+{
+	struct iris_inst_hfi_gen2 *inst_hfi_gen2 = to_iris_inst_hfi_gen2(inst);
+	struct iris_core *core = inst->core;
+
+	iris_hfi_gen2_create_header(inst_hfi_gen2->packet, session_id, core->header_id++);
+
+	iris_hfi_gen2_create_packet(inst_hfi_gen2->packet,
+				    pkt_type,
+				    flags,
+				    payload_type,
+				    port,
+				    core->packet_id++,
+				    payload,
+				    payload_size);
+}
+
+void iris_hfi_gen2_packet_session_property(struct iris_inst *inst,
+					   u32 pkt_type, u32 flags, u32 port,
+					   u32 payload_type, void *payload, u32 payload_size)
+{
+	struct iris_inst_hfi_gen2 *inst_hfi_gen2 = to_iris_inst_hfi_gen2(inst);
+	struct iris_core *core = inst->core;
+
+	iris_hfi_gen2_create_header(inst_hfi_gen2->packet, inst->session_id, core->header_id++);
+
+	iris_hfi_gen2_create_packet(inst_hfi_gen2->packet,
+				    pkt_type,
+				    flags,
+				    payload_type,
+				    port,
+				    core->packet_id++,
+				    payload,
+				    payload_size);
+}
+
 void iris_hfi_gen2_packet_sys_interframe_powercollapse(struct iris_core *core,
 						       struct iris_hfi_header *hdr)
 {
diff --git a/drivers/media/platform/qcom/iris/iris_hfi_gen2_packet.h b/drivers/media/platform/qcom/iris/iris_hfi_gen2_packet.h
index 3b771b7516de..4a9b88185b0d 100644
--- a/drivers/media/platform/qcom/iris/iris_hfi_gen2_packet.h
+++ b/drivers/media/platform/qcom/iris/iris_hfi_gen2_packet.h
@@ -63,6 +63,13 @@ struct iris_hfi_packet {
 
 void iris_hfi_gen2_packet_sys_init(struct iris_core *core, struct iris_hfi_header *hdr);
 void iris_hfi_gen2_packet_image_version(struct iris_core *core, struct iris_hfi_header *hdr);
+void iris_hfi_gen2_packet_session_command(struct iris_inst *inst, u32 pkt_type,
+					  u32 flags, u32 port, u32 session_id,
+					  u32 payload_type, void *payload,
+					  u32 payload_size);
+void iris_hfi_gen2_packet_session_property(struct iris_inst *inst,
+					   u32 pkt_type, u32 flags, u32 port,
+					   u32 payload_type, void *payload, u32 payload_size);
 void iris_hfi_gen2_packet_sys_interframe_powercollapse(struct iris_core *core,
 						       struct iris_hfi_header *hdr);
 void iris_hfi_gen2_packet_sys_pc_prep(struct iris_core *core, struct iris_hfi_header *hdr);
diff --git a/drivers/media/platform/qcom/iris/iris_hfi_gen2_response.c b/drivers/media/platform/qcom/iris/iris_hfi_gen2_response.c
index 007e4a7b6782..e1c43daea6c7 100644
--- a/drivers/media/platform/qcom/iris/iris_hfi_gen2_response.c
+++ b/drivers/media/platform/qcom/iris/iris_hfi_gen2_response.c
@@ -14,6 +14,17 @@ struct iris_hfi_gen2_core_hfi_range {
 	int (*handle)(struct iris_core *core, struct iris_hfi_packet *pkt);
 };
 
+struct iris_hfi_gen2_inst_hfi_range {
+	u32 begin;
+	u32 end;
+	int (*handle)(struct iris_inst *inst, struct iris_hfi_packet *pkt);
+};
+
+struct iris_hfi_gen2_packet_handle {
+	enum hfi_buffer_type type;
+	int (*handle)(struct iris_inst *inst, struct iris_hfi_packet *pkt);
+};
+
 static int iris_hfi_gen2_validate_packet(u8 *response_pkt, u8 *core_resp_pkt)
 {
 	u8 *response_limit = core_resp_pkt + IFACEQ_CORE_PKT_SIZE;
@@ -55,6 +66,45 @@ static int iris_hfi_gen2_validate_hdr_packet(struct iris_core *core, struct iris
 	return 0;
 }
 
+static int iris_hfi_gen2_handle_session_error(struct iris_inst *inst,
+					      struct iris_hfi_packet *pkt)
+{
+	struct iris_core *core = inst->core;
+	char *error;
+
+	switch (pkt->type) {
+	case HFI_ERROR_MAX_SESSIONS:
+		error = "exceeded max sessions";
+		break;
+	case HFI_ERROR_UNKNOWN_SESSION:
+		error = "unknown session id";
+		break;
+	case HFI_ERROR_INVALID_STATE:
+		error = "invalid operation for current state";
+		break;
+	case HFI_ERROR_INSUFFICIENT_RESOURCES:
+		error = "insufficient resources";
+		break;
+	case HFI_ERROR_BUFFER_NOT_SET:
+		error = "internal buffers not set";
+		break;
+	case HFI_ERROR_FATAL:
+		error = "fatal error";
+		break;
+	case HFI_ERROR_STREAM_UNSUPPORTED:
+		error = "unsupported stream";
+		break;
+	default:
+		error = "unknown";
+		break;
+	}
+
+	dev_err(core->dev, "session error received %#x: %s\n", pkt->type, error);
+	iris_vb2_queue_error(inst);
+
+	return 0;
+}
+
 static int iris_hfi_gen2_handle_system_error(struct iris_core *core,
 					     struct iris_hfi_packet *pkt)
 {
@@ -79,6 +129,22 @@ static int iris_hfi_gen2_handle_system_init(struct iris_core *core,
 	return 0;
 }
 
+static int iris_hfi_gen2_handle_session_command(struct iris_inst *inst,
+						struct iris_hfi_packet *pkt)
+{
+	int ret = 0;
+
+	switch (pkt->type) {
+	case HFI_CMD_CLOSE:
+		complete(&inst->completion);
+		break;
+	default:
+		break;
+	}
+
+	return ret;
+}
+
 static int iris_hfi_gen2_handle_image_version_property(struct iris_core *core,
 						       struct iris_hfi_packet *pkt)
 {
@@ -152,6 +218,46 @@ static int iris_hfi_gen2_handle_system_response(struct iris_core *core,
 	return 0;
 }
 
+static int iris_hfi_gen2_handle_session_response(struct iris_core *core,
+						 struct iris_hfi_header *hdr)
+{
+	struct iris_hfi_packet *packet;
+	struct iris_inst *inst;
+	int ret = 0;
+	u32 i, j;
+	u8 *pkt;
+	static const struct iris_hfi_gen2_inst_hfi_range range[] = {
+		{HFI_SESSION_ERROR_BEGIN, HFI_SESSION_ERROR_END,
+		 iris_hfi_gen2_handle_session_error},
+		{HFI_CMD_BEGIN, HFI_CMD_END,
+		 iris_hfi_gen2_handle_session_command },
+	};
+
+	inst = iris_get_instance(core, hdr->session_id);
+	if (!inst)
+		return -EINVAL;
+
+	mutex_lock(&inst->lock);
+
+	pkt = (u8 *)((u8 *)hdr + sizeof(*hdr));
+	for (i = 0; i < ARRAY_SIZE(range); i++) {
+		pkt = (u8 *)((u8 *)hdr + sizeof(*hdr));
+		for (j = 0; j < hdr->num_packets; j++) {
+			packet = (struct iris_hfi_packet *)pkt;
+			if (packet->flags & HFI_FW_FLAGS_SESSION_ERROR)
+				iris_hfi_gen2_handle_session_error(inst, packet);
+
+			if (packet->type > range[i].begin && packet->type < range[i].end)
+				ret = range[i].handle(inst, packet);
+			pkt += packet->size;
+		}
+	}
+
+	mutex_unlock(&inst->lock);
+
+	return ret;
+}
+
 static int iris_hfi_gen2_handle_response(struct iris_core *core, void *response)
 {
 	struct iris_hfi_header *hdr = (struct iris_hfi_header *)response;
@@ -161,7 +267,10 @@ static int iris_hfi_gen2_handle_response(struct iris_core *core, void *response)
 	if (ret)
 		return iris_hfi_gen2_handle_system_error(core, NULL);
 
-	return iris_hfi_gen2_handle_system_response(core, hdr);
+	if (!hdr->session_id)
+		return iris_hfi_gen2_handle_system_response(core, hdr);
+	else
+		return iris_hfi_gen2_handle_session_response(core, hdr);
 }
 
 static void iris_hfi_gen2_flush_debug_queue(struct iris_core *core, u8 *packet)
diff --git a/drivers/media/platform/qcom/iris/iris_instance.h b/drivers/media/platform/qcom/iris/iris_instance.h
index 527a270f12d4..b9c7dcfb20f7 100644
--- a/drivers/media/platform/qcom/iris/iris_instance.h
+++ b/drivers/media/platform/qcom/iris/iris_instance.h
@@ -6,24 +6,46 @@
 #ifndef __IRIS_INSTANCE_H__
 #define __IRIS_INSTANCE_H__
 
+#include <media/v4l2-ctrls.h>
+
+#include "iris_buffer.h"
 #include "iris_core.h"
+#include "iris_utils.h"
 
 /**
  * struct iris_inst - holds per video instance parameters
  *
+ * @list: used for attach an instance to the core
  * @core: pointer to core structure
+ * @session_id: id of current video session
  * @ctx_q_lock: lock to serialize queues related ioctls
  * @lock: lock to seralise forward and reverse threads
  * @fh: reference of v4l2 file handler
+ * @fmt_src: structure of v4l2_format for source
+ * @fmt_dst: structure of v4l2_format for destination
+ * @crop: structure of crop info
+ * @completion: structure of signal completions
+ * @buffers: array of different iris buffers
+ * @fw_min_count: minimnum count of buffers needed by fw
+ * @once_per_session_set: boolean to set once per session property
  * @m2m_dev:	a reference to m2m device structure
  * @m2m_ctx:	a reference to m2m context structure
  */
 
 struct iris_inst {
+	struct list_head		list;
 	struct iris_core		*core;
+	u32				session_id;
 	struct mutex			ctx_q_lock;/* lock to serialize queues related ioctls */
 	struct mutex			lock; /* lock to serialize forward and reverse threads */
 	struct v4l2_fh			fh;
+	struct v4l2_format		*fmt_src;
+	struct v4l2_format		*fmt_dst;
+	struct iris_hfi_rect_desc	crop;
+	struct completion		completion;
+	struct iris_buffers		buffers[BUF_TYPE_MAX];
+	u32				fw_min_count;
+	bool				once_per_session_set;
 	struct v4l2_m2m_dev		*m2m_dev;
 	struct v4l2_m2m_ctx		*m2m_ctx;
 };
diff --git a/drivers/media/platform/qcom/iris/iris_platform_common.h b/drivers/media/platform/qcom/iris/iris_platform_common.h
index 69c0a8b3d12d..d508477b066e 100644
--- a/drivers/media/platform/qcom/iris/iris_platform_common.h
+++ b/drivers/media/platform/qcom/iris/iris_platform_common.h
@@ -42,6 +42,9 @@ struct ubwc_config_data {
 	u32	bank_spreading;
 };
 
+struct platform_inst_caps {
+	u32 max_mbpf;
+};
 struct iris_core_power {
 	u64 clk_freq;
 	u64 icc_bw;
@@ -71,11 +74,13 @@ struct iris_platform_data {
 	u64 dma_mask;
 	const char *fwname;
 	u32 pas_id;
+	struct platform_inst_caps *inst_caps;
 	struct tz_cp_config *tz_cp_config_data;
 	u32 core_arch;
 	u32 hw_response_timeout;
 	struct ubwc_config_data *ubwc_config;
 	u32 num_vpp_pipe;
+	u32 max_session_count;
 };
 
 #endif
diff --git a/drivers/media/platform/qcom/iris/iris_platform_sm8550.c b/drivers/media/platform/qcom/iris/iris_platform_sm8550.c
index ed99cdb13d06..e4232c755074 100644
--- a/drivers/media/platform/qcom/iris/iris_platform_sm8550.c
+++ b/drivers/media/platform/qcom/iris/iris_platform_sm8550.c
@@ -10,6 +10,10 @@
 
 #define VIDEO_ARCH_LX 1
 
+static struct platform_inst_caps platform_inst_cap_sm8550 = {
+	.max_mbpf = (8192 * 4352) / 256,
+};
+
 static void iris_set_sm8550_preset_registers(struct iris_core *core)
 {
 	writel(0x0, core->reg_base + 0xB0088);
@@ -69,9 +73,11 @@ struct iris_platform_data sm8550_data = {
 	.dma_mask = 0xe0000000 - 1,
 	.fwname = "qcom/vpu/vpu30_p4.mbn",
 	.pas_id = IRIS_PAS_ID,
+	.inst_caps = &platform_inst_cap_sm8550,
 	.tz_cp_config_data = &tz_cp_config_sm8550,
 	.core_arch = VIDEO_ARCH_LX,
 	.hw_response_timeout = HW_RESPONSE_TIMEOUT_VALUE,
 	.ubwc_config = &ubwc_config_sm8550,
 	.num_vpp_pipe = 4,
+	.max_session_count = 16,
 };
diff --git a/drivers/media/platform/qcom/iris/iris_probe.c b/drivers/media/platform/qcom/iris/iris_probe.c
index e8ef258b4f2e..a9162be5f9f6 100644
--- a/drivers/media/platform/qcom/iris/iris_probe.c
+++ b/drivers/media/platform/qcom/iris/iris_probe.c
@@ -142,6 +142,7 @@ static int iris_register_video_device(struct iris_core *core)
 	strscpy(vdev->name, "qcom-iris-decoder", sizeof(vdev->name));
 	vdev->release = video_device_release;
 	vdev->fops = core->iris_v4l2_file_ops;
+	vdev->ioctl_ops = core->iris_v4l2_ioctl_ops;
 	vdev->vfl_dir = VFL_DIR_M2M;
 	vdev->v4l2_dev = &core->v4l2_dev;
 	vdev->device_caps = V4L2_CAP_VIDEO_M2M_MPLANE | V4L2_CAP_STREAMING;
@@ -207,6 +208,7 @@ static int iris_probe(struct platform_device *pdev)
 	if (!core->response_packet)
 		return -ENOMEM;
 
+	INIT_LIST_HEAD(&core->instances);
 	INIT_DELAYED_WORK(&core->sys_error_handler, iris_sys_error_handler);
 
 	core->reg_base = devm_platform_ioremap_resource(pdev, 0);
diff --git a/drivers/media/platform/qcom/iris/iris_utils.c b/drivers/media/platform/qcom/iris/iris_utils.c
new file mode 100644
index 000000000000..d5c8e052922c
--- /dev/null
+++ b/drivers/media/platform/qcom/iris/iris_utils.c
@@ -0,0 +1,52 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (c) 2022-2024 Qualcomm Innovation Center, Inc. All rights reserved.
+ */
+
+#include <linux/pm_runtime.h>
+
+#include "iris_instance.h"
+#include "iris_utils.h"
+
+int iris_get_mbpf(struct iris_inst *inst)
+{
+	struct v4l2_format *inp_f = inst->fmt_src;
+	u32 height = max(inp_f->fmt.pix_mp.height, inst->crop.height);
+	u32 width = max(inp_f->fmt.pix_mp.width, inst->crop.width);
+
+	return NUM_MBS_PER_FRAME(height, width);
+}
+
+int iris_wait_for_session_response(struct iris_inst *inst)
+{
+	struct iris_core *core = inst->core;
+	u32 hw_response_timeout_val;
+	int ret;
+
+	hw_response_timeout_val = core->iris_platform_data->hw_response_timeout;
+
+	mutex_unlock(&inst->lock);
+	ret = wait_for_completion_timeout(&inst->completion,
+					  msecs_to_jiffies(hw_response_timeout_val));
+	mutex_lock(&inst->lock);
+	if (!ret)
+		return -ETIMEDOUT;
+
+	return 0;
+}
+
+struct iris_inst *iris_get_instance(struct iris_core *core, u32 session_id)
+{
+	struct iris_inst *inst;
+
+	mutex_lock(&core->lock);
+	list_for_each_entry(inst, &core->instances, list) {
+		if (inst->session_id == session_id) {
+			mutex_unlock(&core->lock);
+			return inst;
+		}
+	}
+
+	mutex_unlock(&core->lock);
+	return NULL;
+}
diff --git a/drivers/media/platform/qcom/iris/iris_utils.h b/drivers/media/platform/qcom/iris/iris_utils.h
new file mode 100644
index 000000000000..26649b66d978
--- /dev/null
+++ b/drivers/media/platform/qcom/iris/iris_utils.h
@@ -0,0 +1,34 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (c) 2022-2024 Qualcomm Innovation Center, Inc. All rights reserved.
+ */
+
+#ifndef __IRIS_UTILS_H__
+#define __IRIS_UTILS_H__
+
+struct iris_core;
+#include "iris_buffer.h"
+
+struct iris_hfi_rect_desc {
+	u32 left;
+	u32 top;
+	u32 width;
+	u32 height;
+};
+
+#define NUM_MBS_PER_FRAME(height, width) \
+	(DIV_ROUND_UP(height, 16) * DIV_ROUND_UP(width, 16))
+
+static inline enum iris_buffer_type iris_v4l2_type_to_driver(u32 type)
+{
+	if (type == V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE)
+		return BUF_INPUT;
+	else
+		return BUF_OUTPUT;
+}
+
+int iris_get_mbpf(struct iris_inst *inst);
+struct iris_inst *iris_get_instance(struct iris_core *core, u32 session_id);
+int iris_wait_for_session_response(struct iris_inst *inst);
+
+#endif
diff --git a/drivers/media/platform/qcom/iris/iris_vb2.c b/drivers/media/platform/qcom/iris/iris_vb2.c
new file mode 100644
index 000000000000..e9db44515d91
--- /dev/null
+++ b/drivers/media/platform/qcom/iris/iris_vb2.c
@@ -0,0 +1,50 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (c) 2022-2024 Qualcomm Innovation Center, Inc. All rights reserved.
+ */
+
+#include "iris_instance.h"
+#include "iris_vb2.h"
+
+int iris_vb2_queue_setup(struct vb2_queue *q,
+			 unsigned int *num_buffers, unsigned int *num_planes,
+			 unsigned int sizes[], struct device *alloc_devs[])
+{
+	struct iris_inst *inst;
+	struct iris_core *core;
+	struct v4l2_format *f;
+	int ret = 0;
+
+	inst = vb2_get_drv_priv(q);
+
+	mutex_lock(&inst->lock);
+
+	core = inst->core;
+	f = V4L2_TYPE_IS_OUTPUT(q->type) ? inst->fmt_src : inst->fmt_dst;
+
+	if (*num_planes) {
+		if (*num_planes != f->fmt.pix_mp.num_planes ||
+		    sizes[0] < f->fmt.pix_mp.plane_fmt[0].sizeimage)
+			ret = -EINVAL;
+		goto unlock;
+	}
+
+	if (!inst->once_per_session_set) {
+		inst->once_per_session_set = true;
+
+		ret = core->hfi_ops->session_open(inst);
+		if (ret) {
+			ret = -EINVAL;
+			dev_err(core->dev, "session open failed\n");
+			goto unlock;
+		}
+	}
+
+	*num_planes = 1;
+	sizes[0] = f->fmt.pix_mp.plane_fmt[0].sizeimage;
+
+unlock:
+	mutex_unlock(&inst->lock);
+
+	return ret;
+}
diff --git a/drivers/media/platform/qcom/iris/iris_vb2.h b/drivers/media/platform/qcom/iris/iris_vb2.h
new file mode 100644
index 000000000000..d2e71d0596cc
--- /dev/null
+++ b/drivers/media/platform/qcom/iris/iris_vb2.h
@@ -0,0 +1,12 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (c) 2022-2024 Qualcomm Innovation Center, Inc. All rights reserved.
+ */
+
+#ifndef __IRIS_VB2_H__
+#define __IRIS_VB2_H__
+
+int iris_vb2_queue_setup(struct vb2_queue *q,
+			 unsigned int *num_buffers, unsigned int *num_planes,
+			 unsigned int sizes[], struct device *alloc_devs[]);
+#endif
diff --git a/drivers/media/platform/qcom/iris/iris_vdec.c b/drivers/media/platform/qcom/iris/iris_vdec.c
new file mode 100644
index 000000000000..2ed50ad5d58b
--- /dev/null
+++ b/drivers/media/platform/qcom/iris/iris_vdec.c
@@ -0,0 +1,56 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (c) 2022-2024 Qualcomm Innovation Center, Inc. All rights reserved.
+ */
+
+#include "iris_buffer.h"
+#include "iris_instance.h"
+#include "iris_vdec.h"
+#include "iris_vpu_buffer.h"
+
+#define DEFAULT_WIDTH 320
+#define DEFAULT_HEIGHT 240
+
+void iris_vdec_inst_init(struct iris_inst *inst)
+{
+	struct v4l2_format *f;
+
+	inst->fmt_src  = kzalloc(sizeof(*inst->fmt_src), GFP_KERNEL);
+	inst->fmt_dst  = kzalloc(sizeof(*inst->fmt_dst), GFP_KERNEL);
+
+	inst->fw_min_count = MIN_BUFFERS;
+
+	f = inst->fmt_src;
+	f->type = V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE;
+	f->fmt.pix_mp.width = DEFAULT_WIDTH;
+	f->fmt.pix_mp.height = DEFAULT_HEIGHT;
+	f->fmt.pix_mp.pixelformat = V4L2_PIX_FMT_H264;
+	f->fmt.pix_mp.num_planes = 1;
+	f->fmt.pix_mp.plane_fmt[0].bytesperline = 0;
+	f->fmt.pix_mp.plane_fmt[0].sizeimage = iris_get_buffer_size(inst, BUF_INPUT);
+	f->fmt.pix_mp.field = V4L2_FIELD_NONE;
+	inst->buffers[BUF_INPUT].min_count = iris_vpu_buf_count(inst, BUF_INPUT);
+	inst->buffers[BUF_INPUT].size = f->fmt.pix_mp.plane_fmt[0].sizeimage;
+
+	f = inst->fmt_dst;
+	f->type = V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE;
+	f->fmt.pix_mp.pixelformat = V4L2_PIX_FMT_NV12;
+	f->fmt.pix_mp.width = ALIGN(DEFAULT_WIDTH, 128);
+	f->fmt.pix_mp.height = ALIGN(DEFAULT_HEIGHT, 32);
+	f->fmt.pix_mp.num_planes = 1;
+	f->fmt.pix_mp.plane_fmt[0].bytesperline = ALIGN(DEFAULT_WIDTH, 128);
+	f->fmt.pix_mp.plane_fmt[0].sizeimage = iris_get_buffer_size(inst, BUF_OUTPUT);
+	f->fmt.pix_mp.field = V4L2_FIELD_NONE;
+	f->fmt.pix_mp.colorspace = V4L2_COLORSPACE_DEFAULT;
+	f->fmt.pix_mp.xfer_func = V4L2_XFER_FUNC_DEFAULT;
+	f->fmt.pix_mp.ycbcr_enc = V4L2_YCBCR_ENC_DEFAULT;
+	f->fmt.pix_mp.quantization = V4L2_QUANTIZATION_DEFAULT;
+	inst->buffers[BUF_OUTPUT].min_count = iris_vpu_buf_count(inst, BUF_OUTPUT);
+	inst->buffers[BUF_OUTPUT].size = f->fmt.pix_mp.plane_fmt[0].sizeimage;
+}
+
+void iris_vdec_inst_deinit(struct iris_inst *inst)
+{
+	kfree(inst->fmt_dst);
+	kfree(inst->fmt_src);
+}
diff --git a/drivers/media/platform/qcom/iris/iris_vdec.h b/drivers/media/platform/qcom/iris/iris_vdec.h
new file mode 100644
index 000000000000..353b73b76230
--- /dev/null
+++ b/drivers/media/platform/qcom/iris/iris_vdec.h
@@ -0,0 +1,14 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (c) 2022-2024 Qualcomm Innovation Center, Inc. All rights reserved.
+ */
+
+#ifndef __IRIS_VDEC_H__
+#define __IRIS_VDEC_H__
+
+struct iris_inst;
+
+void iris_vdec_inst_init(struct iris_inst *inst);
+void iris_vdec_inst_deinit(struct iris_inst *inst);
+
+#endif
diff --git a/drivers/media/platform/qcom/iris/iris_vidc.c b/drivers/media/platform/qcom/iris/iris_vidc.c
index b8654e73f516..ab3b63171c1d 100644
--- a/drivers/media/platform/qcom/iris/iris_vidc.c
+++ b/drivers/media/platform/qcom/iris/iris_vidc.c
@@ -9,6 +9,9 @@
 
 #include "iris_vidc.h"
 #include "iris_instance.h"
+#include "iris_vdec.h"
+#include "iris_vb2.h"
+#include "iris_vpu_buffer.h"
 #include "iris_platform_common.h"
 
 #define IRIS_DRV_NAME "iris_driver"
@@ -28,6 +31,38 @@ static void iris_v4l2_fh_deinit(struct iris_inst *inst)
 	v4l2_fh_exit(&inst->fh);
 }
 
+static void iris_add_session(struct iris_inst *inst)
+{
+	struct iris_core *core = inst->core;
+	struct iris_inst *iter;
+	u32 count = 0;
+
+	mutex_lock(&core->lock);
+
+	list_for_each_entry(iter, &core->instances, list)
+		count++;
+
+	if (count < core->iris_platform_data->max_session_count)
+		list_add_tail(&inst->list, &core->instances);
+
+	mutex_unlock(&core->lock);
+}
+
+static void iris_remove_session(struct iris_inst *inst)
+{
+	struct iris_core *core = inst->core;
+	struct iris_inst *iter, *temp;
+
+	mutex_lock(&core->lock);
+	list_for_each_entry_safe(iter, temp, &core->instances, list) {
+		if (iter->session_id == inst->session_id) {
+			list_del_init(&iter->list);
+			break;
+		}
+	}
+	mutex_unlock(&core->lock);
+}
+
 static inline struct iris_inst *iris_get_inst(struct file *filp, void *fh)
 {
 	return container_of(filp->private_data, struct iris_inst, fh);
@@ -59,7 +94,10 @@ iris_m2m_queue_init(void *priv, struct vb2_queue *src_vq, struct vb2_queue *dst_
 	src_vq->type = V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE;
 	src_vq->io_modes = VB2_MMAP | VB2_DMABUF;
 	src_vq->timestamp_flags = V4L2_BUF_FLAG_TIMESTAMP_COPY;
+	src_vq->ops = inst->core->iris_vb2_ops;
 	src_vq->drv_priv = inst;
+	src_vq->buf_struct_size = sizeof(struct iris_buffer);
+	src_vq->min_reqbufs_allocation = MIN_BUFFERS;
 	src_vq->dev = inst->core->dev;
 	src_vq->lock = &inst->ctx_q_lock;
 	ret = vb2_queue_init(src_vq);
@@ -69,7 +107,10 @@ iris_m2m_queue_init(void *priv, struct vb2_queue *src_vq, struct vb2_queue *dst_
 	dst_vq->type = V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE;
 	dst_vq->io_modes = VB2_MMAP | VB2_DMABUF;
 	dst_vq->timestamp_flags = V4L2_BUF_FLAG_TIMESTAMP_COPY;
+	dst_vq->ops = inst->core->iris_vb2_ops;
 	dst_vq->drv_priv = inst;
+	dst_vq->buf_struct_size = sizeof(struct iris_buffer);
+	dst_vq->min_reqbufs_allocation = MIN_BUFFERS;
 	dst_vq->dev = inst->core->dev;
 	dst_vq->lock = &inst->ctx_q_lock;
 
@@ -100,8 +141,11 @@ int iris_open(struct file *filp)
 		return -ENOMEM;
 
 	inst->core = core;
+	inst->session_id = hash32_ptr(inst);
 
+	mutex_init(&inst->lock);
 	mutex_init(&inst->ctx_q_lock);
+	init_completion(&inst->completion);
 
 	iris_v4l2_fh_init(inst);
 
@@ -117,6 +161,10 @@ int iris_open(struct file *filp)
 		goto fail_m2m_release;
 	}
 
+	iris_vdec_inst_init(inst);
+
+	iris_add_session(inst);
+
 	inst->fh.m2m_ctx = inst->m2m_ctx;
 	filp->private_data = &inst->fh;
 
@@ -127,19 +175,42 @@ int iris_open(struct file *filp)
 fail_v4l2_fh_deinit:
 	iris_v4l2_fh_deinit(inst);
 	mutex_destroy(&inst->ctx_q_lock);
+	mutex_destroy(&inst->lock);
 	kfree(inst);
 
 	return ret;
 }
 
+static void iris_session_close(struct iris_inst *inst)
+{
+	const struct iris_hfi_command_ops *hfi_ops = inst->core->hfi_ops;
+	bool wait_for_response = true;
+	int ret;
+
+	reinit_completion(&inst->completion);
+
+	ret = hfi_ops->session_close(inst);
+	if (ret)
+		wait_for_response = false;
+
+	if (wait_for_response)
+		iris_wait_for_session_response(inst);
+}
+
 int iris_close(struct file *filp)
 {
 	struct iris_inst *inst = iris_get_inst(filp, NULL);
 
 	v4l2_m2m_ctx_release(inst->m2m_ctx);
 	v4l2_m2m_release(inst->m2m_dev);
+	mutex_lock(&inst->lock);
+	iris_vdec_inst_deinit(inst);
+	iris_session_close(inst);
 	iris_v4l2_fh_deinit(inst);
+	iris_remove_session(inst);
+	mutex_unlock(&inst->lock);
 	mutex_destroy(&inst->ctx_q_lock);
+	mutex_destroy(&inst->lock);
 	kfree(inst);
 	filp->private_data = NULL;
 
@@ -155,7 +226,17 @@ static struct v4l2_file_operations iris_v4l2_file_ops = {
 	.mmap                           = v4l2_m2m_fop_mmap,
 };
 
+static const struct vb2_ops iris_vb2_ops = {
+	.queue_setup                    = iris_vb2_queue_setup,
+};
+
+static const struct v4l2_ioctl_ops iris_v4l2_ioctl_ops = {
+	.vidioc_reqbufs                 = v4l2_m2m_ioctl_reqbufs,
+};
+
 void iris_init_ops(struct iris_core *core)
 {
 	core->iris_v4l2_file_ops = &iris_v4l2_file_ops;
+	core->iris_vb2_ops = &iris_vb2_ops;
+	core->iris_v4l2_ioctl_ops = &iris_v4l2_ioctl_ops;
 }
diff --git a/drivers/media/platform/qcom/iris/iris_vpu_buffer.c b/drivers/media/platform/qcom/iris/iris_vpu_buffer.c
new file mode 100644
index 000000000000..2402a33723ab
--- /dev/null
+++ b/drivers/media/platform/qcom/iris/iris_vpu_buffer.c
@@ -0,0 +1,19 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (c) 2022-2024 Qualcomm Innovation Center, Inc. All rights reserved.
+ */
+
+#include "iris_instance.h"
+#include "iris_vpu_buffer.h"
+
+int iris_vpu_buf_count(struct iris_inst *inst, enum iris_buffer_type buffer_type)
+{
+	switch (buffer_type) {
+	case BUF_INPUT:
+		return MIN_BUFFERS;
+	case BUF_OUTPUT:
+		return inst->fw_min_count;
+	default:
+		return 0;
+	}
+}
diff --git a/drivers/media/platform/qcom/iris/iris_vpu_buffer.h b/drivers/media/platform/qcom/iris/iris_vpu_buffer.h
new file mode 100644
index 000000000000..06e6e958dcac
--- /dev/null
+++ b/drivers/media/platform/qcom/iris/iris_vpu_buffer.h
@@ -0,0 +1,15 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (c) 2022-2024 Qualcomm Innovation Center, Inc. All rights reserved.
+ */
+
+#ifndef __IRIS_VPU_BUFFER_H__
+#define __IRIS_VPU_BUFFER_H__
+
+struct iris_inst;
+
+#define MIN_BUFFERS			4
+
+int iris_vpu_buf_count(struct iris_inst *inst, enum iris_buffer_type buffer_type);
+
+#endif

-- 
2.34.1


