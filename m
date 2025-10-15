Return-Path: <devicetree+bounces-227033-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BE3CBDDFDC
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 12:29:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BCB2019C0F0E
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 10:30:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BDE1931DDBA;
	Wed, 15 Oct 2025 10:27:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="R1F59vJ2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A77131D36D
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 10:27:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760524074; cv=none; b=H2nitq1rZ0Qhtyj0muglkd+U28k/K98yst7TooP0tHV9eDtdzBAzEB3kUWkVpD35Ce5TPceU2gdiT2K4cZnM76npK55CKp1Ej82D7mCDFt557stFRQlYpJZepHQvD4hVpYNOE2xhVWxu0IAUcM17qoGyniPKJhBaxJRiT606Znc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760524074; c=relaxed/simple;
	bh=UD0+HagPVLlzWUDwZRKdbmDniVS8JgRHk8wGYNgYMM0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Li3J5G3kYh+n9dtMo7ebok/S5gsr7Cywc3AYX//9QhHFg7ziCFy0k0jHGJ32xWuhGeOugzI/DURDORpVjgEnlUQNR7sYMzFZf8mjB7kpO1Cgs6f9sSwzkHIgMfSKHU9iooVbREKqFStHGJRN0jFd7ZamLyQdYRpK+UTUmuia3rE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=R1F59vJ2; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59F2sQ9k004230
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 10:27:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ZvqRobnVL+EM1S4yYHAfLhWvmx/XDIy9zng/ovwtFeM=; b=R1F59vJ2adb6X1Td
	qPJazQeCPv7m81HQrBL+MTJ2jz/UxQ7uIk0giZMKCf5jzQT/pHRgANjhgcgNqTcO
	fj9je+60PzD0jg6jCPae30+IivpMHFCufyzzA7EPZ8s58ndjZM0jwcloqRlG0LYu
	lVBvQw2o9UPAAGGL87yFIAAjLylnN2Fi4+Z04PydO4U/a135gVsMO7OnUc0VA2Uh
	OBYIXIHhv/OXMjexd6ukada/ZN1abCYUHPbzL1ZIEC7VCDh+B59hJXfe1PjRqpag
	S653bNJCQXxk1XBYWAj4klcKemC3AmqJ44v8ItkEaLhlndmiyjNwhjzr00ZZsDdU
	XrUg+A==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49s6mwpbkv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 10:27:51 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-32eddb7e714so9127299a91.1
        for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 03:27:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760524070; x=1761128870;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZvqRobnVL+EM1S4yYHAfLhWvmx/XDIy9zng/ovwtFeM=;
        b=ZSRheKQ49tp3C6j1TbmyHILFEPpyckuPZ/PIbFss8SWjzJqdbmQwLUx/sa+iQDIB/v
         HxfE8XRh3YEE1ks+cCCitxYrs2Qh3QgWyRN6Iudrw+eXajtEmd6nMA38VsniCcNt+5qb
         a1QkbRBtKKBMxNk+XRrfg4CKRu5lBn+PTyvpUZgJfdG5HwkEBsKFzz2f2gAVZOGzFnuf
         9Qpc8jlKxwH56D01xDM4M+imChXdV9X/i+EoRXweCYyrxLWOhndJLl9MuaYUkB94hs2V
         MggZmrud7xt4siMoCEZCdMHwjrWwwtcc7/RlnQAtCHvveOYicFF/WVhrmLMU8sDfxgJN
         9oCw==
X-Forwarded-Encrypted: i=1; AJvYcCUkXCX0RDI0GgIlOAd1rCvOPtMTNQS0No7vnPRdFO1VWHLtos4qYFsqS2Au5f0OEyQ6x76FhVBAITZk@vger.kernel.org
X-Gm-Message-State: AOJu0YzmmV7K6nZsoUal5yZAYZzpK54eATGNfMxg8tKaltovGGOEFGyX
	9BX25ePW9c/UGd89nU0DdoO+hOjtbQj/IOV02QDmXGt7fMnUL4MCSgqCqHcwxunBXihmm/IvnQC
	EghtHRQHeGHRWBv+gLgT7VKzR11ahkmr3IfcoV1ADjF3eHTni4tZFuE3QJqIabtnu
X-Gm-Gg: ASbGncumzPIQ9Rdq81uoPmeI9q3N5HmfAZwRhLhNCQQzpVd/2v69eznRpE0xzuvYZvM
	4jsX6Ui5ONcKRwYKcs7Cp6eVWNhVvQiVSV7sJ3pYV9xPTMecZjwXB1AMYJK0cNNWn5P35hgfr+l
	eVijT2r9+41+WomjZ4m5z1fpdmFVSj5nPsIr8kbKkWl7KDeC2Fm939qLtUUKIPsx+AvhC508+mW
	TZITzu2vn11Nhy+xnjQsLoIP3Hv1HW4PziG3hquayOO0a/RpP8f9L+J41lVxPoPPpZ678MB4pNh
	/KubjLw/Aiw9/uLS+2NgsypG7evzFh3bRQ7V2nTrNpkr9WuHMYJeAyIH4QrpOxhVEQG4tbl9lxz
	jLUg5x2FfbSs=
X-Received: by 2002:a17:90b:33d0:b0:338:3789:2e89 with SMTP id 98e67ed59e1d1-33b51117428mr35275103a91.10.1760524070475;
        Wed, 15 Oct 2025 03:27:50 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFEIUwt8ry8GF/UZzYIWnFH7w4xxumx865zk/mV7pQ3v9s5tfY6ECzCVX6vaoGYmfnaMbNHNQ==
X-Received: by 2002:a17:90b:33d0:b0:338:3789:2e89 with SMTP id 98e67ed59e1d1-33b51117428mr35275076a91.10.1760524069888;
        Wed, 15 Oct 2025 03:27:49 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33b9787a1a7sm1993574a91.18.2025.10.15.03.27.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Oct 2025 03:27:49 -0700 (PDT)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Date: Wed, 15 Oct 2025 03:27:34 -0700
Subject: [PATCH v2 4/6] phy: qcom-qmp: pcs-pcie: Add v8 register offsets
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251015-kaanapali-pcie-upstream-v2-4-84fa7ea638a1@oss.qualcomm.com>
References: <20251015-kaanapali-pcie-upstream-v2-0-84fa7ea638a1@oss.qualcomm.com>
In-Reply-To: <20251015-kaanapali-pcie-upstream-v2-0-84fa7ea638a1@oss.qualcomm.com>
To: Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, Qiang Yu <qiang.yu@oss.qualcomm.com>,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1760524063; l=2155;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=UD0+HagPVLlzWUDwZRKdbmDniVS8JgRHk8wGYNgYMM0=;
 b=zp9TyVP+mYZ8RnVJBIQUAjkqkL7P6Wvku8xYCpBilrwdujS6A+eY1whdjPrBE7kFCAVI2deRd
 j/7ASHrJSfDB0Q3Njyvu57A2Xlht6V3Ls2IWCvQaiM8wfavjZFfAY35
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDEzMDA4MyBTYWx0ZWRfX/UKuaIS5vzEJ
 hGe8vYZlXlL0OYuL/wDBeCZKfvCfiqJSHewXsVwCNp1Ieev35gu906Q/s9LXYvf26xI/XA3l947
 p+5pQMHttJ26pIAApbSn6G594bGI8xnGapSf+VgIxV7M7DTTr8Ve/9oIyrJabGcv1578GWwzJ84
 4bfXxV6ChRtGbDrM6g3r5zQmEHI5j4D0dxkMd2PdSoZxJ9Kt2x93p7roBLy6vvbIEAzD+cP9NbI
 GoaA8QH19ZwxUT7U3Wv7oH3OY6TJfbjHRQPP0Kh87Oy02Fri9JF/p6HDmSZkwOF0uaIfEQ0H+HQ
 qrkPiN1uDuu5NIFmHiR8WS6v3pwN8WeYhqrz1h07kQjVBU70Mdmh0BST0Chh9kBwfUdfeeMv6P/
 6iba3fU4f4d+Gfqj8Pb7uMbFyFc6hA==
X-Authority-Analysis: v=2.4 cv=Fr4IPmrq c=1 sm=1 tr=0 ts=68ef7727 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=GjIj-kmtzo1uPuhiLq4A:9 a=QEXdDO2ut3YA:10
 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-GUID: zQmoegzOGuig5WMfk1SF423Sm8xBYy7a
X-Proofpoint-ORIG-GUID: zQmoegzOGuig5WMfk1SF423Sm8xBYy7a
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-15_04,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 spamscore=0 phishscore=0 malwarescore=0
 adultscore=0 lowpriorityscore=0 bulkscore=0 suspectscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510130083

Kaanapali SoC uses QMP phy with version v8 for PCIe Gen3 x2. Add the new
PCS PCIE specific offsets in a dedicated header file.

Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
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


