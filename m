Return-Path: <devicetree+bounces-325940-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Va5gDtTbVWrDuQAAu9opvQ
	(envelope-from <devicetree+bounces-325940-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 08:48:52 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B7FE87519FF
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 08:48:51 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lontium.com header.s=default header.b=ViTFQ54P;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325940-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-325940-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id C38F0300B9FD
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 06:48:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0015D3E5EDC;
	Tue, 14 Jul 2026 06:48:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from out28-4.mail.aliyun.com (out28-4.mail.aliyun.com [115.124.28.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC0823E317C;
	Tue, 14 Jul 2026 06:48:39 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784011721; cv=none; b=FYml1c6fTmQX3G4SKlsE9IJqqP1nJFlvKHZsfmle1lt9QeaWy9P6mDEPSx8gfiMIDQbWx5gbjj4mR/TPV9IMvQo/8eXVfnDGkoxY3xm0B9JdpiRk62p5oZpwEMk1uuWbn9u6M9SvneGAwTBCkQk+NldOClI8o2ucTvErpm7BsuM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784011721; c=relaxed/simple;
	bh=2iLfvQF7aOR1f8DEmLClXncyP8EdqagQDvN33dGE43k=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=spiBmhJgacuQ/xqtZB0zS9vQfEsYl+07k6YiMi//l1FbKLGTKIRooB+rYXfUsIK5SDXSBRI/7vEwQsQY6/nkxEvpomza2OdCBRhzNMIoWQ5QOiQ2jnrscgOHgSHgkUnH7DqOrXlZ7PM6j8PNGBC5O5M0FpgZ+MaoRAYu4i0JehI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=lontium.com; spf=pass smtp.mailfrom=lontium.com; dkim=pass (2048-bit key) header.d=lontium.com header.i=@lontium.com header.b=ViTFQ54P; arc=none smtp.client-ip=115.124.28.4
DKIM-Signature:v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=lontium.com; s=default;
	t=1784011711; h=From:To:Subject:Date:Message-Id:MIME-Version:Content-Type;
	bh=LSn7sCnL4bgp20aLsU5JOn9LbX1gvl5Zx1d+HE2bpT0=;
	b=ViTFQ54PHmGN1i8ZiMKWV33sJ2AzoOT7K/DXZs5NMCLp1bzHv/doQLbVeMbTDKjA6Eh+o62KG9pp3Oog5lyxj3OgOKdhwEiNaGYU+dkFcQkFE2c1iek+D4FcuuSUBA0g1RXfd0KCBJ1g4EFto6jbzMNVjVH319Djs7g4cKvF1d5H2B57k4xDSolgAyG/mgSr+77odyXhYSzhfF+2cPNor4rUCX07EQJoifxSVHy7giEqMqPx/Fo/St2AE8tqRwqkYWOCRTgqUSCLkIScj3Vr/Nqyz3CYqJfjDM5es3DePy3eNrSgoBkpBhzpBVl5EzU06GAirTjB4c09Efbe3PDU6A==
X-Alimail-AntiSpam:AC=CONTINUE;BC=0.08448496|-1;BR=01201311R131ec;CH=green;DM=|CONTINUE|false|;DS=SPAM|spam_ad|0.867174-0.00121929-0.131607;FP=12538499638367315378|0|0|0|0|-1|-1|-1;HT=maildocker-contentspam033037022039;MF=syyang@lontium.com;NM=1;PH=DS;RN=25;RT=25;SR=0;TI=SMTPD_---.iKq60U9_1784011709;
Received: from DESKTOP-V2MKAT2.localdomain(mailfrom:syyang@lontium.com fp:SMTPD_---.iKq60U9_1784011709 cluster:ay29)
          by smtp.aliyun-inc.com;
          Tue, 14 Jul 2026 14:48:29 +0800
From: syyang@lontium.com
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	andrzej.hajda@intel.com,
	neil.armstrong@linaro.org,
	dmitry.baryshkov@oss.qualcomm.com,
	maarten.lankhorst@linux.intel.com,
	rfoss@kernel.org,
	mripard@kernel.org
Cc: Laurent.pinchart@ideasonboard.com,
	tzimmermann@suse.de,
	jonas@kwiboo.se,
	jernej.skrabec@gmail.com,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	xmzhu@lontium.corp-partner.google.com,
	xmzhu@lontium.com,
	rlyu@lontium.com,
	xbpeng@lontium.com,
	qdchen@lontium.com,
	llzhang@lontium.com,
	hfxia@lontium.com,
	Sunyun Yang <syyang@lontium.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH v15 1/2] dt-bindings: bridge: Add Lontium LT7911EXC eDP to MIPI DSI bridge
Date: Tue, 14 Jul 2026 14:48:21 +0800
Message-Id: <20260714064822.2753289-2-syyang@lontium.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260714064822.2753289-1-syyang@lontium.com>
References: <20260714064822.2753289-1-syyang@lontium.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_ALLOW(-0.20)[lontium.com:s=default];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:andrzej.hajda@intel.com,m:neil.armstrong@linaro.org,m:dmitry.baryshkov@oss.qualcomm.com,m:maarten.lankhorst@linux.intel.com,m:rfoss@kernel.org,m:mripard@kernel.org,m:Laurent.pinchart@ideasonboard.com,m:tzimmermann@suse.de,m:jonas@kwiboo.se,m:jernej.skrabec@gmail.com,m:devicetree@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:xmzhu@lontium.corp-partner.google.com,m:xmzhu@lontium.com,m:rlyu@lontium.com,m:xbpeng@lontium.com,m:qdchen@lontium.com,m:llzhang@lontium.com,m:hfxia@lontium.com,m:syyang@lontium.com,m:krzysztof.kozlowski@oss.qualcomm.com,m:krzk@kernel.org,m:conor@kernel.org,m:jernejskrabec@gmail.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[lontium.com];
	RCPT_COUNT_TWELVE(0.00)[25];
	TAGGED_FROM(0.00)[bounces-325940-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[syyang@lontium.com,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[syyang@lontium.com,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FREEMAIL_CC(0.00)[ideasonboard.com,suse.de,kwiboo.se,gmail.com,vger.kernel.org,lists.freedesktop.org,lontium.corp-partner.google.com,lontium.com,oss.qualcomm.com];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DKIM_TRACE(0.00)[lontium.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url,qualcomm.com:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,lontium.com:from_mime,lontium.com:mid,lontium.com:email,lontium.com:dkim,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B7FE87519FF

From: Sunyun Yang <syyang@lontium.com>

This commit adds the device tree binding schema for the Lontium LT7911EXC.
This device is an I2C-controlled bridge that converts eDP 1.4 input to MIPI
DSI output.

Signed-off-by: Sunyun Yang <syyang@lontium.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 .../display/bridge/lontium,lt7911exc.yaml     | 89 +++++++++++++++++++
 1 file changed, 89 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/bridge/lontium,lt7911exc.yaml

diff --git a/Documentation/devicetree/bindings/display/bridge/lontium,lt7911exc.yaml b/Documentation/devicetree/bindings/display/bridge/lontium,lt7911exc.yaml
new file mode 100644
index 000000000..3290b10ce
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/bridge/lontium,lt7911exc.yaml
@@ -0,0 +1,89 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/bridge/lontium,lt7911exc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Lontium LT7911EXC eDP to MIPI DSI Bridge
+
+maintainers:
+  - Sunyun Yang <syyang@lontium.com>
+
+properties:
+  compatible:
+    enum:
+      - lontium,lt7911exc
+
+  reg:
+    maxItems: 1
+
+  reset-gpios:
+    maxItems: 1
+    description: GPIO connected to RST_ pin.
+
+  vdd-supply:
+    description: Regulator for 1.2V MIPI phy power.
+
+  vcc-supply:
+    description: Regulator for 3.3V IO power.
+
+  ports:
+    $ref: /schemas/graph.yaml#/properties/ports
+
+    properties:
+      port@0:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: Video port for eDP input.
+
+      port@1:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: Video port for MIPI DSI output.
+
+    required:
+      - port@0
+      - port@1
+
+required:
+  - compatible
+  - reg
+  - reset-gpios
+  - vdd-supply
+  - vcc-supply
+  - ports
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        mipi-bridge@41 {
+            compatible = "lontium,lt7911exc";
+            reg = <0x41>;
+            reset-gpios = <&gpy8 8 GPIO_ACTIVE_LOW>;
+            vdd-supply = <&lt7911exc_1v2>;
+            vcc-supply = <&lt7911exc_3v3>;
+
+            ports {
+                #address-cells = <1>;
+                #size-cells = <0>;
+
+                port@0 {
+                    reg = <0>;
+                    bridge_in: endpoint {
+                        remote-endpoint = <&edp_out>;
+                    };
+                };
+
+                port@1 {
+                    reg = <1>;
+                    bridge_out: endpoint {
+                        remote-endpoint = <&panel_in>;
+                    };
+                };
+            };
+        };
+    };
-- 
2.34.1


