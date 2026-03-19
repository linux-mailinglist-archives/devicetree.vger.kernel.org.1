Return-Path: <devicetree+bounces-277585-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WLa5CqGZu2nwlgIAu9opvQ
	(envelope-from <devicetree+bounces-277585-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 07:37:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F60E2C6DA2
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 07:37:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E86BC3049141
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 06:37:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1831834DCC8;
	Thu, 19 Mar 2026 06:37:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O1k8etpJ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E70E933E37A;
	Thu, 19 Mar 2026 06:37:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773902236; cv=none; b=GX3VhWoVZp0Mt53/+PA26Bc13BArW2P77xBu9WfIJxt9CJSGY+hNbeNRrMh9yx7H75K5kbR7RGVT4uM0Z7I69hQMoXjPUwgNPwEcUwTy6j62zvGtXFNP6rgEKhFIDD1+++4jQkE5/t7PmEKjG3fimOiQ02InuBEmtUrXyZ2Ga1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773902236; c=relaxed/simple;
	bh=AEePiLMt/qBf61VeU6enT32ObEI1G0cXzCku+1SkN3M=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=tzDpbYNQApTq2tVes38ZlTza5BmNz0l0RIDS9i4CHbHCZd6GeUSpdMtdJlRrRwmaoi4QwKKKl61W/pXszsUnahssUHMWeLXaZ2UvRqRHp9hJiSXax2eClQVqKLqFRMHm4jm0Vkc9WeDmewh3kGjTA8RzUUi6i3pYDwPOp3DtI1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O1k8etpJ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8BAB4C2BCAF;
	Thu, 19 Mar 2026 06:37:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773902235;
	bh=AEePiLMt/qBf61VeU6enT32ObEI1G0cXzCku+1SkN3M=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=O1k8etpJbNNirnZHXug5xNXptlYn3w9ermcoOQc/Je/vZy5I+ovZbqE6YZwg1ffG3
	 nWQL1/fFJCRsPEC25RleH74veA2jgPNPzohUCORlm4zNXWTPeWwx+cedsN0PdSMEpw
	 ybS0WLTiDZuPuzw6HVmoIUzCZbUImIhe8AvRtXTx6C/J8m8Slvc9du9wDpRxr8NgjE
	 SRlYkj2VDnMSGu/RRlN2YdH+jeHyNayHqtLY366BmcVrJvzLTnBUqh5GT8969H0Wij
	 z6EM/OaxOH85n3ib7GPCQLWZGvmJhXub32px0uV3rprGtECQWE/6DoImOk/M9+NAi+
	 pdlWYOdSJD1cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7C0651075264;
	Thu, 19 Mar 2026 06:37:15 +0000 (UTC)
From: Hermes Wu via B4 Relay <devnull+Hermes.wu.ite.com.tw@kernel.org>
Date: Thu, 19 Mar 2026 14:37:11 +0800
Subject: [PATCH v4 1/2] dt-bindings: display: bridge: Add ITE IT6162 MIPI
 DSI to HDMI bridge
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260319-upstream-6162-v4-1-7268483ef03d@ite.com.tw>
References: <20260319-upstream-6162-v4-0-7268483ef03d@ite.com.tw>
In-Reply-To: <20260319-upstream-6162-v4-0-7268483ef03d@ite.com.tw>
To: Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Pet.Weng@ite.com.tw, Kenneth.Hung@ite.com.tw, 
 Hermes Wu <Hermes.Wu@ite.com.tw>, dri-devel@lists.freedesktop.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Hermes Wu <Hermes.wu@ite.com.tw>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773902234; l=6238;
 i=Hermes.wu@ite.com.tw; s=20241230; h=from:subject:message-id;
 bh=gcRncCVm+FPHL8vjTiimPBkoMIEKl6Dwlw+5kIas+Sc=;
 b=KPADlWaqarQ9U5/u0b0+nTsAj3/LcAez9vpEiQZlUMeW0TFMAOQfTNHk6UkCqqdY2jQPDDyLT
 ZnvtT3T9SSuAGDLjnW1spvRTGzZ5Lepf/37TRnFYmgcBg6f69Qbo75U
X-Developer-Key: i=Hermes.wu@ite.com.tw; a=ed25519;
 pk=qho5Dawp2WWj9CGyjtJ6/Y10xH8odjRdS6SXDaDAerU=
X-Endpoint-Received: by B4 Relay for Hermes.wu@ite.com.tw/20241230 with
 auth_id=310
X-Original-From: Hermes Wu <Hermes.wu@ite.com.tw>
Reply-To: Hermes.wu@ite.com.tw
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-277585-lists,devicetree=lfdr.de,Hermes.wu.ite.com.tw];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[intel.com,linaro.org,kernel.org,ideasonboard.com,kwiboo.se,gmail.com,ffwll.ch,linux.intel.com,suse.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[Hermes.wu@ite.com.tw];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	DBL_PROHIBIT(0.00)[0.0.0.1:email,0.0.0.2:email];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.978];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[60hz:email,0.0.0.0:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.0.0.3:email,0.0.0.58:email,devicetree.org:url]
X-Rspamd-Queue-Id: 7F60E2C6DA2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Hermes Wu <Hermes.wu@ite.com.tw>

Add device tree binding documentation for the ITE IT6162 MIPI DSI to
HDMI 2.0 bridge chip. The IT6162 is an I2C-controlled bridge that
supports the following configurations:

  - Single MIPI DSI input: up to 4K @ 30Hz
  - Dual MIPI DSI input (combined): up to 4K @ 60Hz

The chip also supports up to 8-channel audio output via 4 I2S data
channels.

Signed-off-by: Hermes Wu <Hermes.wu@ite.com.tw>
---
Changes in v4:
  - Drop ite,support-hdcp
  - Drop endpoint properties already in video-interfaces.yaml
  - Fix data-lanes in example with <0 1 2 3>
  - Add blanking line in example before endpoint subnode starts
  - Add reset-gpio and power controls to required

Changes in v3:
  - Fix lane-polarities: remove $ref redefinition, allow via video-interfaces.yaml
  - Improve ite,support-hdcp description to clarify FW-based HDCP behavior
  - Remove descriptions repeating schema constraints
  - Remove stray comment in ports required section
  - Fix data-lanes spacing in example: <1 2 3 4>
  - Add missing newline at end of file
  - Add missing change log that Reviewed-by tag was drop in V2.

Changes in V2:
  - Drop Reviewed-by tag due to DT bindings changed.
  - Add property "ite,spport-hdcp" to enable HDCP
  - Add property "lane-polarities" and "clock-noncontinuous" for DSI
    setting
---
 .../bindings/display/bridge/ite,it6162.yaml        | 169 +++++++++++++++++++++
 1 file changed, 169 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/bridge/ite,it6162.yaml b/Documentation/devicetree/bindings/display/bridge/ite,it6162.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..d1d8a92825d253ecfa67cb1e793d372e4011b4d4
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/bridge/ite,it6162.yaml
@@ -0,0 +1,169 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/bridge/ite,it6162.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: ITE IT6162 MIPI DSI to HDMI 2.0 Bridge
+
+maintainers:
+  - Hermes Wu <Hermes.Wu@ite.com.tw>
+
+description: |
+  The ITE IT6162 is a high-performance, low-power HDMI bridge that converts
+  2 MIPI DSI signals to 1 HDMI 2.0 output. It supports dual MIPI D-PHY 2.0
+  links up to 10 Gbps each (20 Gbps total), compatible with DSI-2 v2.0.
+
+  The HDMI transmitter supports resolutions up to 4Kx2K@60Hz and is compliant
+  with HDMI 2.0 specifications.
+
+  For audio, it supports up to 8-channel LPCM via I2S (multi-line or TDM mode),
+  with optional S/PDIF or DSD (for SACD). Audio sampling rates up to 192 kHz
+  are supported.
+
+allOf:
+  - $ref: /schemas/sound/dai-common.yaml#
+
+properties:
+  compatible:
+    const: ite,it6162
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
+    description: Core voltage supply
+
+  ovdd-supply:
+    description: I/O voltage supply
+
+  ovdd1833-supply:
+    description: Flexible I/O voltage supply (1.8V domain)
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
+        description: Input port for MIPI DSI-0
+
+        properties:
+          endpoint:
+            $ref: /schemas/media/video-interfaces.yaml#
+            unevaluatedProperties: false
+            required:
+              - data-lanes
+
+      port@1:
+        $ref: /schemas/graph.yaml#/$defs/port-base
+        unevaluatedProperties: false
+        description: Input port for MIPI DSI-1
+
+        properties:
+          endpoint:
+            $ref: /schemas/media/video-interfaces.yaml#
+            unevaluatedProperties: false
+            required:
+              - data-lanes
+
+      port@2:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: Audio input port
+
+      port@3:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: HDMI output port
+
+    required:
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
+            compatible = "ite,it6162";
+            reg = <0x58>;
+
+            #sound-dai-cells = <0>;
+
+            interrupt-parent = <&pio>;
+            interrupts = <128 IRQ_TYPE_LEVEL_LOW>;
+
+            pinctrl-names = "default";
+            pinctrl-0 = <&it6162_pins>;
+
+            reset-gpios = <&pio 127 GPIO_ACTIVE_LOW>;
+
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
+
+                    it6162_dsi0: endpoint {
+                        data-lanes = <0 1 2 3>;
+                        remote-endpoint = <&dsi_0_out>;
+                    };
+                };
+
+                port@1 {
+                    reg = <1>;
+
+                    it6162_dsi1: endpoint {
+                        data-lanes = <0 1 2 3>;
+                        remote-endpoint = <&dsi_1_out>;
+                    };
+                };
+
+                port@2 {
+                    reg = <2>;
+
+                    it6162_audio_in: endpoint {
+                        remote-endpoint = <&i2s0_out>;
+                    };
+                };
+
+                port@3 {
+                    reg = <3>;
+
+                    it6162_hdmi_out: endpoint {
+                        remote-endpoint = <&hdmi_connector_in>;
+                    };
+                };
+            };
+        };
+    };

-- 
2.34.1



