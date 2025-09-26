Return-Path: <devicetree+bounces-221756-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D4F5BA2B89
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 09:27:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5666A4C070F
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 07:27:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A529628852E;
	Fri, 26 Sep 2025 07:26:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Z/jniJ1U"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 092BF288527
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 07:26:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758871590; cv=none; b=FGQESOp7jNR/a7edM8cwP5m79DwO63xgOwEL4fHrOBZ+yYPe7FKvOo4LdqmPljNNKS7cE44uxHCaKZOFrOhpDZOXT1CUNVlcox4C1PZcGIMf3A/jJcEcQ+HRsvtKne2XYj0a/37br0CFZ+XRj0r/7ufgoKkDxkhwWZpppzfYuxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758871590; c=relaxed/simple;
	bh=0c1kjfygm3Igs/lmvv1odqP5mBi6xk6AIpYhTadaHr0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ib0SEzX5ZRPV7I48JnN+TW9J1DqbfvijRMt+Gx6GP4uX7E4G1wSmzdmOYJrInDFoG0aiZNQ/foXEFMi/2r+xPoUu6IsCX430+/WRCHWUD5OET3KvNqavz1CCG5U4xL0PCdiChUprYZR07ISfvdyPdcFcdktLOLL/aSH6OuiBWdc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Z/jniJ1U; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58Q6rAbP027784
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 07:26:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	LDnnPZbDY0CeogNvXqz1T50BX7PocujidnNTMym7C0k=; b=Z/jniJ1UlsTGZWrO
	xj+uKz2uTEQNJjyzrJiGfEbVZuEuJWPfjxN6jDFYEBeNP1KXZnw9tqdwQCc7yPEF
	40a50zUys8wnEzXH73q1TLF3kA8K6nzYMaDWQF3Vv1dsduj+UcYLCk0wrgXPD4ki
	LhSMj31/ZoSpv6TIzjSQzjaJilM3Rv2gZh0tYgV+fer73L4RD6Jr40Be6g5i7VIq
	fjOo4H2wqHJPiKpPyHv8ppYAvEPLV1YfdGEb0wLsbMAnY4DfqcI83Ok4yjlUZGIB
	5P4N+ELCDxb0r4xxx7r5/PyWrUh52GDvimwhrBqujjSlOFh1DhIZinuDue74Ybg0
	KWZL/g==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49db0q1vds-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 07:26:27 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2696ab1bc16so4923995ad.2
        for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 00:26:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758871587; x=1759476387;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LDnnPZbDY0CeogNvXqz1T50BX7PocujidnNTMym7C0k=;
        b=EE8aM3OlPAmejKaYHtK3aovgLHODmKzEHjhj7QcGWCV5vEW9cgydFprPwEGwwRGb98
         b19+l7TS/G8XHtpfPbl/1wkttq/ENDEuHYjg+8pc4WxKOw6x41NGeHH6vRORPrgBZNrs
         FBV8DQct7LGQkTFy459d9HHlcKOCEJNRUUolcr9qO+W6RLldXdkKawdmx9axoHztxaAl
         BavWvfZYxve+QnygkMxk/TkhTq0/wHILd+E8gIfqkkmKrvoqmCkYNq+DqjaSK2ZOQ5Ll
         LnjU9esrbYGTgUjtHe4d8V0jEOAWo1gQbKGJ/FgwCr6dmOBZeMF3q2FYmc4pxB8sjOHN
         9fHg==
X-Forwarded-Encrypted: i=1; AJvYcCVHe+jOV7c7CBMG1BvbJxz+6zOmcoUvzz23UzB+kwxEs4AEW2FDA07ucfWCYqwbkhGSEGjrb78BqrCW@vger.kernel.org
X-Gm-Message-State: AOJu0Ywb0iXPifyeZofNXU6pXMEUBTpPPgO+IA5p9+53h27mUNVK3Y5S
	7izja9WZtPlWQcm/GW6+SdUIfnRsTpoxctlx2rRCHRP7c9gr23RvndpWw/oqm2XqM3vvxf2cJap
	NT2JcAlwvOpCybbu9dwvV2bWKtRcZICYlCiREr8A3Ne0cUxKIWq9EnFRKBCfYCw0BH8CRucYI+8
	o=
X-Gm-Gg: ASbGncv+8trNJMvRQIo54pkT2qEqtwVfQPn11N7sDVXO3ctv9APWUWchViN6zPFklQK
	Q4HS2KiNdBtya06U256syx4lTxeUFdhpE1fa2Q2uXBecCkgwXH0AnATKJp29sVeVzuW9qP3vA76
	Di1QipjQSKtV/0m+99tO6dGp/4W0KkAjFl/4yArPfuosqYYlI7IND14YYBGIduW3ISJiaYJTDqk
	jhxHKleS1lBqjTweDiC87nYXzNY9aRXNdvoxzfvHi8Irt58sbXantJTCD0/CsNGhTe+nphVVoEX
	UzO2t9Uq5965D2NL5vkZ+JxMerUVLeq1hBhvxOij/YzTBlxPFM876AhhctNWqri4pZaroMElwBa
	bAeV+T0LhiiPUeDv8u5SUAvpjxljKLcXygm8OMjpCLXnDeRQWDk1wTRhb
X-Received: by 2002:a17:902:cf08:b0:27e:da7d:32d2 with SMTP id d9443c01a7336-27eda7d3793mr30320465ad.7.1758871586518;
        Fri, 26 Sep 2025 00:26:26 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHxiFddbFAngGf1XM+qgqpfj3JT8h9WNMtP7aQ5DBj35K+y1oPgxXc4iPIr97dhjyeNzhgjAA==
X-Received: by 2002:a17:902:cf08:b0:27e:da7d:32d2 with SMTP id d9443c01a7336-27eda7d3793mr30320095ad.7.1758871586029;
        Fri, 26 Sep 2025 00:26:26 -0700 (PDT)
Received: from sziotdisp01-gv.qualcomm.com.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed671d8a2sm45117985ad.55.2025.09.26.00.26.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Sep 2025 00:26:25 -0700 (PDT)
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Date: Fri, 26 Sep 2025 15:25:38 +0800
Subject: [PATCH v7 02/14] phy: qcom: qmp-usbc: Rename USB-specific ops to
 prepare for DP support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250926-add-displayport-support-for-qcs615-platform-v7-2-dc5edaac6c2b@oss.qualcomm.com>
References: <20250926-add-displayport-support-for-qcs615-platform-v7-0-dc5edaac6c2b@oss.qualcomm.com>
In-Reply-To: <20250926-add-displayport-support-for-qcs615-platform-v7-0-dc5edaac6c2b@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758871562; l=5530;
 i=xiangxu.yin@oss.qualcomm.com; s=20241125; h=from:subject:message-id;
 bh=0c1kjfygm3Igs/lmvv1odqP5mBi6xk6AIpYhTadaHr0=;
 b=qzNO1eXnVdxmYW9uDiezxYD8k/slxmAUVRfxGy3B4wOLxnYujakXy1F8v2+t8hWqAXzQFDyoW
 DjiJhnc58wnBVLu//Pw8A81pvwNsrdPc2y40t6ch5tRkC8FZ069J7mS
X-Developer-Key: i=xiangxu.yin@oss.qualcomm.com; a=ed25519;
 pk=F1TwipJzpywfbt3n/RPi4l/A4AVF+QC89XzCHgZYaOc=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI1MDE3MSBTYWx0ZWRfX4Ih6CuzrNS/g
 Pz0yH5+kYltmX8Eg4f11ZGTCQ3DjPxl3ZUrF71+AAZ/w7xwX+nrrVyqzCx50Uub6dj6C2ZABf39
 L0RrBDbgNy6fUvuB1gtPeL9GbJOY/xnLmS5em0QTlJ0VCl621EpQdVs0uvZodJTsmXVTD+gkNhS
 ggdzhK9JrtIdjR8BnYa7OcS7ON+5l0mfKdjarnHzgLrC69H9AaOuHhihqRirTDqHvnKOLe5m0PY
 xT0NblQ7SMylGfZQapIlgy7TS4PVY+RVSYjFiRnI8wDsIJ6AZI7gp7T6XQdBx0MAuQQzm8HOWcx
 0Bc/isdWn5c1Tols2f5zifqKBmzU5l+fOw7xWvSxjX+260DndzNCbK46zyJHGsw+jEzCHEzehbX
 8K8SrjjKoD3Q/9REsJfnaMTIdWZU4w==
X-Proofpoint-GUID: Cv6gdkbWE0l3BVPA5WnUTvr8ib88zYMF
X-Proofpoint-ORIG-GUID: Cv6gdkbWE0l3BVPA5WnUTvr8ib88zYMF
X-Authority-Analysis: v=2.4 cv=JsX8bc4C c=1 sm=1 tr=0 ts=68d64023 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=TrVKeqC-PG4e-vJ_ulQA:9
 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-26_02,2025-09-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 priorityscore=1501 spamscore=0 malwarescore=0
 lowpriorityscore=0 bulkscore=0 clxscore=1015 phishscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509250171

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


