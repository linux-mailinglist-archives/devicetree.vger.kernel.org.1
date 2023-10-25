Return-Path: <devicetree+bounces-11571-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 2316B7D62EF
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 09:33:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8D652B20E84
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 07:32:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8309B18621;
	Wed, 25 Oct 2023 07:32:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CSUwAfKr"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0564718053
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 07:32:53 +0000 (UTC)
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9FA321BDB
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 00:32:49 -0700 (PDT)
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-4083f61322fso42142285e9.1
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 00:32:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698219168; x=1698823968; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6l4cWBdcPbZTAfRHw3pU2ERvINKE0yr3t6weKjD3Srg=;
        b=CSUwAfKrlDQABRP7cWDJJ27js/SPAql/hC12ctoQsxWSNLyGU1OXSbTAhYspijrP07
         FVEP60KmwZUZC2BeMv6vLofZBn/KXKxXEYT3TTXO2D6Rp0GTuiZmF+XrnC0vL/0B5ZBh
         QvwPS2PzTycq3v15mKqHtgCucCV1HT8GJLLqqd76U+azNI6oX6V38J/LSGQcu/GP7sO4
         ddyVpBLRji5miD8hqDCwmAaAYUwBxZyeO7iLjumiqasMuzGDXgaH0UBvcI9WNBBhkOub
         AKS6AFMz7mjKqPdq57VRIc/S6c5uPfa6jvYOxC8bG5bSqW500fFLQx7RN6vRTLoExeOM
         NzWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698219168; x=1698823968;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6l4cWBdcPbZTAfRHw3pU2ERvINKE0yr3t6weKjD3Srg=;
        b=n4h1Yxi5XXs98QlxHnavl8NZ9r+qoG/ZBnlfWi9P8m3cik4PEKK1HxbCNBu+FnM+8z
         /BXJve3239Ymtj1Y5RiyN/y0jYgc5GNpp4AquXecuuOwgr5jzOo7iSgSd6+ZUZGJGhHH
         f4aOa/flB0LFBvPgKYzqlHsA+MYZ6njuhdF3TtQEIwsvPnIWcWsRcFnc43LxX8VbzzKg
         +S6XcxFs04N3Ll7dX1KKd53BcU1TX1DV74ogHNDnyhMhUkynCwi/JLuIi4MdPq86+JaH
         HiTAfwLO9+ch0aaHr6+C/wxMHwoWimSGMqLUj/iPyumjvfOMLu9tx+ecwuFOSBIlaNYd
         AbMQ==
X-Gm-Message-State: AOJu0YyFfVz5Zau3gvWDY0QKQJr9stSAUKQUkjVnkpB4Xu+S0zVz6ZFb
	M4x5tS/QLOvAoJJGSPfgARBkGQ==
X-Google-Smtp-Source: AGHT+IHmwRXTfpsLuzftV5Nne4bDs7JlyPncaX3W2PdOITzyjjX/n5N3qC91+vf04JCQmKmJzx6ggw==
X-Received: by 2002:a05:600c:198a:b0:406:3977:eccd with SMTP id t10-20020a05600c198a00b004063977eccdmr11429413wmq.33.1698219167757;
        Wed, 25 Oct 2023 00:32:47 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id v18-20020a05600c15d200b004063d8b43e7sm18422239wmf.48.2023.10.25.00.32.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Oct 2023 00:32:47 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Wed, 25 Oct 2023 09:32:38 +0200
Subject: [PATCH 01/10] dt-bindings: clock: qcom: document the SM8650 TCSR
 Clock Controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231025-topic-sm8650-upstream-clocks-v1-1-c89b59594caf@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2581;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=4oulQFHZuacCtJMXhES1JfIxAHu1G7t0INh3qkabvFI=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlOMSZIKt8ao6bO5yfeegf7Q8L0jXTLdnb3TRmKZM0
 34x0E1GJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZTjEmQAKCRB33NvayMhJ0WZUEA
 DPREA00g4diBpaosorER510w6lmBzyYZyNLHnk1udTlqhFYkfw27FG/4J5tbP7FonZ2tpKqYtl2lNX
 a4PC7RzuiUFklsAcXhuE5RT1gGzejSyg3tivUwlYTIZH9lBUwEy3F28Kbgm/H3YNAKZPAXb82Taflf
 hZMp42dTyKDYbtbqdtqIiQLM2YA4JlX46fB/QTzbP1ZOvjZLFrRzH1JVweE4ltdmCecdofDw12ywdC
 3ZlTrH6YN0f8O/Vu2QuJjOuH2CsGUxi/09KavGcY4CvUyiLrJnl4kppUfhzhP13eJsPb9nxgdVlLmC
 QR6J9G+wlcylp1vFZ6EyM4Zn0oOiLneeawkUup/IuUkd8qIT/uX1Yq3q5Xj3CcmzXMTIzgXvtRITYG
 ZKG5JDCv5c+dcDD1V0q8uRiWQX3pctP7ub6G9Ox3dYi5YdwWHqvKKR2Ikmum2VIRPS2iXjE5024aR9
 ynt2YpRr5MZUeJKWv5i88iKhvWGaZX29dcf1Qe2DJn43CuM8jjTWGZihqZZ5mYWYdbhPCyzKXcz/N2
 Ch3+hCY5t1v67xFrpdtDW2Sv/UFYHOHfUY4zZbS/KQMRbI51xbw1z4VNJcj4pNlZlg1AfoPBxQPJM3
 o+crXUsEcg6TP6zEPMq0k9iFhmPIV60+0pL5R5d5mkupVh1ai1ffLtqTXTFg==
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
index 000000000000..366ca48a89b1
--- /dev/null
+++ b/include/dt-bindings/clock/qcom,sm8650-tcsr.h
@@ -0,0 +1,18 @@
+/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
+/*
+ * Copyright (c) 2022, The Linux Foundation. All rights reserved.
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


