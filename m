Return-Path: <devicetree+bounces-192945-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id ACA38AF890D
	for <lists+devicetree@lfdr.de>; Fri,  4 Jul 2025 09:18:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1B57B1C43189
	for <lists+devicetree@lfdr.de>; Fri,  4 Jul 2025 07:18:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A716727B4FC;
	Fri,  4 Jul 2025 07:17:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="SmXO1TgQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94EB227D773
	for <devicetree@vger.kernel.org>; Fri,  4 Jul 2025 07:17:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751613449; cv=none; b=nS0lDbPItMXFYxJ96LK2xONT1mQtZ6k0xtTXeEgqx4SliFZDrTZQr7MVAH/2uX8etJz36KBDa2HFIa7//kq9XcUPleTHBL+lGoAYrwvCOodycBKb10kWZoqarsDsFL97ThBRcr9CN3kBb8hxsHyhqydGvij2CbaEoNaS7P6AFAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751613449; c=relaxed/simple;
	bh=6MvXChn9H9cw/bMi6FXB2mO40dee5aW/+uTFO1/0HK0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ktrc/QJCXtWd5aLcv66k7jbcl5p3NVIf6Be8t4sIT2CRI6VW1Seovo3zQlO1BKb/guA8vu4FOllKyG0SN0vkZuy2BIF24SB2C5kJ8WtLJsXa2dXy0ai8RHPFsRv+pXPZxMZ6BGwDfmk94LQ5qnfLNUU42sLrWXfsuhuqrWSpjTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=SmXO1TgQ; arc=none smtp.client-ip=209.85.208.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-60c01f70092so926874a12.3
        for <devicetree@vger.kernel.org>; Fri, 04 Jul 2025 00:17:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1751613440; x=1752218240; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=z1sXB8vBl3/wRvxnvKTI5nzO+o6yvo13WXmmYW72+RA=;
        b=SmXO1TgQtPId6rdFBEMdXGSEQNnRudSGAXXdlo12PYCT4K1Ty6IMHyk8nzW8Ceahvy
         ji+QsZZ4cWw4MyOBt5ZM+65H4R8kEJZoXN5AiOs/UNSHtCd3PCK/NUM4YDsRJmO1VWDQ
         d7MtLIhlpgaZod8kTIBa+uzoDwauQ+rnIzQVa2UYeyzlyrPHl19VxQvVdcQTdgXsamkf
         CiybtYHJHWl6O64utIFJ7fIg2oZREU4bNRGzhRYNt6CRXSZZ6WZoZlJoIeqpm2MmGGJj
         qXdTq8gMlSBWiAcUyyOwb7bR0IjPNCR4JZTuXRyf5dCTFRLQKw5+K0WoKgipq47H2u1/
         TsPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751613440; x=1752218240;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=z1sXB8vBl3/wRvxnvKTI5nzO+o6yvo13WXmmYW72+RA=;
        b=ncxv0PB+HPWpaK8Vishf5lInIUKLzCYpejPByGjUKnOWHUfZ+TjKbEpwVp9LWfQxn2
         pm28E3FZnB8ePYKvSPmeKqviYkDad2x6F8c07tYmzSVE8E+scV1IMp5+LKuONJ00hprg
         n668Fgs6yDaeCXhWRKc/bOTSe2gHwH5VuaTyioYyZUa0R0/lBisoQ+UkX0imLs0+62Bw
         gm6CjJctYmhggxSG0xLJ4Iezluct4m5HvsmGuYgJYrSix3TB4DPs4wSWF5JYuRcNC1Wq
         y0f7/rxdN36homqCcZ2arHm65/d/AGbFiWdYMmaNH6u/NUt/g4nQ9gW/VAvEG71dg5B/
         tr1w==
X-Forwarded-Encrypted: i=1; AJvYcCUxiQYPHUHQLQMYSrAzn/HDJRhAi0hCkczmOrhZquFLW+xNnr2e4q5vetOEIWzW3WwwWljVVi9xfs8m@vger.kernel.org
X-Gm-Message-State: AOJu0YzlAIfvAxyOyzVC7H7VARBltSQk8khgYTiienXS5+UXCb7XR3j6
	HfQGacOZAEiHVtnW6xMyO4SJB+5uKL2rXDv2+bwOzgEb4VmnR5AjREhsoUuk0/JrCgE=
X-Gm-Gg: ASbGncszQ7fKEQTYDMEKz8U8fmEmeHiyOpkyFX4VlV0ps1gE+nI9muj31HIOWVFQ8Of
	dVZkT45STJ+6xUn3n1tsEpyQV+IDoqcBNFZ9W/QhDJW/gQQveEDdDL9Eo70WjNftEN8ArZuyHNj
	rxdI0HFcy4pabaeCk/S7fvYxuwrbdHebK9dHZVB2SemNFoLOUcy0xaC91m4CBdx5bhgA6GerStb
	/E0pno4jD45r/eSlWi2D5rLa8m2FXzq2Ony4/pWwm2N7RJwY1SsuxC61QyHthAW0q92xsyl1NrA
	2bOqb6pp9eEiuMsTkH1kyHqkgJ78TpjiEnIUVdat5HVKPjT7yTaXocznnxWLs+LMZdjZI6WDcpL
	A9wrWZ1Dnk7VjALfniJCNrEmPUgpWNjRr
X-Google-Smtp-Source: AGHT+IElGLpw/u7952nbwD/YHmIWG7YWO0q16mfXFREPrpS7P/6EixfLzQCLQjp2GkgXcZ69/84xZw==
X-Received: by 2002:a17:907:da4:b0:ae3:f3c1:a5dd with SMTP id a640c23a62f3a-ae3fbde9e6emr143426766b.61.1751613440012;
        Fri, 04 Jul 2025 00:17:20 -0700 (PDT)
Received: from otso.local (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae3f66d1ae3sm119401766b.7.2025.07.04.00.17.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Jul 2025 00:17:19 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 04 Jul 2025 09:17:00 +0200
Subject: [PATCH v2 08/11] dt-bindings: clock: qcom: document the Milos GPU
 Clock Controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250704-sm7635-clocks-v2-8-9e47a7c0d47f@fairphone.com>
References: <20250704-sm7635-clocks-v2-0-9e47a7c0d47f@fairphone.com>
In-Reply-To: <20250704-sm7635-clocks-v2-0-9e47a7c0d47f@fairphone.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1751613431; l=3341;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=6MvXChn9H9cw/bMi6FXB2mO40dee5aW/+uTFO1/0HK0=;
 b=/xAwuNTLRmHK6EPxC+GJ43TUvwHnah0RYfMF18VBovpLoRUZooLVsqyMQz+itbNVyv5Yvt8GT
 K6hEBHBvvsWDIeZvxaA/WDCktMvInLZQtKgJiphyVI2y9FX21VBYcJx
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Add bindings documentation for the Milos (e.g. SM7635) Graphics Clock
Controller.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 .../bindings/clock/qcom,sm8450-gpucc.yaml          |  2 +
 include/dt-bindings/clock/qcom,milos-gpucc.h       | 56 ++++++++++++++++++++++
 2 files changed, 58 insertions(+)

diff --git a/Documentation/devicetree/bindings/clock/qcom,sm8450-gpucc.yaml b/Documentation/devicetree/bindings/clock/qcom,sm8450-gpucc.yaml
index 02968632fb3af34d6b3983a6a24aa742db1d59b1..44380f6f81368339c2b264bde4d8ad9a23baca72 100644
--- a/Documentation/devicetree/bindings/clock/qcom,sm8450-gpucc.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,sm8450-gpucc.yaml
@@ -14,6 +14,7 @@ description: |
   domains on Qualcomm SoCs.
 
   See also::
+    include/dt-bindings/clock/qcom,milos-gpucc.h
     include/dt-bindings/clock/qcom,sar2130p-gpucc.h
     include/dt-bindings/clock/qcom,sm4450-gpucc.h
     include/dt-bindings/clock/qcom,sm8450-gpucc.h
@@ -25,6 +26,7 @@ description: |
 properties:
   compatible:
     enum:
+      - qcom,milos-gpucc
       - qcom,sar2130p-gpucc
       - qcom,sm4450-gpucc
       - qcom,sm8450-gpucc
diff --git a/include/dt-bindings/clock/qcom,milos-gpucc.h b/include/dt-bindings/clock/qcom,milos-gpucc.h
new file mode 100644
index 0000000000000000000000000000000000000000..6ff1925d409fcf3a0930bdb01f06b13218b0e3fe
--- /dev/null
+++ b/include/dt-bindings/clock/qcom,milos-gpucc.h
@@ -0,0 +1,56 @@
+/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
+/*
+ * Copyright (c) 2023, Qualcomm Innovation Center, Inc. All rights reserved.
+ * Copyright (c) 2025, Luca Weiss <luca.weiss@fairphone.com>
+ */
+
+#ifndef _DT_BINDINGS_CLK_QCOM_GPU_CC_MILOS_H
+#define _DT_BINDINGS_CLK_QCOM_GPU_CC_MILOS_H
+
+/* GPU_CC clocks */
+#define GPU_CC_PLL0						0
+#define GPU_CC_PLL0_OUT_EVEN					1
+#define GPU_CC_AHB_CLK						2
+#define GPU_CC_CB_CLK						3
+#define GPU_CC_CX_ACCU_SHIFT_CLK				4
+#define GPU_CC_CX_FF_CLK					5
+#define GPU_CC_CX_GMU_CLK					6
+#define GPU_CC_CXO_AON_CLK					7
+#define GPU_CC_CXO_CLK						8
+#define GPU_CC_DEMET_CLK					9
+#define GPU_CC_DEMET_DIV_CLK_SRC				10
+#define GPU_CC_DPM_CLK						11
+#define GPU_CC_FF_CLK_SRC					12
+#define GPU_CC_FREQ_MEASURE_CLK					13
+#define GPU_CC_GMU_CLK_SRC					14
+#define GPU_CC_GX_ACCU_SHIFT_CLK				15
+#define GPU_CC_GX_ACD_AHB_FF_CLK				16
+#define GPU_CC_GX_AHB_FF_CLK					17
+#define GPU_CC_GX_GMU_CLK					18
+#define GPU_CC_GX_RCG_AHB_FF_CLK				19
+#define GPU_CC_HLOS1_VOTE_GPU_SMMU_CLK				20
+#define GPU_CC_HUB_AON_CLK					21
+#define GPU_CC_HUB_CLK_SRC					22
+#define GPU_CC_HUB_CX_INT_CLK					23
+#define GPU_CC_HUB_DIV_CLK_SRC					24
+#define GPU_CC_MEMNOC_GFX_CLK					25
+#define GPU_CC_RSCC_HUB_AON_CLK					26
+#define GPU_CC_RSCC_XO_AON_CLK					27
+#define GPU_CC_SLEEP_CLK					28
+#define GPU_CC_XO_CLK_SRC					29
+#define GPU_CC_XO_DIV_CLK_SRC					30
+
+/* GPU_CC resets */
+#define GPU_CC_CB_BCR						0
+#define GPU_CC_CX_BCR						1
+#define GPU_CC_FAST_HUB_BCR					2
+#define GPU_CC_FF_BCR						3
+#define GPU_CC_GMU_BCR						4
+#define GPU_CC_GX_BCR						5
+#define GPU_CC_RBCPR_BCR					6
+#define GPU_CC_XO_BCR						7
+
+/* GPU_CC power domains */
+#define GPU_CC_CX_GDSC						0
+
+#endif

-- 
2.50.0


