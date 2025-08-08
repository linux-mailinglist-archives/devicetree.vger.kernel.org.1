Return-Path: <devicetree+bounces-202653-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E24A3B1E4EA
	for <lists+devicetree@lfdr.de>; Fri,  8 Aug 2025 10:54:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id CFC024E3E1C
	for <lists+devicetree@lfdr.de>; Fri,  8 Aug 2025 08:54:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A79FB271456;
	Fri,  8 Aug 2025 08:53:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="U7LCCx/h"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC86326F45D
	for <devicetree@vger.kernel.org>; Fri,  8 Aug 2025 08:53:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754643195; cv=none; b=UvV1Oy5oJ/l1fJiXi+r3/7YKP3DgS63kfeTFXqWRVtLdcwVBlA5MMRFjkbxn/MIUlXPIpNfo3+DH/MEKEk6OjyoWTySf6cTR0kVt6h4SdmO/raHdeTvHQT9rwsr/MgGE4M3NdQ5+fj9G81Ccu8cffxLsZpDRX6CCIdHa72DjfDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754643195; c=relaxed/simple;
	bh=FtWYDAMOlWVU0crHFdMahYI4RjWy3ODiKstnWl20Nm0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=jRDTEKG4185TrJzJ41DTEI5Ovm/TuxgN65hiprwJzlG8hs5X+CpINoStsXQkbNZyDUx88ySPrCm4ZT6QkWstuEjUW+ykCoGK5EHUrylj5rut14CxzJCVqreZfn+nNA8PUhYJZRM4i61+7njWz+SNFyQV6FKvgs4oRapB/Z3tcvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=U7LCCx/h; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57874D65003512
	for <devicetree@vger.kernel.org>; Fri, 8 Aug 2025 08:53:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=oetjbHkX7aV
	XhgJ0UsOWKuwMK/u2+TJ1KQ2EO3IYymM=; b=U7LCCx/h7/f6TlRbnisYcAACKRs
	v9bKlcGeih9b/8xQ/wdTOYTdAzguSbnq7U5I1fTCwpDqIbR2YuX+9cBiwftO9LGG
	L8tuu+X9Hz4C16f5hUOA19RKSoWc/Ye55PI52nmNr6sU5D4wF9VUW/RdrDw4A1eA
	cCg0yiRRvKTAcPXeOx84jSsCaVsi1Var/oUuv7AAvTcYIuYC4cNn3uI2sNKAKiwr
	om8T+RWZk41/a19DzMixgLYYHe29np1Ge1Q9HO2lN+dJoR7Q6Dq8SvQw7D2NYSez
	6ocdXXeHQ3s9NWqOLhQvls0jQ0IJmf35zCRs7alv6x6fZeYpqnGdjXRfS1Q==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48bpw01jqc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 08 Aug 2025 08:53:12 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4b06228c36aso26060621cf.1
        for <devicetree@vger.kernel.org>; Fri, 08 Aug 2025 01:53:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754643191; x=1755247991;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oetjbHkX7aVXhgJ0UsOWKuwMK/u2+TJ1KQ2EO3IYymM=;
        b=V1o/eqMg+sQbrF0gLbIUuF/6FjCInoVZbkLvMij7DtCTDibQSCkFIquDnzBXnyOlUz
         pgbKIBMTPQtxTmrz84oRH65mqWv9cMlVUfux8p6SMIHIrhKVouUkaH6XWW3g84vmbmaL
         6mk5vDJqbpKVJM6IOONP/VpKGLSrVv8+IABwnU7oL1/LAVLzkiwEPV0fbLFJPgqpVU5w
         C2oHZkEAQdTaImy5LShG1MlU+TEGIV/k++ptkFBB2iPFMU+1RQ+US0bBcQWlm+YAMv15
         Al7Kj0cNoDSTt26CV8UQYj83fKZcFImq4i/Ikf3PHi84P8ldbjYPizQQ0OYmiREPGiPD
         bz0Q==
X-Forwarded-Encrypted: i=1; AJvYcCWwxNvicipGEh3RCdNggxXqMd9Em2cwEgAOk5eclo6WdefzX3PF+4va4ka6zg5icCbwNI0f89bHkGzW@vger.kernel.org
X-Gm-Message-State: AOJu0YxO5cRb3IEzmTz4eKN1M/eurKkrfm6bXOVJtwhVPVGAeZ1bcv2Y
	LMGNZAL7cKCRIxYPr/1T7a1xHOEPJ8xeCNA5hjc8p2eOaYiaRYBn/58P6DIL+/eYqsoMsh0cewj
	w4uxkzb6/lJ3KmPk+gdKotlpGRfBsSwLABwYlecBdHVhfhf3mhQm23zRLUwi1oW5S
X-Gm-Gg: ASbGnct2f9WD7BFuPYgmV4I5mGBEwD+O1XJXlBAkuJhWt98bsRuqwhUPF/zdNZTZXjr
	3fKc73lQ4QNuls9rYJwrHlp/61EchCIFHb2toigiZXM7NtWP9iqqkMfxrDnYtoTA7l7DZQL/HXF
	zpTGPm9vxYU7MzkOXczKOk1tbz+6fK0Q/VlT7oEdNJKgsVYnaRW54oZnm/0m2w6CgAkHxci+GyC
	ZKBWLDaVy34tY4jKIM4bYUiMQRRBb9hgf21diShXzUbyDIEd9J1RPvh1ccrwUgMIfVPrSbAJ5pT
	Fx5tdhXus5c3QjEerElK5up1xIrYvXe4UvRDUZY0/V7QT/pXJQun6bC2bveMalNaUVznMwTUd8N
	LVs9/Z2y1oZYF
X-Received: by 2002:a05:622a:a0d:b0:4b0:8872:eb1e with SMTP id d75a77b69052e-4b0aed6b4a3mr39710751cf.27.1754643191008;
        Fri, 08 Aug 2025 01:53:11 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF75ESPTjDal/YPq01vRIMHZgtwhim7i7BEvfQDldbxK/1bn0fIkPHtXtEV/BLPKlrBc+lWEg==
X-Received: by 2002:a05:622a:a0d:b0:4b0:8872:eb1e with SMTP id d75a77b69052e-4b0aed6b4a3mr39710451cf.27.1754643190549;
        Fri, 08 Aug 2025 01:53:10 -0700 (PDT)
Received: from trex.. (205.red-83-60-94.dynamicip.rima-tde.net. [83.60.94.205])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-459e5e99e04sm123818745e9.11.2025.08.08.01.53.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Aug 2025 01:53:09 -0700 (PDT)
From: Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>
To: jorge.ramirez@oss.qualcomm.com, quic_vgarodia@quicinc.com,
        quic_dikshita@quicinc.com, bryan.odonoghue@linaro.org,
        krzk+dt@kernel.org, konradybcio@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, mchehab@kernel.org, robh@kernel.org,
        andersson@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v9 4/8] media: venus: hfi_plat_v4: Add capabilities for the 4XX lite core
Date: Fri,  8 Aug 2025 10:52:56 +0200
Message-Id: <20250808085300.1403570-5-jorge.ramirez@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250808085300.1403570-1-jorge.ramirez@oss.qualcomm.com>
References: <20250808085300.1403570-1-jorge.ramirez@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: S3awti18Xxrio2RyRtNXG-5pncB70ps6
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA2MDAwOSBTYWx0ZWRfX7IIQiWySt6la
 YeZUyUKNb1J6D+IZZ86IO/qCOHWhOKIopoUshNb4Ji8c7eAvR0igI+Y7WHxNs3gHs84L/PpCrl7
 5YTkown33lC1aa+F31znJk81zYjQdDgArcTf2o+M5Xq0RzEQhFHTe9Tts+m2gUZrcMOrW2IITBw
 fH/eHjY5lC7bf7UiFGpe+GtRQNYHPXOlR3l46D7rFApSZV6vlH8EpsUstKKLOy5CmnR1kGd4qH9
 RN2hu9+AX81Ekigxk8//ZLcuEUVxFIm0zVvPdk8zBvqj769dIVLkgL5QyVwB1dRY7WsB/OAcSWw
 vMlVaR33x/e6znkXrqIj8wwj+/OnC0rEMRcD/iTiI+5aDBAzlfbsVgq35XRvB3zeGxJnYc1FvH3
 27/M2e0H
X-Proofpoint-ORIG-GUID: S3awti18Xxrio2RyRtNXG-5pncB70ps6
X-Authority-Analysis: v=2.4 cv=NsLRc9dJ c=1 sm=1 tr=0 ts=6895baf8 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=Rr2dNH5/fcnoRoBmcVUeRg==:17
 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=FQp2d-uGNuPOlmPgRbUA:9
 a=dawVfQjAaf238kedN5IG:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-08_02,2025-08-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 impostorscore=0 bulkscore=0 phishscore=0
 adultscore=0 malwarescore=0 spamscore=0 suspectscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508060009

Populate the HFI v4 lite capability set used by the AR50_LITE video
core.

These capabilities define the supported codec formats and operational
limits specific to this streamlined VPU variant.

Signed-off-by: Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 .../platform/qcom/venus/hfi_platform_v4.c     | 167 ++++++++++++++++--
 1 file changed, 151 insertions(+), 16 deletions(-)

diff --git a/drivers/media/platform/qcom/venus/hfi_platform_v4.c b/drivers/media/platform/qcom/venus/hfi_platform_v4.c
index 41e4dc28ec1b..cda888b56b5d 100644
--- a/drivers/media/platform/qcom/venus/hfi_platform_v4.c
+++ b/drivers/media/platform/qcom/venus/hfi_platform_v4.c
@@ -246,28 +246,150 @@ static const struct hfi_plat_caps caps[] = {
 	.num_fmts = 4,
 } };
 
+static const struct hfi_plat_caps caps_lite[] = {
+{
+	.codec = HFI_VIDEO_CODEC_H264,
+	.domain = VIDC_SESSION_TYPE_DEC,
+	.caps[0] = {HFI_CAPABILITY_FRAME_WIDTH, 128, 1920, 1},
+	.caps[1] = {HFI_CAPABILITY_FRAME_HEIGHT, 128, 1920, 1},
+	.caps[2] = {HFI_CAPABILITY_MBS_PER_FRAME, 64, 8160, 1},
+	.caps[3] = {HFI_CAPABILITY_BITRATE, 1, 60000000, 1 },
+	.caps[4] = {HFI_CAPABILITY_MBS_PER_SECOND, 64, 244800, 1},
+	.caps[5] = {HFI_CAPABILITY_FRAMERATE, 1, 120, 1},
+	.caps[6] = {HFI_CAPABILITY_MAX_VIDEOCORES, 0, 1, 1},
+	.num_caps = 7,
+	.pl[0] = { HFI_H264_PROFILE_BASELINE, HFI_H264_LEVEL_5},
+	.pl[1] = {HFI_H264_PROFILE_MAIN, HFI_H264_LEVEL_5},
+	.pl[2] = {HFI_H264_PROFILE_HIGH, HFI_H264_LEVEL_5},
+	.pl[3] = {HFI_H264_PROFILE_CONSTRAINED_BASE, HFI_H264_LEVEL_5},
+	.pl[4] = {HFI_H264_PROFILE_CONSTRAINED_HIGH, HFI_H264_LEVEL_5},
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
+	.caps[1] = {HFI_CAPABILITY_FRAME_HEIGHT, 128, 1920, 1},
+	.caps[2] = {HFI_CAPABILITY_MBS_PER_FRAME, 64, 8160, 1},
+	.caps[3] = {HFI_CAPABILITY_BITRATE, 1, 60000000, 1 },
+	.caps[4] = {HFI_CAPABILITY_MBS_PER_SECOND, 64, 244800, 1},
+	.caps[5] = {HFI_CAPABILITY_FRAMERATE, 1, 120, 1},
+	.caps[6] = {HFI_CAPABILITY_MAX_VIDEOCORES, 0, 1, 1},
+	.num_caps = 7,
+	.pl[0] = {HFI_HEVC_PROFILE_MAIN, HFI_HEVC_LEVEL_5 | HFI_HEVC_TIER_HIGH0 << 28 },
+	.pl[1] = {HFI_HEVC_PROFILE_MAIN10, HFI_HEVC_LEVEL_5 | HFI_HEVC_TIER_HIGH0 << 28 },
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
+	.caps[1] = {HFI_CAPABILITY_FRAME_HEIGHT, 128, 1920, 1},
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
+}, {
+	.codec = HFI_VIDEO_CODEC_H264,
+	.domain = VIDC_SESSION_TYPE_ENC,
+	.caps[0] = {HFI_CAPABILITY_FRAME_WIDTH, 128, 1920, 1},
+	.caps[1] = {HFI_CAPABILITY_FRAME_HEIGHT, 128, 1920, 1},
+	.caps[2] = {HFI_CAPABILITY_MBS_PER_FRAME, 64, 8160, 1},
+	.caps[3] = {HFI_CAPABILITY_BITRATE, 1, 60000000, 1 },
+	.caps[4] = {HFI_CAPABILITY_MBS_PER_SECOND, 64, 244800, 1},
+	.caps[5] = {HFI_CAPABILITY_FRAMERATE, 1, 120, 1},
+	.caps[6] = {HFI_CAPABILITY_MAX_VIDEOCORES, 0, 1, 1},
+	.caps[7] = {HFI_CAPABILITY_HIER_P_NUM_ENH_LAYERS, 0, 6, 1},
+	.caps[8] = {HFI_CAPABILITY_ENC_LTR_COUNT, 0, 4, 1},
+	.caps[9] = {HFI_CAPABILITY_MBS_PER_SECOND_POWERSAVE, 0, 244800, 1},
+	.caps[10] = {HFI_CAPABILITY_I_FRAME_QP, 0, 51, 1},
+	.caps[11] = {HFI_CAPABILITY_P_FRAME_QP, 0, 51, 1},
+	.caps[12] = {HFI_CAPABILITY_B_FRAME_QP, 0, 51, 1},
+	.caps[13] = {HFI_CAPABILITY_SLICE_BYTE, 1, 10, 1},
+	.caps[14] = {HFI_CAPABILITY_SLICE_MB, 1, 10, 1},
+	.num_caps = 15,
+	.pl[0] = {HFI_H264_PROFILE_BASELINE, HFI_H264_LEVEL_5},
+	.pl[1] = {HFI_H264_PROFILE_MAIN, HFI_H264_LEVEL_5},
+	.pl[2] = {HFI_H264_PROFILE_HIGH, HFI_H264_LEVEL_5},
+	.pl[3] = {HFI_H264_PROFILE_CONSTRAINED_BASE, HFI_H264_LEVEL_5},
+	.pl[4] = {HFI_H264_PROFILE_CONSTRAINED_HIGH, HFI_H264_LEVEL_5},
+	.num_pl = 5,
+	.fmts[0] = {HFI_BUFFER_INPUT, HFI_COLOR_FORMAT_NV12},
+	.fmts[1] = {HFI_BUFFER_INPUT, HFI_COLOR_FORMAT_NV12_UBWC},
+	.num_fmts = 2,
+}, {
+	.codec = HFI_VIDEO_CODEC_HEVC,
+	.domain = VIDC_SESSION_TYPE_ENC,
+	.caps[0] = {HFI_CAPABILITY_FRAME_WIDTH, 128, 1920, 1},
+	.caps[1] = {HFI_CAPABILITY_FRAME_HEIGHT, 128, 1920, 1},
+	.caps[2] = {HFI_CAPABILITY_MBS_PER_FRAME, 64, 8160, 1},
+	.caps[3] = {HFI_CAPABILITY_BITRATE, 1, 60000000, 1 },
+	.caps[4] = {HFI_CAPABILITY_MBS_PER_SECOND, 64, 244800, 1},
+	.caps[5] = {HFI_CAPABILITY_FRAMERATE, 1, 120, 1},
+	.caps[6] = {HFI_CAPABILITY_MAX_VIDEOCORES, 0, 1, 1},
+	.caps[7] = {HFI_CAPABILITY_HIER_P_NUM_ENH_LAYERS, 0, 6, 1},
+	.caps[8] = {HFI_CAPABILITY_ENC_LTR_COUNT, 0, 4, 1},
+	.caps[9] = {HFI_CAPABILITY_MBS_PER_SECOND_POWERSAVE, 0, 244800, 1},
+	.caps[10] = {HFI_CAPABILITY_I_FRAME_QP, 0, 51, 1},
+	.caps[11] = {HFI_CAPABILITY_P_FRAME_QP, 0, 51, 1},
+	.caps[12] = {HFI_CAPABILITY_B_FRAME_QP, 0, 51, 1},
+	.caps[13] = {HFI_CAPABILITY_SLICE_BYTE, 1, 10, 1},
+	.caps[14] = {HFI_CAPABILITY_SLICE_MB, 1, 10, 1},
+	.num_caps = 15,
+	.pl[0] = {HFI_HEVC_PROFILE_MAIN, HFI_HEVC_LEVEL_5 | HFI_HEVC_TIER_HIGH0},
+	.pl[1] = {HFI_HEVC_PROFILE_MAIN10, HFI_HEVC_LEVEL_5 | HFI_HEVC_TIER_HIGH0},
+	.num_pl = 2,
+	.fmts[0] = {HFI_BUFFER_INPUT, HFI_COLOR_FORMAT_NV12},
+	.fmts[1] = {HFI_BUFFER_INPUT, HFI_COLOR_FORMAT_NV12_UBWC},
+	.num_fmts = 2,
+} };
+
 static const struct hfi_plat_caps *get_capabilities(struct venus_core *core,
 						    unsigned int *entries)
 {
-	if (is_lite(core))
-		return NULL;
+	*entries = is_lite(core) ? ARRAY_SIZE(caps_lite) : ARRAY_SIZE(caps);
 
-	*entries = ARRAY_SIZE(caps);
-	return caps;
+	return is_lite(core) ? caps_lite : caps;
 }
 
 static void get_codecs(struct venus_core *core,
 		       u32 *enc_codecs, u32 *dec_codecs, u32 *count)
 {
-	if (is_lite(core))
-		return;
+	const struct hfi_plat_caps *caps;
+	unsigned int num;
+	size_t i;
+
+	*enc_codecs = 0;
+	*dec_codecs = 0;
+
+	caps = get_capabilities(core, &num);
 
-	*enc_codecs = HFI_VIDEO_CODEC_H264 | HFI_VIDEO_CODEC_HEVC |
-		      HFI_VIDEO_CODEC_VP8;
-	*dec_codecs = HFI_VIDEO_CODEC_H264 | HFI_VIDEO_CODEC_HEVC |
-		      HFI_VIDEO_CODEC_VP8 | HFI_VIDEO_CODEC_VP9 |
-		      HFI_VIDEO_CODEC_MPEG2;
-	*count = 8;
+	for (i = 0; i < num; caps++, i++) {
+		if (caps->domain == VIDC_SESSION_TYPE_ENC)
+			*enc_codecs |= caps->codec;
+		else
+			*dec_codecs |= caps->codec;
+	}
+
+	*count = num;
 }
 
 static const struct hfi_platform_codec_freq_data codec_freq_data[] =  {
@@ -281,15 +403,28 @@ static const struct hfi_platform_codec_freq_data codec_freq_data[] =  {
 	{ V4L2_PIX_FMT_VP9, VIDC_SESSION_TYPE_DEC, 200, 10, 200 },
 };
 
+static const struct hfi_platform_codec_freq_data codec_freq_data_lite[] = {
+	{ V4L2_PIX_FMT_H264, VIDC_SESSION_TYPE_DEC, 440, 0, 440 },
+	{ V4L2_PIX_FMT_HEVC, VIDC_SESSION_TYPE_DEC, 440, 0, 440 },
+	{ V4L2_PIX_FMT_VP9, VIDC_SESSION_TYPE_DEC, 440, 0, 440 },
+	{ V4L2_PIX_FMT_H264, VIDC_SESSION_TYPE_ENC, 675, 0, 675 },
+	{ V4L2_PIX_FMT_HEVC, VIDC_SESSION_TYPE_ENC, 675, 0, 675 },
+};
+
 static const struct hfi_platform_codec_freq_data *
 get_codec_freq_data(struct venus_core *core, u32 session_type, u32 pixfmt)
 {
-	const struct hfi_platform_codec_freq_data *data = codec_freq_data;
-	unsigned int i, data_size = ARRAY_SIZE(codec_freq_data);
+	const struct hfi_platform_codec_freq_data *data;
+	unsigned int i, data_size;
 	const struct hfi_platform_codec_freq_data *found = NULL;
 
-	if (is_lite(core))
-		return NULL;
+	if (is_lite(core)) {
+		data = codec_freq_data_lite;
+		data_size = ARRAY_SIZE(codec_freq_data_lite);
+	} else {
+		data = codec_freq_data;
+		data_size = ARRAY_SIZE(codec_freq_data);
+	}
 
 	for (i = 0; i < data_size; i++) {
 		if (data[i].pixfmt == pixfmt && data[i].session_type == session_type) {
-- 
2.34.1


