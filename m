Return-Path: <devicetree+bounces-274913-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iCA6MWazs2lYZwAAu9opvQ
	(envelope-from <devicetree+bounces-274913-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 07:49:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B94527E527
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 07:49:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4F08630965E1
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 06:47:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B572286417;
	Fri, 13 Mar 2026 06:47:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ite.com.tw header.i=@ite.com.tw header.b="Fmx/+zUC"
X-Original-To: devicetree@vger.kernel.org
Received: from ironport.ite.com.tw (hc210-202-87-179.vdslpro.static.apol.com.tw [210.202.87.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65565316199;
	Fri, 13 Mar 2026 06:47:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=210.202.87.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773384470; cv=none; b=a6PD5ryExH1Y4v4wANmouMvL6pgNq2nqZkUsrbAJjC5/uznC4MQwn+s8klbyLJR/Cl3BBX7EhQWjqFKAlChoFgiQl/pkGzPouhTVkxqUsKUheosugAyH+MwVJqmxosCH74WWrNIzPn9DrijLAImOFPLFs2YO/HSmy+maZ4eWFwI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773384470; c=relaxed/simple;
	bh=oBifDU7mLKOesPNyG7znWlQ2If9yn/17LAjt9waNjco=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-ID:References:
	 In-Reply-To:To:CC; b=tSytgazzXevODboqjRw0ARHNthGjOSup6AeQKb81F9fiH7o/qqM/xdc80BYkqzYPZ40pteYWpo/TVtn/zjsMqfXNZaWAw13ilKpo3vhz9H8HbpmqgFMS4NEtlBTIMo7/ePVEQeNR4s1a05mpIuPibDn6rVC1NptnpgDrvDKBIks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ite.com.tw; spf=pass smtp.mailfrom=ite.com.tw; dkim=pass (2048-bit key) header.d=ite.com.tw header.i=@ite.com.tw header.b=Fmx/+zUC; arc=none smtp.client-ip=210.202.87.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ite.com.tw
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ite.com.tw
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=ite.com.tw; s=dkim;
  h=from:date:subject:mime-version:content-transfer-encoding:
   message-id:references:in-reply-to:to:cc;
  bh=i7RnpqRvawSo3DqBTVo6ZvZS6LJscOrdXdLnf/uqkyY=;
  b=Fmx/+zUCubUZ2xIIfzdTcF7NDZQgh7jtMPwbbpWRJGcolMhK/O37Lcj1
   r1Z11+V7NUkoSvkfda0/QFtSif5Q827MdFdLj02Z6DmidZj0609WH4bmx
   Qr+ObCHoaK0MMzYl2SCJSMXU5xeBh2cOCEe8Iw5IHl65miyOTVfFWYF+R
   9rvuUjSlBUnhewPd/t/hZlreIloo+qJnfXBbo6viWFIyeEsXQ+JhTwzqk
   OzYKJaOyp301CGIg1H4aPTVz/tQEjN3uWy8dDWOwDnb21xiJNZTAdr4mJ
   dHXUzMA79uvTR0M2WWFQHcF1n7LstQN0nbnl06jblEyf8rm6hZ74FQ3Nq
   g==;
X-CSE-ConnectionGUID: Uwp5HlQ6S6iz9Gas0Z4eAw==
X-CSE-MsgGUID: 14bhhvvVRHmqqoNAGfMvMQ==
Received: from unknown (HELO mse.ite.com.tw) ([192.168.35.30])
  by ironport.ite.com.tw with ESMTP; 13 Mar 2026 14:42:17 +0800
Received: from CSBMAIL1.internal.ite.com.tw (CSBMAIL2.internal.ite.com.tw [192.168.65.41])
	by mse.ite.com.tw with ESMTP id 62D6lQWe021152;
	Fri, 13 Mar 2026 14:47:26 +0800 (+08)
	(envelope-from Pet.Weng@ite.com.tw)
Received: from [127.0.1.1] (192.168.72.40) by CSBMAIL2.internal.ite.com.tw
 (192.168.65.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.35; Fri, 13 Mar
 2026 14:47:25 +0800
From: Pet Weng <pet.weng@ite.com.tw>
Date: Fri, 13 Mar 2026 14:48:15 +0800
Subject: [PATCH v7 1/2] dt-binding: display: Add ITE IT61620 MIPI DSI to
 HDMI bridge
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20260313-it61620-0714-v7-1-36a16dc036d6@ite.com.tw>
References: <20260313-it61620-0714-v7-0-36a16dc036d6@ite.com.tw>
In-Reply-To: <20260313-it61620-0714-v7-0-36a16dc036d6@ite.com.tw>
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
        Pin-yen Lin <treapking@google.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773384526; l=4518;
 i=pet.weng@ite.com.tw; s=20250702; h=from:subject:message-id;
 bh=oBifDU7mLKOesPNyG7znWlQ2If9yn/17LAjt9waNjco=;
 b=nZ7Lz2GIaBDBO/vSaFYmgQIQhYyyq8EKtoXFLM0DdRHypAadkyZRHqJaFG35RPitzzyLMLbWp
 K66IGiWTPsLBo9NQahzvVXHvFy4OZ/ih6jzT/BBWQAjoAg37/0CBwHS
X-Developer-Key: i=pet.weng@ite.com.tw; a=ed25519;
 pk=wd08uBtTLb93x2ixbKVNsxiZPdMh1Ov4z5klodh2bqo=
X-ClientProxiedBy: CSBMAIL1.internal.ite.com.tw (192.168.65.58) To
 CSBMAIL2.internal.ite.com.tw (192.168.65.41)
X-TM-SNTS-SMTP:
	56AC3DAC7D7491A80161A9E6500EB93FC3B8103FBC1F54454EE959CD0B2B00BB2002:8
X-MAIL:mse.ite.com.tw 62D6lQWe021152
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[ite.com.tw,quarantine];
	R_DKIM_ALLOW(-0.20)[ite.com.tw:s=dkim];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-274913-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[intel.com,linaro.org,kernel.org,ideasonboard.com,kwiboo.se,gmail.com,linux.intel.com,suse.de,ffwll.ch];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[pet.weng@ite.com.tw,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[ite.com.tw:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,qualcomm.com:email,0.0.0.2:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.0.0.58:email,devicetree.org:url,ite.com.tw:dkim,ite.com.tw:email,ite.com.tw:mid,0.0.0.1:email]
X-Rspamd-Queue-Id: 2B94527E527
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This chip receives MIPI DSI input and outputs HDMI, and is commonly
connected to SoCs via I2C and DSI.

Signed-off-by: Pet Weng <pet.weng@ite.com.tw>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 .../bindings/display/bridge/ite,it61620.yaml       | 142 +++++++++++++++++++++
 1 file changed, 142 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/bridge/ite,it61620.yaml b/Documentation/devicetree/bindings/display/bridge/ite,it61620.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..e195d192f6b1a2d092b3745e3e7f62b8b1d2d8ce
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/bridge/ite,it61620.yaml
@@ -0,0 +1,142 @@
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


