Return-Path: <devicetree+bounces-12794-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id F1A507DB6E8
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 10:58:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 217191C20AA1
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 09:58:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61395F4FC;
	Mon, 30 Oct 2023 09:58:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nUbKXtWC"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6161AFC14
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 09:58:05 +0000 (UTC)
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 10433D59
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 02:58:03 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-40891d38e3fso32635745e9.1
        for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 02:58:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698659881; x=1699264681; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AbBzRUaTwh8GYrimgkmoqie/wQrKhCpEmGUkDVHjaeU=;
        b=nUbKXtWC6LCDgNsAqdAptOl9zcEpzMzgvuIHG1V4fWs4/tKelqBZUVfqyV13UdQry+
         G/D2cr60/oGxwvkPuVPhT9YB7svqtNSEPtH6ngwouTzBLAq0ZAmmDtdMkQoBps8eEVG3
         /9p7yy+6Qh/+hBzA4dXPYdFv3/BGSo9eKWvBgbPdqqR8436GrLO3VEoggliIN+zVUKG5
         0LotbN7T4iXNrQXze75m5ahdHNEEVQBukPwoHSGM7PCxQq40jHJE2UCwueBUB2LhQKKp
         ETJJISJLT3OU5vHEPL7N0H+T1YOiMe1vU2n3SjaG/nK0ptUt8OOAsdt75anO4+GM/+Xu
         Jv4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698659881; x=1699264681;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AbBzRUaTwh8GYrimgkmoqie/wQrKhCpEmGUkDVHjaeU=;
        b=OCqpDFxVbgYlvdgre28dXNYMHRFgDfBtUTYHAzFIIAQs2fSAcrBOp0lOAJpGR1e+H7
         bCxb2xBQMr6OCCrP4DwcQ59RB12jT/qlRq78LgSt6GaojacFHxLnEPFWz4+TGFuBPQgm
         m+mZ4fFw02LINRDK7x2/OCdbGPqqTxuCTZOFOzqczs8HBryK5mEASgIlhE91ddhCeH+E
         AmeWi15+FNjLPb6UPF5xM4O9F8G+is3WxYt/s+yQVFOfA8haM2MHennPLK6OklmYoefj
         euH4K/AAINxmdLD504G9I4sznBJywkeO5VFmi1s36QjLMeXLPKfGUdkZd8+4vFC/6WuI
         Aqvg==
X-Gm-Message-State: AOJu0YwGRFkSGWFmYoDTlQ1IJWWFtqWSij9VnavscpOkdZij3W+Dex+g
	ONXO5Nm+ERIC7lRbTaTVuh7f6g==
X-Google-Smtp-Source: AGHT+IHDdKHDNF0vJGf/0R6rO4AOZCWLvXorgj+pNNHSNcA08fg2SVlOHmEszrJaZweEN1/VzRpXwg==
X-Received: by 2002:a05:600c:310d:b0:408:3975:e225 with SMTP id g13-20020a05600c310d00b004083975e225mr7504966wmo.40.1698659881512;
        Mon, 30 Oct 2023 02:58:01 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id a1-20020a05600c348100b00402ff8d6086sm8703714wmq.18.2023.10.30.02.58.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Oct 2023 02:58:01 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Mon, 30 Oct 2023 10:57:51 +0100
Subject: [PATCH v2 04/10] dt-bindings: clock: qcom: document the SM8650 GPU
 Clock Controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231030-topic-sm8650-upstream-clocks-v2-4-144333e086a2@linaro.org>
References: <20231030-topic-sm8650-upstream-clocks-v2-0-144333e086a2@linaro.org>
In-Reply-To: <20231030-topic-sm8650-upstream-clocks-v2-0-144333e086a2@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
 Taniya Das <quic_tdas@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=3616;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=oSQB58i2ln7hRAzKAnc8rjnQqsl/3Rv9AGTvOhboBWg=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlP34hOFKQ0TQGuQLjwBPPNI0fajes1KpwnwJU8Ob+
 AKIv13iJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZT9+IQAKCRB33NvayMhJ0VIuEA
 CwIBoF5b71hosh4PuSWnXVKn509BslSsav9ZzXt98+xpwuhHw2HCJLQGKW2Ol4ELwzrVBP5hCtlOvE
 Ao3kC7Dg1KnlZtyOAh7RRX9sruMQ1IdBdIVNpnsQMa25U+UQ6/H3nyHc94Z+5rtnfSpFq3esWUP55A
 3XQVIZY/SXo7T3eZj36Llp8b4MZ7EPQSXdW6yL8IYpIGMhFFFCvR+c2MweVC28JSz3FlK4Q+4SQ0/E
 bDIFXWg7Wkvb30TGGs0cS1W47hx7QPWsnKjWypDjO7jP6auJwiq5beBs7SgICLAUIgKriIUCe7C662
 Zkwxz6i4VcfyHOvDM01Ho8NHvpWAwRDnWjV+jUZWLOQxAaMpfOKipGCALcG2FX8yXZkk/Meg05MLGa
 R+dE5dzoRh+3cwNQuML1X13KcHF10SzaHbl2+xviytKpViJLxi9haSbg5Ukp5ryxewPxTdgxhBVkZa
 fYP6l/8vCJDUxhqKwM0TSoBiqR37o9waZrW41QNj3xfnbWW/L4J4AqRf3CNGzzoYmJI56rEhfBbIHA
 uGrI+mjH2eXOaKDBjlM8qLiQrAlAXOyA6UnddajiS4/Xoz7P3De46nRt3gMFEhCczSdLUIEFDO9hIN
 YUeXBo1u0gJtbl4FdpaOPbwyA1EtTTTwPrJ1zeJwIYj3BQGexBW5Uc0KXaTQ==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Add bindings documentation for the SM8650 Graphics Clock Controller.

Reviewed-by: Rob Herring <robh@kernel.org>
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
index 000000000000..d0dc457cfe75
--- /dev/null
+++ b/include/dt-bindings/clock/qcom,sm8650-gpucc.h
@@ -0,0 +1,43 @@
+/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
+/*
+ * Copyright (c) 2022, Qualcomm Innovation Center, Inc. All rights reserved
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


