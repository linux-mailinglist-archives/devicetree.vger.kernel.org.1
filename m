Return-Path: <devicetree+bounces-232209-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AD3EC157B1
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 16:34:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 684361B2644C
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 15:34:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8CA8346778;
	Tue, 28 Oct 2025 15:32:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VBNFyUFd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78BBB345739
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 15:32:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761665546; cv=none; b=kAL401xB0JK64kEHM6QpdRS7S6NY0ewWnW5o2Kyjit8z2JH8jRvSE8G27lOfNveve+X42IzB/03ImqdHdA+/D/Hzt/yDQJt380t2USDk8uDsESU6MXg1EstBk25BYLHlYJZPFvruei27C752PEigLkhKi3ZcbL3i0rlIiqkhaZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761665546; c=relaxed/simple;
	bh=7rSGqGe5j/ajfYeyCLhr7KhXQYjjD+BB8KOQPiQ8lnM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=RIPwNudQUSmrvQzJLeprfqAQqou7RRpEpAhji05ftgjNCLo9I81jl5mihRqmzPeWKsohe/HN+l1uQaO4Fps8427Dk/fWSeDhKo5bQWC8vZ5xBfjmM39GaUNz6ISpaBlFxkPKSX19hjPklTn2NzSPy3pYx6rbuir8woqs3grJBGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=VBNFyUFd; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-4769bb77eb9so2285795e9.2
        for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 08:32:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761665543; x=1762270343; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CsNC6YXccurarSsTb8o/0+bYujRK2YI84C73y8iXHgw=;
        b=VBNFyUFdf442uucoRudgM99wI5awz10ZCTZH2DyeJlhbYZRtYguN/CuNrrjbwwRKrZ
         dGEr/dPswmyiMjhkxhnAhzlWzAKRJ/CeNumI72OciWCsAhZYraM/CLKEHt5IbJnuyYdG
         s1DdfAXzOISPby9OPJPOxk27NLdlz5d5Lj6dPfQ1dQJa8HYjfJ3Bpuwfz8rUNpPzu2hT
         +8GwagPTdDmeJaSN8u2dUaQblmXbfYzwTPYtfp6V3kYT8LXSDS9XaJCcemDKAviWiI62
         IYGmMGTNdKLZ97QbtUTvWHrV641duPjUri3UQURtVPNnvDd7mDnDl0GS0yAEIO57DeN+
         AmqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761665543; x=1762270343;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CsNC6YXccurarSsTb8o/0+bYujRK2YI84C73y8iXHgw=;
        b=DXhvqT5Besy7BGz1BSPswvx2KCVq7vB5ojZCNGJ+xioXBgQ3xneA0icePc3f+5RX4G
         QLVVRf0PTRUGAGdlASrblwiyVv7qk0B1kYr6S1N19KAvC75o84sFhejPlmsm36/pa4Tb
         iH8/L9w0jpGb53tberb262YMstvKqS8/Ulfw7HHYWGL5+UjPPk1aHNDz6FxZWudLGZ40
         rWPuL2vXvWFo88LIaVvW13XWsBoMe7cA+O7wCoDmITgH/KG4m6eAmsAC+htp49JkUHJR
         +qx0k5T2cf0B+Zusddj96805w3L28Fl31DtZJ6JKHzbIbsTqY58PyXBChhSKKx/6gfh8
         pn1g==
X-Forwarded-Encrypted: i=1; AJvYcCWpB+fBYmP8YdyT7b//ZVT9JQX8oyI1jur1pkBPA+z7JWZgfVenAShmtwHAL0yOLvghaqRah8V0YNtI@vger.kernel.org
X-Gm-Message-State: AOJu0YzU5Ptlatwnvd+mvF83jVm9l65xxL2ZHhgVyDjVFhoG1hmYWS0Z
	bQVNFaGY21S40CeCKLuq2rhdwCLeLfhTAtCXyOgsbvRXw8iD9OAL8coHFV0ZCe5SBoE=
X-Gm-Gg: ASbGncvI27pCDs91OKqqjLLnsuackF5PUvCfeZRKlnOLSPMSIOsBL4N5OgokrppzE/a
	bJx1+V9jI7qy8jzjUBhzxp5j3iZEi3InqQFiNFtTUFuakc7YlHTA6LvwjYlVjTp6xB4n/mUhw8S
	fr+UcUnFb5cv0BWy5uVcA3ATxinbp6lngLKxq6riXkYqZ/SYDINVdmCGjPl/a+/uiIB2vx89UZz
	Qwcd2WDpcsxN9ZiTE2pFkx2RfHqBYtev5KXcb4MLu5UMbNCHlut7iPUSTN5OnYP3JL7SWHoPp7v
	3UdWx4IkzAWeNyjuhZnwxfofDt5QQbFQ3nPcT0mnrpdSSipQlpklsRjGxey8J7yZRjpk9SNBTjB
	yS+miNqey5wDizY5MtQmWLs1NO8ewtufGUk0gnDlOlQ+GEbMabj651OWT6lKTRUCBJUdb5NHIex
	kOsdikYnEoIkizANEe+ttjIQV0tBc=
X-Google-Smtp-Source: AGHT+IGSDPFEO84EzJhEbgPJhsjWHxZla1PTi6sHXxqFDlBLQOf82JsJ+IxGsLOGZ+ItlsDEYbcmgA==
X-Received: by 2002:a05:600c:1913:b0:475:d7b8:8505 with SMTP id 5b1f17b1804b1-47717e7f144mr17828925e9.7.1761665542485;
        Tue, 28 Oct 2025 08:32:22 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-429952d9e80sm20844417f8f.28.2025.10.28.08.32.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Oct 2025 08:32:21 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Tue, 28 Oct 2025 16:31:55 +0100
Subject: [PATCH 06/12] dt-bindings: bluetooth: qcom,wcn3990-bt: Split to
 separate schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251028-dt-bindings-qcom-bluetooth-v1-6-524a978e3cda@linaro.org>
References: <20251028-dt-bindings-qcom-bluetooth-v1-0-524a978e3cda@linaro.org>
In-Reply-To: <20251028-dt-bindings-qcom-bluetooth-v1-0-524a978e3cda@linaro.org>
To: Marcel Holtmann <marcel@holtmann.org>, 
 Luiz Augusto von Dentz <luiz.dentz@gmail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Balakrishna Godavarthi <quic_bgodavar@quicinc.com>, 
 Rocky Liao <quic_rjliao@quicinc.com>
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 linux-bluetooth@vger.kernel.org, devicetree@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=4686;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=7rSGqGe5j/ajfYeyCLhr7KhXQYjjD+BB8KOQPiQ8lnM=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpAOH23WY7iJvjwE7kM4BwHTiBQB+VonPPkyMkp
 /njZ6hJGUeJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaQDh9gAKCRDBN2bmhouD
 184YD/9HPBaijTAfvYa3A7YrZyNE3W7JFMLrGZReWZHzu3clH2fnrrW0AlKqT3yjhD5V2+jtXQZ
 7EHBGEA+pTvz644c771GVlqTsSc3DkpaZMbJOnUjgM7/5AcJfh8E/DR0UrgCrIO1rkkGnuyCGCq
 vR2XP56gAI1amgMKp+bKPwS5Z8ZjlpnfxPKjJDVESYc++Zluj8EPJKObjYcTh+pjU+sMzIIMOYO
 htD/6xNTeqo+swnWnXaLd2PLGUTZZGsrn8Rf+4WiaWQs+Cl1b49RVAbQk1sgKSnFEFtwwmtLTax
 zFD6cCC3zOCsraWTPu6WIk0lLmaF4fT7SAD63k0VuzbgIB/vk2twldvprS6Nfdk1rWNUBwmmBaX
 zq3Uu2Ano26Jtpbobgf8Y6xp0oAXawEXPDnTyKlGDI+RAivjb9D9dgI6ddSlkpPJ/I9EWvweIhE
 CXd3Fw1lJg/EbJpDYuz5i8qwWozZlB3ZaU+os39+HiG20d/wVgV7ahA1wQvxuuLwtbPq6Wkzjy5
 N67Pf6UmLvfA/VcTp1Z9jLW4gvQRpmi8lRl7NfObbB4Zb8f0g5oclbEDRPMi6U84TV1BtIfZ3UL
 gqp3qUFjMsfT1FSxHtwa1bZ/JZpNhNjG4fokQktUr3xofX9H1mamYbxJMnnokERPlwzEC0mdiIg
 7YqpXCAJfuVciFQ==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

One big Qualcomm Bluetooth schema is hardly manageable: it lists all
possible properties (19 supplies).  Split qcom,wcn3990-bt to separate
bindings, so device schema will be easier to read/maintain and list only
relevant properties.

This binding is very similar to qcom,wcn3950-bt, however devices have
additional VDD_CH1 supply.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../bindings/net/bluetooth/qcom,wcn3990-bt.yaml    | 66 ++++++++++++++++++++++
 .../bindings/net/bluetooth/qualcomm-bluetooth.yaml | 40 -------------
 2 files changed, 66 insertions(+), 40 deletions(-)

diff --git a/Documentation/devicetree/bindings/net/bluetooth/qcom,wcn3990-bt.yaml b/Documentation/devicetree/bindings/net/bluetooth/qcom,wcn3990-bt.yaml
new file mode 100644
index 000000000000..89ceb1f7def0
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/bluetooth/qcom,wcn3990-bt.yaml
@@ -0,0 +1,66 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/net/bluetooth/qcom,wcn3990-bt.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm WCN3990/WCN3991/WCN3998 Bluetooth
+
+maintainers:
+  - Balakrishna Godavarthi <quic_bgodavar@quicinc.com>
+  - Rocky Liao <quic_rjliao@quicinc.com>
+
+properties:
+  compatible:
+    enum:
+      - qcom,wcn3990-bt
+      - qcom,wcn3991-bt
+      - qcom,wcn3998-bt
+
+  clocks:
+    items:
+      - description: External low-power 32.768 kHz clock input
+
+  vddch0-supply:
+    description: VDD_CH0 supply regulator handle
+
+  vddch1-supply:
+    description: VDD_CH1 supply regulator handle
+
+  vddio-supply:
+    description: VDD_IO supply regulator handle
+
+  vddrf-supply:
+    description: VDD_RF supply regulator handle
+
+  vddxo-supply:
+    description: VDD_XO supply regulator handle
+
+required:
+  - compatible
+  - vddch0-supply
+  - vddio-supply
+  - vddrf-supply
+  - vddxo-supply
+
+allOf:
+  - $ref: bluetooth-controller.yaml#
+  - $ref: qcom,bluetooth-common.yaml
+  - $ref: /schemas/serial/serial-peripheral-props.yaml#
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    serial {
+        bluetooth {
+            compatible = "qcom,wcn3990-bt";
+            firmware-name = "crnv21.bin";
+            max-speed = <3200000>;
+            vddio-supply = <&vreg_s4a_1p8>;
+            vddch0-supply = <&vreg_l25a_3p3>;
+            vddch1-supply = <&vreg_l23a_3p3>;
+            vddrf-supply = <&vreg_l17a_1p3>;
+            vddxo-supply = <&vreg_l7a_1p8>;
+        };
+    };
diff --git a/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml b/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml
index 0a532144f92e..93b5e0e38c37 100644
--- a/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml
+++ b/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml
@@ -16,9 +16,6 @@ description:
 properties:
   compatible:
     enum:
-      - qcom,wcn3990-bt
-      - qcom,wcn3991-bt
-      - qcom,wcn3998-bt
       - qcom,wcn6750-bt
       - qcom,wcn6855-bt
       - qcom,wcn7850-bt
@@ -42,15 +39,6 @@ properties:
   vddxo-supply:
     description: VDD_XO supply regulator handle
 
-  vddrf-supply:
-    description: VDD_RF supply regulator handle
-
-  vddch0-supply:
-    description: VDD_CH0 supply regulator handle
-
-  vddch1-supply:
-    description: VDD_CH1 supply regulator handle
-
   vddaon-supply:
     description: VDD_AON supply regulator handle
 
@@ -117,21 +105,6 @@ allOf:
   - $ref: bluetooth-controller.yaml#
   - $ref: /schemas/serial/serial-peripheral-props.yaml#
 
-  - if:
-      properties:
-        compatible:
-          contains:
-            enum:
-              - qcom,wcn3990-bt
-              - qcom,wcn3991-bt
-              - qcom,wcn3998-bt
-    then:
-      required:
-        - vddio-supply
-        - vddxo-supply
-        - vddrf-supply
-        - vddch0-supply
-
   - if:
       properties:
         compatible:
@@ -181,19 +154,6 @@ examples:
   - |
     serial {
 
-        bluetooth {
-            compatible = "qcom,wcn3990-bt";
-            vddio-supply = <&vreg_s4a_1p8>;
-            vddxo-supply = <&vreg_l7a_1p8>;
-            vddrf-supply = <&vreg_l17a_1p3>;
-            vddch0-supply = <&vreg_l25a_3p3>;
-            max-speed = <3200000>;
-            firmware-name = "crnv21.bin";
-        };
-    };
-  - |
-    serial {
-
         bluetooth {
             compatible = "qcom,wcn6750-bt";
             pinctrl-names = "default";

-- 
2.48.1


