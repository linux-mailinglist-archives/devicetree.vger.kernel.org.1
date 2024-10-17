Return-Path: <devicetree+bounces-112539-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8038F9A2A00
	for <lists+devicetree@lfdr.de>; Thu, 17 Oct 2024 19:03:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0E9671F218DA
	for <lists+devicetree@lfdr.de>; Thu, 17 Oct 2024 17:03:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 908851EBA17;
	Thu, 17 Oct 2024 16:57:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PKF5lMTl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55A1D1E503C
	for <devicetree@vger.kernel.org>; Thu, 17 Oct 2024 16:57:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729184238; cv=none; b=Xsxb8xbU3qHzuuumwU+N3PGoZIIirxx3gtJ288vTcK4/FM1h8+PezkcjkcT8XBmV9WTyScwP43aY7RbF8W75DHNeEj6D2iqWSJlgHK10ESycVEReCSphmNLhQQa8/SMc/d2+ahrRo2ielMCA0RS4yq33oEadzPtF+RB6YYUR/qU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729184238; c=relaxed/simple;
	bh=q52kDtQWr3a6jRQ72chwsmsv4LweNlImHThaTs+tLJI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=kT2dh6fRB/r7VCq46pcEDhApuLdEH6gqen3aGN6Zu4xnPZ1etYGGRMOM0RaAMSuqO3NA+XhQz+WH6xKYd2phsGnZJvlImjt4h/nlslDTRpZI36nF1JWbyaevruMb/Lb3jLAlTZxW9dpzZYHlkA4vKLKajv+XVo3/H53MUqyIZAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PKF5lMTl; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-539e4b7409fso1254084e87.0
        for <devicetree@vger.kernel.org>; Thu, 17 Oct 2024 09:57:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729184233; x=1729789033; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rczbuPuSoXDjz392UZTjxNwGYgR4VrE5Q0rE5KegHkI=;
        b=PKF5lMTl82rjVPoj9cADJy7+KfBl9JLyE/+PYzjKJxTzqTKtUv2z8jj/U/zGDGc/JD
         yOcSfuXNlYnwP1KIhCqiyphuEugkUKsYg6UChemz602l/O87LwlZ7Znh/cgmA6gg/OX/
         I7pixTEC1N/X4BZW3+gZRuu91B5WHfpKz0cGT2Nr22Qj683BqNUd7ezS6ON3DWUBiU2D
         RZaKTFKOpcAgu4eFoj8Mro+LLIIm7uUbW4fXGRtrZJrP3wR2to2bq5sMAWaEs8AoeKiw
         fK56BGr15hQgsSH7ydJ6qZqJXi10q6uBIiEoAmJiJE0ktCCo6ZmXaHJMfO/01XrCfqJx
         EgGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729184233; x=1729789033;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rczbuPuSoXDjz392UZTjxNwGYgR4VrE5Q0rE5KegHkI=;
        b=iaU9HJ4c3FTtIQxcMIL+luEoRJn40zeDJ31l/R4ENjDWG4F/40Il7V0HoCojVSyeH2
         Is7sI2DmB371om6J749BKP6x2tdUE5EwPCEu4PsRqB5D2FG2ReEmXmUFC6bKrSDuUaUn
         IK5LiztR2s2m2fSiwIBziq9Zju/UaYylJ6DkxglegweLI/AH+MV97Mted1huGjHvvZG6
         iHY+dDcqaGL2QJR63qKXuX6dHSJ5irs59XLAEI2qpo3ccUhmitfBBHoez/ajBpf/lqUC
         mSXEwbM7zgFdoJuVJDsSMU/zwoji8XjghvqMcB87UeZpkazsqLbKv6ybtJB6ZfiL9gbh
         wTaQ==
X-Forwarded-Encrypted: i=1; AJvYcCWy5gU8wc/GvNtFp3D+axq0o8YMXUViMGU5xeW2q8w++TfSnZ74xuMu2bQJ7g40Uk+IYW3z0ByXYkdu@vger.kernel.org
X-Gm-Message-State: AOJu0YxV5Kj4p7e4vpj4HfQzLQP+hpq7YgkVQ5/TkbaZthubNDTjD8EK
	CY/Dpc/7TTpEdgFKWOpT2FrC5NjrolO3NMJScq+N9YAMtZuADBoa/gbziearp9E=
X-Google-Smtp-Source: AGHT+IGlJ9XzLBvkBB9F6/qWPn68fdptnNwEyOS+4ClqZhcTTfDFLHx0Pi9kvU4/9Enn7K9r2ZIhYw==
X-Received: by 2002:a05:6512:3184:b0:539:e873:6d4 with SMTP id 2adb3069b0e04-53a0c6ed010mr1447693e87.22.1729184233246;
        Thu, 17 Oct 2024 09:57:13 -0700 (PDT)
Received: from [127.0.1.1] (2001-14ba-a0c3-3a00-70b-e6fc-b322-6a1b.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:70b:e6fc:b322:6a1b])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53a00007078sm821563e87.212.2024.10.17.09.57.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Oct 2024 09:57:12 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 17 Oct 2024 19:56:55 +0300
Subject: [PATCH 05/14] dt-bindings: clk: qcom,sm8450-gpucc: add SAR2130P
 compatibles
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241017-sar2130p-clocks-v1-5-f75e740f0a8d@linaro.org>
References: <20241017-sar2130p-clocks-v1-0-f75e740f0a8d@linaro.org>
In-Reply-To: <20241017-sar2130p-clocks-v1-0-f75e740f0a8d@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Taniya Das <quic_tdas@quicinc.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Konrad Dybcio <konradybcio@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3312;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=bjde+ZFAcHmYisT3FSvyvenYq0Fi9l3ZckWkZSLl6og=;
 b=owEBbQKS/ZANAwAKARTbcu2+gGW4AcsmYgBnEUHaw7fLAuxDWFHCu0o0sN6Fj+roDvJrZzT7A
 qoXvi+92puJAjMEAAEKAB0WIQRdB85SOKWMgfgVe+4U23LtvoBluAUCZxFB2gAKCRAU23LtvoBl
 uPKID/9wsm8h7qHQY20sX9HFCyFnlUv7QziHb3TjV2Lx4SjsDnluqg8p5tifgold/4GgCVpDu0h
 dv2UZ+s0i0vCBxtcOw6w5LN6o56sN0P8DiY4YK13akvM3IjI4p+LW31FglafB444TdKLxaN1bPt
 cA5Av88qT+cgsPJwTGiBTFGCEjAQA3hAySEfh1iGLqr6BroSgLKH2gj9mUbmyhsxAUxf+IyQFfF
 F0MVpCcjjZPUWor1U7BIAV9INpZtfW9higlp9Ifd4KXspLWAGwvSu9c3RvFTpQEJfMt0tY/Q6ED
 MwWn2QwRKXpDZTDRbJELtvO2zEtZdRNge68gr4WSAFYW/AbUF5XfoOlaKqsuRkRxZSlD/LOsTI3
 1hi6pETpV4IKJfj4eijrKDCgVFvEezcGmdEfIsf6Y8awDZvJSH7M2qRFKr8WizMQv2fc00eze4Z
 PJgBBmKwv3DpVsJF6854GKnM+8yZrPbBUWwEm1iNAOi8VvsAkKvztgAjfju+OhWtNVUUQ2MIO7S
 mtb/QOe2kzOoCkYqkHlE85jNV/1RtoeKH76xG7vVdEIxI2pP95M6tuedqca8KeXP2/BrpcbrKSs
 +fHAb2TvQ1RaL6/rA2BKyTymjuHzZUPBBCvQSRx9TBVd+xjYd8SOdTXbMIupPnGWwLBuq2ycPnb
 ndv7zHobnPLxOTQ==
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

From: Konrad Dybcio <konradybcio@kernel.org>

Expand qcom,sm8450-gpucc bindings to include SAR2130P.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../bindings/clock/qcom,sm8450-gpucc.yaml          |  2 ++
 include/dt-bindings/clock/qcom,sar2130p-gpucc.h    | 33 ++++++++++++++++++++++
 include/dt-bindings/reset/qcom,sar2130p-gpucc.h    | 14 +++++++++
 3 files changed, 49 insertions(+)

diff --git a/Documentation/devicetree/bindings/clock/qcom,sm8450-gpucc.yaml b/Documentation/devicetree/bindings/clock/qcom,sm8450-gpucc.yaml
index b9d29e4f65ded538c0ac8caae5acb541c9f01f41..5c65f5ecf0f387f30ae70a8f2b25d292f6092133 100644
--- a/Documentation/devicetree/bindings/clock/qcom,sm8450-gpucc.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,sm8450-gpucc.yaml
@@ -14,6 +14,7 @@ description: |
   domains on Qualcomm SoCs.
 
   See also::
+    include/dt-bindings/clock/qcom,sar2130p-gpucc.h
     include/dt-bindings/clock/qcom,sm4450-gpucc.h
     include/dt-bindings/clock/qcom,sm8450-gpucc.h
     include/dt-bindings/clock/qcom,sm8550-gpucc.h
@@ -24,6 +25,7 @@ description: |
 properties:
   compatible:
     enum:
+      - qcom,sar2130p-gpucc
       - qcom,sm4450-gpucc
       - qcom,sm8450-gpucc
       - qcom,sm8475-gpucc
diff --git a/include/dt-bindings/clock/qcom,sar2130p-gpucc.h b/include/dt-bindings/clock/qcom,sar2130p-gpucc.h
new file mode 100644
index 0000000000000000000000000000000000000000..a2204369110a585394d175193dce8bf9f63439d2
--- /dev/null
+++ b/include/dt-bindings/clock/qcom,sar2130p-gpucc.h
@@ -0,0 +1,33 @@
+/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
+/*
+ * Copyright (c) 2022, Qualcomm Innovation Center, Inc. All rights reserved
+ * Copyright (c) 2024, Linaro Limited
+ */
+
+#ifndef _DT_BINDINGS_CLK_QCOM_GPU_CC_SAR2130P_H
+#define _DT_BINDINGS_CLK_QCOM_GPU_CC_SAR2130P_H
+
+/* GPU_CC clocks */
+#define GPU_CC_AHB_CLK				0
+#define GPU_CC_CRC_AHB_CLK			1
+#define GPU_CC_CX_FF_CLK			2
+#define GPU_CC_CX_GMU_CLK			3
+#define GPU_CC_CXO_AON_CLK			4
+#define GPU_CC_CXO_CLK				5
+#define GPU_CC_FF_CLK_SRC			6
+#define GPU_CC_GMU_CLK_SRC			7
+#define GPU_CC_GX_GMU_CLK			8
+#define GPU_CC_HLOS1_VOTE_GPU_SMMU_CLK		9
+#define GPU_CC_HUB_AON_CLK			10
+#define GPU_CC_HUB_CLK_SRC			11
+#define GPU_CC_HUB_CX_INT_CLK			12
+#define GPU_CC_MEMNOC_GFX_CLK			13
+#define GPU_CC_PLL0				14
+#define GPU_CC_PLL1				15
+#define GPU_CC_SLEEP_CLK			16
+
+/* GDSCs */
+#define GPU_GX_GDSC				0
+#define GPU_CX_GDSC				1
+
+#endif
diff --git a/include/dt-bindings/reset/qcom,sar2130p-gpucc.h b/include/dt-bindings/reset/qcom,sar2130p-gpucc.h
new file mode 100644
index 0000000000000000000000000000000000000000..99ba5f092e2a43fb7b7b2a9f78d9ac4ae0bfea18
--- /dev/null
+++ b/include/dt-bindings/reset/qcom,sar2130p-gpucc.h
@@ -0,0 +1,14 @@
+/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
+/*
+ * Copyright (c) 2019, The Linux Foundation. All rights reserved.
+ * Copyright (c) 2024, Linaro Limited
+ */
+
+#ifndef _DT_BINDINGS_RESET_QCOM_GPU_CC_SAR2130P_H
+#define _DT_BINDINGS_RESET_QCOM_GPU_CC_SAR2130P_H
+
+#define GPUCC_GPU_CC_GX_BCR			0
+#define GPUCC_GPU_CC_ACD_BCR			1
+#define GPUCC_GPU_CC_GX_ACD_IROOT_BCR		2
+
+#endif

-- 
2.39.5


