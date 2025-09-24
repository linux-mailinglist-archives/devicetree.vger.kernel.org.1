Return-Path: <devicetree+bounces-220923-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id AAEC3B9C7DD
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 01:18:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5981D171F76
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 23:18:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 15E772BD5AF;
	Wed, 24 Sep 2025 23:16:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="D1aBwYQn"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D60C82D7813
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:16:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758755788; cv=none; b=H6olOugOxMvq9g2424uS0M0iyxHCFHogxLXZimrn8Yj35GvQiTx1MfI7Pnm21aGFF9NjqXnE5NEXyM/nt9xKpsCyOT1GiVxJxjfTmze7c2QiTv8KH1hxytsdwuAImefXdgQeSkug+099DVYdEiLZJy82dc7kiErn/9z50ej7BjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758755788; c=relaxed/simple;
	bh=cxc2qRwoD0861RaNG9Zbj5zrmPVWUCqkDL7UdZfJm6I=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=REvggq92xDk7mp8OMq8viZL7AaY+7xGo2b/bFAfYoX2HJMDNZuJhindg38NMntSkS63h2iCm+N/N7md4Y0n8zxUe/II0t+4Q/6KRx+3ngHom5JDXrmAUaUBm8moo8JOpKVmCJFABhgR/1/u1T7Q52g4L6Z2ipZqODB1fDTJNQtY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=D1aBwYQn; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58ODGCTS002400
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:16:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	oXUnWAOvos4jrzT39LapQeiT0YJ1c+pPZoVmLxegeWI=; b=D1aBwYQnYjSIqfPS
	jrLo56URB0yPZY2rCUwtryKBzapcBVyy69XGMsjDuBsegBl4I2XNpqV8BvG3CI2W
	AGqZbOp/pg4PEUQkHNuw+SG+nLhltDbGnZp1x3n6CyGxA+GjRjf/dIOwMd5dfnrJ
	uqAICAh51GPsgXBvokOlvzF+QK21F6dtPelXDdccTaFQrjKpnFMSTYSqYxe/uguS
	r9BgLTxRfix3oaoNavO5FlJ47YvKE6abKh+qb463i0zaYcpgkRj+Qh3EQglUGKHt
	J5tSZn+Gp9P5xnjC6nPGCwT/hdAnTRpeYNCdSW8Fv/Itfs95E9MjdMI+sQQL84eY
	BurTjQ==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499k98p0vf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:16:24 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2711a55da20so2203835ad.1
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 16:16:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758755783; x=1759360583;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oXUnWAOvos4jrzT39LapQeiT0YJ1c+pPZoVmLxegeWI=;
        b=fMWDpTC5dqGr8xaMa76ObsyaKmzZtyHeE+OdvA42fqDTqAwgX6L6m13WHD4XybKZvH
         T6jApBwgV3XaVibxx36KdfH+trQco+JFfiEVNd+Kx+H+cFsp3CopdvELQ1dMed539+St
         SDOczaBv3y9NSzjKrcoC4dWidWqny0E2qoElgbJgNHOZV8lzwO6f70GOmlBYllRSCoyV
         T0UWdfJa052JyVdWtrbT0YmhtZvaiZWs+gJlj+6Gn52vtdE27NKu2qL1XXDZXLv2Fe4u
         rqtOGzG9bsi0TcOlaoQZqrKYRBmHhWnDphfOspUZjkxV/7MqzdUaruo8ZVAvdLHV2Z+f
         4wgg==
X-Forwarded-Encrypted: i=1; AJvYcCXGfmkQ4wPh/o9E5NO9BaV1kmrG6y2RSCK6iphVLpLJvLjSlpet3nQkCWGPUWYLND4EbtiWlAM/X2gY@vger.kernel.org
X-Gm-Message-State: AOJu0YwPTkvqKM0Kmh7ThLY8mgvS/c/EpNkyGVGGie5pixusq4DhVSRd
	FuSHfgOP6+qOB+lyK78IoeTSoDnISWJWU0/a1IHqJC95msUL6cmDuMPfc6S6S64Qm+EI/BXXpRu
	49239KbTfd4C6gIwSB4SFmMdnoN3mvmKQJha+a079ydfPOr4gblriXGuttyImNCe4
X-Gm-Gg: ASbGncvoqYoKiugFv4HA+wCZY+NhHyuW/qsF9L/ep0F2I8r8dl+6oUeCu5GSM0238O7
	CvkqJkMBgFjv2kiqkD52UIVvuRFPpvo8/FwUZplbM0c1O6xyF8erWrY35N9ycLo09CbIn+E2tCE
	o/47tAku9lJs1Up4Ug8fv9MeDfEEJUNne7SmJv32uPoUwbn/B/W6ss+I3tW82oxqhD7ffFy/Yc9
	Q2YF7Jtf1IbBvPmlrVMJ2aTPJATo+K8sidGt3J+PYnARchI7RwZElF6uussV7U0ARcTNLbz58dV
	mSOXDEMiyxhlWJTwaxSiLMbhvkNHeGq45aDnmaNC2Erui+k1qmtkJgHSE9dMnuMbSGUEf7MkrRE
	=
X-Received: by 2002:a17:903:1b0b:b0:266:f01a:98d5 with SMTP id d9443c01a7336-27ed4ab37a2mr16816975ad.57.1758755783302;
        Wed, 24 Sep 2025 16:16:23 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF5nrEkPRC51iRb+pI8AZxBuZmqGPCgPUitY89VbyYPzVTiUUnEeO7yHHqh8OhP39/QrDPtgQ==
X-Received: by 2002:a17:903:1b0b:b0:266:f01a:98d5 with SMTP id d9443c01a7336-27ed4ab37a2mr16816435ad.57.1758755782762;
        Wed, 24 Sep 2025 16:16:22 -0700 (PDT)
Received: from hu-vgarodia-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed671c156sm3964175ad.50.2025.09.24.16.16.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 16:16:22 -0700 (PDT)
From: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
Date: Thu, 25 Sep 2025 04:44:46 +0530
Subject: [PATCH 8/8] media: iris: Add platform data for kaanapali
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250925-knp_video-v1-8-e323c0b3c0cd@oss.qualcomm.com>
References: <20250925-knp_video-v1-0-e323c0b3c0cd@oss.qualcomm.com>
In-Reply-To: <20250925-knp_video-v1-0-e323c0b3c0cd@oss.qualcomm.com>
To: Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bryan O'Donoghue <bod@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Vishnu Reddy <quic_bvisredd@quicinc.com>,
        Vikash Garodia <vikash.garodia@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758755747; l=8461;
 i=vikash.garodia@oss.qualcomm.com; s=20241104; h=from:subject:message-id;
 bh=cxc2qRwoD0861RaNG9Zbj5zrmPVWUCqkDL7UdZfJm6I=;
 b=kPHies8I76JbEDYlPU9rhR9D+QkjjmH260bSBgE9ydVuKIX3beSDI7uW9wd/uTPa/6hg/CS2y
 vEEyp+lBhDKDfcfKevwMdxmnWK7rORnS1G8m9xo5hw39XBZCXogi53J
X-Developer-Key: i=vikash.garodia@oss.qualcomm.com; a=ed25519;
 pk=LY9Eqp4KiHWxzGNKGHbwRFEJOfRCSzG/rxQNmvZvaKE=
X-Proofpoint-GUID: aZ9nhcWjKFaPV22dP0eAqva1CzfAo0Y7
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAxOCBTYWx0ZWRfX451bMxMDn8uK
 vVHU0xbYe17c8X9B7IaqXtHWDZx1n0+CnqRJ6ZxQPtweO7F7qSYjlg+uE3HkVvhsk2UszzfDzsB
 aClGzcK9YpDoFp6kxTXm0RmeNVLuqWYBVJVu1iolS/geYsxczoDP3VmwhZG1OrMlzHCCwc/Ctir
 yjJop7HYA7/Xrbrr+kRQFRKX+MirmVrUom1CN7cyHSiCBWkjJtUrnyUXqzDRTkx3AKckKelCbOo
 rEcUUUDrdwz7d9MGhfmuP+9L3jDwOr9Ex1CLlpAwHOf3XIOzCE9GiVcwpiEngMMd/70VchpKojJ
 Zcubl6xKslbC3vQiT5KFcpqcbcBTGBK5+R9F8wjpOWIUWipRY6R77+obXEqqcGSdJzp9sxzRnDT
 vtZwj99A
X-Proofpoint-ORIG-GUID: aZ9nhcWjKFaPV22dP0eAqva1CzfAo0Y7
X-Authority-Analysis: v=2.4 cv=Dp1W+H/+ c=1 sm=1 tr=0 ts=68d47bc8 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=Sy3tz_aew2TJaLd6cD4A:9 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1011 adultscore=0 bulkscore=0 impostorscore=0
 phishscore=0 spamscore=0 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200018

Add support for the kaanapali platform by re-using the SM8550
definitions and using the vpu4 ops.
Move the configurations that differs in a per-SoC platform
header, that will contain SoC specific data.

Co-developed-by: Vishnu Reddy <quic_bvisredd@quicinc.com>
Signed-off-by: Vishnu Reddy <quic_bvisredd@quicinc.com>
Signed-off-by: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
---
 .../platform/qcom/iris/iris_platform_common.h      |  1 +
 .../media/platform/qcom/iris/iris_platform_gen2.c  | 86 ++++++++++++++++++++++
 .../platform/qcom/iris/iris_platform_kaanapali.h   | 63 ++++++++++++++++
 drivers/media/platform/qcom/iris/iris_probe.c      |  4 +
 4 files changed, 154 insertions(+)

diff --git a/drivers/media/platform/qcom/iris/iris_platform_common.h b/drivers/media/platform/qcom/iris/iris_platform_common.h
index d6d4a9fdfc189797f903dfeb56d931741b405ee2..465943db0c6671e9b564b40e31ce6ba2d645a84c 100644
--- a/drivers/media/platform/qcom/iris/iris_platform_common.h
+++ b/drivers/media/platform/qcom/iris/iris_platform_common.h
@@ -46,6 +46,7 @@ extern struct iris_platform_data sm8250_data;
 extern struct iris_platform_data sm8550_data;
 extern struct iris_platform_data sm8650_data;
 extern struct iris_platform_data sm8750_data;
+extern struct iris_platform_data kaanapali_data;
 
 enum platform_clk_type {
 	IRIS_AXI_CLK, /* AXI0 in case of platforms with multiple AXI clocks */
diff --git a/drivers/media/platform/qcom/iris/iris_platform_gen2.c b/drivers/media/platform/qcom/iris/iris_platform_gen2.c
index 00c6b9021b98aac80612b1bb9734c8dac8146bd9..142b7d84ee00a9b65420158ac1f168515b56f4a3 100644
--- a/drivers/media/platform/qcom/iris/iris_platform_gen2.c
+++ b/drivers/media/platform/qcom/iris/iris_platform_gen2.c
@@ -15,6 +15,7 @@
 #include "iris_platform_qcs8300.h"
 #include "iris_platform_sm8650.h"
 #include "iris_platform_sm8750.h"
+#include "iris_platform_kaanapali.h"
 
 #define VIDEO_ARCH_LX 1
 #define BITRATE_MAX				245000000
@@ -1095,3 +1096,88 @@ struct iris_platform_data qcs8300_data = {
 	.enc_op_int_buf_tbl = sm8550_enc_op_int_buf_tbl,
 	.enc_op_int_buf_tbl_size = ARRAY_SIZE(sm8550_enc_op_int_buf_tbl),
 };
+
+struct iris_platform_data kaanapali_data = {
+	.get_instance = iris_hfi_gen2_get_instance,
+	.init_hfi_command_ops = iris_hfi_gen2_command_ops_init,
+	.init_hfi_response_ops = iris_hfi_gen2_response_ops_init,
+	.get_vpu_buffer_size = iris_vpu4x_buf_size,
+	.vpu_ops = &iris_vpu4x_ops,
+	.set_preset_registers = iris_set_sm8550_preset_registers,
+	.icc_tbl = sm8550_icc_table,
+	.icc_tbl_size = ARRAY_SIZE(sm8550_icc_table),
+	.clk_rst_tbl = kaanapali_clk_reset_table,
+	.clk_rst_tbl_size = ARRAY_SIZE(kaanapali_clk_reset_table),
+	.bw_tbl_dec = sm8550_bw_table_dec,
+	.bw_tbl_dec_size = ARRAY_SIZE(sm8550_bw_table_dec),
+	.pmdomain_tbl = kaanapali_pmdomain_table,
+	.pmdomain_tbl_size = ARRAY_SIZE(kaanapali_pmdomain_table),
+	.opp_pd_tbl = sm8550_opp_pd_table,
+	.opp_pd_tbl_size = ARRAY_SIZE(sm8550_opp_pd_table),
+	.clk_tbl = kaanapali_clk_table,
+	.clk_tbl_size = ARRAY_SIZE(kaanapali_clk_table),
+	.opp_clk_tbl = kaanapali_opp_clk_table,
+	/* Upper bound of DMA address range */
+	.dma_mask = 0xe0000000 - 1,
+	.fwname = "qcom/vpu/vpu40_p2.mbn",
+	.pas_id = IRIS_PAS_ID,
+	.inst_caps = &platform_inst_cap_sm8550,
+	.inst_fw_caps_dec = inst_fw_cap_sm8550_dec,
+	.inst_fw_caps_dec_size = ARRAY_SIZE(inst_fw_cap_sm8550_dec),
+	.inst_fw_caps_enc = inst_fw_cap_sm8550_enc,
+	.inst_fw_caps_enc_size = ARRAY_SIZE(inst_fw_cap_sm8550_enc),
+	.tz_cp_config_data = tz_cp_config_kaanapali,
+	.tz_cp_config_data_size = ARRAY_SIZE(tz_cp_config_kaanapali),
+	.core_arch = VIDEO_ARCH_LX,
+	.hw_response_timeout = HW_RESPONSE_TIMEOUT_VALUE,
+	.ubwc_config = &ubwc_config_sm8550,
+	.num_vpp_pipe = 2,
+	.max_session_count = 16,
+	.max_core_mbpf = NUM_MBS_8K * 2,
+	.max_core_mbps = ((8192 * 4352) / 256) * 60,
+	.dec_input_config_params_default =
+		sm8550_vdec_input_config_params_default,
+	.dec_input_config_params_default_size =
+		ARRAY_SIZE(sm8550_vdec_input_config_params_default),
+	.dec_input_config_params_hevc =
+		sm8550_vdec_input_config_param_hevc,
+	.dec_input_config_params_hevc_size =
+		ARRAY_SIZE(sm8550_vdec_input_config_param_hevc),
+	.dec_input_config_params_vp9 =
+		sm8550_vdec_input_config_param_vp9,
+	.dec_input_config_params_vp9_size =
+		ARRAY_SIZE(sm8550_vdec_input_config_param_vp9),
+	.dec_output_config_params =
+		sm8550_vdec_output_config_params,
+	.dec_output_config_params_size =
+		ARRAY_SIZE(sm8550_vdec_output_config_params),
+
+	.enc_input_config_params =
+		sm8550_venc_input_config_params,
+	.enc_input_config_params_size =
+		ARRAY_SIZE(sm8550_venc_input_config_params),
+	.enc_output_config_params =
+		sm8550_venc_output_config_params,
+	.enc_output_config_params_size =
+		ARRAY_SIZE(sm8550_venc_output_config_params),
+
+	.dec_input_prop = sm8550_vdec_subscribe_input_properties,
+	.dec_input_prop_size = ARRAY_SIZE(sm8550_vdec_subscribe_input_properties),
+	.dec_output_prop_avc = sm8550_vdec_subscribe_output_properties_avc,
+	.dec_output_prop_avc_size =
+		ARRAY_SIZE(sm8550_vdec_subscribe_output_properties_avc),
+	.dec_output_prop_hevc = sm8550_vdec_subscribe_output_properties_hevc,
+	.dec_output_prop_hevc_size =
+		ARRAY_SIZE(sm8550_vdec_subscribe_output_properties_hevc),
+	.dec_output_prop_vp9 = sm8550_vdec_subscribe_output_properties_vp9,
+	.dec_output_prop_vp9_size =
+		ARRAY_SIZE(sm8550_vdec_subscribe_output_properties_vp9),
+
+	.dec_ip_int_buf_tbl = sm8550_dec_ip_int_buf_tbl,
+	.dec_ip_int_buf_tbl_size = ARRAY_SIZE(sm8550_dec_ip_int_buf_tbl),
+	.dec_op_int_buf_tbl = sm8550_dec_op_int_buf_tbl,
+	.dec_op_int_buf_tbl_size = ARRAY_SIZE(sm8550_dec_op_int_buf_tbl),
+
+	.enc_op_int_buf_tbl = sm8550_enc_op_int_buf_tbl,
+	.enc_op_int_buf_tbl_size = ARRAY_SIZE(sm8550_enc_op_int_buf_tbl),
+};
diff --git a/drivers/media/platform/qcom/iris/iris_platform_kaanapali.h b/drivers/media/platform/qcom/iris/iris_platform_kaanapali.h
new file mode 100644
index 0000000000000000000000000000000000000000..247fb9d7cb632d2e9a1e9832d087cb03ac9b7cf3
--- /dev/null
+++ b/drivers/media/platform/qcom/iris/iris_platform_kaanapali.h
@@ -0,0 +1,63 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (c) 2025 Qualcomm Innovation Center, Inc. All rights reserved.
+ */
+
+#ifndef __IRIS_PLATFORM_KAANAPALI_H__
+#define __IRIS_PLATFORM_KAANAPALI_H__
+
+#define VIDEO_REGION_VM0_SECURE_NP_ID		1
+#define VIDEO_REGION_VM0_NONSECURE_NP_ID	5
+
+static const char *const kaanapali_clk_reset_table[] = {
+	"bus0",
+	"bus1",
+	"core_freerun_reset",
+	"vcodec0_core_freerun_reset",
+};
+
+static const char *const kaanapali_pmdomain_table[] = {
+	"venus",
+	"vcodec0",
+	"vpp0",
+	"vpp1",
+	"apv",
+};
+
+static const struct platform_clk_data kaanapali_clk_table[] = {
+	{ IRIS_AXI_CLK, "iface" },
+	{ IRIS_CTRL_CLK, "core" },
+	{ IRIS_HW_CLK, "vcodec0_core" },
+	{ IRIS_AXI1_CLK, "iface1" },
+	{ IRIS_CTRL_FREERUN_CLK, "core_freerun" },
+	{ IRIS_HW_FREERUN_CLK, "vcodec0_core_freerun" },
+	{ IRIS_BSE_HW_CLK, "vcodec_bse" },
+	{ IRIS_VPP0_HW_CLK, "vcodec_vpp0" },
+	{ IRIS_VPP1_HW_CLK, "vcodec_vpp1" },
+	{ IRIS_APV_HW_CLK, "vcodec_apv" },
+};
+
+static const char *const kaanapali_opp_clk_table[] = {
+	"vcodec0_core",
+	"vcodec_apv",
+	"vcodec_bse",
+	"core",
+	NULL,
+};
+
+static struct tz_cp_config tz_cp_config_kaanapali[] = {
+	{
+		.cp_start = VIDEO_REGION_VM0_SECURE_NP_ID,
+		.cp_size = 0,
+		.cp_nonpixel_start = 0x01000000,
+		.cp_nonpixel_size = 0x24800000,
+	},
+	{
+		.cp_start = VIDEO_REGION_VM0_NONSECURE_NP_ID,
+		.cp_size = 0,
+		.cp_nonpixel_start = 0x25800000,
+		.cp_nonpixel_size = 0xda400000,
+	},
+};
+
+#endif /* __IRIS_PLATFORM_KAANAPALI_H__ */
diff --git a/drivers/media/platform/qcom/iris/iris_probe.c b/drivers/media/platform/qcom/iris/iris_probe.c
index ad82a62f8b923d818ffe77c131d7eb6da8c34002..9a0db65dbdb2eedf3974bcb8a2327e664b556ccd 100644
--- a/drivers/media/platform/qcom/iris/iris_probe.c
+++ b/drivers/media/platform/qcom/iris/iris_probe.c
@@ -370,6 +370,10 @@ static const struct of_device_id iris_dt_match[] = {
 		.compatible = "qcom,sm8750-iris",
 		.data = &sm8750_data,
 	},
+	{
+		.compatible = "qcom,kaanapali-iris",
+		.data = &kaanapali_data,
+	},
 	{ },
 };
 MODULE_DEVICE_TABLE(of, iris_dt_match);

-- 
2.34.1


