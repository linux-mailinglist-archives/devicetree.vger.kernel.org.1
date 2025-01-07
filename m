Return-Path: <devicetree+bounces-136133-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A2B9A0401E
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 13:59:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6B5C518882D1
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 12:59:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1ABB21F0E5A;
	Tue,  7 Jan 2025 12:58:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vI7nhjo2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5C791F0E24
	for <devicetree@vger.kernel.org>; Tue,  7 Jan 2025 12:58:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736254731; cv=none; b=IIvRLRVUzPFezAcOGIy7moDh6ffrr6GZzQVuw7uimBuBhdlyCrVlwG9F2N9L2PosCec+ZrntEYCJCg4Z2hdIJtNyay4LSK0nJsGq3+f1qOGpSqUdpMyB1lAJFkTNT3gWQxtZDnBeX37jrLXj/1AdSquke6RaNBKmDG6dnSecjU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736254731; c=relaxed/simple;
	bh=wlaO3AJ9OYX0Qw7UHvKhMLm6zO8rWmjR4OwCAC6whc8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=qRN5hu9kpTxpnRhfQCsEqq8or9a9xqLxPr3oDtZst/5Zo6lDWJbihv+xI7UXlGLDCULP3bx0W00atnowgFX2pssO38Tln4Ox7Wzn0DMZ5cn9OAfp0lEm2TrA05fuQ8Z/kE5JYSZDQ81JxOYLqpU4mkKZa/m129dL3MvUtddHB6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vI7nhjo2; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-385e0d47720so983510f8f.0
        for <devicetree@vger.kernel.org>; Tue, 07 Jan 2025 04:58:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736254727; x=1736859527; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=5C/sFNAXY8klp3trjE/Y4l07v3FNmgHaHglxAlB5FO4=;
        b=vI7nhjo2ultK/+6l4WypuSY6FwPnaOFAlLlCopH3I03YGE31gHbH/oJmjvLOqhkeuU
         u/4Sj+DBsmoNBriBPEoE9xpHjle41qV9kjAvCh4WtVhLjWJi5Kg2vsUAs4hP38pEaw+Q
         tkhP4kL1WpwV0WnpHMJFdmtM5ZjSLwCBxOGw/kWVdSy61qZnzbx5RNv7U1KMuwifif3n
         WiAodCktCH+IGKNwdc2/vMVWRMA2nemPLTfaXphLykfSe5dSS3nGdS0Xcm22Qbi3NTn6
         dsFutTDKXsdW2s/J/Fi6i7styn0e/zlKT5HNO2EMqbK/YiUk905CgTAC0vjNGVP7DOLv
         4vFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736254727; x=1736859527;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5C/sFNAXY8klp3trjE/Y4l07v3FNmgHaHglxAlB5FO4=;
        b=rDDevDkxl2b+40yns9ESb5lem3rV2KnvXoZHjpv4x7ER0HG/3o3psG36/+0zne5rnX
         065SL7b9CYuvVP4vj2D73HjiWsdjzBRtZq2JWoch/7KmbE4MdYMQE1TQ1OdoWP47TY5Z
         DK6qImQ4RPqYJ18VHDkDelMyMsSbZ7BPTsWETcw3xRG3jxEJwukNNZ1g0JfkOqmoOKkQ
         En8agD2ZGPgUrLxX2/7Hdtw/borPmvxtqxm/87/qt/vnCebjWzhrQRLfC7dEnERng9He
         /HcZX9tbSfN1+9Ww5PFDNV6lkp/G/W9wExM2JFy3me+XwqT2MXz/dQscQb1pJszl6Ypa
         tISQ==
X-Forwarded-Encrypted: i=1; AJvYcCUD7YF6cuHRFr+c+lFAfjVf5pbamZHccbJ3/Cm+EW+SKVxcVsdr+46faLhyitwZ5VwKxLGX9/TL4MtZ@vger.kernel.org
X-Gm-Message-State: AOJu0YxZ38lmUBDeghc1s4/Z0HF3WNQgZWoAZGR2xA+ZayR+mcj5Kk93
	Hc37Tqr+hnD12O7jvIHVLlN5rM/xN5oPjwdGuSgNy7RyGijV9F0Ukry/lF6suo8=
X-Gm-Gg: ASbGnctDS8Z2HONXoWNKQLHuXQ1E1RjZhrviS3lMUmLhYwbSRRM7Vw/vG1Fj4GtbDkK
	2tRtZ1DJB/Y40cpL3rr66qWr6DgnUkKT/c4DhIzx3TJ+j+WYcpdikbGXHNssupFUJXYFr5aFIjz
	Ij9gigIubZutq4ABzPCCprBWzVZMd+N4znf1W2t+Sc80ZetKFnE10HEg055JOSXHmMsgHraGeHx
	3biito0A5sI0PxYUEQ7I3c/UwDqB7g/VYaTG5wSQpfusIgCWPendWa9G52+XZDDMV2K/cQ=
X-Google-Smtp-Source: AGHT+IESBLWYlSIfi7wxN2DEKQk+daQDclS6+lJaW/+8/BxClMnBziT40HZf7Tg1VR2FDiFfnUZ+3g==
X-Received: by 2002:a5d:5f8f:0:b0:385:dd10:213f with SMTP id ffacd0b85a97d-38a223f5cb1mr22351728f8f.9.1736254726977;
        Tue, 07 Jan 2025 04:58:46 -0800 (PST)
Received: from krzk-bin.. ([178.197.223.165])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43656b11aecsm629480935e9.23.2025.01.07.04.58.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jan 2025 04:58:46 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Alexander Stein <alexander.stein@ew.tq-group.com>,
	Marek Vasut <marex@denx.de>,
	linux-arm-msm@vger.kernel.org,
	linux-input@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] dt-bindings: input: Correct indentation and style in DTS example
Date: Tue,  7 Jan 2025 13:58:43 +0100
Message-ID: <20250107125844.226466-1-krzysztof.kozlowski@linaro.org>
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
mixtures 2- and 4-spaces in one binding.

No functional changes here, but saves some comments during reviews of
new patches built on existing code.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../bindings/input/qcom,pm8921-keypad.yaml    | 46 +++++++++----------
 .../bindings/input/qcom,pm8921-pwrkey.yaml    | 36 +++++++--------
 .../input/touchscreen/ti,ads7843.yaml         | 30 ++++++------
 3 files changed, 56 insertions(+), 56 deletions(-)

diff --git a/Documentation/devicetree/bindings/input/qcom,pm8921-keypad.yaml b/Documentation/devicetree/bindings/input/qcom,pm8921-keypad.yaml
index 88764adcd696..e03611eef93d 100644
--- a/Documentation/devicetree/bindings/input/qcom,pm8921-keypad.yaml
+++ b/Documentation/devicetree/bindings/input/qcom,pm8921-keypad.yaml
@@ -62,28 +62,28 @@ unevaluatedProperties: false
 
 examples:
   - |
-   #include <dt-bindings/input/input.h>
-   #include <dt-bindings/interrupt-controller/irq.h>
-   pmic {
-       #address-cells = <1>;
-       #size-cells = <0>;
+    #include <dt-bindings/input/input.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+    pmic {
+        #address-cells = <1>;
+        #size-cells = <0>;
 
-       keypad@148 {
-           compatible = "qcom,pm8921-keypad";
-           reg = <0x148>;
-           interrupt-parent = <&pmicintc>;
-           interrupts = <74 IRQ_TYPE_EDGE_RISING>, <75 IRQ_TYPE_EDGE_RISING>;
-           linux,keymap = <
-               MATRIX_KEY(0, 0, KEY_VOLUMEUP)
-               MATRIX_KEY(0, 1, KEY_VOLUMEDOWN)
-               MATRIX_KEY(0, 2, KEY_CAMERA_FOCUS)
-               MATRIX_KEY(0, 3, KEY_CAMERA)
-           >;
-           keypad,num-rows = <1>;
-           keypad,num-columns = <5>;
-           debounce = <15>;
-           scan-delay = <32>;
-           row-hold = <91500>;
-       };
-   };
+        keypad@148 {
+            compatible = "qcom,pm8921-keypad";
+            reg = <0x148>;
+            interrupt-parent = <&pmicintc>;
+            interrupts = <74 IRQ_TYPE_EDGE_RISING>, <75 IRQ_TYPE_EDGE_RISING>;
+            linux,keymap = <
+                MATRIX_KEY(0, 0, KEY_VOLUMEUP)
+                MATRIX_KEY(0, 1, KEY_VOLUMEDOWN)
+                MATRIX_KEY(0, 2, KEY_CAMERA_FOCUS)
+                MATRIX_KEY(0, 3, KEY_CAMERA)
+            >;
+            keypad,num-rows = <1>;
+            keypad,num-columns = <5>;
+            debounce = <15>;
+            scan-delay = <32>;
+            row-hold = <91500>;
+        };
+    };
 ...
diff --git a/Documentation/devicetree/bindings/input/qcom,pm8921-pwrkey.yaml b/Documentation/devicetree/bindings/input/qcom,pm8921-pwrkey.yaml
index 12c74c083258..64590894857a 100644
--- a/Documentation/devicetree/bindings/input/qcom,pm8921-pwrkey.yaml
+++ b/Documentation/devicetree/bindings/input/qcom,pm8921-pwrkey.yaml
@@ -52,24 +52,24 @@ unevaluatedProperties: false
 
 examples:
   - |
-   #include <dt-bindings/interrupt-controller/irq.h>
-   ssbi {
-     #address-cells = <1>;
-     #size-cells = <0>;
+    #include <dt-bindings/interrupt-controller/irq.h>
+    ssbi {
+        #address-cells = <1>;
+        #size-cells = <0>;
 
-     pmic@0 {
-       reg = <0x0>;
-       #address-cells = <1>;
-       #size-cells = <0>;
+        pmic@0 {
+            reg = <0x0>;
+            #address-cells = <1>;
+            #size-cells = <0>;
 
-       pwrkey@1c {
-         compatible = "qcom,pm8921-pwrkey";
-         reg = <0x1c>;
-         interrupt-parent = <&pmicint>;
-         interrupts = <50 IRQ_TYPE_EDGE_RISING>, <51 IRQ_TYPE_EDGE_RISING>;
-         debounce = <15625>;
-         pull-up;
-       };
-     };
-   };
+            pwrkey@1c {
+                compatible = "qcom,pm8921-pwrkey";
+                reg = <0x1c>;
+                interrupt-parent = <&pmicint>;
+                interrupts = <50 IRQ_TYPE_EDGE_RISING>, <51 IRQ_TYPE_EDGE_RISING>;
+                debounce = <15625>;
+                pull-up;
+            };
+        };
+    };
 ...
diff --git a/Documentation/devicetree/bindings/input/touchscreen/ti,ads7843.yaml b/Documentation/devicetree/bindings/input/touchscreen/ti,ads7843.yaml
index 604921733d2c..8f6335d7da1c 100644
--- a/Documentation/devicetree/bindings/input/touchscreen/ti,ads7843.yaml
+++ b/Documentation/devicetree/bindings/input/touchscreen/ti,ads7843.yaml
@@ -164,20 +164,20 @@ examples:
         #size-cells = <0>;
 
         touchscreen@0 {
-           compatible = "ti,tsc2046";
-           reg = <0>;	/* CS0 */
-           interrupt-parent = <&gpio1>;
-           interrupts = <8 0>;	/* BOOT6 / GPIO 8 */
-           pendown-gpio = <&gpio1 8 0>;
-           spi-max-frequency = <1000000>;
-           vcc-supply = <&reg_vcc3>;
-           wakeup-source;
+            compatible = "ti,tsc2046";
+            reg = <0>;	/* CS0 */
+            interrupt-parent = <&gpio1>;
+            interrupts = <8 0>;	/* BOOT6 / GPIO 8 */
+            pendown-gpio = <&gpio1 8 0>;
+            spi-max-frequency = <1000000>;
+            vcc-supply = <&reg_vcc3>;
+            wakeup-source;
 
-           ti,pressure-max = /bits/ 16 <255>;
-           ti,x-max = /bits/ 16 <8000>;
-           ti,x-min = /bits/ 16 <0>;
-           ti,x-plate-ohms = /bits/ 16 <40>;
-           ti,y-max = /bits/ 16 <4800>;
-           ti,y-min = /bits/ 16 <0>;
-       };
+            ti,pressure-max = /bits/ 16 <255>;
+            ti,x-max = /bits/ 16 <8000>;
+            ti,x-min = /bits/ 16 <0>;
+            ti,x-plate-ohms = /bits/ 16 <40>;
+            ti,y-max = /bits/ 16 <4800>;
+            ti,y-min = /bits/ 16 <0>;
+        };
     };
-- 
2.43.0


