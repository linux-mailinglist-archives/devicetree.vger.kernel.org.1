Return-Path: <devicetree+bounces-11574-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id BCB057D62F1
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 09:33:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id ED8501C20CB7
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 07:33:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 423E218626;
	Wed, 25 Oct 2023 07:33:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ZC3p6K9t"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79E9818053
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 07:33:01 +0000 (UTC)
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com [IPv6:2a00:1450:4864:20::233])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 914971FCA
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 00:32:53 -0700 (PDT)
Received: by mail-lj1-x233.google.com with SMTP id 38308e7fff4ca-2c503da4fd6so79175171fa.1
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 00:32:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698219171; x=1698823971; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eiRNgEPxJAmJoraHhnwenmBIXG4wtj0VsldV/xv1+vA=;
        b=ZC3p6K9tefuvoCMy2JH8UWn0IaKG+c+C4dwh3Opn67UjF7tcDztqkO4nuailLpgGZF
         WwJbWm/YBPNQE5i049mpxaDQlteXt5J7HFc2KLo1Ri+z75GGJMkrXhN5kh8oFyD01Ulg
         7jCjKFZZ7Pvx/B59gq0EtKlspIidIdejaGg85Pzi0Fo3DNSinueESxha3P5XMmNHwxI4
         TYjfi2j6TU4he/2pXnS61rNF+E7gtkZo7SVhVOtYM4islxvf40MdfmQSjoQYq8mQVieC
         BR2GzMMRrdQxBeuItamrqotDV3K2Mi/12XwXx8MKLJlu1TI2m2aGHXw6GmbqJBja/D5r
         i/uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698219171; x=1698823971;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eiRNgEPxJAmJoraHhnwenmBIXG4wtj0VsldV/xv1+vA=;
        b=q+8xmdGya1Pn+Bz5vmIw9wf/4Ljda5YMJeS5NPz80jj9UhazXQXIPPgMZyqZa4432I
         Z/N+ozz+wOl5qw5rFTdbLP4wlf3j4m3csfYUhvEH4u8kYljjT7mRyp3FJ575gCi+tWwf
         4KreoqSwobOBvf/D9YFESaoKolN5RZPnrSWWwihi1wZb8SFZ/t+T17vlgWl0EJ0dZ12H
         ttkvbev4byPmQGnkQ0TiaezAhfEU5/xdINWcHlEvttoheFYCehcaTtr50WAApKSjkr1L
         sfsMTu/CpACDgthFMyBVEB8PD9MwUW6M/72v1QIwwQ/g3RxK5xjtdXufcrRhff8dX4CU
         KTdg==
X-Gm-Message-State: AOJu0YwJ2X6kzhw6SclwofmtV5geJn9CO/XUnAUh5q7NSvyvTPtHg8nv
	6oiQCpYYmTnHQeBPz36R2Y4Rew==
X-Google-Smtp-Source: AGHT+IGzcLanhahv53YV+bro8JTOlBawINyfr7DobPd7zf4ELg6HasZCk6hkKfMs5gFfGgcMJsf/Kg==
X-Received: by 2002:a05:651c:1545:b0:2c5:5ab0:2e58 with SMTP id y5-20020a05651c154500b002c55ab02e58mr15300903ljp.1.1698219171412;
        Wed, 25 Oct 2023 00:32:51 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id v18-20020a05600c15d200b004063d8b43e7sm18422239wmf.48.2023.10.25.00.32.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Oct 2023 00:32:50 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Wed, 25 Oct 2023 09:32:41 +0200
Subject: [PATCH 04/10] dt-bindings: clock: qcom: document the SM8650 GPU
 Clock Controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231025-topic-sm8650-upstream-clocks-v1-4-c89b59594caf@linaro.org>
References: <20231025-topic-sm8650-upstream-clocks-v1-0-c89b59594caf@linaro.org>
In-Reply-To: <20231025-topic-sm8650-upstream-clocks-v1-0-c89b59594caf@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
 Taniya Das <quic_tdas@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=3562;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=ScNFnwb5srCiyE10UVgidhVGXgJVS/xG1ukEEAMMBG8=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlOMSamzHTCcMR9pWWTMfy9TT0FJM+dwl80Ajz0hXy
 Z8MG5r+JAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZTjEmgAKCRB33NvayMhJ0Ud8D/
 0VfmqhL/lp11GySFAgjPGbSnqjk7FyIONCHwacmvTjIDrqQglXQ8/gynVs5lcRZWuN0+CYexSpMTkK
 SdWuHxMkedM9TBy+m8vC2zns6H7S/cE+sdn5KBkLWUy7i8e1riL8SbwGDy/cNl1PtFNLVb8M7sm1wA
 MMz56/jTLg0bFyY8bUnB0U/5cOb8Zmebj7rGvMpVUPtTrI4HzUA1TBUowem5KnXAKJ2mILpKX2gmkX
 eFBfiTA+OYi6/g4Ce5ehKJZn0emILqSUQxvFfv7T0njaV4etXwW9r+iR/utCOfqJsbO4hUMsdyaRB+
 Pz+tKaOCjXNIVUw2PReUCSbt8VD481MrY9U70Bfvb45AkdcadpGi2Izz7HabFTh1pino/JZTA62fLa
 7lwPRC3blHe0djkxzcHtI38USlL1ne86HzkKoFZXTpZ8n0i/sh/aJo7/+xy4EO9sVoeBnv4emcce7b
 MOuFTt42uBbHThiC4JLO5IsPOu6PI/HxiDC99bpk76282D5uPwsIlq6YogyHCDRhxkoU883nu8IyZ3
 DHiVJfFbL+cyc7dIA8sp6SjFGPA55rNT7jN084ABgw+UWeF2i+GBtkh/+uhnPc12N7iYeVjbsEsZMB
 5XRWWrul5+643lSHQElPsfPquWCNdy3XHUGeQy19p7aDwSIiQ/VM1CvQVG6g==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Add bindings documentation for the SM8650 Graphics Clock Controller.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 .../bindings/clock/qcom,sm8450-gpucc.yaml          |  2 +
 include/dt-bindings/clock/qcom,sm8650-gpucc.h      | 43 ++++++++++++++++++++++
 include/dt-bindings/reset/qcom,sm8650-gpucc.h      | 20 ++++++++++
 3 files changed, 65 insertions(+)

diff --git a/Documentation/devicetree/bindings/clock/qcom,sm8450-gpucc.yaml b/Documentation/devicetree/bindings/clock/qcom,sm8450-gpucc.yaml
index 2320be920a5f..1a384e8532a5 100644
--- a/Documentation/devicetree/bindings/clock/qcom,sm8450-gpucc.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,sm8450-gpucc.yaml
@@ -17,12 +17,14 @@ description: |
     include/dt-bindings/clock/qcom,sm8450-gpucc.h
     include/dt-bindings/clock/qcom,sm8550-gpucc.h
     include/dt-bindings/reset/qcom,sm8450-gpucc.h
+    include/dt-bindings/reset/qcom,sm8650-gpucc.h
 
 properties:
   compatible:
     enum:
       - qcom,sm8450-gpucc
       - qcom,sm8550-gpucc
+      - qcom,sm8650-gpucc
 
   clocks:
     items:
diff --git a/include/dt-bindings/clock/qcom,sm8650-gpucc.h b/include/dt-bindings/clock/qcom,sm8650-gpucc.h
new file mode 100644
index 000000000000..103bb4487333
--- /dev/null
+++ b/include/dt-bindings/clock/qcom,sm8650-gpucc.h
@@ -0,0 +1,43 @@
+/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
+/*
+ * Copyright (c) 2021, The Linux Foundation. All rights reserved.
+ * Copyright (c) 2023, Linaro Limited
+ */
+
+#ifndef _DT_BINDINGS_CLK_QCOM_GPU_CC_SM8650_H
+#define _DT_BINDINGS_CLK_QCOM_GPU_CC_SM8650_H
+
+/* GPU_CC clocks */
+#define GPU_CC_AHB_CLK				0
+#define GPU_CC_CRC_AHB_CLK			1
+#define GPU_CC_CX_ACCU_SHIFT_CLK		2
+#define GPU_CC_CX_FF_CLK			3
+#define GPU_CC_CX_GMU_CLK			4
+#define GPU_CC_CXO_AON_CLK			5
+#define GPU_CC_CXO_CLK				6
+#define GPU_CC_DEMET_CLK			7
+#define GPU_CC_DPM_CLK				8
+#define GPU_CC_FF_CLK_SRC			9
+#define GPU_CC_FREQ_MEASURE_CLK			10
+#define GPU_CC_GMU_CLK_SRC			11
+#define GPU_CC_GX_ACCU_SHIFT_CLK		12
+#define GPU_CC_GX_FF_CLK			13
+#define GPU_CC_GX_GFX3D_CLK			14
+#define GPU_CC_GX_GFX3D_RDVM_CLK		15
+#define GPU_CC_GX_GMU_CLK			16
+#define GPU_CC_GX_VSENSE_CLK			17
+#define GPU_CC_HLOS1_VOTE_GPU_SMMU_CLK		18
+#define GPU_CC_HUB_AON_CLK			19
+#define GPU_CC_HUB_CLK_SRC			20
+#define GPU_CC_HUB_CX_INT_CLK			21
+#define GPU_CC_HUB_DIV_CLK_SRC			22
+#define GPU_CC_MEMNOC_GFX_CLK			23
+#define GPU_CC_PLL0				24
+#define GPU_CC_PLL1				25
+#define GPU_CC_SLEEP_CLK			26
+
+/* GDSCs */
+#define GPU_GX_GDSC				0
+#define GPU_CX_GDSC				1
+
+#endif
diff --git a/include/dt-bindings/reset/qcom,sm8650-gpucc.h b/include/dt-bindings/reset/qcom,sm8650-gpucc.h
new file mode 100644
index 000000000000..f021a6cccc66
--- /dev/null
+++ b/include/dt-bindings/reset/qcom,sm8650-gpucc.h
@@ -0,0 +1,20 @@
+/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
+/*
+ * Copyright (c) 2019, The Linux Foundation. All rights reserved.
+ * Copyright (c) 2023, Linaro Limited
+ */
+
+#ifndef _DT_BINDINGS_RESET_QCOM_GPU_CC_SM8650_H
+#define _DT_BINDINGS_RESET_QCOM_GPU_CC_SM8650_H
+
+#define GPUCC_GPU_CC_ACD_BCR			0
+#define GPUCC_GPU_CC_CX_BCR			1
+#define GPUCC_GPU_CC_FAST_HUB_BCR		2
+#define GPUCC_GPU_CC_FF_BCR			3
+#define GPUCC_GPU_CC_GFX3D_AON_BCR		4
+#define GPUCC_GPU_CC_GMU_BCR			5
+#define GPUCC_GPU_CC_GX_BCR			6
+#define GPUCC_GPU_CC_XO_BCR			7
+#define GPUCC_GPU_CC_GX_ACD_IROOT_BCR		8
+
+#endif

-- 
2.34.1


