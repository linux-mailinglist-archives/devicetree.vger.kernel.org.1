Return-Path: <devicetree+bounces-221054-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E00FB9CF20
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 02:54:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E15B1420391
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 00:54:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 91B572DE6FB;
	Thu, 25 Sep 2025 00:52:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PyDV3ovX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C9432DC794
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 00:52:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758761564; cv=none; b=EmaNrUz4qkDGY9LeDtQmWHkA9hutqRFNIXzySpuMgHDcofeeVCSDi2Fa7G9A5g0elDbzlb8qfwznE6jjPPYzk6gwT//rtO5LXEhqRaXzTb8lrvGPtO10vRNaXdFjPZRb2JpoqPjZ4aJmQSERAB35OuIguRDFK05e8N9nssAEnoQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758761564; c=relaxed/simple;
	bh=QSaczH0DxPhO08LlshD2u4AexZPXX/GpQPCyuLMnHus=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=AN3zqaZntMqpTehUF42+R50NJjrrJp+NaOyHlnWO0Uo8RO/SkMRgriZZ7VBIDnO0jrHJ77RaeAd2GslEpIr16qwo5p43xr2quhSqbG+MDygDsRXy2nthNwf7q6R6ArNlHreZoKKppFOE+2kLn59SQ4deZR7Inbx39sOZHz4/ve4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PyDV3ovX; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P0gtH2002665
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 00:52:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=fMLDrKeIfTQ
	d2Dm3YXJnSbuw4SMZKXrwiUeC9YZ70YE=; b=PyDV3ovXtTN5nKymmA9cph+zUpc
	s5bH4HNUejcwXAnZUjDYn4ZOanHubzgLFJFYufarOiJ222XXbR9fA+iSh2LYexJc
	77MBsu4F+yBQaUJhRC6gxQyo/cDJr8Mxx1qaRvaDk1hqXtlpdXh4UjOZrmnZ/asI
	o7nEhw/cYmGqe2rwq3vhNpMMNZgk1MCHzt9KLZINU5CrKPH5JH4LUVJfpbPErb0T
	XfPBqUyJlRGlKvhutZikDC8QCawhY2Pk6wDYOQgdXs7jhqF0kIOWFCOgdbmi0lEG
	LqCjlVzPh6T3jGSUDUn0QCxHmk5Bc+2HawSo5bMB9GkmOXltuhbrJEGsaHg==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49bajf0ru5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 00:52:41 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-252afdfafe1so4142325ad.0
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 17:52:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758761561; x=1759366361;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fMLDrKeIfTQd2Dm3YXJnSbuw4SMZKXrwiUeC9YZ70YE=;
        b=e064RojTHizaDAG25rEmcbPZkxF22s1hZjRuxBFHH1iGGe5TdRf74zQxSqhyzeJuu/
         MVRsKgdirdyzQPgn6pfSG79AX0Nv7wN/PJcCdnryqKxjuDzHdbbq4te+yoQrlmOomheT
         ysILyKJIqYMZOtHdjoOg8Zd7mMxX/0s1PAlvV2ypkNYbe6v5q8RbW1DSybTuZCQoMQcg
         4MBUC2la/pDrF5Hp0Xy5+aFllshTV7HJPMraBSdmIq/+cloqSk25QPeUPwg8+OQHdmAz
         J14l7FI7A7wYMoN+18TkGPgPbXOl3HRBRcVawNWjiGByUbpWdVapO/VdcvpEAdvlSwEb
         ECoA==
X-Forwarded-Encrypted: i=1; AJvYcCU5nPBfBqNVpqpmX83duAjK23Z5WT1hBkX+dJZE5mp8h4Xc8tTS6rdtVC42kCkmJC7uHF5G8N0tJC9m@vger.kernel.org
X-Gm-Message-State: AOJu0YxOZqtNikadTDAxzSwniLvK9Q+pirwuKsOwYDYcMcYNwh1DOQ+c
	p2YsOZvctwIpcxGk1ZBDIjgDHG2KZ1J4h7EvGRK90unw1jsd024eO1XxqIZQbKEglR1tISXAC5H
	kS784Lyoy+2mVM518StGrL/Tl8womc8e4f+o3ClOmZLgW/xboWZ8z9Vv5Ia8J4xyr
X-Gm-Gg: ASbGncsFiM/QOBIjKWre1fW1kWKHdSO3n3neNSFcJeWZXjgN/LDQnxNO4COLK5ZVSDD
	LQOtBiM/8toQ/QNdXbx1GxrzK/f35QfWzPFpkgQtsaiRqQtLm4I3RjSBeiqL2rK80Doh+qSgGph
	LLeRnzeZL2QDK6fRhYHmmSrKcQoNp3Ko6VXlxx3rHnWTVSWU7/C2W1+rQANZc5ds1bxuWbW3El/
	j3bwc9i+VNvsGD40zY7SR2zpF664KFUeT6flzEVR2+uE4HPkXsgnMVAQqu6DuI7fo9S9bgUqW/l
	baLxRAj1TQHdsS3eIUlNZsAgnDasgcgFvJ0D7f7jkl1vNN6yTYfklDhkyeEkHzYj+/HCbdVVDMy
	3CpkSSu4zvXJ0r+wQ
X-Received: by 2002:a17:902:e843:b0:24e:3cf2:2450 with SMTP id d9443c01a7336-27ed49b30f2mr18686155ad.2.1758761560985;
        Wed, 24 Sep 2025 17:52:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFPH5N4FiwgPEeFKYPrADX4IgOesXzC/XJSHJZuzBfk1v+pbr4IOGkX5np/f/5CXi9/6YxsQg==
X-Received: by 2002:a17:902:e843:b0:24e:3cf2:2450 with SMTP id d9443c01a7336-27ed49b30f2mr18685855ad.2.1758761560535;
        Wed, 24 Sep 2025 17:52:40 -0700 (PDT)
Received: from hu-wcheng-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed6ac27d4sm5238105ad.135.2025.09.24.17.52.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 17:52:39 -0700 (PDT)
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
To: krzk+dt@kernel.org, conor+dt@kernel.org, dmitry.baryshkov@oss.qualcomm.com,
        kishon@kernel.org, vkoul@kernel.org, gregkh@linuxfoundation.org,
        robh@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>,
        Elson Roy Serrao <quic_eserrao@quicinc.com>
Subject: [PATCH v2 06/10] phy: qualcomm: Update the QMP clamp register for V6
Date: Wed, 24 Sep 2025 17:52:24 -0700
Message-Id: <20250925005228.4035927-7-wesley.cheng@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250925005228.4035927-1-wesley.cheng@oss.qualcomm.com>
References: <20250925005228.4035927-1-wesley.cheng@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: 1eKEUVIXjacHfvTdDmzbYyuTivuAyIVN
X-Authority-Analysis: v=2.4 cv=fY2ty1QF c=1 sm=1 tr=0 ts=68d49259 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8 a=p6rJcVbQ9lVvMV6GHPsA:9
 a=324X-CrmTo6CU4MGRt3R:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIyMDE2OCBTYWx0ZWRfX4W3hIDDMdwfu
 a5OgwS2GpU7KoBH+A6P33YVXpuqBAnCHFOtLMHah56oaG+vOEKzDTSqyXmmVxnaay5j+SPFMSp5
 g6/VQ3cxDonWN5zvjqk/GBF4Uim7g6PZb4tWpnI7sO1PHNPflWDa5NdZ1GvNX8E/C7lXhaInZH/
 /WYKzWKxsO0g5DRaLNpksCcXY/5yrC4es5PHYloG0M395B416zZ8d0SCMwagHaWzGdbrX66NjAh
 SaP8FufwxVMbAxSu3I60csiY5y/oR7ZMEy0bKnWC3mYvVgYFtGzR7kujqdn8wIS36Vez1Y+XwuZ
 5Xnf3TO/HOuIG/bJrPPiOMGpZ3US+71m7dqJUFm+i8O8zE0e1EDHeBbZDjChgrlD/vfeRqNXSYG
 6CRn38tD
X-Proofpoint-ORIG-GUID: 1eKEUVIXjacHfvTdDmzbYyuTivuAyIVN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 malwarescore=0 spamscore=0 adultscore=0 impostorscore=0
 phishscore=0 bulkscore=0 priorityscore=1501 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509220168

QMP combo phy V6 and above use the clamp register from the PCS always on
(AON) address space.  Update the driver accordingly.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Elson Roy Serrao <quic_eserrao@quicinc.com>
Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 38 ++++++++++++++++++++---
 1 file changed, 33 insertions(+), 5 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 7b5af30f1d02..1caa1fb6a8c7 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -29,7 +29,10 @@
 #include "phy-qcom-qmp-common.h"
 
 #include "phy-qcom-qmp.h"
+#include "phy-qcom-qmp-pcs-aon-v6.h"
 #include "phy-qcom-qmp-pcs-misc-v3.h"
+#include "phy-qcom-qmp-pcs-misc-v4.h"
+#include "phy-qcom-qmp-pcs-misc-v5.h"
 #include "phy-qcom-qmp-pcs-usb-v4.h"
 #include "phy-qcom-qmp-pcs-usb-v5.h"
 #include "phy-qcom-qmp-pcs-usb-v6.h"
@@ -78,6 +81,7 @@ enum qphy_reg_layout {
 	QPHY_PCS_AUTONOMOUS_MODE_CTRL,
 	QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR,
 	QPHY_PCS_POWER_DOWN_CONTROL,
+	QPHY_PCS_CLAMP_ENABLE,
 
 	QPHY_COM_RESETSM_CNTRL,
 	QPHY_COM_C_READY_STATUS,
@@ -105,6 +109,8 @@ static const unsigned int qmp_v3_usb3phy_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_PCS_AUTONOMOUS_MODE_CTRL]	= QPHY_V3_PCS_AUTONOMOUS_MODE_CTRL,
 	[QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR] = QPHY_V3_PCS_LFPS_RXTERM_IRQ_CLEAR,
 
+	[QPHY_PCS_CLAMP_ENABLE]		= QPHY_V3_PCS_MISC_CLAMP_ENABLE,
+
 	[QPHY_COM_RESETSM_CNTRL]	= QSERDES_V3_COM_RESETSM_CNTRL,
 	[QPHY_COM_C_READY_STATUS]	= QSERDES_V3_COM_C_READY_STATUS,
 	[QPHY_COM_CMN_STATUS]		= QSERDES_V3_COM_CMN_STATUS,
@@ -130,6 +136,8 @@ static const unsigned int qmp_v45_usb3phy_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_PCS_AUTONOMOUS_MODE_CTRL]	= QPHY_V4_PCS_USB3_AUTONOMOUS_MODE_CTRL,
 	[QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR] = QPHY_V4_PCS_USB3_LFPS_RXTERM_IRQ_CLEAR,
 
+	[QPHY_PCS_CLAMP_ENABLE]		= QPHY_V4_PCS_MISC_CLAMP_ENABLE,
+
 	[QPHY_COM_RESETSM_CNTRL]	= QSERDES_V4_COM_RESETSM_CNTRL,
 	[QPHY_COM_C_READY_STATUS]	= QSERDES_V4_COM_C_READY_STATUS,
 	[QPHY_COM_CMN_STATUS]		= QSERDES_V4_COM_CMN_STATUS,
@@ -155,6 +163,8 @@ static const unsigned int qmp_v5_5nm_usb3phy_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_PCS_AUTONOMOUS_MODE_CTRL]	= QPHY_V5_PCS_USB3_AUTONOMOUS_MODE_CTRL,
 	[QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR] = QPHY_V5_PCS_USB3_LFPS_RXTERM_IRQ_CLEAR,
 
+	[QPHY_PCS_CLAMP_ENABLE]		= QPHY_V5_PCS_MISC_CLAMP_ENABLE,
+
 	[QPHY_COM_RESETSM_CNTRL]	= QSERDES_V5_COM_RESETSM_CNTRL,
 	[QPHY_COM_C_READY_STATUS]	= QSERDES_V5_COM_C_READY_STATUS,
 	[QPHY_COM_CMN_STATUS]		= QSERDES_V5_COM_CMN_STATUS,
@@ -180,6 +190,8 @@ static const unsigned int qmp_v6_usb3phy_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_PCS_AUTONOMOUS_MODE_CTRL]	= QPHY_V6_PCS_USB3_AUTONOMOUS_MODE_CTRL,
 	[QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR] = QPHY_V6_PCS_USB3_LFPS_RXTERM_IRQ_CLEAR,
 
+	[QPHY_PCS_CLAMP_ENABLE]		= QPHY_V6_PCS_AON_CLAMP_ENABLE,
+
 	[QPHY_COM_RESETSM_CNTRL]	= QSERDES_V6_COM_RESETSM_CNTRL,
 	[QPHY_COM_C_READY_STATUS]	= QSERDES_V6_COM_C_READY_STATUS,
 	[QPHY_COM_CMN_STATUS]		= QSERDES_V6_COM_CMN_STATUS,
@@ -205,6 +217,8 @@ static const unsigned int qmp_v6_n4_usb3phy_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_PCS_AUTONOMOUS_MODE_CTRL]	= QPHY_V6_PCS_USB3_AUTONOMOUS_MODE_CTRL,
 	[QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR] = QPHY_V6_PCS_USB3_LFPS_RXTERM_IRQ_CLEAR,
 
+	[QPHY_PCS_CLAMP_ENABLE]		= QPHY_V6_PCS_AON_CLAMP_ENABLE,
+
 	[QPHY_COM_RESETSM_CNTRL]	= QSERDES_V6_COM_RESETSM_CNTRL,
 	[QPHY_COM_C_READY_STATUS]	= QSERDES_V6_COM_C_READY_STATUS,
 	[QPHY_COM_CMN_STATUS]		= QSERDES_V6_COM_CMN_STATUS,
@@ -1755,6 +1769,7 @@ struct qmp_combo_offsets {
 	u16 usb3_serdes;
 	u16 usb3_pcs_misc;
 	u16 usb3_pcs;
+	u16 usb3_pcs_aon;
 	u16 usb3_pcs_usb;
 	u16 dp_serdes;
 	u16 dp_txa;
@@ -1836,6 +1851,7 @@ struct qmp_combo {
 	void __iomem *tx2;
 	void __iomem *rx2;
 	void __iomem *pcs_misc;
+	void __iomem *pcs_aon;
 	void __iomem *pcs_usb;
 
 	void __iomem *dp_serdes;
@@ -1960,6 +1976,7 @@ static const struct qmp_combo_offsets qmp_combo_offsets_v8 = {
 	.usb3_serdes	= 0x1000,
 	.usb3_pcs_misc	= 0x1c00,
 	.usb3_pcs	= 0x1e00,
+	.usb3_pcs_aon	= 0x2000,
 	.usb3_pcs_usb	= 0x2100,
 	.dp_serdes	= 0x3000,
 	.dp_txa		= 0x3400,
@@ -3345,6 +3362,7 @@ static void qmp_combo_enable_autonomous_mode(struct qmp_combo *qmp)
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
 	void __iomem *pcs_usb = qmp->pcs_usb ?: qmp->pcs;
 	void __iomem *pcs_misc = qmp->pcs_misc;
+	void __iomem *pcs_aon = qmp->pcs_aon;
 	u32 intr_mask;
 
 	if (qmp->phy_mode == PHY_MODE_USB_HOST_SS ||
@@ -3364,9 +3382,14 @@ static void qmp_combo_enable_autonomous_mode(struct qmp_combo *qmp)
 	/* Enable required PHY autonomous mode interrupts */
 	qphy_setbits(pcs_usb, cfg->regs[QPHY_PCS_AUTONOMOUS_MODE_CTRL], intr_mask);
 
-	/* Enable i/o clamp_n for autonomous mode */
-	if (pcs_misc)
-		qphy_clrbits(pcs_misc, QPHY_V3_PCS_MISC_CLAMP_ENABLE, CLAMP_EN);
+	/*
+	 * Enable i/o clamp_n for autonomous mode
+	 * V6 and later versions use pcs aon clamp register
+	 */
+	if (pcs_aon)
+		qphy_clrbits(pcs_aon, cfg->regs[QPHY_PCS_CLAMP_ENABLE], CLAMP_EN);
+	else if (pcs_misc)
+		qphy_clrbits(pcs_misc, cfg->regs[QPHY_PCS_CLAMP_ENABLE], CLAMP_EN);
 }
 
 static void qmp_combo_disable_autonomous_mode(struct qmp_combo *qmp)
@@ -3374,10 +3397,13 @@ static void qmp_combo_disable_autonomous_mode(struct qmp_combo *qmp)
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
 	void __iomem *pcs_usb = qmp->pcs_usb ?: qmp->pcs;
 	void __iomem *pcs_misc = qmp->pcs_misc;
+	void __iomem *pcs_aon = qmp->pcs_aon;
 
 	/* Disable i/o clamp_n on resume for normal mode */
-	if (pcs_misc)
-		qphy_setbits(pcs_misc, QPHY_V3_PCS_MISC_CLAMP_ENABLE, CLAMP_EN);
+	if (pcs_aon)
+		qphy_setbits(pcs_aon, cfg->regs[QPHY_PCS_CLAMP_ENABLE], CLAMP_EN);
+	else if (pcs_misc)
+		qphy_setbits(pcs_misc, cfg->regs[QPHY_PCS_CLAMP_ENABLE], CLAMP_EN);
 
 	qphy_clrbits(pcs_usb, cfg->regs[QPHY_PCS_AUTONOMOUS_MODE_CTRL],
 		     ARCVR_DTCT_EN | ARCVR_DTCT_EVENT_SEL | ALFPS_DTCT_EN);
@@ -4075,6 +4101,8 @@ static int qmp_combo_parse_dt(struct qmp_combo *qmp)
 	qmp->serdes = base + offs->usb3_serdes;
 	qmp->pcs_misc = base + offs->usb3_pcs_misc;
 	qmp->pcs = base + offs->usb3_pcs;
+	if (offs->usb3_pcs_aon)
+		qmp->pcs_aon = base + offs->usb3_pcs_aon;
 	qmp->pcs_usb = base + offs->usb3_pcs_usb;
 
 	qmp->dp_serdes = base + offs->dp_serdes;

