Return-Path: <devicetree+bounces-134705-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 102D69FE526
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 11:03:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7B5561881386
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 10:03:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 339901A2C25;
	Mon, 30 Dec 2024 10:03:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ZqPDk5I4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com [209.85.214.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96E7D171C9;
	Mon, 30 Dec 2024 10:03:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735553010; cv=none; b=V4+JPt0SOHpI7vHev3lHRX+QP3ylsky73U2GWMWhUogGgOovP3JjFG5B/q0exIaJJffF0WT0aFRxRJ0aS4BQaSKhWlASyrqlfwWR9x6Mgd5tNAM/EgyLHfO6fQNzraGfodkG20x0QuSkaGz0BD1YZjSdhvwDhVhMTHQlFr6GRd0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735553010; c=relaxed/simple;
	bh=8JLII4z2SucnC1ToeznGC9TylfiYT5yoHZV9TZlUGZg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=FsKchtg4v1xcMXM+esrsVtYvuC863GaR449ADgw5FHtLjYg2pyskud74qRK4HOJYMrb2GTVoYX/EIAZQhWOx3ut45mPaT+6/ViANc+CHux61wRVKSW52xcIKkh+HcPVKNS5GXArYtq0Q2o/52742sZ7KOKGF4zI5y375NRyFv50=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ZqPDk5I4; arc=none smtp.client-ip=209.85.214.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f195.google.com with SMTP id d9443c01a7336-2163b0c09afso113287095ad.0;
        Mon, 30 Dec 2024 02:03:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1735553006; x=1736157806; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4c3g69ZSa0la5kSxDKHdJ117EiliQemTUGhd6iDU1Yw=;
        b=ZqPDk5I4cZYRajTbzaqy9WjZiRHnY3Vk7KxXmOv3yDjPb83xCKrr/ckoNmeC78ffn0
         WYfkutDhx4JsUly1WbFl8TJSOgZRWwUde9TZVdfE8Dj83kfppQLXK6ZVRWPVtKihCYnv
         822nXFVh5TZsNQfKX3L4/tn6FrSxVy3+xNqN5qEeYMFIjy9Tnq8xefljLdP7YyR05l/e
         Aak7oBbtb1JB1jS6sUdbtpbLqEkB0UoqpbRflkMATMO7FDCy7bW5ndDajuRzV+ip3jsK
         xFx1ZqhYKiM1iUNdQzw0+YGtkpee41jHGWQjNpQamJ5/UCGE5AQ0pqlNoL+ME/RYdKMj
         RCLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735553006; x=1736157806;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4c3g69ZSa0la5kSxDKHdJ117EiliQemTUGhd6iDU1Yw=;
        b=OD8M09F6Fd93DZPs3gG+Xt3EZfCSfiLbDkipD3nmErhI7UETWhEP5YCvlKVHIpm5Dt
         walzPNGV+/D6okTLL/edu8DMSO8tcuLCO6BLsDSnuDC2aVO6P/6o3nvkxwcJqOwpKvhE
         ge6iHTin4eWRsLq9+OCx/x1YuMDqi9llwfN//2W6X26PH7L7d/nDQsvs5E0D8l3FeWrB
         1wesYJmG3TBNQuypp5aQkaVkIB1cWBpwzy/9rpcx/H0mQe42Sr6k8pGyeN7YhSrkAGk4
         bjVekXO6fMw8FFuKTRVBgQh9dUJWUfI+INHJbUuMIcK+8eeMa+vd7naNA/FSpoeZF6B7
         /xNg==
X-Forwarded-Encrypted: i=1; AJvYcCVbhXB6Rx3AgGEkGlZtr0YfPGRqzzGMd/Y4Hfv30tVfhtX0B07LF1CY8mDOfgxycXuDmv7qIWcIQgfebW6W@vger.kernel.org, AJvYcCX5Q9oMJkCelhSEp/pBQdAy6dodEI9ouJGxZdyfYIqHPuWXNrAGII9JHmyB6S8DbY3juDLTEHMDG7Xc@vger.kernel.org
X-Gm-Message-State: AOJu0YxkuLZokqhqa917vEBVSZkuVR62Ra8u0wuUj08Q03scrdbfogfs
	UGmdBM5TwPdg+D1U4VIFUcNStn5VTCphvUB1LHpumMOvj4zC0v05
X-Gm-Gg: ASbGncssR6Lk7j6sZhIoifEue5eqj6zLMgKRotFfSQCQM+Qo2kyyzcS8FvAa5Dv1bfC
	FG3Gdy6YaZgcUkjIBd1oKwSar3oIwsMi+I8PlKL3xTVJj7bfiDLRQmjO4NwQtpNG8WVSFEcQQCb
	ewecoksDipOxOLlmL5uIwICPSIb/OeSHVYZ2cKW27kfavq2qAL9eOdx8kCAtXALIYUmK5c2CyXn
	DpBKgon1NZqxuUGSQAkdpOOmIkVp25tb0U1GbpM6TfAjJhFxbSibBrGm3fd+vp+
X-Google-Smtp-Source: AGHT+IEw4XPb30qBmp7nC44LPta4cKntFtZNSr+9XWLhHYQ36TJJBBUHxIe7pbgP26S5y6Gy+BMaJQ==
X-Received: by 2002:a05:6a21:328d:b0:1e0:f495:50bb with SMTP id adf61e73a8af0-1e5e084326emr51372052637.44.1735553005740;
        Mon, 30 Dec 2024 02:03:25 -0800 (PST)
Received: from [127.0.1.1] ([106.114.236.41])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-842aba72f71sm17328587a12.9.2024.12.30.02.03.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Dec 2024 02:03:25 -0800 (PST)
From: Troy Mitchell <troymitchell988@gmail.com>
X-Google-Original-From: Troy Mitchell <TroyMitchell988@gmail.com>
Date: Mon, 30 Dec 2024 18:02:05 +0800
Subject: [PATCH 1/2] dt-bindings: mfd: add support for P1 from SpacemiT
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241230-k1-p1-v1-1-aa4e02b9f993@gmail.com>
References: <20241230-k1-p1-v1-0-aa4e02b9f993@gmail.com>
In-Reply-To: <20241230-k1-p1-v1-0-aa4e02b9f993@gmail.com>
To: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Troy Mitchell <troymitchell988@gmail.com>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Troy Mitchell <TroyMitchell988@gmail.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1735552935; l=4220;
 i=TroyMitchell988@gmail.com; h=from:subject:message-id;
 bh=8JLII4z2SucnC1ToeznGC9TylfiYT5yoHZV9TZlUGZg=;
 b=C4IyeA7vaYcAEgfyfJN3nXsJIdXlKkLeKM6rZ5H5GnqGHfBA/lPhcXhJAZ6mnvGY6/5U+BFoi
 SeePIFD4hDrBcDDoB01W2W2rBLXlLPnPWoqxKgBxu+2llkORC7Q3CYC
X-Developer-Key: i=TroyMitchell988@gmail.com; a=ed25519;
 pk=2spEMGBd/Wkpd36N1aD9KFWOk0aHrhVxZQt+jxLXVC0=

P1 PMIC contains of regulator, pinctrl, pwrkey and rtc.

P1 contains a load switch, which allows you to control
whether a device is powered on (such as a MIPI screen)

Signed-off-by: Troy Mitchell <TroyMitchell988@gmail.com>
---
 .../devicetree/bindings/mfd/spacemit,p1.yaml       | 153 +++++++++++++++++++++
 1 file changed, 153 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/spacemit,p1.yaml b/Documentation/devicetree/bindings/mfd/spacemit,p1.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..7475d403aeb3d0e72ffa9b6fbcbb6545d5bc429f
--- /dev/null
+++ b/Documentation/devicetree/bindings/mfd/spacemit,p1.yaml
@@ -0,0 +1,153 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mfd/spacemit,p1.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: P1 Power Management Integrated Circuit
+
+maintainers:
+  - Troy Mitchell <troymitchell988@gmail.com>
+
+description:
+  PMIC chip P1 produced by SpacemiT. The device consists of I2C controlled MFD,
+  which contains regulator, pinctrl, pwrkey and rtc.
+
+properties:
+  compatible:
+    const: spacemit,p1-pmic
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  regulators:
+    type: object
+
+    properties:
+      compatible:
+        const: pmic,p1-regulator
+
+    required:
+      - compatible
+
+    patternProperties:
+      "^(dcdc-reg[1-6]|aldo-reg[1-4]|dldo-reg[1-7]|switch)$":
+        type: object
+        $ref: /schemas/regulator/regulator.yaml#
+        unevaluatedProperties: false
+
+    unevaluatedProperties: false
+
+  pinctrl:
+    type: object
+
+    properties:
+      compatible:
+        const: pmic,p1-pinctrl
+
+      "#gpio-cells":
+        const: 2
+
+      gpio-controller: true
+
+    required:
+      - compatible
+      - "#gpio-cells"
+      - gpio-controller
+
+    unevaluatedProperties: false
+
+  pwrkey:
+    type: object
+    $ref: /schemas/input/input.yaml#
+
+    properties:
+      compatible:
+        const: pmic,p1-pwrkey
+
+    required:
+      - compatible
+
+    unevaluatedProperties: false
+
+  rtc:
+    type: object
+    $ref: /schemas/rtc/rtc.yaml#
+
+    properties:
+      compatible:
+        const: pmic,p1-rtc
+
+    required:
+      - compatible
+
+    unevaluatedProperties: false
+
+
+required:
+  - compatible
+  - reg
+  - interrupts
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        pmic@41 {
+            compatible = "spacemit,p1";
+            reg = <0x41>;
+            interrupt-parent = <&intc>;
+            interrupts = <64>;
+
+            regulators {
+                compatible = "pmic,p1-regulator";
+
+                dcdc-reg1 {
+                    regulator-name = "dcdc1";
+                    regulator-min-microvolt = <500000>;
+                    regulator-max-microvolt = <3450000>;
+                    regulator-ramp-delay = <5000>;
+                    regulator-always-on;
+                };
+
+                aldo-reg1 {
+                    regulator-name = "aldo1";
+                    regulator-min-microvolt = <500000>;
+                    regulator-max-microvolt = <3400000>;
+                    regulator-boot-on;
+                };
+
+                dldo-reg1 {
+                    regulator-name = "dldo1";
+                    regulator-min-microvolt = <500000>;
+                    regulator-max-microvolt = <3400000>;
+                    regulator-boot-on;
+                };
+
+                switch {
+                    regulator-name = "switch";
+                };
+            };
+
+            pinctrl {
+                    compatible = "pmic,p1-pinctrl";
+                    gpio-controller;
+                    #gpio-cells = <2>;
+            };
+
+            pwrkey {
+                compatible = "pmic,p1-pwrkey";
+            };
+
+            rtc {
+                compatible = "pmic,p1-rtc";
+            };
+        };
+    };

-- 
2.34.1


