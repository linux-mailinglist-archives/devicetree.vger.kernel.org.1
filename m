Return-Path: <devicetree+bounces-241563-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 16B55C7FDD5
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 11:26:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 73FCA344BB4
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 10:26:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE2322F90DC;
	Mon, 24 Nov 2025 10:26:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pLE7c1F6";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="IgdEAFi1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C7BB271451
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 10:26:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763979961; cv=none; b=bu9xnB649328hbQAJpDHU7dBl5C9SZ/AcMZDTAEH69vkM52ImDSI99AVcjXiNIVIgD2fLWRkc1T9HvrhCTL2NhSaGuUmCB1L/GsXxJ5J1G4dX1PW0/CPpHtCWjinPSy15AejZzGxCfeh9QHRjYQxG/hBTG0BKmepKr2hHGTRcOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763979961; c=relaxed/simple;
	bh=DMyrxN6zxkwuIu9tcvyVruPaU8b9DSq9n3Sg3itKewQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=MI04Th30foFmAESK6cKeyihn14oM6V1PzLkk9FvZH9s6pJ4yxbU1u4/JjpO42yjUZsGHUF1JVX7h9hWGQYxqAT4QXlcSuyGqmvXtgmJYgxYYnEu5EM/DHCtoWG78aCzL/5/PbIJhpAdbK8xaGDop0Kbqtj57XBkrwchxjs2rwpI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pLE7c1F6; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=IgdEAFi1; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AO8agHN2492961
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 10:25:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	b/hMwykfqDmJcojkU+Aegd5sgEW6VKZtTzabtZT75W8=; b=pLE7c1F62ZCsCAPD
	e4ZhxKU3A92fvQkDQjrrITxIfM7qawUWye2m7Mh6sLlnrRvOJR2nQHpi7es8OSKf
	aKkJj6vXNu3jXTnEHHI8Y3gVZ9VrCMwXLgR1tU26OXA1++A9kAz8rMDw+SLmx7tl
	CKW8VdSeXwfOuKN4PvkiIJW1twb2vkwDXGczdD0B/66B0WckHZw7FzISkCkyteGd
	mznoqWSjJMkQ5PhjMtYI8XSD1EczEwDRCh4RlnvF5W3Smgbe9Km61P+YLRB2B2fz
	mX9mFTf3zu6tWnuVbvHoeTQocoxp57w1uq0Miex0jKQDC4HzQUnGxIeJkBeAy9BL
	HlAWyA==
Received: from mail-dl1-f70.google.com (mail-dl1-f70.google.com [74.125.82.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ak694vm9n-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 10:25:59 +0000 (GMT)
Received: by mail-dl1-f70.google.com with SMTP id a92af1059eb24-11b21dfe94dso5110856c88.0
        for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 02:25:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763979959; x=1764584759; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=b/hMwykfqDmJcojkU+Aegd5sgEW6VKZtTzabtZT75W8=;
        b=IgdEAFi1tDbhWqSNuZifZVSXLllpOduF+aAwKu001G7oiYFLVCQBiAnJ595VR6q4gX
         7Nzofv0hL3jALc4HcaDjLQ7oYvTU0XXRnKiB96UU7FaYyZym5bTOv2iZtPpavb/AH/ap
         tKNJk8Xfz+qqzTwrpbjcjQRaNMYW7GppvhXsC93A1oZyLP4Q8dTSAfqWxwCViS2Iv5DH
         ZqoGK4tkb0ZkmOAgxs5/QiKI1PtHo2ocNDSknqxfkrQ3t0to9GLiz3QTpuZXgn3S8th+
         tcN8ug7xZVzU4+XvbDY/aQEDEl7OUzts18nhz7td+7CKhXyCCs3kyQjSS1xJKXBOzXTR
         U31Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763979959; x=1764584759;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=b/hMwykfqDmJcojkU+Aegd5sgEW6VKZtTzabtZT75W8=;
        b=uaOgeeY39QMDiHI+EyJFU8m9jSnJMrdl0n8SNsrwLCa5S5VUgMXY+5V6gZdNSfDVjm
         l4UX5gnmjpLG+BE3OzEDHXftpZf10U8SWUnF0oTdKINdREKOptLdkXFoH+b9lF+2P0wy
         /FvWHz/A+rt1pFP+iwCfHivK6rPP3K6390uhv2kPEoPY7wfPiEgWSoSe7uSBk2Fk0yvF
         EC+Xv7CGfRokqCRuvYlTMB3eExJHCvv90aVLvc+BVtLVs0kk9L2sUEHE66Ht91mEjgqS
         uPOy+bzBO7bO12ZFQ/Gi/asd6b45xRObPzv95BaLqdkuU6e5uo6/sYCbLq1kZrph4CRs
         1J/A==
X-Forwarded-Encrypted: i=1; AJvYcCUjZ9UIWju2A3JV7/go4vMeX4Mj6U1TtPtwE6ktBMwFpZqQq3UsA8f9rGHDhycQ8zWqyoJLEsfx902z@vger.kernel.org
X-Gm-Message-State: AOJu0Yw8G98oqMx6+iB5ftB0YXpVkPqmB4oN6pP9epW6Kr4SYZrh5XrE
	wo9jKE8jxvaE0rACS21NMQqGgoFnjJZkSXQz4ztVcDj6N6Ie/P+6eyzfIHcECmssFQx6vEUuRAf
	fYy9o8igHE2Y811kvtQapX19LvacBK6V893fMMqCW+steARn81QZHnTAZAsAwjkR5
X-Gm-Gg: ASbGncuClKU23riRfGUkk9PY1okj1//sa5TOYKK8qF+nAOKvLTOdvltLDPsMGnO5xLR
	L7BHmVMJRHiHTJkGKVKEczNcxbxZ7+K0ucZ/MJy6HT6CP1Bapk5KyMoZSX6TOOp8vEo6WHisRR5
	/78HnpVQ6OYgDgU0JMpnZ1sxPuiYjqq3SndYEhhyWHDFilIfehrif/dk0h032I+Zfkv/JbqwyRk
	l3D+/46EV2gRVJi0etphFgve9+ckw7GGPF7YeTuM0Nx9nzW8Sh+feo2bZVtzBfFotovMa7MDmJS
	JfvxZhN4JQqx/C+fCZk6QxOdW70X/P5SEEIQSYm6xxnRE7q3FTYiaFpiofUET1JFiQwZDYCZumU
	t42dBJoXIMkVMkrJ8A8lz6q38JxNjFzxnirN46TGPkuCfABQPSmSlqdbC
X-Received: by 2002:a05:7022:258e:b0:119:e569:f86a with SMTP id a92af1059eb24-11c9c955bbdmr7216054c88.7.1763979958656;
        Mon, 24 Nov 2025 02:25:58 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGthYjAqXFcNn0P/z5iQGkCaVdROeTMnrGrxpMt+PRoQV9VJGpe0ff5LdZwq7kFCm8f9nw4Gw==
X-Received: by 2002:a05:7022:258e:b0:119:e569:f86a with SMTP id a92af1059eb24-11c9c955bbdmr7216019c88.7.1763979958054;
        Mon, 24 Nov 2025 02:25:58 -0800 (PST)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-11c93de6d5csm46140627c88.4.2025.11.24.02.25.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Nov 2025 02:25:57 -0800 (PST)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Date: Mon, 24 Nov 2025 02:24:35 -0800
Subject: [PATCH v4 2/5] phy: qcom-qmp: qserdes-txrx: Add complete QMP PCIe
 PHY v8 register offsets
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251124-kaanapali-pcie-phy-v4-2-d04ee9cca83b@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763979955; l=4559;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=DMyrxN6zxkwuIu9tcvyVruPaU8b9DSq9n3Sg3itKewQ=;
 b=mHFHkNX7CUJhZUqILTQw76QAOoXGlU7bjT03UK9sM2hmMi/tKWxA/8QDBgZxPnYlYajw0Kyt1
 P51urhadpmIBJkgcdYJguq4mpy0h8uVZovdEV1usQ3FwXW0IjddX66k
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI0MDA5MiBTYWx0ZWRfXwBgQC/GYFApp
 LAxsSy/NLSixLSwiQQN1LUT5yAXK1fS94SYQ1tj/3lPzf4vHdEeYtVczu8m6HdZqlY2nFclVvEe
 +85b7B1ex4EunVsEsCyZLGtXDqfbtiQt5kb9lTEBwNorCaqkVbcA6oS/RbWFdKsUvg0qUn7cKx3
 Z8jAWv/Sn3YoENWQHirvSnF9YFnjsFTqkAQTtvSTgPc31a0p2ogm8LLRvimOK+FX0AhCE5Sso4p
 rwoJ9mPKXCTFs71yjU3+LbWU9RGIcBnW6nljH1IpqV6hxdCJX60uNDsk4PF6ocRNk5nnDynYeTJ
 XyPtXQu833KQFC/Re3luwMaJq81nkcx991JxYPkW0pmQiyWTRnpG3LBXj9V6SSjXGKyAit5ILnr
 1dH7lZyms9t5pZuR6voGyeTkK4bnbQ==
X-Authority-Analysis: v=2.4 cv=YJqSCBGx c=1 sm=1 tr=0 ts=692432b7 cx=c_pps
 a=SvEPeNj+VMjHSW//kvnxuw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8
 a=AMX_CUzcla2ZGstc20cA:9 a=QEXdDO2ut3YA:10 a=Kq8ClHjjuc5pcCNDwlU0:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: b-KozTPljGX0bn7micUZ2HC7JvbQ6eJZ
X-Proofpoint-ORIG-GUID: b-KozTPljGX0bn7micUZ2HC7JvbQ6eJZ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-24_04,2025-11-21_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 bulkscore=0 suspectscore=0 phishscore=0 clxscore=1015
 lowpriorityscore=0 malwarescore=0 impostorscore=0 spamscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511240092

Kaanapali SoC uses QMP PHY with version v8 for PCIe Gen3 x2, but requires
a completely unique qserdes-txrx register offsets compared to existing v8
offsets.

Hence, add a dedicated header file containing the FULL SET of qserdes-txrx
register definitions required for Kaanapali's PCIe PHY operation.

Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
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


