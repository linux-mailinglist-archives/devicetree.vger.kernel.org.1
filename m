Return-Path: <devicetree+bounces-245806-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BFB9CB57D2
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 11:18:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A57BF301E9A9
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 10:17:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 86AD52FFF8E;
	Thu, 11 Dec 2025 10:17:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="oYw4TY0Y";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="V7eUUkIr"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 578EC2FFDEB
	for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 10:17:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765448262; cv=none; b=lk8v0Wu4OPgMjNNrwwc1rEFV5DDe63nMUBKLYuPnJ1bspojJ0oEcLB1QEsJP+KBw/lxfoY4sMZP51v4uLqm7XAQTxLEQ1ouyyiET9OYPupzTAFNVdRFp7r6yRr5DZq6Jc2qh+PBSUF/Q9ky5ARX0XzvooiWPJQjKxG5Zm5Sablo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765448262; c=relaxed/simple;
	bh=3+qYdEAvlOoBPmUdDBUu8x1Z3ZPwKgxBA6j/ziQo0Ro=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=i+6DCew9Zrl0ugiGlTPZ0PjL0Ly1Y3Qx8hc08ssHy4eWYEwchKnmaBYgOyOo6s2wRn99Mq6BT+gq6oa63YPYqR7DkK0IWAY+xeIc1SQPs89+TkFC6tgvVH7YFrp1Cw4MVAk4hfKZCNFjoYsFuKzC6CA6K76UdXAT+lBK6rC0kMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=oYw4TY0Y; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=V7eUUkIr; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BB9ZRrw1054822
	for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 10:17:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	2Kek/wxhWgT2Ns5tM8EW2AKp/4yPyuu9wZ1E3kn3Sak=; b=oYw4TY0Y2Fw7qSp3
	elmaW6ozxbNQkxi1TIJUiOw1gOuFme8jlPmUzf8rPKzljAerrfgTeGf1cIUNyIUc
	PLeSMrSQLkFeDGrWCraw99XXo18FNYGiDty8xphRPhROnVfeIJ6rixJdkSqE1R6W
	E8MmNo91vN1ykJQlneXUFryNekVgrXy+KQYnWxjNEFW66Aihot6s0btrQix7556v
	tdWCXVnxp9cCIHOaUzSf8L2i1CBTIz/LTkq8ImzsbX8pegroxASPdrqCjNmVkm+U
	tsqnqRfVmkvr2h550MGT1Jr5PlE24FCE0J7Fv3Oob6tUxa86Uoau5B8ppo0Q+nlo
	YkCsPg==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4aygsx2035-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 10:17:38 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ee0c1c57bcso25474451cf.2
        for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 02:17:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765448257; x=1766053057; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2Kek/wxhWgT2Ns5tM8EW2AKp/4yPyuu9wZ1E3kn3Sak=;
        b=V7eUUkIrQOiUbvS8P9otj5SKWHGmMT/B4QvV0KGyF1y30xecOujpGKIk8nK+blSQGr
         7TVqUjSXjgyLHdqgLhWNVx2Vj53eFdyCx6fTfWYyz2rmFQHBH8YeF04VDCWjIKnccPHF
         ihbcAr+ey28tFrabayXN3GpMVg14MFyWhM8bbqPzIaO1ZcoEEnJiDsYuE5dg8iuaALLs
         PxLyr+cqtcNVi03GH79smO4iQ34vTWZpJJ9LM42AVW/pPomnkhPn++0m6oIn+vPIf3pS
         kQiJGJvXMgqLeiXnSgQ3U9QzMhK7vToRieEuTirBstEGhdyV3ygIrWXAPkgc7jrWqaol
         Yqkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765448257; x=1766053057;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=2Kek/wxhWgT2Ns5tM8EW2AKp/4yPyuu9wZ1E3kn3Sak=;
        b=Y5TsofSS69gTvycuiKa8H/aVGbFlwSIY+2dn94FFEktYU0r82P3WIOSPTdM79TWzOI
         7N85QJmLBk4R19dREsg/z9IfLuPpZCUPI3pgecqesy4j0lOFlkev0KiIwYcisj+QQ4Zf
         thptvkX2m9xYQjg9HGCHSGB2zQt57r0jMg6uAjooYAmCoNp1speZgjkRxROXybtspipH
         h3zYt7GV/8MoveRepkN0RisGgQTc1wCMttoPc7o/CRsCYXkYsLc1swtP2tj232asHCpj
         CwQhJm/34hqW++F6U5xle5JHbQbcDJsbIFTlONxG9046se4B2SNYbygCNXWCVYpqibtB
         seBA==
X-Forwarded-Encrypted: i=1; AJvYcCX5F7L8p6pE5Oru8YW473lCDinO4RxQqd8m/4zzdcj38CJD0RKq8v5m5kTNhyTbzVFw63j/r41Y0cmZ@vger.kernel.org
X-Gm-Message-State: AOJu0YzvqtyITdlJgJkB/mh1VC5VP9zeyv+OetFrMtIkzK2j8+15gDHI
	F4Gbx8dSl8gM2jlPBqKlTLVNB8kpsiadZxO30bvbaR8yDD8BS2QO7ibiFbuYF+LXzooUK+4GoDp
	rVEDDvMbsRnO0+V4DT3DmYxX20WbkyBALGbMhdYVP6aYgNbx9GvQAPnKHBHFqCD+U
X-Gm-Gg: AY/fxX5WenGR1iNeG7GzjnC0pGSePJhX0AseKxTt3s7dALLik5x/VCQY/E0i+phnPQI
	1Xmkgur9hXVtl71w42QL7ZOlDR1ItuMGs+N0Phj1TH6Sz3dtgOTlXSKS2/sd4ptkse/y9u8iWMD
	pW4qBxH6m4N9IevsNJIBTpGG7tOx9x0JczACpeZRynBJrHnFNu2Lyf70MTyPEFFnVIC2WhhRl4c
	ah2KzAlibWB89/mA0il87E8UhhPIwCuJpMHm4ovCDiMQyWeqeoTKdEjTngtlwHsu6SNpbETsvDk
	uE2F6vWcT038C3dUkOkQckiXSW8soq0RCgvltnKFZqYQLRNDUdZ3RcNhwyXb8DShUpalK4C1eSg
	CcksJ0X4xSUsIznQ=
X-Received: by 2002:a05:622a:4d48:b0:4ee:1b36:b5c2 with SMTP id d75a77b69052e-4f1b1b8cf36mr80526461cf.68.1765448257165;
        Thu, 11 Dec 2025 02:17:37 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGQtveon1okQ329ExCBlmVJcHu6Xl1dha8Vjr9xGFwl9yLlNf8RoxdlDNNMk6bct2OLd0Pchg==
X-Received: by 2002:a05:622a:4d48:b0:4ee:1b36:b5c2 with SMTP id d75a77b69052e-4f1b1b8cf36mr80526031cf.68.1765448256648;
        Thu, 11 Dec 2025 02:17:36 -0800 (PST)
Received: from hackbox.lan ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b7cfa5191efsm225381766b.40.2025.12.11.02.17.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Dec 2025 02:17:36 -0800 (PST)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Date: Thu, 11 Dec 2025 12:17:24 +0200
Subject: [PATCH v6 3/4] phy: qcom-qmp: qserdes-com: Add v8 DP-specific
 qserdes register offsets
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251211-phy-qcom-edp-add-glymur-support-v6-3-5be5b32762b5@oss.qualcomm.com>
References: <20251211-phy-qcom-edp-add-glymur-support-v6-0-5be5b32762b5@oss.qualcomm.com>
In-Reply-To: <20251211-phy-qcom-edp-add-glymur-support-v6-0-5be5b32762b5@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: Dmitry Baryshkov <lumag@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Abel Vesa <abel.vesa@linaro.org>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-47773
X-Developer-Signature: v=1; a=openpgp-sha256; l=3129;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=UObXtePHY5dMQlAbJZdKc4jLD0I2BhVpyz2GDbDUvrM=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpOpo3LFq4YY58+rairy/2KCqcSw8fcGBT4K9ka
 3KTe/r60bqJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaTqaNwAKCRAbX0TJAJUV
 VnnCD/0eGcbJ3G4oVSmUseVCXZ/RpATCvWb+mCT9Rv644utbjLm/y3EIXBma+RCBC1wi1vb3JXI
 bMFZVIt6fhx0GorsPNpPC93ORC/fbSYGYsiwOeHZcrSZZC+sPFOXMIA6qJt7ZHbQrzvUJr9BZ3c
 5+Fcyje0EVPU/nwLVijrUXm7vDKZH7yGO6KBdqA7Qm4Oti1KWabzdvTaJT6nqFeM7rlQQS+wKEZ
 nVqNxECBs/5NYRNzcCOHKfxt+i9am+ao0UvXcjOVycOkRPHrqskbhunUDwfeM8gnbIU/pIQE74A
 fneUb12ggyDtUopua+fVhnk3d7fssI0zvTjPcuc61rSOOc4pOIIFv8HXHnYJMWzlLKd7ZDd5LIb
 VXhVb83pWTKsjZsN4T2WqyNDMwHEkbA7ikRQY27aBHvK6ISSocYyAgVVVnIJf+d/wFGh7mZvqPX
 qe126Henr0U9kvOWqNxllvCcJpr9DvD6VOFeQlVW6OmIr9JEjYSjiCX+QKRfyjQfqgKgboW52iI
 N/vE19dkpCB2xUQHZN//XyfKNzerwTfcnUvWI0WbAsxGWBXX165GV+Q+mn0ED+qJWCs4VCszKrF
 6mvmyjUnis8ch/JnV4QzCrMAOcAY7Pe2eYy7/fdGUVGwoT6svXgPu7hpOBq57C3Ft8PnXwTuNjd
 eZ91uriuufnLSSw==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Proofpoint-GUID: i71cPB0stS6iLyj6M1rV-SKIw4Mp1dYl
X-Authority-Analysis: v=2.4 cv=d974CBjE c=1 sm=1 tr=0 ts=693a9a42 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=DdBtMnqNxkYIvXj6ev4VzQ==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=ibtu9XGAwxROLk4EXI8A:9 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjExMDA3OCBTYWx0ZWRfX00MkpN640sC0
 tBYH+k4t1p7Okp+wtD0ExsxhthgVZEMKHYir5aOPlBJZN/uYQL5C0vT1qDctoj9keSJP/9HrfvO
 0w/RKxVOXzD06wX7CDaMcP1N224IwTSMyIW77gMtrV5maS5vPYWD8BAe8G/nZfIT13PSc60PJJ7
 aQFFWwEy++8+F9ApBp43RtdqfqgOtPgxQbDwHkckHNwL6Aejbq56idAtjLVx05Z/noLMtMNYyRC
 yCrQo9v5Y6jwGOI2hnFkOTkBzArhv/tE7a24LZiMvJoiAITbZOt4Ae2wAINjo/mSoS/TNnaUWug
 oVkkgooqYQXPPDq5dmgoFITRrtU1W5OkEdkY/nX1o3+h7l56E5KR4rHfud0RoDXSizJpuLa0kjg
 nmRRuiu5fBnYkX36BgshWZseCC00vw==
X-Proofpoint-ORIG-GUID: i71cPB0stS6iLyj6M1rV-SKIw4Mp1dYl
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-10_03,2025-12-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 impostorscore=0 spamscore=0 priorityscore=1501
 adultscore=0 lowpriorityscore=0 malwarescore=0 clxscore=1015 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512110078

From: Abel Vesa <abel.vesa@linaro.org>

Starting with Glymur, the PCIe and DP PHYs qserdes register offsets differ
for the same version number. So in order to be able to differentiate
between them, add these ones with DP prefix.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
 .../phy/qualcomm/phy-qcom-qmp-qserdes-dp-com-v8.h  | 52 ++++++++++++++++++++++
 1 file changed, 52 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-dp-com-v8.h b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-dp-com-v8.h
new file mode 100644
index 000000000000..93edabb830af
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-dp-com-v8.h
@@ -0,0 +1,52 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (C) 2025 Linaro Ltd.
+ */
+
+#ifndef QCOM_PHY_QMP_QSERDES_DP_COM_V8_H_
+#define QCOM_PHY_QMP_QSERDES_DP_COM_V8_H_
+
+/* Only for DP QMP V8 PHY - QSERDES COM registers */
+#define DP_QSERDES_V8_COM_HSCLK_SEL_1			0x03c
+#define DP_QSERDES_V8_COM_BIN_VCOCAL_CMP_CODE1_MODE0	0x058
+#define DP_QSERDES_V8_COM_BIN_VCOCAL_CMP_CODE2_MODE0	0x05c
+#define DP_QSERDES_V8_COM_SSC_STEP_SIZE1_MODE0		0x060
+#define DP_QSERDES_V8_COM_SSC_STEP_SIZE2_MODE0		0x064
+#define DP_QSERDES_V8_COM_CP_CTRL_MODE0			0x070
+#define DP_QSERDES_V8_COM_PLL_RCTRL_MODE0		0x074
+#define DP_QSERDES_V8_COM_PLL_CCTRL_MODE0		0x078
+#define DP_QSERDES_V8_COM_CORECLK_DIV_MODE0		0x07c
+#define DP_QSERDES_V8_COM_LOCK_CMP1_MODE0		0x080
+#define DP_QSERDES_V8_COM_LOCK_CMP2_MODE0		0x084
+#define DP_QSERDES_V8_COM_DEC_START_MODE0		0x088
+#define DP_QSERDES_V8_COM_DIV_FRAC_START1_MODE0		0x090
+#define DP_QSERDES_V8_COM_DIV_FRAC_START2_MODE0		0x094
+#define DP_QSERDES_V8_COM_DIV_FRAC_START3_MODE0		0x098
+#define DP_QSERDES_V8_COM_INTEGLOOP_GAIN0_MODE0		0x0a0
+#define DP_QSERDES_V8_COM_VCO_TUNE1_MODE0		0x0a8
+#define DP_QSERDES_V8_COM_INTEGLOOP_GAIN1_MODE0		0x0a4
+#define DP_QSERDES_V8_COM_VCO_TUNE2_MODE0		0x0ac
+#define DP_QSERDES_V8_COM_BG_TIMER			0x0bc
+#define DP_QSERDES_V8_COM_SSC_EN_CENTER			0x0c0
+#define DP_QSERDES_V8_COM_SSC_ADJ_PER1			0x0c4
+#define DP_QSERDES_V8_COM_SSC_PER1			0x0cc
+#define DP_QSERDES_V8_COM_SSC_PER2			0x0d0
+#define DP_QSERDES_V8_COM_BIAS_EN_CLKBUFLR_EN		0x0dc
+#define DP_QSERDES_V8_COM_CLK_ENABLE1			0x0e0
+#define DP_QSERDES_V8_COM_SYS_CLK_CTRL			0x0e4
+#define DP_QSERDES_V8_COM_SYSCLK_BUF_ENABLE		0x0e8
+#define DP_QSERDES_V8_COM_PLL_IVCO			0x0f4
+#define DP_QSERDES_V8_COM_SYSCLK_EN_SEL			0x110
+#define DP_QSERDES_V8_COM_RESETSM_CNTRL			0x118
+#define DP_QSERDES_V8_COM_LOCK_CMP_EN			0x120
+#define DP_QSERDES_V8_COM_VCO_TUNE_CTRL			0x13c
+#define DP_QSERDES_V8_COM_VCO_TUNE_MAP			0x140
+#define DP_QSERDES_V8_COM_CLK_SELECT			0x164
+#define DP_QSERDES_V8_COM_CORE_CLK_EN			0x170
+#define DP_QSERDES_V8_COM_CMN_CONFIG_1			0x174
+#define DP_QSERDES_V8_COM_SVS_MODE_CLK_SEL		0x180
+#define DP_QSERDES_V8_COM_CLK_FWD_CONFIG_1		0x2f4
+#define DP_QSERDES_V8_COM_CMN_STATUS			0x314
+#define DP_QSERDES_V8_COM_C_READY_STATUS		0x33c
+
+#endif

-- 
2.48.1


