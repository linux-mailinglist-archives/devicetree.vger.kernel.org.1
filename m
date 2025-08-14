Return-Path: <devicetree+bounces-204566-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A017B25FA4
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 10:54:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id F13057B3E48
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 08:52:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4890B2ECE85;
	Thu, 14 Aug 2025 08:53:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CPc1Rk4t"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A724B2E8E1B
	for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 08:53:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755161584; cv=none; b=E05s10fa8+21dgn/kcDUickjWXbCNbE2O0yfz7htD61qcgHh5nEFCt9FXcsruSy9uHxt5hZBAGquLEQ12psAqDQxDJJ5EjzwgzHy6gJwGPUr6VVn6Y2dQMfiJdV7vXLmhqqjAhHvMeDeiVlCq9fEtkq+tE4jsSdRxObMyerzE+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755161584; c=relaxed/simple;
	bh=ZVNNiKtA5Rgype6F/aBEaOIK4q4cs2rX8klz6CO6Rk4=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=rVjSRbr+NHR2OEJU72zGwj8iygFuxPe8LUtzoBmuLBWTtryv2bz3mLzs2AmMhjr7hDlA66ssh2eCOlsmDXzWgqk7gOI00C0UeFEjqhcuXgwaIdC1JqiuvVBQnnTRdmrn93NNtA055vR/ek4TVT+s5rJIU+zgHPp8MynuedlvUuc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CPc1Rk4t; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57DMP2fx012279
	for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 08:53:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=L0hGWEyxKm0
	3AZMzC2mojK5M/jR/yTzqJqNBHWVhPw0=; b=CPc1Rk4tW5a5+Y/zXhtPX+BxP3y
	UgFCuA5TDEOBkPg0u+qaLhV/1OZ2YTyKEPg0FYynsMp3H7f9dAFaGo+t2KkI0W7V
	wcJnXqr7FVPKM2Io0ku0EO7hacI3u0UqmacOD4F6GMrUWv3Sbt7rG8lqkgQzkAZF
	dNwf291W6jObpQSrsy8Ne55PuM2LAJIJ9tVEF1H3YiPw9Lp2m5bDam3OET4z2vvm
	34dBJi6VkGSw5YQ4bRCIZE0pma4exlmmrh091aHMKfTtEeq2MsR6yzfWqDF6JHki
	0yc4jDjyk7dzB3V17mI2XoE7M9AfsEl1TwelXGLbg6ZeMHTjFAVVtMifz/A==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48eqhxd6a7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 08:53:00 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b10ab0062aso16291491cf.1
        for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 01:53:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755161579; x=1755766379;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=L0hGWEyxKm03AZMzC2mojK5M/jR/yTzqJqNBHWVhPw0=;
        b=PL1iWtbwfG0MZNuw8WiFf9YyICX6V1MeVmxOo1I/lV9co7CxLTGe+XxTJQr9zIgvtS
         bfBXJTPRDLjAtEoNg6LmOC/R+TnlulNe5SvNbBSjmrx9fxJE758K7+uo68mggkiDo/wv
         97wmQPGCnE/ZeTyekJ8UwJ0aEdM7DI6C5ptSZvf8fVpynC84fy0owfZN1FB9FOomUXWS
         3HaqF8dLifMkJJwBKF06RY9GbW51pHQGDDdS32ldxsfHit/cOMI1eM0nKpJaV2/fqEVL
         k0+/0gi/EVwaNUrcBDtMpnqHyex6g9z2PIDqbFtlZhR4HksteJpna9N/7GlzJp0y6Bx2
         Qq+Q==
X-Forwarded-Encrypted: i=1; AJvYcCU+l+VXiJIVOYnZ2cGZA/qVrdgxgLnRaZN0OGt7dBkg/hDjYyXCH50HGc8oYkhLRjxMcBcviYcGAWMU@vger.kernel.org
X-Gm-Message-State: AOJu0YzLOHYkPQIGQjH2X2QXdtAVg6HbFO69q6QzQa0oQ8rDCNfzwkkN
	hk+tm92D95Ymmkp2KmMT+QiQEPTqZG7goKd9Gb+dG3JshxzTsQyp0eRydVZndanu3eaUmfMSHNm
	5c7jEOgpla3WCKFCb1r7Q0IXUuvrfnKnZz/XVVndlOC4VUWz0d7KsfHNX9ERMRYl8
X-Gm-Gg: ASbGncuTH0F+DmLaaQoO/y2M1LIyvIuORQvFmg9Q1aE1Ip8DE4WnVTiZX80hEwO9OE/
	3hCwuAsqia/OXt3GDF4FtYd0t/2OSBAf8dkvchoZQtRj2CqMG7fGisWOPd2EOrEN5LEizPmKfHx
	5trJ5DmosqtwzhncWvLZovy6BaeCgVCIwOlqImBV8ny54WtWLsZVxHE4WjpUqql5U8D4n/mf0sF
	NZfkfeyTkFwJgi/4UGTATfKbVplJ33GD044WuvCMOftK08NjiTuCaDQmx5ppMMRc76INBdBt0u0
	1J2I21F0S1l8AGPYBqPLRJKQuJ1pvyJgxvMeGc1jyGAou8o55UV7wM2Mhv/7pqH1CDOw0icKIL2
	LepLX9aQkCunq
X-Received: by 2002:ac8:5d55:0:b0:4ae:fa03:e75c with SMTP id d75a77b69052e-4b10aace87dmr27226191cf.18.1755161579424;
        Thu, 14 Aug 2025 01:52:59 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF73+WKAIKUqCAaI8gb7eyn3tt1QNWBFt4UqosYORIFQlCM7YG0Y1p3lLAHh7pL1/OWcj0DxA==
X-Received: by 2002:ac8:5d55:0:b0:4ae:fa03:e75c with SMTP id d75a77b69052e-4b10aace87dmr27225991cf.18.1755161578873;
        Thu, 14 Aug 2025 01:52:58 -0700 (PDT)
Received: from trex.. (205.red-83-60-94.dynamicip.rima-tde.net. [83.60.94.205])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45a1c6bc93fsm13155895e9.2.2025.08.14.01.52.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Aug 2025 01:52:58 -0700 (PDT)
From: Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>
To: jorge.ramirez@oss.qualcomm.com, quic_vgarodia@quicinc.com,
        quic_dikshita@quicinc.com, bryan.odonoghue@linaro.org,
        mchehab@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, andersson@kernel.org, konradybcio@kernel.org
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v10 4/8] media: venus: hfi_plat_v4: Add capabilities for the 4XX lite core
Date: Thu, 14 Aug 2025 10:52:44 +0200
Message-Id: <20250814085248.2371130-5-jorge.ramirez@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250814085248.2371130-1-jorge.ramirez@oss.qualcomm.com>
References: <20250814085248.2371130-1-jorge.ramirez@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODEwMDA1NyBTYWx0ZWRfX2ATR0+yeMTAJ
 b91Tlz7UnSs2ANjGwJQeQ+jh7x+LwyUOMd324+k4w0RDX2IFwcmaEs4YjWbnquWV//N/9xpli7I
 +4IXOIhXmY+4uRur5T9rVnyXgpOjUWeEkG8kfYCykjLacuPMTLfL67Y3EMuGoFN0Rp89I3NhfcU
 5tO+bPNEsfA01u17/oiV8CXfLblHTgk/tki1VIRFbZGg/ePG7DTxasZCg0CBir8ijRZ9NQ/isYU
 r7ZRxeZ22u/5WE5PcODakR28G12nznCgOC+Fa84x0UKtnayvB69WE9aBmAFNO9Acm8bOF5VEkTQ
 xyTZalBiseadlDX/FvD73QcRJpIcePLj7VIYq0BXDF3aRyHE4MDB6wqSQaJwkWbgSEXoWyLvlSG
 rNSXePlM
X-Proofpoint-GUID: OhLq5vvO1_9dbwuOMpPZX_K4UhSvtGXT
X-Authority-Analysis: v=2.4 cv=aYNhnQot c=1 sm=1 tr=0 ts=689da3ec cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=Rr2dNH5/fcnoRoBmcVUeRg==:17
 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=COk6AnOGAAAA:8
 a=FQp2d-uGNuPOlmPgRbUA:9 a=uxP6HrT_eTzRwkO_Te1X:22 a=cvBusfyB2V15izCimMoJ:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: OhLq5vvO1_9dbwuOMpPZX_K4UhSvtGXT
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-13_02,2025-08-11_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 priorityscore=1501 suspectscore=0 phishscore=0
 impostorscore=0 bulkscore=0 malwarescore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508100057

Populate the HFI v4 lite capability set used by the AR50_LITE video
core.

These capabilities define the supported codec formats and operational
limits specific to this streamlined VPU variant.

Signed-off-by: Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Reviewed-by: Dikshita Agarwal <quic_dikshita@quicinc.com>
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


