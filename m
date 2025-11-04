Return-Path: <devicetree+bounces-234582-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 88372C2F17B
	for <lists+devicetree@lfdr.de>; Tue, 04 Nov 2025 04:10:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 7DE134F818D
	for <lists+devicetree@lfdr.de>; Tue,  4 Nov 2025 03:09:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD228273D7B;
	Tue,  4 Nov 2025 03:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VPVPMFD2";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="efxTw1yr"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A829271A7C
	for <devicetree@vger.kernel.org>; Tue,  4 Nov 2025 03:08:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762225703; cv=none; b=qqU4QLReXox4dlGh/xVuiphTDaKymo4JWf7S/G5LbQMAYeYzjSqCU4lQ97h7bFRtVCnZKie8nbD8ukYQJUFn7xPAgSGcsTHvofIjBSdz/DsVyf/9EmciRk/mHEIvHX43jn/mYLkgpVHlsuRmgYdQV3PAYFPtXnnbifB/+BXMlWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762225703; c=relaxed/simple;
	bh=IAHLCq1unJtd5LiilYFr79f645gxD9ry6SK9tlt4gwo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=P690CPkNSSPwt85AbSutVCEUnBL1DFAefv4FqGKxX5x3tX+8swQCp7Db10H/8fJR8d+WrvioLN0IoQdURJeg5a7uRC5tAetR62u4BKK0mrVbIK7nWy4o9YIc8AEDOzONshZRoDjWFQqG/5WFzXp0Kw7ugQGGSK7Ew71wgr8A/rU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VPVPMFD2; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=efxTw1yr; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A3HIZvM3729789
	for <devicetree@vger.kernel.org>; Tue, 4 Nov 2025 03:08:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	7UTngfQb7OiWwCXME1AuL5HWLJvZN0I6tRHBZbitkqc=; b=VPVPMFD24KutKE4n
	ocTaZCSLpX4W+I7tEUyguu6rY/CfOMIYyvnSbtCpcTZt/bh5AlnU/4cC9H3VyfB4
	jZmIVCH3bIp+Tqcm3zv0z7oX9f+yzioOzJ/GmLPtAsMY6xlLdW0crp67EYMSnIY4
	J7aDLAIYN2Gx0OawZIKX0Pk4F0dxEhZ2zBy4nlBy2Dw5HjAoL57bStgzarRlMbG6
	KVnnM6JSnGSbFu7BcQOfZ2JjuSGAr2HVEyfBz7cbL4g/ZhZQ85CCBqjdYuPRUCqQ
	QCbRPkC0I+j4mxm/pl49+j0crfocZfFEWbiCZRAxmQaf0t+8lylZpR0pbHzAC+ZE
	N6yN+Q==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a70p89d2q-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 04 Nov 2025 03:08:21 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2930e2e8e7fso50971995ad.2
        for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 19:08:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762225700; x=1762830500; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7UTngfQb7OiWwCXME1AuL5HWLJvZN0I6tRHBZbitkqc=;
        b=efxTw1yriAACQNhPr9mUWOQegiUVl8iKR0XnMnhpqu6lQPFVBti32vRDRsqWioAnN9
         pOzAJ1pL9gt8pawRwN+d2wSgE9v0NyHacGGCiXe8Ouw5pI0GMKKonuzb07JniqEiHnGh
         F1wJZlKwbL5ZvrEs7vrc/cq9yuKpGZKsFYqmP1YfPlTMf4jzkHZrsRZLvK5/5oR34Fhj
         TZGiRMmcVfB3QCG7b1GeRZMUixYpRnezIOr1UPHr3BFfWSoP4uTKdWqZrALVyLaiOqmf
         M/ndkDn5l4N88tXlHssMmbNv2zDnTRtwHBfzspOsl7ec6Fd2CviQMd8RrDAy8FzjzfTv
         FBHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762225700; x=1762830500;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7UTngfQb7OiWwCXME1AuL5HWLJvZN0I6tRHBZbitkqc=;
        b=mcqBYBC/Q0zrtfvbo9CPiFEdbPRjMpeLy5S0v2cfOqcw29cEKVyhrok3sxUdMtPkBc
         KMqya1/tZico1cZkYn/AKFoX1KUB71b2PM/RQ4/32saiaabhGl40MmwkxyL8Nz4S0HEz
         5cXEZX531lpq9aepzL/q7o4/oQnuO5iE/giBTHQkQIF0IfsgXIT+2SPhLog43jChXkJy
         LUrwP3Od2TvBc8Xjq/WbkNqDz83tskS8g4TfyXHj+AGIDRMiat/l3zDAD/nbv4RqfolS
         oIDS/PJiob6+mYX8Z7qZlt7gE2/4P1ZEDQhbqogQXORtkOplC8ujGloTPFh5kr569ph2
         UYdA==
X-Forwarded-Encrypted: i=1; AJvYcCVMWWXsieiiLIrlnexiufgc2v+pUsyxPrUp3qXy4kOg/XXrDSji7iVW9/FpXeVOdnAe525vNi55kThY@vger.kernel.org
X-Gm-Message-State: AOJu0YziGC0y4GvmGUM9v2+zwdJm/qaBYJPZhePCeAL10QMFOhLIat2v
	94hrYalOt6W9N7DWgrbOMErkP4yRxteJooe00pyqRoZKWgg87j3zYrR2+Zb3ccOsGKfUGiXkClH
	45+1D800QHkQrVVu6iAdWG2bt2oimqRbqffIbFQC9XdUvkHVBGCG7LwOgEyfOsY76rmKDsV97I0
	8QJw==
X-Gm-Gg: ASbGncvq7FA++qeN/d00rNHjzewjNh1sm3TE4bAUpBltQ0p4q8GRAIDq0hAS6sIyTkM
	a7huKouFJx3dtymSHWe8WZfRGGpe9XpGyUQna/CwnSvRGt3v1fI6sqvbMVdOpN5WARcDhII8gYB
	UGyWdVMXXLihQ+Qeh2aTD+jSTS1runhSmZKNrwq2eMKHGrFoLAX/M/St6l1P5f/9nGcnz9Wgh95
	lfFMM4AtaEH6jzq8Ef13M/DZsjvPQfCokfjSfvewXK9abQ+kbcylZX34LqRjEru3jU4SxBblmqH
	X2LHxqOeekZxV1THVAeHsz3t344IbwN6fjvhdMHR1IQ4+FV4afi6TrFAcZ3p4WLtiEEM0eU9PF6
	Ix3qOszr8bb2ocPf/bP8RrCiTjmJTjU/YgpYGf4I0fXbqlw==
X-Received: by 2002:a17:903:1ac4:b0:296:217:33ff with SMTP id d9443c01a7336-296021735abmr13096115ad.48.1762225700238;
        Mon, 03 Nov 2025 19:08:20 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEoBy9xeqM+w9pbf8kkbaxnk9EfLbWsrjPpujaMoET2BweXfyp3FMZqYAikiF+5qUH18gB8CQ==
X-Received: by 2002:a17:903:1ac4:b0:296:217:33ff with SMTP id d9443c01a7336-296021735abmr13095665ad.48.1762225699686;
        Mon, 03 Nov 2025 19:08:19 -0800 (PST)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29601998da3sm7357365ad.27.2025.11.03.19.08.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Nov 2025 19:08:19 -0800 (PST)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Date: Mon, 03 Nov 2025 19:08:14 -0800
Subject: [PATCH v3 2/5] phy: qcom-qmp: qserdes-txrx: Add complete QMP PCIe
 PHY v8 register offsets
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251103-kaanapali-pcie-phy-v3-2-18b0f27c7e96@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1762225695; l=4502;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=IAHLCq1unJtd5LiilYFr79f645gxD9ry6SK9tlt4gwo=;
 b=+geqzEglYYNIOHPbx1JCBiTT7R52dh6jKroVW3Bk2Ips8w3XI6Df3D3GayoIeZPkScLDh88Dz
 hNZPZbA10GUDKXnj0L3SbcoiU0rIs9BVLH9wQRH0GNJafnyaz3hJTb7
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Proofpoint-ORIG-GUID: mLg0_TE8SfBjrsWzUWPzHp-vWT_f_Ucp
X-Proofpoint-GUID: mLg0_TE8SfBjrsWzUWPzHp-vWT_f_Ucp
X-Authority-Analysis: v=2.4 cv=AsnjHe9P c=1 sm=1 tr=0 ts=69096e25 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=AMX_CUzcla2ZGstc20cA:9
 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA0MDAyNCBTYWx0ZWRfX7oevaNaUx7yM
 UDAx00tSekj94kiwUnjHXonP3xLtLnftz8Vc06vgeqyHBcd0qExQ+8/RtUblu+T3QXgYoCtH9x1
 VSQUefLc9Y+O2bygquvGr7wKolJyrIZBEhsRJEPGeHpO8J4zZDsZBbClg+D68lBA0gOdmd9+b5R
 aLdd2iXWfYb9T6ZrkiBRwqv8T8IQPEX/IEnb4u7j33tQuP/Rd0ZFaedaqS8bWxLPNM8AwI2Qxxw
 pVO16kNOF5PfoFQNKKPYpzDoi884qAvcCkB4BAyzrLDLLPCSnvi4BKEhhyzSH8+RqpVjMgdKCo9
 b9jaSCaECbCoMUhhLuvFACV3ewBIZgycD0qJYMVtNe5oSP0HXny67m0atqje+FPXqXt9hMDTF/M
 x/6/6VlRydjo0jl6CIetHEpAFM9lEQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-03_06,2025-11-03_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 adultscore=0 impostorscore=0 bulkscore=0 spamscore=0
 suspectscore=0 priorityscore=1501 phishscore=0 malwarescore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511040024

Kaanapali SoC uses QMP PHY with version v8 for PCIe Gen3 x2, but requires
a completely unique qserdes-txrx register offsets compared to existing v8
offsets.

Hence, add a dedicated header file containing the FULL SET of qserdes-txrx
register definitions required for Kaanapali's PCIe PHY operation.

Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
---
 .../qualcomm/phy-qcom-qmp-qserdes-txrx-pcie-v8.h   | 71 ++++++++++++++++++++++
 1 file changed, 71 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-pcie-v8.h b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-pcie-v8.h
new file mode 100644
index 0000000000000000000000000000000000000000..181846e08c0f053c5cc7dbaa39a1d407ffdcbcdc
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-pcie-v8.h
@@ -0,0 +1,71 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries. All rights reserved.
+ */
+
+#ifndef QCOM_PHY_QMP_QSERDES_TXRX_PCIE_V8_H_
+#define QCOM_PHY_QMP_QSERDES_TXRX_PCIE_V8_H_
+
+#define QSERDES_V8_PCIE_TX_RES_CODE_LANE_OFFSET_TX		0x030
+#define QSERDES_V8_PCIE_TX_RES_CODE_LANE_OFFSET_RX		0x034
+#define QSERDES_V8_PCIE_TX_LANE_MODE_1		0x07c
+#define QSERDES_V8_PCIE_TX_LANE_MODE_2		0x080
+#define QSERDES_V8_PCIE_TX_LANE_MODE_3		0x084
+#define QSERDES_V8_PCIE_TX_TRAN_DRVR_EMP_EN		0x0b4
+#define QSERDES_V8_PCIE_TX_TX_BAND0		0x0e0
+#define QSERDES_V8_PCIE_TX_TX_BAND1		0x0e4
+#define QSERDES_V8_PCIE_TX_SEL_10B_8B		0x0f4
+#define QSERDES_V8_PCIE_TX_SEL_20B_10B		0x0f8
+#define QSERDES_V8_PCIE_TX_PARRATE_REC_DETECT_IDLE_EN		0x058
+#define QSERDES_V8_PCIE_TX_TX_ADAPT_POST_THRESH1		0x118
+#define QSERDES_V8_PCIE_TX_TX_ADAPT_POST_THRESH2		0x11c
+#define QSERDES_V8_PCIE_TX_PHPRE_CTRL		0x128
+#define QSERDES_V8_PCIE_TX_EQ_RCF_CTRL_RATE3		0x148
+#define QSERDES_V8_PCIE_TX_EQ_RCF_CTRL_RATE4		0x14c
+
+#define QSERDES_V8_PCIE_RX_UCDR_FO_GAIN_RATE4		0x0dc
+#define QSERDES_V8_PCIE_RX_UCDR_SO_GAIN_RATE3		0x0ec
+#define QSERDES_V8_PCIE_RX_UCDR_SO_GAIN_RATE4		0x0f0
+#define QSERDES_V8_PCIE_RX_UCDR_PI_CONTROLS		0x0f4
+#define QSERDES_V8_PCIE_RX_VGA_CAL_CNTRL1		0x170
+#define QSERDES_V8_PCIE_RX_VGA_CAL_MAN_VAL		0x178
+#define QSERDES_V8_PCIE_RX_RX_EQU_ADAPTOR_CNTRL4		0x1b4
+#define QSERDES_V8_PCIE_RX_SIGDET_ENABLES			0x1d8
+#define QSERDES_V8_PCIE_RX_SIGDET_LVL			0x1e0
+#define QSERDES_V8_PCIE_RX_RXCLK_DIV2_CTRL			0x0b8
+#define QSERDES_V8_PCIE_RX_RX_BAND_CTRL0			0x0bc
+#define QSERDES_V8_PCIE_RX_RX_TERM_BW_CTRL0			0x0c4
+#define QSERDES_V8_PCIE_RX_RX_TERM_BW_CTRL1			0x0c8
+#define QSERDES_V8_PCIE_RX_SVS_MODE_CTRL			0x0b4
+#define QSERDES_V8_PCIE_RX_UCDR_PI_CTRL1			0x058
+#define QSERDES_V8_PCIE_RX_UCDR_PI_CTRL2			0x05c
+#define QSERDES_V8_PCIE_RX_UCDR_SB2_THRESH2_RATE3			0x084
+#define QSERDES_V8_PCIE_RX_UCDR_SB2_GAIN1_RATE3			0x098
+#define QSERDES_V8_PCIE_RX_UCDR_SB2_GAIN2_RATE3			0x0ac
+#define QSERDES_V8_PCIE_RX_RX_MODE_RATE_0_1_B0			0x218
+#define QSERDES_V8_PCIE_RX_RX_MODE_RATE_0_1_B1			0x21c
+#define QSERDES_V8_PCIE_RX_RX_MODE_RATE_0_1_B2			0x220
+#define QSERDES_V8_PCIE_RX_RX_MODE_RATE_0_1_B4			0x228
+#define QSERDES_V8_PCIE_RX_RX_MODE_RATE_0_1_B7			0x234
+#define QSERDES_V8_PCIE_RX_RX_MODE_RATE3_B0			0x260
+#define QSERDES_V8_PCIE_RX_RX_MODE_RATE3_B1			0x264
+#define QSERDES_V8_PCIE_RX_RX_MODE_RATE3_B2			0x268
+#define QSERDES_V8_PCIE_RX_RX_MODE_RATE3_B3			0x26c
+#define QSERDES_V8_PCIE_RX_RX_MODE_RATE3_B4			0x270
+#define QSERDES_V8_PCIE_RX_RX_MODE_RATE4_SA_B0			0x284
+#define QSERDES_V8_PCIE_RX_RX_MODE_RATE4_SA_B1			0x288
+#define QSERDES_V8_PCIE_RX_RX_MODE_RATE4_SA_B2			0x28c
+#define QSERDES_V8_PCIE_RX_RX_MODE_RATE4_SA_B3			0x290
+#define QSERDES_V8_PCIE_RX_RX_MODE_RATE4_SA_B4			0x294
+#define QSERDES_V8_PCIE_RX_RX_MODE_RATE4_SA_B5			0x298
+#define QSERDES_V8_PCIE_RX_Q_PI_INTRINSIC_BIAS_RATE32			0x31c
+#define QSERDES_V8_PCIE_RX_Q_PI_INTRINSIC_BIAS_RATE4			0x320
+#define QSERDES_V8_PCIE_RX_EOM_MAX_ERR_LIMIT_LSB			0x11c
+#define QSERDES_V8_PCIE_RX_EOM_MAX_ERR_LIMIT_MSB			0x120
+#define QSERDES_V8_PCIE_RX_AUXDATA_BIN_RATE23			0x108
+#define QSERDES_V8_PCIE_RX_AUXDATA_BIN_RATE4			0x10c
+#define QSERDES_V8_PCIE_RX_VTHRESH_CAL_MAN_VAL_RATE3			0x198
+#define QSERDES_V8_PCIE_RX_VTHRESH_CAL_MAN_VAL_RATE4			0x19c
+#define QSERDES_V8_PCIE_RX_GM_CAL			0x1a0
+
+#endif

-- 
2.34.1


