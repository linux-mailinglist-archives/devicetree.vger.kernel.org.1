Return-Path: <devicetree+bounces-220957-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 900A5B9C9AE
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 01:34:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CF4754A8575
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 23:34:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 406FA2D0C72;
	Wed, 24 Sep 2025 23:33:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HR0Zk/AJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 933F12C2369
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:33:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758756814; cv=none; b=B9zlpKuJDlZTN4yTE/XwM5IBkkYFfrwfl9EKWqemKUfIBh1+U0pGHnOIZwdxg6NpcBT9qA46XVyL7+hpq8XQHG2EbGI2XASdjo5tjHTcr0XfoKsyiSqNNNIy6GOJQoG0Di27FzeqapI36k1YZTZn7E0U4gk0Pr6q6vsNRk0FuFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758756814; c=relaxed/simple;
	bh=s17pVTpfHpJBXVbeGOGy/DKB8otKGHuREpCt9nlrFq8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=rkPAFUE4541B4p3nI28HBZic9u5n8ydZ2ycqhrOU/32Dt921dna8MO5b6/dgcsArKtiykhuVSnM1rxng6H8TxbhUJf21SgxGwYJp41v7M9YJG5TzDtbYgkKpJAzodmhG9cor8HlhLPrPGo92svNX2besqOE9aWtt9XdVjZUpspE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HR0Zk/AJ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58OCu8jw024516
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:33:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Ndw+rqs1qizTVWC5reblwW5J0ZiIr5WD2TSz5Cliqlo=; b=HR0Zk/AJRp6407YY
	eIvGNh6kUVESKF93V0hMQYoJWv7qmPcN33UXFe3Y5crrW8tTW0+jSgMHTJJXVsvd
	huJJDduF5E2VwB3mhSqftHNbcftWmjzEeM2aMG1KD/tGmGUxMlXyYx96a+R1jJA3
	k2HjgGCNO1SeYQqyfhxV+beVBojHaKzX6Xpty5OHm65S2r4FIrHjJeDYj8jBQrHo
	M9ZakkPXql7b9nV7nq6Mjh0mElY37Kb+jTEIvKSXqT945eUZjGZl/QDlrCvPgVRv
	WqqOGLf6v++FRRHUWy8wkeFmq+l0rVqg2mZrmUOaCR7aZ9uWKvMlCcSRFWSLjSch
	tFGDog==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49bwp0d2s1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:33:31 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-26983c4d708so2826845ad.3
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 16:33:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758756810; x=1759361610;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ndw+rqs1qizTVWC5reblwW5J0ZiIr5WD2TSz5Cliqlo=;
        b=l7QuEBj73kSN4EbOc2d/yEvUCx2mDPZ/z48tpTE4LKtxGtOicKalU+WUXHJjaswrL9
         25hDhuUoSiJgwdBO2JXLGT3wh7KGeV+pHd89nGq0KUPFhBeBFaCTnFTDnCjOiw5Qy7tA
         vysai+fLhX8hzk1C1AAAehJd/OmUfhbnxWL6lU8q0MYcdBJUmQcFOYYwKdeU8GX+Qz6J
         p2/H4zjXECxjMlRNlmBfLRxM4q+Sqm7PYuriacePn8p3KaSbNHIFGldSzk5vZWcQjNNE
         7xbJImIw0u6hCuU9irAk7RwrFwBSWi6Q04/zhq9pjKMyHe4hzknq20K7ISaBUJAJQksT
         hbsw==
X-Forwarded-Encrypted: i=1; AJvYcCX/sefJAcQaZzVmqIV8/BFwpCH3nBw8TfsBRaJcSOMi9tvOVM01RNQjA4BMUvFW3L6Qxflo++UQ+gMp@vger.kernel.org
X-Gm-Message-State: AOJu0YzKy6hGa4Gl69ycd11nyllUn0+0+YsFXbRdTOrje3W8sbr74AWT
	ichvZ3YRYo6qECREG2wKwlvf9hySAMVjiCWUpCvN9k/qPIGyKkDcQtU/qFjiSnesSYMulmOSx/8
	dx0+sjxEFu0caPz+blsWlK40zIrjeJDWp40w5fj8vOMxq/6fWDCQNcm1KGvo56A2u
X-Gm-Gg: ASbGnctQt3dyhVmAs0Qb6yJlYnV1wbit4QUa1mfj061gl9CCHXYj1uYn7t91FJgc3QE
	67Ud9bgewHkTUFOBaBoWvsAWBkLOGpipR0igLXTwdmvHmd0JiZ0N32HtRfrqDkaCTIHEhxkg6mc
	+m8LR8gCkIZly7oAwXeYNVmZuTCSDC8TuHQf4xBqkivDX4Lvi4T7Rjtaa+gdnVo6RHLRfp8EeG5
	JSbn2pqcVd5UWvgsvSeU/0ha9EjyfsG7VJh84ShUsw8vedHBBVMRD15T49ckZ6RuVLMhjyn40xA
	oJH13Wx08as/vvl858DTD1bVEDWIsEPbL8TpFCemU9ZGnF5GxdTTF1wqqe9L21dXu+69h1twZT2
	ufGpbrX9yX8yBsrQ=
X-Received: by 2002:a17:903:244d:b0:25c:392c:33be with SMTP id d9443c01a7336-27ed4a5c567mr15661555ad.59.1758756810031;
        Wed, 24 Sep 2025 16:33:30 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE5CADDonj4Tj3EKc7HnMksbjmMI+Bu1zU78weaqGMcam4AMLJAz+8098+e9XI7Mmhcp0yHBA==
X-Received: by 2002:a17:903:244d:b0:25c:392c:33be with SMTP id d9443c01a7336-27ed4a5c567mr15661345ad.59.1758756809568;
        Wed, 24 Sep 2025 16:33:29 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b57c53ca107sm392911a12.13.2025.09.24.16.33.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 16:33:29 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Wed, 24 Sep 2025 16:33:20 -0700
Subject: [PATCH 4/6] phy: qcom-qmp: pcs-pcie: Add v8 register offsets
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250924-knp-pcie-v1-4-5fb59e398b83@oss.qualcomm.com>
References: <20250924-knp-pcie-v1-0-5fb59e398b83@oss.qualcomm.com>
In-Reply-To: <20250924-knp-pcie-v1-0-5fb59e398b83@oss.qualcomm.com>
To: Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com, Qiang Yu <qiang.yu@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758756801; l=2102;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=lh5soms/PW05Acpi9g8AxeEqOMMit9vCSgZ1ViTmATo=;
 b=5tMPZ0N4k9d3RS+mJPp3yzpfG9uOjUB3PGKnR/MMsJHFt75AMbLGDGORXo1/pTnX2w1v6Ctso
 0OHJhRjQjxHAtqp/3XVN9c0OF/4OPIVcxiIsGLc9IG85bCKf1oKDjFE
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Authority-Analysis: v=2.4 cv=KNxaDEFo c=1 sm=1 tr=0 ts=68d47fcb cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=8UDt2JBBUKJrZSEALGsA:9
 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-GUID: kPAMFIx7c_sVAy6ZcBg-lsmMyQ-YpWnW
X-Proofpoint-ORIG-GUID: kPAMFIx7c_sVAy6ZcBg-lsmMyQ-YpWnW
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIzMDEzOCBTYWx0ZWRfX647OXh8T7ifz
 06DMthd1uVqEsfNBcHH1P7Msr1E+ut1xt734J6P8rzpKxV5wxehS03M7v9y8Hc1btLeDw+PTpbX
 dd0v1dO9yW0ofCs32yXZPC2B6wqBjRyjkrfxiaoGSS5S+Geo8RwUF2fcgnotHmwuP1pABAqEs55
 qn7UUZtN47yniiX2lxhr+p5Ug6t5v7+BNbR2QYTNT4lher7Jg+H++xicP5Q4RP3gZ+XVTbAzt+I
 1j8QASVKZHiZfRWBdaPO185mQzleIsJjo06V4borViaDuRwntbnDVnzUVfqOcxrI/BKhGXUB6WL
 yw4jSt0EhJBYw91gwgz2vOvCv2OvsJp7veq+ktSZmrIJnbw5DH7o9nf8ynWf+jdm+7QhNBVesIr
 kX6ktNQb
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 clxscore=1015 phishscore=0 suspectscore=0
 adultscore=0 bulkscore=0 spamscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509230138

From: Qiang Yu <qiang.yu@oss.qualcomm.com>

Kaanapali SoC uses QMP phy with version v8 for PCIe Gen3 x2. Add the new
PCS PCIE specific offsets in a dedicated header file.

Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v8.h | 35 +++++++++++++++++++++++++
 1 file changed, 35 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v8.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v8.h
new file mode 100644
index 000000000000..5d630e5123a5
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v8.h
@@ -0,0 +1,35 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries. All rights reserved.
+ */
+
+#ifndef QCOM_PHY_QMP_PCS_PCIE_V8_H_
+#define QCOM_PHY_QMP_PCS_PCIE_V8_H_
+
+/* Only for QMP V8 PHY - PCIE PCS registers */
+
+#define QPHY_PCIE_V8_PCS_POWER_STATE_CONFIG2		0x00c
+#define QPHY_PCIE_V8_PCS_TX_RX_CONFIG		0x018
+#define QPHY_PCIE_V8_PCS_ENDPOINT_REFCLK_DRIVE	0x01c
+#define QPHY_PCIE_V8_PCS_OSC_DTCT_ACTIONS		0x090
+#define QPHY_PCIE_V8_PCS_EQ_CONFIG1			0x0a0
+#define QPHY_PCIE_V8_PCS_G3_RXEQEVAL_TIME		0x0f0
+#define QPHY_PCIE_V8_PCS_G4_RXEQEVAL_TIME		0x0f4
+#define QPHY_PCIE_V8_PCS_G4_EQ_CONFIG5		0x108
+#define QPHY_PCIE_V8_PCS_G4_PRE_GAIN			0x15c
+#define QPHY_PCIE_V8_PCS_RX_MARGINING_CONFIG1	0x17c
+#define QPHY_PCIE_V8_PCS_RX_MARGINING_CONFIG3	0x184
+#define QPHY_PCIE_V8_PCS_RX_MARGINING_CONFIG5	0x18c
+#define QPHY_PCIE_V8_PCS_G3_FOM_EQ_CONFIG5		0x1ac
+#define QPHY_PCIE_V8_PCS_G4_FOM_EQ_CONFIG5		0x1c0
+#define QPHY_PCIE_V8_PCS_POWER_STATE_CONFIG6			0x1d0
+
+#define QPHY_PCIE_V8_PCS_G12S1_TXDEEMPH_M6DB			0x170
+#define QPHY_PCIE_V8_PCS_G3S2_PRE_GAIN			0x178
+#define QPHY_PCIE_V8_PCS_RX_SIGDET_LVL			0x190
+#define QPHY_PCIE_V8_PCS_ELECIDLE_DLY_SEL			0x1b8
+#define QPHY_PCIE_V8_PCS_PCS_TX_RX_CONFIG1			0x1dc
+#define QPHY_PCIE_V8_PCS_PCS_TX_RX_CONFIG2			0x1e0
+#define QPHY_PCIE_V8_PCS_EQ_CONFIG4			0x1f8
+#define QPHY_PCIE_V8_PCS_EQ_CONFIG5			0x1fc
+#endif

-- 
2.25.1


