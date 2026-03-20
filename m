Return-Path: <devicetree+bounces-278103-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6D+zH0n8vGn15AIAu9opvQ
	(envelope-from <devicetree+bounces-278103-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 08:50:33 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D54DF2D6CA0
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 08:50:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 45727308CBEE
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 07:50:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 212F12EC09F;
	Fri, 20 Mar 2026 07:50:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ite.com.tw header.i=@ite.com.tw header.b="Q9XpoyGA"
X-Original-To: devicetree@vger.kernel.org
Received: from ironport.ite.com.tw (hc210-202-87-179.vdslpro.static.apol.com.tw [210.202.87.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA94435AC02;
	Fri, 20 Mar 2026 07:49:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=210.202.87.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773993000; cv=none; b=KZlvQy+P7OmH5ATH3u+XP32SSXdzGjR9oduT1n94pPAvBKWqJKquBM3ALbpC2pXcHizNs04HMBz0H+xc8PyJHxTNwPCtDBTLFquSRqT/UnqgEAY3Lbul6PdpQNgZL7UkefUKBjWCxXT4EYBMarFSJqcPm15nFG7nGWcfB6tYgVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773993000; c=relaxed/simple;
	bh=6CSdJjR5+zw4J9eWO/NX4W8EA1aQ3PdFYcJsL8Vc2ME=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-ID:References:
	 In-Reply-To:To:CC; b=Io1HFhYS2UFKH08oJOK0rSCsyIY8GpJM11G3MnV4Vs3MGbYYekJxJ1hWLAbTpDWZcsY4EI9MqEHXXRlyX/SzuPuuwIO6z8Dl/jOP/PjMgD4WcVwxX6ZEod2XgQQYCR6J6jgt299BwlD7Ktwlw37PORu7OfPCev4V20J7914/e/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ite.com.tw; spf=pass smtp.mailfrom=ite.com.tw; dkim=pass (2048-bit key) header.d=ite.com.tw header.i=@ite.com.tw header.b=Q9XpoyGA; arc=none smtp.client-ip=210.202.87.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ite.com.tw
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ite.com.tw
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=ite.com.tw; s=dkim;
  h=from:date:subject:mime-version:content-transfer-encoding:
   message-id:references:in-reply-to:to:cc;
  bh=AUPYy9waq8xlLkN2HE8tB+FiLz0tWfDmK8j23h0A5yA=;
  b=Q9XpoyGAVl753dKn/jgDp4/duzzLHT+0ztgYyBB9HWC/MhpUOnQqrLh0
   C0UIXlfB9aWiE5zUmdmgCJ+dPy44AovyVSKgeM2sXIVvmI+ALd6RmGJ19
   LpSwQPzxgTj/SPnnVE8UM90pdOI1IJQz5OhmrkDX92WEfly25x2kopF59
   fucXrXpW00vvU7oo6f3JMtDGTCWbRDIGUI2b1cmQtVb8h5MDtXC4BHi9O
   MG54ePdo6D8eREcLkSEqW+BRLoL3LCXDOOhGn3JP0Ji4wJg4vx8pdfgrA
   aAzqfSWRtWuPQwtKnR7YnbiyU7s8ENHI7wGp7431bWQr0vD9SojQsN7Xy
   A==;
X-CSE-ConnectionGUID: x2EhnDTLRXmcDaxA4rR/3w==
X-CSE-MsgGUID: MjSF8I4uTuiC9aR/74mUCQ==
Received: from unknown (HELO mse.ite.com.tw) ([192.168.35.30])
  by ironport.ite.com.tw with ESMTP; 20 Mar 2026 15:44:06 +0800
Received: from hscmail1.internal.ite.com.tw (HSCMAIL2.internal.ite.com.tw [192.168.35.41])
	by mse.ite.com.tw with ESMTP id 62K7ngHB002384;
	Fri, 20 Mar 2026 15:49:42 +0800 (+08)
	(envelope-from Pet.Weng@ite.com.tw)
Received: from [127.0.1.1] (192.168.72.40) by HSCMAIL2.internal.ite.com.tw
 (192.168.35.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.37; Fri, 20 Mar
 2026 15:49:40 +0800
From: Pet Weng <pet.weng@ite.com.tw>
Date: Fri, 20 Mar 2026 15:50:41 +0800
Subject: [PATCH v8 1/2] dt-binding: display: Add ITE IT61620 MIPI DSI to
 HDMI bridge
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20260320-it61620-0714-v8-1-0e70271cf5a9@ite.com.tw>
References: <20260320-it61620-0714-v8-0-0e70271cf5a9@ite.com.tw>
In-Reply-To: <20260320-it61620-0714-v8-0-0e70271cf5a9@ite.com.tw>
To: Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong
	<neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart
	<Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej
 Skrabec <jernej.skrabec@gmail.com>,
        Maarten Lankhorst
	<maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof
 Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
CC: <dri-devel@lists.freedesktop.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, Hermes Wu <hermes.Wu@ite.com.tw>,
        Kenneth
 Hung <kenneth.Hung@ite.com.tw>,
        Pet Weng <pet.weng@ite.com.tw>,
        Jau-chih
 Tseng <jau-chih.tseng@ite.com.tw>,
        Pin-yen Lin <treapking@google.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773993069; l=5269;
 i=pet.weng@ite.com.tw; s=20250702; h=from:subject:message-id;
 bh=6CSdJjR5+zw4J9eWO/NX4W8EA1aQ3PdFYcJsL8Vc2ME=;
 b=y5lGOQzJpaUvaphg/XLsDVYxMeAX6MViAqWYss7XH2ij+TO1RgZEQkg6GHxMhwpRZMBCl2D69
 RtrxGECR/TOAyYBffIKlbQacJiQLDQpawYhaiGlRegWkoSAVIRp08LV
X-Developer-Key: i=pet.weng@ite.com.tw; a=ed25519;
 pk=wd08uBtTLb93x2ixbKVNsxiZPdMh1Ov4z5klodh2bqo=
X-ClientProxiedBy: CSBMAIL1.internal.ite.com.tw (192.168.65.58) To
 HSCMAIL2.internal.ite.com.tw (192.168.35.41)
X-TM-SNTS-SMTP:
	FA5E7E2A8DED7B1B064435D03ED0624831553CDBA75F29992351B0742A354A3C2002:8
X-MAIL:mse.ite.com.tw 62K7ngHB002384
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[ite.com.tw,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[ite.com.tw:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-278103-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[intel.com,linaro.org,kernel.org,ideasonboard.com,kwiboo.se,gmail.com,linux.intel.com,suse.de,ffwll.ch];
	RCPT_COUNT_TWELVE(0.00)[22];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[ite.com.tw:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[pet.weng@ite.com.tw,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.58:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.993];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.2:email,0.0.0.0:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,ite.com.tw:dkim,ite.com.tw:email,ite.com.tw:mid,devicetree.org:url,0.0.0.1:email]
X-Rspamd-Queue-Id: D54DF2D6CA0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This chip receives MIPI DSI input and outputs HDMI, and is commonly
connected to SoCs via I2C and DSI.

IT61620 is a variant of IT6162.
The main differences are listed below
 - IT61620 supports only a single MIPI DSI input port, while IT6162 supports
   dual MIPI DSI ports.
 - IT61620 does not include the internal MCU present in IT6162.

Because of these architectural differences, IT61620 uses a separate compatible
string even though the external interfaces and bindings are largely similar.

Signed-off-by: Pet Weng <pet.weng@ite.com.tw>
---
 .../bindings/display/bridge/ite,it61620.yaml       | 151 +++++++++++++++++++++
 1 file changed, 151 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/bridge/ite,it61620.yaml b/Documentation/devicetree/bindings/display/bridge/ite,it61620.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..8cbab1b55da9e9155dce9cf91addb8fb89382e07
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/bridge/ite,it61620.yaml
@@ -0,0 +1,151 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/bridge/ite,it61620.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: ITE IT61620 MIPI DSI to HDMI Bridge
+
+maintainers:
+  - Pet Weng <pet.weng@ite.com.tw>
+
+description: |
+  The ITE IT61620 is a high-performance, low-power HDMI bridge that converts
+  MIPI DSI input to HDMI 1.4b TMDS output. It supports up to 4 lanes of MIPI
+  D-PHY 2.0 input at 2.5Gbps per lane (10Gbps total), compatible with DSI-2
+  v2.0.
+
+  The HDMI transmitter side supports up to 4Kx2K@30Hz resolutions, and is
+  compliant with HDMI 1.4b and HDCP 1.4.
+
+  For audio, the IT61620 supports up to 8-channel LPCM via I2S (multi-line or
+  TDM mode), with optional S/PDIF or DSD (for SACD). It supports audio
+  sampling rates up to 192kHz.
+
+  IT61620 is a variant of IT6162.
+  The main differences are listed below
+  - IT61620 supports only a single MIPI DSI input port, while IT6162 supports
+    dual MIPI DSI ports.
+  - IT61620 does not include the internal MCU present in IT6162.
+
+  Because of these architectural differences, IT61620 uses a separate compatible
+  string even though the external interfaces and bindings are largely similar.
+
+allOf:
+  - $ref: /schemas/sound/dai-common.yaml#
+
+properties:
+  compatible:
+    const: ite,it61620
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  reset-gpios:
+    maxItems: 1
+
+  ivdd-supply:
+    description: core voltage
+
+  ovdd-supply:
+    description: I/O voltage
+
+  ovdd1833-supply:
+    description: flexible I/O voltage
+
+  "#sound-dai-cells":
+    const: 0
+
+  ports:
+    $ref: /schemas/graph.yaml#/properties/ports
+
+    properties:
+      port@0:
+        $ref: /schemas/graph.yaml#/$defs/port-base
+        unevaluatedProperties: false
+        description: Input port for MIPI DSI
+
+        properties:
+          endpoint:
+            $ref: /schemas/media/video-interfaces.yaml#
+            unevaluatedProperties: false
+            required:
+              - data-lanes
+
+      port@1:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: Output port for HDMI output
+
+      port@2:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: Audio input port (I2S)
+
+    required:
+      - port@0
+      - port@1
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - reset-gpios
+  - ivdd-supply
+  - ovdd-supply
+  - ovdd1833-supply
+  - ports
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        bridge@58 {
+            compatible = "ite,it61620";
+            reg = <0x58>;
+            #sound-dai-cells = <0>;
+            interrupt-parent = <&pio>;
+            interrupts = <128 IRQ_TYPE_LEVEL_LOW>;
+            pinctrl-names = "default";
+            pinctrl-0 = <&it61620_pins>;
+            reset-gpios = <&pio 127 GPIO_ACTIVE_LOW>;
+            ivdd-supply = <&pp1000_hdmi_x>;
+            ovdd-supply = <&pp3300_vio28_x>;
+            ovdd1833-supply = <&pp1800_vcamio_x>;
+
+            ports {
+                #address-cells = <1>;
+                #size-cells = <0>;
+
+                port@0 {
+                    reg = <0>;
+                    it61620_dsi_in: endpoint {
+                        data-lanes = <0 1 2 3>;
+                        remote-endpoint = <&dsi_out>;
+                    };
+                };
+
+                port@1 {
+                    reg = <1>;
+                    it61620_hdmi_out: endpoint {
+                        remote-endpoint = <&hdmi_connector_in>;
+                    };
+                };
+
+                port@2 {
+                    reg = <2>;
+                    it61620_audio_in: endpoint {
+                        remote-endpoint = <&i2s0_out>;
+                    };
+                };
+            };
+        };
+    };

-- 
2.34.1


