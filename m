Return-Path: <devicetree+bounces-118937-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id CC0829BC66C
	for <lists+devicetree@lfdr.de>; Tue,  5 Nov 2024 08:02:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0D676B227FA
	for <lists+devicetree@lfdr.de>; Tue,  5 Nov 2024 07:02:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 819FD2036F0;
	Tue,  5 Nov 2024 06:58:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="ckoW+jrc"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF2F81FF057;
	Tue,  5 Nov 2024 06:58:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730789904; cv=none; b=Eyp38MBTxId/8lIzrqjXHRkFzpjQhwWi9DkkvU33ZiRpqFkCB42Rx6m9TBxFVIZ6VBnCf5xTdnnISFV2kYIJwx3uP8pk9y695PaAqqltai82jQFmjZxYCp+VlsOSSbHncuvpLcVuwECGgHe9ghuM0WFTreYogdSJPUY8WGKz1OE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730789904; c=relaxed/simple;
	bh=t8HgDdkkTyfUB1kjeuyv3koElXycjq6LVf1lTWF/avI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-ID:References:
	 In-Reply-To:To:CC; b=bO6l8Q8OmiJHoEJtL+GcVAgDT6I2639pYDMOAuyfKmL4RI2JGsCLKhvM9nKXD6koRlsGptuHLENwt3jN1rLKXuymIjaInG9jXqIGtsh7TEAErNT1v+9zlOhuMx58UfyKRaOUrByFDfhuUQ0ldv6O3iOgDGV9sa0L5QtU0J7H5nA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com; spf=pass smtp.mailfrom=quicinc.com; dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b=ckoW+jrc; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=quicinc.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4A4LIom7021589;
	Tue, 5 Nov 2024 06:58:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	dGFYqze6iohjBbK9gbikn04wO9O6Y7jdweWRSkG7UJ4=; b=ckoW+jrckF3R3wXi
	m/sc2j7gcdhGVdnwQX2QMnIWTipTeGWf5gpxK9yEPH76Wh+xCsMaQIUON5X/MuKO
	36buxAZlWiaad1FhxdH5DVgBxyaShVpExAeum44vYxAaqSgr4cYQyjAjJcpVY+yi
	7a75FtGJ1QyL9r12e35lvsetnOhpDOU8vTzgNUtLrzi+P0GLDgqNqxj0FjtVKA6j
	3SQM2volkKjFgodxS5vryys3OmwtuPL+MGHmRsRmMBBferHk6Xb659Cy54Z0n6K0
	fQXVUmq+P/191Tg/o9DLdmM0z9N30z2rv74Vj8oDktMtqCXYY1qT/qcSO/KwBqCN
	8ZmjRQ==
Received: from nalasppmta02.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42ncyxxkh8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 05 Nov 2024 06:58:04 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 4A56w3HS030056
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 5 Nov 2024 06:58:03 GMT
Received: from hu-dikshita-hyd.qualcomm.com (10.80.80.8) by
 nalasex01a.na.qualcomm.com (10.47.209.196) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Mon, 4 Nov 2024 22:57:57 -0800
From: Dikshita Agarwal <quic_dikshita@quicinc.com>
Date: Tue, 5 Nov 2024 12:25:37 +0530
Subject: [PATCH v5 17/28] media: iris: implement set properties to firmware
 during streamon
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20241105-qcom-video-iris-v5-17-a88e7c220f78@quicinc.com>
References: <20241105-qcom-video-iris-v5-0-a88e7c220f78@quicinc.com>
In-Reply-To: <20241105-qcom-video-iris-v5-0-a88e7c220f78@quicinc.com>
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
        Jianhua Lu <lujianhua000@gmail.com>, <linux-media@vger.kernel.org>,
        <linux-arm-msm@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>,
        "Dikshita
 Agarwal" <quic_dikshita@quicinc.com>,
        Vedang Nagar <quic_vnagar@quicinc.com>
X-Mailer: b4 0.14.1
X-Developer-Signature: v=1; a=ed25519-sha256; t=1730789780; l=63733;
 i=quic_dikshita@quicinc.com; s=20240917; h=from:subject:message-id;
 bh=MVwIaaTY4IOpLeSLLcbTpDtwoeV81uObRXW7WKSLGPA=;
 b=I0BIEeX1UCHcIhLjiP8hageUKAWQrVTbCpKUSvP28RztN1jqYyLViNLvk/wdpvXtDCtGXbcHm
 GQpUdco89TxCR5a4yD1lVnZnPFknCHDOL5XCmTdP0MsOx8lbBK7cszw
X-Developer-Key: i=quic_dikshita@quicinc.com; a=ed25519;
 pk=EEvKY6Ar1OI5SWf44FJ1Ebo1KuQEVbbf5UNPO+UHVhM=
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: xVk2uHFSiwX59bff0TdEfTmAQjVgB16r
X-Proofpoint-GUID: xVk2uHFSiwX59bff0TdEfTmAQjVgB16r
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 suspectscore=0
 malwarescore=0 bulkscore=0 impostorscore=0 priorityscore=1501
 lowpriorityscore=0 mlxscore=0 phishscore=0 adultscore=0 mlxlogscore=999
 clxscore=1015 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2411050050

From: Vedang Nagar <quic_vnagar@quicinc.com>

During stream on, set some mandatory properties to firmware to start a
session. Set all v4l2 properties set by client, to firmware prepared
with the dependency graph.

Signed-off-by: Vedang Nagar <quic_vnagar@quicinc.com>
Signed-off-by: Dikshita Agarwal <quic_dikshita@quicinc.com>
---
 drivers/media/platform/qcom/iris/iris_buffer.c     | 121 ++++++
 drivers/media/platform/qcom/iris/iris_ctrls.c      |  94 +++++
 drivers/media/platform/qcom/iris/iris_ctrls.h      |   5 +
 drivers/media/platform/qcom/iris/iris_hfi_common.h |  76 ++++
 .../platform/qcom/iris/iris_hfi_gen1_command.c     | 411 +++++++++++++++++++++
 .../platform/qcom/iris/iris_hfi_gen1_defines.h     |  83 +++++
 drivers/media/platform/qcom/iris/iris_hfi_gen2.h   |   2 +
 .../platform/qcom/iris/iris_hfi_gen2_command.c     | 300 +++++++++++++++
 .../platform/qcom/iris/iris_hfi_gen2_defines.h     |  27 ++
 .../platform/qcom/iris/iris_hfi_gen2_packet.c      |  79 ++++
 .../platform/qcom/iris/iris_hfi_gen2_packet.h      |   7 +
 .../platform/qcom/iris/iris_hfi_gen2_response.c    |  49 +++
 .../platform/qcom/iris/iris_platform_common.h      |  33 ++
 .../platform/qcom/iris/iris_platform_sm8550.c      |  89 +++++
 drivers/media/platform/qcom/iris/iris_utils.c      |  19 +
 drivers/media/platform/qcom/iris/iris_utils.h      |   3 +
 drivers/media/platform/qcom/iris/iris_vdec.c       |  11 +
 drivers/media/platform/qcom/iris/iris_vpu_buffer.c |  20 +
 drivers/media/platform/qcom/iris/iris_vpu_buffer.h |   1 +
 19 files changed, 1430 insertions(+)

diff --git a/drivers/media/platform/qcom/iris/iris_buffer.c b/drivers/media/platform/qcom/iris/iris_buffer.c
index 48bc5c2c343c..55cbffb7e268 100644
--- a/drivers/media/platform/qcom/iris/iris_buffer.c
+++ b/drivers/media/platform/qcom/iris/iris_buffer.c
@@ -72,6 +72,125 @@ static u32 iris_output_buffer_size_nv12(struct iris_inst *inst)
 	return ALIGN(y_plane + uv_plane, PIXELS_4K);
 }
 
+/*
+ * QC08C:
+ * Compressed Macro-tile format for NV12.
+ * Contains 4 planes in the following order -
+ * (A) Y_Meta_Plane
+ * (B) Y_UBWC_Plane
+ * (C) UV_Meta_Plane
+ * (D) UV_UBWC_Plane
+ *
+ * Y_Meta_Plane consists of meta information to decode compressed
+ * tile data in Y_UBWC_Plane.
+ * Y_UBWC_Plane consists of Y data in compressed macro-tile format.
+ * UBWC decoder block will use the Y_Meta_Plane data together with
+ * Y_UBWC_Plane data to produce loss-less uncompressed 8 bit Y samples.
+ *
+ * UV_Meta_Plane consists of meta information to decode compressed
+ * tile data in UV_UBWC_Plane.
+ * UV_UBWC_Plane consists of UV data in compressed macro-tile format.
+ * UBWC decoder block will use UV_Meta_Plane data together with
+ * UV_UBWC_Plane data to produce loss-less uncompressed 8 bit 2x2
+ * subsampled color difference samples.
+ *
+ * Each tile in Y_UBWC_Plane/UV_UBWC_Plane is independently decodable
+ * and randomly accessible. There is no dependency between tiles.
+ *
+ * <----- y_meta_stride ----> (aligned to 64)
+ * <-------- Width ------>
+ * M M M M M M M M M M M M . .      ^           ^
+ * M M M M M M M M M M M M . .      |           |
+ * M M M M M M M M M M M M . .      Height      |
+ * M M M M M M M M M M M M . .      |         y_meta_scanlines  (aligned to 16)
+ * M M M M M M M M M M M M . .      |           |
+ * M M M M M M M M M M M M . .      |           |
+ * M M M M M M M M M M M M . .      |           |
+ * M M M M M M M M M M M M . .      V           |
+ * . . . . . . . . . . . . . .                  |
+ * . . . . . . . . . . . . . .                  |
+ * . . . . . . . . . . . . . .      -------> Buffer size aligned to 4k
+ * . . . . . . . . . . . . . .                  V
+ * <--Compressed tile y_stride---> (aligned to 128)
+ * <------- Width ------->
+ * Y* Y* Y* Y* Y* Y* Y* Y* . . . .  ^           ^
+ * Y* Y* Y* Y* Y* Y* Y* Y* . . . .  |           |
+ * Y* Y* Y* Y* Y* Y* Y* Y* . . . .  Height      |
+ * Y* Y* Y* Y* Y* Y* Y* Y* . . . .  |        Macro_tile y_scanlines (aligned to 32)
+ * Y* Y* Y* Y* Y* Y* Y* Y* . . . .  |           |
+ * Y* Y* Y* Y* Y* Y* Y* Y* . . . .  |           |
+ * Y* Y* Y* Y* Y* Y* Y* Y* . . . .  |           |
+ * Y* Y* Y* Y* Y* Y* Y* Y* . . . .  V           |
+ * . . . . . . . . . . . . . . . .              |
+ * . . . . . . . . . . . . . . . .              |
+ * . . . . . . . . . . . . . . . .  -------> Buffer size aligned to 4k
+ * . . . . . . . . . . . . . . . .              V
+ * <----- uv_meta_stride ---->  (aligned to 64)
+ * M M M M M M M M M M M M . .      ^
+ * M M M M M M M M M M M M . .      |
+ * M M M M M M M M M M M M . .      |
+ * M M M M M M M M M M M M . .      uv_meta_scanlines (aligned to 16)
+ * . . . . . . . . . . . . . .      |
+ * . . . . . . . . . . . . . .      V
+ * . . . . . . . . . . . . . .      -------> Buffer size aligned to 4k
+ * <--Compressed tile uv_stride---> (aligned to 128)
+ * U* V* U* V* U* V* U* V* . . . .  ^
+ * U* V* U* V* U* V* U* V* . . . .  |
+ * U* V* U* V* U* V* U* V* . . . .  |
+ * U* V* U* V* U* V* U* V* . . . .  uv_scanlines (aligned to 32)
+ * . . . . . . . . . . . . . . . .  |
+ * . . . . . . . . . . . . . . . .  V
+ * . . . . . . . . . . . . . . . .  -------> Buffer size aligned to 4k
+ *
+ * y_stride: width aligned to 128
+ * uv_stride: width aligned to 128
+ * y_scanlines: height aligned to 32
+ * uv_scanlines: height aligned to 32
+ * y_plane: buffer size aligned to 4096
+ * uv_plane: buffer size aligned to 4096
+ * y_meta_stride: width aligned to 64
+ * y_meta_scanlines: height aligned to 16
+ * y_meta_plane: buffer size aligned to 4096
+ * uv_meta_stride: width aligned to 64
+ * uv_meta_scanlines: height aligned to 16
+ * uv_meta_plane: buffer size aligned to 4096
+ *
+ * Total size = align( y_plane + uv_plane +
+ *           y_meta_plane + uv_meta_plane, 4096)
+ *
+ * Note: All the alignments are hardware requirements.
+ */
+static u32 iris_output_buffer_size_qc08c(struct iris_inst *inst)
+{
+	u32 y_plane, uv_plane, y_stride, uv_stride;
+	struct v4l2_format *f = inst->fmt_dst;
+	u32 uv_meta_stride, uv_meta_plane;
+	u32 y_meta_stride, y_meta_plane;
+
+	y_meta_stride = ALIGN(DIV_ROUND_UP(f->fmt.pix_mp.width, META_STRIDE_ALIGNED >> 1),
+					   META_STRIDE_ALIGNED);
+	y_meta_plane = y_meta_stride * ALIGN(DIV_ROUND_UP(f->fmt.pix_mp.height,
+							  META_SCANLINE_ALIGNED >> 1),
+					     META_SCANLINE_ALIGNED);
+	y_meta_plane = ALIGN(y_meta_plane, PIXELS_4K);
+
+	y_stride = ALIGN(f->fmt.pix_mp.width, Y_STRIDE_ALIGN);
+	y_plane = ALIGN(y_stride * ALIGN(f->fmt.pix_mp.height, Y_SCANLINE_ALIGN), PIXELS_4K);
+
+	uv_meta_stride = ALIGN(DIV_ROUND_UP(f->fmt.pix_mp.width / 2, META_STRIDE_ALIGNED >> 2),
+			       META_STRIDE_ALIGNED);
+	uv_meta_plane = uv_meta_stride * ALIGN(DIV_ROUND_UP(f->fmt.pix_mp.height / 2,
+							    META_SCANLINE_ALIGNED >> 1),
+					       META_SCANLINE_ALIGNED);
+	uv_meta_plane = ALIGN(uv_meta_plane, PIXELS_4K);
+
+	uv_stride = ALIGN(f->fmt.pix_mp.width, UV_STRIDE_ALIGN);
+	uv_plane = ALIGN(uv_stride * ALIGN(f->fmt.pix_mp.height / 2, UV_SCANLINE_ALIGN_QC08C),
+			 PIXELS_4K);
+
+	return ALIGN(y_meta_plane + y_plane + uv_meta_plane + uv_plane, PIXELS_4K);
+}
+
 static u32 iris_input_buffer_size(struct iris_inst *inst)
 {
 	struct platform_inst_caps *caps = inst->core->iris_platform_data->inst_caps;
@@ -102,6 +221,8 @@ int iris_get_buffer_size(struct iris_inst *inst,
 		return iris_input_buffer_size(inst);
 	case BUF_OUTPUT:
 		return iris_output_buffer_size_nv12(inst);
+	case BUF_DPB:
+		return iris_output_buffer_size_qc08c(inst);
 	default:
 		return 0;
 	}
diff --git a/drivers/media/platform/qcom/iris/iris_ctrls.c b/drivers/media/platform/qcom/iris/iris_ctrls.c
index a204e2e1edf7..612c295dcd8e 100644
--- a/drivers/media/platform/qcom/iris/iris_ctrls.c
+++ b/drivers/media/platform/qcom/iris/iris_ctrls.c
@@ -3,7 +3,9 @@
  * Copyright (c) 2022-2024 Qualcomm Innovation Center, Inc. All rights reserved.
  */
 
+#include <linux/types.h>
 #include <media/v4l2-mem2mem.h>
+
 #include "iris_ctrls.h"
 #include "iris_instance.h"
 
@@ -159,3 +161,95 @@ void iris_session_init_caps(struct iris_core *core)
 		core->inst_fw_caps[cap_id].hfi_id = caps[i].hfi_id;
 	}
 }
+
+static u32 iris_get_port_info(struct iris_inst *inst,
+			      enum platform_inst_fw_cap_type cap_id)
+{
+	if (inst->fw_caps[cap_id].flags & CAP_FLAG_INPUT_PORT)
+		return HFI_PORT_BITSTREAM;
+	else if (inst->fw_caps[cap_id].flags & CAP_FLAG_OUTPUT_PORT)
+		return HFI_PORT_RAW;
+
+	return HFI_PORT_NONE;
+}
+
+int iris_set_u32_enum(struct iris_inst *inst, enum platform_inst_fw_cap_type cap_id)
+{
+	const struct iris_hfi_command_ops *hfi_ops = inst->core->hfi_ops;
+	u32 hfi_value = inst->fw_caps[cap_id].value;
+	u32 hfi_id = inst->fw_caps[cap_id].hfi_id;
+
+	return hfi_ops->session_set_property(inst, hfi_id,
+					     HFI_HOST_FLAGS_NONE,
+					     iris_get_port_info(inst, cap_id),
+					     HFI_PAYLOAD_U32_ENUM,
+					     &hfi_value, sizeof(u32));
+}
+
+int iris_set_u32(struct iris_inst *inst, enum platform_inst_fw_cap_type cap_id)
+{
+	const struct iris_hfi_command_ops *hfi_ops = inst->core->hfi_ops;
+	u32 hfi_value = inst->fw_caps[cap_id].value;
+	u32 hfi_id = inst->fw_caps[cap_id].hfi_id;
+
+	return hfi_ops->session_set_property(inst, hfi_id,
+					     HFI_HOST_FLAGS_NONE,
+					     iris_get_port_info(inst, cap_id),
+					     HFI_PAYLOAD_U32,
+					     &hfi_value, sizeof(u32));
+}
+
+int iris_set_stage(struct iris_inst *inst, enum platform_inst_fw_cap_type cap_id)
+{
+	const struct iris_hfi_command_ops *hfi_ops = inst->core->hfi_ops;
+	struct v4l2_format *inp_f = inst->fmt_src;
+	u32 hfi_id = inst->fw_caps[cap_id].hfi_id;
+	u32 height = inp_f->fmt.pix_mp.height;
+	u32 width = inp_f->fmt.pix_mp.width;
+	u32 work_mode = STAGE_2;
+
+	if (iris_res_is_less_than(width, height, 1280, 720))
+		work_mode = STAGE_1;
+
+	return hfi_ops->session_set_property(inst, hfi_id,
+					     HFI_HOST_FLAGS_NONE,
+					     iris_get_port_info(inst, cap_id),
+					     HFI_PAYLOAD_U32,
+					     &work_mode, sizeof(u32));
+}
+
+int iris_set_pipe(struct iris_inst *inst, enum platform_inst_fw_cap_type cap_id)
+{
+	const struct iris_hfi_command_ops *hfi_ops = inst->core->hfi_ops;
+	u32 work_route = inst->fw_caps[PIPE].value;
+	u32 hfi_id = inst->fw_caps[cap_id].hfi_id;
+
+	return hfi_ops->session_set_property(inst, hfi_id,
+					     HFI_HOST_FLAGS_NONE,
+					     iris_get_port_info(inst, cap_id),
+					     HFI_PAYLOAD_U32,
+					     &work_route, sizeof(u32));
+}
+
+int iris_set_properties(struct iris_inst *inst, u32 plane)
+{
+	const struct iris_hfi_command_ops *hfi_ops = inst->core->hfi_ops;
+	struct platform_inst_fw_cap *cap;
+	int ret;
+	u32 i;
+
+	ret = hfi_ops->session_set_config_params(inst, plane);
+	if (ret)
+		return ret;
+
+	for (i = 1; i < INST_FW_CAP_MAX; i++) {
+		cap = &inst->fw_caps[i];
+		if (!iris_valid_cap_id(cap->cap_id))
+			continue;
+
+		if (cap->cap_id && cap->set)
+			cap->set(inst, i);
+	}
+
+	return 0;
+}
diff --git a/drivers/media/platform/qcom/iris/iris_ctrls.h b/drivers/media/platform/qcom/iris/iris_ctrls.h
index 3e4dd46e7a26..db5e8f03ac95 100644
--- a/drivers/media/platform/qcom/iris/iris_ctrls.h
+++ b/drivers/media/platform/qcom/iris/iris_ctrls.h
@@ -13,5 +13,10 @@ struct iris_inst;
 
 int iris_ctrls_init(struct iris_inst *inst);
 void iris_session_init_caps(struct iris_core *core);
+int iris_set_u32_enum(struct iris_inst *inst, enum platform_inst_fw_cap_type cap_id);
+int iris_set_stage(struct iris_inst *inst, enum platform_inst_fw_cap_type cap_id);
+int iris_set_pipe(struct iris_inst *inst, enum platform_inst_fw_cap_type cap_id);
+int iris_set_u32(struct iris_inst *inst, enum platform_inst_fw_cap_type cap_id);
+int iris_set_properties(struct iris_inst *inst, u32 plane);
 
 #endif
diff --git a/drivers/media/platform/qcom/iris/iris_hfi_common.h b/drivers/media/platform/qcom/iris/iris_hfi_common.h
index 4ac97692d072..fa409a9b3f04 100644
--- a/drivers/media/platform/qcom/iris/iris_hfi_common.h
+++ b/drivers/media/platform/qcom/iris/iris_hfi_common.h
@@ -43,11 +43,75 @@ enum hfi_packet_host_flags {
 	HFI_HOST_FLAGS_GET_PROPERTY		= 0x00000008,
 };
 
+enum hfi_color_primaries {
+	HFI_PRIMARIES_RESERVED		= 0,
+	HFI_PRIMARIES_BT709		= 1,
+	HFI_PRIMARIES_UNSPECIFIED	= 2,
+	HFI_PRIMARIES_BT470_SYSTEM_M	= 4,
+	HFI_PRIMARIES_BT470_SYSTEM_BG	= 5,
+	HFI_PRIMARIES_BT601_525		= 6,
+	HFI_PRIMARIES_SMPTE_ST240M	= 7,
+	HFI_PRIMARIES_GENERIC_FILM	= 8,
+	HFI_PRIMARIES_BT2020		= 9,
+	HFI_PRIMARIES_SMPTE_ST428_1	= 10,
+	HFI_PRIMARIES_SMPTE_RP431_2	= 11,
+	HFI_PRIMARIES_SMPTE_EG431_1	= 12,
+	HFI_PRIMARIES_SMPTE_EBU_TECH	= 22,
+};
+
+enum hfi_transfer_characteristics {
+	HFI_TRANSFER_RESERVED		= 0,
+	HFI_TRANSFER_BT709		= 1,
+	HFI_TRANSFER_UNSPECIFIED	= 2,
+	HFI_TRANSFER_BT470_SYSTEM_M	= 4,
+	HFI_TRANSFER_BT470_SYSTEM_BG	= 5,
+	HFI_TRANSFER_BT601_525_OR_625	= 6,
+	HFI_TRANSFER_SMPTE_ST240M	= 7,
+	HFI_TRANSFER_LINEAR		= 8,
+	HFI_TRANSFER_LOG_100_1		= 9,
+	HFI_TRANSFER_LOG_SQRT		= 10,
+	HFI_TRANSFER_XVYCC		= 11,
+	HFI_TRANSFER_BT1361_0		= 12,
+	HFI_TRANSFER_SRGB_SYCC		= 13,
+	HFI_TRANSFER_BT2020_14		= 14,
+	HFI_TRANSFER_BT2020_15		= 15,
+	HFI_TRANSFER_SMPTE_ST2084_PQ	= 16,
+	HFI_TRANSFER_SMPTE_ST428_1	= 17,
+	HFI_TRANSFER_BT2100_2_HLG	= 18,
+};
+
+enum hfi_matrix_coefficients {
+	HFI_MATRIX_COEFF_SRGB_SMPTE_ST428_1		= 0,
+	HFI_MATRIX_COEFF_BT709				= 1,
+	HFI_MATRIX_COEFF_UNSPECIFIED			= 2,
+	HFI_MATRIX_COEFF_RESERVED			= 3,
+	HFI_MATRIX_COEFF_FCC_TITLE_47			= 4,
+	HFI_MATRIX_COEFF_BT470_SYS_BG_OR_BT601_625	= 5,
+	HFI_MATRIX_COEFF_BT601_525_BT1358_525_OR_625	= 6,
+	HFI_MATRIX_COEFF_SMPTE_ST240			= 7,
+	HFI_MATRIX_COEFF_YCGCO				= 8,
+	HFI_MATRIX_COEFF_BT2020_NON_CONSTANT		= 9,
+	HFI_MATRIX_COEFF_BT2020_CONSTANT		= 10,
+	HFI_MATRIX_COEFF_SMPTE_ST2085			= 11,
+	HFI_MATRIX_COEFF_SMPTE_CHROM_DERV_NON_CONSTANT	= 12,
+	HFI_MATRIX_COEFF_SMPTE_CHROM_DERV_CONSTANT	= 13,
+	HFI_MATRIX_COEFF_BT2100				= 14,
+};
+
+struct iris_hfi_prop_type_handle {
+	u32 type;
+	int (*handle)(struct iris_inst *inst);
+};
+
 struct iris_hfi_command_ops {
 	int (*sys_init)(struct iris_core *core);
 	int (*sys_image_version)(struct iris_core *core);
 	int (*sys_interframe_powercollapse)(struct iris_core *core);
 	int (*sys_pc_prep)(struct iris_core *core);
+	int (*session_set_config_params)(struct iris_inst *inst, u32 plane);
+	int (*session_set_property)(struct iris_inst *inst,
+				    u32 packet_type, u32 flag, u32 plane, u32 payload_type,
+				    void *payload, u32 payload_size);
 	int (*session_open)(struct iris_inst *inst);
 	int (*session_start)(struct iris_inst *inst, u32 plane);
 	int (*session_stop)(struct iris_inst *inst, u32 plane);
@@ -58,6 +122,18 @@ struct iris_hfi_response_ops {
 	void (*hfi_response_handler)(struct iris_core *core);
 };
 
+struct hfi_subscription_params {
+	u32	bitstream_resolution;
+	u32	crop_offsets[2];
+	u32	bit_depth;
+	u32	coded_frames;
+	u32	fw_min_count;
+	u32	pic_order_cnt;
+	u32	color_info;
+	u32	profile;
+	u32	level;
+};
+
 int iris_hfi_core_init(struct iris_core *core);
 int iris_hfi_pm_suspend(struct iris_core *core);
 int iris_hfi_pm_resume(struct iris_core *core);
diff --git a/drivers/media/platform/qcom/iris/iris_hfi_gen1_command.c b/drivers/media/platform/qcom/iris/iris_hfi_gen1_command.c
index a3b09e8d1f49..8d6e455334e0 100644
--- a/drivers/media/platform/qcom/iris/iris_hfi_gen1_command.c
+++ b/drivers/media/platform/qcom/iris/iris_hfi_gen1_command.c
@@ -6,6 +6,7 @@
 #include "iris_hfi_gen1.h"
 #include "iris_hfi_gen1_defines.h"
 #include "iris_instance.h"
+#include "iris_vpu_buffer.h"
 
 static int iris_hfi_gen1_sys_init(struct iris_core *core)
 {
@@ -182,12 +183,422 @@ static int iris_hfi_gen1_session_stop(struct iris_inst *inst, u32 plane)
 	return ret;
 }
 
+static int
+iris_hfi_gen1_packet_session_set_property(struct hfi_session_set_property_pkt *packet,
+					  struct iris_inst *inst, u32 ptype, void *pdata)
+{
+	void *prop_data = &packet->data[1];
+
+	packet->shdr.hdr.size = sizeof(*packet);
+	packet->shdr.hdr.pkt_type = HFI_CMD_SESSION_SET_PROPERTY;
+	packet->shdr.session_id = inst->session_id;
+	packet->num_properties = 1;
+	packet->data[0] = ptype;
+
+	switch (ptype) {
+	case HFI_PROPERTY_PARAM_FRAME_SIZE: {
+		struct hfi_framesize *in = pdata, *fsize = prop_data;
+
+		fsize->buffer_type = in->buffer_type;
+		fsize->height = in->height;
+		fsize->width = in->width;
+		packet->shdr.hdr.size += sizeof(u32) + sizeof(*fsize);
+		break;
+	}
+	case HFI_PROPERTY_CONFIG_VIDEOCORES_USAGE: {
+		struct hfi_videocores_usage_type *in = pdata, *cu = prop_data;
+
+		cu->video_core_enable_mask = in->video_core_enable_mask;
+		packet->shdr.hdr.size += sizeof(u32) + sizeof(*cu);
+		break;
+	}
+	case HFI_PROPERTY_PARAM_UNCOMPRESSED_FORMAT_SELECT: {
+		struct hfi_uncompressed_format_select *in = pdata;
+		struct hfi_uncompressed_format_select *hfi = prop_data;
+
+		hfi->buffer_type = in->buffer_type;
+		hfi->format = in->format;
+		packet->shdr.hdr.size += sizeof(u32) + sizeof(*hfi);
+		break;
+	}
+	case HFI_PROPERTY_PARAM_UNCOMPRESSED_PLANE_ACTUAL_CONSTRAINTS_INFO: {
+		struct hfi_uncompressed_plane_actual_constraints_info *info = prop_data;
+
+		info->buffer_type = HFI_BUFFER_OUTPUT2;
+		info->num_planes = 2;
+		info->plane_format[0].stride_multiples = 128;
+		info->plane_format[0].max_stride = 8192;
+		info->plane_format[0].min_plane_buffer_height_multiple = 32;
+		info->plane_format[0].buffer_alignment = 256;
+		if (info->num_planes > 1) {
+			info->plane_format[1].stride_multiples = 128;
+			info->plane_format[1].max_stride = 8192;
+			info->plane_format[1].min_plane_buffer_height_multiple = 16;
+			info->plane_format[1].buffer_alignment = 256;
+		}
+
+		packet->shdr.hdr.size += sizeof(u32) + sizeof(*info);
+		break;
+	}
+	case HFI_PROPERTY_PARAM_BUFFER_COUNT_ACTUAL: {
+		struct hfi_buffer_count_actual *in = pdata;
+		struct hfi_buffer_count_actual *count = prop_data;
+
+		count->count_actual = in->count_actual;
+		count->type = in->type;
+		count->count_min_host = in->count_min_host;
+		packet->shdr.hdr.size += sizeof(u32) + sizeof(*count);
+		break;
+	}
+	case HFI_PROPERTY_PARAM_VDEC_MULTI_STREAM: {
+		struct hfi_multi_stream *in = pdata;
+		struct hfi_multi_stream *multi = prop_data;
+
+		multi->buffer_type = in->buffer_type;
+		multi->enable = in->enable;
+		packet->shdr.hdr.size += sizeof(u32) + sizeof(*multi);
+		break;
+	}
+	case HFI_PROPERTY_PARAM_BUFFER_SIZE_ACTUAL: {
+		struct hfi_buffer_size_actual *in = pdata, *sz = prop_data;
+
+		sz->size = in->size;
+		sz->type = in->type;
+		packet->shdr.hdr.size += sizeof(u32) + sizeof(*sz);
+		break;
+	}
+	case HFI_PROPERTY_PARAM_WORK_ROUTE: {
+		struct hfi_video_work_route *wr = prop_data;
+		u32 *in = pdata;
+
+		wr->video_work_route = *in;
+		packet->shdr.hdr.size += sizeof(u32) + sizeof(*wr);
+		break;
+	}
+	case HFI_PROPERTY_PARAM_WORK_MODE: {
+		struct hfi_video_work_mode *wm = prop_data;
+		u32 *in = pdata;
+
+		wm->video_work_mode = *in;
+		packet->shdr.hdr.size += sizeof(u32) + sizeof(*wm);
+		break;
+	}
+	case HFI_PROPERTY_CONFIG_VDEC_POST_LOOP_DEBLOCKER: {
+		struct hfi_enable *en = prop_data;
+		u32 *in = pdata;
+
+		en->enable = *in;
+		packet->shdr.hdr.size += sizeof(u32) + sizeof(*en);
+		break;
+	}
+	default:
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+static int hfi_gen1_set_property(struct iris_inst *inst, u32 packet_type,
+				 void *payload, u32 payload_size)
+{
+	struct hfi_session_set_property_pkt *pkt;
+	u32 packet_size;
+	int ret;
+
+	packet_size = sizeof(*pkt) + sizeof(u32) + payload_size;
+	pkt = kzalloc(packet_size, GFP_KERNEL);
+	if (!pkt)
+		return -ENOMEM;
+
+	ret = iris_hfi_gen1_packet_session_set_property(pkt, inst, packet_type, payload);
+	if (ret == -EOPNOTSUPP) {
+		ret = 0;
+		goto exit;
+	}
+	if (ret)
+		goto exit;
+
+	ret = iris_hfi_queue_cmd_write(inst->core, pkt, pkt->shdr.hdr.size);
+
+exit:
+	kfree(pkt);
+
+	return ret;
+}
+
+static int iris_hfi_gen1_session_set_property(struct iris_inst *inst, u32 packet_type,
+					      u32 flag, u32 plane, u32 payload_type,
+					      void *payload, u32 payload_size)
+{
+	return hfi_gen1_set_property(inst, packet_type, payload, payload_size);
+}
+
+static int iris_hfi_gen1_set_resolution(struct iris_inst *inst)
+{
+	u32 ptype = HFI_PROPERTY_PARAM_FRAME_SIZE;
+	struct hfi_framesize fs;
+	int ret;
+
+	fs.buffer_type = HFI_BUFFER_INPUT;
+	fs.width = inst->fmt_src->fmt.pix_mp.width;
+	fs.height = inst->fmt_src->fmt.pix_mp.height;
+
+	ret = hfi_gen1_set_property(inst, ptype, &fs, sizeof(fs));
+	if (ret)
+		return ret;
+
+	fs.buffer_type = HFI_BUFFER_OUTPUT2;
+	fs.width = inst->fmt_dst->fmt.pix_mp.width;
+	fs.height = inst->fmt_dst->fmt.pix_mp.height;
+
+	return hfi_gen1_set_property(inst, ptype, &fs, sizeof(fs));
+}
+
+static int iris_hfi_gen1_decide_core(struct iris_inst *inst)
+{
+	const u32 ptype = HFI_PROPERTY_CONFIG_VIDEOCORES_USAGE;
+	struct hfi_videocores_usage_type cu;
+
+	cu.video_core_enable_mask = HFI_CORE_ID_1;
+
+	return hfi_gen1_set_property(inst, ptype, &cu, sizeof(cu));
+}
+
+static int iris_hfi_gen1_set_raw_format(struct iris_inst *inst)
+{
+	const u32 ptype = HFI_PROPERTY_PARAM_UNCOMPRESSED_FORMAT_SELECT;
+	u32 pixelformat = inst->fmt_dst->fmt.pix_mp.pixelformat;
+	struct hfi_uncompressed_format_select fmt;
+	int ret;
+
+	if (iris_split_mode_enabled(inst)) {
+		fmt.buffer_type = HFI_BUFFER_OUTPUT;
+		fmt.format = pixelformat == V4L2_PIX_FMT_NV12 ? HFI_COLOR_FORMAT_NV12_UBWC : 0;
+
+		ret = hfi_gen1_set_property(inst, ptype, &fmt, sizeof(fmt));
+		if (ret)
+			return ret;
+
+		fmt.buffer_type = HFI_BUFFER_OUTPUT2;
+		fmt.format = pixelformat == V4L2_PIX_FMT_NV12 ? HFI_COLOR_FORMAT_NV12 : 0;
+
+		ret = hfi_gen1_set_property(inst, ptype, &fmt, sizeof(fmt));
+	} else {
+		fmt.buffer_type = HFI_BUFFER_OUTPUT;
+		fmt.format = pixelformat == V4L2_PIX_FMT_NV12 ? HFI_COLOR_FORMAT_NV12 : 0;
+
+		ret = hfi_gen1_set_property(inst, ptype, &fmt, sizeof(fmt));
+	}
+
+	return ret;
+}
+
+static int iris_hfi_gen1_set_format_constraints(struct iris_inst *inst)
+{
+	const u32 ptype = HFI_PROPERTY_PARAM_UNCOMPRESSED_PLANE_ACTUAL_CONSTRAINTS_INFO;
+	struct hfi_uncompressed_plane_actual_constraints_info pconstraint;
+
+	pconstraint.buffer_type = HFI_BUFFER_OUTPUT2;
+	pconstraint.num_planes = 2;
+	pconstraint.plane_format[0].stride_multiples = 128;
+	pconstraint.plane_format[0].max_stride = 8192;
+	pconstraint.plane_format[0].min_plane_buffer_height_multiple = 32;
+	pconstraint.plane_format[0].buffer_alignment = 256;
+
+	pconstraint.plane_format[1].stride_multiples = 128;
+	pconstraint.plane_format[1].max_stride = 8192;
+	pconstraint.plane_format[1].min_plane_buffer_height_multiple = 16;
+	pconstraint.plane_format[1].buffer_alignment = 256;
+
+	return hfi_gen1_set_property(inst, ptype, &pconstraint, sizeof(pconstraint));
+}
+
+static int iris_hfi_gen1_set_num_bufs(struct iris_inst *inst)
+{
+	u32 ptype = HFI_PROPERTY_PARAM_BUFFER_COUNT_ACTUAL;
+	struct hfi_buffer_count_actual buf_count;
+	int ret;
+
+	buf_count.type = HFI_BUFFER_INPUT;
+	buf_count.count_actual = inst->buffers[BUF_INPUT].actual_count;
+	buf_count.count_min_host = inst->buffers[BUF_INPUT].actual_count;
+
+	ret = hfi_gen1_set_property(inst, ptype, &buf_count, sizeof(buf_count));
+	if (ret)
+		return ret;
+
+	if (iris_split_mode_enabled(inst)) {
+		buf_count.type = HFI_BUFFER_OUTPUT;
+		buf_count.count_actual = inst->buffers[BUF_OUTPUT].actual_count;
+		buf_count.count_min_host = inst->buffers[BUF_OUTPUT].actual_count;
+
+		ret = hfi_gen1_set_property(inst, ptype, &buf_count, sizeof(buf_count));
+		if (ret)
+			return ret;
+
+		buf_count.type = HFI_BUFFER_OUTPUT2;
+		buf_count.count_actual = iris_vpu_buf_count(inst, BUF_DPB);
+		buf_count.count_min_host = iris_vpu_buf_count(inst, BUF_DPB);
+
+		ret = hfi_gen1_set_property(inst, ptype, &buf_count, sizeof(buf_count));
+	} else {
+		buf_count.type = HFI_BUFFER_OUTPUT;
+		buf_count.count_actual = inst->buffers[BUF_OUTPUT].actual_count;
+		buf_count.count_min_host = inst->buffers[BUF_OUTPUT].actual_count;
+
+		ret = hfi_gen1_set_property(inst, ptype, &buf_count, sizeof(buf_count));
+	}
+
+	return ret;
+}
+
+static int iris_hfi_gen1_set_multistream(struct iris_inst *inst)
+{
+	u32 ptype = HFI_PROPERTY_PARAM_VDEC_MULTI_STREAM;
+	struct hfi_multi_stream multi = {0};
+	int ret;
+
+	if (iris_split_mode_enabled(inst)) {
+		multi.buffer_type = HFI_BUFFER_OUTPUT;
+		multi.enable = 0;
+
+		ret = hfi_gen1_set_property(inst, ptype, &multi, sizeof(multi));
+		if (ret)
+			return ret;
+
+		multi.buffer_type = HFI_BUFFER_OUTPUT2;
+		multi.enable = 1;
+
+		ret = hfi_gen1_set_property(inst, ptype, &multi, sizeof(multi));
+	} else {
+		multi.buffer_type = HFI_BUFFER_OUTPUT;
+		multi.enable = 1;
+
+		ret = hfi_gen1_set_property(inst, ptype, &multi, sizeof(multi));
+		if (ret)
+			return ret;
+
+		multi.buffer_type = HFI_BUFFER_OUTPUT2;
+		multi.enable = 0;
+
+		ret = hfi_gen1_set_property(inst, ptype, &multi, sizeof(multi));
+	}
+
+	return ret;
+}
+
+static int iris_hfi_gen1_set_bufsize(struct iris_inst *inst)
+{
+	const u32 ptype = HFI_PROPERTY_PARAM_BUFFER_SIZE_ACTUAL;
+	struct hfi_buffer_size_actual bufsz;
+	int ret;
+
+	if (iris_split_mode_enabled(inst)) {
+		bufsz.type = HFI_BUFFER_OUTPUT;
+		bufsz.size = iris_vpu_dec_dpb_size(inst);
+
+		ret = hfi_gen1_set_property(inst, ptype, &bufsz, sizeof(bufsz));
+		if (ret)
+			return ret;
+
+		bufsz.type = HFI_BUFFER_OUTPUT2;
+		bufsz.size = inst->buffers[BUF_OUTPUT].size;
+
+		ret = hfi_gen1_set_property(inst, ptype, &bufsz, sizeof(bufsz));
+	} else {
+		bufsz.type = HFI_BUFFER_OUTPUT;
+		bufsz.size = inst->buffers[BUF_OUTPUT].size;
+
+		ret = hfi_gen1_set_property(inst, ptype, &bufsz, sizeof(bufsz));
+		if (ret)
+			return ret;
+
+		bufsz.type = HFI_BUFFER_OUTPUT2;
+		bufsz.size = 0;
+
+		ret = hfi_gen1_set_property(inst, ptype, &bufsz, sizeof(bufsz));
+	}
+
+	return ret;
+}
+
+static int iris_hfi_gen1_session_set_config_params(struct iris_inst *inst, u32 plane)
+{
+	struct iris_core *core = inst->core;
+	u32 config_params_size, i, j;
+	const u32 *config_params;
+	int ret;
+
+	static const struct iris_hfi_prop_type_handle prop_type_handle_inp_arr[] = {
+		{HFI_PROPERTY_PARAM_FRAME_SIZE,
+			iris_hfi_gen1_set_resolution},
+		{HFI_PROPERTY_CONFIG_VIDEOCORES_USAGE,
+			iris_hfi_gen1_decide_core},
+		{HFI_PROPERTY_PARAM_UNCOMPRESSED_FORMAT_SELECT,
+			iris_hfi_gen1_set_raw_format},
+		{HFI_PROPERTY_PARAM_UNCOMPRESSED_PLANE_ACTUAL_CONSTRAINTS_INFO,
+			iris_hfi_gen1_set_format_constraints},
+		{HFI_PROPERTY_PARAM_BUFFER_COUNT_ACTUAL,
+			iris_hfi_gen1_set_num_bufs},
+		{HFI_PROPERTY_PARAM_VDEC_MULTI_STREAM,
+			iris_hfi_gen1_set_multistream},
+		{HFI_PROPERTY_PARAM_BUFFER_SIZE_ACTUAL,
+			iris_hfi_gen1_set_bufsize},
+	};
+
+	static const struct iris_hfi_prop_type_handle prop_type_handle_out_arr[] = {
+		{HFI_PROPERTY_PARAM_FRAME_SIZE,
+			iris_hfi_gen1_set_resolution},
+		{HFI_PROPERTY_PARAM_UNCOMPRESSED_FORMAT_SELECT,
+			iris_hfi_gen1_set_raw_format},
+		{HFI_PROPERTY_PARAM_UNCOMPRESSED_PLANE_ACTUAL_CONSTRAINTS_INFO,
+			iris_hfi_gen1_set_format_constraints},
+		{HFI_PROPERTY_PARAM_BUFFER_COUNT_ACTUAL,
+			iris_hfi_gen1_set_num_bufs},
+		{HFI_PROPERTY_PARAM_VDEC_MULTI_STREAM,
+			iris_hfi_gen1_set_multistream},
+		{HFI_PROPERTY_PARAM_BUFFER_SIZE_ACTUAL,
+			iris_hfi_gen1_set_bufsize},
+	};
+
+	config_params = core->iris_platform_data->input_config_params;
+	config_params_size = core->iris_platform_data->input_config_params_size;
+
+	if (V4L2_TYPE_IS_OUTPUT(plane)) {
+		for (i = 0; i < config_params_size; i++) {
+			for (j = 0; j < ARRAY_SIZE(prop_type_handle_inp_arr); j++) {
+				if (prop_type_handle_inp_arr[j].type == config_params[i]) {
+					ret = prop_type_handle_inp_arr[j].handle(inst);
+					if (ret)
+						return ret;
+					break;
+				}
+			}
+		}
+	} else if (V4L2_TYPE_IS_CAPTURE(plane)) {
+		for (i = 0; i < config_params_size; i++) {
+			for (j = 0; j < ARRAY_SIZE(prop_type_handle_out_arr); j++) {
+				if (prop_type_handle_out_arr[j].type == config_params[i]) {
+					ret = prop_type_handle_out_arr[j].handle(inst);
+					if (ret)
+						return ret;
+					break;
+				}
+			}
+		}
+	}
+
+	return 0;
+}
+
 static const struct iris_hfi_command_ops iris_hfi_gen1_command_ops = {
 	.sys_init = iris_hfi_gen1_sys_init,
 	.sys_image_version = iris_hfi_gen1_sys_image_version,
 	.sys_interframe_powercollapse = iris_hfi_gen1_sys_interframe_powercollapse,
 	.sys_pc_prep = iris_hfi_gen1_sys_pc_prep,
 	.session_open = iris_hfi_gen1_session_open,
+	.session_set_config_params = iris_hfi_gen1_session_set_config_params,
+	.session_set_property = iris_hfi_gen1_session_set_property,
 	.session_start = iris_hfi_gen1_session_start,
 	.session_stop = iris_hfi_gen1_session_stop,
 	.session_close = iris_hfi_gen1_session_close,
diff --git a/drivers/media/platform/qcom/iris/iris_hfi_gen1_defines.h b/drivers/media/platform/qcom/iris/iris_hfi_gen1_defines.h
index 295c0355058d..8b48a082bcd3 100644
--- a/drivers/media/platform/qcom/iris/iris_hfi_gen1_defines.h
+++ b/drivers/media/platform/qcom/iris/iris_hfi_gen1_defines.h
@@ -23,6 +23,8 @@
 #define HFI_CMD_SYS_SESSION_INIT			0x10007
 #define HFI_CMD_SYS_SESSION_END				0x10008
 
+#define HFI_CMD_SESSION_SET_PROPERTY			0x11001
+
 #define HFI_CMD_SESSION_LOAD_RESOURCES			0x211001
 #define HFI_CMD_SESSION_START				0x211002
 #define HFI_CMD_SESSION_STOP				0x211003
@@ -40,9 +42,32 @@
 #define HFI_FLUSH_OUTPUT				0x1000002
 #define HFI_FLUSH_OUTPUT2				0x1000003
 #define HFI_FLUSH_ALL					0x1000004
+
+#define HFI_PROPERTY_PARAM_BUFFER_COUNT_ACTUAL				0x201001
+#define HFI_PROPERTY_PARAM_UNCOMPRESSED_PLANE_ACTUAL_CONSTRAINTS_INFO	0x201002
+#define HFI_PROPERTY_PARAM_BUFFER_ALLOC_MODE				0x201008
+#define HFI_PROPERTY_PARAM_BUFFER_SIZE_ACTUAL				0x20100c
+
+#define HFI_PROPERTY_CONFIG_VDEC_POST_LOOP_DEBLOCKER	0x1200001
+
+#define HFI_BUFFER_INPUT				0x1
+#define HFI_BUFFER_OUTPUT				0x2
+#define HFI_BUFFER_OUTPUT2				0x3
+
 #define HFI_PROPERTY_SYS_CODEC_POWER_PLANE_CTRL		0x5
 #define HFI_PROPERTY_SYS_IMAGE_VERSION			0x6
 
+#define HFI_PROPERTY_PARAM_FRAME_SIZE			0x1001
+#define HFI_PROPERTY_PARAM_UNCOMPRESSED_FORMAT_SELECT	0x1003
+#define HFI_PROPERTY_PARAM_WORK_MODE			0x1015
+#define HFI_PROPERTY_PARAM_WORK_ROUTE			0x1017
+#define HFI_PROPERTY_CONFIG_VIDEOCORES_USAGE		0x2002
+
+#define HFI_PROPERTY_PARAM_VDEC_MULTI_STREAM		0x1003001
+#define HFI_CORE_ID_1					1
+#define HFI_COLOR_FORMAT_NV12				0x02
+#define HFI_COLOR_FORMAT_NV12_UBWC			0x8002
+
 #define HFI_MSG_SYS_INIT				0x20001
 #define HFI_MSG_SYS_SESSION_INIT			0x20006
 #define HFI_MSG_SYS_SESSION_END				0x20007
@@ -93,6 +118,12 @@ struct hfi_sys_get_property_pkt {
 	u32 data;
 };
 
+struct hfi_session_set_property_pkt {
+	struct hfi_session_hdr_pkt shdr;
+	u32 num_properties;
+	u32 data[];
+};
+
 struct hfi_sys_pc_prep_pkt {
 	struct hfi_pkt_hdr hdr;
 };
@@ -144,6 +175,58 @@ struct hfi_enable {
 	u32 enable;
 };
 
+struct hfi_framesize {
+	u32 buffer_type;
+	u32 width;
+	u32 height;
+};
+
+struct hfi_videocores_usage_type {
+	u32 video_core_enable_mask;
+};
+
+struct hfi_video_work_mode {
+	u32 video_work_mode;
+};
+
+struct hfi_video_work_route {
+	u32 video_work_route;
+};
+
+struct hfi_uncompressed_format_select {
+	u32 buffer_type;
+	u32 format;
+};
+
+struct hfi_uncompressed_plane_constraints {
+	u32 stride_multiples;
+	u32 max_stride;
+	u32 min_plane_buffer_height_multiple;
+	u32 buffer_alignment;
+};
+
+struct hfi_uncompressed_plane_actual_constraints_info {
+	u32 buffer_type;
+	u32 num_planes;
+	struct hfi_uncompressed_plane_constraints plane_format[2];
+};
+
+struct hfi_buffer_count_actual {
+	u32 type;
+	u32 count_actual;
+	u32 count_min_host;
+};
+
+struct hfi_buffer_size_actual {
+	u32 type;
+	u32 size;
+};
+
+struct hfi_multi_stream {
+	u32 buffer_type;
+	u32 enable;
+};
+
 struct hfi_msg_sys_debug_pkt {
 	struct hfi_pkt_hdr hdr;
 	u32 msg_type;
diff --git a/drivers/media/platform/qcom/iris/iris_hfi_gen2.h b/drivers/media/platform/qcom/iris/iris_hfi_gen2.h
index 76f0c9032a92..8170c1fef569 100644
--- a/drivers/media/platform/qcom/iris/iris_hfi_gen2.h
+++ b/drivers/media/platform/qcom/iris/iris_hfi_gen2.h
@@ -18,10 +18,12 @@ struct iris_core;
  *
  * @inst: pointer to iris_instance structure
  * @packet: HFI packet
+ * @src_subcr_params: subscription params to fw on input port
  */
 struct iris_inst_hfi_gen2 {
 	struct iris_inst		inst;
 	struct iris_hfi_header		*packet;
+	struct hfi_subscription_params	src_subcr_params;
 };
 
 void iris_hfi_gen2_command_ops_init(struct iris_core *core);
diff --git a/drivers/media/platform/qcom/iris/iris_hfi_gen2_command.c b/drivers/media/platform/qcom/iris/iris_hfi_gen2_command.c
index b0557917fc52..0845b75aafe9 100644
--- a/drivers/media/platform/qcom/iris/iris_hfi_gen2_command.c
+++ b/drivers/media/platform/qcom/iris/iris_hfi_gen2_command.c
@@ -3,9 +3,12 @@
  * Copyright (c) 2022-2024 Qualcomm Innovation Center, Inc. All rights reserved.
  */
 
+#include <linux/bitfield.h>
+
 #include "iris_hfi_gen2.h"
 #include "iris_hfi_gen2_packet.h"
 
+#define UNSPECIFIED_COLOR_FORMAT 5
 #define NUM_SYS_INIT_PACKETS 8
 
 #define SYS_INIT_PKT_SIZE (sizeof(struct iris_hfi_header) + \
@@ -97,6 +100,301 @@ static u32 iris_hfi_gen2_get_port(u32 plane)
 	}
 }
 
+static int iris_hfi_gen2_session_set_property(struct iris_inst *inst, u32 packet_type, u32 flag,
+					      u32 plane, u32 payload_type, void *payload,
+					      u32 payload_size)
+{
+	struct iris_inst_hfi_gen2 *inst_hfi_gen2 = to_iris_inst_hfi_gen2(inst);
+
+	iris_hfi_gen2_packet_session_property(inst,
+					      packet_type,
+					      flag,
+					      plane,
+					      payload_type,
+					      payload,
+					      payload_size);
+
+	return iris_hfi_queue_cmd_write(inst->core, inst_hfi_gen2->packet,
+					inst_hfi_gen2->packet->size);
+}
+
+static int iris_hfi_gen2_set_bitstream_resolution(struct iris_inst *inst)
+{
+	struct iris_inst_hfi_gen2 *inst_hfi_gen2 = to_iris_inst_hfi_gen2(inst);
+	u32 port = iris_hfi_gen2_get_port(V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE);
+	u32 resolution = inst->fmt_src->fmt.pix_mp.width << 16 |
+		inst->fmt_src->fmt.pix_mp.height;
+
+	inst_hfi_gen2->src_subcr_params.bitstream_resolution = resolution;
+
+	return iris_hfi_gen2_session_set_property(inst,
+						  HFI_PROP_BITSTREAM_RESOLUTION,
+						  HFI_HOST_FLAGS_NONE,
+						  port,
+						  HFI_PAYLOAD_U32,
+						  &resolution,
+						  sizeof(u32));
+}
+
+static int iris_hfi_gen2_set_crop_offsets(struct iris_inst *inst)
+{
+	u32 bottom_offset = (inst->fmt_src->fmt.pix_mp.height - inst->crop.height);
+	u32 right_offset = (inst->fmt_src->fmt.pix_mp.width - inst->crop.width);
+	struct iris_inst_hfi_gen2 *inst_hfi_gen2 = to_iris_inst_hfi_gen2(inst);
+	u32 port = iris_hfi_gen2_get_port(V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE);
+	u32 left_offset = inst->crop.left;
+	u32 top_offset = inst->crop.top;
+	u32 payload[2];
+
+	payload[0] = FIELD_PREP(GENMASK(31, 16), left_offset) | top_offset;
+	payload[1] = FIELD_PREP(GENMASK(31, 16), right_offset) | bottom_offset;
+	inst_hfi_gen2->src_subcr_params.crop_offsets[0] = payload[0];
+	inst_hfi_gen2->src_subcr_params.crop_offsets[1] = payload[1];
+
+	return iris_hfi_gen2_session_set_property(inst,
+						  HFI_PROP_CROP_OFFSETS,
+						  HFI_HOST_FLAGS_NONE,
+						  port,
+						  HFI_PAYLOAD_64_PACKED,
+						  &payload,
+						  sizeof(u64));
+}
+
+static int iris_hfi_gen2_set_bit_dpeth(struct iris_inst *inst)
+{
+	struct iris_inst_hfi_gen2 *inst_hfi_gen2 = to_iris_inst_hfi_gen2(inst);
+	u32 port = iris_hfi_gen2_get_port(V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE);
+	u32 bitdepth = BIT_DEPTH_8;
+
+	inst_hfi_gen2->src_subcr_params.bit_depth = bitdepth;
+
+	return iris_hfi_gen2_session_set_property(inst,
+						  HFI_PROP_LUMA_CHROMA_BIT_DEPTH,
+						  HFI_HOST_FLAGS_NONE,
+						  port,
+						  HFI_PAYLOAD_U32,
+						  &bitdepth,
+						  sizeof(u32));
+}
+
+static int iris_hfi_gen2_set_coded_frames(struct iris_inst *inst)
+{
+	struct iris_inst_hfi_gen2 *inst_hfi_gen2 = to_iris_inst_hfi_gen2(inst);
+	u32 port = iris_hfi_gen2_get_port(V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE);
+	u32 coded_frames = 0;
+
+	if (inst->fw_caps[CODED_FRAMES].value == CODED_FRAMES_PROGRESSIVE)
+		coded_frames = HFI_BITMASK_FRAME_MBS_ONLY_FLAG;
+	inst_hfi_gen2->src_subcr_params.coded_frames = coded_frames;
+
+	return iris_hfi_gen2_session_set_property(inst,
+						  HFI_PROP_CODED_FRAMES,
+						  HFI_HOST_FLAGS_NONE,
+						  port,
+						  HFI_PAYLOAD_U32,
+						  &coded_frames,
+						  sizeof(u32));
+}
+
+static int iris_hfi_gen2_set_min_output_count(struct iris_inst *inst)
+{
+	struct iris_inst_hfi_gen2 *inst_hfi_gen2 = to_iris_inst_hfi_gen2(inst);
+	u32 port = iris_hfi_gen2_get_port(V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE);
+	u32 min_output = inst->buffers[BUF_OUTPUT].min_count;
+
+	inst_hfi_gen2->src_subcr_params.fw_min_count = min_output;
+
+	return iris_hfi_gen2_session_set_property(inst,
+						  HFI_PROP_BUFFER_FW_MIN_OUTPUT_COUNT,
+						  HFI_HOST_FLAGS_NONE,
+						  port,
+						  HFI_PAYLOAD_U32,
+						  &min_output,
+						  sizeof(u32));
+}
+
+static int iris_hfi_gen2_set_picture_order_count(struct iris_inst *inst)
+{
+	struct iris_inst_hfi_gen2 *inst_hfi_gen2 = to_iris_inst_hfi_gen2(inst);
+	u32 port = iris_hfi_gen2_get_port(V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE);
+	u32 poc = 0;
+
+	inst_hfi_gen2->src_subcr_params.pic_order_cnt = poc;
+
+	return iris_hfi_gen2_session_set_property(inst,
+						  HFI_PROP_PIC_ORDER_CNT_TYPE,
+						  HFI_HOST_FLAGS_NONE,
+						  port,
+						  HFI_PAYLOAD_U32,
+						  &poc,
+						  sizeof(u32));
+}
+
+static int iris_hfi_gen2_set_colorspace(struct iris_inst *inst)
+{
+	struct iris_inst_hfi_gen2 *inst_hfi_gen2 = to_iris_inst_hfi_gen2(inst);
+	u32 port = iris_hfi_gen2_get_port(V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE);
+	struct v4l2_pix_format_mplane *pixmp = &inst->fmt_src->fmt.pix_mp;
+	u32 video_signal_type_present_flag = 0, color_info;
+	u32 matrix_coeff = HFI_MATRIX_COEFF_RESERVED;
+	u32 video_format = UNSPECIFIED_COLOR_FORMAT;
+	u32 full_range = V4L2_QUANTIZATION_DEFAULT;
+	u32 transfer_char = HFI_TRANSFER_RESERVED;
+	u32 colour_description_present_flag = 0;
+	u32 primaries = HFI_PRIMARIES_RESERVED;
+
+	if (pixmp->colorspace != V4L2_COLORSPACE_DEFAULT ||
+	    pixmp->ycbcr_enc != V4L2_YCBCR_ENC_DEFAULT ||
+	    pixmp->xfer_func != V4L2_XFER_FUNC_DEFAULT) {
+		colour_description_present_flag = 1;
+		video_signal_type_present_flag = 1;
+		primaries = iris_hfi_gen2_get_color_primaries(pixmp->colorspace);
+		matrix_coeff = iris_hfi_gen2_get_matrix_coefficients(pixmp->ycbcr_enc);
+		transfer_char = iris_hfi_gen2_get_transfer_char(pixmp->xfer_func);
+	}
+
+	if (pixmp->quantization != V4L2_QUANTIZATION_DEFAULT) {
+		video_signal_type_present_flag = 1;
+		full_range = pixmp->quantization == V4L2_QUANTIZATION_FULL_RANGE ? 1 : 0;
+	}
+
+	color_info = iris_hfi_gen2_get_color_info(matrix_coeff, transfer_char, primaries,
+						  colour_description_present_flag, full_range,
+						  video_format, video_signal_type_present_flag);
+
+	inst_hfi_gen2->src_subcr_params.color_info = color_info;
+
+	return iris_hfi_gen2_session_set_property(inst,
+						  HFI_PROP_SIGNAL_COLOR_INFO,
+						  HFI_HOST_FLAGS_NONE,
+						  port,
+						  HFI_PAYLOAD_32_PACKED,
+						  &color_info,
+						  sizeof(u32));
+}
+
+static int iris_hfi_gen2_set_profile(struct iris_inst *inst)
+{
+	struct iris_inst_hfi_gen2 *inst_hfi_gen2 = to_iris_inst_hfi_gen2(inst);
+	u32 port = iris_hfi_gen2_get_port(V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE);
+	u32 profile = inst->fw_caps[PROFILE].value;
+
+	inst_hfi_gen2->src_subcr_params.profile = profile;
+
+	return iris_hfi_gen2_session_set_property(inst,
+						  HFI_PROP_PROFILE,
+						  HFI_HOST_FLAGS_NONE,
+						  port,
+						  HFI_PAYLOAD_U32_ENUM,
+						  &profile,
+						  sizeof(u32));
+}
+
+static int iris_hfi_gen2_set_level(struct iris_inst *inst)
+{
+	struct iris_inst_hfi_gen2 *inst_hfi_gen2 = to_iris_inst_hfi_gen2(inst);
+	u32 port = iris_hfi_gen2_get_port(V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE);
+	u32 level = inst->fw_caps[LEVEL].value;
+
+	inst_hfi_gen2->src_subcr_params.level = level;
+
+	return iris_hfi_gen2_session_set_property(inst,
+						  HFI_PROP_LEVEL,
+						  HFI_HOST_FLAGS_NONE,
+						  port,
+						  HFI_PAYLOAD_U32_ENUM,
+						  &level,
+						  sizeof(u32));
+}
+
+static int iris_hfi_gen2_set_colorformat(struct iris_inst *inst)
+{
+	u32 port = iris_hfi_gen2_get_port(V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE);
+	u32 hfi_colorformat, pixelformat;
+
+	pixelformat = inst->fmt_dst->fmt.pix_mp.pixelformat;
+	hfi_colorformat = pixelformat == V4L2_PIX_FMT_NV12 ? HFI_COLOR_FMT_NV12 : 0;
+
+	return iris_hfi_gen2_session_set_property(inst,
+						  HFI_PROP_COLOR_FORMAT,
+						  HFI_HOST_FLAGS_NONE,
+						  port,
+						  HFI_PAYLOAD_U32,
+						  &hfi_colorformat,
+						  sizeof(u32));
+}
+
+static int iris_hfi_gen2_set_linear_stride_scanline(struct iris_inst *inst)
+{
+	u32 port = iris_hfi_gen2_get_port(V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE);
+	u32 pixelformat = inst->fmt_dst->fmt.pix_mp.pixelformat;
+	u32 scanline_y = inst->fmt_dst->fmt.pix_mp.height;
+	u32 stride_y = inst->fmt_dst->fmt.pix_mp.width;
+	u32 scanline_uv = scanline_y / 2;
+	u32 stride_uv = stride_y;
+	u32 payload[2];
+
+	if (pixelformat != V4L2_PIX_FMT_NV12)
+		return 0;
+
+	payload[0] = stride_y << 16 | scanline_y;
+	payload[1] = stride_uv << 16 | scanline_uv;
+
+	return iris_hfi_gen2_session_set_property(inst,
+						  HFI_PROP_LINEAR_STRIDE_SCANLINE,
+						  HFI_HOST_FLAGS_NONE,
+						  port,
+						  HFI_PAYLOAD_U64,
+						  &payload,
+						  sizeof(u64));
+}
+
+static int iris_hfi_gen2_session_set_config_params(struct iris_inst *inst, u32 plane)
+{
+	struct iris_core *core = inst->core;
+	u32 config_params_size, i, j;
+	const u32 *config_params;
+	int ret;
+
+	static const struct iris_hfi_prop_type_handle prop_type_handle_arr[] = {
+		{HFI_PROP_BITSTREAM_RESOLUTION,       iris_hfi_gen2_set_bitstream_resolution   },
+		{HFI_PROP_CROP_OFFSETS,               iris_hfi_gen2_set_crop_offsets           },
+		{HFI_PROP_CODED_FRAMES,               iris_hfi_gen2_set_coded_frames           },
+		{HFI_PROP_LUMA_CHROMA_BIT_DEPTH,      iris_hfi_gen2_set_bit_dpeth              },
+		{HFI_PROP_BUFFER_FW_MIN_OUTPUT_COUNT, iris_hfi_gen2_set_min_output_count       },
+		{HFI_PROP_PIC_ORDER_CNT_TYPE,         iris_hfi_gen2_set_picture_order_count    },
+		{HFI_PROP_SIGNAL_COLOR_INFO,          iris_hfi_gen2_set_colorspace             },
+		{HFI_PROP_PROFILE,                    iris_hfi_gen2_set_profile                },
+		{HFI_PROP_LEVEL,                      iris_hfi_gen2_set_level                  },
+		{HFI_PROP_COLOR_FORMAT,               iris_hfi_gen2_set_colorformat            },
+		{HFI_PROP_LINEAR_STRIDE_SCANLINE,     iris_hfi_gen2_set_linear_stride_scanline },
+	};
+
+	if (V4L2_TYPE_IS_OUTPUT(plane)) {
+		config_params = core->iris_platform_data->input_config_params;
+		config_params_size = core->iris_platform_data->input_config_params_size;
+	} else {
+		config_params = core->iris_platform_data->output_config_params;
+		config_params_size = core->iris_platform_data->output_config_params_size;
+	}
+
+	if (!config_params || !config_params_size)
+		return -EINVAL;
+
+	for (i = 0; i < config_params_size; i++) {
+		for (j = 0; j < ARRAY_SIZE(prop_type_handle_arr); j++) {
+			if (prop_type_handle_arr[j].type == config_params[i]) {
+				ret = prop_type_handle_arr[j].handle(inst);
+				if (ret)
+					return ret;
+				break;
+			}
+		}
+	}
+
+	return 0;
+}
+
 static int iris_hfi_gen2_session_set_codec(struct iris_inst *inst)
 {
 	struct iris_inst_hfi_gen2 *inst_hfi_gen2 = to_iris_inst_hfi_gen2(inst);
@@ -253,6 +551,8 @@ static const struct iris_hfi_command_ops iris_hfi_gen2_command_ops = {
 	.sys_interframe_powercollapse = iris_hfi_gen2_sys_interframe_powercollapse,
 	.sys_pc_prep = iris_hfi_gen2_sys_pc_prep,
 	.session_open = iris_hfi_gen2_session_open,
+	.session_set_config_params = iris_hfi_gen2_session_set_config_params,
+	.session_set_property = iris_hfi_gen2_session_set_property,
 	.session_start = iris_hfi_gen2_session_start,
 	.session_stop = iris_hfi_gen2_session_stop,
 	.session_close = iris_hfi_gen2_session_close,
diff --git a/drivers/media/platform/qcom/iris/iris_hfi_gen2_defines.h b/drivers/media/platform/qcom/iris/iris_hfi_gen2_defines.h
index 3a9d363833da..b5b232d31ad8 100644
--- a/drivers/media/platform/qcom/iris/iris_hfi_gen2_defines.h
+++ b/drivers/media/platform/qcom/iris/iris_hfi_gen2_defines.h
@@ -19,6 +19,8 @@
 #define HFI_CMD_STOP				0x01000006
 #define HFI_CMD_END				0x01FFFFFF
 
+#define HFI_BITMASK_FRAME_MBS_ONLY_FLAG		0x00000001
+
 #define HFI_PROP_BEGIN				0x03000000
 #define HFI_PROP_IMAGE_VERSION			0x03000001
 #define HFI_PROP_INTRA_FRAME_POWER_COLLAPSE	0x03000002
@@ -30,9 +32,23 @@
 #define HFI_PROP_UBWC_BANK_SWZL_LEVEL3		0x03000008
 #define HFI_PROP_UBWC_BANK_SPREADING		0x03000009
 #define HFI_PROP_CODEC				0x03000100
+#define HFI_PROP_COLOR_FORMAT			0x03000101
+#define HFI_PROP_BITSTREAM_RESOLUTION		0x03000103
+#define HFI_PROP_LINEAR_STRIDE_SCANLINE		0x03000104
+#define HFI_PROP_CROP_OFFSETS			0x03000105
 #define HFI_PROP_PROFILE			0x03000107
 #define HFI_PROP_LEVEL				0x03000108
+#define HFI_PROP_STAGE				0x0300010a
+#define HFI_PROP_PIPE				0x0300010b
+#define HFI_PROP_LUMA_CHROMA_BIT_DEPTH		0x0300010f
+#define HFI_PROP_CODED_FRAMES			0x03000120
+#define HFI_PROP_BUFFER_HOST_MAX_COUNT		0x03000123
+#define HFI_PROP_BUFFER_FW_MIN_OUTPUT_COUNT	0x03000124
+#define HFI_PROP_PIC_ORDER_CNT_TYPE		0x03000128
+#define HFI_PROP_QUALITY_MODE			0x03000148
+#define HFI_PROP_SIGNAL_COLOR_INFO		0x03000155
 #define HFI_PROP_DEC_DEFAULT_HEADER		0x03000168
+#define HFI_PROP_DEC_START_FROM_RAP_FRAME	0x03000169
 #define HFI_PROP_END				0x03FFFFFF
 
 #define HFI_SESSION_ERROR_BEGIN			0x04000000
@@ -48,6 +64,17 @@
 #define HFI_SYS_ERROR_WD_TIMEOUT		0x05000001
 #define HFI_SYSTEM_ERROR_END			0x05FFFFFF
 
+enum hfi_color_format {
+	HFI_COLOR_FMT_OPAQUE			= 0,
+	HFI_COLOR_FMT_NV12			= 1,
+	HFI_COLOR_FMT_NV12_UBWC			= 2,
+	HFI_COLOR_FMT_P010			= 3,
+	HFI_COLOR_FMT_TP10_UBWC			= 4,
+	HFI_COLOR_FMT_RGBA8888			= 5,
+	HFI_COLOR_FMT_RGBA8888_UBWC		= 6,
+	HFI_COLOR_FMT_NV21			= 7,
+};
+
 enum hfi_codec_type {
 	HFI_CODEC_DECODE_AVC			= 1,
 	HFI_CODEC_ENCODE_AVC			= 2,
diff --git a/drivers/media/platform/qcom/iris/iris_hfi_gen2_packet.c b/drivers/media/platform/qcom/iris/iris_hfi_gen2_packet.c
index 739b2ce5bfae..d77fa29f44fc 100644
--- a/drivers/media/platform/qcom/iris/iris_hfi_gen2_packet.c
+++ b/drivers/media/platform/qcom/iris/iris_hfi_gen2_packet.c
@@ -7,6 +7,85 @@
 #include "iris_hfi_gen2.h"
 #include "iris_hfi_gen2_packet.h"
 
+u32 iris_hfi_gen2_get_color_primaries(u32 primaries)
+{
+	switch (primaries) {
+	case V4L2_COLORSPACE_DEFAULT:
+		return HFI_PRIMARIES_RESERVED;
+	case V4L2_COLORSPACE_REC709:
+		return HFI_PRIMARIES_BT709;
+	case V4L2_COLORSPACE_470_SYSTEM_M:
+		return HFI_PRIMARIES_BT470_SYSTEM_M;
+	case V4L2_COLORSPACE_470_SYSTEM_BG:
+		return HFI_PRIMARIES_BT470_SYSTEM_BG;
+	case V4L2_COLORSPACE_SMPTE170M:
+		return HFI_PRIMARIES_BT601_525;
+	case V4L2_COLORSPACE_SMPTE240M:
+		return HFI_PRIMARIES_SMPTE_ST240M;
+	case V4L2_COLORSPACE_BT2020:
+		return HFI_PRIMARIES_BT2020;
+	case V4L2_COLORSPACE_DCI_P3:
+		return HFI_PRIMARIES_SMPTE_RP431_2;
+	default:
+		return HFI_PRIMARIES_RESERVED;
+	}
+}
+
+u32 iris_hfi_gen2_get_transfer_char(u32 characterstics)
+{
+	switch (characterstics) {
+	case V4L2_XFER_FUNC_DEFAULT:
+		return HFI_TRANSFER_RESERVED;
+	case V4L2_XFER_FUNC_709:
+		return HFI_TRANSFER_BT709;
+	case V4L2_XFER_FUNC_SMPTE240M:
+		return HFI_TRANSFER_SMPTE_ST240M;
+	case V4L2_XFER_FUNC_SRGB:
+		return HFI_TRANSFER_SRGB_SYCC;
+	case V4L2_XFER_FUNC_SMPTE2084:
+		return HFI_TRANSFER_SMPTE_ST2084_PQ;
+	default:
+		return HFI_TRANSFER_RESERVED;
+	}
+}
+
+u32 iris_hfi_gen2_get_matrix_coefficients(u32 coefficients)
+{
+	switch (coefficients) {
+	case V4L2_YCBCR_ENC_DEFAULT:
+		return HFI_MATRIX_COEFF_RESERVED;
+	case V4L2_YCBCR_ENC_709:
+		return HFI_MATRIX_COEFF_BT709;
+	case V4L2_YCBCR_ENC_XV709:
+		return HFI_MATRIX_COEFF_BT709;
+	case V4L2_YCBCR_ENC_XV601:
+		return HFI_MATRIX_COEFF_BT470_SYS_BG_OR_BT601_625;
+	case V4L2_YCBCR_ENC_601:
+		return HFI_MATRIX_COEFF_BT601_525_BT1358_525_OR_625;
+	case V4L2_YCBCR_ENC_SMPTE240M:
+		return HFI_MATRIX_COEFF_SMPTE_ST240;
+	case V4L2_YCBCR_ENC_BT2020:
+		return HFI_MATRIX_COEFF_BT2020_NON_CONSTANT;
+	case V4L2_YCBCR_ENC_BT2020_CONST_LUM:
+		return HFI_MATRIX_COEFF_BT2020_CONSTANT;
+	default:
+		return HFI_MATRIX_COEFF_RESERVED;
+	}
+}
+
+u32 iris_hfi_gen2_get_color_info(u32 matrix_coeff, u32 transfer_char, u32 primaries,
+				 u32 colour_description_present_flag, u32 full_range,
+				 u32 video_format, u32 video_signal_type_present_flag)
+{
+	return (matrix_coeff & 0xFF) |
+		((transfer_char << 8) & 0xFF00) |
+		((primaries << 16) & 0xFF0000) |
+		((colour_description_present_flag << 24) & 0x1000000) |
+		((full_range << 25) & 0x2000000) |
+		((video_format << 26) & 0x1C000000) |
+		((video_signal_type_present_flag << 29) & 0x20000000);
+}
+
 static void iris_hfi_gen2_create_header(struct iris_hfi_header *hdr,
 					u32 session_id, u32 header_id)
 {
diff --git a/drivers/media/platform/qcom/iris/iris_hfi_gen2_packet.h b/drivers/media/platform/qcom/iris/iris_hfi_gen2_packet.h
index 120592322e78..bb86abd25adb 100644
--- a/drivers/media/platform/qcom/iris/iris_hfi_gen2_packet.h
+++ b/drivers/media/platform/qcom/iris/iris_hfi_gen2_packet.h
@@ -61,6 +61,13 @@ struct iris_hfi_packet {
 	u32 payload[];
 };
 
+u32 iris_hfi_gen2_get_color_primaries(u32 primaries);
+u32 iris_hfi_gen2_get_transfer_char(u32 characterstics);
+u32 iris_hfi_gen2_get_matrix_coefficients(u32 coefficients);
+u32 iris_hfi_gen2_get_color_info(u32 matrix_coeff, u32 transfer_char, u32 primaries,
+				 u32 colour_description_present_flag, u32 full_range,
+				 u32 video_format, u32 video_signal_type_present_flag);
+
 void iris_hfi_gen2_packet_sys_init(struct iris_core *core, struct iris_hfi_header *hdr);
 void iris_hfi_gen2_packet_image_version(struct iris_core *core, struct iris_hfi_header *hdr);
 void iris_hfi_gen2_packet_session_command(struct iris_inst *inst, u32 pkt_type,
diff --git a/drivers/media/platform/qcom/iris/iris_hfi_gen2_response.c b/drivers/media/platform/qcom/iris/iris_hfi_gen2_response.c
index 0bd43a07394a..ebd82ef13424 100644
--- a/drivers/media/platform/qcom/iris/iris_hfi_gen2_response.c
+++ b/drivers/media/platform/qcom/iris/iris_hfi_gen2_response.c
@@ -163,6 +163,53 @@ static int iris_hfi_gen2_handle_session_command(struct iris_inst *inst,
 	return 0;
 }
 
+static int iris_hfi_gen2_handle_session_property(struct iris_inst *inst,
+						 struct iris_hfi_packet *pkt)
+{
+	struct iris_inst_hfi_gen2 *inst_hfi_gen2 = to_iris_inst_hfi_gen2(inst);
+
+	if (pkt->port != HFI_PORT_BITSTREAM)
+		return 0;
+
+	if (pkt->flags & HFI_FW_FLAGS_INFORMATION)
+		return 0;
+
+	switch (pkt->type) {
+	case HFI_PROP_BITSTREAM_RESOLUTION:
+		inst_hfi_gen2->src_subcr_params.bitstream_resolution = pkt->payload[0];
+		break;
+	case HFI_PROP_CROP_OFFSETS:
+		inst_hfi_gen2->src_subcr_params.crop_offsets[0] = pkt->payload[0];
+		inst_hfi_gen2->src_subcr_params.crop_offsets[1] = pkt->payload[1];
+		break;
+	case HFI_PROP_CODED_FRAMES:
+		inst_hfi_gen2->src_subcr_params.coded_frames = pkt->payload[0];
+		break;
+	case HFI_PROP_BUFFER_FW_MIN_OUTPUT_COUNT:
+		inst_hfi_gen2->src_subcr_params.fw_min_count = pkt->payload[0];
+		break;
+	case HFI_PROP_PIC_ORDER_CNT_TYPE:
+		inst_hfi_gen2->src_subcr_params.pic_order_cnt = pkt->payload[0];
+		break;
+	case HFI_PROP_SIGNAL_COLOR_INFO:
+		inst_hfi_gen2->src_subcr_params.color_info = pkt->payload[0];
+		break;
+	case HFI_PROP_PROFILE:
+		inst_hfi_gen2->src_subcr_params.profile = pkt->payload[0];
+		break;
+	case HFI_PROP_LEVEL:
+		inst_hfi_gen2->src_subcr_params.level = pkt->payload[0];
+		break;
+	case HFI_PROP_QUALITY_MODE:
+	case HFI_PROP_STAGE:
+	case HFI_PROP_PIPE:
+	default:
+		break;
+	}
+
+	return 0;
+}
+
 static int iris_hfi_gen2_handle_image_version_property(struct iris_core *core,
 						       struct iris_hfi_packet *pkt)
 {
@@ -247,6 +294,8 @@ static int iris_hfi_gen2_handle_session_response(struct iris_core *core,
 	static const struct iris_hfi_gen2_inst_hfi_range range[] = {
 		{HFI_SESSION_ERROR_BEGIN, HFI_SESSION_ERROR_END,
 		 iris_hfi_gen2_handle_session_error},
+		{HFI_PROP_BEGIN, HFI_PROP_END,
+		 iris_hfi_gen2_handle_session_property},
 		{HFI_CMD_BEGIN, HFI_CMD_END,
 		 iris_hfi_gen2_handle_session_command },
 	};
diff --git a/drivers/media/platform/qcom/iris/iris_platform_common.h b/drivers/media/platform/qcom/iris/iris_platform_common.h
index c45928a6c4fe..c54eb2a491b0 100644
--- a/drivers/media/platform/qcom/iris/iris_platform_common.h
+++ b/drivers/media/platform/qcom/iris/iris_platform_common.h
@@ -6,12 +6,31 @@
 #ifndef _IRIS_PLATFORM_COMMON_H_
 #define _IRIS_PLATFORM_COMMON_H_
 
+#include <linux/bits.h>
+
 struct iris_core;
+struct iris_inst;
 
 #define IRIS_PAS_ID				9
 #define HW_RESPONSE_TIMEOUT_VALUE               (1000) /* milliseconds */
 #define AUTOSUSPEND_DELAY_VALUE			(HW_RESPONSE_TIMEOUT_VALUE + 500) /* milliseconds */
 
+#define REGISTER_BIT_DEPTH(luma, chroma)	((luma) << 16 | (chroma))
+#define BIT_DEPTH_8				REGISTER_BIT_DEPTH(8, 8)
+#define CODED_FRAMES_PROGRESSIVE		0x0
+#define DEFAULT_MAX_HOST_BUF_COUNT		64
+#define DEFAULT_MAX_HOST_BURST_BUF_COUNT	256
+enum stage_type {
+	STAGE_1 = 1,
+	STAGE_2 = 2,
+};
+
+enum pipe_type {
+	PIPE_1 = 1,
+	PIPE_2 = 2,
+	PIPE_4 = 4,
+};
+
 extern struct iris_platform_data sm8550_data;
 
 enum platform_clk_type {
@@ -53,6 +72,14 @@ struct platform_inst_caps {
 enum platform_inst_fw_cap_type {
 	PROFILE = 1,
 	LEVEL,
+	INPUT_BUF_HOST_MAX_COUNT,
+	STAGE,
+	PIPE,
+	POC,
+	CODED_FRAMES,
+	BIT_DEPTH,
+	RAP_FRAME,
+	DEBLOCK,
 	INST_FW_CAP_MAX,
 };
 
@@ -74,6 +101,8 @@ struct platform_inst_fw_cap {
 	s64 value;
 	u32 hfi_id;
 	enum platform_inst_fw_cap_flags flags;
+	int (*set)(struct iris_inst *inst,
+		   enum platform_inst_fw_cap_type cap_id);
 };
 
 struct iris_core_power {
@@ -114,6 +143,10 @@ struct iris_platform_data {
 	struct ubwc_config_data *ubwc_config;
 	u32 num_vpp_pipe;
 	u32 max_session_count;
+	const u32 *input_config_params;
+	unsigned int input_config_params_size;
+	const u32 *output_config_params;
+	unsigned int output_config_params_size;
 };
 
 #endif
diff --git a/drivers/media/platform/qcom/iris/iris_platform_sm8550.c b/drivers/media/platform/qcom/iris/iris_platform_sm8550.c
index 7e3703adb5b3..4b7372805d69 100644
--- a/drivers/media/platform/qcom/iris/iris_platform_sm8550.c
+++ b/drivers/media/platform/qcom/iris/iris_platform_sm8550.c
@@ -4,6 +4,7 @@
  */
 
 #include "iris_core.h"
+#include "iris_ctrls.h"
 #include "iris_hfi_gen2.h"
 #include "iris_hfi_gen2_defines.h"
 #include "iris_platform_common.h"
@@ -24,6 +25,7 @@ static struct platform_inst_fw_cap inst_fw_cap_sm8550[] = {
 		.value = V4L2_MPEG_VIDEO_H264_PROFILE_HIGH,
 		.hfi_id = HFI_PROP_PROFILE,
 		.flags = CAP_FLAG_OUTPUT_PORT | CAP_FLAG_MENU,
+		.set = iris_set_u32_enum,
 	},
 	{
 		.cap_id = LEVEL,
@@ -52,6 +54,69 @@ static struct platform_inst_fw_cap inst_fw_cap_sm8550[] = {
 		.value = V4L2_MPEG_VIDEO_H264_LEVEL_6_1,
 		.hfi_id = HFI_PROP_LEVEL,
 		.flags = CAP_FLAG_OUTPUT_PORT | CAP_FLAG_MENU,
+		.set = iris_set_u32_enum,
+	},
+	{
+		.cap_id = INPUT_BUF_HOST_MAX_COUNT,
+		.min = DEFAULT_MAX_HOST_BUF_COUNT,
+		.max = DEFAULT_MAX_HOST_BURST_BUF_COUNT,
+		.step_or_mask = 1,
+		.value = DEFAULT_MAX_HOST_BUF_COUNT,
+		.hfi_id = HFI_PROP_BUFFER_HOST_MAX_COUNT,
+		.flags = CAP_FLAG_INPUT_PORT,
+		.set = iris_set_u32,
+	},
+	{
+		.cap_id = STAGE,
+		.min = STAGE_1,
+		.max = STAGE_2,
+		.step_or_mask = 1,
+		.value = STAGE_2,
+		.hfi_id = HFI_PROP_STAGE,
+		.set = iris_set_stage,
+	},
+	{
+		.cap_id = PIPE,
+		.min = PIPE_1,
+		.max = PIPE_4,
+		.step_or_mask = 1,
+		.value = PIPE_4,
+		.hfi_id = HFI_PROP_PIPE,
+		.set = iris_set_pipe,
+	},
+	{
+		.cap_id = POC,
+		.min = 0,
+		.max = 2,
+		.step_or_mask = 1,
+		.value = 1,
+		.hfi_id = HFI_PROP_PIC_ORDER_CNT_TYPE,
+	},
+	{
+		.cap_id = CODED_FRAMES,
+		.min = CODED_FRAMES_PROGRESSIVE,
+		.max = CODED_FRAMES_PROGRESSIVE,
+		.step_or_mask = 0,
+		.value = CODED_FRAMES_PROGRESSIVE,
+		.hfi_id = HFI_PROP_CODED_FRAMES,
+	},
+	{
+		.cap_id = BIT_DEPTH,
+		.min = BIT_DEPTH_8,
+		.max = BIT_DEPTH_8,
+		.step_or_mask = 1,
+		.value = BIT_DEPTH_8,
+		.hfi_id = HFI_PROP_LUMA_CHROMA_BIT_DEPTH,
+	},
+	{
+		.cap_id = RAP_FRAME,
+		.min = 0,
+		.max = 1,
+		.step_or_mask = 1,
+		.value = 1,
+		.hfi_id = HFI_PROP_DEC_START_FROM_RAP_FRAME,
+		.flags = CAP_FLAG_INPUT_PORT,
+		.set = iris_set_u32,
 	},
 };
 
@@ -102,6 +167,22 @@ static struct tz_cp_config tz_cp_config_sm8550 = {
 	.cp_nonpixel_size = 0x24800000,
 };
 
+static const u32 sm8550_vdec_input_config_params[] = {
+	HFI_PROP_BITSTREAM_RESOLUTION,
+	HFI_PROP_CROP_OFFSETS,
+	HFI_PROP_CODED_FRAMES,
+	HFI_PROP_BUFFER_FW_MIN_OUTPUT_COUNT,
+	HFI_PROP_PIC_ORDER_CNT_TYPE,
+	HFI_PROP_PROFILE,
+	HFI_PROP_LEVEL,
+	HFI_PROP_SIGNAL_COLOR_INFO,
+};
+
+static const u32 sm8550_vdec_output_config_params[] = {
+	HFI_PROP_COLOR_FORMAT,
+	HFI_PROP_LINEAR_STRIDE_SCANLINE,
+};
+
 struct iris_platform_data sm8550_data = {
 	.get_instance = iris_hfi_gen2_get_instance,
 	.init_hfi_command_ops = iris_hfi_gen2_command_ops_init,
@@ -130,4 +211,12 @@ struct iris_platform_data sm8550_data = {
 	.ubwc_config = &ubwc_config_sm8550,
 	.num_vpp_pipe = 4,
 	.max_session_count = 16,
+	.input_config_params =
+		sm8550_vdec_input_config_params,
+	.input_config_params_size =
+		ARRAY_SIZE(sm8550_vdec_input_config_params),
+	.output_config_params =
+		sm8550_vdec_output_config_params,
+	.output_config_params_size =
+		ARRAY_SIZE(sm8550_vdec_output_config_params),
 };
diff --git a/drivers/media/platform/qcom/iris/iris_utils.c b/drivers/media/platform/qcom/iris/iris_utils.c
index f2ada13dfcaf..7e252ee1d165 100644
--- a/drivers/media/platform/qcom/iris/iris_utils.c
+++ b/drivers/media/platform/qcom/iris/iris_utils.c
@@ -8,6 +8,20 @@
 #include "iris_instance.h"
 #include "iris_utils.h"
 
+bool iris_res_is_less_than(u32 width, u32 height,
+			   u32 ref_width, u32 ref_height)
+{
+	u32 num_mbs = NUM_MBS_PER_FRAME(height, width);
+	u32 max_side = max(ref_width, ref_height);
+
+	if (num_mbs < NUM_MBS_PER_FRAME(ref_height, ref_width) &&
+	    width < max_side &&
+	    height < max_side)
+		return true;
+
+	return false;
+}
+
 int iris_get_mbpf(struct iris_inst *inst)
 {
 	struct v4l2_format *inp_f = inst->fmt_src;
@@ -17,6 +31,11 @@ int iris_get_mbpf(struct iris_inst *inst)
 	return NUM_MBS_PER_FRAME(height, width);
 }
 
+bool iris_split_mode_enabled(struct iris_inst *inst)
+{
+	return inst->fmt_dst->fmt.pix_mp.pixelformat == V4L2_PIX_FMT_NV12;
+}
+
 int iris_wait_for_session_response(struct iris_inst *inst, bool is_flush)
 {
 	struct iris_core *core = inst->core;
diff --git a/drivers/media/platform/qcom/iris/iris_utils.h b/drivers/media/platform/qcom/iris/iris_utils.h
index a4a797fb11e2..0d46f50d3103 100644
--- a/drivers/media/platform/qcom/iris/iris_utils.h
+++ b/drivers/media/platform/qcom/iris/iris_utils.h
@@ -31,7 +31,10 @@ static inline enum iris_buffer_type iris_v4l2_type_to_driver(u32 type)
 	}
 }
 
+bool iris_res_is_less_than(u32 width, u32 height,
+			   u32 ref_width, u32 ref_height);
 int iris_get_mbpf(struct iris_inst *inst);
+bool iris_split_mode_enabled(struct iris_inst *inst);
 struct iris_inst *iris_get_instance(struct iris_core *core, u32 session_id);
 int iris_wait_for_session_response(struct iris_inst *inst, bool is_flush);
 
diff --git a/drivers/media/platform/qcom/iris/iris_vdec.c b/drivers/media/platform/qcom/iris/iris_vdec.c
index ef12cf8cf731..6ec34f4d4faa 100644
--- a/drivers/media/platform/qcom/iris/iris_vdec.c
+++ b/drivers/media/platform/qcom/iris/iris_vdec.c
@@ -281,6 +281,12 @@ static int iris_vdec_process_streamon_input(struct iris_inst *inst)
 
 int iris_vdec_streamon_input(struct iris_inst *inst)
 {
+	int ret;
+
+	ret = iris_set_properties(inst, V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE);
+	if (ret)
+		return ret;
+
 	return iris_vdec_process_streamon_input(inst);
 }
 
@@ -298,8 +304,13 @@ static int iris_vdec_process_streamon_output(struct iris_inst *inst)
 
 int iris_vdec_streamon_output(struct iris_inst *inst)
 {
+	const struct iris_hfi_command_ops *hfi_ops = inst->core->hfi_ops;
 	int ret;
 
+	ret = hfi_ops->session_set_config_params(inst, V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE);
+	if (ret)
+		return ret;
+
 	ret = iris_vdec_process_streamon_output(inst);
 	if (ret)
 		goto error;
diff --git a/drivers/media/platform/qcom/iris/iris_vpu_buffer.c b/drivers/media/platform/qcom/iris/iris_vpu_buffer.c
index 2402a33723ab..0a65a17f13d2 100644
--- a/drivers/media/platform/qcom/iris/iris_vpu_buffer.c
+++ b/drivers/media/platform/qcom/iris/iris_vpu_buffer.c
@@ -6,6 +6,24 @@
 #include "iris_instance.h"
 #include "iris_vpu_buffer.h"
 
+u32 iris_vpu_dec_dpb_size(struct iris_inst *inst)
+{
+	if (iris_split_mode_enabled(inst))
+		return iris_get_buffer_size(inst, BUF_DPB);
+	else
+		return 0;
+}
+
+static inline int iris_vpu_dpb_count(struct iris_inst *inst)
+{
+	if (iris_split_mode_enabled(inst)) {
+		return inst->fw_min_count ?
+			inst->fw_min_count : inst->buffers[BUF_OUTPUT].min_count;
+	}
+
+	return 0;
+}
+
 int iris_vpu_buf_count(struct iris_inst *inst, enum iris_buffer_type buffer_type)
 {
 	switch (buffer_type) {
@@ -13,6 +31,8 @@ int iris_vpu_buf_count(struct iris_inst *inst, enum iris_buffer_type buffer_type
 		return MIN_BUFFERS;
 	case BUF_OUTPUT:
 		return inst->fw_min_count;
+	case BUF_DPB:
+		return iris_vpu_dpb_count(inst);
 	default:
 		return 0;
 	}
diff --git a/drivers/media/platform/qcom/iris/iris_vpu_buffer.h b/drivers/media/platform/qcom/iris/iris_vpu_buffer.h
index f0f974cebd8a..03a181c5754d 100644
--- a/drivers/media/platform/qcom/iris/iris_vpu_buffer.h
+++ b/drivers/media/platform/qcom/iris/iris_vpu_buffer.h
@@ -10,6 +10,7 @@ struct iris_inst;
 
 #define MIN_BUFFERS			4
 
+u32 iris_vpu_dec_dpb_size(struct iris_inst *inst);
 int iris_vpu_buf_count(struct iris_inst *inst, enum iris_buffer_type buffer_type);
 
 #endif

-- 
2.34.1


