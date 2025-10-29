Return-Path: <devicetree+bounces-232535-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 4766DC18C13
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 08:46:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id DE5714F72BF
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 07:45:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 034F031328E;
	Wed, 29 Oct 2025 07:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="L/6nCpRE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEBE2312822
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 07:44:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761723862; cv=none; b=lQ0rx0I6B3ibsEXKup//Kk6f77OkB4tWmHWyTFNkCb7rvJzuEuM0x/7pca03mF+tiul+8JVCm4TFj9yCa3OpoiialflaFdY10dAY61GXeyaAMZ4xEM6j1BD/wO0D5XQIWwOs0byFo7EkcV146UVVl6u2QJe4HKw5vXusqTgo7P0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761723862; c=relaxed/simple;
	bh=C6Xs4Iy/5dXWOxqcFTiKo95y2jY1WWMt19mVxeHVVvw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=g8gutfEBHDZmHKFmbw5XDAzyOuDwRh7OXOdm0mwuSH7UfgFEnJh06+9ZGNYU/ZSxpemyQSYfxlITx78bdLVC2zLE3CkS9IQP2aJdk71YLnfwRSmtVSxLdS7bPnb6qpn/7Rsqh5log79npWMGrEgqkfHNocHCvS7wm7dNfzxgF6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=L/6nCpRE; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-4710c507f47so2105125e9.0
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 00:44:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761723859; x=1762328659; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KG+2/wyfujZcMdyeYaaBsTn5DxLtvxGxObtqFDsrcQg=;
        b=L/6nCpREIXtsX3Libnci/XX0LmWyWKmOWKMIFiMkJk01JSfYLTLr1sziWswTEJH5r3
         j0mu2SkPhNmqzJTS7oC9naRVQPy2zEqhgboAGz6wxI9UECWroTMIJ0Yd7Rl/KpTTVm1Q
         SLSrZa5hxxLzrXMeDOGp1YF+Ox0QUT7CCuHt63YyjtFAP9Cdt4pIL7PQ0h7ytiws/ucD
         qwDyAvKyuCCj7gh80VzTtswcTL2iZQGhooqMWPdrof1L/xtq+15Yn5klpFUR6D3Htwu6
         SJhEN7C+812higegbx+0XpYiDGaVTzdHv0WMuL9zmPiUnxefHYETTuth0gCel59Aziw+
         H3JQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761723859; x=1762328659;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KG+2/wyfujZcMdyeYaaBsTn5DxLtvxGxObtqFDsrcQg=;
        b=fgn4qstvF51WkZ3qBy0ygcqFlNphVaQ7g8nODL4OHDFaJFlmlgHe12RbEfls2EiT+W
         EVA4vqTgxMLKNUDPPti7Ev1jbfpWIwLObwE3gvJoM2KBUkAZRfZNq8R/uTCX1NZqzXM/
         uG3daioPXf48PglZWbLtYKDgErwXoCo/w9GuvwNamI7A4h7xzVdKp5JZynh1vDDnu4Cc
         KJIYHCntEnjDSmj5kr+tn0hvaQoGKyIEigsut1BwS+t3kfLzmm8ZqYamhK/nvBFz31V4
         kJAXcy5qDjyq0wqUoOVynLGbPORVSSn8DjDby4+jnKe8gTxwGO/sa90bPv/yXwkts+Nz
         CxTA==
X-Forwarded-Encrypted: i=1; AJvYcCW9bYv0VAjlQ5hOHuy7JkZTd54OualewGnwPDOjSVvtGcNZwmzjjTpamWFoOXAbROT2DZUqg3tDF6PZ@vger.kernel.org
X-Gm-Message-State: AOJu0YxVMXH89Au2nIrzjG9RzP8tkdsXJj4NHy3Z+JBuyVMG8SFkeigG
	Y7+sC/wk02xDFuBieVEymblQp7wbvE8nDN0sMJGGb4+GhzbS9z7uhuIT6VG6CkyePlg=
X-Gm-Gg: ASbGncu7Ex7SAurMttn5Hye6uCK9K9E/+1luYP9wB4tPqbCQFidbvViM/SIPwsV/zhB
	KKhYE9BRNP18ZmebSCS/Yva4my/M0WFeNHnhJ+KOvd7Gsr7kwzSMWIb1IJlVX1d0ebt1Kh67ldY
	OU/l2XE//xULdSPt1gKR97bFldpjRyJfNaJraJwGEPPZAnEnr2QNORu9Li8c/3Owyog8r1Ik0mH
	E0I8irMR0KlvPvswfaTH1ngZVo+k3av5uiHf47B7wH6gi0Ryc/3icJkYQGpDP4Kd/2Pkn3E+Yg4
	pQcLIqyzcOGzuY3YQc7fr4dSwzoRqvYna41mvZBu9e8V6CdCLss4zb3Fo1+0OmzekgegGFdLfe0
	omuVPmXZuBHRgZ2Gp0zToad2IriR0Kn34FMGF9WE24XXh6ophJoB9Z7qsvvVQGxmnUiW6QZJzIx
	Yb8ng33qBVozJWI0wL
X-Google-Smtp-Source: AGHT+IGmMEgEpLO20Eg//LXSsQTVQX4RLJbIH6elIGL0L0LQyLltSXdickUTZw3HG+2HKQQ3YI4x/Q==
X-Received: by 2002:a05:600c:8b35:b0:46e:36f9:c57e with SMTP id 5b1f17b1804b1-4771e1e868amr9794455e9.5.1761723858767;
        Wed, 29 Oct 2025 00:44:18 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-429952d5c9dsm25861146f8f.26.2025.10.29.00.44.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Oct 2025 00:44:18 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Wed, 29 Oct 2025 08:43:55 +0100
Subject: [PATCH v2 05/11] dt-bindings: bluetooth: qcom,wcn3990-bt: Split to
 separate schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251029-dt-bindings-qcom-bluetooth-v2-5-dd8709501ea1@linaro.org>
References: <20251029-dt-bindings-qcom-bluetooth-v2-0-dd8709501ea1@linaro.org>
In-Reply-To: <20251029-dt-bindings-qcom-bluetooth-v2-0-dd8709501ea1@linaro.org>
To: Marcel Holtmann <marcel@holtmann.org>, 
 Luiz Augusto von Dentz <luiz.dentz@gmail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Balakrishna Godavarthi <quic_bgodavar@quicinc.com>, 
 Rocky Liao <quic_rjliao@quicinc.com>, Bartosz Golaszewski <brgl@bgdev.pl>
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 linux-bluetooth@vger.kernel.org, devicetree@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=5052;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=C6Xs4Iy/5dXWOxqcFTiKo95y2jY1WWMt19mVxeHVVvw=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpAcXEwGL9pTvLTyM1ghtxK3H96v653G9miPmzY
 ok+O91wqt2JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaQHFxAAKCRDBN2bmhouD
 17rrEACLTLxRBk5Z2ysjy5NlC4gjnGyRtx2M9aiJWPCtF1XhaHfFSlU21aqyYVOaoamnZ5Tz6v8
 tSSmLXbh7vECwe6PBFQ6QDfdSe1rngRCc6+F+GJo5duao4QklzEY8BLFlD6qspvmSm2yxfS1OFg
 HTmsNH6OjnVLFC5CNUVc7Lw2B2iMNEUpIKKT6m0EU5ZnfMYemQhBDwY6YCWtYiIjEhD9brdCE+U
 ezU49ls/i1Cvu+Ir7L7VcOm1s5ln4cAomyveiSOJ2T756One2DqR2NVT3eW4wVal5xscnlOInmv
 GStrf8U5E/xSAMRa2HG4wufPqanjcwkt2M+UCd6r9vHxSsKG2/gjLylwz8W7z7NWql5bQg75duN
 /NgVJfYkaaEYA4t+1UptTuvwgoGqj1Ljb1VuTznTkLVpNDGTIHEGLFpyig1PJ4k0sqrExFkGDgy
 6XLQjpHLtC7VFqNRfxcPie7xOp4sU7auB+dHuoWX+ZtsHg1cwc4xflX3mvZqskRm4n8SDN7SNNn
 taJLji6Txio6Sfeecr2naUYsiU4wriaLp2v/mW5CYcVQha/uJPJ0fNsrvXNarF5U/e6UKuYEB1Z
 z9gpWK06RZHgVPWDfzuTJ0hu+nwsn1SRLPzti26kEseXW5C8IZe7uz4P86OTconQqg8VRdJ/eP9
 hvhQjL0rwbzo8+A==
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

Changes in v2:
1. Drop few supplies from qualcomm-bluetooth.yaml which are not used by
   devices left there.
---
 .../bindings/net/bluetooth/qcom,wcn3990-bt.yaml    | 66 ++++++++++++++++++++++
 .../bindings/net/bluetooth/qualcomm-bluetooth.yaml | 47 ---------------
 2 files changed, 66 insertions(+), 47 deletions(-)

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
index 82cce508e295..5581e810f08e 100644
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
@@ -32,25 +29,9 @@ properties:
     description: gpio specifier is used to find status
                  of clock supply to SoC
 
-  clocks:
-    maxItems: 1
-    description: clock provided to the controller (SUSCLK_32KHZ)
-
   vddio-supply:
     description: VDD_IO supply regulator handle
 
-  vddxo-supply:
-    description: VDD_XO supply regulator handle
-
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
 
@@ -117,21 +98,6 @@ allOf:
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
@@ -178,19 +144,6 @@ allOf:
         - vddrfa1p8-supply
 
 examples:
-  - |
-    serial {
-
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
   - |
     #include <dt-bindings/gpio/gpio.h>
     serial {

-- 
2.48.1


