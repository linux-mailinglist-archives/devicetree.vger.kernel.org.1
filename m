Return-Path: <devicetree+bounces-22657-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A6D180856A
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 11:28:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4B770B21E56
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 10:28:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2267137D18;
	Thu,  7 Dec 2023 10:28:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NmsziF/p"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8F822D57
	for <devicetree@vger.kernel.org>; Thu,  7 Dec 2023 02:28:16 -0800 (PST)
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-40c256ffdbcso8080415e9.2
        for <devicetree@vger.kernel.org>; Thu, 07 Dec 2023 02:28:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701944895; x=1702549695; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LVtT1o+t0tKDmILk8gvdRnnlvPZrdnTYAkN5DRsTOpI=;
        b=NmsziF/pkb3hohTGkDd8nkEDeCcG+pDZnVgX9LyM300yfWROu6Pf+6NV/ize0lqdNX
         Gvgd/su7G5Buivb6SqahgxYEYp87Ui+JDBEXpSFVLNN2lFeXQGbMV/phLBjwmUMNMEAx
         sqHBx17nB9JT6UNggv6D46X0aw9sYjniGov6/BadEjSSHhAF0aUUtFXG0Psx+/SUmL0x
         L5SyWJdVmYh1OatS+MqWouDtAZumihgYEAelT+Hozu2chjc+Y5DgJnfWrYc67MnS/pET
         f3J2dznFK5D4yx5OgXICN/mz3B/6bu/zWHJtwbE+hhA44PNNAny5vQOFNV1OeHQF7Ar5
         Cm6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701944895; x=1702549695;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LVtT1o+t0tKDmILk8gvdRnnlvPZrdnTYAkN5DRsTOpI=;
        b=JCO4CcVsGC80ow/3VgBsKxvm4wbKNJcP2ldg04Y1f+648T3RB3iqaMUUZC//goj/sK
         3uuqaToWwXbx9rzojHTRG2ofTnoxFbIS0MuTGyw4dRs9vfVY+segUOPnY1cbeH7ikfSJ
         JWWhS4zyAyUGbW5VGmDRVkGi5kLI9vVG+zxjmksqgG3T2bzyTWoWpKLjp2ZWowJVG74I
         hJFvqNj7noNHtic6EbCcWohLPp7MWRNxQv/MxQYS/Q0YnJSCovjWdoBdmr2qT3kT50k8
         iyDqrLD8BPpqmtSBkfq0LbJQ8xb+evjUFLCwVo3yOz8vEXRohKOAR4lm4qnpKzvpiD6q
         Ra2w==
X-Gm-Message-State: AOJu0YyUpxZTCouA2kufp2+oYGCPRAFZi7t2O2gNWTIwUZg31CJ4gwEm
	sd/Id3pZaFxmv5WhfRvIK+GIag==
X-Google-Smtp-Source: AGHT+IHl+b992JPbFSXy1jgEXsS8wbOJH03yy6Hwz/Z+syis8E5TtNjY/HnCnfS/8GiMmOnwC936mg==
X-Received: by 2002:a05:600c:2147:b0:405:1c19:b747 with SMTP id v7-20020a05600c214700b004051c19b747mr1393535wml.15.1701944894844;
        Thu, 07 Dec 2023 02:28:14 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id d2-20020adfe2c2000000b003333d2c6420sm1073412wrj.74.2023.12.07.02.28.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Dec 2023 02:28:14 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Thu, 07 Dec 2023 11:28:05 +0100
Subject: [PATCH v3 2/5] ASoC: dt-bindings: document WCD939x Audio Codec
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231207-topic-sm8650-upstream-wcd939x-codec-v3-2-6df9585ec7c8@linaro.org>
References: <20231207-topic-sm8650-upstream-wcd939x-codec-v3-0-6df9585ec7c8@linaro.org>
In-Reply-To: <20231207-topic-sm8650-upstream-wcd939x-codec-v3-0-6df9585ec7c8@linaro.org>
To: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, 
 Banajit Goswami <bgoswami@quicinc.com>, Andy Gross <agross@kernel.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Jaroslav Kysela <perex@perex.cz>, 
 Takashi Iwai <tiwai@suse.com>
Cc: linux-arm-msm@vger.kernel.org, alsa-devel@alsa-project.org, 
 linux-sound@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=6511;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=0LLfLDAQFtlrB7IqgMI8aCNjNHjAX0Bhqf4tIIU1h7I=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlcZ45FXg8rU/eEYYOTsPNXmbVdk0qxIN5V6qnMyQA
 ieSdHhKJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZXGeOQAKCRB33NvayMhJ0aInD/
 9XwnFXvXDjY73jtGGcVzmSCf5pEkjxUYQ75US7BGIZRXEoNl3x/bpl2DkFWsiuKB0glPmTw0q9Zc7p
 Q98jMZ03ZLAIioMNzYyrCurfnifbnza8UURB06deZPnn5BtY3kA0mr2CuOmsfUcS5RIaT6iWXNoeDz
 f94m8I8dy9nOwDxj5BZ0s/HBIRvHSVKY2P1EcB/I1qm8ymlAkwvyK0rYbcCoFL/5HZjWPAubbmL5He
 J90quzAVhWPN78Uor3ASD8Yo0oZxii4zykBgevHKjIj9qE/nwSS6IGszpLC8tT9mTA3KTMsQ1PdmUf
 lvnghduxNbC4SA5cTdf9YXREVMC+3tYH31ewWSSZCYobb1AYipJR6PtQo0CxFki7AMyEUZ+ldihTVk
 pSH6dBwguzjO7fVE/Kf96nNmlyeRAtTcsiMTlJhWZ5dgndq4grBzR7Mxg4WHhcE+dTockS9xdkF8Hu
 zuAZ0vNvYAHROKx659D8eki36jmlxDCt2PMPr5djKz5XS5uhwMCng7HjzA2KMt3cNXc9O40FSFdHWD
 0iiN3i9DcB4WuWDMNW5orS6K76o5KgtUVbJ3NDti00n3tZde9I3pFICAtDTKXf2vyRGCAVPO2onLtG
 yMDE8R1/+YYPRBQ3cWZu5tXYBGyv60q7y/9v3DEmMK3pzjc2n5h6kJLM59YA==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Document the Qualcomm WCD9390/WCD9395 Audio Codec and the
Soundwire devices than can be found on Qualcomm SM8650 based platforms.

The Qualcomm WCD9390/WCD9395 Audio Codec communicates
with the host SoC over 2 Soundwire links to provide:
- 4 ADC inputs for up to 5 Analog Microphones
- 4 DMIC inputs for up to 8 Digital Microphones
- 4 Microphone BIAS
- Stereo Headphone output
- Mono EAR output
- MBHC engine for Headset Detection

The WCD9390/WCD9395 IC has separate I2C subsystem for USB-C
DP Altmode/Audio Accessory mode Mux which is not documented
here but requires port/endpoint graph and properties to handle
Altmode/Audio Accessory switch and orientation.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 .../bindings/sound/qcom,wcd939x-sdw.yaml           | 69 ++++++++++++++++
 .../devicetree/bindings/sound/qcom,wcd939x.yaml    | 96 ++++++++++++++++++++++
 2 files changed, 165 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/qcom,wcd939x-sdw.yaml b/Documentation/devicetree/bindings/sound/qcom,wcd939x-sdw.yaml
new file mode 100644
index 000000000000..67ed7701b5d6
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/qcom,wcd939x-sdw.yaml
@@ -0,0 +1,69 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/qcom,wcd939x-sdw.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm SoundWire devices on WCD9390/WCD9395
+
+maintainers:
+  - Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
+
+description: |
+  Qualcomm WCD9390/WCD9395 Codec is a standalone Hi-Fi audio codec IC.
+  It has RX and TX Soundwire devices. This bindings is for the devices.
+
+properties:
+  compatible:
+    const: sdw20217010e00
+
+  reg:
+    maxItems: 1
+
+  qcom,tx-port-mapping:
+    description: |
+      Specifies static port mapping between device and host tx ports.
+      In the order of the device port index.
+    $ref: /schemas/types.yaml#/definitions/uint32-array
+    minItems: 4
+    maxItems: 4
+
+  qcom,rx-port-mapping:
+    description: |
+      Specifies static port mapping between device and host rx ports.
+      In the order of device port index.
+    $ref: /schemas/types.yaml#/definitions/uint32-array
+    minItems: 6
+    maxItems: 6
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    soundwire@3210000 {
+        #address-cells = <2>;
+        #size-cells = <0>;
+        reg = <0x03210000 0x2000>;
+        wcd938x_rx: codec@0,4 {
+            compatible = "sdw20217010e00";
+            reg = <0 4>;
+            qcom,rx-port-mapping = <1 2 3 4 5 6>;
+        };
+    };
+
+    soundwire@3230000 {
+        #address-cells = <2>;
+        #size-cells = <0>;
+        reg = <0x03230000 0x2000>;
+        wcd938x_tx: codec@0,3 {
+            compatible = "sdw20217010e00";
+            reg = <0 3>;
+            qcom,tx-port-mapping = <2 3 4 5>;
+        };
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/sound/qcom,wcd939x.yaml b/Documentation/devicetree/bindings/sound/qcom,wcd939x.yaml
new file mode 100644
index 000000000000..6e76f6a8634f
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/qcom,wcd939x.yaml
@@ -0,0 +1,96 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/qcom,wcd939x.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm WCD9380/WCD9385 Audio Codec
+
+maintainers:
+  - Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
+
+description: |
+  Qualcomm WCD9390/WCD9395 Codec is a standalone Hi-Fi audio codec IC.
+  It has RX and TX Soundwire devices.
+  The WCD9390/WCD9395 IC has a functionally separate USB-C Mux subsystem
+  accessible over an I2C interface.
+  The Audio Headphone and Microphone data path between the Codec and the USB-C Mux
+  subsystems are external to the IC, thus requiring DT port-endpoint graph description
+  to handle USB-C altmode & orientation switching for Audio Accessory Mode.
+
+allOf:
+  - $ref: dai-common.yaml#
+  - $ref: qcom,wcd93xx-common.yaml#
+
+properties:
+  compatible:
+    oneOf:
+      - const: qcom,wcd9390-codec
+      - items:
+          - const: qcom,wcd9395-codec
+          - const: qcom,wcd9390-codec
+
+  mode-switch:
+    description: Flag the port as possible handler of altmode switching
+    type: boolean
+
+  orientation-switch:
+    description: Flag the port as possible handler of orientation switching
+    type: boolean
+
+  port:
+    $ref: /schemas/graph.yaml#/properties/port
+    description:
+      A port node to link the WCD939x Codec node to USB MUX subsystems for the
+      purpose of handling altmode muxing and orientation switching to detect and
+      enable Audio Accessory Mode.
+
+required:
+  - compatible
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+    codec {
+        compatible = "qcom,wcd9390-codec";
+        reset-gpios = <&tlmm 32 IRQ_TYPE_NONE>;
+        #sound-dai-cells = <1>;
+        qcom,tx-device = <&wcd939x_tx>;
+        qcom,rx-device = <&wcd939x_rx>;
+        qcom,micbias1-microvolt = <1800000>;
+        qcom,micbias2-microvolt = <1800000>;
+        qcom,micbias3-microvolt = <1800000>;
+        qcom,micbias4-microvolt = <1800000>;
+        qcom,hphl-jack-type-normally-closed;
+        qcom,ground-jack-type-normally-closed;
+        qcom,mbhc-buttons-vthreshold-microvolt = <75000 150000 237000 500000 500000 500000 500000 500000>;
+        qcom,mbhc-headphone-vthreshold-microvolt = <50000>;
+    };
+
+    /* ... */
+
+    soundwire@3210000 {
+        #address-cells = <2>;
+        #size-cells = <0>;
+        reg = <0x03210000 0x2000>;
+        wcd939x_rx: codec@0,4 {
+            compatible = "sdw20217010e00";
+            reg = <0 4>;
+            qcom,rx-port-mapping = <1 2 3 4 5 6>;
+        };
+    };
+
+    soundwire@3230000 {
+        #address-cells = <2>;
+        #size-cells = <0>;
+        reg = <0x03230000 0x2000>;
+        wcd938x_tx: codec@0,3 {
+            compatible = "sdw20217010e00";
+            reg = <0 3>;
+            qcom,tx-port-mapping = <2 3 4 5>;
+        };
+    };
+
+...

-- 
2.34.1


