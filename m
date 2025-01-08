Return-Path: <devicetree+bounces-136394-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BB189A04FA8
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 02:35:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1FBC53A1836
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 01:35:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C8D41A00FA;
	Wed,  8 Jan 2025 01:28:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="QEJMY2w5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f52.google.com (mail-pj1-f52.google.com [209.85.216.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C15D219F41C
	for <devicetree@vger.kernel.org>; Wed,  8 Jan 2025 01:28:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736299734; cv=none; b=isiOP8FglJzUEFoXNTCgvEovkFH9b/eJ2AHf4dIx5a382BldDp/CEtlsmltXJD/DXsQ7ixH/9wXYCaId6JBAlgUYRuYA0Se1ax2ePmC9XjtwBv314psIfCFIwhqkRhwSuOn3Zl27swluusVpZS5YGndP746lIdvBAoBYigPufrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736299734; c=relaxed/simple;
	bh=HLeXh7e3GjhFtwyj5udajVxpHq3OwLVCrig2Syvg2OQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=mC3vdGptHNM4PIUmlHykA0L8cIU8UbZ0zv4RV42FtMjJvtkZigmRjhm3KwlPpomm/LMvVqZ89ACHMchlYHj+rAPt1tXwQlDioXIG+b82NOYpxc+pvSy40PjCUdwP8F+3RT/GI7KhW8xW6OCQH+VKARi2gWksda5mNUn3cFQetBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=QEJMY2w5; arc=none smtp.client-ip=209.85.216.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pj1-f52.google.com with SMTP id 98e67ed59e1d1-2ef714374c0so566635a91.0
        for <devicetree@vger.kernel.org>; Tue, 07 Jan 2025 17:28:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1736299732; x=1736904532; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+3OGnfMaF6ttidHVZW35hLDvix/z1ZneywWqGiGVTK0=;
        b=QEJMY2w5JAwZjsW6Inya573rCUnWJc/5YGzWbZW69ZPiItgHw86ZsTGh8fZSFiJ8ZF
         zILesgDbW+a2GVHrVNB7R8OCE3udjUqAxEnRBz1ccKYyzX4X5Y25QWVgmF8u8MYedY+p
         6yUwiR1qBzkMR+vwgWYBLydvclg+PAsxXTypI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736299732; x=1736904532;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+3OGnfMaF6ttidHVZW35hLDvix/z1ZneywWqGiGVTK0=;
        b=Fr83Ejx2tzFtOXCazMsdS3GglXzyUJvPHXYQYf0UAoNJHuHGuQmrmjCIu2vH/VJDCD
         3v25+mBmV5efdDBU/Pm8Gh08NgFQo7pe6za9UXk2lL9Jq7TzeYu4cXFDffqCaFCxiXXG
         1vFwOxqAQhGvQLCOaYGqqa89PNO/1fEREWDKvug/OpAFxgpme2pW/EMP5/NM4RaIxMCC
         0eRB0TbXpF6ZVj4gjKL9u+6zGjOIYQQtqw8y80GGNv0+wbilr3eCz4MG5x5wroW0BfCy
         PyECcyKwNrALi4zy5K37y2xrfpWI0GcurUHdxW6h44XH5WJt0dya8jEQv7+vuJTJ8weI
         r1sQ==
X-Forwarded-Encrypted: i=1; AJvYcCWzXrVtrYD5yjoc0OGIp6flQjtZ+8pEWifcEiVG2et3qkZ0FQ857mh8GjXN1uzQSTJxTYLIt1XinJNw@vger.kernel.org
X-Gm-Message-State: AOJu0YwS9hAyrERn0PdIqFyEsm0vZn5mEb45AxzJW616ZlCMC3QoVcXp
	gPOXrBb7JD2heJdTn/zkgfrUq9UcFrW4N2rnMEUVLjidSqu/Z4k/k2yVLHm4pg==
X-Gm-Gg: ASbGncv9u4tzCVrQyU0APwCQpTNv/+qA+rr/T9e39+4sKredPw5MpfP1eiXdk5uh/eI
	6g5U6cqWVSdyhBWYozMRWrtOvaqP2CjV4bZH01t6BpPj5AhifJ8Fop2hGr//5Kgf6kmpm5lX8KW
	XJtSI7JpsgxCqbwnUQ2CJvDR8TTsRJxJqM7oyKJHs4IecB2ACyieK+x+1mRD2PZk3C3p0lRwmKV
	wZDCE6KnR7ilwcXkqhYVvn3KqmiqdH3nePdG7ry+Wl8MdijKNicOGFh2BRCj1/rPhwYh6bWXke+
	Uc4WLan9NWYrmwfjXwb4
X-Google-Smtp-Source: AGHT+IGRIU+NqXGlb71FFJypyGjyxuINnxFY9kBScDBRLLqASUBsZ/TtCxmB7qxtQamZfY7V7xiN8A==
X-Received: by 2002:a17:90b:2705:b0:2ef:949c:6f6b with SMTP id 98e67ed59e1d1-2f53cc6e0e4mr8060729a91.13.1736299732138;
        Tue, 07 Jan 2025 17:28:52 -0800 (PST)
Received: from localhost (129.135.125.34.bc.googleusercontent.com. [34.125.135.129])
        by smtp.gmail.com with UTF8SMTPSA id 98e67ed59e1d1-2f54a287254sm196478a91.20.2025.01.07.17.28.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Jan 2025 17:28:51 -0800 (PST)
From: Stephen Boyd <swboyd@chromium.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-kernel@vger.kernel.org,
	patches@lists.linux.dev,
	devicetree@vger.kernel.org,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Arnd Bergmann <arnd@arndb.de>,
	Conor Dooley <conor+dt@kernel.org>,
	Saravana Kannan <saravanak@google.com>,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>
Subject: [RFC PATCH 2/6] dt-bindings: bus: Add qcom,soc-sc7180 SoC
Date: Tue,  7 Jan 2025 17:28:39 -0800
Message-ID: <20250108012846.3275443-3-swboyd@chromium.org>
X-Mailer: git-send-email 2.47.1.613.gc27f4b7a9f-goog
In-Reply-To: <20250108012846.3275443-1-swboyd@chromium.org>
References: <20250108012846.3275443-1-swboyd@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Document the Qualcomm SC7180 System on a Chip (SoC). This SoC is made up
of multiple devices that have their own bindings, therefore this binding
is for a "bus" that is the SoC node.

TODO: Document all child nodes. This is woefully incomplete but at least
shows what is involved with describing an SoC node in dt schema.

Cc: Rob Herring <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: <devicetree@vger.kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>
Cc: Konrad Dybcio <konradybcio@kernel.org>
Cc: <linux-arm-msm@vger.kernel.org>
Signed-off-by: Stephen Boyd <swboyd@chromium.org>
---
 .../bindings/bus/qcom,soc-sc7180.yaml         | 76 +++++++++++++++++++
 1 file changed, 76 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/bus/qcom,soc-sc7180.yaml

diff --git a/Documentation/devicetree/bindings/bus/qcom,soc-sc7180.yaml b/Documentation/devicetree/bindings/bus/qcom,soc-sc7180.yaml
new file mode 100644
index 000000000000..56f8b75ecdab
--- /dev/null
+++ b/Documentation/devicetree/bindings/bus/qcom,soc-sc7180.yaml
@@ -0,0 +1,76 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/bus/qcom,soc-sc7180.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm SC7180 SoC
+
+maintainers:
+  - Bjorn Andersson <andersson@kernel.org>
+  - Konrad Dybcio <konradybcio@kernel.org>
+
+description:
+  Qualcomm's SC7180 System on a Chip (SoC).
+
+properties:
+  compatible:
+    items:
+      - const: qcom,soc-sc7180
+      - const: simple-bus
+
+  '#address-cells':
+    const: 2
+
+  '#size-cells':
+    const: 2
+
+  clock-controller@100000:
+    $ref: /schemas/clock/qcom,gcc-sc7180.yaml#
+
+  watchdog@17c10000:
+    $ref: /schemas/watchdog/qcom-wdt.yaml#
+
+required:
+  - compatible
+  - '#address-cells'
+  - '#size-cells'
+  - clock-controller@100000
+  - watchdog@17c10000
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+    soc {
+        #address-cells = <2>;
+        #size-cells = <2>;
+        compatible = "qcom,soc-sc7180", "simple-bus";
+
+        // TODO: Is it possible to ignore the details?
+        clock-controller@100000 {
+          compatible = "qcom,gcc-sc7180";
+          reg = <0 0x00100000 0 0x1f0000>;
+          clocks = <&rpmhcc_RPMH_CXO_CLK>,
+                   <&rpmhcc_RPMH_CXO_CLK_A>,
+                   <&sleep_clk>;
+          clock-names = "bi_tcxo", "bi_tcxo_ao", "sleep_clk";
+          #clock-cells = <1>;
+          #reset-cells = <1>;
+          #power-domain-cells = <1>;
+          power-domains = <&rpmhpd_SC7180_CX>;
+        };
+
+        watchdog@17c10000 {
+          compatible = "qcom,apss-wdt-sc7180", "qcom,kpss-wdt";
+          reg = <0 0x17c10000 0 0x1000>;
+          clocks = <&sleep_clk>;
+          interrupts = <GIC_SPI 0 IRQ_TYPE_EDGE_RISING>;
+        };
+    };
+
+...
-- 
https://chromeos.dev


