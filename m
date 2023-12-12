Return-Path: <devicetree+bounces-24342-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 81A6F80EC7B
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 13:49:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 384571F213AF
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 12:49:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E868060EDE;
	Tue, 12 Dec 2023 12:49:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=trvn.ru header.i=@trvn.ru header.b="JQYGOOYg"
X-Original-To: devicetree@vger.kernel.org
Received: from box.trvn.ru (box.trvn.ru [194.87.146.52])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B8BD995;
	Tue, 12 Dec 2023 04:49:24 -0800 (PST)
Received: from authenticated-user (box.trvn.ru [194.87.146.52])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	by box.trvn.ru (Postfix) with ESMTPSA id AE65B408EF;
	Tue, 12 Dec 2023 17:49:20 +0500 (+05)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=trvn.ru; s=mail;
	t=1702385361; bh=5lfenQWG5jWj1jTDgzI/1GBibHKLme6kh2jBSQhc9Ow=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=JQYGOOYgVgL5Ls2K40NUDnfoMskHclVIGEAkDxNFwsvZ40Qpk/Pk4P9cHxvLF0JUu
	 w3u4+Y/EYmzuZ6IoCcVjpnZkB74KNTUBsRQgB+yMjv/LmvgNGUHZnsTgJPej55Hc2i
	 Qytha1aBJkKD9AjDwrluHzwn19rCazvVSSK2xGaeHB6ODkGVITwyz9QwGXJUIIvPhL
	 ZcRPpxWN3cc/O3gTNZ4c/eq1QQr2aUf65tZfAaqGisGTLXCMevk1oyMPxrqR9nugmX
	 sKqjhGrdPW/q3+N9nD41hQFcPj3EmIn8HXdHTKmbLLcNSvKnNzzWRne415Wv80B8ax
	 +E2r3rVwnPd2A==
From: Nikita Travkin <nikita@trvn.ru>
Date: Tue, 12 Dec 2023 17:49:09 +0500
Subject: [PATCH v2 1/3] dt-bindings: power: supply: Add Acer Aspire 1 EC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231212-aspire1-ec-v2-1-ca495ea0a7ac@trvn.ru>
References: <20231212-aspire1-ec-v2-0-ca495ea0a7ac@trvn.ru>
In-Reply-To: <20231212-aspire1-ec-v2-0-ca495ea0a7ac@trvn.ru>
To: Sebastian Reichel <sre@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, cros-qcom-dts-watchers@chromium.org, 
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: linux-pm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 Nikita Travkin <nikita@trvn.ru>
X-Developer-Signature: v=1; a=openpgp-sha256; l=2327; i=nikita@trvn.ru;
 h=from:subject:message-id; bh=5lfenQWG5jWj1jTDgzI/1GBibHKLme6kh2jBSQhc9Ow=;
 b=owEBbQKS/ZANAwAIAUMc7O4oGb91AcsmYgBleFbOjfFUH/atD8/Q7hqD0SCBTokxuATYnZsNj
 kYfRQOgAr6JAjMEAAEIAB0WIQTAhK9UUj+qg34uxUdDHOzuKBm/dQUCZXhWzgAKCRBDHOzuKBm/
 dQ2lD/9rJUv6yEjOMgUkB93/svL4764VhNSAnYxcE4mMG2FZ/VsWfNcZGBhTuSi0avMaEfPwrNF
 EujPjK8n5CEXJviNl92QCUzl8g8Qfh/c0FDahb/UWCUzX5HMUAm0XGlidr88ZQrGS8U+qnllSaZ
 kuQI4ANho7763/upAWfr/cfedGiXHQyRnmnBEJaCiSDn9t/xbQiDv/vFiF0GYoJ7SMF7EUiI3zf
 SxsmQp3ZLD2ME2orLuy8NlFTvTJRNkz0Npu1iGU9oPUCiQbImkqhRr2NIQyb8PsxiV2LrFUwLdG
 Gykpxgqyk6OWka6I8IexWEFJUhDmsrY9D3AGmRuTBx13Zz4j+N/O7NsEo61uR1N4pwVVlu5tHy4
 6+H30q+z5bBVgyq4bugISa6OxROpK1z88F0DYQIythtbBecjzvWb+4oMKyccFQmay3CicIFwBP4
 rYpWIXqvGkNRN0tinpORacHnn8CQnP2zRUk9aY8RNta4JJ454XbcKel54P0kYdhM8Eb/ZMdrIHN
 B7sDidJkJSytqq0VZKHNMddkd7bVAxPASaOTyyGDMPqnglOk+WNiV5dT0DmFdy54mTzmnThDD8N
 ip4R8LNxUu7JoDV7pV+t78y03wCe/08cJA589hNkBbaHha74mR1Y/3xra0gW9j7VtbLbtM+rWrZ
 X8b8042GY8jRi6A==
X-Developer-Key: i=nikita@trvn.ru; a=openpgp;
 fpr=C084AF54523FAA837E2EC547431CECEE2819BF75

Add binding for the EC found in the Acer Aspire 1 laptop.

Signed-off-by: Nikita Travkin <nikita@trvn.ru>
---
 .../bindings/power/supply/acer,aspire1-ec.yaml     | 67 ++++++++++++++++++++++
 1 file changed, 67 insertions(+)

diff --git a/Documentation/devicetree/bindings/power/supply/acer,aspire1-ec.yaml b/Documentation/devicetree/bindings/power/supply/acer,aspire1-ec.yaml
new file mode 100644
index 000000000000..1fbf1272a00f
--- /dev/null
+++ b/Documentation/devicetree/bindings/power/supply/acer,aspire1-ec.yaml
@@ -0,0 +1,67 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/power/supply/acer,aspire1-ec.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Acer Aspire 1 Embedded Controller
+
+maintainers:
+  - Nikita Travkin <nikita@trvn.ru>
+
+description:
+  The Acer Aspire 1 laptop uses an embedded controller to control battery
+  and charging as well as to provide a set of misc features such as the
+  laptop lid status and HPD events for the USB Type-C DP alt mode.
+
+properties:
+  compatible:
+    const: acer,aspire1-ec
+
+  reg:
+    const: 0x76
+
+  interrupts:
+    maxItems: 1
+
+  acer,media-keys-on-top:
+    description: Configure the keyboard layout to use media features of
+      the fn row when the fn key is not pressed. The firmware may choose
+      to add this property when user selects the fn mode in the firmware
+      setup utility.
+    type: boolean
+
+  connector:
+    $ref: /schemas/connector/usb-connector.yaml#
+
+required:
+  - compatible
+  - reg
+  - interrupts
+
+additionalProperties: false
+
+examples:
+  - |+
+    #include <dt-bindings/interrupt-controller/irq.h>
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        embedded-controller@76 {
+            compatible = "acer,aspire1-ec";
+            reg = <0x76>;
+
+            interrupts-extended = <&tlmm 30 IRQ_TYPE_LEVEL_LOW>;
+
+            connector {
+                compatible = "usb-c-connector";
+
+                port {
+                    ec_dp_in: endpoint {
+                        remote-endpoint = <&mdss_dp_out>;
+                    };
+                };
+            };
+        };
+    };

-- 
2.43.0


