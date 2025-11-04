Return-Path: <devicetree+bounces-234583-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BA8EC2F190
	for <lists+devicetree@lfdr.de>; Tue, 04 Nov 2025 04:11:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id B214B4F886F
	for <lists+devicetree@lfdr.de>; Tue,  4 Nov 2025 03:09:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B3BC27CCE0;
	Tue,  4 Nov 2025 03:08:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="c86ZVPM8";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="QbWySRkT"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E0C52749D5
	for <devicetree@vger.kernel.org>; Tue,  4 Nov 2025 03:08:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762225705; cv=none; b=b2Igh1ryEVVtQjfD+HFh/dgUwbr8gFMhb5y8WibdPwnG3Tg8igbM6aM7xBx6SGeJgknwxdq8aWv9ifzwqq7CdJh/p56hb31BXTDIo/XqOX4UAF8w5kFxKbBVkbMEvSuVDlhULE1gUNuySjtnof0nVaN+9fSD7Uvv4mssfoA7GO0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762225705; c=relaxed/simple;
	bh=tUTfOKxSsOuUH1eT8rqZMoSV6/aVUf+8+IW1ySU57FM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Gyvv22YolX4B9rsWSyLjM0w2thcVq1FnsRPvGu2Nh064R2nRfWQs2YRd+3D+gah5MSnEaG5R1cCc5QpOGWeU2iXsTesEo2bs+cimcHvp8qmXTyjfQhG0FY4rlp4PA+KbIi6EO3w5m6uFP9jzsybs3JJmOrkMYz0Y6fqgjhzweM4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=c86ZVPM8; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=QbWySRkT; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A428Z4C694615
	for <devicetree@vger.kernel.org>; Tue, 4 Nov 2025 03:08:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1gIZgqnbDehLdDVMzdQR15Bkku/R/tfsdPjf9QoAZV0=; b=c86ZVPM8+sEGy14d
	X7j+lrvw61Yn+iBSOtDnjY6hJ7FhJ5NAtoUwdoQS+rVl3e5KKpCDZA5VaT6+Igt+
	76CZFbKyb6Xg2yyx+7JPkLzzMKX+dq9ssasjOUwN8FO1NREGLicAQy9ZHHkhicET
	L+1XL8yVQs/bzSDF0DussN/pIHMqQlm3ztDilQjuBRUG+xl1NguaTLBXefY8hUfO
	zZPVc1Aza6P2tKlZ+rZe6KOip8KlHsQwZvyVpcP/xiTsr8ex3DfE3EBGsGrDXCQC
	FOvkeFOKAHgBZL6xXlimk41HdMq/J+kkmvBkLkgfczYbHSJOQNVCSVYfj5ttDlI0
	FVx2ow==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a78eqr4wg-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 04 Nov 2025 03:08:23 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2955f0b8895so25443225ad.0
        for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 19:08:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762225702; x=1762830502; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1gIZgqnbDehLdDVMzdQR15Bkku/R/tfsdPjf9QoAZV0=;
        b=QbWySRkTN/N0R99BDoo1sMJ4Z/xReubGsvS7ulreNpmn1NBCdT0fuYwPwuoG9w4oVh
         FJiKtqFKR3798wnKoA4OvXI0wBvc5hy0fuHql7Tq62MEyBw28LqHUE5VANHyvjaEQ2Hy
         yiE4kdpSDcFi/SOkXb6jByVKuvArrluhgvSdCNkKuCgDgN6JPjIfI6tDSlXp5g0xd7RB
         Yuq+e3SawMY85V1Z1PdCxUW9m75KLY0eUsyb2v3AK2S6nIWG3IvqthMpaPX36gAyupyM
         STRmuq1tWBC8a3rArWGstov9lR27oXgiIYfnOBDFN9GRtOrfkF8wBF+7VgdY4CyTCVhd
         n3Rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762225702; x=1762830502;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1gIZgqnbDehLdDVMzdQR15Bkku/R/tfsdPjf9QoAZV0=;
        b=Q1W+H0L2CllVZgySOhLPgc9o3L3C0pWI9mJ6ObxYgYqcASOFggXrZUJ3bs577HkWa6
         15g4BEHioaTfmQ5weRbE1T4OpB1o8UWFCN1mblkmzofqBG/PkHJZPkqFZ8Js8qf3XmLx
         EE3/WxDeigNQ2HpTsSnlCM4lbVHwJ1tAB6PFSxVwDmPwixtJA1uK5bFSmDgt64TeZJJ/
         oWvnyWyQ66bwL5QFpgUgZm7FtVd9FccVCTH3gji63Qgbils267LSeV4w+6ZAVcdiD8C+
         PDBueH1INFsJ5gffpj8qPiIBp/lmxs8iMJ4Jwp2B+MQ92l9UHik00LnaMGqcOw0xqdtz
         IKwg==
X-Forwarded-Encrypted: i=1; AJvYcCW+LvHGTsUVsGP/JOFXzHnDneggj/l8EgeYnSlWfM9MR5oTWo/SHJTnpx4bGIGW3pKlMNn2QI1cDiKj@vger.kernel.org
X-Gm-Message-State: AOJu0YxFNbXjLpX6Ts6U3AtRbBmkTVgh2zriHwNbwyyXO/Xm2WduL7m7
	xhhZ/GLoOW9DGQmdT0rx6cvP0XyQ6DVJfD9HrI08PYqOipoM3EFo9fQvYBtreK9MeelYTohUxmb
	39TpcXJlUq1BOXw+tREWTQlUG7t6EgouIb6+QbiCLCEX5b6mbrKJcv9mow+iWW1Ob
X-Gm-Gg: ASbGncufOP/RMoq/NK/I9Syna8Gvl2z1kyF8Gzy09GoTEbSv0bnDd9t0hXvHA8Jcj18
	3n37w1lZgwfTLXNYeo6YUMYCrdO8VcoC2EuSCrAjdpa4PRXD5/DEcIndzgMC9cReLlti0SbNKs+
	0aU/L06m6ln9zRIITQQijAnPC7q2sAXyAuVVVjTHBBXyMPsMWeRvVL6s6fKI5nUkrmP4eoqb3f7
	0v4tRV0H2LhDqulZLeBBm5d4PSXGaO+DTxcPidSw91CZACq22DSbOlaqlqu60TPUlCfByVJGZvk
	MlauuUs3GonU6fOCQTSM1mFwf7t+rRLBOf+vT9DKzpZPqV5+g7lXkVIkph3k7gk/EWlpFTgO5/9
	MrFZJ53b+ehM+C1M4LvLGw3mpx0lT6v2luyBwmB2cF8q6aQ==
X-Received: by 2002:a17:903:9cc:b0:282:2c52:508e with SMTP id d9443c01a7336-295f94259acmr22552945ad.8.1762225702070;
        Mon, 03 Nov 2025 19:08:22 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFUqO76gElO+ZTKwaGFoRzRUAfzIQanM48EblJ0dw8r4dHbocGwz588y8FBPW9txChSgp/0gQ==
X-Received: by 2002:a17:903:9cc:b0:282:2c52:508e with SMTP id d9443c01a7336-295f94259acmr22552535ad.8.1762225701514;
        Mon, 03 Nov 2025 19:08:21 -0800 (PST)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29601998da3sm7357365ad.27.2025.11.03.19.08.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Nov 2025 19:08:20 -0800 (PST)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Date: Mon, 03 Nov 2025 19:08:15 -0800
Subject: [PATCH v3 3/5] phy: qcom-qmp: pcs-pcie: Add v8 register offsets
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251103-kaanapali-pcie-phy-v3-3-18b0f27c7e96@oss.qualcomm.com>
References: <20251103-kaanapali-pcie-phy-v3-0-18b0f27c7e96@oss.qualcomm.com>
In-Reply-To: <20251103-kaanapali-pcie-phy-v3-0-18b0f27c7e96@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Qiang Yu <qiang.yu@oss.qualcomm.com>,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1762225695; l=2222;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=tUTfOKxSsOuUH1eT8rqZMoSV6/aVUf+8+IW1ySU57FM=;
 b=bD8LEiZbdSDb4JXSLorgM4ilVFgpWOhevlx0yUd3rTWNcTMkjnJJmPrk+RcFLr4Y5Aw2cnv/S
 tRlXelShU8mDefpwRViuaOAu9Wyds0rS2LY06Nt88wJcwLK+fqEnzbo
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA0MDAyNCBTYWx0ZWRfX7QjAwlau3Cpr
 is9AzOlfshCQI9OrnmA/Zdn5Rw8/Qo1OcMwUN+PRwJSuR7sSE7aq5kWj66NZKxNc/G55xT2BZeA
 qX3o+hcKZOtGXUfDdAcpd4OT+J/00tVq1Krmwh23rctdDx+dHa++CGP9EsxiRrCj5FZQ4K46JLY
 /wo3V627zM/KRHZQhaePdD83Du6Bl+Hc683NazpLfthC5qrbqlT30bdcbTXQRWmXF6N7sNLoSM7
 pSlCLGT0goUrfGCyTUiROppcjFZgoY6NqSSIqFaoC0bjwReG3yKyzjehILxwDzqYJIsazV5JQQF
 2i4tJDNhBLwJ71t59gqqRBazz8QpMuSwaczcMSUcw3rDjyPQDdB5zgSiR4/EHDTsLUWiaFcPGaI
 jIzYN2NP6grB+yi6ENwJ6qDFYXC8fQ==
X-Authority-Analysis: v=2.4 cv=fofRpV4f c=1 sm=1 tr=0 ts=69096e27 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=GjIj-kmtzo1uPuhiLq4A:9
 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-ORIG-GUID: XO2zg3iTSiIqEX8GWOMclzYgCjRVz3V4
X-Proofpoint-GUID: XO2zg3iTSiIqEX8GWOMclzYgCjRVz3V4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-03_06,2025-11-03_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 suspectscore=0 clxscore=1015 adultscore=0 priorityscore=1501
 malwarescore=0 impostorscore=0 lowpriorityscore=0 phishscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511040024

Kaanapali SoC uses QMP phy with version v8 for PCIe Gen3 x2. Add the new
PCS PCIE specific offsets in a dedicated header file.

Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v8.h | 34 +++++++++++++++++++++++++
 1 file changed, 34 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v8.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v8.h
new file mode 100644
index 0000000000000000000000000000000000000000..1e06aa9d73d588aacc86fc1b87fb17396de700b8
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v8.h
@@ -0,0 +1,34 @@
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
+#define QPHY_PCIE_V8_PCS_G12S1_TXDEEMPH_M6DB			0x170
+#define QPHY_PCIE_V8_PCS_G3S2_PRE_GAIN			0x178
+#define QPHY_PCIE_V8_PCS_RX_MARGINING_CONFIG1	0x17c
+#define QPHY_PCIE_V8_PCS_RX_MARGINING_CONFIG3	0x184
+#define QPHY_PCIE_V8_PCS_RX_MARGINING_CONFIG5	0x18c
+#define QPHY_PCIE_V8_PCS_RX_SIGDET_LVL			0x190
+#define QPHY_PCIE_V8_PCS_G3_FOM_EQ_CONFIG5		0x1ac
+#define QPHY_PCIE_V8_PCS_ELECIDLE_DLY_SEL			0x1b8
+#define QPHY_PCIE_V8_PCS_G4_FOM_EQ_CONFIG5		0x1c0
+#define QPHY_PCIE_V8_PCS_POWER_STATE_CONFIG6			0x1d0
+#define QPHY_PCIE_V8_PCS_PCS_TX_RX_CONFIG1			0x1dc
+#define QPHY_PCIE_V8_PCS_PCS_TX_RX_CONFIG2			0x1e0
+#define QPHY_PCIE_V8_PCS_EQ_CONFIG4			0x1f8
+#define QPHY_PCIE_V8_PCS_EQ_CONFIG5			0x1fc
+#endif

-- 
2.34.1


