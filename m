Return-Path: <devicetree+bounces-138163-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 539B4A0BF3B
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 18:52:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 439051884F19
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 17:52:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C0D921BD9C7;
	Mon, 13 Jan 2025 17:51:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AEsdFlsR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C1AE1BBBE3;
	Mon, 13 Jan 2025 17:51:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736790716; cv=none; b=ZGHZ+QdgJIe+aLJPSB2D2pW1FQAHpO1eR/GxboHpFxPQa3A/LCviJPETh7k6RkQxyGWD6CGDY4nm1iuDvplcXZlLluyRqGqrQunLHkH3YOJrbJyEMxhaE174fd6BcfRl8JCOc4RdmTD5VUJ6AVBPAFVx5YQNkZCPrBdqyVs95bU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736790716; c=relaxed/simple;
	bh=mgKrG1lN0hsxZrkV4Ffd8fMThm0SoM03nETCtwwT7TY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=afl3A00gTYH2XahiX6bbxKX8C8/03tMbq5PGI7YNSo3knyQEJgM5YKUZMcD2xe2nmC6LSUWaoUHzsJlmPkHI7IE1ZrRT2YuhafisVab21TelFRGpv05kC3fSYhti0c98EcoenxMeBaTZ30+RlmcQZ+ec6QfTRFDoxDEuubJpoO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AEsdFlsR; arc=none smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-216281bc30fso96042335ad.0;
        Mon, 13 Jan 2025 09:51:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736790714; x=1737395514; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=BnVpjSzyAd4oCposfE2CEFnrYfVysvtaDKvmU8FTINE=;
        b=AEsdFlsR+JTGxm+HX5b/r+q4r47h0NqesNnEsjq7+qQof3dz7QzCyHuUJm2nbRTCKo
         djaFTQX5N4214VpGEiuPS+sB5mb9lJryIv2NSfIkPMQE4T3pAyzj+Eo/O53Kuac9wjmu
         /zV5QPUTijWOe113ovY0Wusz1y0kUilVT/7Ih+XtOCWDHEXcCkchB9JPQ5dj2OF9cBTx
         qbwP0MEaM05S0woFChNoTsHKrvK72J5/u3xJlNmGRVilM/hxf2aTcGMOAklMCB+8x/Uh
         PNtkcFQZPlNCN+WOO2E/nuTafzR4IKmLmsFjlGME1cR6ArY4UoXtqHacoj4ButTclMTi
         oJbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736790714; x=1737395514;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BnVpjSzyAd4oCposfE2CEFnrYfVysvtaDKvmU8FTINE=;
        b=ThaME2ukDL7zMBIYYecifB5QdFneqi8ulHBbYPWMTgZ+QmqxQee5RDNfS8JH96RflK
         Qdo3BrbSqcvm3/FRldGDJ70kozlkNuIp4Dz2nfbvEWonwatTuchleESFMyt7qYFuWwJl
         RNmVS37P/kbTMrCPDzhjyylSg0mk9uWIC2Av0FRsLmqXw1YBUETCqjEZJHEz7rYm/Q/J
         u8Wb6SRpgMjKUBkOXSXNUc9f2rzx1/hV2usIJTDxzRtdGik/Do7nAg5eoA8MukqmH6Ua
         FZaJxbc6FQ8l/DinoG32x+7M+IjJLOwq5+ibpuF3eN4bMnkStG5pkJn8OXWS5Ju38SYP
         aHWg==
X-Forwarded-Encrypted: i=1; AJvYcCUrE72LhYvHzGHKowYznkb9qkY947H4G/zUDeDEz/z+o5PpDXiM2MBfgf+9Yi9tI+RDPRCEZuYadmnufcQ=@vger.kernel.org
X-Gm-Message-State: AOJu0YyS1+eLbIZgqU133U/1gmznCfnW2j4KgNUx/Bd6TC3JVXbK1F8Z
	S9/Zwb4Te0wpYhaNCZyxGl1h0vxdWOn8GC4O71iiW8kpr/s7CmGv
X-Gm-Gg: ASbGncve+ilj0na3LGhD9F6ukC4s8j0MqAJhI1WRV8ABPjo3NCGeEv/rzJvEQOc5KZw
	LaEampzW/l0vinJnytfHhkclNLeGBBTFKva7lxjeixSn9okHbniVRyBg1YIEkhbAtbrOdTUA5M4
	vR3ooprVamIOQCgX9TzlMojYFBPnUzy+OCWQvtqxf4Heuul4qXNmICu4VcnhwrLcJ4La6pBAdnV
	oFUuwytPEZl4a/QOF4NlWlhuCOIArxjQsMotzWRgM5jd3Hg+lHlxys=
X-Google-Smtp-Source: AGHT+IE4nH1FqEYjYeLGqfee+UKwMMRWGXrlSlt2C9wsXthP2svF4yoVmHyuBVdcv5SbCYRYaSNIpg==
X-Received: by 2002:a17:903:11d0:b0:21a:8769:2fec with SMTP id d9443c01a7336-21a87693dcemr342064685ad.10.1736790714487;
        Mon, 13 Jan 2025 09:51:54 -0800 (PST)
Received: from nuvole.. ([144.202.86.13])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21a9f21b4c2sm56830585ad.137.2025.01.13.09.51.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jan 2025 09:51:54 -0800 (PST)
From: Pengyu Luo <mitltlatltl@gmail.com>
To: Pengyu Luo <mitltlatltl@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 1/6] dt-bindings: platform: Add Huawei Matebook E Go EC
Date: Tue, 14 Jan 2025 01:50:23 +0800
Message-ID: <20250113175024.590437-1-mitltlatltl@gmail.com>
X-Mailer: git-send-email 2.47.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add binding for the EC found in the Huawei Matebook E Go and
Huawei Matebook E Go LTE 2-in-1 tablets, the former one is a QS sc8280xp
based tablet, the latter one is a QS sc8180x based tablet.

This series has a codename, gaokun. More information about gaokun, please
check https://bugzilla.kernel.org/show_bug.cgi?id=219645

Signed-off-by: Pengyu Luo <mitltlatltl@gmail.com>
---
 .../bindings/platform/huawei,gaokun-ec.yaml   | 124 ++++++++++++++++++
 1 file changed, 124 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/platform/huawei,gaokun-ec.yaml

diff --git a/Documentation/devicetree/bindings/platform/huawei,gaokun-ec.yaml b/Documentation/devicetree/bindings/platform/huawei,gaokun-ec.yaml
new file mode 100644
index 000000000..4a03b0ee3
--- /dev/null
+++ b/Documentation/devicetree/bindings/platform/huawei,gaokun-ec.yaml
@@ -0,0 +1,124 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/platform/huawei,gaokun-ec.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Huawei Matebook E Go Embedded Controller
+
+maintainers:
+  - Pengyu Luo <mitltlatltl@gmail.com>
+
+description:
+  Different from other Qualcomm Snapdragon sc8180x and sc8280xp-based
+  machines, the Huawei Matebook E Go tablets use embedded controllers
+  while others use a system called PMIC GLink which handles battery,
+  UCSI, USB Type-C DP Alt Mode. In addition, Huawei's implementation
+  also handles additional features, such as charging thresholds, FN
+  lock, smart charging, tablet lid status, thermal sensors, and more.
+
+properties:
+  compatible:
+    enum:
+      - huawei,gaokun3-ec
+
+  reg:
+    const: 0x38
+
+  '#address-cells':
+    const: 1
+
+  '#size-cells':
+    const: 0
+
+  interrupts:
+    maxItems: 1
+
+patternProperties:
+  '^connector@[01]$':
+    $ref: /schemas/connector/usb-connector.yaml#
+
+    properties:
+      reg:
+        maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - interrupts
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        embedded-controller@38 {
+            compatible = "huawei,gaokun3-ec";
+            reg = <0x38>;
+
+            interrupts-extended = <&tlmm 107 IRQ_TYPE_LEVEL_LOW>;
+
+            #address-cells = <1>;
+            #size-cells = <0>;
+
+            connector@0 {
+                compatible = "usb-c-connector";
+                reg = <0>;
+                power-role = "dual";
+                data-role = "dual";
+
+                ports {
+                    #address-cells = <1>;
+                    #size-cells = <0>;
+
+                    port@0 {
+                        reg = <0>;
+
+                        ucsi0_ss_in: endpoint {
+                            remote-endpoint = <&usb_0_qmpphy_out>;
+                        };
+                    };
+
+                    port@1 {
+                        reg = <1>;
+
+                        ucsi0_sbu: endpoint {
+                            remote-endpoint = <&usb0_sbu_mux>;
+                        };
+                    };
+                };
+            };
+
+            connector@1 {
+                compatible = "usb-c-connector";
+                reg = <1>;
+                power-role = "dual";
+                data-role = "dual";
+
+                ports {
+                    #address-cells = <1>;
+                    #size-cells = <0>;
+
+                    port@0 {
+                        reg = <0>;
+
+                        ucsi1_ss_in: endpoint {
+                            remote-endpoint = <&usb_1_qmpphy_out>;
+                        };
+                    };
+
+                    port@1 {
+                        reg = <1>;
+
+                        ucsi1_sbu: endpoint {
+                            remote-endpoint = <&usb1_sbu_mux>;
+                        };
+                    };
+                };
+            };
+        };
+    };
-- 
2.47.1


