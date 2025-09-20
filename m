Return-Path: <devicetree+bounces-219485-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E872B8BE2B
	for <lists+devicetree@lfdr.de>; Sat, 20 Sep 2025 05:22:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 86101A0790C
	for <lists+devicetree@lfdr.de>; Sat, 20 Sep 2025 03:22:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2AD5524169D;
	Sat, 20 Sep 2025 03:21:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OQx1WTkj"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AC2923CEF9
	for <devicetree@vger.kernel.org>; Sat, 20 Sep 2025 03:21:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758338486; cv=none; b=jt0+zQHx/2xlQqj2E/m/G5pEGmwVMZdnxzWPxTVgrD8nwxo06Pr1i/5iHnfQV0NiZiiHfBzMU1vqVCfi31hCulJC1QUpoegG0g5FyGId6KmKnOWYRMruScgkLzSv81HTp7mH5wp9YC/lE1sQJvS5o6tNw0AVX3PwbUVYdol5oaQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758338486; c=relaxed/simple;
	bh=BfwtCJ9yNaw37zL1zoMVP8hJ0uF+7CXhZhXT7JGQ8r0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=UhV0XjK85mxIiS45CWa4q2mWhq/R9or7egDrJA8a6i9Ykdz89xidLhQPonYfpY3jYoqAP+GNbpWufJh+pVqtWIXP9FMOXPgAhiFC17M6/sazqzbXY8Q0yx+VwRDlLm3jjiWNwCO+3z3TUHCYS0gRFtzS4vwtF/+4ctqU+dYxAp0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OQx1WTkj; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58K3GJt9032695
	for <devicetree@vger.kernel.org>; Sat, 20 Sep 2025 03:21:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=8wTywRAWZXw
	EsR6jea+R90ywj5SpxQrORQMaOZpD3JU=; b=OQx1WTkjaW0Uwjd7nXBAwQPcMEA
	k0odHwB2Yl2ObTl6FDnhwzuX36qmkdeh6FIj07PxSGSrRxVmEdLtGHxJLOzV+0ar
	dqpB9jzTv56v4W2kTzV5sIJZVQSDW1kNgHhILTf+8nK96xamzUgRy8DRXAgnxJq4
	Z2MSt8oM4tXnzR8ULTHxQS43pminL7niK85YfJgS4LL8i9RXVpBetIsk6+xzZ3Pr
	ie+Yuf66kZest8DI9r5vrvfdwCgeI465WBftuyOAlE7omxEXtfyd1vucZUV7QBis
	joPuec6lt82bxIk1oyPP4y11YJW2tVTK/os94tSXvV5ga5BP1rtiKG4kLKw==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4982deh3qp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 20 Sep 2025 03:21:22 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-b54d6a67b5fso2078753a12.1
        for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 20:21:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758338481; x=1758943281;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8wTywRAWZXwEsR6jea+R90ywj5SpxQrORQMaOZpD3JU=;
        b=FsxdHJPDBiVwetszuJprf0pXFG4VICPCkScrXEdRSu0q681IG09FIV+NBbf1snEXh1
         hdMyWgH5BcVJGaOKs7Rzk5PtEIARUcLS1ctLOM2yzoXtLUUy86bdv3WVwZZm3CNyvo9t
         D3KFm369tBFeY6hbX7OS/eErzMS4vpPa44vDZMMBdipXl5Yqc5fqXETlM39Wlto05ksg
         dfdPTeQug428Zfj7Jra8K6chl9yfua1y3+Zf50J2tZPs6lqovXey+330VDUoxzub087J
         jR3QS7iJ/R3LY1BczbVmUZzBTTfytlbZoFNhgONi11jZVynWyAhWmYxcxSRVXjvlJneI
         UwCg==
X-Forwarded-Encrypted: i=1; AJvYcCWJOf6Y/OZNbA2SUHy5qdj6go82dZwqS6sWov8UCoZspROBxAJI4s3qbR6ghP6y8jOey8+D7blucuno@vger.kernel.org
X-Gm-Message-State: AOJu0YziSDV4qwSPKw5t9USkznd/k9jPY2enCgOoPEB8N+1DgDrteyEk
	SVnom2g2gU9p3HHapq6qNpAV4iwYRef+2BgKGhFhxFc4GZv/8eIV+gNTYjXOVXKZG9He07J6z75
	YsH1ccYvLoYGi2nQUPdWUCmKLmX8rANSRP4UaOUvGUzRRdNj3NTwpjiGxzdmvd0xiKRby9hx/
X-Gm-Gg: ASbGncueyScA+QwQBgQvAc0MLZg6RCKb9ViifaHs1Ri7fz4zhL9XxPCQtgMFvf0Zzn6
	YmJpVul7mF187rM6B4phifTiK/fII84FCLNkgTQd+uS1661fgW6DbOrPJHZBJ8AS8cXAZTMm2qh
	JcNFi0rEXBn92qxd1RdAAMh5bGcsT9bVkJ5n+FLf7Rk9uCyk3fgeCzcFwkjECe4AUJnweDNq2bo
	qnWuZUMGeYcZRVF2PRfcRpqEDF2LlEA9r9USpwOMr9qcSlosB7dZK6XxS4qQimuX0QhoZu5H3sR
	rp3d2TgxY9zHZ5JijTQgC6TZvH1pbpZ/pfUarLAEOH+zomBdyyKYaelOMgzup4ZZJV/rN/o2oUX
	/4U5KSN54wX0YDWG9
X-Received: by 2002:a05:6a20:2450:b0:262:da1c:3c07 with SMTP id adf61e73a8af0-2925ca2505fmr8575279637.20.1758338480910;
        Fri, 19 Sep 2025 20:21:20 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGTeTsjrwy1w14Gd3TIgIl2EfonPS5FLCrgXg1NffT2ZQwM0KDDeXlRThzHDQ9xy1TTBYJTRQ==
X-Received: by 2002:a05:6a20:2450:b0:262:da1c:3c07 with SMTP id adf61e73a8af0-2925ca2505fmr8575242637.20.1758338480474;
        Fri, 19 Sep 2025 20:21:20 -0700 (PDT)
Received: from hu-wcheng-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b54ff448058sm6178807a12.54.2025.09.19.20.21.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Sep 2025 20:21:19 -0700 (PDT)
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
To: krzk+dt@kernel.org, conor+dt@kernel.org, kishon@kernel.org,
        vkoul@kernel.org, gregkh@linuxfoundation.org, robh@kernel.org
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-phy@lists.infradead.org,
        Elson Roy Serrao <quic_eserrao@quicinc.com>,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Subject: [PATCH 5/9] phy: qualcomm: Update the QMP clamp register for V6
Date: Fri, 19 Sep 2025 20:21:04 -0700
Message-Id: <20250920032108.242643-6-wesley.cheng@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250920032108.242643-1-wesley.cheng@oss.qualcomm.com>
References: <20250920032108.242643-1-wesley.cheng@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=YfO95xRf c=1 sm=1 tr=0 ts=68ce1db2 cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=6zIwrvuT6hO6z1e-hKYA:9
 a=x9snwWr2DeNwDh03kgHS:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: Ky5HLYOcQ_zyZZM5UldXPLq562WlCWxn
X-Proofpoint-ORIG-GUID: Ky5HLYOcQ_zyZZM5UldXPLq562WlCWxn
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE3MDE4MiBTYWx0ZWRfX1wRHawnYGMiT
 TlGixFm8cQGgXyIdeQSJ4NKGMsK1DhTQm07PpgWMn2fmvGL9zJXN4k3hmgOt2UMiEpVdFMMwfyT
 FEjIhUyO699l3sS4H+qgrgLVwkuMdgL49lmjSRG9jc+hOQiw4d1OV3ZNYbAfpFxaGpA6lCfV/V6
 50gp/Fz1PV0688RzXTlwW554z9L3CyYJVD877PRL9x0XxzAUeCMub2D+ffRV0Zh4VKtXyBFnaEB
 gtjYMhUHzFfmyWQN3dgIwjW2iUjXO/uJ5qL8xFuVy9+KHfEv5NCcQyte6kKGgd/gBuCOW2GvVOw
 69qX88MjUEL71DRPRlWVIKQ3c/jRuxvC+UZqawoJiAl12mfVoZoc+fPrTvoGjifPbjR+S0jkrDb
 4Lub7OPN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-20_01,2025-09-19_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 impostorscore=0 suspectscore=0 clxscore=1015 priorityscore=1501
 spamscore=0 phishscore=0 malwarescore=0 bulkscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509170182

From: Elson Roy Serrao <quic_eserrao@quicinc.com>

QMP combo phy V6 and above use the clamp register from the PCS always on
(AON) address space.  Update the driver accordingly.

Signed-off-by: Elson Roy Serrao <quic_eserrao@quicinc.com>
Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c     | 38 ++++++++++++++++---
 .../phy/qualcomm/phy-qcom-qmp-pcs-aon-v6.h    | 12 ++++++
 .../phy/qualcomm/phy-qcom-qmp-pcs-misc-v5.h   | 12 ++++++
 3 files changed, 57 insertions(+), 5 deletions(-)
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-aon-v6.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-misc-v5.h

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index f07d097b129f..2a059d925679 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -28,7 +28,10 @@
 #include "phy-qcom-qmp-common.h"
 
 #include "phy-qcom-qmp.h"
+#include "phy-qcom-qmp-pcs-aon-v6.h"
 #include "phy-qcom-qmp-pcs-misc-v3.h"
+#include "phy-qcom-qmp-pcs-misc-v4.h"
+#include "phy-qcom-qmp-pcs-misc-v5.h"
 #include "phy-qcom-qmp-pcs-usb-v4.h"
 #include "phy-qcom-qmp-pcs-usb-v5.h"
 #include "phy-qcom-qmp-pcs-usb-v6.h"
@@ -71,6 +74,7 @@ enum qphy_reg_layout {
 	QPHY_PCS_AUTONOMOUS_MODE_CTRL,
 	QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR,
 	QPHY_PCS_POWER_DOWN_CONTROL,
+	QPHY_PCS_CLAMP_ENABLE,
 
 	QPHY_COM_RESETSM_CNTRL,
 	QPHY_COM_C_READY_STATUS,
@@ -98,6 +102,8 @@ static const unsigned int qmp_v3_usb3phy_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_PCS_AUTONOMOUS_MODE_CTRL]	= QPHY_V3_PCS_AUTONOMOUS_MODE_CTRL,
 	[QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR] = QPHY_V3_PCS_LFPS_RXTERM_IRQ_CLEAR,
 
+	[QPHY_PCS_CLAMP_ENABLE]		= QPHY_V3_PCS_MISC_CLAMP_ENABLE,
+
 	[QPHY_COM_RESETSM_CNTRL]	= QSERDES_V3_COM_RESETSM_CNTRL,
 	[QPHY_COM_C_READY_STATUS]	= QSERDES_V3_COM_C_READY_STATUS,
 	[QPHY_COM_CMN_STATUS]		= QSERDES_V3_COM_CMN_STATUS,
@@ -123,6 +129,8 @@ static const unsigned int qmp_v45_usb3phy_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_PCS_AUTONOMOUS_MODE_CTRL]	= QPHY_V4_PCS_USB3_AUTONOMOUS_MODE_CTRL,
 	[QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR] = QPHY_V4_PCS_USB3_LFPS_RXTERM_IRQ_CLEAR,
 
+	[QPHY_PCS_CLAMP_ENABLE]		= QPHY_V4_PCS_MISC_CLAMP_ENABLE,
+
 	[QPHY_COM_RESETSM_CNTRL]	= QSERDES_V4_COM_RESETSM_CNTRL,
 	[QPHY_COM_C_READY_STATUS]	= QSERDES_V4_COM_C_READY_STATUS,
 	[QPHY_COM_CMN_STATUS]		= QSERDES_V4_COM_CMN_STATUS,
@@ -148,6 +156,8 @@ static const unsigned int qmp_v5_5nm_usb3phy_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_PCS_AUTONOMOUS_MODE_CTRL]	= QPHY_V5_PCS_USB3_AUTONOMOUS_MODE_CTRL,
 	[QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR] = QPHY_V5_PCS_USB3_LFPS_RXTERM_IRQ_CLEAR,
 
+	[QPHY_PCS_CLAMP_ENABLE]		= QPHY_V5_PCS_MISC_CLAMP_ENABLE,
+
 	[QPHY_COM_RESETSM_CNTRL]	= QSERDES_V5_COM_RESETSM_CNTRL,
 	[QPHY_COM_C_READY_STATUS]	= QSERDES_V5_COM_C_READY_STATUS,
 	[QPHY_COM_CMN_STATUS]		= QSERDES_V5_COM_CMN_STATUS,
@@ -173,6 +183,8 @@ static const unsigned int qmp_v6_usb3phy_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_PCS_AUTONOMOUS_MODE_CTRL]	= QPHY_V6_PCS_USB3_AUTONOMOUS_MODE_CTRL,
 	[QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR] = QPHY_V6_PCS_USB3_LFPS_RXTERM_IRQ_CLEAR,
 
+	[QPHY_PCS_CLAMP_ENABLE]		= QPHY_V6_PCS_AON_CLAMP_ENABLE,
+
 	[QPHY_COM_RESETSM_CNTRL]	= QSERDES_V6_COM_RESETSM_CNTRL,
 	[QPHY_COM_C_READY_STATUS]	= QSERDES_V6_COM_C_READY_STATUS,
 	[QPHY_COM_CMN_STATUS]		= QSERDES_V6_COM_CMN_STATUS,
@@ -198,6 +210,8 @@ static const unsigned int qmp_v6_n4_usb3phy_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_PCS_AUTONOMOUS_MODE_CTRL]	= QPHY_V6_PCS_USB3_AUTONOMOUS_MODE_CTRL,
 	[QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR] = QPHY_V6_PCS_USB3_LFPS_RXTERM_IRQ_CLEAR,
 
+	[QPHY_PCS_CLAMP_ENABLE]		= QPHY_V6_PCS_AON_CLAMP_ENABLE,
+
 	[QPHY_COM_RESETSM_CNTRL]	= QSERDES_V6_COM_RESETSM_CNTRL,
 	[QPHY_COM_C_READY_STATUS]	= QSERDES_V6_COM_C_READY_STATUS,
 	[QPHY_COM_CMN_STATUS]		= QSERDES_V6_COM_CMN_STATUS,
@@ -1748,6 +1762,7 @@ struct qmp_combo_offsets {
 	u16 usb3_serdes;
 	u16 usb3_pcs_misc;
 	u16 usb3_pcs;
+	u16 usb3_pcs_aon;
 	u16 usb3_pcs_usb;
 	u16 dp_serdes;
 	u16 dp_txa;
@@ -1829,6 +1844,7 @@ struct qmp_combo {
 	void __iomem *tx2;
 	void __iomem *rx2;
 	void __iomem *pcs_misc;
+	void __iomem *pcs_aon;
 	void __iomem *pcs_usb;
 
 	void __iomem *dp_serdes;
@@ -1949,6 +1965,7 @@ static const struct qmp_combo_offsets qmp_combo_offsets_v8 = {
 	.usb3_serdes	= 0x1000,
 	.usb3_pcs_misc	= 0x1c00,
 	.usb3_pcs	= 0x1e00,
+	.usb3_pcs_aon	= 0x2000,
 	.usb3_pcs_usb	= 0x2100,
 	.dp_serdes	= 0x3000,
 	.dp_txa		= 0x3400,
@@ -3309,6 +3326,7 @@ static void qmp_combo_enable_autonomous_mode(struct qmp_combo *qmp)
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
 	void __iomem *pcs_usb = qmp->pcs_usb ?: qmp->pcs;
 	void __iomem *pcs_misc = qmp->pcs_misc;
+	void __iomem *pcs_aon = qmp->pcs_aon;
 	u32 intr_mask;
 
 	if (qmp->mode == PHY_MODE_USB_HOST_SS ||
@@ -3328,9 +3346,14 @@ static void qmp_combo_enable_autonomous_mode(struct qmp_combo *qmp)
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
@@ -3338,10 +3361,13 @@ static void qmp_combo_disable_autonomous_mode(struct qmp_combo *qmp)
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
@@ -3934,6 +3960,8 @@ static int qmp_combo_parse_dt(struct qmp_combo *qmp)
 	qmp->serdes = base + offs->usb3_serdes;
 	qmp->pcs_misc = base + offs->usb3_pcs_misc;
 	qmp->pcs = base + offs->usb3_pcs;
+	if (offs->usb3_pcs_aon)
+		qmp->pcs_aon = base + offs->usb3_pcs_aon;
 	qmp->pcs_usb = base + offs->usb3_pcs_usb;
 
 	qmp->dp_serdes = base + offs->dp_serdes;
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-aon-v6.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-aon-v6.h
new file mode 100644
index 000000000000..52db31a7cf22
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-aon-v6.h
@@ -0,0 +1,12 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2025, Qualcomm Innovation Center, Inc. All rights reserved.
+ */
+
+#ifndef QCOM_PHY_QMP_PCS_AON_V6_H_
+#define QCOM_PHY_QMP_PCS_AON_V6_H_
+
+/* Only for QMP V6 PHY - PCS_AON registers */
+#define QPHY_V6_PCS_AON_CLAMP_ENABLE			0x00
+
+#endif
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-misc-v5.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-misc-v5.h
new file mode 100644
index 000000000000..77d04c6a1644
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-misc-v5.h
@@ -0,0 +1,12 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2025 Qualcomm Innovation Center, Inc. All rights reserved.
+ */
+
+#ifndef QCOM_PHY_QMP_PCS_MISC_V5_H_
+#define QCOM_PHY_QMP_PCS_MISC_V5_H_
+
+/* Only for QMP V5 PHY - PCS_MISC registers */
+#define QPHY_V5_PCS_MISC_CLAMP_ENABLE			0x0c
+
+#endif

