Return-Path: <devicetree+bounces-160152-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C27FA6DA62
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 13:53:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 36B151894804
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 12:53:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA26D25EF8A;
	Mon, 24 Mar 2025 12:52:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nqEUBMt1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6CCB25F99D
	for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 12:52:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742820741; cv=none; b=TXZQky0n/WXMfbcB2BoG/rt4ECOCQgvfzB6AuYR8oYHwaTRi7wkDBpqaYI3pPV1goO/pbsGekTSnaFbTRSjPrZDzjr/bAyQJWHjHyx+X0AAA7qLgXBDVcosQKxgNetN3dRFPXh3Ihxl9VkUKrCi/WtFJm+kr4pxeLEvoJHMBoUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742820741; c=relaxed/simple;
	bh=XmslR/Vg4hs/QHIazREQ4yXkaF0TQY97XYcslTIRk04=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=fp4je24CTinwxYtNgLqDlh16HCtEzP59De1vYuBubSDzzESfFEyZWIPrmrVTJhntc9GSlicSYKE4qeB1g7Xs2ANuMZlvV6lJIxUIcwXUZm2V4izUqXCpyLhph4mbf1CamCtgwupppzPmSzeLef9bj+a+zO7zUKxTdnmfcLno3SA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=nqEUBMt1; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-43ceeb85ab2so1816985e9.0
        for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 05:52:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742820738; x=1743425538; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=YmgPaODJNGvBgG/4ktzRCLfPHcR/ClhvCHwJ0srwcr0=;
        b=nqEUBMt1ulxV5KZY2o/xJs+/F7y5rHG1GH7wWqlfRTxqp7wv/EWG56Zim7YU6CtDh5
         xS6haPKSZ1qFRIwBOOM2CJWvn/L8zbjveBIb2vRDQL0nNsi40tJsDXw01Z4+1GRXEOzf
         ozkFktIZ+5cr2Xyuqnf+BUEKuop0jR9ab5ekIw7TVt0zc82/713C/7BllugYUmmKnfJf
         ef1a96QxtNUe3HsY0S8bGfpeib9JFckkncVUuP0+dMXHyxjxCCk7gV+A8xSLn8ozPvtb
         o0MXdFZYqHYC/i4x6QulvU2Cc+puqJNnqUrIs2huiQ/tidAxOteq2x1ep1zzAmR/wbT+
         g09w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742820738; x=1743425538;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YmgPaODJNGvBgG/4ktzRCLfPHcR/ClhvCHwJ0srwcr0=;
        b=SD35ZjfmncGx9ah3X5E48E4l/DEmzbMvL4Nq3DRSfzeuW9igl7vbVjnuz8vZH/n49e
         snRJvKrOUcz0vy1sI8i7H0QO5i4GBjd+Daw4z94YCKMv6xhJuE3H/MZ4+BFvLUBBL63Z
         nw76xh0RDFsgfRCVFqrMn6bK16Q4eqZpzkNq3BBonyRfAnbw3fjqHNFUeMM9Vgvqyr9D
         YZSGdivM7Nbie263IW6PfhXhO/rg/8H02ymxe/uemu3j2duvBc2yQ1FmHOX34KtdNbgb
         4+gSWB+pfl1okGvI4BtrANKkBPuHbwD2iNg1WeY4IY+ngZ08VKBOWpwRX4EJSJE46eC0
         uGtA==
X-Forwarded-Encrypted: i=1; AJvYcCVXoO/OeRdBDP1JVeI3EOd2Cm+0RPEcvJRwhaV5yCuFHGKHtcVhmNVuR35F9tWYJfVQCSjFfbGFKhii@vger.kernel.org
X-Gm-Message-State: AOJu0YxcOwD5FnbEQsIuRiI+S0/bgOhgapUOMFvdqOpD54QxjyXMR6Ap
	WKpg2sG3vcpz5eOFWZ5ogJxXpEwqAQDiuKe0BgMHxWX01u2BaBCeAPiu5+3W2l0=
X-Gm-Gg: ASbGncs1OlU84fPmUAZNs6FQG3HSzLKklzb4z56O+wZUxW6EGSawad5Lj4UHP2FOPM9
	mgL6rs9JurvrJ6ODjNBTeqkQp/bq6sSuTRJ0jyyCZeHX9Gi610vzo8skRYxdjPURI3kpgwtzKFV
	sFNMSW3ZP/nQYAFY4b5f7Ksvs6AtjBDv8ZAnK6PLmds0OfV/jsI3ym8RkIkVfgAVdCeQOZtqw0z
	IrSmHoVlGOQBumcyu7iDZXJ9fwPwXnjjDAbRSiT/ir07hzNEHhH+nrrsF2f8Tx6loA7zbcWwarI
	kxVdA1dZXAWKqG2XMf0hS5eXFMo95EIEIzbEiZzsBt8U7IBewp73SiWJzQ==
X-Google-Smtp-Source: AGHT+IEdhY6sjyudCupWSNHVoMtEE08tS+Gsw4HB1HrNezGJ7bnExp/+sj0jdITIMdTxs+m/86N54A==
X-Received: by 2002:a05:600c:3ba2:b0:439:930a:58a6 with SMTP id 5b1f17b1804b1-43d50a4f961mr35834435e9.8.1742820738094;
        Mon, 24 Mar 2025 05:52:18 -0700 (PDT)
Received: from krzk-bin.. ([178.197.198.86])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3997f9b5939sm11135148f8f.60.2025.03.24.05.52.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Mar 2025 05:52:17 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Nicolas Saenz Julienne <nsaenz@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] dt-bindings: nvmem: Correct indentation and style in DTS example
Date: Mon, 24 Mar 2025 13:52:14 +0100
Message-ID: <20250324125214.82028-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

DTS example in the bindings should be indented with 2- or 4-spaces and
aligned with opening '- |', so correct any differences like 3-spaces or
mixtures 2- and 4-spaces in one binding.  While re-indenting, drop
unused labels.

No functional changes here, but saves some comments during reviews of
new patches built on existing code.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/nvmem/nvmem.yaml      | 60 +++++++++----------
 .../devicetree/bindings/nvmem/rmem.yaml       | 20 +++----
 .../bindings/nvmem/rockchip-efuse.yaml        | 20 +++----
 3 files changed, 50 insertions(+), 50 deletions(-)

diff --git a/Documentation/devicetree/bindings/nvmem/nvmem.yaml b/Documentation/devicetree/bindings/nvmem/nvmem.yaml
index 4fd015d402ce..c24e3667accd 100644
--- a/Documentation/devicetree/bindings/nvmem/nvmem.yaml
+++ b/Documentation/devicetree/bindings/nvmem/nvmem.yaml
@@ -50,43 +50,43 @@ additionalProperties: true
 
 examples:
   - |
-      #include <dt-bindings/gpio/gpio.h>
+    #include <dt-bindings/gpio/gpio.h>
 
-      qfprom: eeprom@700000 {
-          compatible = "qcom,msm8974-qfprom", "qcom,qfprom";
-          #address-cells = <1>;
-          #size-cells = <1>;
-          reg = <0x00700000 0x100000>;
+    qfprom: eeprom@700000 {
+        compatible = "qcom,msm8974-qfprom", "qcom,qfprom";
+        #address-cells = <1>;
+        #size-cells = <1>;
+        reg = <0x00700000 0x100000>;
 
-          wp-gpios = <&gpio1 3 GPIO_ACTIVE_HIGH>;
+        wp-gpios = <&gpio1 3 GPIO_ACTIVE_HIGH>;
 
-          /* ... */
+        /* ... */
 
-          nvmem-layout {
-              compatible = "fixed-layout";
-              #address-cells = <1>;
-              #size-cells = <1>;
+        nvmem-layout {
+            compatible = "fixed-layout";
+            #address-cells = <1>;
+            #size-cells = <1>;
 
-              /* Data cells */
-              tsens_calibration: calib@404 {
-                  reg = <0x404 0x10>;
-              };
+            /* Data cells */
+            tsens_calibration: calib@404 {
+                reg = <0x404 0x10>;
+            };
 
-              tsens_calibration_bckp: calib_bckp@504 {
-                  reg = <0x504 0x11>;
-                  bits = <6 128>;
-              };
+            tsens_calibration_bckp: calib_bckp@504 {
+                reg = <0x504 0x11>;
+                bits = <6 128>;
+            };
 
-              pvs_version: pvs-version@6 {
-                  reg = <0x6 0x2>;
-                  bits = <7 2>;
-              };
+            pvs_version: pvs-version@6 {
+                reg = <0x6 0x2>;
+                bits = <7 2>;
+            };
 
-              speed_bin: speed-bin@c{
-                  reg = <0xc 0x1>;
-                  bits = <2 3>;
-              };
-          };
-      };
+            speed_bin: speed-bin@c{
+                reg = <0xc 0x1>;
+                bits = <2 3>;
+            };
+        };
+    };
 
 ...
diff --git a/Documentation/devicetree/bindings/nvmem/rmem.yaml b/Documentation/devicetree/bindings/nvmem/rmem.yaml
index 85f9f5de3906..dc714309e7b9 100644
--- a/Documentation/devicetree/bindings/nvmem/rmem.yaml
+++ b/Documentation/devicetree/bindings/nvmem/rmem.yaml
@@ -38,17 +38,17 @@ unevaluatedProperties: false
 
 examples:
   - |
-        reserved-memory {
-                #address-cells = <1>;
-                #size-cells = <1>;
+    reserved-memory {
+        #address-cells = <1>;
+        #size-cells = <1>;
 
-                blconfig: nvram@10000000 {
-                        compatible = "raspberrypi,bootloader-config", "nvmem-rmem";
-                        #address-cells = <1>;
-                        #size-cells = <1>;
-                        reg = <0x10000000 0x1000>;
-                        no-map;
-                };
+        nvram@10000000 {
+            compatible = "raspberrypi,bootloader-config", "nvmem-rmem";
+            #address-cells = <1>;
+            #size-cells = <1>;
+            reg = <0x10000000 0x1000>;
+            no-map;
         };
+    };
 
 ...
diff --git a/Documentation/devicetree/bindings/nvmem/rockchip-efuse.yaml b/Documentation/devicetree/bindings/nvmem/rockchip-efuse.yaml
index b80fd8d1ae5b..aa93ebc41a8e 100644
--- a/Documentation/devicetree/bindings/nvmem/rockchip-efuse.yaml
+++ b/Documentation/devicetree/bindings/nvmem/rockchip-efuse.yaml
@@ -58,16 +58,16 @@ examples:
   - |
     #include <dt-bindings/clock/rk3288-cru.h>
     efuse: efuse@ffb40000 {
-            compatible = "rockchip,rk3288-efuse";
-            reg = <0xffb40000 0x20>;
-            #address-cells = <1>;
-            #size-cells = <1>;
-            clocks = <&cru PCLK_EFUSE256>;
-            clock-names = "pclk_efuse";
+        compatible = "rockchip,rk3288-efuse";
+        reg = <0xffb40000 0x20>;
+        #address-cells = <1>;
+        #size-cells = <1>;
+        clocks = <&cru PCLK_EFUSE256>;
+        clock-names = "pclk_efuse";
 
-            /* Data cells */
-            cpu_leakage: cpu_leakage@17 {
-                    reg = <0x17 0x1>;
-            };
+        /* Data cells */
+        cpu_leakage@17 {
+            reg = <0x17 0x1>;
+        };
     };
 ...
-- 
2.43.0


