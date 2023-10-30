Return-Path: <devicetree+bounces-12790-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A4767DB6DF
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 10:58:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DBA3F281455
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 09:58:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 258EAFBEF;
	Mon, 30 Oct 2023 09:58:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="T6UXUKoq"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 962E4DF70
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 09:58:01 +0000 (UTC)
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 01F1E1BB
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 02:58:00 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-40859c466efso33356835e9.3
        for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 02:57:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698659878; x=1699264678; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yNd3AeGCVSnzQ1ftn/S6PEuI+M4h7WzEjrx2nNVNWbU=;
        b=T6UXUKoqfm1WGy1gEX3CtEO0yaP3aR5uUWvUte09AFAD/ky3Ydy7OQrzGrvM52JAbA
         WR/xY5y+3oMxlQke1Ox1t5abW/hS91maBnZIs5xbRSmXMmnaY8l6Z7ldebbrBklcobcO
         0QtH8FZ/AziDpVnBm7Sclyhy244drhAphV8Dx/VxvCK9dl9NY5LvmyBKROkWB6Ztt8HO
         Rh1a0xALtGBDNMKKd8LK9z7wxwxMgslhsXJC8N6xDl4NNA57KelPrq1a9/aarnYmKPTO
         mYqFVGXZBkYf2u+F4zVZcJYVFEUmMABh9zZHcM5IQhMZf8CPQnz/XVcMG8zjiZ2PwiPf
         vjsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698659878; x=1699264678;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yNd3AeGCVSnzQ1ftn/S6PEuI+M4h7WzEjrx2nNVNWbU=;
        b=jkUY4CcNFHZ9/Ecx28iifrMRHGLPNr1jb822Be4zGU8JZfNmaI7WyMHqcI5YGZVVWQ
         VBwhdY0UBJX9/GId9cp67wq7JQW2S+Y+BeMz2ycR8m8Zt/1M3CaBXGlGh++/oBA/6HVr
         gT3werM2VEtimUXUIxlI3bNp75bel8j1fcKYcfkM/9SvnH44f+A8+mTQvjR6D2o/kzjs
         uGYEOvO1btkuaj+8+KtCTgeAPTv4Df9ijmbb1Nm9orW9lkJH7pGdEWXCEHohN+QT8vm3
         hGKfqie9/21sgR9tPpDFvfs4xTHl0ERUyd4PgDHDz5O7Z8lvsj0J2Iy1q+RelIfubAX9
         M9Xw==
X-Gm-Message-State: AOJu0YxiHujz4s5SGHXIGlri0bE84IV3MpRNa3/pO385++YN1fOK4kIO
	x53G7ZFuGEyQcoSVmaoGSIJoXQ==
X-Google-Smtp-Source: AGHT+IGXPg3zAA3VV70oU3ZiTIdh4iAjBdPZnjIdoX75I3AvvzxgBZSCpISyddyrmYE5U3WK7OQN8g==
X-Received: by 2002:a05:600c:154e:b0:408:4083:fbf2 with SMTP id f14-20020a05600c154e00b004084083fbf2mr7501948wmg.22.1698659878437;
        Mon, 30 Oct 2023 02:57:58 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id a1-20020a05600c348100b00402ff8d6086sm8703714wmq.18.2023.10.30.02.57.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Oct 2023 02:57:58 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Mon, 30 Oct 2023 10:57:48 +0100
Subject: [PATCH v2 01/10] dt-bindings: clock: qcom: document the SM8650
 TCSR Clock Controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231030-topic-sm8650-upstream-clocks-v2-1-144333e086a2@linaro.org>
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
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2592;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=BUnCHwJkhLEZyj1jsY44VfOjTrmLZR5xp+ZtKIICQvk=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlP34gF1prqmwKVzv86eULJm9VmLkZlArIesxDCKmI
 JkD5ureJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZT9+IAAKCRB33NvayMhJ0cwsD/
 9u6CvEtl7cC+g0ZJ6vTG5uIIN9O+7Fg8Te6t22caqdxCk6WH0yhm2oFWR8dHf9hcyTOER+n9W1k4vH
 zR3KLsm45KteylXOzHQBDkBpOqwaPuh1DlvGaM8CdZ2HEE5Y5Ne783Oh+UbKj6YC4oPBCSU8MgrgiY
 Nm1H4e9cyM2gfTl+kwmNszVJe2vKAw+OR1P/srwk1VxzBysIXEdEpChsE6XA2JCoTV1yiv9V5BsxJl
 A/6nuyEAOU4JqLH18Jmsmcix4/G9DS65XczdJfyesZbnla/JVaX5owwzDie6N4xXnSI05gao0eompq
 VUqT3oX6qCSJBks0nOBAmMzL8ZqoJzUlZoNtu426jw1cu+6Loi3RPiZw+BofROu6bnVJXXovUga2os
 RsiE+c3XHleQPAO53bxuMozt+GaXEWxNkvFBwu3kPm8Bbbx75tNj8TF0e4Ly0UzPhyGGz4FFf+Xhfg
 F4RIahbxecb8/QXgNph1qANKYL5opcP1rnYdWrUFCkJLR1MY2ACdt00HFhEcIfuDUwdWcdud/1DGhw
 Y05s4mCSLAVdB0/4AyTD/HslyeMN9iN7Ty+73Hrfasm7M7ErlGBShnHVHOOy0+xhT61TVitQUrE7ex
 blcZFzL3FoFtVPxbkgDHXYHU3+cYy7dWC8pcO+XIZCNgJmxCTGUPvTzfOY+Q==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Add bindings documentation for the SM8650 TCSR Clock Controller.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 .../bindings/clock/qcom,sm8650-tcsr.yaml           | 55 ++++++++++++++++++++++
 include/dt-bindings/clock/qcom,sm8650-tcsr.h       | 18 +++++++
 2 files changed, 73 insertions(+)

diff --git a/Documentation/devicetree/bindings/clock/qcom,sm8650-tcsr.yaml b/Documentation/devicetree/bindings/clock/qcom,sm8650-tcsr.yaml
new file mode 100644
index 000000000000..1df8c29fc1a2
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/qcom,sm8650-tcsr.yaml
@@ -0,0 +1,55 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/qcom,sm8650-tcsr.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm TCSR Clock Controller on SM8650
+
+maintainers:
+  - Bjorn Andersson <andersson@kernel.org>
+
+description: |
+  Qualcomm TCSR clock control module provides the clocks, resets and
+  power domains on SM8650
+
+  See also:: include/dt-bindings/clock/qcom,sm8650-tcsr.h
+
+properties:
+  compatible:
+    items:
+      - const: qcom,sm8650-tcsr
+      - const: syscon
+
+  clocks:
+    items:
+      - description: TCXO pad clock
+
+  reg:
+    maxItems: 1
+
+  '#clock-cells':
+    const: 1
+
+  '#reset-cells':
+    const: 1
+
+required:
+  - compatible
+  - clocks
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/qcom,rpmh.h>
+
+    clock-controller@1fc0000 {
+      compatible = "qcom,sm8650-tcsr", "syscon";
+      reg = <0x1fc0000 0x30000>;
+      clocks = <&rpmhcc RPMH_CXO_CLK>;
+      #clock-cells = <1>;
+      #reset-cells = <1>;
+    };
+
+...
diff --git a/include/dt-bindings/clock/qcom,sm8650-tcsr.h b/include/dt-bindings/clock/qcom,sm8650-tcsr.h
new file mode 100644
index 000000000000..b2c72d492f1f
--- /dev/null
+++ b/include/dt-bindings/clock/qcom,sm8650-tcsr.h
@@ -0,0 +1,18 @@
+/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
+/*
+ * Copyright (c) 2022, Qualcomm Innovation Center, Inc. All rights reserved.
+ * Copyright (c) 2023, Linaro Limited
+ */
+
+#ifndef _DT_BINDINGS_CLK_QCOM_TCSR_CC_SM8650_H
+#define _DT_BINDINGS_CLK_QCOM_TCSR_CC_SM8650_H
+
+/* TCSR CC clocks */
+#define TCSR_PCIE_0_CLKREF_EN					0
+#define TCSR_PCIE_1_CLKREF_EN					1
+#define TCSR_UFS_CLKREF_EN					2
+#define TCSR_UFS_PAD_CLKREF_EN					3
+#define TCSR_USB2_CLKREF_EN					4
+#define TCSR_USB3_CLKREF_EN					5
+
+#endif

-- 
2.34.1


