Return-Path: <devicetree+bounces-2408-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EB877AAB4D
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 10:01:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 1F4BD1C20A7B
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 08:01:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A904F1DDC6;
	Fri, 22 Sep 2023 08:01:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 923351DA3A;
	Fri, 22 Sep 2023 08:01:23 +0000 (UTC)
Received: from relay8-d.mail.gandi.net (relay8-d.mail.gandi.net [IPv6:2001:4b98:dc4:8::228])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6E4B11BF;
	Fri, 22 Sep 2023 01:01:05 -0700 (PDT)
Received: by mail.gandi.net (Postfix) with ESMTPA id 5B67F1BF225;
	Fri, 22 Sep 2023 08:01:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1695369664;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=MSvbXygYAh+RODIBOh2pAtxN+DZ+xbbPMsxkxDyfCO4=;
	b=dbxArdFoPp+PpdSumrkgyt5eH/0uv+iI1cG8O0AIr61KOCp3TsZPqFpKDxjUiDbzbiMzKw
	pwIIn+Kv7MIMxn7UsKBjRAYSu6mMtpdZrUN5X+6DrqlfM27Dz78g+zfdKAVHGKqV9FHKYs
	y/fO2XSZjplWaP6V5Flgod+085jZ9YRXyrf4eNVf3JOOgLg6BkBOQ+7R0UnVu4FTRXsbEg
	2rmYaFx3Z59LVgocuRnoS2jJ6km0KP2P6vmiZ5OuXAY+clpNbRMs06EC8kJCrfzDa/EvuB
	a4jmkgK6Fh7bvjQhypSqHEpMeJHYvzKPoZDQJRcP2ZZTofQEWyrQpMzeVxA6rg==
From: Herve Codina <herve.codina@bootlin.com>
To: Herve Codina <herve.codina@bootlin.com>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Andrew Lunn <andrew@lunn.ch>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Lee Jones <lee@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Qiang Zhao <qiang.zhao@nxp.com>,
	Li Yang <leoyang.li@nxp.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	Shengjiu Wang <shengjiu.wang@gmail.com>,
	Xiubo Li <Xiubo.Lee@gmail.com>,
	Fabio Estevam <festevam@gmail.com>,
	Nicolin Chen <nicoleotsuka@gmail.com>,
	Christophe Leroy <christophe.leroy@csgroup.eu>,
	Randy Dunlap <rdunlap@infradead.org>
Cc: netdev@vger.kernel.org,
	linuxppc-dev@lists.ozlabs.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	alsa-devel@alsa-project.org,
	Simon Horman <horms@kernel.org>,
	Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: [PATCH v6 25/30] dt-bindings: net: Add the Lantiq PEF2256 E1/T1/J1 framer
Date: Fri, 22 Sep 2023 09:59:00 +0200
Message-ID: <20230922075913.422435-26-herve.codina@bootlin.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230922075913.422435-1-herve.codina@bootlin.com>
References: <20230922075913.422435-1-herve.codina@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-GND-Sasl: herve.codina@bootlin.com
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_PASS,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

The Lantiq PEF2256 is a framer and line interface component designed to
fulfill all required interfacing between an analog E1/T1/J1 line and the
digital PCM system highway/H.100 bus.

Signed-off-by: Herve Codina <herve.codina@bootlin.com>
Reviewed-by: Christophe Leroy <christophe.leroy@csgroup.eu>
---
 .../bindings/net/lantiq,pef2256.yaml          | 214 ++++++++++++++++++
 1 file changed, 214 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/net/lantiq,pef2256.yaml

diff --git a/Documentation/devicetree/bindings/net/lantiq,pef2256.yaml b/Documentation/devicetree/bindings/net/lantiq,pef2256.yaml
new file mode 100644
index 000000000000..fecb03855155
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/lantiq,pef2256.yaml
@@ -0,0 +1,214 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/net/lantiq,pef2256.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Lantiq PEF2256
+
+maintainers:
+  - Herve Codina <herve.codina@bootlin.com>
+
+description:
+  The Lantiq PEF2256, also known as Infineon PEF2256 or FALC56, is a framer and
+  line interface component designed to fulfill all required interfacing between
+  an analog E1/T1/J1 line and the digital PCM system highway/H.100 bus.
+
+properties:
+  compatible:
+    items:
+      - const: lantiq,pef2256
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: Master Clock
+      - description: System Clock Receive
+      - description: System Clock Transmit
+
+  clock-names:
+    items:
+      - const: mclk
+      - const: sclkr
+      - const: sclkx
+
+  interrupts:
+    maxItems: 1
+
+  reset-gpios:
+    description:
+      GPIO used to reset the device.
+    maxItems: 1
+
+  pinctrl:
+    $ref: /schemas/pinctrl/pinctrl.yaml#
+    additionalProperties: false
+
+    patternProperties:
+      '-pins$':
+        type: object
+        $ref: /schemas/pinctrl/pinmux-node.yaml#
+        additionalProperties: false
+
+        properties:
+          pins:
+            enum: [ RPA, RPB, RPC, RPD, XPA, XPB, XPC, XPD ]
+
+          function:
+            enum: [ SYPR, RFM, RFMB, RSIGM, RSIG, DLR, FREEZE, RFSP, LOS,
+                    SYPX, XFMS, XSIG, TCLK, XMFB, XSIGM, DLX, XCLK, XLT,
+                    GPI, GPOH, GPOL ]
+
+        required:
+          - pins
+          - function
+
+  lantiq,data-rate-bps:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    enum: [2048000, 4096000, 8192000, 16384000]
+    default: 2048000
+    description:
+      Data rate (bit per seconds) on the system highway.
+
+  lantiq,clock-falling-edge:
+    $ref: /schemas/types.yaml#/definitions/flag
+    description:
+      Data is sent on falling edge of the clock (and received on the rising
+      edge). If 'clock-falling-edge' is not present, data is sent on the
+      rising edge (and received on the falling edge).
+
+  lantiq,channel-phase:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    enum: [0, 1, 2, 3, 4, 5, 6, 7]
+    default: 0
+    description: |
+      The pef2256 delivers a full frame (32 8-bit time-slots in E1 and 24 8-bit
+      time-slots 8 8-bit signaling in E1/J1) every 125us. This lead to a data
+      rate of 2048000 bit/s. When lantiq,data-rate-bps is more than 2048000
+      bit/s, the data (all 32 8-bit) present in the frame are interleave with
+      unused time-slots. The lantiq,channel-phase property allows to set the
+      correct alignment of the interleave mechanism.
+      For instance, suppose lantiq,data-rate-bps = 8192000 (ie 4*2048000), and
+      lantiq,channel-phase = 2, the interleave schema with unused time-slots
+      (nu) and used time-slots (XX) for TSi is
+        nu nu XX nu nu nu XX nu nu nu XX nu
+        <-- TSi --> <- TSi+1 -> <- TSi+2 ->
+      With lantiq,data-rate-bps = 8192000, and lantiq,channel-phase = 1, the
+      interleave schema is
+        nu XX nu nu nu XX nu nu nu XX nu nu
+        <-- TSi --> <- TSi+1 -> <- TSi+2 ->
+      With lantiq,data-rate-bps = 4096000 (ie 2*2048000), and
+      lantiq,channel-phase = 1, the interleave schema is
+        nu    XX    nu    XX    nu    XX
+        <-- TSi --> <- TSi+1 -> <- TSi+2 ->
+
+patternProperties:
+  '^codec(-([0-9]|[1-2][0-9]|3[0-1]))?$':
+    type: object
+    $ref: /schemas/sound/dai-common.yaml
+    unevaluatedProperties: false
+    description:
+      Codec provided by the pef2256. This codec allows to use some of the PCM
+      system highway time-slots as audio channels to transport audio data over
+      the E1/T1/J1 lines.
+      The time-slots used by the codec must be set and so, the properties
+      'dai-tdm-slot-num', 'dai-tdm-slot-width', 'dai-tdm-slot-tx-mask' and
+      'dai-tdm-slot-rx-mask' must be present in the sound card node for
+      sub-nodes that involve the codec. The codec uses 8-bit time-slots.
+      'dai-tdm-tdm-slot-with' must be set to 8.
+      The tx and rx masks define the pef2256 time-slots assigned to the codec.
+
+    properties:
+      compatible:
+        const: lantiq,pef2256-codec
+
+      '#sound-dai-cells':
+        const: 0
+
+    required:
+      - compatible
+      - '#sound-dai-cells'
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - interrupts
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+
+    pef2256: framer@2000000 {
+      compatible = "lantiq,pef2256";
+      reg = <0x2000000 0x100>;
+      interrupts = <8 IRQ_TYPE_LEVEL_LOW>;
+      interrupt-parent = <&intc>;
+      clocks = <&clk_mclk>, <&clk_sclkr>, <&clk_sclkx>;
+      clock-names = "mclk", "sclkr", "sclkx";
+      reset-gpios = <&gpio 11 GPIO_ACTIVE_LOW>;
+      lantiq,data-rate-bps = <4096000>;
+
+      pinctrl {
+        pef2256_rpa_sypr: rpa-pins {
+          pins = "RPA";
+          function = "SYPR";
+        };
+        pef2256_xpa_sypx: xpa-pins {
+          pins = "XPA";
+          function = "SYPX";
+        };
+      };
+
+      pef2256_codec0: codec-0 {
+        compatible = "lantiq,pef2256-codec";
+        #sound-dai-cells = <0>;
+        sound-name-prefix = "PEF2256_0";
+      };
+
+      pef2256_codec1: codec-1 {
+        compatible = "lantiq,pef2256-codec";
+        #sound-dai-cells = <0>;
+        sound-name-prefix = "PEF2256_1";
+      };
+    };
+
+    sound {
+      compatible = "simple-audio-card";
+      #address-cells = <1>;
+      #size-cells = <0>;
+      simple-audio-card,dai-link@0 { /* CPU DAI1 - pef2256 codec 1 */
+        reg = <0>;
+        cpu {
+          sound-dai = <&cpu_dai1>;
+        };
+        codec {
+          sound-dai = <&pef2256_codec0>;
+          dai-tdm-slot-num = <4>;
+          dai-tdm-slot-width = <8>;
+          /* TS 1, 2, 3, 4 */
+          dai-tdm-slot-tx-mask = <0 1 1 1 1>;
+          dai-tdm-slot-rx-mask = <0 1 1 1 1>;
+        };
+      };
+      simple-audio-card,dai-link@1 { /* CPU DAI2 - pef2256 codec 2 */
+        reg = <1>;
+        cpu {
+          sound-dai = <&cpu_dai2>;
+        };
+        codec {
+          sound-dai = <&pef2256_codec1>;
+          dai-tdm-slot-num = <4>;
+          dai-tdm-slot-width = <8>;
+          /* TS 5, 6, 7, 8 */
+          dai-tdm-slot-tx-mask = <0 0 0 0 0 1 1 1 1>;
+          dai-tdm-slot-rx-mask = <0 0 0 0 0 1 1 1 1>;
+        };
+      };
+    };
-- 
2.41.0


