Return-Path: <devicetree+bounces-255496-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D53AD23991
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 10:36:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 78D8E31D68FB
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 09:31:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2891735EDA5;
	Thu, 15 Jan 2026 09:29:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CcTxc1/s";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="SElIQ7lp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 256BF35C1A9
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 09:29:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768469372; cv=none; b=KVGu0s4xsDZmRhtsmgZOCHETJ0WN6fOVFecBL8Mkjix0ZRrWIzfzICfZ/ldPOOmUWrJO9THjZgbZSwp5P1BiX7k99xei6Akz3xc+DuxLGejLcw6F6HBSzRT4xFYzZdDWgtUAQvO1bz5vZjXIJdk8u266ck5WudlYUuiqy2mTP9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768469372; c=relaxed/simple;
	bh=ifTSFpRTG9lqlMih+i6qpiB865i9U5lOVo7bSzNHLOw=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=XRR46UM1gpo7pXVsh2DHYDrG7wPVfUU3R78i464auberWT1/wMaTpd/je1zL1DRfQJ+t4dYfrx+jgNFaBM6c4zeLMbRp9/gSjYwa39NfcqMvUFWxdNpL43aYp0NjE9ew26HQ1Rh3b2Rx+eCh3ysJ3fTZzkhKZLzeGkoxJnkrkLw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CcTxc1/s; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=SElIQ7lp; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60F6gSXt1992395
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 09:29:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=3D5eFbKZluR
	dihF9lXdAKbEwni5+gMy7ATs8YU4+Bns=; b=CcTxc1/s79WSgEpvCsTQzgxDACq
	rKf5NeEkHZ9DO+f0EgXTXYtrudJZTguJTRK3WOYn/kytG7IECwL8ixan5o1dUJJR
	IUJcgjOGIpBViENKsC22KGZWPVal06isTJDimPbruSX8U5bK8LbuwmjcSX1NdOng
	Rgr594cMW/pplaYMbYRIKeOppLmosX7u5MYlAxq687CxVCiLuT8AXIx1nUkspIac
	wscYgzdmlrc7Led6Kb4G/RqjJe7O3yMvfijLPCmZIBiAaE095CFfz3dXn6R30RG8
	vU/O4C6yFQfH6dQngKtYOWOFGExGeRIz1JOGiPWNYwkNpdjS6E72K85BM7g==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bpbdbudmm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 09:29:28 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-88a43d4cd2bso7217416d6.1
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 01:29:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768469368; x=1769074168; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3D5eFbKZluRdihF9lXdAKbEwni5+gMy7ATs8YU4+Bns=;
        b=SElIQ7lpfcQjy9ki6vNsDXOlueEVlwxbKiOhJzCRfHVIWtXyOQk4Go9CwzbCF0JmLt
         0yXxFtIcqK8fzrA2pNlB0+WDP6b/6uo4Nly+SEm0B1jMEytD6CempdWkeheZzirHnIBK
         mG9irGo9N8v6IV2nPSerFfuEFaFVVSBaYxccAr7cXygRJxU8d8p/0WQFUQQEHEM1QCPS
         ZDx6Wtw7rUgoXCw3byMR6NRCzN6yWfyYIwFpzYH50uj2xq3fwlRT5pMM/mGKzei+HDgk
         lVh9v+Hpb1Wh3MKgedg8MljpanCVKoOviLGEpFs4UjIaQRBusS16Gp39A7kHH5AvH8d1
         LsOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768469368; x=1769074168;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=3D5eFbKZluRdihF9lXdAKbEwni5+gMy7ATs8YU4+Bns=;
        b=i8UyquBgEHS8y0j2g0gZOShZORSMOgaCJEinqdyB5PpJWfBBQyEvBLBQVkYxs5CreY
         TDjT84HQg6Umx8zH+jgWXBPmLvqXzYcy/VJjGFgPcQA+dTL7wCT3G1lxCfLjLjZNkuZW
         52/g7u2waAb2uMiXgx6L0K0g1M9sFAnY092PyOlmPDwOwaEtaE5WTJqItot27ymK8/Pg
         7TZ6k0ClylvKZsIURhr/+pqEGP9zsl4X7yA4gQCimzqbEg0ZZI1G7Blr/wbpDko/YS09
         EXJbRBw9MZMldU1fxqrvYXzxafFYN6yjeJw1kVoxIDy18Gm2kgk+oertElCWmQia1i9o
         QlTg==
X-Forwarded-Encrypted: i=1; AJvYcCVicPQIoOrbER0UMTcYfzSUd2TXioGWvyAeySPs3xXRndw36GmTHQNqa5Y4k7LkEJy8VFmEAkOpnWzY@vger.kernel.org
X-Gm-Message-State: AOJu0Yy/G+XYnSJXlj1tXiHbDLyuZ94H2NoNN26qSH3Os6genc8EBbqp
	3zS3gF6GOkcHWGAWAlE1eHCucpK1Aml8pitaIY48dGxyeAn1Ug5vjD0GwQV9pQiNHvv5rSdY0iN
	kzNYvnAdk7i99USDH2O1yXWHdIinhIqdDkM+6uzlxjSd8ubqbY3xe0YPcIZj2Tvpi
X-Gm-Gg: AY/fxX6+oDcsfzX62gfEvCrRzE0d3OW2XqM7eQIM8q9r9Bpp8T51h1/4cYfaCYfVeb3
	/Gfk2vH38jpefhU3HbedUXCIaDpjFOD/jM1b+xV8duScFhbwt/AHlxBxN+Niizoa67wEg2KZSCa
	wNoVSJeWpy2EU0mloKzc8vTjmjcjL390AvekW4PAttSQfhpBtxHZsZ65xroSiGWsNkMaILWY6Ct
	5u3nCB++l/D8109HTEHxqXvyFpcCdbMn4P19QtLQTrshBGYnr1iDHxkPIYMGi40XWsfYIk+fAFw
	5UZ9Dbr/0nnRoVJ2CRodBNxx/zvGqnYBBqyF3a2mpxgOjKr/jbBME3J1eT/IctNAVGEMPXSj8jl
	eY13+xJSsKLdpoeNbgUJXDs2kDXG1GcJ+4a+xaRRPiGxJUIhe7bJeQd8PGcGrjpgpYi8=
X-Received: by 2002:a05:6214:2507:b0:888:8533:4648 with SMTP id 6a1803df08f44-892743f1762mr72375956d6.58.1768469367964;
        Thu, 15 Jan 2026 01:29:27 -0800 (PST)
X-Received: by 2002:a05:6214:2507:b0:888:8533:4648 with SMTP id 6a1803df08f44-892743f1762mr72375696d6.58.1768469367414;
        Thu, 15 Jan 2026 01:29:27 -0800 (PST)
Received: from yuanjiey.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-892668a2419sm64388416d6.30.2026.01.15.01.29.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Jan 2026 01:29:27 -0800 (PST)
From: yuanjie yang <yuanjie.yang@oss.qualcomm.com>
To: robin.clark@oss.qualcomm.com, lumag@kernel.org, jesszhan0024@gmail.com,
        sean@poorly.run, marijn.suijten@somainline.org, airlied@gmail.com,
        simona@ffwll.ch, maarten.lankhorst@linux.intel.com, mripard@kernel.org,
        tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, neil.armstrong@linaro.org,
        konrad.dybcio@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, tingwei.zhang@oss.qualcomm.com,
        aiqun.yu@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com
Subject: [PATCH v6 10/12] drm/msm/dpu: Add Kaanapali SSPP sub-block support
Date: Thu, 15 Jan 2026 17:27:47 +0800
Message-Id: <20260115092749.533-11-yuanjie.yang@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260115092749.533-1-yuanjie.yang@oss.qualcomm.com>
References: <20260115092749.533-1-yuanjie.yang@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=NvncssdJ c=1 sm=1 tr=0 ts=6968b378 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=IoldKcXwaph4SihcyF8A:9 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-ORIG-GUID: 73YLBbgfiEcms5dxcI202uwuh6qOeXmv
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE1MDA2NSBTYWx0ZWRfXy1/Y+eXingHv
 j4r2Thd8wW36eG47h9eEI1y/o5cOzgck01OSRcfsalwZ8v6TxmdvYN9aNzzvbZF3F4WrHVRa2P0
 ml7yP67Jj0RLhLz4J999Lp5YRKkK3D+XaSfLAx3GmgMugr0rnDZlD3yFu0G97RQObdgyOjxi9Wj
 J0DPkQHQZkpmz98RJxBtiGhlnsvfcvj87eIIWXr4uuu4W8P/FzqVFSHMCf7mkw0PiyvG1KUutd8
 4ABN5AKWx4HzlXzP159oQdXrwrwW5KFpozN82RecgRNXmRMPrfV95MyIWJyLR+nMY/8f2cPdVrJ
 TZddo+/E/Vp+JDDmM4lF0HfDhQ/wkpfmAsXiBtTJU8VlE+cfYLuG5x1fPY5UB+eDg2h6NXqhkZw
 FDyapYwoqvFpiuGdV4+l20uRO+Fr8LXEWcW6SijWIA4BYh7V4CC1auT2eFsv0Q1t1LkKzadjPMR
 ReGonWrpICYX+cB6Jqg==
X-Proofpoint-GUID: 73YLBbgfiEcms5dxcI202uwuh6qOeXmv
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-15_02,2026-01-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 suspectscore=0 bulkscore=0 clxscore=1015
 malwarescore=0 priorityscore=1501 adultscore=0 lowpriorityscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601150065

From: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>

Add support for Kaanapali platform SSPP sub-blocks, which
introduce structural changes including register additions,
removals, and relocations. Add the new common and rectangle
blocks, and update register definitions and handling to
ensure compatibility with DPU v13.0.

Co-developed-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Signed-off-by: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
---
 drivers/gpu/drm/msm/Makefile                  |   1 +
 .../gpu/drm/msm/disp/dpu1/dpu_hw_catalog.h    |  14 +
 drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp.c   |  14 +-
 drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp.h   |   4 +
 .../gpu/drm/msm/disp/dpu1/dpu_hw_sspp_v13.c   | 321 ++++++++++++++++++
 drivers/gpu/drm/msm/disp/dpu1/dpu_hw_util.c   |  18 +
 drivers/gpu/drm/msm/disp/dpu1/dpu_hw_util.h   |   3 +
 7 files changed, 371 insertions(+), 4 deletions(-)
 create mode 100644 drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp_v13.c

diff --git a/drivers/gpu/drm/msm/Makefile b/drivers/gpu/drm/msm/Makefile
index 8aa7d07303fb..8b94c5f1cb68 100644
--- a/drivers/gpu/drm/msm/Makefile
+++ b/drivers/gpu/drm/msm/Makefile
@@ -86,6 +86,7 @@ msm-display-$(CONFIG_DRM_MSM_DPU) += \
 	disp/dpu1/dpu_hw_lm.o \
 	disp/dpu1/dpu_hw_pingpong.o \
 	disp/dpu1/dpu_hw_sspp.o \
+	disp/dpu1/dpu_hw_sspp_v13.o \
 	disp/dpu1/dpu_hw_dspp.o \
 	disp/dpu1/dpu_hw_merge3d.o \
 	disp/dpu1/dpu_hw_top.o \
diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.h b/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.h
index 4964e70610d1..a056920f890a 100644
--- a/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.h
+++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.h
@@ -208,6 +208,18 @@ struct dpu_dsc_blk {
 	u32 len;
 };
 
+/**
+ * struct dpu_sspp_v13_rec_blk - SSPP REC sub-blk information
+ * @name: string name for debug purposes
+ * @base: offset of this sub-block relative to the block offset
+ * @len: register block length of this sub-block
+ */
+struct dpu_sspp_v13_rec_blk {
+	char name[DPU_HW_BLK_NAME_LEN];
+	u32 base;
+	u32 len;
+};
+
 /**
  * enum dpu_qos_lut_usage - define QoS LUT use cases
  */
@@ -294,6 +306,8 @@ struct dpu_sspp_sub_blks {
 	u32 qseed_ver;
 	struct dpu_scaler_blk scaler_blk;
 	struct dpu_pp_blk csc_blk;
+	struct dpu_sspp_v13_rec_blk sspp_rec0_blk;
+	struct dpu_sspp_v13_rec_blk sspp_rec1_blk;
 
 	const u32 *format_list;
 	u32 num_formats;
diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp.c b/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp.c
index 197a2c584c73..3a9a14291fff 100644
--- a/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp.c
+++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp.c
@@ -234,6 +234,12 @@ static void dpu_hw_sspp_setup_format(struct dpu_sw_pipe *pipe,
 		format_off = SSPP_SRC_FORMAT_REC1;
 	}
 
+	if (fmt->fetch_mode != MDP_FETCH_LINEAR) {
+		DPU_REG_WRITE(&ctx->hw, SSPP_FETCH_CONFIG,
+			      DPU_FETCH_CONFIG_RESET_VALUE |
+			      ctx->ubwc->highest_bank_bit << 18);
+	}
+
 	dpu_hw_setup_format_impl(pipe, fmt, flags, ctx, op_mode_off,
 				 unpack_pat_off, format_off,
 				 SSPP_UBWC_STATIC_CTRL, SSPP_UBWC_ERROR_STATUS);
@@ -291,9 +297,6 @@ void dpu_hw_setup_format_impl(struct dpu_sw_pipe *pipe, const struct msm_format
 		if (MSM_FORMAT_IS_UBWC(fmt))
 			opmode |= MDSS_MDP_OP_BWC_EN;
 		src_format |= (fmt->fetch_mode & 3) << 30; /*FRAME_FORMAT */
-		DPU_REG_WRITE(c, SSPP_FETCH_CONFIG,
-			DPU_FETCH_CONFIG_RESET_VALUE |
-			ctx->ubwc->highest_bank_bit << 18);
 		switch (ctx->ubwc->ubwc_enc_version) {
 		case UBWC_1_0:
 			fast_clear = fmt->alpha_enable ? BIT(31) : 0;
@@ -724,7 +727,10 @@ struct dpu_hw_sspp *dpu_hw_sspp_init(struct drm_device *dev,
 
 	hw_pipe->mdss_ver = mdss_rev;
 
-	_setup_layer_ops(hw_pipe, hw_pipe->cap->features, mdss_rev);
+	if (mdss_rev->core_major_ver >= 13)
+		dpu_hw_sspp_init_v13(hw_pipe, hw_pipe->cap->features, mdss_rev);
+	else
+		_setup_layer_ops(hw_pipe, hw_pipe->cap->features, mdss_rev);
 
 	return hw_pipe;
 }
diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp.h b/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp.h
index df3a320a9151..69d68cc916b2 100644
--- a/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp.h
+++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp.h
@@ -384,5 +384,9 @@ void dpu_hw_setup_solidfill_impl(struct dpu_sw_pipe *pipe,
 void dpu_hw_sspp_setup_qos_ctrl_impl(struct dpu_hw_sspp *ctx,
 				     bool danger_safe_en, u32 ctrl_off);
 
+void dpu_hw_sspp_init_v13(struct dpu_hw_sspp *c,
+			  unsigned long features,
+			  const struct dpu_mdss_version *mdss_rev);
+
 #endif /*_DPU_HW_SSPP_H */
 
diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp_v13.c b/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp_v13.c
new file mode 100644
index 000000000000..e65f1fc026fd
--- /dev/null
+++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp_v13.c
@@ -0,0 +1,321 @@
+// SPDX-License-Identifier: BSD-3-Clause
+/*
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
+ */
+
+#include <linux/printk.h>
+#include <linux/soc/qcom/ubwc.h>
+
+#include "dpu_hw_sspp.h"
+
+/* >= v13 DPU */
+/* CMN Registers -> Source Surface Processing Pipe Common SSPP registers */
+/*      Name                                  Offset */
+#define SSPP_CMN_CLK_CTRL                0x0
+#define SSPP_CMN_CLK_STATUS              0x4
+#define SSPP_CMN_MULTI_REC_OP_MODE       0x10
+#define SSPP_CMN_ADDR_CONFIG             0x14
+#define SSPP_CMN_CAC_CTRL                0x20
+#define SSPP_CMN_SYS_CACHE_MODE          0x24
+#define SSPP_CMN_QOS_CTRL                0x28
+
+#define SSPP_CMN_FILL_LEVEL_SCALE                0x3c
+#define SSPP_CMN_FILL_LEVELS                     0x40
+#define SSPP_CMN_STATUS                          0x44
+#define SSPP_CMN_FETCH_DMA_RD_OTS                0x48
+#define SSPP_CMN_FETCH_DTB_WR_PLANE0             0x4c
+#define SSPP_CMN_FETCH_DTB_WR_PLANE1             0x50
+#define SSPP_CMN_FETCH_DTB_WR_PLANE2             0x54
+#define SSPP_CMN_DTB_UNPACK_RD_PLANE0            0x58
+#define SSPP_CMN_DTB_UNPACK_RD_PLANE1            0x5c
+#define SSPP_CMN_DTB_UNPACK_RD_PLANE2            0x60
+#define SSPP_CMN_UNPACK_LINE_COUNT               0x64
+#define SSPP_CMN_TPG_CONTROL                     0x68
+#define SSPP_CMN_TPG_CONFIG                      0x6c
+#define SSPP_CMN_TPG_COMPONENT_LIMITS            0x70
+#define SSPP_CMN_TPG_RECTANGLE                   0x74
+#define SSPP_CMN_TPG_BLACK_WHITE_PATTERN_FRAMES  0x78
+#define SSPP_CMN_TPG_RGB_MAPPING                 0x7c
+#define SSPP_CMN_TPG_PATTERN_GEN_INIT_VAL        0x80
+
+/*RECRegisterset*/
+/*Name        Offset*/
+#define SSPP_REC_SRC_FORMAT                             0x0
+#define SSPP_REC_SRC_UNPACK_PATTERN                     0x4
+#define SSPP_REC_SRC_OP_MODE                            0x8
+#define SSPP_REC_SRC_CONSTANT_COLOR                     0xc
+#define SSPP_REC_SRC_IMG_SIZE                           0x10
+#define SSPP_REC_SRC_SIZE                               0x14
+#define SSPP_REC_SRC_XY                                 0x18
+#define SSPP_REC_OUT_SIZE                               0x1c
+#define SSPP_REC_OUT_XY                                 0x20
+#define SSPP_REC_SW_PIX_EXT_LR                          0x24
+#define SSPP_REC_SW_PIX_EXT_TB                          0x28
+#define SSPP_REC_SRC_SIZE_ODX                           0x30
+#define SSPP_REC_SRC_XY_ODX                             0x34
+#define SSPP_REC_OUT_SIZE_ODX                           0x38
+#define SSPP_REC_OUT_XY_ODX                             0x3c
+#define SSPP_REC_SW_PIX_EXT_LR_ODX                      0x40
+#define SSPP_REC_SW_PIX_EXT_TB_ODX                      0x44
+#define SSPP_REC_PRE_DOWN_SCALE                         0x48
+#define SSPP_REC_SRC0_ADDR                              0x4c
+#define SSPP_REC_SRC1_ADDR                              0x50
+#define SSPP_REC_SRC2_ADDR                              0x54
+#define SSPP_REC_SRC3_ADDR                              0x58
+#define SSPP_REC_SRC_YSTRIDE0                           0x5c
+#define SSPP_REC_SRC_YSTRIDE1                           0x60
+#define SSPP_REC_CURRENT_SRC0_ADDR                      0x64
+#define SSPP_REC_CURRENT_SRC1_ADDR                      0x68
+#define SSPP_REC_CURRENT_SRC2_ADDR                      0x6c
+#define SSPP_REC_CURRENT_SRC3_ADDR                      0x70
+#define SSPP_REC_SRC_ADDR_SW_STATUS                     0x74
+#define SSPP_REC_CDP_CNTL                               0x78
+#define SSPP_REC_TRAFFIC_SHAPER                         0x7c
+#define SSPP_REC_TRAFFIC_SHAPER_PREFILL                 0x80
+#define SSPP_REC_PD_MEM_ALLOC                           0x84
+#define SSPP_REC_QOS_CLAMP                              0x88
+#define SSPP_REC_UIDLE_CTRL_VALUE                       0x8c
+#define SSPP_REC_UBWC_STATIC_CTRL                       0x90
+#define SSPP_REC_UBWC_STATIC_CTRL_OVERRIDE              0x94
+#define SSPP_REC_UBWC_STATS_ROI                         0x98
+#define SSPP_REC_UBWC_STATS_WORST_TILE_ROW_BW_ROI0      0x9c
+#define SSPP_REC_UBWC_STATS_TOTAL_BW_ROI0               0xa0
+#define SSPP_REC_UBWC_STATS_WORST_TILE_ROW_BW_ROI1      0xa4
+#define SSPP_REC_UBWC_STATS_TOTAL_BW_ROI1               0xa8
+#define SSPP_REC_UBWC_STATS_WORST_TILE_ROW_BW_ROI2      0xac
+#define SSPP_REC_UBWC_STATS_TOTAL_BW_ROI2               0xb0
+#define SSPP_REC_EXCL_REC_CTRL                          0xb4
+#define SSPP_REC_EXCL_REC_SIZE                          0xb8
+#define SSPP_REC_EXCL_REC_XY                            0xbc
+#define SSPP_REC_LINE_INSERTION_CTRL                    0xc0
+#define SSPP_REC_LINE_INSERTION_OUT_SIZE                0xc4
+#define SSPP_REC_FETCH_PIPE_ACTIVE                      0xc8
+#define SSPP_REC_META_ERROR_STATUS                      0xcc
+#define SSPP_REC_UBWC_ERROR_STATUS                      0xd0
+#define SSPP_REC_FLUSH_CTRL                             0xd4
+#define SSPP_REC_INTR_EN                                0xd8
+#define SSPP_REC_INTR_STATUS                            0xdc
+#define SSPP_REC_INTR_CLEAR                             0xe0
+#define SSPP_REC_HSYNC_STATUS                           0xe4
+#define SSPP_REC_FP16_CONFIG                            0x150
+#define SSPP_REC_FP16_CSC_MATRIX_COEFF_R_0              0x154
+#define SSPP_REC_FP16_CSC_MATRIX_COEFF_R_1              0x158
+#define SSPP_REC_FP16_CSC_MATRIX_COEFF_G_0              0x15c
+#define SSPP_REC_FP16_CSC_MATRIX_COEFF_G_1              0x160
+#define SSPP_REC_FP16_CSC_MATRIX_COEFF_B_0              0x164
+#define SSPP_REC_FP16_CSC_MATRIX_COEFF_B_1              0x168
+#define SSPP_REC_FP16_CSC_PRE_CLAMP_R                   0x16c
+#define SSPP_REC_FP16_CSC_PRE_CLAMP_G                   0x170
+#define SSPP_REC_FP16_CSC_PRE_CLAMP_B                   0x174
+#define SSPP_REC_FP16_CSC_POST_CLAMP                    0x178
+
+static inline u32 dpu_hw_sspp_calculate_rect_off(enum dpu_sspp_multirect_index rect_index,
+						 struct dpu_hw_sspp *ctx)
+{
+	return (rect_index == DPU_SSPP_RECT_SOLO || rect_index == DPU_SSPP_RECT_0) ?
+		ctx->cap->sblk->sspp_rec0_blk.base : ctx->cap->sblk->sspp_rec1_blk.base;
+}
+
+static void dpu_hw_sspp_setup_multirect_v13(struct dpu_sw_pipe *pipe)
+{
+	struct dpu_hw_sspp *ctx = pipe->sspp;
+
+	if (!ctx)
+		return;
+
+	dpu_hw_setup_multirect_impl(pipe, ctx, SSPP_CMN_MULTI_REC_OP_MODE);
+}
+
+static void dpu_hw_sspp_setup_format_v13(struct dpu_sw_pipe *pipe,
+					 const struct msm_format *fmt, u32 flags)
+{
+	struct dpu_hw_sspp *ctx = pipe->sspp;
+	u32 op_mode_off, unpack_pat_off, format_off;
+	u32 ubwc_ctrl_off, ubwc_err_off;
+	u32 offset;
+
+	if (!ctx || !fmt)
+		return;
+
+	offset = dpu_hw_sspp_calculate_rect_off(pipe->multirect_index, ctx);
+
+	op_mode_off = offset + SSPP_REC_SRC_OP_MODE;
+	unpack_pat_off = offset + SSPP_REC_SRC_UNPACK_PATTERN;
+	format_off = offset + SSPP_REC_SRC_FORMAT;
+	ubwc_ctrl_off = offset + SSPP_REC_UBWC_STATIC_CTRL;
+	ubwc_err_off = offset + SSPP_REC_UBWC_ERROR_STATUS;
+
+	dpu_hw_setup_format_impl(pipe, fmt, flags, ctx, op_mode_off,
+				 unpack_pat_off, format_off, ubwc_ctrl_off, ubwc_err_off);
+}
+
+static void dpu_hw_sspp_setup_pe_config_v13(struct dpu_hw_sspp *ctx,
+					    struct dpu_hw_pixel_ext *pe_ext)
+{
+	struct dpu_hw_blk_reg_map *c;
+	u8 color;
+	u32 lr_pe[4], tb_pe[4];
+	const u32 bytemask = 0xff;
+	u32 offset = ctx->cap->sblk->sspp_rec0_blk.base;
+
+	if (!ctx || !pe_ext)
+		return;
+
+	c = &ctx->hw;
+	/* program SW pixel extension override for all pipes*/
+	for (color = 0; color < DPU_MAX_PLANES; color++) {
+		/* color 2 has the same set of registers as color 1 */
+		if (color == 2)
+			continue;
+
+		lr_pe[color] = ((pe_ext->right_ftch[color] & bytemask) << 24) |
+			       ((pe_ext->right_rpt[color] & bytemask) << 16) |
+			       ((pe_ext->left_ftch[color] & bytemask) << 8) |
+			       (pe_ext->left_rpt[color] & bytemask);
+
+		tb_pe[color] = ((pe_ext->btm_ftch[color] & bytemask) << 24) |
+			       ((pe_ext->btm_rpt[color] & bytemask) << 16) |
+			       ((pe_ext->top_ftch[color] & bytemask) << 8) |
+			       (pe_ext->top_rpt[color] & bytemask);
+	}
+
+	/* color 0 */
+	DPU_REG_WRITE(c, SSPP_REC_SW_PIX_EXT_LR + offset, lr_pe[0]);
+	DPU_REG_WRITE(c, SSPP_REC_SW_PIX_EXT_TB + offset, tb_pe[0]);
+
+	/* color 1 and color 2 */
+	DPU_REG_WRITE(c, SSPP_REC_SW_PIX_EXT_LR_ODX + offset, lr_pe[1]);
+	DPU_REG_WRITE(c, SSPP_REC_SW_PIX_EXT_TB_ODX + offset, tb_pe[1]);
+}
+
+static void dpu_hw_sspp_setup_rects_v13(struct dpu_sw_pipe *pipe,
+					struct dpu_sw_pipe_cfg *cfg)
+{
+	struct dpu_hw_sspp *ctx = pipe->sspp;
+	u32 src_size_off, src_xy_off, out_size_off, out_xy_off;
+	u32 offset;
+
+	if (!ctx || !cfg)
+		return;
+
+	offset = dpu_hw_sspp_calculate_rect_off(pipe->multirect_index, ctx);
+
+	src_size_off = offset + SSPP_REC_SRC_SIZE;
+	src_xy_off = offset + SSPP_REC_SRC_XY;
+	out_size_off = offset + SSPP_REC_OUT_SIZE;
+	out_xy_off = offset + SSPP_REC_OUT_XY;
+
+	dpu_hw_setup_rects_impl(pipe, cfg, ctx, src_size_off,
+				src_xy_off, out_size_off, out_xy_off);
+}
+
+static void dpu_hw_sspp_setup_sourceaddress_v13(struct dpu_sw_pipe *pipe,
+						struct dpu_hw_fmt_layout *layout)
+{
+	struct dpu_hw_sspp *ctx = pipe->sspp;
+	int i;
+	u32 offset, ystride0, ystride1;
+
+	if (!ctx)
+		return;
+
+	offset = dpu_hw_sspp_calculate_rect_off(pipe->multirect_index, ctx);
+
+	for (i = 0; i < ARRAY_SIZE(layout->plane_addr); i++)
+		DPU_REG_WRITE(&ctx->hw, offset + SSPP_REC_SRC0_ADDR + i * 0x4,
+			      layout->plane_addr[i]);
+
+	ystride0 = (layout->plane_pitch[0]) | (layout->plane_pitch[2] << 16);
+	ystride1 = (layout->plane_pitch[1]) | (layout->plane_pitch[3] << 16);
+
+	DPU_REG_WRITE(&ctx->hw, offset + SSPP_REC_SRC_YSTRIDE0, ystride0);
+	DPU_REG_WRITE(&ctx->hw, offset + SSPP_REC_SRC_YSTRIDE1, ystride1);
+}
+
+static void dpu_hw_sspp_setup_solidfill_v13(struct dpu_sw_pipe *pipe, u32 color)
+{
+	struct dpu_hw_sspp *ctx = pipe->sspp;
+	u32 const_clr_off;
+	u32 offset;
+
+	if (!ctx)
+		return;
+
+	offset = dpu_hw_sspp_calculate_rect_off(pipe->multirect_index, ctx);
+	const_clr_off = offset + SSPP_REC_SRC_CONSTANT_COLOR;
+
+	dpu_hw_setup_solidfill_impl(pipe, color, ctx, const_clr_off);
+}
+
+static void dpu_hw_sspp_setup_qos_lut_v13(struct dpu_hw_sspp *ctx,
+					  struct dpu_hw_qos_cfg *cfg)
+{
+	if (!ctx || !cfg)
+		return;
+
+	dpu_hw_setup_qos_lut_v13(&ctx->hw, cfg);
+}
+
+static void dpu_hw_sspp_setup_qos_ctrl_v13(struct dpu_hw_sspp *ctx,
+					   bool danger_safe_en)
+{
+	if (!ctx)
+		return;
+
+	dpu_hw_sspp_setup_qos_ctrl_impl(ctx, danger_safe_en, SSPP_CMN_QOS_CTRL);
+}
+
+static void dpu_hw_sspp_setup_cdp_v13(struct dpu_sw_pipe *pipe,
+				      const struct msm_format *fmt,
+				      bool enable)
+{
+	struct dpu_hw_sspp *ctx = pipe->sspp;
+	u32 offset = 0;
+
+	if (!ctx)
+		return;
+
+	offset = dpu_hw_sspp_calculate_rect_off(pipe->multirect_index, ctx);
+	dpu_setup_cdp(&ctx->hw, offset + SSPP_REC_CDP_CNTL, fmt, enable);
+}
+
+static bool dpu_hw_sspp_setup_clk_force_ctrl_v13(struct dpu_hw_sspp *ctx, bool enable)
+{
+	static const struct dpu_clk_ctrl_reg sspp_clk_ctrl = {
+		.reg_off = SSPP_CMN_CLK_CTRL,
+		.bit_off = 0
+	};
+
+	return dpu_hw_clk_force_ctrl(&ctx->hw, &sspp_clk_ctrl, enable);
+}
+
+void dpu_hw_sspp_init_v13(struct dpu_hw_sspp *c,
+			  unsigned long features, const struct dpu_mdss_version *mdss_rev)
+{
+	c->ops.setup_format = dpu_hw_sspp_setup_format_v13;
+	c->ops.setup_rects = dpu_hw_sspp_setup_rects_v13;
+	c->ops.setup_sourceaddress = dpu_hw_sspp_setup_sourceaddress_v13;
+	c->ops.setup_solidfill = dpu_hw_sspp_setup_solidfill_v13;
+	c->ops.setup_pe = dpu_hw_sspp_setup_pe_config_v13;
+
+	if (test_bit(DPU_SSPP_QOS, &features)) {
+		c->ops.setup_qos_lut = dpu_hw_sspp_setup_qos_lut_v13;
+		c->ops.setup_qos_ctrl = dpu_hw_sspp_setup_qos_ctrl_v13;
+	}
+
+	if (test_bit(DPU_SSPP_CSC, &features) ||
+		test_bit(DPU_SSPP_CSC_10BIT, &features))
+		c->ops.setup_csc = dpu_hw_sspp_setup_csc;
+
+	if (test_bit(DPU_SSPP_SMART_DMA_V1, &c->cap->features) ||
+		test_bit(DPU_SSPP_SMART_DMA_V2, &c->cap->features))
+		c->ops.setup_multirect = dpu_hw_sspp_setup_multirect_v13;
+
+	if (test_bit(DPU_SSPP_SCALER_QSEED3_COMPATIBLE, &features))
+		c->ops.setup_scaler = dpu_hw_sspp_setup_scaler3;
+
+	if (test_bit(DPU_SSPP_CDP, &features))
+		c->ops.setup_cdp = dpu_hw_sspp_setup_cdp_v13;
+
+	c->ops.setup_clk_force_ctrl = dpu_hw_sspp_setup_clk_force_ctrl_v13;
+}
diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_util.c b/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_util.c
index 486be346d40d..c7a5f4a0d054 100644
--- a/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_util.c
+++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_util.c
@@ -81,6 +81,13 @@ static u32 dpu_hw_util_log_mask = DPU_DBG_MASK_NONE;
 #define QOS_CREQ_LUT_0                    0x14
 #define QOS_CREQ_LUT_1                    0x18
 
+/* CMN_QOS_LUT */
+#define SSPP_CMN_QOS_CTRL                      0x28
+#define SSPP_CMN_DANGER_LUT                    0x2c
+#define SSPP_CMN_SAFE_LUT                      0x30
+#define SSPP_CMN_CREQ_LUT_0                    0x34
+#define SSPP_CMN_CREQ_LUT_1                    0x38
+
 /* QOS_QOS_CTRL */
 #define QOS_QOS_CTRL_DANGER_SAFE_EN       BIT(0)
 #define QOS_QOS_CTRL_DANGER_VBLANK_MASK   GENMASK(5, 4)
@@ -475,6 +482,17 @@ void _dpu_hw_setup_qos_lut(struct dpu_hw_blk_reg_map *c, u32 offset,
 		      cfg->danger_safe_en ? QOS_QOS_CTRL_DANGER_SAFE_EN : 0);
 }
 
+void dpu_hw_setup_qos_lut_v13(struct dpu_hw_blk_reg_map *c,
+			       const struct dpu_hw_qos_cfg *cfg)
+{
+	DPU_REG_WRITE(c, SSPP_CMN_DANGER_LUT, cfg->danger_lut);
+	DPU_REG_WRITE(c, SSPP_CMN_SAFE_LUT, cfg->safe_lut);
+	DPU_REG_WRITE(c, SSPP_CMN_CREQ_LUT_0, cfg->creq_lut);
+	DPU_REG_WRITE(c, SSPP_CMN_CREQ_LUT_1, cfg->creq_lut >> 32);
+	DPU_REG_WRITE(c, SSPP_CMN_QOS_CTRL,
+		      cfg->danger_safe_en ? QOS_QOS_CTRL_DANGER_SAFE_EN : 0);
+}
+
 /*
  * note: Aside from encoders, input_sel should be set to 0x0 by default
  */
diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_util.h b/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_util.h
index 6fe65bc3bff4..628befc65ce3 100644
--- a/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_util.h
+++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_util.h
@@ -367,6 +367,9 @@ void _dpu_hw_setup_qos_lut(struct dpu_hw_blk_reg_map *c, u32 offset,
 			   bool qos_8lvl,
 			   const struct dpu_hw_qos_cfg *cfg);
 
+void dpu_hw_setup_qos_lut_v13(struct dpu_hw_blk_reg_map *c,
+			       const struct dpu_hw_qos_cfg *cfg);
+
 void dpu_hw_setup_misr(struct dpu_hw_blk_reg_map *c,
 		u32 misr_ctrl_offset, u8 input_sel);
 
-- 
2.34.1


