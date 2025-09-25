Return-Path: <devicetree+bounces-221209-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 14C1EB9DC30
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 09:06:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2377B1B25CF2
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 07:06:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F0B0D2E9EC9;
	Thu, 25 Sep 2025 07:05:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MbSAvS0z"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 475D02E9722
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 07:05:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758783937; cv=none; b=IbrN5MbCqCXLJ899U+j4kN/4MzzfT3g1cwU4ER2v8YZsTXraEhHiL/CBJ0GUYI37NDbdKYBxG+sQCJIN1X19wW4J1ydEtpkAXeXhv5f+c6kXcDO8MAqdgH/QeuLYT5S1y0azhHoeG5eygf8xicU2LMfN+7SVJgZyAlsD30hQB8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758783937; c=relaxed/simple;
	bh=0c1kjfygm3Igs/lmvv1odqP5mBi6xk6AIpYhTadaHr0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=peHJQfrK8bxZVwZIpGlMffIvM1hPlZTTkovoCzu4YY7nuIo15O7Fc/mRMMFqSTggEWcguhj36RGP57ofllSAw8DFGrCvWxBaR2B50ETpUjskzKzADKQHEk8eDguT62TsjBt6REvddtD3WB6SBgRntqWq2ENUgk51bwEzf7+oWZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MbSAvS0z; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P0MC4D002079
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 07:05:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	LDnnPZbDY0CeogNvXqz1T50BX7PocujidnNTMym7C0k=; b=MbSAvS0zVow1g8SB
	dCD6Wrj/Dj5ZxBSmTELjFC/o5KzQhH2WtjOTiIZKZ4G7NIZdClV6gLwGegD+zWn0
	sxp0o6F1KAhLhwpUrAdp6ozvt5L5xlF9qrottp9K+NDde1Kow3GrcE8R9wwnwCdj
	fzBH6az/dJGa9KCbVQqxrZDLGTdU814+fG6ledNKuD/E+tXULF/XJeXVkj1iE/l3
	eoYRXJQuLItZTrPYbEw5BTADCVvPSy5Cg/EBwpuOrFeAjJFuYqNxyZHHWEl1AKsE
	8F5ooTNACu2Zx8bz1koetcEW24rB+52219cszzzSZRQQKNjq/XVoERn1XA26Auib
	0nVCnw==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499k98q489-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 07:05:35 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-32ed9e38bccso177678a91.1
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 00:05:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758783934; x=1759388734;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LDnnPZbDY0CeogNvXqz1T50BX7PocujidnNTMym7C0k=;
        b=jzC+FgUBRJqVD9jBCJvfAsGQtLGQwn3N5m5E0UFpwHyibxtaCcTftmRXAXQu/9mhKE
         Kh2DxPmQOJRqkmjxSCr0qRUFAHdNOj7KZR8ZwjEttlDcHegRyeL0kJboeUhPXoHEkQdR
         YMwLxuLtDGORryRXovXRidBvbHExYX9Zjxpy6p0to1vWBG5/yj0aza90Y9w+LkOeo0gU
         9rbCz8s/6ccBnegaPooCuaZR57FpH30T0L8aot4d1k4XRpYLkxAXU/uMxBH4mVND3iEi
         9nA/y9IzVMrBripsfTHPTGzV1RH1lN7V3Q3PGc433XKmPTX7A/cNVd9A+6zXJhHmo+KA
         73gw==
X-Forwarded-Encrypted: i=1; AJvYcCWsdMjbuq8emlH/3qEZgBH8RNJCZpBdy5NffGi0teKeMe+oNFLEGZYOZbVaW49cr51ul4pVg5mU1Ud2@vger.kernel.org
X-Gm-Message-State: AOJu0YzFU21iHjTia4JqPV8TZpvfYwnmPpNYj7uedY3z85geDghyfKyK
	ETokdnr4oyAYnDDkyJlNv6Xv6FrzcjDGr3I15uzB+rCzRaxZw+esN28U1a4wmcuDGxAOFFqF2Kb
	mKnUrG263yCkyVZR/wjkCoI/YwxTfj0nYKEYPTJBQ0g6OheKsattWNjBhIPVPOPM126VGx5Er
X-Gm-Gg: ASbGncvPMnzSWTLzAXHNfqm/ux36pwfhe1wX5JJXzCsXf3j1LlDU81Z/tKhZwYmZcAs
	W79Z4Eiy3kUWqIEBZ09elaDm6WE4P31L61oaQx3klC+qEkUubvmVLb4EucKvxtMfVlUrDRnx9LU
	PDjDVTuK3wIMrc4iORE3XfBE1Y1qhcB4q4LggXnwYbmETStOu2Bkm52UfHSwiis5t6cVbJUQYPc
	p9L30p+sVe7nLoGFo2mheiCvLr3SYERJwuFdDtAP+bHPPkaHpcwMBbLs+OzzGOPkz0or1F6DT4R
	CwHN72qyYVLVCTFfQLKh9MdGyncjRslyjOTSa7nHPRYlMKHbKnf7wgJt8RpOFsRmXyZ86ibfJdQ
	GQkNdahwPyVl7hmXTTtWevJp0cOhtPHByIXJSf+59/v0zPspqGiqBl2q3
X-Received: by 2002:a17:90b:1b49:b0:330:7fd8:9b05 with SMTP id 98e67ed59e1d1-3342a2bee5dmr1274981a91.3.1758783933518;
        Thu, 25 Sep 2025 00:05:33 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFWbAjdQBZAiMN45xOAnu1O/0Q8fViQcyqxGMQuVG8YuznXTgHuRwo+qEPfxecpoHWl6BhETA==
X-Received: by 2002:a17:90b:1b49:b0:330:7fd8:9b05 with SMTP id 98e67ed59e1d1-3342a2bee5dmr1274965a91.3.1758783933042;
        Thu, 25 Sep 2025 00:05:33 -0700 (PDT)
Received: from sziotdisp01-gv.qualcomm.com.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3342a2bd584sm914253a91.0.2025.09.25.00.05.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Sep 2025 00:05:32 -0700 (PDT)
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Date: Thu, 25 Sep 2025 15:04:48 +0800
Subject: [PATCH v6 02/14] phy: qcom: qmp-usbc: Rename USB-specific ops to
 prepare for DP support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250925-add-displayport-support-for-qcs615-platform-v6-2-419fe5963819@oss.qualcomm.com>
References: <20250925-add-displayport-support-for-qcs615-platform-v6-0-419fe5963819@oss.qualcomm.com>
In-Reply-To: <20250925-add-displayport-support-for-qcs615-platform-v6-0-419fe5963819@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        fange.zhang@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        li.liu@oss.qualcomm.com,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758783909; l=5530;
 i=xiangxu.yin@oss.qualcomm.com; s=20241125; h=from:subject:message-id;
 bh=0c1kjfygm3Igs/lmvv1odqP5mBi6xk6AIpYhTadaHr0=;
 b=wjTAycCdmjCTAguPTqc6Notc4zGTXomRPrew/tBieAdqXwRnNKdGtVpPuk0UiYEdeneXzM1yR
 HEzTzE9wDx+BM9J+pO2UIylegwy/x80LQvDKR6wDwGY77jRPxD3osBq
X-Developer-Key: i=xiangxu.yin@oss.qualcomm.com; a=ed25519;
 pk=F1TwipJzpywfbt3n/RPi4l/A4AVF+QC89XzCHgZYaOc=
X-Proofpoint-GUID: xl1YE0UdASZaRNCEynwy0dHoJLrX0hEi
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAxOCBTYWx0ZWRfX3MiGs3rjYbqJ
 J+z98xFLB9ULoLY3YMvnISVYj7jejGImqsJfiIyWbNt7+FIqTn8Be5eHj169ecVYxje4OgfN7Wz
 gsl44GyYZVTMNVapqcuWu07GtlB0J5Ecap2SIld+ivntCY3qikfFZj5lVm0wj1WQta29sQ2NNgG
 nqNmYhirKOIm8Lf47BqI6jIKh5hI0kcnKBzALShldo3Vsg+vcJxKsMqOMoguZ7EKesEatj+9SjC
 kW+xP253x4qZoZPV/GgC/RYKzSM82tPJCrYWnM7+1WIb/79RJM6X/mTuGnlZOo78rrig3LgnV7G
 lLB+xPYbsYlNraiX061yZJEDHJ8NG/J3lmaGiJCLB+kTRz0pyLK4ZhrKyWWbHxr6CxzOozNN2r5
 nhaI0ZAq
X-Proofpoint-ORIG-GUID: xl1YE0UdASZaRNCEynwy0dHoJLrX0hEi
X-Authority-Analysis: v=2.4 cv=Dp1W+H/+ c=1 sm=1 tr=0 ts=68d4e9bf cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=TrVKeqC-PG4e-vJ_ulQA:9
 a=QEXdDO2ut3YA:10 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 adultscore=0 bulkscore=0 impostorscore=0
 phishscore=0 spamscore=0 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200018

To support following DisplayPort (DP) mode over the Type-C PHY, rename
USB-specific functions and ops to clearly separate them from common or
DP-related logic.

This is a preparatory cleanup to enable USB + DP dual mode.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 55 ++++++++++++++++----------------
 1 file changed, 27 insertions(+), 28 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
index 5e7fcb26744a4401c3076960df9c0dcbec7fdef7..62920dd2aed39bbfddd54ba2682e3d45d65a09c8 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
@@ -342,11 +342,10 @@ struct qmp_usbc {
 
 	struct mutex phy_mutex;
 
+	struct phy *usb_phy;
 	enum phy_mode mode;
 	unsigned int usb_init_count;
 
-	struct phy *phy;
-
 	struct clk_fixed_rate pipe_clk_fixed;
 
 	struct typec_switch_dev *sw;
@@ -454,7 +453,7 @@ static const struct qmp_phy_cfg sdm660_usb3phy_cfg = {
 	.regs			= qmp_v3_usb3phy_regs_layout_qcm2290,
 };
 
-static int qmp_usbc_init(struct phy *phy)
+static int qmp_usbc_com_init(struct phy *phy)
 {
 	struct qmp_usbc *qmp = phy_get_drvdata(phy);
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
@@ -504,7 +503,7 @@ static int qmp_usbc_init(struct phy *phy)
 	return ret;
 }
 
-static int qmp_usbc_exit(struct phy *phy)
+static int qmp_usbc_com_exit(struct phy *phy)
 {
 	struct qmp_usbc *qmp = phy_get_drvdata(phy);
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
@@ -518,7 +517,7 @@ static int qmp_usbc_exit(struct phy *phy)
 	return 0;
 }
 
-static int qmp_usbc_power_on(struct phy *phy)
+static int qmp_usbc_usb_power_on(struct phy *phy)
 {
 	struct qmp_usbc *qmp = phy_get_drvdata(phy);
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
@@ -566,7 +565,7 @@ static int qmp_usbc_power_on(struct phy *phy)
 	return ret;
 }
 
-static int qmp_usbc_power_off(struct phy *phy)
+static int qmp_usbc_usb_power_off(struct phy *phy)
 {
 	struct qmp_usbc *qmp = phy_get_drvdata(phy);
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
@@ -587,20 +586,20 @@ static int qmp_usbc_power_off(struct phy *phy)
 	return 0;
 }
 
-static int qmp_usbc_enable(struct phy *phy)
+static int qmp_usbc_usb_enable(struct phy *phy)
 {
 	struct qmp_usbc *qmp = phy_get_drvdata(phy);
 	int ret;
 
 	mutex_lock(&qmp->phy_mutex);
 
-	ret = qmp_usbc_init(phy);
+	ret = qmp_usbc_com_init(phy);
 	if (ret)
 		goto out_unlock;
 
-	ret = qmp_usbc_power_on(phy);
+	ret = qmp_usbc_usb_power_on(phy);
 	if (ret) {
-		qmp_usbc_exit(phy);
+		qmp_usbc_com_exit(phy);
 		goto out_unlock;
 	}
 
@@ -611,19 +610,19 @@ static int qmp_usbc_enable(struct phy *phy)
 	return ret;
 }
 
-static int qmp_usbc_disable(struct phy *phy)
+static int qmp_usbc_usb_disable(struct phy *phy)
 {
 	struct qmp_usbc *qmp = phy_get_drvdata(phy);
 	int ret;
 
 	qmp->usb_init_count--;
-	ret = qmp_usbc_power_off(phy);
+	ret = qmp_usbc_usb_power_off(phy);
 	if (ret)
 		return ret;
-	return qmp_usbc_exit(phy);
+	return qmp_usbc_com_exit(phy);
 }
 
-static int qmp_usbc_set_mode(struct phy *phy, enum phy_mode mode, int submode)
+static int qmp_usbc_usb_set_mode(struct phy *phy, enum phy_mode mode, int submode)
 {
 	struct qmp_usbc *qmp = phy_get_drvdata(phy);
 
@@ -632,10 +631,10 @@ static int qmp_usbc_set_mode(struct phy *phy, enum phy_mode mode, int submode)
 	return 0;
 }
 
-static const struct phy_ops qmp_usbc_phy_ops = {
-	.init		= qmp_usbc_enable,
-	.exit		= qmp_usbc_disable,
-	.set_mode	= qmp_usbc_set_mode,
+static const struct phy_ops qmp_usbc_usb_phy_ops = {
+	.init		= qmp_usbc_usb_enable,
+	.exit		= qmp_usbc_usb_disable,
+	.set_mode	= qmp_usbc_usb_set_mode,
 	.owner		= THIS_MODULE,
 };
 
@@ -690,7 +689,7 @@ static int __maybe_unused qmp_usbc_runtime_suspend(struct device *dev)
 
 	dev_vdbg(dev, "Suspending QMP phy, mode:%d\n", qmp->mode);
 
-	if (!qmp->phy->init_count) {
+	if (!qmp->usb_init_count) {
 		dev_vdbg(dev, "PHY not initialized, bailing out\n");
 		return 0;
 	}
@@ -710,7 +709,7 @@ static int __maybe_unused qmp_usbc_runtime_resume(struct device *dev)
 
 	dev_vdbg(dev, "Resuming QMP phy, mode:%d\n", qmp->mode);
 
-	if (!qmp->phy->init_count) {
+	if (!qmp->usb_init_count) {
 		dev_vdbg(dev, "PHY not initialized, bailing out\n");
 		return 0;
 	}
@@ -865,11 +864,11 @@ static int qmp_usbc_typec_switch_set(struct typec_switch_dev *sw,
 	qmp->orientation = orientation;
 
 	if (qmp->usb_init_count) {
-		qmp_usbc_power_off(qmp->phy);
-		qmp_usbc_exit(qmp->phy);
+		qmp_usbc_usb_power_off(qmp->usb_phy);
+		qmp_usbc_com_exit(qmp->usb_phy);
 
-		qmp_usbc_init(qmp->phy);
-		qmp_usbc_power_on(qmp->phy);
+		qmp_usbc_com_init(qmp->usb_phy);
+		qmp_usbc_usb_power_on(qmp->usb_phy);
 	}
 
 	mutex_unlock(&qmp->phy_mutex);
@@ -1097,14 +1096,14 @@ static int qmp_usbc_probe(struct platform_device *pdev)
 	if (ret)
 		goto err_node_put;
 
-	qmp->phy = devm_phy_create(dev, np, &qmp_usbc_phy_ops);
-	if (IS_ERR(qmp->phy)) {
-		ret = PTR_ERR(qmp->phy);
+	qmp->usb_phy = devm_phy_create(dev, np, &qmp_usbc_usb_phy_ops);
+	if (IS_ERR(qmp->usb_phy)) {
+		ret = PTR_ERR(qmp->usb_phy);
 		dev_err(dev, "failed to create PHY: %d\n", ret);
 		goto err_node_put;
 	}
 
-	phy_set_drvdata(qmp->phy, qmp);
+	phy_set_drvdata(qmp->usb_phy, qmp);
 
 	of_node_put(np);
 

-- 
2.34.1


