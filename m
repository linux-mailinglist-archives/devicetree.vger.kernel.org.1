Return-Path: <devicetree+bounces-248780-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 0106FCD59DA
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 11:37:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 4F76430119C2
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 10:37:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A2B933A70E;
	Mon, 22 Dec 2025 10:25:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="eIWJPjhN";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Pr6pEiGn"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EE9533A6EE
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 10:25:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766399116; cv=none; b=RcKDb18BN+YCuhJKdAb0/QdzYbh3+dS73u23y0yeOatCI7foQKPw5y0OE3wkcL2wdvHOuEVYvdjWpkE7K91GzdbZ0NupWhCjiZRu8VjsJPgqFlt0zIZ8QZr+aa6UYX1cUtwZvOo3Ygq7edPswmgTb4DtXOb1muQx7BhTqdIuXJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766399116; c=relaxed/simple;
	bh=eYqbCgFTx7pO2+x0Rgwk8N2aIIU8O+9nShTeQC9NPWs=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=lJUma2+maLxv15UFXwjewpwg2x6qLe6ffBeXREZd4nuzfUUXkwr+el7X+yAiR+U7BhERXTATovWS+r2jX3J9nm7Xgm/Vf4FfrEuYHWKZnHYtusv9bhC3pHHbtPXmh/4gPw+5j7P56K7vGcKLUKDs+CI5pR2CqWxd7ixCcEq9n9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=eIWJPjhN; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Pr6pEiGn; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BM7lf274091253
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 10:25:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=AlSWjXvP89D
	8APUnrnCOFRXps/W1frFHw3Bcs+wBdn0=; b=eIWJPjhNJyZytoREYhgx+ouckqp
	DCHlgmRAZ1SRLAd2ngZ+6zmQEOtKVGk20nPC1bvTfc5IiBqBeIGZnSpLQ0VDzp5m
	5ShQdGAwFXvJchl9lVSlyDmWzVFs0vuof7uymB1AQ/ngIy8EyWyAEMjPwWHDIaUN
	BFT8UiyZ3o17hsTdM6s4j5urSpYwtFuVYgcFfRnbWqUXAZaOZRU/IAyf4Z0g8CbJ
	ktWKy4SHuT/8Frk/m7Dv1QMzxQiCYrxFSeH033NUqEeFlOKfpzhACQyHA3yBKdZy
	w74crMy9fubwxektUlBuoDEHmKcnvD61KwddFL+L9hzI7JCaIskLUeGKZ/g==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b5mux4nq7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 10:25:13 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ee0c1d1b36so107804521cf.0
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 02:25:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766399113; x=1767003913; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AlSWjXvP89D8APUnrnCOFRXps/W1frFHw3Bcs+wBdn0=;
        b=Pr6pEiGnA+ehTzaPU+P85zv6oaw2S9K2y++oMzAGtgZqUAWA/O8p3pbsajjHEU/8C/
         saoFuU74jPQDDNNm49ANtwzanE/WvthMvdUFDMzaX+L0ilR/qZrh2pXYdAg7MLCRT2B+
         yyjNEc42QBh+6eWVzaL70QeYdWSB6g0uSnIQ8b3bMF1nGJpDEQLjuf5oCD86TuahWTHJ
         qkF325lL2Rx10Q/8QSQiW4qbKkoAa1RrzYSR2StVCXsQ1jkrwh9CFSOthwnc+fW0VUfl
         5G36bjXk8eC8h5/lJmaxpmRV6ia5cgfv7na/UnXEvFAno8m4e0Tr/Rop5U8aGVC+p8eM
         f1Jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766399113; x=1767003913;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=AlSWjXvP89D8APUnrnCOFRXps/W1frFHw3Bcs+wBdn0=;
        b=R9d2vfGHHpXVYd6q42Oc9ryXbUqO4eH75Ce35byp9UUT7p2lZ2CYBZeolwTwN/MyVV
         SzQiff/6VCFBKRr5cNu2KmzXuGNvT1KOmADRdaN9ojoUzKRwWgqP9PNlDmvzsGK/9aNO
         CBKSI6iKdHUbUv/LzW/x4CfyueSc5IUxxYiiyGdzEjihTp0kAM7GYPdFgWQoYpbtNAN2
         fl7I6qo7LHIS32vZItdqfx8q45xReRYfWkgI9U+ClWH0vmLPK/oRlF0NtRM3obPZxIax
         +hD9wiF8KdXS1j5nSdAzZYgOmyuqOK7DOLDhTFkbtdaypgejJI+wLdgNxuuLImhLcVDK
         dM0A==
X-Forwarded-Encrypted: i=1; AJvYcCWPeGqxbB4mMbfzkWRlDDKz9rPSGysxAyYGALHgSlnIfvVK99ykUCirN10UsicC+cmOjXTNB+84/647@vger.kernel.org
X-Gm-Message-State: AOJu0YyYh+G82+VEJpXdrU8WtGcZYoTYUz88QAPU+k7Qq4y7eKhisviR
	C+L/pCOGqXN6unJYLgBkYhYKpNLe29SO/RF1goJRwD6wVTBYG2Gamo6CkdIuHxvEuuvgY40Y7yh
	OBDhA+tS8bw4kC+vmwN26cmIC5GK8yRAC6GYb3uGmIOS5eqSsKsDONH7NdECcvpwC
X-Gm-Gg: AY/fxX4/wZL0sxDTECPe5pV47/Wfdcy3wlbU+Z55+7wp3lO5BGzeh98mGbFitTWGyuU
	sEWF964nG6Z5Kl4RAqcDB6dHVmKmd8NvrgtpRgZEjO89lQQvBYziOQ5A+igJgpZR0WaB+1jJPJ8
	LixQTuCbNnBySmdwwyn0AAYA9Qk1chKkWBZ7k3gdGvHSoY6VwWx9ECZ+tSRDPzC6NSPSKZRaqI9
	yiqzAim/buKxCbNt0tlLo8RJMDFKlcT2WH9isAEIrc8SsakufjGJGZbnbp66eaw3FvSE4Mq8aof
	yDDQek8mLM3y49kid9EZVwVmYZlsH2ZLGtFe1JzEJlEeKpnco1/5XaQwU17xZBt+ReaTq/TRA5Y
	JnJzqStTOTtFIqPGIdbVzhIZv2l3GI95247seFV462SRQRTLEvEf8dO84dxVew/SaScY=
X-Received: by 2002:a05:622a:a0f:b0:4ed:ba4c:bda8 with SMTP id d75a77b69052e-4f4aacc4a8dmr146466061cf.18.1766399112912;
        Mon, 22 Dec 2025 02:25:12 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFuH+UxR760LE2LGBvlVBLqGJgZnX8ihzwwMGi1X2xSzsKDEWstX1Kns6pjYrJIRbxWZp/pCg==
X-Received: by 2002:a05:622a:a0f:b0:4ed:ba4c:bda8 with SMTP id d75a77b69052e-4f4aacc4a8dmr146465621cf.18.1766399112402;
        Mon, 22 Dec 2025 02:25:12 -0800 (PST)
Received: from yuanjiey.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4f4ac66a1aasm72500001cf.33.2025.12.22.02.25.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Dec 2025 02:25:12 -0800 (PST)
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
Subject: [PATCH v4 07/11] drm/msm/dsi: Add support for Kaanapali
Date: Mon, 22 Dec 2025 18:23:56 +0800
Message-Id: <20251222102400.1109-8-yuanjie.yang@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251222102400.1109-1-yuanjie.yang@oss.qualcomm.com>
References: <20251222102400.1109-1-yuanjie.yang@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: XiamMs4pBBJ_YmYsJ_EJMWeGYM3V-kxZ
X-Authority-Analysis: v=2.4 cv=EvnfbCcA c=1 sm=1 tr=0 ts=69491c89 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=EGddA7oXPexY6v9tJfMA:9 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-GUID: XiamMs4pBBJ_YmYsJ_EJMWeGYM3V-kxZ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIyMDA5NCBTYWx0ZWRfXwZ9w7pTNQjfV
 grFQSKYzCiFUZ1vLpLi/Dae3hDlw12kQsRiKo9ybXeD5M8IN4RAEtK/mjnzQFek3IMr6khe6kFU
 fIKV8zI4VVE76Azx2JzSPGZgtd+aLaIEI8zShwJnp1pKJSCmuQ8dBYUPpIw1LbCQ3XPUxyAdlyj
 b53cnQu3pZve7QOsnQfEhZCvVWD12N0vGcnRNAWBRVafC/Vma3Gx0UQMVaklcE7lNiHE5gSy7UQ
 r5m9jlgMJ5o8qAEoZR4MhQS1pfKtPd69WDd0muoTXTDv0M4diO7FjLgkik2tT7xLLM8glAlAAhR
 +ozTq81ezEc142fXLdLH0FeqTr0dnUwbVk+67ojohFlfLpJhpFsAUf5bpHuySn6TVSgaXL18Unc
 eGdo0gEJa5vZ/naBmN+eOefvt8+GPE4elcNQbTtVK/6U0PKnseOo8LRbqEcASg9baquHmXH6/xW
 OIeBuOxWYaYq3gV160g==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-21_05,2025-12-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 suspectscore=0 phishscore=0 adultscore=0 clxscore=1015
 priorityscore=1501 spamscore=0 impostorscore=0 lowpriorityscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512220094

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


