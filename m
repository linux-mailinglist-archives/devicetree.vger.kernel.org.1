Return-Path: <devicetree+bounces-255493-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id F3AEDD23AD4
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 10:45:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 995A4305FB7A
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 09:30:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C07535FF52;
	Thu, 15 Jan 2026 09:29:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UDTgE2AD";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="OnAGSoLP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9805F35FF42
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 09:29:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768469347; cv=none; b=rgfuAh1AuwRmVKQhKSKWDGPR8uhZbqn9dcc83/EKGEGBVMjhgIiZjkx7q7dFXrKOTdEknbsQzIZIToPaBJtaHrmOuuKAPTf/uJttae11iF6u55rHXgkPquEyK6O6Hau1yn3GqWkt8lwvQL1vJTqpgScpBGNZpis7mzxv9xENQ9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768469347; c=relaxed/simple;
	bh=eYqbCgFTx7pO2+x0Rgwk8N2aIIU8O+9nShTeQC9NPWs=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=ihuAio85GZnYCTVh2lu0l49cm7oEd+GbOLaYmCcaa6JSc4pzWh5nCnBcW3xy29syL8w0PUdQN4vsG0uAP3kWKbiUtJC/cYH1GJZAkGA/Mk+7m9R2pfcOH4rl50VBbDswW71a376USM/9Yc2JFY6WJ6oopFBLZnSf3PZ0Mq9+Ssg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UDTgE2AD; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=OnAGSoLP; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60F6gSaV1554825
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 09:29:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=AlSWjXvP89D
	8APUnrnCOFRXps/W1frFHw3Bcs+wBdn0=; b=UDTgE2ADHhAYkSlFuJ00p+0Eam9
	NdoLZ9G8OwlM8PJ6BGKIqKLCKKIdA9gFPH4Oh0gfQ+9pgBkfRnJc7mVN98BfDd1X
	L3vUDcUpEz4sBgQrh9qNEeUiUEcz0b6H1VJS+C9x2m7xbDN5KERD9fnjLebgwMyC
	Yfulohv5RYLoQNeOXj5iR3+PEqNB0wTDNyZEla9+k6cVd1+i7xiOBmGO3sX9Ezfz
	QZ0owESgCF7x0XbURD9JXOAGOqdJmmk0NyvoDIjtCa+JKLBcNm7VMTfa3D/0kkFq
	cVT7WwZEZFvPvrChROEBSqAts+rxRAl1rG2jBFTsKRWMpwP+Cueo4zQSGkA==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bp9x8us34-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 09:29:05 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-5013d63b3f1so32460751cf.1
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 01:29:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768469344; x=1769074144; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AlSWjXvP89D8APUnrnCOFRXps/W1frFHw3Bcs+wBdn0=;
        b=OnAGSoLPRFMcGCIlGNTGnzOc0ocSE7JESloX1Qc1hSpXbCVdGe9bqXEzyFyT/5sA+9
         2T+D/TFWAW2zOSQQuvJFIP/kCmkDNFsoGRU/B+JPrgH6bGJujbhgFt9avlvfKVQUpo2O
         QZ2TMM7K/g06Dr8XNJe5XCVNRu+wYzByLUNzjovLyAd/vLTAvicRVT/CcNH4USbJsbtq
         mWV4CMAwCBVnlrEL/WyoIr6oQwMOF7hQrFhvyJylrkvlu4q5TUAvnf7GOHyo5/7XLKQv
         ixuSL1rj8Usnurh+REafR6uTOrWS/WNICeqiprhZum1dHxyLkQIvMNQ1ynVvrVg0Lhfx
         Ey8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768469344; x=1769074144;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=AlSWjXvP89D8APUnrnCOFRXps/W1frFHw3Bcs+wBdn0=;
        b=SeDEwVH2XgsE3PJYedpbVoIff2LBDNOKb+UYBzKwDXFaJ81F4mRVimgdE4nHmiU2fL
         E4uggYrDEvrfk8nTS3hyI2v3YEVds9nG3jsei59KruuGS/lkWnZQn9OOZkYORsnj2raY
         uZli3R6s2VaHGza8BFOypHVNcOzOvP25WLxnoOG2emU4dCDIdfTrCgET6A7dIDwKL2JZ
         I/X5FVIvz/XljCobWqiH5eirPyL+0ZExpUIR/SHPehMcj6kegz3N8GltBWrduvNvvK1u
         46qHPQRu9ZGwgORcXB8AF2RYj0OTXzVb6INwyUOD5UEcZ7Z1UtbCP+hQy1QN9LRdAB1X
         y/sw==
X-Forwarded-Encrypted: i=1; AJvYcCVJxeOCVvQ4jYg3v8LbihIImQGQQCVQMlm0AiE97xYfdcSlcEDCEum4PvJdV84+iJYkdl1OA1LXq6O4@vger.kernel.org
X-Gm-Message-State: AOJu0YyHiF2nzHJi1eVOz5jf0itVhZR4vFkNxxJSxEoqnluLIwCvIX+4
	Zg5kWfp2PKXhEwS3kHRR4/SlFGJ3XBz/OLqzCTHVGAc5CpnohL0Vrz4dillbH07NEpHrH0BB4SN
	lE7iCPrkZRbQt5UuPpP+mfNIU9qh2krh0gEODrPLAEN4mF5eljTvLm77PfVcqHoy6
X-Gm-Gg: AY/fxX5TDoLw9jybTCYDVv6VS7WUAj70d5/64upeIq1i6QXmoS5orSECqOdT1NZnpkr
	CoqJDe4CTdK7uUBUCmvorjrPJZcfSY47HT9zm9gDPYsA9TpRXLRDwuUJLGRkBi7Y9yCHirw8jCZ
	RyIgjfr8cw/4+zOKUuhdcCRq+YcRpg9QOzMAKh23tg3c0PONkHhh1U4ZfUz4hzWrDEUzxasXGoB
	qrEUYviVPYWHauXspHzDYzyI1li3X9Q7/seSoevzBpTX52Gqahmc3u2iUXLVXRP0JP2/1F2f/iz
	8KcCVQ8fOu5F2iXZeGqqPLfzXOV+XveJWeVMIk2nLIskMsPoFsblgoj6QSv2YaFPeDuCXyClMoV
	s8u3py2F2DK6OGme4k18Lm9I1SyTIw5RrU34wFrdVi2iEB0KVTjLYCpzsXLaQcol2NDc=
X-Received: by 2002:a05:622a:1993:b0:4ee:bac:e3aa with SMTP id d75a77b69052e-5019f906e27mr36433931cf.35.1768469344078;
        Thu, 15 Jan 2026 01:29:04 -0800 (PST)
X-Received: by 2002:a05:622a:1993:b0:4ee:bac:e3aa with SMTP id d75a77b69052e-5019f906e27mr36433651cf.35.1768469343680;
        Thu, 15 Jan 2026 01:29:03 -0800 (PST)
Received: from yuanjiey.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-892668a2419sm64388416d6.30.2026.01.15.01.28.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Jan 2026 01:29:03 -0800 (PST)
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
        aiqun.yu@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: [PATCH v6 07/12] drm/msm/dsi: Add support for Kaanapali
Date: Thu, 15 Jan 2026 17:27:44 +0800
Message-Id: <20260115092749.533-8-yuanjie.yang@oss.qualcomm.com>
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
X-Proofpoint-GUID: vRrjVqFkku-Wq2jL-HR5Vpt6lq9objhf
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE1MDA2NSBTYWx0ZWRfX+Pmf/OKK5Ssb
 smBKgamu8d4/dR7ZDpeYBCt318Ozx/aqc8UpHcoQqKcLKP5NSpAie8JGykE8/9Be9S5EhfAfhE4
 PWAsUqIuioPGdIdeFY8HTVwnlcGpuPig/ZSyPTLPloAjY46cWxLU/1a9cmU7pdNuBLI+tcbrBBm
 eoLsTyrj5rGVIe7mDWTvLGZLtiFyNmer5iMxZHCjEoMV/8wtzgOYhM0hdlNiYlNdh0gk7hFUSD9
 513964IJdzqAr7P0YlaPx7VyV7sNJyTKDXTwO1gSIRzkiVDOcp1J3LCZb52KHLhEze4RtIuIcOR
 SbYYUEFLiB5Qy/XidBuwDWbij8DpAKr/k6OnyLTz4qisfd8WtC3GRjC6O7usrY5OgIy1r+IVbrl
 uQy1ixYD3MgXvlfGJW3w9++caa2LW3Ot2xi7vqzeIu9A/hxiyJqnAXhG3ad4wwVpYKDosH4wZ4l
 1CYVj1bWG5Nh480vaAw==
X-Authority-Analysis: v=2.4 cv=HY4ZjyE8 c=1 sm=1 tr=0 ts=6968b361 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=EGddA7oXPexY6v9tJfMA:9 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-ORIG-GUID: vRrjVqFkku-Wq2jL-HR5Vpt6lq9objhf
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-15_02,2026-01-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 adultscore=0 priorityscore=1501
 lowpriorityscore=0 spamscore=0 suspectscore=0 clxscore=1015 impostorscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601150065

From: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>

Add DSI Controller version 2.10.0 support for DSI on Qualcomm
Kaanapali SoC.

Co-developed-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
---
 drivers/gpu/drm/msm/dsi/dsi_cfg.c | 13 +++++++++++++
 drivers/gpu/drm/msm/dsi/dsi_cfg.h |  1 +
 2 files changed, 14 insertions(+)

diff --git a/drivers/gpu/drm/msm/dsi/dsi_cfg.c b/drivers/gpu/drm/msm/dsi/dsi_cfg.c
index fed8e9b67011..bd3c51c350e7 100644
--- a/drivers/gpu/drm/msm/dsi/dsi_cfg.c
+++ b/drivers/gpu/drm/msm/dsi/dsi_cfg.c
@@ -205,6 +205,17 @@ static const struct msm_dsi_config sm8650_dsi_cfg = {
 	},
 };
 
+static const struct msm_dsi_config kaanapali_dsi_cfg = {
+	.io_offset = DSI_6G_REG_SHIFT,
+	.regulator_data = sm8650_dsi_regulators,
+	.num_regulators = ARRAY_SIZE(sm8650_dsi_regulators),
+	.bus_clk_names = dsi_v2_4_clk_names,
+	.num_bus_clks = ARRAY_SIZE(dsi_v2_4_clk_names),
+	.io_start = {
+		{ 0x9ac0000, 0x9ac3000 },
+	},
+};
+
 static const struct regulator_bulk_data sc7280_dsi_regulators[] = {
 	{ .supply = "vdda", .init_load_uA = 8350 },	/* 1.2 V */
 	{ .supply = "refgen" },
@@ -332,6 +343,8 @@ static const struct msm_dsi_cfg_handler dsi_cfg_handlers[] = {
 		&sm8650_dsi_cfg, &msm_dsi_6g_v2_host_ops},
 	{MSM_DSI_VER_MAJOR_6G, MSM_DSI_6G_VER_MINOR_V2_9_0,
 		&sm8650_dsi_cfg, &msm_dsi_6g_v2_9_host_ops},
+	{MSM_DSI_VER_MAJOR_6G, MSM_DSI_6G_VER_MINOR_V2_10_0,
+		&kaanapali_dsi_cfg, &msm_dsi_6g_v2_9_host_ops},
 };
 
 const struct msm_dsi_cfg_handler *msm_dsi_cfg_get(u32 major, u32 minor)
diff --git a/drivers/gpu/drm/msm/dsi/dsi_cfg.h b/drivers/gpu/drm/msm/dsi/dsi_cfg.h
index 38f303f2ed04..5dc812028bd5 100644
--- a/drivers/gpu/drm/msm/dsi/dsi_cfg.h
+++ b/drivers/gpu/drm/msm/dsi/dsi_cfg.h
@@ -32,6 +32,7 @@
 #define MSM_DSI_6G_VER_MINOR_V2_7_0	0x20070000
 #define MSM_DSI_6G_VER_MINOR_V2_8_0	0x20080000
 #define MSM_DSI_6G_VER_MINOR_V2_9_0	0x20090000
+#define MSM_DSI_6G_VER_MINOR_V2_10_0	0x200a0000
 
 #define MSM_DSI_V2_VER_MINOR_8064	0x0
 
-- 
2.34.1


