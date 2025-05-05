Return-Path: <devicetree+bounces-173523-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F5EEAA8A3D
	for <lists+devicetree@lfdr.de>; Mon,  5 May 2025 02:15:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8F0227A7B43
	for <lists+devicetree@lfdr.de>; Mon,  5 May 2025 00:14:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AEC2D18BC0C;
	Mon,  5 May 2025 00:15:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hVlzso7i"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0490C13DB9F
	for <devicetree@vger.kernel.org>; Mon,  5 May 2025 00:15:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746404112; cv=none; b=CfAn9Obyb4gXsrrQaGUDE2Qvck4NN9jM381LhCs+H152kYbz44B+xbSUj/HdMTHcETErj5YKFfVgVUjSHOKXA9ud+CHHhOQ2Z2sFXPdwHFxPaZWwzM3V+z2I30bzgf7sQgeFsHzxEhTz+auwwajwMq29qenjNSnNKNy6PK3Y8qA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746404112; c=relaxed/simple;
	bh=OKvD6auO4vB91J5XYVfbwmBTaxU27ZN3Gc2XZVXje+M=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Sf/nOBL4AXHmwgy0c7G/UU+IZ0J+vThuZRC4++fJQffNBZCD+EmGnjCNIHSlBOvSxgMj2ZMmDk7YutWN7r6+XYjCF98AfQ96KcGyRCnGVpF4O/yKyf6lE1OentPz06bfOZ+QODijMhOxoAVYLYFY2T32ULd1T0f8sXrPr8h+s2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hVlzso7i; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 544NL1Fc005776
	for <devicetree@vger.kernel.org>; Mon, 5 May 2025 00:15:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Xg9l60XwzB5oTcWL0mTb9MXi9hdCzTMTTy3uoJ/DZ98=; b=hVlzso7i5rb7vweQ
	KOezQ5jYaOYfZ3eTYxwpgIzqgw10MAl/iwBqC3IUbCCvhr/psy9hKyaHctRkDG0a
	cxQQMdEo4bMohinBh3D96W4aKJPoSbHcUpv512VPg1loFFnZDNVDYbn+7XgkOOQl
	t+RrUyYUvqLxGG0XviUOZ7RbkNnRgXkgrdn11gj0jhW0pivV7DlINUWem72Td5Ih
	wXE+rTVqpC0GvkMAeBUtMLtVKODkOI/o/Sv42leNAKLt9omQZkV7jAndOB+iTg2t
	Z45SLSoIVr7t4cTS6ZHRx5RkOLSm/Iuc49+JsQ+MrSQecKLyerOE9NnR4qb9TS//
	04ovsQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46dbc5an5b-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 05 May 2025 00:15:10 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c5e2a31f75so445486485a.1
        for <devicetree@vger.kernel.org>; Sun, 04 May 2025 17:15:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746404109; x=1747008909;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Xg9l60XwzB5oTcWL0mTb9MXi9hdCzTMTTy3uoJ/DZ98=;
        b=wFUW7+ilp2yf1/KZg+MtN/qVyzEMh9jQVjVQhpZE5VQGUA3u2RsFtkvEL6qvbWhUc+
         7fOS0qoN2a6xLcKGu6IP/t6R0nyefmH5SDTpwd6qsZqArnQob9CkTodR87ax5Ljl3LkR
         ctE8L/VvLWaf4fXyoL2toVQ8Te7yPipp1bf2UP0xpiq5CMd4PttRuwYUtoTNpUm3ZI88
         fx361U8EL8SkQmOlfIscWmkBM6KpdmFqE3doPaiStoXkVW2A0t+XOkKEaTX30CUT/7vD
         H7DUX2oY4Ms49bYa/I5rD90i3o7+fpY+aToqMQAa9pSQg+/WgUUlJOldt5yAPEpNJjIN
         KZEQ==
X-Forwarded-Encrypted: i=1; AJvYcCX+9twc+P12Blp3WVKuQDNXa1il7LI4pXI4JReroCOKQEUq0vAGaeJIICCFW0PdRYoTZtWzuXLji5o7@vger.kernel.org
X-Gm-Message-State: AOJu0Yw/Pa/aaU47saIsH3Gx524GGGpL1q4mNim8o3q83B2Pm/fZNOyw
	WlTfzc9sVB36ZN9m3bhPH3o6DL5iHwctntaDiJdoz+7vFzbR0nYm7+YqXW45prq6WRUkiK8tR3t
	4eHtyH9SUv0FBw391OWbgX3KmZ4RL8dJn7VaGRrOS2mCXLH1eSj+te480ulFx
X-Gm-Gg: ASbGncvp1vkjZmJdLdNA5rc/3Y+voeu2pEwq71g3M+CKsV9Z7jVPvWF5z1PTqqjsEuD
	BGlyM+/3i1ZS1gTJBRPTgOiHWE/19SzopcExPWVGNJWZb/OZLKYxqAK7FC9+QZD8h8nE2xcw+wG
	Fac0W7BUoiKjXPfxVJUE7GseJYP0JGXR40MERWAcmzDDyCmk2cDUxRTtHU3yaDIQ+xOpAFC7TH+
	sbtgKu1m1MNeUDv8UOK7l0ReyrhnyoQerMi8Pywa+cpPB71yGaC0uRpyIUTqTwNQ4LHAGK+woBn
	6skx0hYE2MeoWvp4aaMfhrYXXRoTcNmA1pOZyBQMHmIg9shk4yEMqLfYGohLlEzADaDUiLS9ss1
	uobQuCH3NHSjm8SCuJbgNBJKM
X-Received: by 2002:a05:620a:d86:b0:7c5:4c49:769c with SMTP id af79cd13be357-7cae3a59f28mr912965685a.6.1746404108756;
        Sun, 04 May 2025 17:15:08 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHSchSqqIllw/dp4wXGA/G9vNYNJ3/7RegF1McjKHRI33aoVuXIEV0ZuKbcFKyOwgpSuikqTw==
X-Received: by 2002:a05:620a:d86:b0:7c5:4c49:769c with SMTP id af79cd13be357-7cae3a59f28mr912961585a.6.1746404108357;
        Sun, 04 May 2025 17:15:08 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54ea94ce656sm1454066e87.105.2025.05.04.17.15.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 May 2025 17:15:07 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Mon, 05 May 2025 03:14:48 +0300
Subject: [PATCH v5 04/13] drm/msm/hdmi: simplify extp clock handling
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250505-fd-hdmi-hpd-v5-4-48541f76318c@oss.qualcomm.com>
References: <20250505-fd-hdmi-hpd-v5-0-48541f76318c@oss.qualcomm.com>
In-Reply-To: <20250505-fd-hdmi-hpd-v5-0-48541f76318c@oss.qualcomm.com>
To: Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Simona Vetter <simona.vetter@ffwll.ch>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Jessica Zhang <quic_jesszhan@quicinc.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=6078;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=LnFkmu2jUxjoORgRsclE+weSQh+e+mvrliRGfmUM560=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBoGAL71Ad5wzmGBcA8VFE7DMRBOvRLx8dxrUs4z
 ufIjtAOA5aJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaBgC+wAKCRCLPIo+Aiko
 1dB3B/wO2n/Jj+8+fzMeoCUmZO35ugj4pPICfzq+pGY21TBlDhk6XwBQ+bSYWUjkqExpqq5P6TT
 dE+HyOW7coWIirnhFz1W81mJ9PA+jtr34B72UqGTJ1upQveyTw0dM8ZBsCighxmvP4tmz4RWFGS
 YowEdaVv3uOgWAmC0+PxhDaCc/ZXPnKdsW+QnSBd5sbSuGhLJmBeYxDQwzbqlFQ+gbizHdcEtpW
 mp0dE1JsvV4rTuzx5quTpd7comXMTQ5mvYwSR9mk/HyB6+QIC0BAv+SftitCfBTPu5MCnXlu4n+
 Xf3mZJA84P7lqM9EW+Bv8O1n00KilJndpoz7nuk3hvseEvZ0
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-GUID: sBT2ayq-fXPQJI2Ch4zcnirVyEvz1wqX
X-Authority-Analysis: v=2.4 cv=O7Y5vA9W c=1 sm=1 tr=0 ts=6818030e cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=dt9VzEwgFbYA:10 a=KKAkSRfTAAAA:8 a=COk6AnOGAAAA:8 a=-xysCvM_RUkaYHfiAagA:9
 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22 a=cvBusfyB2V15izCimMoJ:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: sBT2ayq-fXPQJI2Ch4zcnirVyEvz1wqX
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA1MDAwMCBTYWx0ZWRfX5KgDbTm+KbrP
 jy1coNp+LpINTfyPiogCZQfNoCXZOypDjO3Q0kx4/JVy5JOaD0NLyo5Jza5ehMyTR7J+3XbhkXr
 cERHv9yaZ7Zuu6vlVxqxFgscRQnZ7y9YE5iNjcpcZBcNPjC1laTe/PT9pGNz0YJMl5dNQpucYOr
 ujW7Z/NPGuppv70OM8kH2eLtGq8AXjlhaz4j93JN0E8h8BAKebLGryHc36wSRdTDOS9cmpqBszD
 gjx71ZKvGt25yUqN7PDnHkUR1bjbbMPxff74F6VgzeqL7smoN4GgZNZav0XK9TPxp7iQdGGxDwf
 CS1ptithuaeCFr4360rX4sys0aRQOHHs7fHizCYpyHulUNFprvZ0uRXcoHOKnNOxsBL+TMBcKf1
 g5n1KKqW5fpsKt8F8ROr7lxi+kOe8GhvnX3Yc/4TXhkPOYNNcufVtG5Wl7VAVJ2r8PorEW3N
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-04_09,2025-04-30_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 suspectscore=0 malwarescore=0 mlxlogscore=999 mlxscore=0
 clxscore=1015 priorityscore=1501 adultscore=0 phishscore=0 bulkscore=0
 impostorscore=0 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2505050000

From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

With the extp being the only "power" clock left, remove the surrounding
loops and handle the extp clock directly.

Reviewed-by: Jessica Zhang <quic_jesszhan@quicinc.com>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/gpu/drm/msm/hdmi/hdmi.c        | 24 ++++--------------------
 drivers/gpu/drm/msm/hdmi/hdmi.h        |  6 +-----
 drivers/gpu/drm/msm/hdmi/hdmi_bridge.c | 33 +++++++++++++--------------------
 3 files changed, 18 insertions(+), 45 deletions(-)

diff --git a/drivers/gpu/drm/msm/hdmi/hdmi.c b/drivers/gpu/drm/msm/hdmi/hdmi.c
index ebf9d8162c6e5759a3780c74354b6c159598750f..104f9cefa14834d04fb957eb48777e605d1e29a5 100644
--- a/drivers/gpu/drm/msm/hdmi/hdmi.c
+++ b/drivers/gpu/drm/msm/hdmi/hdmi.c
@@ -233,13 +233,11 @@ static const struct hdmi_platform_config hdmi_tx_8960_config = {
 };
 
 static const char * const pwr_reg_names_8x74[] = {"core-vdda", "core-vcc"};
-static const char * const pwr_clk_names_8x74[] = {"extp"};
 static const char * const hpd_clk_names_8x74[] = {"iface", "core", "mdp_core", "alt_iface"};
 static unsigned long hpd_clk_freq_8x74[] = {0, 19200000, 0, 0};
 
 static const struct hdmi_platform_config hdmi_tx_8974_config = {
 		HDMI_CFG(pwr_reg, 8x74),
-		HDMI_CFG(pwr_clk, 8x74),
 		HDMI_CFG(hpd_clk, 8x74),
 		.hpd_freq      = hpd_clk_freq_8x74,
 };
@@ -369,24 +367,10 @@ static int msm_hdmi_dev_probe(struct platform_device *pdev)
 		hdmi->hpd_clks[i] = clk;
 	}
 
-	hdmi->pwr_clks = devm_kcalloc(&pdev->dev,
-				      config->pwr_clk_cnt,
-				      sizeof(hdmi->pwr_clks[0]),
-				      GFP_KERNEL);
-	if (!hdmi->pwr_clks)
-		return -ENOMEM;
-
-	for (i = 0; i < config->pwr_clk_cnt; i++) {
-		struct clk *clk;
-
-		clk = msm_clk_get(pdev, config->pwr_clk_names[i]);
-		if (IS_ERR(clk))
-			return dev_err_probe(dev, PTR_ERR(clk),
-					     "failed to get pwr clk: %s\n",
-					     config->pwr_clk_names[i]);
-
-		hdmi->pwr_clks[i] = clk;
-	}
+	hdmi->extp_clk = devm_clk_get_optional(&pdev->dev, "extp");
+	if (IS_ERR(hdmi->extp_clk))
+		return dev_err_probe(dev, PTR_ERR(hdmi->extp_clk),
+				     "failed to get extp clock\n");
 
 	hdmi->hpd_gpiod = devm_gpiod_get_optional(&pdev->dev, "hpd", GPIOD_IN);
 	/* This will catch e.g. -EPROBE_DEFER */
diff --git a/drivers/gpu/drm/msm/hdmi/hdmi.h b/drivers/gpu/drm/msm/hdmi/hdmi.h
index 381f957b34305494cb4da0b7dccb73b6ac3a1377..3314bb8a09d6bea7e34ad9050970bf43c64d1558 100644
--- a/drivers/gpu/drm/msm/hdmi/hdmi.h
+++ b/drivers/gpu/drm/msm/hdmi/hdmi.h
@@ -50,7 +50,7 @@ struct hdmi {
 	struct regulator_bulk_data *hpd_regs;
 	struct regulator_bulk_data *pwr_regs;
 	struct clk **hpd_clks;
-	struct clk **pwr_clks;
+	struct clk *extp_clk;
 
 	struct gpio_desc *hpd_gpiod;
 
@@ -95,10 +95,6 @@ struct hdmi_platform_config {
 	const char * const *hpd_clk_names;
 	const long unsigned *hpd_freq;
 	int hpd_clk_cnt;
-
-	/* clks that need to be on for screen pwr (ie pixel clk): */
-	const char * const *pwr_clk_names;
-	int pwr_clk_cnt;
 };
 
 struct hdmi_bridge {
diff --git a/drivers/gpu/drm/msm/hdmi/hdmi_bridge.c b/drivers/gpu/drm/msm/hdmi/hdmi_bridge.c
index 9f1191e4c02081c99caa75e1c9c99051f7cd14d1..e7997e4a741c3b27c9086651efe6b79dbba6bf88 100644
--- a/drivers/gpu/drm/msm/hdmi/hdmi_bridge.c
+++ b/drivers/gpu/drm/msm/hdmi/hdmi_bridge.c
@@ -19,7 +19,7 @@ static void msm_hdmi_power_on(struct drm_bridge *bridge)
 	struct hdmi_bridge *hdmi_bridge = to_hdmi_bridge(bridge);
 	struct hdmi *hdmi = hdmi_bridge->hdmi;
 	const struct hdmi_platform_config *config = hdmi->config;
-	int i, ret;
+	int ret;
 
 	pm_runtime_get_sync(&hdmi->pdev->dev);
 
@@ -27,21 +27,15 @@ static void msm_hdmi_power_on(struct drm_bridge *bridge)
 	if (ret)
 		DRM_DEV_ERROR(dev->dev, "failed to enable pwr regulator: %d\n", ret);
 
-	if (config->pwr_clk_cnt > 0) {
+	if (hdmi->extp_clk) {
 		DBG("pixclock: %lu", hdmi->pixclock);
-		ret = clk_set_rate(hdmi->pwr_clks[0], hdmi->pixclock);
-		if (ret) {
-			DRM_DEV_ERROR(dev->dev, "failed to set pixel clk: %s (%d)\n",
-					config->pwr_clk_names[0], ret);
-		}
-	}
+		ret = clk_set_rate(hdmi->extp_clk, hdmi->pixclock);
+		if (ret)
+			DRM_DEV_ERROR(dev->dev, "failed to set extp clk rate: %d\n", ret);
 
-	for (i = 0; i < config->pwr_clk_cnt; i++) {
-		ret = clk_prepare_enable(hdmi->pwr_clks[i]);
-		if (ret) {
-			DRM_DEV_ERROR(dev->dev, "failed to enable pwr clk: %s (%d)\n",
-					config->pwr_clk_names[i], ret);
-		}
+		ret = clk_prepare_enable(hdmi->extp_clk);
+		if (ret)
+			DRM_DEV_ERROR(dev->dev, "failed to enable extp clk: %d\n", ret);
 	}
 }
 
@@ -51,15 +45,15 @@ static void power_off(struct drm_bridge *bridge)
 	struct hdmi_bridge *hdmi_bridge = to_hdmi_bridge(bridge);
 	struct hdmi *hdmi = hdmi_bridge->hdmi;
 	const struct hdmi_platform_config *config = hdmi->config;
-	int i, ret;
+	int ret;
 
 	/* TODO do we need to wait for final vblank somewhere before
 	 * cutting the clocks?
 	 */
 	mdelay(16 + 4);
 
-	for (i = 0; i < config->pwr_clk_cnt; i++)
-		clk_disable_unprepare(hdmi->pwr_clks[i]);
+	if (hdmi->extp_clk)
+		clk_disable_unprepare(hdmi->extp_clk);
 
 	ret = regulator_bulk_disable(config->pwr_reg_cnt, hdmi->pwr_regs);
 	if (ret)
@@ -438,7 +432,6 @@ static enum drm_mode_status msm_hdmi_bridge_tmds_char_rate_valid(const struct dr
 {
 	struct hdmi_bridge *hdmi_bridge = to_hdmi_bridge(bridge);
 	struct hdmi *hdmi = hdmi_bridge->hdmi;
-	const struct hdmi_platform_config *config = hdmi->config;
 	struct msm_drm_private *priv = bridge->dev->dev_private;
 	struct msm_kms *kms = priv->kms;
 	long actual;
@@ -451,8 +444,8 @@ static enum drm_mode_status msm_hdmi_bridge_tmds_char_rate_valid(const struct dr
 		actual = kms->funcs->round_pixclk(kms,
 						  tmds_rate,
 						  hdmi_bridge->hdmi->encoder);
-	else if (config->pwr_clk_cnt > 0)
-		actual = clk_round_rate(hdmi->pwr_clks[0], tmds_rate);
+	else if (hdmi->extp_clk)
+		actual = clk_round_rate(hdmi->extp_clk, tmds_rate);
 	else
 		actual = tmds_rate;
 

-- 
2.39.5


