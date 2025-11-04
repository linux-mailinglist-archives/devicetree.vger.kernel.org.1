Return-Path: <devicetree+bounces-234585-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CDEBC2F199
	for <lists+devicetree@lfdr.de>; Tue, 04 Nov 2025 04:11:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id B697E4F62C4
	for <lists+devicetree@lfdr.de>; Tue,  4 Nov 2025 03:09:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 336B7280330;
	Tue,  4 Nov 2025 03:08:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="m5Zpgxco";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="EOrf5hne"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DF6027EC80
	for <devicetree@vger.kernel.org>; Tue,  4 Nov 2025 03:08:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762225708; cv=none; b=emuLT8LhGQ/gqNHJxQ+qXI9JjgZjOEJRo/ATzxjN02CwF2wj9jsSe52hOgftpWZ9pSx5l15wAUJjLuDnYhGzGbPLnqB2zv7KC+2DyNcoO1gEv8ISYz1SRG9YYS0LP0D6aT/sGdA/49FMhYob6oz/Hk73g10MPdkoYEWa2dNOJ14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762225708; c=relaxed/simple;
	bh=HMFF1M7phmpCK7VuGZ58TK+uqqRS30P/iFvqeTQ1RsE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=jQUj7Ti2HWAD3WKaX0hOcBwyhUvzx2GOxWmiSK5lLTUhIucPFpM+bBWQl7wEn2wiU4rnGHKsSNqv37IBBSCZzmTz0j6mdeIHBYHbg81XJ6w53gMPAYbX3yQC9dWTrD5fLf/cMpEmvk/bTHJt2wLaFDdWaCYtsWEX0avsNNImeKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=m5Zpgxco; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=EOrf5hne; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A3HIaRq3729798
	for <devicetree@vger.kernel.org>; Tue, 4 Nov 2025 03:08:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	/6IliQChOlmblwVDFbtSfuQYWXFl9im/RWm0ERKAi38=; b=m5ZpgxcoVLNvenIl
	jXsO1MXeXKXElB9NktoAXCErwCygFWzihJunK8WxsED2CLzAelG3SPEMtFHUT5GU
	NnKK2NMyyyeWdOmaWrgx2V2+mzGXPLeynf5OOhLJieutLVpk7w0TkxLM9iSPfZbt
	ysLYCg0Tr+DwR6E2bA6daJGB4p0UzB16umEOtZPOFukqyUoAJjs8rYVuK7KwwwTE
	NYQnbcBfY1/5HsUMRz2r8BbgmCsV7fspgnU+ZvJLSo3hzJzXwkqIFAKiHB7Cz47o
	aZezUpf/9qcE0kp0NQaE6+e6SUUe5sLzgZSdGPf8JgWYCKRVFxCiXQrbQalIzqFh
	/YiVig==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a70p89d2y-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 04 Nov 2025 03:08:25 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2904e9e0ef9so119415575ad.3
        for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 19:08:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762225705; x=1762830505; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/6IliQChOlmblwVDFbtSfuQYWXFl9im/RWm0ERKAi38=;
        b=EOrf5hneBQn+IF5YvRdZj6fLkC7Iq1mqdxU9jL/l53mcNF34RbC4ccJFOrcq5bsUd8
         nTq9DHOGGVWUsX4qLhIv46DaySmCznVqXrteZKUvyQDgwy5GNpo58tGVfs4al4ykn3Jx
         XV4XzlIlXImVOKL0V+2pVNz0JbCpAbrgxb4SwuoKamOi5IaZ+mNFgWXlTkMmbHyXebvj
         DsmH5VDcah0LEPHj3wNai4hgnWjCo4e1Rizvpb6vb4ObHPmT0kLcSYKA3SdHW99oSJE1
         8JCcBGjUXcpDRjO6SGcWxXYMAHCFpvNBzGdgQvry7OYepgGoBqXwErTfit0dwt6n/HVL
         5UFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762225705; x=1762830505;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/6IliQChOlmblwVDFbtSfuQYWXFl9im/RWm0ERKAi38=;
        b=G9CbOJKFC1+22DucL46hDuKdchfM2m7XZ0NZPj6xPKB0mERyvFPpKTZJo/j1o3gveF
         cJuSGAUpWOq6hGTHHrPz/MLDtwHK8xdpeKTPTQP8XAz65TRycNOms85zXWfSZxpaIztQ
         91J1r8C/McHyMSrNGC5djyxqiyFn94kHelMHqJBpXlZGIrzlapsy6qQ+UFms9IWgF40f
         PajagRAWHpCg0IiIDPQd0D88SGk5Ti9Bl/nccrvrANtxCgcbtgcHmPNmJibn+2jDYUNQ
         DHWRdSzyxebdxF+Kx+l2adGZxKjD5jzloQpXMvS+5A3UZn0nbV9y5WHeAmOa+AROCp8E
         L5NQ==
X-Forwarded-Encrypted: i=1; AJvYcCU3Xi23n93s+x15kCpJyEW66RjGyd8JTBaPNk2DQXk+deWgu/7E9SrhXe4Khb9aMoez5pw4qZdbInVI@vger.kernel.org
X-Gm-Message-State: AOJu0YzJHYUmEkQ/2ndguBfxTrAq9QvzYAvBy5s/kKExSnLrZjcYI60K
	182xlmSB9wYn3tkVgwrbh20jCQripFzDj+6fj7GgiX2MLN17V0uFOVTvAXqHjmN7ZeZ8H0rhzb4
	WOYrhE+Rw3XLoO+ZlsgZbinZP7IgpxDKv3/+iUHQxk/1RPc7h/FvnwoZ4Jh0W+So/
X-Gm-Gg: ASbGncs1WlQQ8CnL8EkumqD1CR2MyVWjnZPFcJFWa4hb7N8RGsjujcm1RDdnyAgjnn2
	eOmS262MZUrRjj6b+zvtytJyJyerTqPS4JvALZi9znjz8F3/MGPqq90sQl6FVUCkyLFEfsPpJjT
	NzsCeD7bXk//1cVjdtCcWfxqZiG+mcalEpJ2/dSJ75VmUqF/O5aAFc773oCFO50jmQe/6Czq/o4
	IBero9DkqavM6maq1Q7kdkdpbnNzQP9/NxnHg5ViPQAxJbrr6MDoClX+q6RarJ+r83vv7UjYyCi
	rRyX/wR3L+g5SwsCy0v6hu2fTnlxoCJPxPUW8bBmLnTZEoQ+Mxh34A8dNW9gquoBxE32IQfOcDe
	nSqnC73Kit34aCthhD4wzyKDY83XKPUyn8Wu2HL94MA5THg==
X-Received: by 2002:a17:902:c408:b0:295:592f:9498 with SMTP id d9443c01a7336-295592f9523mr155596645ad.44.1762225704623;
        Mon, 03 Nov 2025 19:08:24 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE68IacwJ922o8Q2tnXR/C8bZxcQvBcLjyiEBCk8PMLXUR/6ExjOjKPZEY8OPbwsC2VMtL57A==
X-Received: by 2002:a17:902:c408:b0:295:592f:9498 with SMTP id d9443c01a7336-295592f9523mr155596015ad.44.1762225703901;
        Mon, 03 Nov 2025 19:08:23 -0800 (PST)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29601998da3sm7357365ad.27.2025.11.03.19.08.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Nov 2025 19:08:23 -0800 (PST)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Date: Mon, 03 Nov 2025 19:08:17 -0800
Subject: [PATCH v3 5/5] phy: qcom: qmp-pcie: add QMP PCIe PHY tables for
 Kaanapali
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251103-kaanapali-pcie-phy-v3-5-18b0f27c7e96@oss.qualcomm.com>
References: <20251103-kaanapali-pcie-phy-v3-0-18b0f27c7e96@oss.qualcomm.com>
In-Reply-To: <20251103-kaanapali-pcie-phy-v3-0-18b0f27c7e96@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Qiang Yu <qiang.yu@oss.qualcomm.com>,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1762225695; l=12299;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=HMFF1M7phmpCK7VuGZ58TK+uqqRS30P/iFvqeTQ1RsE=;
 b=PwDScpYWu5A6I1OAymoUt+Kt34xisSr6yuBWsV61x097YymBWHJNocHlWfs9Tf/RpEnoMH7Iu
 o4Mi9NTkUlKBlw9VKtrRb3o2iN9Z4uwLLOB2lcFaX3kcW3puo+ahS6p
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Proofpoint-ORIG-GUID: G7Srm__wA9mrgXO7SfEIKJAJWfKF4Ezt
X-Proofpoint-GUID: G7Srm__wA9mrgXO7SfEIKJAJWfKF4Ezt
X-Authority-Analysis: v=2.4 cv=AsnjHe9P c=1 sm=1 tr=0 ts=69096e29 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=0FVVrbj2krFBHOIXHEsA:9
 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA0MDAyNCBTYWx0ZWRfX85PRclZvurEz
 IaoFvjcmv4H3TrBgeWuNyGNabVTVmK/DuvqRzukLZZHBMdny1JUeKHJGxVU7zsHIJ9GrrHPaxIA
 GzrQXmVvSDCL8iR1ekVJmpPUi9EUeKsYi5or5bTQDheDEIcr5WIUWx3DVsI1OGBhG+XAbaZyKTr
 W++FARPUhGsHI4t7Gkl0QmNJWLBCskgM5abKh+zlu3qYTBxcbSynBZKyYJG5xHRpGq9rgLkbZVE
 F+VrXS60N2auh51Nk3Jgqlv72dbCXR8ECiMsbakexWXR+GA7A58HAJRP3CqHB5+gjbFliwMaCRn
 9RRZUmLcN3MZczATBkl1q91MmNqh5z+vBkfboS41E7FTBItDkZD0GZm9sbpl0FdkZesDgnZk4Qe
 Q5ov6HYB38EhPwE3xGRO5mzngahoPw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-03_06,2025-11-03_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 adultscore=0 impostorscore=0 bulkscore=0 spamscore=0
 suspectscore=0 priorityscore=1501 phishscore=0 malwarescore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511040024

Add QMP PCIe PHY support for the Kaanapali platform.

Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 194 +++++++++++++++++++++++++++++++
 1 file changed, 194 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 62b1c845b6275d924fa501ac64e69db5f58844aa..6218824b4b81afd97f6497a089204a49f6336a49 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -37,6 +37,9 @@
 #include "phy-qcom-qmp-pcs-pcie-v6_30.h"
 #include "phy-qcom-qmp-pcs-v6_30.h"
 #include "phy-qcom-qmp-pcie-qhp.h"
+#include "phy-qcom-qmp-qserdes-com-v8.h"
+#include "phy-qcom-qmp-pcs-pcie-v8.h"
+#include "phy-qcom-qmp-qserdes-txrx-pcie-v8.h"
 
 #define PHY_INIT_COMPLETE_TIMEOUT		10000
 
@@ -100,6 +103,13 @@ static const unsigned int pciephy_v7_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_PCS_POWER_DOWN_CONTROL]	= QPHY_V7_PCS_POWER_DOWN_CONTROL,
 };
 
+static const unsigned int pciephy_v8_regs_layout[QPHY_LAYOUT_SIZE] = {
+	[QPHY_SW_RESET]                 = QPHY_V8_PCS_SW_RESET,
+	[QPHY_START_CTRL]               = QPHY_V8_PCS_START_CONTROL,
+	[QPHY_PCS_STATUS]               = QPHY_V8_PCS_PCS_STATUS1,
+	[QPHY_PCS_POWER_DOWN_CONTROL]   = QPHY_V8_PCS_POWER_DOWN_CONTROL,
+};
+
 static const struct qmp_phy_init_tbl msm8998_pcie_serdes_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V3_COM_BIAS_EN_CLKBUFLR_EN, 0x14),
 	QMP_PHY_INIT_CFG(QSERDES_V3_COM_CLK_SELECT, 0x30),
@@ -3061,6 +3071,149 @@ static const struct qmp_phy_init_tbl sar2130p_qmp_gen3x2_pcie_ep_pcs_misc_tbl[]
 	QMP_PHY_INIT_CFG(QPHY_PCIE_V6_PCS_PCIE_POWER_STATE_CONFIG4, 0x07),
 };
 
+static const struct qmp_phy_init_tbl kaanapali_qmp_gen3x2_pcie_serdes_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_SSC_STEP_SIZE1_MODE1, 0x93),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_SSC_STEP_SIZE2_MODE1, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_CP_CTRL_MODE1, 0x06),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_PLL_RCTRL_MODE1, 0x16),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_PLL_CCTRL_MODE1, 0x36),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_CORECLK_DIV_MODE1, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_LOCK_CMP1_MODE1, 0x0a),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_LOCK_CMP2_MODE1, 0x1a),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_DEC_START_MODE1, 0x34),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_DIV_FRAC_START1_MODE1, 0x55),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_DIV_FRAC_START2_MODE1, 0x55),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_DIV_FRAC_START3_MODE1, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_HSCLK_SEL_1, 0x01),
+
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_SSC_STEP_SIZE1_MODE0, 0xf8),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_SSC_STEP_SIZE2_MODE0, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_CP_CTRL_MODE0, 0x06),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_PLL_RCTRL_MODE0, 0x16),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_PLL_CCTRL_MODE0, 0x36),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_CORECLK_DIV_MODE0, 0x0a),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_LOCK_CMP1_MODE0, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_LOCK_CMP2_MODE0, 0x0d),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_DEC_START_MODE0, 0x41),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_DIV_FRAC_START1_MODE0, 0xab),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_DIV_FRAC_START2_MODE0, 0xaa),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_DIV_FRAC_START3_MODE0, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_HSCLK_HS_SWITCH_SEL_1, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_BG_TIMER, 0x0a),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_SSC_PER1, 0x62),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_SSC_PER2, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_BIAS_EN_CLKBUFLR_EN, 0x14),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_CLK_ENABLE1, 0x90),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_SYS_CLK_CTRL, 0x82),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_PLL_IVCO, 0x0f),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_SYSCLK_EN_SEL, 0x08),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_LOCK_CMP_EN, 0x46),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_LOCK_CMP_CFG, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_VCO_TUNE_MAP, 0x14),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_CLK_SELECT, 0x34),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_CORE_CLK_EN, 0xa0),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_CMN_CONFIG_1, 0x16),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_CMN_MISC_1, 0x88),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_CMN_MODE, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_VCO_DC_LEVEL_CTRL, 0x0f),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_PLL_SPARE_FOR_ECO, 0x02),
+};
+
+static const struct qmp_phy_init_tbl kaanapali_qmp_gen3x2_pcie_tx_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_TX_RES_CODE_LANE_OFFSET_TX, 0x1b),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_TX_RES_CODE_LANE_OFFSET_RX, 0x14),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_TX_LANE_MODE_1, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_TX_LANE_MODE_2, 0x40),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_TX_LANE_MODE_3, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_TX_TRAN_DRVR_EMP_EN, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_TX_TX_BAND0, 0x05),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_TX_TX_BAND1, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_TX_SEL_10B_8B, 0x07),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_TX_SEL_20B_10B, 0x1f),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_TX_PARRATE_REC_DETECT_IDLE_EN, 0x90),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_TX_TX_ADAPT_POST_THRESH1, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_TX_TX_ADAPT_POST_THRESH2, 0x0d),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_TX_EQ_RCF_CTRL_RATE3, 0x53),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_TX_EQ_RCF_CTRL_RATE4, 0x54),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_TX_PHPRE_CTRL, 0x20),
+};
+
+static const struct qmp_phy_init_tbl kaanapali_qmp_gen3x2_pcie_rx_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_UCDR_FO_GAIN_RATE4, 0x0b),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_UCDR_SO_GAIN_RATE3, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_UCDR_SO_GAIN_RATE4, 0x05),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_UCDR_PI_CONTROLS, 0x15),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_VGA_CAL_CNTRL1, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_VGA_CAL_MAN_VAL, 0x89),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_RX_EQU_ADAPTOR_CNTRL4, 0x2d),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_SIGDET_ENABLES, 0x1c),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_SIGDET_LVL, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_RXCLK_DIV2_CTRL, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_RX_BAND_CTRL0, 0x05),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_RX_TERM_BW_CTRL0, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_RX_TERM_BW_CTRL1, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_SVS_MODE_CTRL, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_UCDR_PI_CTRL1, 0x40),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_UCDR_PI_CTRL2, 0x42),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_UCDR_SB2_THRESH2_RATE3, 0x18),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_UCDR_SB2_GAIN1_RATE3, 0x12),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_UCDR_SB2_GAIN2_RATE3, 0x18),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_RX_MODE_RATE_0_1_B0, 0xc2),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_RX_MODE_RATE_0_1_B1, 0xc2),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_RX_MODE_RATE_0_1_B2, 0x18),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_RX_MODE_RATE_0_1_B4, 0x0f),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_RX_MODE_RATE_0_1_B7, 0x62),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_RX_MODE_RATE3_B0, 0xe4),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_RX_MODE_RATE3_B1, 0x63),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_RX_MODE_RATE3_B2, 0xd8),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_RX_MODE_RATE3_B3, 0x99),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_RX_MODE_RATE3_B4, 0x67),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_RX_MODE_RATE4_SA_B0, 0xa4),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_RX_MODE_RATE4_SA_B1, 0xa4),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_RX_MODE_RATE4_SA_B2, 0x28),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_RX_MODE_RATE4_SA_B3, 0x9f),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_RX_MODE_RATE4_SA_B4, 0x48),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_RX_MODE_RATE4_SA_B5, 0x24),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_Q_PI_INTRINSIC_BIAS_RATE32, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_Q_PI_INTRINSIC_BIAS_RATE4, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_EOM_MAX_ERR_LIMIT_LSB, 0xff),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_EOM_MAX_ERR_LIMIT_MSB, 0xff),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_AUXDATA_BIN_RATE23, 0x30),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_AUXDATA_BIN_RATE4, 0x03),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_VTHRESH_CAL_MAN_VAL_RATE3, 0x1f),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_VTHRESH_CAL_MAN_VAL_RATE4, 0x1f),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_GM_CAL, 0x0d),
+};
+
+static const struct qmp_phy_init_tbl kaanapali_qmp_gen3x2_pcie_pcs_tbl[] = {
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V8_PCS_G12S1_TXDEEMPH_M6DB, 0x17),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V8_PCS_G3S2_PRE_GAIN, 0x2e),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V8_PCS_RX_SIGDET_LVL, 0xcc),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V8_PCS_ELECIDLE_DLY_SEL, 0x40),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V8_PCS_PCS_TX_RX_CONFIG1, 0x04),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V8_PCS_PCS_TX_RX_CONFIG2, 0x02),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V8_PCS_EQ_CONFIG4, 0x00),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V8_PCS_EQ_CONFIG5, 0x22),
+};
+
+static const struct qmp_phy_init_tbl kaanapali_qmp_gen3x2_pcie_pcs_misc_tbl[] = {
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V8_PCS_TX_RX_CONFIG, 0xc0),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V8_PCS_POWER_STATE_CONFIG2, 0x1d),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V8_PCS_ENDPOINT_REFCLK_DRIVE, 0xc1),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V8_PCS_OSC_DTCT_ACTIONS, 0x00),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V8_PCS_EQ_CONFIG1, 0x16),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V8_PCS_G3_RXEQEVAL_TIME, 0x27),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V8_PCS_G4_RXEQEVAL_TIME, 0x27),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V8_PCS_G4_EQ_CONFIG5, 0x02),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V8_PCS_G4_PRE_GAIN, 0x2e),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V8_PCS_RX_MARGINING_CONFIG1, 0x03),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V8_PCS_RX_MARGINING_CONFIG3, 0x28),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V8_PCS_RX_MARGINING_CONFIG5, 0x0f),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V8_PCS_G3_FOM_EQ_CONFIG5, 0xf2),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V8_PCS_G4_FOM_EQ_CONFIG5, 0xf2),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V8_PCS_POWER_STATE_CONFIG6, 0x1f),
+};
+
 struct qmp_pcie_offsets {
 	u16 serdes;
 	u16 pcs;
@@ -3356,6 +3509,16 @@ static const struct qmp_pcie_offsets qmp_pcie_offsets_v6_30 = {
 	.ln_shrd	= 0x8000,
 };
 
+static const struct qmp_pcie_offsets qmp_pcie_offsets_v8_0 = {
+	.serdes		= 0x1000,
+	.pcs		= 0x1400,
+	.pcs_misc	= 0x1800,
+	.tx		= 0x0000,
+	.rx		= 0x0200,
+	.tx2		= 0x0800,
+	.rx2		= 0x0a00,
+};
+
 static const struct qmp_phy_cfg ipq8074_pciephy_cfg = {
 	.lanes			= 1,
 
@@ -4412,6 +4575,34 @@ static const struct qmp_phy_cfg qmp_v6_gen4x4_pciephy_cfg = {
 	.phy_status             = PHYSTATUS_4_20,
 };
 
+static const struct qmp_phy_cfg qmp_v8_gen3x2_pciephy_cfg = {
+	.lanes = 2,
+
+	.offsets		= &qmp_pcie_offsets_v8_0,
+
+	.tbls = {
+		.serdes			= kaanapali_qmp_gen3x2_pcie_serdes_tbl,
+		.serdes_num		= ARRAY_SIZE(kaanapali_qmp_gen3x2_pcie_serdes_tbl),
+		.tx			= kaanapali_qmp_gen3x2_pcie_tx_tbl,
+		.tx_num			= ARRAY_SIZE(kaanapali_qmp_gen3x2_pcie_tx_tbl),
+		.rx			= kaanapali_qmp_gen3x2_pcie_rx_tbl,
+		.rx_num			= ARRAY_SIZE(kaanapali_qmp_gen3x2_pcie_rx_tbl),
+		.pcs			= kaanapali_qmp_gen3x2_pcie_pcs_tbl,
+		.pcs_num		= ARRAY_SIZE(kaanapali_qmp_gen3x2_pcie_pcs_tbl),
+		.pcs_misc		= kaanapali_qmp_gen3x2_pcie_pcs_misc_tbl,
+		.pcs_misc_num		= ARRAY_SIZE(kaanapali_qmp_gen3x2_pcie_pcs_misc_tbl),
+	},
+
+	.reset_list		= sdm845_pciephy_reset_l,
+	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
+	.vreg_list		= qmp_phy_vreg_l,
+	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
+	.regs			= pciephy_v8_regs_layout,
+
+	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
+	.phy_status		= PHYSTATUS_4_20,
+};
+
 static void qmp_pcie_init_port_b(struct qmp_pcie *qmp, const struct qmp_phy_cfg_tbls *tbls)
 {
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
@@ -5177,6 +5368,9 @@ static const struct of_device_id qmp_pcie_of_match_table[] = {
 	}, {
 		.compatible = "qcom,ipq9574-qmp-gen3x2-pcie-phy",
 		.data = &ipq9574_gen3x2_pciephy_cfg,
+	}, {
+		.compatible = "qcom,kaanapali-qmp-gen3x2-pcie-phy",
+		.data = &qmp_v8_gen3x2_pciephy_cfg,
 	}, {
 		.compatible = "qcom,msm8998-qmp-pcie-phy",
 		.data = &msm8998_pciephy_cfg,

-- 
2.34.1


