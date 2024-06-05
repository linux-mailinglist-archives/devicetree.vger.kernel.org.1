Return-Path: <devicetree+bounces-72752-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B5A08FCE51
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 15:06:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B12E01F2C16B
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 13:06:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 98AD01BB6AD;
	Wed,  5 Jun 2024 12:21:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="pJunJXQP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE4CD1BB682
	for <devicetree@vger.kernel.org>; Wed,  5 Jun 2024 12:21:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717590084; cv=none; b=V5KUd1pDomIH37CCw5w59j0jCDnwgpOO+UAPB3Z0nMMqhzkwoC5DYqdJNkjR7AlVE1ln00XirAt6xQvOtu9WcNJI+TeoYLI7wRAP/7WXNy31k+hMTDJQc7JBoq3xxV7ULStcdCL/wmcIwtqZJ59tvT1qiK+u7ZEdCbT6D5juwMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717590084; c=relaxed/simple;
	bh=iSIJRYQoDeifOwpk0peo5NpP3jgdrZqBKDhv4/ZqD2I=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=btqxsNO5qBJZRd8VfvsVcx7Nlz5Nu6TPIGS2zGlwukiAhNV7PNb0Cp2YgckqwANPoTmg1nHDTPCGthcTt11iVXC7BR9RhMzUz9rfSdXJ+pFOvw1LQ9zuFzbEY09g/BWFPDkA61R1bZ0MLa0rsvK2Dl7gB+9j5ltXzIAnSRlSf8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=pJunJXQP; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-4210aa012e5so21172115e9.0
        for <devicetree@vger.kernel.org>; Wed, 05 Jun 2024 05:21:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1717590081; x=1718194881; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ucQO5tSR+UUnqX3BARACo1yN9MzAT61u2WtozQUoIJg=;
        b=pJunJXQP4hVXQEKfh779jvRcQGK9mw8RgdSfKpcU+3st17ilRZfgAahYsUl1oEwHJV
         kM17NTI244Di86qs65Ti/KY6dCesbpxpo1KTA5uVo+xFAsvvjYLG6+e05BQNusR1vGog
         SbVXaL84A/iLRi/aJubPamRiXgYpjYcR13QG2K510/1y3m+yHfwXLUJRGkXtR2SXCcoV
         Vhbfd1+Du18hO6GMYvSO0GyU6RtGlAYKDQEBO8THWhoE2t3IvfTzeATT+3Ql+nBj8G+q
         CC7kU/tFHL/V/XQn895/iOy7zY72CF0bnh43gFKcu52kZQx/+A+xy2Q8nxp2p5LMAqzE
         96Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717590081; x=1718194881;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ucQO5tSR+UUnqX3BARACo1yN9MzAT61u2WtozQUoIJg=;
        b=bPiQ4V4v8qAj3IQ67CSVVarOd7MkxQMDw+dStHgyz20jqUjG4Qg3MIDd++OW3whZDE
         rTRqOpOdprQ7HEdwoGhPcBDJ4aPuaxlqfTxsdKhezUAH0O91CgSMhjb9S5NBpaEs+iaq
         jFiCOuBfRRe1oled3TtkRo7RQ3t/Upebb75EdG6wND6CUt1iPk5k6RkyThGEBUvYUki8
         rcdO484DtZvo2E4uN0F4FanetNZz8PKxsy8VDwNU552F1FaPS/sIMVh+vMj7jiCCzYli
         xiCHse0z7JsHhWhuhz6eJTl2W22NgRoikdSguhip9ctqRqzHh4r/4wYOBgmUsCy72S6G
         GtRA==
X-Forwarded-Encrypted: i=1; AJvYcCU9AoeoBNagHWeZ0vpKH1vqUpjW87WM+36hYyrQw6GuTIIcK9g2CHa5EEaZ0ZmfFZAfuFroYyh9bXKpyTA1BA36fE2QRykobiFViw==
X-Gm-Message-State: AOJu0YwhhHx8IBq3dcPXkJ6FETmxJhttINRFt2YbU3TthUgz1ZbA/FHv
	KRT5BYfj9Vef2otK73nACD9+KitmU7cBWSXwI0UHnkviho/2rlWc9SWqoMC5U9c=
X-Google-Smtp-Source: AGHT+IEzV4+qPAdbvBIVSDh25Kg43lXFdrbrVxygpt/spQBQn6auoyHk/Hs/OfBTW0kfE6X67LA+9A==
X-Received: by 2002:a05:600c:46c4:b0:41f:b0e7:f299 with SMTP id 5b1f17b1804b1-421562cc205mr18573495e9.9.1717590081264;
        Wed, 05 Jun 2024 05:21:21 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:75a:e000:d3dd:423:e1eb:d88b])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4215813ce64sm19634485e9.44.2024.06.05.05.21.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Jun 2024 05:21:19 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Kalle Valo <kvalo@kernel.org>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jeff Johnson <jjohnson@kernel.org>
Cc: linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	ath11k@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	ath12k@lists.infradead.org,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v9 2/2] dt-bindings: net: wireless: describe the ath12k PCI module
Date: Wed,  5 Jun 2024 14:21:05 +0200
Message-ID: <20240605122106.23818-3-brgl@bgdev.pl>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240605122106.23818-1-brgl@bgdev.pl>
References: <20240605122106.23818-1-brgl@bgdev.pl>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

Add device-tree bindings for the ATH12K module found in the WCN7850
package.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
 .../bindings/net/wireless/qcom,ath12k.yaml    | 99 +++++++++++++++++++
 1 file changed, 99 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/net/wireless/qcom,ath12k.yaml

diff --git a/Documentation/devicetree/bindings/net/wireless/qcom,ath12k.yaml b/Documentation/devicetree/bindings/net/wireless/qcom,ath12k.yaml
new file mode 100644
index 000000000000..1b5884015b15
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/wireless/qcom,ath12k.yaml
@@ -0,0 +1,99 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+# Copyright (c) 2024 Linaro Limited
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/net/wireless/qcom,ath12k.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm Technologies ath12k wireless devices (PCIe)
+
+maintainers:
+  - Jeff Johnson <quic_jjohnson@quicinc.com>
+  - Kalle Valo <kvalo@kernel.org>
+
+description:
+  Qualcomm Technologies IEEE 802.11be PCIe devices.
+
+properties:
+  compatible:
+    enum:
+      - pci17cb,1107  # WCN7850
+
+  reg:
+    maxItems: 1
+
+  vddaon-supply:
+    description: VDD_AON supply regulator handle
+
+  vddwlcx-supply:
+    description: VDD_WLCX supply regulator handle
+
+  vddwlmx-supply:
+    description: VDD_WLMX supply regulator handle
+
+  vddrfacmn-supply:
+    description: VDD_RFA_CMN supply regulator handle
+
+  vddrfa0p8-supply:
+    description: VDD_RFA_0P8 supply regulator handle
+
+  vddrfa1p2-supply:
+    description: VDD_RFA_1P2 supply regulator handle
+
+  vddrfa1p8-supply:
+    description: VDD_RFA_1P8 supply regulator handle
+
+  vddpcie0p9-supply:
+    description: VDD_PCIE_0P9 supply regulator handle
+
+  vddpcie1p8-supply:
+    description: VDD_PCIE_1P8 supply regulator handle
+
+required:
+  - compatible
+  - reg
+  - vddaon-supply
+  - vddwlcx-supply
+  - vddwlmx-supply
+  - vddrfacmn-supply
+  - vddrfa0p8-supply
+  - vddrfa1p2-supply
+  - vddrfa1p8-supply
+  - vddpcie0p9-supply
+  - vddpcie1p8-supply
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/qcom,rpmh.h>
+    #include <dt-bindings/gpio/gpio.h>
+    pcie {
+        #address-cells = <3>;
+        #size-cells = <2>;
+
+        pcie@0 {
+            device_type = "pci";
+            reg = <0x0 0x0 0x0 0x0 0x0>;
+            #address-cells = <3>;
+            #size-cells = <2>;
+            ranges;
+
+            bus-range = <0x01 0xff>;
+
+            wifi@0 {
+                compatible = "pci17cb,1107";
+                reg = <0x10000 0x0 0x0 0x0 0x0>;
+
+                vddaon-supply = <&vreg_pmu_aon_0p59>;
+                vddwlcx-supply = <&vreg_pmu_wlcx_0p8>;
+                vddwlmx-supply = <&vreg_pmu_wlmx_0p85>;
+                vddrfacmn-supply = <&vreg_pmu_rfa_cmn>;
+                vddrfa0p8-supply = <&vreg_pmu_rfa_0p8>;
+                vddrfa1p2-supply = <&vreg_pmu_rfa_1p2>;
+                vddrfa1p8-supply = <&vreg_pmu_rfa_1p8>;
+                vddpcie0p9-supply = <&vreg_pmu_pcie_0p9>;
+                vddpcie1p8-supply = <&vreg_pmu_pcie_1p8>;
+            };
+        };
+    };
-- 
2.40.1


