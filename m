Return-Path: <devicetree+bounces-42768-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 61A798586DD
	for <lists+devicetree@lfdr.de>; Fri, 16 Feb 2024 21:34:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CCD5BB22C28
	for <lists+devicetree@lfdr.de>; Fri, 16 Feb 2024 20:34:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C1CB1487E8;
	Fri, 16 Feb 2024 20:33:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="RopNAYmB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F52D1419BF
	for <devicetree@vger.kernel.org>; Fri, 16 Feb 2024 20:33:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708115599; cv=none; b=nbvT3SKNrU/TE797NIbRytveo+jFqTg3bJVz4y2GGO1SBwF6VW2l25UB53x53j8Muf8RyRu0eIv15A0S+b4rCemdX5W71/JvgoKaJrYgw4jte+BFYdxtvuqA1vhUw/9l5eGVpCMvSNtLmF3mNG2+U1l53F0Kca32/HlWqG1+cJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708115599; c=relaxed/simple;
	bh=7siulsM+YIxL/zjVU9vKxvQTmEA2EKQzsqGyT9XfH/0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=ne5+fLlSIZEGd93j8sA1MC0Xtm7O6NcPsrESKRtX2YPrXsfZJQkdi82zFkLLJ/yOtkul6vC1Fk+hlUBjDVhAi1MhZ64gg2Wat2aU80Cz13FpgDq7ZCfEmqlsEvfMzWTT7PRt0S8C7i5yVXhu9qMdDgAhS3zusZBAqEEDMrAhi1M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=RopNAYmB; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-412191ed8aaso16369085e9.2
        for <devicetree@vger.kernel.org>; Fri, 16 Feb 2024 12:33:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1708115595; x=1708720395; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aLo65DzlI0Pw6qQCEKnNFvuFSJmqXUdVDuf68OGs0ug=;
        b=RopNAYmBLzbU0E8FWuUlqcWP+GlVGJt0id3KbTdr5k9HaYH+UzwCoQfr0p1eAnfS2Y
         q9/ws62XvkUz89rZck2b2fw5t1uyn2WBFJ0Hf0MSsaobdw3m0k98z5FaG6tknDpRE1wY
         K10/03ea4vPXLOYm9561Jquaq6kOLSduihRk/P7VN3fTPQ2bRogDP18BW0prc0klPtpq
         pmfSKOsmTYGK5j5OcMDiHCLtyrqrGp0RWIq+4Z31VISMBcoQGOACQFLvBO9fQ0FkjX3o
         Av22SeTujKCnxSC2kmjHEWJqUp1JlrSdt0MPnMF/ljI3K+m/uUNTjTefCWM4yYs187Oi
         r8tQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708115595; x=1708720395;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aLo65DzlI0Pw6qQCEKnNFvuFSJmqXUdVDuf68OGs0ug=;
        b=jZNlO5nQYKHBCLCZDSLDwpDVgrumza/AWQz1AU75Vn4u6ncgSAqfwly6aQvJofm/WX
         DT9tUa+zmHTWd4jNyoYOzk39n+a5eDiv7L7+pVmM0P8N9ZFMFCf4jMrxTmy2dW9cAYPq
         LWsE5vvCw8PAa0eNcD+SIZ5T6DPOL1CqriNNCA+CGlLVlXQePTFMaskuNO3W9czw+q0n
         V1/WIWW428AfJoFsY2/3e4YFmEUektvQ+1em4ve7JmAferUAIzgAmQp5hAQq8R7nDyB9
         1EpdK5Ej7xS6ZrkZIznqOAMZYeo84/g17ruWA6dvoKnfGFmpWmsIqy3/gx/CuO+Ibzh+
         qEnw==
X-Forwarded-Encrypted: i=1; AJvYcCX6TNUIWzygPwC0k+ISSa87dKeizrDaPGMbZT1e5DawbXuv91sYoQ2ycZpnTlaL8Je0TkGNr4jwXV5rgQBTB1z6Koo+0C4P/h60KQ==
X-Gm-Message-State: AOJu0YzQinaWp49gVUJAN9Frkj9OkyjST8rvY8DB8CfYHEDcLfwKM2mE
	Sglu0gxTLmJpRne3KI9B5Qlkzw8vLCaa4brrGvBWcCfPYIKadfEC39D26C6Z0hyYqaM6mPmVqQf
	e
X-Google-Smtp-Source: AGHT+IFiDpD9jnNjXHaYBDe5iqmGRvtMJpVfZZ7zS3b3nDAA5bd5zEp/CAbSuDJNq9KUS4HizlvLyA==
X-Received: by 2002:a05:600c:b91:b0:411:e398:9f33 with SMTP id fl17-20020a05600c0b9100b00411e3989f33mr4538745wmb.15.1708115595442;
        Fri, 16 Feb 2024 12:33:15 -0800 (PST)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:7758:12d:16:5f19])
        by smtp.gmail.com with ESMTPSA id m5-20020a05600c4f4500b0041253d0acd6sm1420528wmq.47.2024.02.16.12.33.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Feb 2024 12:33:15 -0800 (PST)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Marcel Holtmann <marcel@holtmann.org>,
	Luiz Augusto von Dentz <luiz.dentz@gmail.com>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Kalle Valo <kvalo@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Saravana Kannan <saravanak@google.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Arnd Bergmann <arnd@arndb.de>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Alex Elder <elder@linaro.org>,
	Srini Kandagatla <srinivas.kandagatla@linaro.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Abel Vesa <abel.vesa@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Lukas Wunner <lukas@wunner.de>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: linux-bluetooth@vger.kernel.org,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-wireless@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-pci@vger.kernel.org,
	linux-pm@vger.kernel.org,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: [PATCH v5 03/18] dt-bindings: regulator: describe the PMU module of the QCA6390 package
Date: Fri, 16 Feb 2024 21:32:00 +0100
Message-Id: <20240216203215.40870-4-brgl@bgdev.pl>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20240216203215.40870-1-brgl@bgdev.pl>
References: <20240216203215.40870-1-brgl@bgdev.pl>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

The QCA6390 package contains discreet modules for WLAN and Bluetooth. They
are powered by the Power Management Unit (PMU) that takes inputs from the
host and provides LDO outputs. This document describes this module.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
 .../bindings/regulator/qcom,qca6390-pmu.yaml  | 166 ++++++++++++++++++
 1 file changed, 166 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/regulator/qcom,qca6390-pmu.yaml

diff --git a/Documentation/devicetree/bindings/regulator/qcom,qca6390-pmu.yaml b/Documentation/devicetree/bindings/regulator/qcom,qca6390-pmu.yaml
new file mode 100644
index 000000000000..b71fa782fc63
--- /dev/null
+++ b/Documentation/devicetree/bindings/regulator/qcom,qca6390-pmu.yaml
@@ -0,0 +1,166 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/regulator/qcom,qca6390-pmu.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm Technologies, Inc. QCA6390 PMU Regulators
+
+maintainers:
+  - Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
+
+description:
+  The QCA6390 package contains discreet modules for WLAN and Bluetooth. They
+  are powered by the Power Management Unit (PMU) that takes inputs from the
+  host and provides LDO outputs. This document describes this module.
+
+properties:
+  compatible:
+    const: qcom,qca6390-pmu
+
+  vddaon-supply:
+    description: VDD_AON supply regulator handle
+
+  vddpmu-supply:
+    description: VDD_PMU supply regulator handle
+
+  vddrfa0p95-supply:
+    description: VDD_RFA_0P95 supply regulator handle
+
+  vddrfa1p3-supply:
+    description: VDD_RFA_1P3 supply regulator handle
+
+  vddrfa1p9-supply:
+    description: VDD_RFA_1P9 supply regulator handle
+
+  vddpcie1p3-supply:
+    description: VDD_PCIE_1P3 supply regulator handle<S-Del>
+
+  vddpcie1p9-supply:
+    description: VDD_PCIE_1P9 supply regulator handle
+
+  vddio-supply:
+    description: VDD_IO supply regulator handle
+
+  wlan-enable-gpios:
+    maxItems: 1
+    description:
+      GPIO line enabling the ATH11K WLAN module supplied by the PMU
+
+  bt-enable-gpios:
+    maxItems: 1
+    description:
+      GPIO line enabling the ATH11K Bluetooth module supplied by the PMU
+
+  regulators:
+    type: object
+    description:
+      LDO outputs of the PMU
+
+    patternProperties:
+      "^ldo[0-9]$":
+        $ref: regulator.yaml#
+        type: object
+        unevaluatedProperties: false
+
+    additionalProperties: false
+
+required:
+  - compatible
+  - vddaon-supply
+  - vddpmu-supply
+  - vddrfa0p95-supply
+  - vddrfa1p3-supply
+  - vddrfa1p9-supply
+  - vddpcie1p3-supply
+  - vddpcie1p9-supply
+  - vddio-supply
+  - wlan-enable-gpios
+  - bt-enable-gpios
+  - regulators
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    pmu {
+        compatible = "qcom,qca6390-pmu";
+
+        pinctrl-names = "default";
+        pinctrl-0 = <&bt_en_state>, <&wlan_en_state>;
+
+        vddaon-supply = <&vreg_s6a_0p95>;
+        vddpmu-supply = <&vreg_s2f_0p95>;
+        vddrfa0p95-supply = <&vreg_s2f_0p95>;
+        vddrfa1p3-supply = <&vreg_s8c_1p3>;
+        vddrfa1p9-supply = <&vreg_s5a_1p9>;
+        vddpcie1p3-supply = <&vreg_s8c_1p3>;
+        vddpcie1p9-supply = <&vreg_s5a_1p9>;
+        vddio-supply = <&vreg_s4a_1p8>;
+
+        wlan-enable-gpios = <&tlmm 20 GPIO_ACTIVE_HIGH>;
+        bt-enable-gpios = <&tlmm 21 GPIO_ACTIVE_HIGH>;
+
+        regulators {
+            vreg_pmu_rfa_cmn: ldo0 {
+                regulator-name = "vreg_pmu_rfa_cmn";
+                regulator-min-microvolt = <760000>;
+                regulator-max-microvolt = <840000>;
+            };
+
+            vreg_pmu_aon_0p59: ldo1 {
+                regulator-name = "vreg_pmu_aon_0p59";
+                regulator-min-microvolt = <540000>;
+                regulator-max-microvolt = <840000>;
+            };
+
+            vreg_pmu_wlcx_0p8: ldo2 {
+                regulator-name = "vreg_pmu_wlcx_0p8";
+                regulator-min-microvolt = <760000>;
+                regulator-max-microvolt = <840000>;
+            };
+
+            vreg_pmu_wlmx_0p85: ldo3 {
+                regulator-name = "vreg_pmu_wlmx_0p85";
+                regulator-min-microvolt = <810000>;
+                regulator-max-microvolt = <890000>;
+            };
+
+            vreg_pmu_btcmx_0p85: ldo4 {
+                regulator-name = "vreg_pmu_btcmx_0p85";
+                regulator-min-microvolt = <810000>;
+                regulator-max-microvolt = <890000>;
+            };
+
+            vreg_pmu_rfa_0p8: ldo5 {
+                regulator-name = "vreg_pmu_rfa_0p8";
+                regulator-min-microvolt = <760000>;
+                regulator-max-microvolt = <840000>;
+            };
+
+            vreg_pmu_rfa_1p2: ldo6 {
+                regulator-name = "vreg_pmu_rfa_1p2";
+                regulator-min-microvolt = <1187000>;
+                regulator-max-microvolt = <1313000>;
+            };
+
+            vreg_pmu_rfa_1p7: ldo7 {
+                regulator-name = "vreg_pmu_rfa_1p7";
+                regulator-min-microvolt = <1710000>;
+                regulator-max-microvolt = <1890000>;
+            };
+
+            vreg_pmu_pcie_0p9: ldo8 {
+                regulator-name = "vreg_pmu_pcie_0p9";
+                regulator-min-microvolt = <870000>;
+                regulator-max-microvolt = <970000>;
+            };
+
+            vreg_pmu_pcie_1p8: ldo9 {
+                regulator-name = "vreg_pmu_pcie_1p8";
+                regulator-min-microvolt = <1710000>;
+                regulator-max-microvolt = <1890000>;
+            };
+        };
+    };
-- 
2.40.1


