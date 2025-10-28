Return-Path: <devicetree+bounces-232214-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DC4ACC1580B
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 16:37:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 55BA83BC6F4
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 15:35:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 919663491C8;
	Tue, 28 Oct 2025 15:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cykoaXZf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EEB3347FEA
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 15:32:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761665553; cv=none; b=bRNNYwL/u/akR8yxELmdgDr2uGSYQvVBOTXvbkWL6Scqt3y5HfhdKBU4ImDYoFxSr6xc5oHsWTYFk9V3Y6DHerZWZF66NjBYH3fujdJVTcecV95YxE+exYnx3ExQRodBhio9pFXXHqjDGZ9B9NP7/kvRPBjKRrCsu7RkEjkv9lw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761665553; c=relaxed/simple;
	bh=jPSqbAaZWf+nXy437xdl9lFbSrwJt4G29g2uShMe+G0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=QeNgSrppNcBlttj7IwAClFF0To1hP6LpDZ8pBkNMfgKjRviY8akahE/k9rEXrCTqvNIPCFOvMdwy+ZI1g41DSuVr6AXsBcbR1Yn0ROtT30ce4jREDXqED7qMttPBqlBl0cLiIzxs7XK27FG72zkR6huuG4OfpI7BBr8S9Q+q4n4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=cykoaXZf; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-4270a072a0bso1025912f8f.0
        for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 08:32:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761665550; x=1762270350; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AWIluFh7l+SbDGc0Ojge6hgzh47Q/bkdeBXpFh6Hrrk=;
        b=cykoaXZfh2azxdx+Lp8wP1ww5XgwGXkmqHDDQUCGhLXwyIXN0o0TrM7Jr383RALNQe
         F8SO3glow2ZPkS5NAmXebFhdKvjhmoBiauhKVX4+RjzIfTeTa4KJfmgHPO5V+uOlRCzG
         ZOZ97CcEauZd5n4PaW4gvdItD0WkUXWFMr0v4RwCdSw75ycYmhmQOEssRWcDVFT/SJ/V
         /xgApyK7MXklXb1ooTADHFHlLN6rsPaaH3rj6aix5ah9nk6lVR329p8fLLvF/uh4C+JH
         U4SWfY12Fj+EkuIO0yfIIRidlpDXNau6o773jcevFykW8oub8hToulW9W9/IjTLhylo2
         w1Ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761665550; x=1762270350;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AWIluFh7l+SbDGc0Ojge6hgzh47Q/bkdeBXpFh6Hrrk=;
        b=BJX2QIRgva8cYNyaw9Y8xLPWNP/n9GYtekOQuM5ql7vnW7vxEPMdKCRwfEeq3GXiCj
         k5xVhEf77Rbv++0mBjX+wJKTLG/fgvbYwN9LYezJLqby1AmYZdZTXOZwXnWe0R4txVjj
         tzDp0So5hSdx4cnwuhF486ohaINi7QogLYbdGx+Xkc8+zA8JOqq/Nqx8cIoLNP73C0yL
         HWVKcOb/wILWxZGZyhjm8xjANfk97jlKzMcphOMQv2kcRE59HFjN/LVLwAKvwaT+0CTh
         uq557tKQxJqJU876Jh+k4vSjwIUoFwAuStdb26+Wo31cPa+cydiabxIGkXHp5A9AO/0+
         dWCw==
X-Forwarded-Encrypted: i=1; AJvYcCV3EjpmSEcvRxgHbVWGc4lSUZnPAk1kThoZZEvNTbZfMlscImoYy3EvDXIjNvwq9CmNknd6Bif0KVc/@vger.kernel.org
X-Gm-Message-State: AOJu0Yw6NUo/cowQOphz3/v6ItgpxCTAAEoIpXXWX/dOGMtmZbbN3Wzr
	2ZfWJbXLZy9jGdpT86m5H9Gp9Ot1Rafb9b9nkMwNhpBS+A/DRTiTCAqlsDEcdUyO9Yk=
X-Gm-Gg: ASbGncvjtpwpMbEBkWo22SMkhqlykLiua4GQSY36sKgpuhPTC7PLuZrmgmAiUtqnARA
	qO149/fP5FZC+4N8e0abicoeVeGh21pSeGqK1xi/xj8n/Ab9o9Dx7zo+W8uyy72e4FiznRg4OTL
	xasN9QGccmcezc4pcLiAFt4QMUl8s3URRiXBD4jwL/o5M0ruy49BpreLawN/aTDUid2/Psm9EDB
	vxSZOIypjIoxpf0OBKnQ6wZw4Ik2Tv74DVtn811b4FdJYk6CLhggXXL4V4SalC4YFxxD3rBiKVK
	Lj6NQLwbjacejjkk0l3vs2J2H2FJeeAVg0ZbQQEwidKeWt3osO0ZIjJNnCsbfnMXTmJR5GITd2O
	HXQIeDFDQ7bt5NWpUSxCQd2m8qMiKT3BrY9SLjUIVr2l/+Cezd8yuPRS/BhQk01DbxuOog7KmK9
	wSuAIt9EjEkfQghV2s
X-Google-Smtp-Source: AGHT+IE6N+cXVDuP6XtDqTarJlsYeaHJcR5I/2UdB3NeXMfaaZg/5I0GyxX2YsoCgI2IvD5zZGUXZg==
X-Received: by 2002:a05:6000:1447:b0:426:c349:eb1d with SMTP id ffacd0b85a97d-429a7df68eemr1890960f8f.0.1761665549729;
        Tue, 28 Oct 2025 08:32:29 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-429952d9e80sm20844417f8f.28.2025.10.28.08.32.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Oct 2025 08:32:29 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Tue, 28 Oct 2025 16:32:00 +0100
Subject: [PATCH 11/12] dt-bindings: bluetooth: qcom,wcn7850-bt: Split to
 separate schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251028-dt-bindings-qcom-bluetooth-v1-11-524a978e3cda@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=4902;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=jPSqbAaZWf+nXy437xdl9lFbSrwJt4G29g2uShMe+G0=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpAOH6s501lki5GujocJptq6e0rFCleiIHXvbes
 /IoU8c3AvWJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaQDh+gAKCRDBN2bmhouD
 121rD/4q3+YhA6M0jllBek0EMuUHDfTzGQn2viOlcyrywoe21I9XTV0ld28bcOYDsnO2uwMNy1Q
 VyvisMhPDb/hZ0tDDHTDq55ec7U1fRd6JzZAln43eIG2UCY1/Lx2kBawaulytyENxPRTqkTNhiG
 R1MDlUuTuRU/yflziFejQ8eNkSYfc6z90Cp70kvGTgXtsvhF+Z+x6YX8e0C31UUqXRAvqV98m5a
 y4yEGPW88ls79v9Tpw+PpMmjbX0pN7iG3KhefQQLfQPS/BQUoGTFhbKTc1mcG0kwYmTg1Oz5d30
 pgIn1BjudyKT/DQm0Az75nkmtq7igoYau/7yi/uQIZ05EhW7chOKcRg0I1Tp3Zz/W7Rwm3bEtUe
 IS7EYt7e9gxMLLED0WkNQPLJ2ROjuQfiXgGnAY2E+dXocN8nar6dBQYbPvneLPEwh65uw1wA1BB
 VpP6eQ3cWkosy2yiOkQUczhW95Bs1Aao1/hBTeXkZL5ZR8iwnTxUlGIpVNxkI58MQjlMtfoTmTJ
 3gLbeJOiAoyLkvArSGjF788+WncT7Fdl5AC/ksK/zZZZaO9wX9occAgHEMFo66jUzFyZI+H+GzU
 Isl1NucyhH6Fkvj75TIybwyJpC2ogDLsA2sghOCUxX57hfaAgPVIAmH/+qGn3KsliHIKHK3Lwwa
 Uf6vZJ2lRCl7VYg==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

One big Qualcomm Bluetooth schema is hardly manageable: it lists all
possible properties (19 supplies).  Split qcom,wcn7850-bt to separate
bindings, so device schema will be easier to read/maintain and list only
relevant properties.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 ...ualcomm-bluetooth.yaml => qcom,wcn7850-bt.yaml} | 97 ++++++++--------------
 1 file changed, 36 insertions(+), 61 deletions(-)

diff --git a/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml b/Documentation/devicetree/bindings/net/bluetooth/qcom,wcn7850-bt.yaml
similarity index 50%
rename from Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml
rename to Documentation/devicetree/bindings/net/bluetooth/qcom,wcn7850-bt.yaml
index ff301798b50c..d2a1477380eb 100644
--- a/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml
+++ b/Documentation/devicetree/bindings/net/bluetooth/qcom,wcn7850-bt.yaml
@@ -1,18 +1,15 @@
 # SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
 %YAML 1.2
 ---
-$id: http://devicetree.org/schemas/net/bluetooth/qualcomm-bluetooth.yaml#
+$id: http://devicetree.org/schemas/net/bluetooth/qcom,wcn7850-bt.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Qualcomm Bluetooth Chips
+title: Qualcomm WCN7850 Bluetooth
 
 maintainers:
   - Balakrishna Godavarthi <quic_bgodavar@quicinc.com>
   - Rocky Liao <quic_rjliao@quicinc.com>
 
-description:
-  This binding describes Qualcomm UART-attached bluetooth chips.
-
 properties:
   compatible:
     enum:
@@ -20,92 +17,70 @@ properties:
 
   enable-gpios:
     maxItems: 1
-    description: gpio specifier used to enable chip
 
   swctrl-gpios:
     maxItems: 1
     description: gpio specifier is used to find status
                  of clock supply to SoC
-
-  clocks:
-    maxItems: 1
-    description: clock provided to the controller (SUSCLK_32KHZ)
+  vddaon-supply:
+    description: VDD_AON supply regulator handle
 
   vddio-supply:
     description: VDD_IO supply regulator handle
 
-  vddxo-supply:
-    description: VDD_XO supply regulator handle
-
-  vddaon-supply:
-    description: VDD_AON supply regulator handle
-
   vdddig-supply:
     description: VDD_DIG supply regulator handle
-
-  vddbtcmx-supply:
-    description: VDD_BT_CMX supply regulator handle
-
-  vddrfacmn-supply:
-    description: VDD_RFA_CMN supply regulator handle
-
   vddrfa0p8-supply:
     description: VDD_RFA_0P8 supply regulator handle
 
-  vddrfa1p7-supply:
-    description: VDD_RFA_1P7 supply regulator handle
-
-  vddrfa1p8-supply:
-    description: VDD_RFA_1P8 supply regulator handle
-
   vddrfa1p2-supply:
     description: VDD_RFA_1P2 supply regulator handle
 
+  vddrfa1p8-supply:
+    description: VDD_RFA_1P8 supply regulator handle
+
   vddrfa1p9-supply:
     description: VDD_RFA_1P9 supply regulator handle
 
+  vddrfacmn-supply:
+    description: VDD_RFA_CMN supply regulator handle
+
   vddwlcx-supply:
     description: VDD_WLCX supply regulator handle
 
   vddwlmx-supply:
     description: VDD_WLMX supply regulator handle
 
-  max-speed: true
-
-  firmware-name:
-    minItems: 1
-    items:
-      - description: specify the name of nvm firmware to load
-      - description: specify the name of rampatch firmware to load
-
-  local-bd-address: true
-
-  qcom,local-bd-address-broken:
-    type: boolean
-    description:
-      boot firmware is incorrectly passing the address in big-endian order
-
 required:
   - compatible
-
-additionalProperties: false
+  - vddrfacmn-supply
+  - vddaon-supply
+  - vddwlcx-supply
+  - vddwlmx-supply
+  - vddrfa0p8-supply
+  - vddrfa1p2-supply
+  - vddrfa1p8-supply
 
 allOf:
   - $ref: bluetooth-controller.yaml#
+  - $ref: qcom,bluetooth-common.yaml
   - $ref: /schemas/serial/serial-peripheral-props.yaml#
 
-  - if:
-      properties:
-        compatible:
-          contains:
-            enum:
-              - qcom,wcn7850-bt
-    then:
-      required:
-        - vddrfacmn-supply
-        - vddaon-supply
-        - vddwlcx-supply
-        - vddwlmx-supply
-        - vddrfa0p8-supply
-        - vddrfa1p2-supply
-        - vddrfa1p8-supply
+unevaluatedProperties: false
+
+examples:
+  - |
+    serial {
+        bluetooth {
+            compatible = "qcom,wcn7850-bt";
+
+            max-speed = <3200000>;
+            vddaon-supply = <&vreg_pmu_aon_0p59>;
+            vddrfa0p8-supply = <&vreg_pmu_rfa_0p8>;
+            vddrfa1p2-supply = <&vreg_pmu_rfa_1p2>;
+            vddrfa1p8-supply = <&vreg_pmu_rfa_1p8>;
+            vddrfacmn-supply = <&vreg_pmu_rfa_cmn>;
+            vddwlcx-supply = <&vreg_pmu_wlcx_0p8>;
+            vddwlmx-supply = <&vreg_pmu_wlmx_0p85>;
+        };
+    };

-- 
2.48.1


