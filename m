Return-Path: <devicetree+bounces-227034-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id BED43BDDFE8
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 12:30:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id A293F4FE341
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 10:30:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4EC5A31E107;
	Wed, 15 Oct 2025 10:27:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="a624hECU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E500631D734
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 10:27:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760524076; cv=none; b=X/rAC43zr8n26KZ0IGF/DWonW37Xoz8o/2YvzisaNZ8y+lxNVY9pUjietyQ5XgkRdt4BhlV9QwkLZiGvqQT5YlLMSkhmX0s6DKVGDc7RL5fq0mjQ/Ptvv80I0gtlghD013isTVi9KX48Ffzpr/oXuRCpem1JxcgjJCEu7uOC5f4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760524076; c=relaxed/simple;
	bh=T9q1inJlwTfg/gPd7Q+2RMAg+x2qnIVhHI3ir28H+W8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=QL5hoOVdZ7tmYNvPjaWTkahUuExH9d4jMbZDR9Rg41A4W04nlqJgXV8cwowb2a6AUUeyC0sbbGvPgQLq9eLnS+fblZU4Jh8z2U5Oj1FWsWHtg3uLhxcqU7nYOHqoqLRQ73auon1WJ1Yzh9/JIl5OjHtXBK4k7il/7pmpzIwE1NA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=a624hECU; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59FA3wqt003995
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 10:27:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	yjl88K7Ikw8V3LFOUdPS89IWYvnp87gV7OPjhtKIs8w=; b=a624hECUukizheV0
	yWS64yVjp3Qbi171HjanD/LFFY5xBd3FG2lInQfvtNdzGsct0euWTf37RyzW2Xen
	9o96f9Z80lKThQ2KtASkZZ9Jrr+k90qNY9tI9yIJXQzS3+eh80Y2GeAG1g9GGe25
	/za7Za/W5xdQqcR9ZZNMinGQ9nuadUjp5RM+sV6DYqPRFm3QM8UkDZVD1ImhB2/+
	TpXzujdCyDsG4SJ455SW9OK4EGNP9d7f91whiP2UBO0Musq2IDVZdBImaYAAzW0T
	Jx3fAMiNGtnn9ciNLbUejSiVCIjRfAjsldF5RmL4XWwxPJEftZlr0SegBGjL3NOq
	kGSexA==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49s6mwpbky-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 10:27:52 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-3305c08d975so10094214a91.3
        for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 03:27:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760524072; x=1761128872;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yjl88K7Ikw8V3LFOUdPS89IWYvnp87gV7OPjhtKIs8w=;
        b=hkAYjPu2hz2eCL1BzQ3JrJ0LjlJzlp8S5WhF1+WV+e22GhkWBm5RglCuPwHfnj8Pl2
         AR04tA8cUNBJ7z082Ahgsxx+SBGPf2bzrw4acmVfQoH+4KWUnlvnbDrnwIlSRjwZz1C3
         16cIui+y0lBJi8iaixHfSSfRMrfLl9O1d2GHiOWi1fRf/q3hxAtEvSsxOYRQagfYP8A6
         OF4luxsT8SoRkh+HU7SOdbuznOYAQO6+F4vc83X/KYO7Jf/U3MoI6mQ3LRCW3k0vrErB
         TmjSDrIJL76Le08l09Q8iwcJB5QWiw5TrqCIT/XjGvhuPH50Jhyod+0Lr2wYp2XW2Vi6
         wcLw==
X-Forwarded-Encrypted: i=1; AJvYcCXoDHKJCpmLnBqamWrDBR2KxJCSTx1FI9ku5tHfgyqVAB4C6kY7vhbq9bzQ0Jt/R9Ywn7bsCvm8vjRf@vger.kernel.org
X-Gm-Message-State: AOJu0Yz9RgurflB50Reo4+iEz2NXz/MbWw86+eUlPPm0upH8T4UsoDGN
	Yha9pGW+RQkco82/otOrAGozXy17WSqoiiMshoHs8Y2ospXvLgRJTwKjHNJS6izyWxAkihOIU5d
	ar6rUqb5C9mGA5jlNPNOohgwK2xRColMnltit2MBB0dfpxLZXmaoO4KZmw2WBeOJ0
X-Gm-Gg: ASbGncucle0S1Wrr6E+b0SdcojGjx6CVYgncWLm1JG97bjyPCp2VH/8EuHaF3OWOcBe
	TOfuVDTD3S7y3Ijd1B6f77geko7Tr2dN3gY9tiVwXA/NvwAsGK2eSfApk0ukgYygm2X5dtopaF5
	U1E1khYNokceXJrcqnwVubMc36z2HYg6aX+l2U8PImP1cPcSd7d0E56IMR9DSXAFElzTilBghdR
	jXreQDz+JAiSq48zpsoXCYkSmTm1gPe90KI7YZZxhVXalLZorv+xGtuzXlhc51AuS1bii0fxN6b
	YR4eaLS3Nn9/sB5DkaTbhvSrUNjis10gCeCNYOfd7fXMoX4ZpcMBSWGjxTco+6LM0EB4L35mzXt
	23bgDeZGq//w=
X-Received: by 2002:a17:90b:4a8e:b0:32b:dfdb:b27f with SMTP id 98e67ed59e1d1-33b5138e27emr41660800a91.17.1760524072077;
        Wed, 15 Oct 2025 03:27:52 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFaGE1eV8QgDqYcCzex9aLZOSqQiClr6xGs4Bwkupbg1LRZsCr/YWo9gF4NMS13X3Tdo0Qtxg==
X-Received: by 2002:a17:90b:4a8e:b0:32b:dfdb:b27f with SMTP id 98e67ed59e1d1-33b5138e27emr41660764a91.17.1760524071592;
        Wed, 15 Oct 2025 03:27:51 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33b9787a1a7sm1993574a91.18.2025.10.15.03.27.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Oct 2025 03:27:50 -0700 (PDT)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Date: Wed, 15 Oct 2025 03:27:35 -0700
Subject: [PATCH v2 5/6] phy: qcom-qmp: qserdes-com: Add some more v8
 register offsets
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251015-kaanapali-pcie-upstream-v2-5-84fa7ea638a1@oss.qualcomm.com>
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
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1760524063; l=2673;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=T9q1inJlwTfg/gPd7Q+2RMAg+x2qnIVhHI3ir28H+W8=;
 b=FSVreUOSMjgVvSzHgFaVvIdo32swwpmWF4jW1euXOvwatbjnV0GCIi1uitQCmwF2gT3x25vM7
 XR46OrTTYHRDK7Ud0biRYxskMm+IH0SRkpkjL0y0oBbwBntxXSP++re
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDEzMDA4MyBTYWx0ZWRfX1z0LbtURUL6F
 tDDhHAXfV5dKM//jEhXSIhiJJjgbE/JO175yfS8pKCckhRwwGQJ8QVVzslSbbyUZc49GJlW59Mp
 01IScy4vu7JmOm0sjgMO1NpuDXvLK+3ox2w5SRtBuhT9znvDHvleOMFCSPPAeUZmqglsVMw/K6b
 uNQjmpi3GUTNpiAXSWM7SwvBSiVw+MoCUcVoRtfX9d7ZpaDw/EqmwWaP12oKU8XwvcWijNG4702
 oQwIZLDfD1Y19qGmFRSjpTrKIoRHvSmqes2/rCMNjtviwd2LkmpBjAMrnkzYmDSvZtdV6mofY0p
 JuyLfGg7ciWqeN7WEJd1ALPUdJmd0fKlm9KdKzhZuqgIWYc6+rCidKdgtWbWieOsdkvrC+eVPMI
 qtSC+R61UgBu0c5Dfmf5ac4INelTjQ==
X-Authority-Analysis: v=2.4 cv=Fr4IPmrq c=1 sm=1 tr=0 ts=68ef7729 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=GjIj-kmtzo1uPuhiLq4A:9 a=QEXdDO2ut3YA:10
 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-GUID: POuAWok2S5SCVlPs0HTGB10dJ_51RJxn
X-Proofpoint-ORIG-GUID: POuAWok2S5SCVlPs0HTGB10dJ_51RJxn
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-15_04,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 spamscore=0 phishscore=0 malwarescore=0
 adultscore=0 lowpriorityscore=0 bulkscore=0 suspectscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510130083

Some qserdes-com register offsets for the v8 PHY were previously omitted,
as they were not needed by earlier v8 PHY initialization sequences. Add
these missing v8 register offsets now required to support PCIe QMP PHY on
Kaanapali platform.

Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v8.h | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v8.h b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v8.h
index d3b2292257bc521cb66562a5b6bfae8dc8c92cc1..d8ac4c4a2c31615fa7edff2cd4aca86f4f77de66 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v8.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v8.h
@@ -33,6 +33,7 @@
 #define QSERDES_V8_COM_CP_CTRL_MODE0			0x070
 #define QSERDES_V8_COM_PLL_RCTRL_MODE0			0x074
 #define QSERDES_V8_COM_PLL_CCTRL_MODE0			0x078
+#define QSERDES_V8_COM_CORECLK_DIV_MODE0			0x07c
 #define QSERDES_V8_COM_LOCK_CMP1_MODE0			0x080
 #define QSERDES_V8_COM_LOCK_CMP2_MODE0			0x084
 #define QSERDES_V8_COM_DEC_START_MODE0			0x088
@@ -40,6 +41,7 @@
 #define QSERDES_V8_COM_DIV_FRAC_START1_MODE0		0x090
 #define QSERDES_V8_COM_DIV_FRAC_START2_MODE0		0x094
 #define QSERDES_V8_COM_DIV_FRAC_START3_MODE0		0x098
+#define QSERDES_V8_COM_HSCLK_HS_SWITCH_SEL_1		0x09c
 #define QSERDES_V8_COM_VCO_TUNE1_MODE0			0x0a8
 #define QSERDES_V8_COM_VCO_TUNE2_MODE0			0x0ac
 #define QSERDES_V8_COM_BG_TIMER				0x0bc
@@ -47,13 +49,22 @@
 #define QSERDES_V8_COM_SSC_PER1				0x0cc
 #define QSERDES_V8_COM_SSC_PER2				0x0d0
 #define QSERDES_V8_COM_BIAS_EN_CLKBUFLR_EN		0x0dc
+#define QSERDES_V8_COM_CLK_ENABLE1		0x0e0
+#define QSERDES_V8_COM_SYS_CLK_CTRL		0x0e4
+#define QSERDES_V8_COM_PLL_IVCO		0x0f4
 #define QSERDES_V8_COM_SYSCLK_BUF_ENABLE		0x0e8
 #define QSERDES_V8_COM_SYSCLK_EN_SEL			0x110
 #define QSERDES_V8_COM_RESETSM_CNTRL			0x118
+#define QSERDES_V8_COM_LOCK_CMP_EN			0x120
 #define QSERDES_V8_COM_LOCK_CMP_CFG			0x124
 #define QSERDES_V8_COM_VCO_TUNE_MAP			0x140
+#define QSERDES_V8_COM_CLK_SELECT			0x164
 #define QSERDES_V8_COM_CORE_CLK_EN			0x170
 #define QSERDES_V8_COM_CMN_CONFIG_1			0x174
+#define QSERDES_V8_COM_CMN_MISC_1			0x184
+#define QSERDES_V8_COM_CMN_MODE			0x188
+#define QSERDES_V8_COM_VCO_DC_LEVEL_CTRL			0x198
+#define QSERDES_V8_COM_PLL_SPARE_FOR_ECO			0x2b4
 #define QSERDES_V8_COM_AUTO_GAIN_ADJ_CTRL_1		0x1a4
 #define QSERDES_V8_COM_AUTO_GAIN_ADJ_CTRL_2		0x1a8
 #define QSERDES_V8_COM_AUTO_GAIN_ADJ_CTRL_3		0x1ac

-- 
2.34.1


