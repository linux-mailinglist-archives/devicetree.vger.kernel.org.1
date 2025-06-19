Return-Path: <devicetree+bounces-187584-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 24D08AE088B
	for <lists+devicetree@lfdr.de>; Thu, 19 Jun 2025 16:20:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B609D1890028
	for <lists+devicetree@lfdr.de>; Thu, 19 Jun 2025 14:21:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA61F21A45A;
	Thu, 19 Jun 2025 14:20:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FC5FiWU5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1737621578D
	for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 14:20:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750342827; cv=none; b=CJ8BY8wxIdGBe9iqV8/o4MUwz+Fb3E+AycrRamfKQm/uOtT5o51wFIEXeMVIHdj4YQ1HFxzgy1pd851B50nLhX+Zi+vCIRMgIgzLsPIkiyO/8oS0xd8f2aQTu30zsh+GbowPzItQF/gh0dnqalonJfPuqyQvicAJf2FFn0ox7l4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750342827; c=relaxed/simple;
	bh=9LSytQPyTFkBJt9YzIaXb6/U5LogpeOg/rPyGmYojDo=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=QkXNCUvfQrsKXbRemmyxM8xn5TCGm4Q8KaRfFTxAvai1MdNh5LUfZo99GjP0pVVZmDAZUDF1nEzDJgoBZjFA4/3X3UaxaqqSoHE9LEk+NLglCxXTrWbbHMq9YS0QJxTuCfsWwjxbVW0BASTKMAD5Kxp1n7hp2rkYDXSw2wHZOc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FC5FiWU5; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55J6Bokd030300
	for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 14:20:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=x740bfZ74Zy
	o3mZSJA/M7WOOgB+n7paS30h2fBwgGpY=; b=FC5FiWU5ODMS0zolTRubrvo2gB/
	fhmIuYcu3gliC7OZaO3tJCjEelaUmSLsFTymT5MT3l2IQyDdSRYVUQRM02iI4ajL
	h7M8dZev3S8CR4On+DrIhhBlQ/AR4jYrn37+N3bZCu0fopmiW/Ly3Rs65dWMnKRi
	gUpwfWOokk2YtDJdCHJcOfpqFoJ07xEtj5F1lDC/vBPFVAl2pVgXTqMSWegPmt0r
	kco/8UR+CVBBWZVxOCVCEoOcgKU3/eedOkx3FVt2yZk3cjgUO8ZHRiEGXE+qOPsV
	QHezMvF36IXK6FHn0QZPGZLleVdTNkcP+tvkebj/ITpbUAKM6CFwtTuCkCw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4791enr7b2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 14:20:25 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7d38c5c3130so139640185a.1
        for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 07:20:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750342824; x=1750947624;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=x740bfZ74Zyo3mZSJA/M7WOOgB+n7paS30h2fBwgGpY=;
        b=otNbYX7oz7BkU9IeUiGbOBu8qsHaNIm1tdmjGZqmWCR9GsaAC04UQmkVU9vTvs729o
         PhAo2Y+mw+0Fwa9KAsHn7PGYcZ9QxwKMO6TSv+TANfm5k7/zLJ58OUtOC6Qg00JGosOL
         /vLMFBDwgQ/IPQUreS6royRzb0HS/7bu8O2dXV0dQFsdvZgSDUhSHWhoHqLFIVbTK2Ae
         N0Pa/Dop6gUB6Zo9D5U6KU08WnRpOF66Nnudoc2br6wfH+oZriDW9V8pzf2JvuYNYQyG
         XPjWC+DhBmnYBlhz8mM2RGSBsJ7Rw6gZMsGyLcUhwajRXmTpA97s2lnavYSMugILyKt2
         TReg==
X-Forwarded-Encrypted: i=1; AJvYcCU9vGkkWEJpcjVsriWYxTS9jXokwlHqNDliXdEfvCEQmX1gH14bJqI1tMLO3rcx/26Ged3xyoJ8+/1+@vger.kernel.org
X-Gm-Message-State: AOJu0Yxz1UTAktxI6TGZyyx3uJGSkCX5oLM8yT6mvJeY1bjVR8qoRo0M
	wqNe6feo6/o+vLuJSzEUAVM6KNFRvk2M8tWNPttGE1EnNYRzzT/WirKfHJNEG70S2/DltQu1+eA
	UgXyQF2b3lr7+tAOjDHMw/dBfL+22F4ZrMUWkZQ9PGgjbQbdeLBT6lNtxNSWyqen2
X-Gm-Gg: ASbGncskXJUvqB1J2F+1wEc50ng7n26YJYaX+tnbeijsm9HE+IF7K05hrIjnIbb2+Xs
	IFGwkCF2/OXRnRA8fUKLWG54/7dGN6RGYMwWITWFBJDAjFitxOJ4hP6J6ZTpci5753UCWM4EbIp
	xYPmA+mgC7oulUSxjNI+ag6IEilKsBybNQwuOiqQBtZGR0v5Yj/XBxshh9rudg+MC31BCvuyJmL
	rO7giXdYx1WQ0lMSwwgfPWf0XsuIzTQxNLMjHy3QZJa+bjyZui3q71q9pxpXDoH4XkILeyWzP5+
	hDEtJyiJmxle7tmXoKeZ4xz2H2wWxRu+5RuMtGARnHacVc0IF/EiO5owvTXefXPjprl3Rn6P+gR
	O
X-Received: by 2002:a05:622a:449:b0:476:790c:739a with SMTP id d75a77b69052e-4a73c53b227mr346015131cf.20.1750342823962;
        Thu, 19 Jun 2025 07:20:23 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGuvB3QSsqOhcA68iKw3sw1OOnMq5rILOV8ArnQmN50cN2dbnScqX/SmniUXaTYwvhOX/Cx7Q==
X-Received: by 2002:a05:622a:449:b0:476:790c:739a with SMTP id d75a77b69052e-4a73c53b227mr346014201cf.20.1750342823325;
        Thu, 19 Jun 2025 07:20:23 -0700 (PDT)
Received: from trex.. (132.red-79-144-190.dynamicip.rima-tde.net. [79.144.190.132])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a58963561csm7254312f8f.47.2025.06.19.07.20.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Jun 2025 07:20:22 -0700 (PDT)
From: Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>
To: jorge.ramirez@oss.qualcomm.com, quic_vgarodia@quicinc.com,
        quic_dikshita@quicinc.com, bryan.odonoghue@linaro.org,
        mchehab@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, andersson@kernel.org, konradybcio@kernel.org,
        stanimir.k.varbanov@gmail.com
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: [PATCH v2 5/7] media: venus: hfi_plat_v6_lite: Populate decode capabilities
Date: Thu, 19 Jun 2025 16:20:10 +0200
Message-Id: <20250619142012.1768981-6-jorge.ramirez@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250619142012.1768981-1-jorge.ramirez@oss.qualcomm.com>
References: <20250613140402.3619465-1-jorge.ramirez@oss.qualcomm.com>
 <20250619142012.1768981-1-jorge.ramirez@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: EWCnle6XKRmcHT00a59N2CKMmRZjuvw7
X-Authority-Analysis: v=2.4 cv=D6RHKuRj c=1 sm=1 tr=0 ts=68541ca9 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=wjE3nLva0YkvARyJ+Gfmxg==:17
 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=hV3zkybWQsGKz9K1FyYA:9
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-GUID: EWCnle6XKRmcHT00a59N2CKMmRZjuvw7
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjE5MDExOSBTYWx0ZWRfX+Sqb0dxMrlhJ
 i+sDI/KWNLWDxwof9PijZw44GFVFxNvo/u7AFp6WbijJ1dJUBk9diyBvjhwDmmOzO6TPNK/bHys
 il0p8km5LvltV2UGKSk+zXvdwaQpI16LlfAKDFggM+ZOr3hY4isWunJWa5smslW1VmtRoumpaoV
 o8HQrtbIUc7IM5CQo/3//mFZwCUQqYj0K6Ys5jIDOj7piTZ+Utv8PZIHEHQRQJ/PMiois6KIEuB
 xfMrrQaZw9CkxuU0LhEDQrlXCzEt6mGCTTODB87ngoCqLrLD1adZm5uLFyFogxOcmQ99WkHIFLR
 6W7LfnuRbRJrt+kZAdLKb7ZawpI+lzuZjiuXVvqFL/K5oaH9hG8VBxzImslOG68GMNpQUesbUb8
 qFFk5p+mbu5f7zrvF6Fr/JwKAbHKv1NSVKnRIMRQGjYv3D331LoTWI/MameXc+mOLuDhZaJz
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-19_05,2025-06-18_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 impostorscore=0 phishscore=0 adultscore=0
 suspectscore=0 mlxlogscore=999 clxscore=1015 mlxscore=0 lowpriorityscore=0
 spamscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506190119

Add hfi platform file with decoding capabilities for hfi v6_lite.

Signed-off-by: Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>
---
 drivers/media/platform/qcom/venus/Makefile    |   2 +-
 .../media/platform/qcom/venus/hfi_platform.c  |   2 +
 .../media/platform/qcom/venus/hfi_platform.h  |   1 +
 .../qcom/venus/hfi_platform_v6_lite.c         | 148 ++++++++++++++++++
 4 files changed, 152 insertions(+), 1 deletion(-)
 create mode 100644 drivers/media/platform/qcom/venus/hfi_platform_v6_lite.c

diff --git a/drivers/media/platform/qcom/venus/Makefile b/drivers/media/platform/qcom/venus/Makefile
index 91ee6be10292..4a6a942db58b 100644
--- a/drivers/media/platform/qcom/venus/Makefile
+++ b/drivers/media/platform/qcom/venus/Makefile
@@ -5,7 +5,7 @@ venus-core-objs += core.o helpers.o firmware.o \
 		   hfi_venus.o hfi_msgs.o hfi_cmds.o hfi.o \
 		   hfi_parser.o pm_helpers.o dbgfs.o \
 		   hfi_platform.o hfi_platform_v4.o \
-		   hfi_platform_v6.o hfi_plat_bufs_v6.o \
+		   hfi_platform_v6.o hfi_plat_bufs_v6.o hfi_platform_v6_lite.o \
 
 venus-dec-objs += vdec.o vdec_ctrls.o
 venus-enc-objs += venc.o venc_ctrls.o
diff --git a/drivers/media/platform/qcom/venus/hfi_platform.c b/drivers/media/platform/qcom/venus/hfi_platform.c
index 643e5aa138f5..f56b8f9946d7 100644
--- a/drivers/media/platform/qcom/venus/hfi_platform.c
+++ b/drivers/media/platform/qcom/venus/hfi_platform.c
@@ -13,6 +13,8 @@ const struct hfi_platform *hfi_platform_get(enum hfi_version version)
 		return &hfi_plat_v4;
 	case HFI_VERSION_6XX:
 		return &hfi_plat_v6;
+	case HFI_VERSION_6XX_LITE:
+		return &hfi_plat_v6_lite;
 	default:
 		break;
 	}
diff --git a/drivers/media/platform/qcom/venus/hfi_platform.h b/drivers/media/platform/qcom/venus/hfi_platform.h
index ec89a90a8129..6356e4bd0de2 100644
--- a/drivers/media/platform/qcom/venus/hfi_platform.h
+++ b/drivers/media/platform/qcom/venus/hfi_platform.h
@@ -58,6 +58,7 @@ struct hfi_platform {
 
 extern const struct hfi_platform hfi_plat_v4;
 extern const struct hfi_platform hfi_plat_v6;
+extern const struct hfi_platform hfi_plat_v6_lite;
 
 const struct hfi_platform *hfi_platform_get(enum hfi_version version);
 unsigned long hfi_platform_get_codec_vpp_freq(enum hfi_version version, u32 codec,
diff --git a/drivers/media/platform/qcom/venus/hfi_platform_v6_lite.c b/drivers/media/platform/qcom/venus/hfi_platform_v6_lite.c
new file mode 100644
index 000000000000..41958a3e353b
--- /dev/null
+++ b/drivers/media/platform/qcom/venus/hfi_platform_v6_lite.c
@@ -0,0 +1,148 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (c) 2025, The Linux Foundation. All rights reserved.
+ */
+#include "hfi_platform.h"
+
+static const struct hfi_plat_caps caps[] = {
+{
+	.codec = HFI_VIDEO_CODEC_H264,
+	.domain = VIDC_SESSION_TYPE_DEC,
+	.caps[0] = {HFI_CAPABILITY_FRAME_WIDTH, 128, 1920, 1},
+	.caps[1] = {HFI_CAPABILITY_FRAME_HEIGHT, 128, 1080, 1},
+	.caps[2] = {HFI_CAPABILITY_MBS_PER_FRAME, 64, 8160, 1},
+	.caps[3] = {HFI_CAPABILITY_BITRATE, 1, 60000000, 1 },
+	.caps[4] = {HFI_CAPABILITY_MBS_PER_SECOND, 64, 244800, 1},
+	.caps[5] = {HFI_CAPABILITY_FRAMERATE, 1, 120, 1},
+	.caps[6] = {HFI_CAPABILITY_MAX_VIDEOCORES, 0, 1, 1},
+	.num_caps = 7,
+	.pl[0] = {HFI_H264_PROFILE_BASELINE, HFI_H264_LEVEL_1},
+	.pl[1] = {HFI_H264_PROFILE_MAIN, HFI_H264_LEVEL_41},
+	.pl[2] = {HFI_H264_PROFILE_HIGH, HFI_H264_LEVEL_5},
+	.pl[3] = {HFI_H264_PROFILE_CONSTRAINED_BASE, HFI_H264_LEVEL_41},
+	.pl[4] = {HFI_H264_PROFILE_CONSTRAINED_HIGH, HFI_H264_LEVEL_41},
+	.num_pl = 5,
+	.fmts[0] = {HFI_BUFFER_OUTPUT, HFI_COLOR_FORMAT_NV12_UBWC},
+	.fmts[1] = {HFI_BUFFER_OUTPUT2, HFI_COLOR_FORMAT_NV12_UBWC},
+	.fmts[2] = {HFI_BUFFER_OUTPUT2, HFI_COLOR_FORMAT_NV12},
+	.fmts[3] = {HFI_BUFFER_OUTPUT2, HFI_COLOR_FORMAT_NV21},
+	.num_fmts = 4,
+}, {
+	.codec = HFI_VIDEO_CODEC_HEVC,
+	.domain = VIDC_SESSION_TYPE_DEC,
+	.caps[0] = {HFI_CAPABILITY_FRAME_WIDTH, 128, 1920, 1},
+	.caps[1] = {HFI_CAPABILITY_FRAME_HEIGHT, 128, 1080, 1},
+	.caps[2] = {HFI_CAPABILITY_MBS_PER_FRAME, 64, 8160, 1},
+	.caps[3] = {HFI_CAPABILITY_BITRATE, 1, 60000000, 1 },
+	.caps[4] = {HFI_CAPABILITY_MBS_PER_SECOND, 64, 244800, 1},
+	.caps[5] = {HFI_CAPABILITY_FRAMERATE, 1, 120, 1},
+	.caps[6] = {HFI_CAPABILITY_MAX_VIDEOCORES, 0, 1, 1},
+	.num_caps = 7,
+	.pl[0] = {HFI_HEVC_PROFILE_MAIN, HFI_HEVC_LEVEL_5 | HFI_HEVC_TIER_MAIN},
+	.pl[1] = {HFI_HEVC_PROFILE_MAIN10, HFI_HEVC_LEVEL_5 | HFI_HEVC_TIER_MAIN},
+	.num_pl = 2,
+	.fmts[0] = {HFI_BUFFER_OUTPUT, HFI_COLOR_FORMAT_NV12_UBWC},
+	.fmts[1] = {HFI_BUFFER_OUTPUT2, HFI_COLOR_FORMAT_NV12_UBWC},
+	.fmts[2] = {HFI_BUFFER_OUTPUT2, HFI_COLOR_FORMAT_NV12},
+	.fmts[3] = {HFI_BUFFER_OUTPUT2, HFI_COLOR_FORMAT_NV21},
+	.num_fmts = 4,
+}, {
+	.codec = HFI_VIDEO_CODEC_VP9,
+	.domain = VIDC_SESSION_TYPE_DEC,
+	.caps[0] = {HFI_CAPABILITY_FRAME_WIDTH, 128, 1920, 1},
+	.caps[1] = {HFI_CAPABILITY_FRAME_HEIGHT, 128, 1080, 1},
+	.caps[2] = {HFI_CAPABILITY_MBS_PER_FRAME, 64, 8160, 1},
+	.caps[3] = {HFI_CAPABILITY_BITRATE, 1, 60000000, 1 },
+	.caps[4] = {HFI_CAPABILITY_MBS_PER_SECOND, 64, 244800, 1},
+	.caps[5] = {HFI_CAPABILITY_FRAMERATE, 1, 120, 1},
+	.caps[6] = {HFI_CAPABILITY_MAX_VIDEOCORES, 0, 1, 1},
+	.num_caps = 7,
+	.pl[0] = {HFI_VP9_PROFILE_P0, 200},
+	.pl[1] = {HFI_VP9_PROFILE_P2_10B, 200},
+	.num_pl = 2,
+	.fmts[0] = {HFI_BUFFER_OUTPUT, HFI_COLOR_FORMAT_NV12_UBWC},
+	.fmts[1] = {HFI_BUFFER_OUTPUT2, HFI_COLOR_FORMAT_NV12_UBWC},
+	.fmts[2] = {HFI_BUFFER_OUTPUT2, HFI_COLOR_FORMAT_NV12},
+	.fmts[3] = {HFI_BUFFER_OUTPUT2, HFI_COLOR_FORMAT_NV21},
+	.num_fmts = 4,
+} };
+
+static const struct hfi_plat_caps *get_capabilities(unsigned int *entries)
+{
+	*entries = ARRAY_SIZE(caps);
+	return caps;
+}
+
+static void get_codecs(u32 *enc_codecs, u32 *dec_codecs, u32 *count)
+{
+	*enc_codecs = 0x0;
+	*dec_codecs = HFI_VIDEO_CODEC_H264 | HFI_VIDEO_CODEC_HEVC |
+		      HFI_VIDEO_CODEC_VP9;
+	*count = 3;
+}
+
+static const struct hfi_platform_codec_freq_data codec_freq_data[] = {
+	{ V4L2_PIX_FMT_H264, VIDC_SESSION_TYPE_DEC, 440, 0, 440 },
+	{ V4L2_PIX_FMT_HEVC, VIDC_SESSION_TYPE_DEC, 440, 0, 440 },
+	{ V4L2_PIX_FMT_VP9, VIDC_SESSION_TYPE_DEC, 440, 0, 440 },
+};
+
+static const struct hfi_platform_codec_freq_data *
+get_codec_freq_data(u32 session_type, u32 pixfmt)
+{
+	const struct hfi_platform_codec_freq_data *data = codec_freq_data;
+	unsigned int i, data_size = ARRAY_SIZE(codec_freq_data);
+	const struct hfi_platform_codec_freq_data *found = NULL;
+
+	for (i = 0; i < data_size; i++) {
+		if (data[i].pixfmt == pixfmt &&
+		    data[i].session_type == session_type) {
+			found = &data[i];
+			break;
+		}
+	}
+
+	return found;
+}
+
+static unsigned long codec_vpp_freq(u32 session_type, u32 codec)
+{
+	const struct hfi_platform_codec_freq_data *data;
+
+	data = get_codec_freq_data(session_type, codec);
+	if (data)
+		return data->vpp_freq;
+
+	return 0;
+}
+
+static unsigned long codec_vsp_freq(u32 session_type, u32 codec)
+{
+	const struct hfi_platform_codec_freq_data *data;
+
+	data = get_codec_freq_data(session_type, codec);
+	if (data)
+		return data->vsp_freq;
+
+	return 0;
+}
+
+static unsigned long codec_lp_freq(u32 session_type, u32 codec)
+{
+	const struct hfi_platform_codec_freq_data *data;
+
+	data = get_codec_freq_data(session_type, codec);
+	if (data)
+		return data->low_power_freq;
+
+	return 0;
+}
+
+const struct hfi_platform hfi_plat_v6_lite = {
+	.codec_vpp_freq = codec_vpp_freq,
+	.codec_vsp_freq = codec_vsp_freq,
+	.codec_lp_freq = codec_lp_freq,
+	.codecs = get_codecs,
+	.capabilities = get_capabilities,
+	.bufreq = hfi_plat_bufreq_v6,
+};
-- 
2.34.1


