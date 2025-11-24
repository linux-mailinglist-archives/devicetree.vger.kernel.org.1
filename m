Return-Path: <devicetree+bounces-241565-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 64187C7FDE4
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 11:26:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id BD9B24E40C8
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 10:26:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C3DF92FB0B9;
	Mon, 24 Nov 2025 10:26:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ku5PfHY/";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="IGk1QsHG"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E09142F60D6
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 10:26:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763979963; cv=none; b=hnhd/mujkQcJPV5DE6ppc/4sfWAdrOJgvpFP55EJVmXP6L6KxYWIjcOdKALTGJPjG+U2nKy3m58++Li1NwNAMIqbDoSTJz64qvDstkMuaFwW+40IUeNX1OdwAU/IbuBELtAFfxNN1BlnvyemoC6awIgEc8Q7aZVWeQnpc0wYtdI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763979963; c=relaxed/simple;
	bh=ZbSDkniGcxNnPJzqaBaMjAhjt1v3sdTM3DUt2uBqCaM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=oJ8CZX/27Q+80JoTuYRoqysPJSXrIRn+vrwouJBcxO/VGe2/kBhWGM41UnvWVBGUwN6AtBMEhDtrRtl3FpqmBITdbuvPG1pPPIJcYfi+H0kzcXZVPr7G42v1D+MYuVXXefvAeS9QGs1uQJtTdKZug0LD1mebBUD9E4zmpspA8hQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ku5PfHY/; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=IGk1QsHG; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AO7riGQ2576206
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 10:26:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	dQXVl7HhYAGGwBcSc00STLR56wP1a28fkEjKawQeBt4=; b=ku5PfHY/QKNjqFFE
	e2fg6K7ZbjHxoMxPMiv1bFFzcfnhBpUAs1ac+8UBGv4sy5EjFSM5KQ0IN0S6A2mt
	SvbCBX5cbJj6HXphdFuNQ3MTyGCvHzehr5qLdG5GZdDU+9ZCobhDgJxKeNoBg+0C
	rEFbMDL2KV1MTO0ZAuhBtZmdmbYc5aVVGeUzUqskY4FIiOtEKCtxbzyfvCxwXqJM
	6jgt+zMVfE0u8Od50J70rhQTjbLwKP+QMOwnnU4CW5dPdK/mu3+r89XCh8ObnTzn
	0GS1vUeAAVb8VmFJqikhqNnhjEhUO5sH0A1sC5sK/jWnMzzAaPxIqfyG4Ow3KYEz
	y60aNA==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ak691mnap-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 10:26:00 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-ba265ee0e34so3729829a12.2
        for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 02:26:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763979959; x=1764584759; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dQXVl7HhYAGGwBcSc00STLR56wP1a28fkEjKawQeBt4=;
        b=IGk1QsHGtZObj6Dj4Wx/otCxlIzgdkahdw7SR4TmTICjKqoXNnqduFERr/0nQGvYww
         7At8Jxk8m34pE2oljTEqlKf1hGp65FLEaHcv/VoINnotU+ulby9QKDMdiASVotjhe3ZE
         uCF1M0PQ/npuky37vsikNhavbI5xXBUBHLp/V4KTJDrNIYT/aSAk0ZnrFoK41ELxRJFr
         bkNDHqUlEA30GsKCU+Tr0OSCIl/oT5COi28iEY5wa+BvRlKhU9f24D+KNfOUabLDeN3K
         UmeU6wcTSqJtiZ8vNkDIerRkk3TMgjb8xEX/Ac1d7fmtiF+UTzXe5UceMkNu7n/izcXt
         rC2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763979959; x=1764584759;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=dQXVl7HhYAGGwBcSc00STLR56wP1a28fkEjKawQeBt4=;
        b=JBff+8DrDH8tzs2hUJUj8ggfkBG5j9563LPVInF7OA6BEPmRZbQLZ88FHVTxxMeT3E
         gnBvFhj49giT55Wr7mpYLj+4nL9NvUj/fSLEnkZDTMK9+N5wShp082DSv4o6BSGWfwNh
         sniU/d7cH3Dlmf5P93LK0yMQj1eLl/DlayRcq4Cx6VcklXK5BJkHsnL4d+5/JR9VmyMM
         nb6CWj8ZnDnDfyisIN4AJIuF8tTt8OOuo2SLJD+3SdUyOKhRpgBd5tFYPWvDbSUrBhgA
         3pj/naYr0sP2zAayZmUz0OrYT4OGlRy7gEsTHTwLGg87PKmFBTyqzz0Wx+MsjV3A6dX8
         yZ4g==
X-Forwarded-Encrypted: i=1; AJvYcCW0n0Qs3wjhriTK45V546iwFGEybMlkHbVeT7fL+P4EDyyPZoCCeJFFiJi5sl8EQBp0th5f8d1361TS@vger.kernel.org
X-Gm-Message-State: AOJu0YxyWdF+oDzaKP5hxDmGiLYnJvk3k3FjQ+L/gejSVhS7mDQBLh6y
	xxwy9RFvlmj8qbDkFYv6nhiuiBW76OwsFqilGWlWDJZfymW2u5fKMv6POgahW3HHMiqGP/6G97R
	c9d03uqibRk90NOcQXobVOHRvxt7SvaptEYEnj1wGhdUPP3fbSa2GXx726yHlsmnz
X-Gm-Gg: ASbGncsC1PM4otTKXx19hrJ7WbcagBgp4AcDY//R1XfypS5RpxIU0nj1T6JC2XNSlDl
	SPDNAp0S5OcMYfAnT+q6hmFiUHHk3JV8qJmXe7PjXeC/PUp9/UrUQfRMzpH4U7ffwamKH/DOiuW
	hl4um9yUE1AcxZRCENCryJFa6Wcyyw7/Xu0ZSp5sIFKIbfW6R7SZ+7HoNgZtyTbM40cnGR96Dh8
	9z5kxNKzfIiOyBg5FjuuVnH/HFCsHZKzHWyeJmjtuA/RacBEn7sq1orh6RYm8xj8r053iNVvhHK
	pTiIIFW0BDQDNHtXi2Hg3cNIRcUZNdTWHEtWEcdjw2rjKfxgERS/xr5GMcbTq80AoRo+d3Ms9mq
	FKy8gXGBYXlHU2+YCCch98OPHPtSKFlBwOegP3NJ40ARQ3e70DdQVe4SC
X-Received: by 2002:a05:7022:2214:b0:11b:95fe:bedf with SMTP id a92af1059eb24-11c9d84e0bamr7668021c88.27.1763979959485;
        Mon, 24 Nov 2025 02:25:59 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGjOw0JxYuSliQthQWESX5rWtgkd9v5Hu0yOrbQZZUX2pVdDCFqf7mmbXihgRVb7dZpwkZdVQ==
X-Received: by 2002:a05:7022:2214:b0:11b:95fe:bedf with SMTP id a92af1059eb24-11c9d84e0bamr7667995c88.27.1763979958924;
        Mon, 24 Nov 2025 02:25:58 -0800 (PST)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-11c93de6d5csm46140627c88.4.2025.11.24.02.25.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Nov 2025 02:25:58 -0800 (PST)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Date: Mon, 24 Nov 2025 02:24:36 -0800
Subject: [PATCH v4 3/5] phy: qcom-qmp: pcs-pcie: Add v8 register offsets
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251124-kaanapali-pcie-phy-v4-3-d04ee9cca83b@oss.qualcomm.com>
References: <20251124-kaanapali-pcie-phy-v4-0-d04ee9cca83b@oss.qualcomm.com>
In-Reply-To: <20251124-kaanapali-pcie-phy-v4-0-d04ee9cca83b@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Qiang Yu <qiang.yu@oss.qualcomm.com>,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763979955; l=2279;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=ZbSDkniGcxNnPJzqaBaMjAhjt1v3sdTM3DUt2uBqCaM=;
 b=BUvw/OMtIT27B7yF4TR0hcOyBUtfnd/h5DkFUgJZ4FRueKtOuiH2eZ+MqYmLeXuK2j+388FKa
 8nILT89GyEEBVfVW29kHhgoneTXg1ipLBqX6/B9mdRajWTRDf6xPxW3
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Authority-Analysis: v=2.4 cv=Be3VE7t2 c=1 sm=1 tr=0 ts=692432b8 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8
 a=cXB1dxBGfnZZ65A63A0A:9 a=QEXdDO2ut3YA:10 a=3WC7DwWrALyhR5TkjVHa:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: 3eWW6teVhA81fRbahsSwRzEZDa7BIxe2
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI0MDA5MiBTYWx0ZWRfX3VCE7IABEDlM
 jh/xj8xAMvNhdwdVcuE5Hit4oQf4yHSIhpxycdLhIb2a3iVqhnBpU9oT25txBWHAs5q9gM0mgbK
 Nrhpf5TdPkKJ84Zqo2kTxnuVIm2jswOlGqpVocOB9ChSyf8cmaRu2sDYwUKgNVH7YBUJny3nfyZ
 wVpfRxZ8a//TLSyhGVXR60vRzD+kDQgrGNXpLI+qAFJ6MZte2oNZeHXJJuf9pIL9XZxDiZQc9zc
 f309lFcck+UTBJMYtJz9jml/v3QsDvahVVKfZY1C2oTTDnda+hfJsLoqEFe26AHcSFspbgqFVk/
 2wcVSToK0Y40CKeq/+NGQ3aCygMdAMKrN/nVM/3sOqnBDBu1iFtOmU0OuhMFran4rJHM+SaI2t3
 G0x7OGisGAdWlHEk/b5r033/A1VoCA==
X-Proofpoint-GUID: 3eWW6teVhA81fRbahsSwRzEZDa7BIxe2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-24_04,2025-11-21_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 spamscore=0 malwarescore=0 clxscore=1015
 lowpriorityscore=0 priorityscore=1501 impostorscore=0 adultscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511240092

Kaanapali SoC uses QMP phy with version v8 for PCIe Gen3 x2. Add the new
PCS PCIE specific offsets in a dedicated header file.

Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
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


