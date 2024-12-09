Return-Path: <devicetree+bounces-128751-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 18D039E9575
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 14:03:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8F84A188153B
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 13:02:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5535322A1F4;
	Mon,  9 Dec 2024 12:55:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="aWm13LZp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86787228CA8;
	Mon,  9 Dec 2024 12:55:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733748922; cv=none; b=H1jDZA9ewwAwl1VZJLP27E8YbP+wf6x3XGqmA+Ni5j+er8brh2Cd1blz05ifK6MEMnjuBz5Bt8CFGLfGQYm2L9UC9P/oOxT6BPIx9Q6df7cf2KRS1S+bGYy7PN00oH2HpcDXgsofFx3o6w10ZcUV8vfQIW0csQPgOAny9oGVgMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733748922; c=relaxed/simple;
	bh=Ih9mdInAYaMlcjvUkIJxbitSQ3O/j2CIyvKPRUUnWmY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-ID:References:
	 In-Reply-To:To:CC; b=g7V8NZCpQ6j8BLUmHcLd+ZMY34ChZZMY7y+3q52m+7oBYAY/dD8FSn/JeEO9GlBcSbExoSWcV3vlec6Eof6bpkhgaMhjIPcYmEHB7XA1gmTRsVSkk4umwT5BvuLFK7Fp7F2rBTIy9aE1Mi7tCSFgZPvxSIMyEk+NG3lVHE9jjuw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com; spf=pass smtp.mailfrom=quicinc.com; dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b=aWm13LZp; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=quicinc.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4B9A9EDh001060;
	Mon, 9 Dec 2024 12:55:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	kP/pZ+yVTLFJxzHcs/kdigBXr0Q//GQBC4R0dVVs87o=; b=aWm13LZpso4BCIrJ
	0DYb8z/ZV05hZTz7Z1lvKG1oJPBndkrzNGjQV+rxxU45GMDfeaRxNb/ecBArRZEr
	Dq6NBDMvnPhdYlZpUhC+mFV9EHE2NAxFoPVT9nTaVvjLsbCM/zjJR7/zZZMnj4mQ
	Q4CPo4NtJZ3DtjMwi8+kT5DP3j9RJV7XAUOeCKOF4gJEy94r+cNrBdFP+QvW1cGW
	1ioj590StwXCESf4h7JgizxGi2LTAh9zGJXRrLU//A7x23w+53gF42BMk2Z3Nvr0
	LBmBtPFBOsVD6Ry0E3HoS0qNcOwx/idDDx/ytU/jyemqcFZbpooX4XUcoZKZb9og
	9YHB0w==
Received: from nalasppmta02.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43cdc6cwam-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 09 Dec 2024 12:55:11 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 4B9CtAGc015283
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 9 Dec 2024 12:55:10 GMT
Received: from hu-dikshita-hyd.qualcomm.com (10.80.80.8) by
 nalasex01a.na.qualcomm.com (10.47.209.196) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Mon, 9 Dec 2024 04:55:04 -0800
From: Dikshita Agarwal <quic_dikshita@quicinc.com>
Date: Mon, 9 Dec 2024 18:22:12 +0530
Subject: [PATCH v7 27/28] media: iris: enable video driver probe of SM8250
 SoC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20241209-qcom-video-iris-v7-27-05c6bdead47b@quicinc.com>
References: <20241209-qcom-video-iris-v7-0-05c6bdead47b@quicinc.com>
In-Reply-To: <20241209-qcom-video-iris-v7-0-05c6bdead47b@quicinc.com>
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
 Agarwal" <quic_dikshita@quicinc.com>
X-Mailer: b4 0.14.1
X-Developer-Signature: v=1; a=ed25519-sha256; t=1733748748; l=9331;
 i=quic_dikshita@quicinc.com; s=20240917; h=from:subject:message-id;
 bh=Ih9mdInAYaMlcjvUkIJxbitSQ3O/j2CIyvKPRUUnWmY=;
 b=eubuV34hLKyQyX5ZcpVHP0+uj7MLye6mKtwYjjuZ4hmuWdk+TzUUjiuk9+6liMKSHmGsVdFrL
 EXxfTtRHRm/BcBgH9xZ732UaS5Eg8onDElxbOXJf3Hg//9lpfQ4kLhi
X-Developer-Key: i=quic_dikshita@quicinc.com; a=ed25519;
 pk=EEvKY6Ar1OI5SWf44FJ1Ebo1KuQEVbbf5UNPO+UHVhM=
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: kc8EZjM-t_xcZEYqLxMesISZrKz37kod
X-Proofpoint-GUID: kc8EZjM-t_xcZEYqLxMesISZrKz37kod
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 mlxscore=0
 mlxlogscore=999 malwarescore=0 bulkscore=0 lowpriorityscore=0
 clxscore=1015 suspectscore=0 spamscore=0 phishscore=0 priorityscore=1501
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412090101

Initialize the platform data and enable video driver probe of SM8250
SoC. Add a kernel param to select between venus and iris drivers for
platforms supported by both drivers, for ex: SM8250.

Signed-off-by: Dikshita Agarwal <quic_dikshita@quicinc.com>
---
 drivers/media/platform/qcom/iris/Makefile          |   1 +
 drivers/media/platform/qcom/iris/iris_ctrls.c      |   4 +
 .../platform/qcom/iris/iris_platform_common.h      |   1 +
 .../platform/qcom/iris/iris_platform_sm8250.c      | 148 +++++++++++++++++++++
 drivers/media/platform/qcom/iris/iris_probe.c      |  35 +++++
 5 files changed, 189 insertions(+)

diff --git a/drivers/media/platform/qcom/iris/Makefile b/drivers/media/platform/qcom/iris/Makefile
index ca31db847273..a746681e03cd 100644
--- a/drivers/media/platform/qcom/iris/Makefile
+++ b/drivers/media/platform/qcom/iris/Makefile
@@ -9,6 +9,7 @@ iris-objs += iris_buffer.o \
              iris_hfi_gen2_packet.o \
              iris_hfi_gen2_response.o \
              iris_hfi_queue.o \
+             iris_platform_sm8250.o \
              iris_platform_sm8550.o \
              iris_power.o \
              iris_probe.o \
diff --git a/drivers/media/platform/qcom/iris/iris_ctrls.c b/drivers/media/platform/qcom/iris/iris_ctrls.c
index 612c295dcd8e..b690578256d5 100644
--- a/drivers/media/platform/qcom/iris/iris_ctrls.c
+++ b/drivers/media/platform/qcom/iris/iris_ctrls.c
@@ -17,6 +17,8 @@ static inline bool iris_valid_cap_id(enum platform_inst_fw_cap_type cap_id)
 static enum platform_inst_fw_cap_type iris_get_cap_id(u32 id)
 {
 	switch (id) {
+	case V4L2_CID_MPEG_VIDEO_DECODER_MPEG4_DEBLOCK_FILTER:
+		return DEBLOCK;
 	case V4L2_CID_MPEG_VIDEO_H264_PROFILE:
 		return PROFILE;
 	case V4L2_CID_MPEG_VIDEO_H264_LEVEL:
@@ -32,6 +34,8 @@ static u32 iris_get_v4l2_id(enum platform_inst_fw_cap_type cap_id)
 		return 0;
 
 	switch (cap_id) {
+	case DEBLOCK:
+		return V4L2_CID_MPEG_VIDEO_DECODER_MPEG4_DEBLOCK_FILTER;
 	case PROFILE:
 		return V4L2_CID_MPEG_VIDEO_H264_PROFILE;
 	case LEVEL:
diff --git a/drivers/media/platform/qcom/iris/iris_platform_common.h b/drivers/media/platform/qcom/iris/iris_platform_common.h
index 189dd081ad0a..af24ce4fc417 100644
--- a/drivers/media/platform/qcom/iris/iris_platform_common.h
+++ b/drivers/media/platform/qcom/iris/iris_platform_common.h
@@ -34,6 +34,7 @@ enum pipe_type {
 };
 
 extern struct iris_platform_data sm8550_data;
+extern struct iris_platform_data sm8250_data;
 
 enum platform_clk_type {
 	IRIS_AXI_CLK,
diff --git a/drivers/media/platform/qcom/iris/iris_platform_sm8250.c b/drivers/media/platform/qcom/iris/iris_platform_sm8250.c
new file mode 100644
index 000000000000..9ef2fcc1a0fd
--- /dev/null
+++ b/drivers/media/platform/qcom/iris/iris_platform_sm8250.c
@@ -0,0 +1,148 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (c) 2022-2024 Qualcomm Innovation Center, Inc. All rights reserved.
+ */
+
+#include "iris_core.h"
+#include "iris_ctrls.h"
+#include "iris_platform_common.h"
+#include "iris_resources.h"
+#include "iris_hfi_gen1.h"
+#include "iris_hfi_gen1_defines.h"
+#include "iris_vpu_common.h"
+
+static struct platform_inst_fw_cap inst_fw_cap_sm8250[] = {
+	{
+		.cap_id = PIPE,
+		.min = PIPE_1,
+		.max = PIPE_4,
+		.step_or_mask = 1,
+		.value = PIPE_4,
+		.hfi_id = HFI_PROPERTY_PARAM_WORK_ROUTE,
+		.set = iris_set_pipe,
+	},
+	{
+		.cap_id = STAGE,
+		.min = STAGE_1,
+		.max = STAGE_2,
+		.step_or_mask = 1,
+		.value = STAGE_2,
+		.hfi_id = HFI_PROPERTY_PARAM_WORK_MODE,
+		.set = iris_set_stage,
+	},
+	{
+		.cap_id = DEBLOCK,
+		.min = 0,
+		.max = 1,
+		.step_or_mask = 1,
+		.value = 0,
+		.hfi_id = HFI_PROPERTY_CONFIG_VDEC_POST_LOOP_DEBLOCKER,
+		.set = iris_set_u32,
+	},
+};
+
+static struct platform_inst_caps platform_inst_cap_sm8250 = {
+	.min_frame_width = 128,
+	.max_frame_width = 8192,
+	.min_frame_height = 128,
+	.max_frame_height = 8192,
+	.max_mbpf = 138240,
+	.mb_cycles_vsp = 25,
+	.mb_cycles_vpp = 200,
+};
+
+static void iris_set_sm8250_preset_registers(struct iris_core *core)
+{
+	writel(0x0, core->reg_base + 0xB0088);
+}
+
+static const struct icc_info sm8250_icc_table[] = {
+	{ "cpu-cfg",    1000, 1000     },
+	{ "video-mem",  1000, 15000000 },
+};
+
+static const char * const sm8250_clk_reset_table[] = { "bus", "core" };
+
+static const struct bw_info sm8250_bw_table_dec[] = {
+	{ ((4096 * 2160) / 256) * 60, 2403000 },
+	{ ((4096 * 2160) / 256) * 30, 1224000 },
+	{ ((1920 * 1080) / 256) * 60,  812000 },
+	{ ((1920 * 1080) / 256) * 30,  416000 },
+};
+
+static const char * const sm8250_pmdomain_table[] = { "venus", "vcodec0" };
+
+static const char * const sm8250_opp_pd_table[] = { "mx" };
+
+static const struct platform_clk_data sm8250_clk_table[] = {
+	{IRIS_AXI_CLK,  "iface"        },
+	{IRIS_CTRL_CLK, "core"         },
+	{IRIS_HW_CLK,   "vcodec0_core" },
+};
+
+static struct tz_cp_config tz_cp_config_sm8250 = {
+	.cp_start = 0,
+	.cp_size = 0x25800000,
+	.cp_nonpixel_start = 0x01000000,
+	.cp_nonpixel_size = 0x24800000,
+};
+
+static const u32 sm8250_vdec_input_config_param[] = {
+	HFI_PROPERTY_PARAM_FRAME_SIZE,
+	HFI_PROPERTY_CONFIG_VIDEOCORES_USAGE,
+	HFI_PROPERTY_PARAM_UNCOMPRESSED_FORMAT_SELECT,
+	HFI_PROPERTY_PARAM_UNCOMPRESSED_PLANE_ACTUAL_CONSTRAINTS_INFO,
+	HFI_PROPERTY_PARAM_BUFFER_COUNT_ACTUAL,
+	HFI_PROPERTY_PARAM_VDEC_MULTI_STREAM,
+	HFI_PROPERTY_PARAM_BUFFER_SIZE_ACTUAL,
+	HFI_PROPERTY_PARAM_BUFFER_ALLOC_MODE,
+};
+
+static const u32 sm8250_dec_ip_int_buf_tbl[] = {
+	BUF_BIN,
+	BUF_SCRATCH_1,
+};
+
+static const u32 sm8250_dec_op_int_buf_tbl[] = {
+	BUF_DPB,
+};
+
+struct iris_platform_data sm8250_data = {
+	.get_instance = iris_hfi_gen1_get_instance,
+	.init_hfi_command_ops = &iris_hfi_gen1_command_ops_init,
+	.init_hfi_response_ops = iris_hfi_gen1_response_ops_init,
+	.vpu_ops = &iris_vpu2_ops,
+	.set_preset_registers = iris_set_sm8250_preset_registers,
+	.icc_tbl = sm8250_icc_table,
+	.icc_tbl_size = ARRAY_SIZE(sm8250_icc_table),
+	.clk_rst_tbl = sm8250_clk_reset_table,
+	.clk_rst_tbl_size = ARRAY_SIZE(sm8250_clk_reset_table),
+	.bw_tbl_dec = sm8250_bw_table_dec,
+	.bw_tbl_dec_size = ARRAY_SIZE(sm8250_bw_table_dec),
+	.pmdomain_tbl = sm8250_pmdomain_table,
+	.pmdomain_tbl_size = ARRAY_SIZE(sm8250_pmdomain_table),
+	.opp_pd_tbl = sm8250_opp_pd_table,
+	.opp_pd_tbl_size = ARRAY_SIZE(sm8250_opp_pd_table),
+	.clk_tbl = sm8250_clk_table,
+	.clk_tbl_size = ARRAY_SIZE(sm8250_clk_table),
+	.dma_mask = GENMASK(31, 29) - 1,
+	.fwname = "qcom/vpu-1.0/venus.mbn",
+	.pas_id = IRIS_PAS_ID,
+	.inst_caps = &platform_inst_cap_sm8250,
+	.inst_fw_caps = inst_fw_cap_sm8250,
+	.inst_fw_caps_size = ARRAY_SIZE(inst_fw_cap_sm8250),
+	.tz_cp_config_data = &tz_cp_config_sm8250,
+	.hw_response_timeout = HW_RESPONSE_TIMEOUT_VALUE,
+	.num_vpp_pipe = 4,
+	.max_session_count = 16,
+	.max_core_mbpf = (8192 * 4352) / 256,
+	.input_config_params =
+		sm8250_vdec_input_config_param,
+	.input_config_params_size =
+		ARRAY_SIZE(sm8250_vdec_input_config_param),
+
+	.dec_ip_int_buf_tbl = sm8250_dec_ip_int_buf_tbl,
+	.dec_ip_int_buf_tbl_size = ARRAY_SIZE(sm8250_dec_ip_int_buf_tbl),
+	.dec_op_int_buf_tbl = sm8250_dec_op_int_buf_tbl,
+	.dec_op_int_buf_tbl_size = ARRAY_SIZE(sm8250_dec_op_int_buf_tbl),
+};
diff --git a/drivers/media/platform/qcom/iris/iris_probe.c b/drivers/media/platform/qcom/iris/iris_probe.c
index 954cc7c0cc97..f0b83903ad00 100644
--- a/drivers/media/platform/qcom/iris/iris_probe.c
+++ b/drivers/media/platform/qcom/iris/iris_probe.c
@@ -189,6 +189,34 @@ static void iris_sys_error_handler(struct work_struct *work)
 	iris_core_init(core);
 }
 
+static bool prefer_venus = true;
+MODULE_PARM_DESC(prefer_venus, "Select whether venus or iris driver should be preferred");
+module_param(prefer_venus, bool, 0444);
+
+/* list all platforms supported by only iris driver */
+static const char *const iris_only_platforms[] = {
+	"qcom,sm8550-iris",
+	NULL,
+};
+
+/* list all platforms supported by both venus and iris drivers */
+static const char *const venus_to_iris_migration[] = {
+	"qcom,sm8250-venus",
+	NULL,
+};
+
+static bool video_drv_should_bind(struct device *dev, bool is_iris_driver)
+{
+	if (of_device_compatible_match(dev->of_node, iris_only_platforms))
+		return is_iris_driver;
+
+	/* If it is not in the migration list, use venus */
+	if (!of_device_compatible_match(dev->of_node, venus_to_iris_migration))
+		return !is_iris_driver;
+
+	return prefer_venus ? !is_iris_driver : is_iris_driver;
+}
+
 static int iris_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
@@ -196,6 +224,9 @@ static int iris_probe(struct platform_device *pdev)
 	u64 dma_mask;
 	int ret;
 
+	if (!video_drv_should_bind(&pdev->dev, true))
+		return -ENODEV;
+
 	core = devm_kzalloc(&pdev->dev, sizeof(*core), GFP_KERNEL);
 	if (!core)
 		return -ENOMEM;
@@ -324,6 +355,10 @@ static const struct of_device_id iris_dt_match[] = {
 		.compatible = "qcom,sm8550-iris",
 		.data = &sm8550_data,
 	},
+	{
+		.compatible = "qcom,sm8250-venus",
+		.data = &sm8250_data,
+	},
 	{ },
 };
 MODULE_DEVICE_TABLE(of, iris_dt_match);

-- 
2.34.1


