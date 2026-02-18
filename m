Return-Path: <devicetree+bounces-266329-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8IHJAB+DlWlrSAIAu9opvQ
	(envelope-from <devicetree+bounces-266329-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 10:15:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 54D8C154A22
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 10:15:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1B9B83029E6A
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 09:12:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 78867336ED1;
	Wed, 18 Feb 2026 09:12:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 094B53358DB
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 09:12:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771405959; cv=none; b=XFfIs3MVeBvznEby7zajeMSKw+uJEzVANowvQatjIVrbujPcPHMQIC1Gi6xJ6IDZ2ka+yrWEovvJ6d+Wq1oxsUQIDWjrXPtmYCghMKlHgEv3KdE+mnR63A3gFPOcuq52D3orMq3Ldp34pwbB/aYeI4/4ndPsY4E+PtjciUTQJk4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771405959; c=relaxed/simple;
	bh=zL5J+FDKrUu/getBZHk/2vTPndSHgMHDcJAmkyKA8lw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=O+f6zZjpaj7zDu7o/azK3KCG6P9g63nLvSTTZLCZffFan7Ti0QUikSa/G6hU1kh0KTLkab+HRGZNE3dTBPdqEW4RzsnHTlO3zevHZ0L94GHeAkmmBkrvqbN89FSL9tTxCWerv9+ocC9d2hr90BICdGi0olkpf1xkBwut4MCGBzQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1vsdbe-0001kM-AD; Wed, 18 Feb 2026 10:12:26 +0100
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Wed, 18 Feb 2026 10:12:05 +0100
Subject: [PATCH v4 2/3] dt-bindings: display: panel: add LXD M9189A
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260218-drm-panel-ek79007ad3-v4-2-8ec448bf3ede@pengutronix.de>
References: <20260218-drm-panel-ek79007ad3-v4-0-8ec448bf3ede@pengutronix.de>
In-Reply-To: <20260218-drm-panel-ek79007ad3-v4-0-8ec448bf3ede@pengutronix.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Rouven Czerwinski <r.czerwinski@pengutronix.de>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Jessica Zhang <jesszhan0024@gmail.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>
Cc: devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 kernel@pengutronix.de, Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.3
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::54
X-SA-Exim-Mail-From: m.tretter@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[pengutronix.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,pengutronix.de,linaro.org,gmail.com,linux.intel.com,suse.de,ffwll.ch];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-266329-lists,devicetree=lfdr.de];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[m.tretter@pengutronix.de,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,pengutronix.de:mid,pengutronix.de:email,0.0.0.0:email]
X-Rspamd-Queue-Id: 54D8C154A22
X-Rspamd-Action: no action

From: Rouven Czerwinski <r.czerwinski@pengutronix.de>

The LXD M9189A is a 1024x600 MIPI-DSI panel.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
Changes in v4:
- Remove "YAML schema for" from subject line
- Make backlight a required property

Changes in v3:
- Change maintainer to Michael Tretter <m.tretter@pengutronix.de>
- Use panel-common.yaml as base
- Rename vdd-supply to power-supply

v2:
- add missing port property
- fix example to use vdd supply
found by running make dt_binding_check as suggested by the bot
- fix missing A in M9189A title
- fix compatible
found after v1 submission
---
 .../bindings/display/panel/lxd,m9189a.yaml         | 64 ++++++++++++++++++++++
 1 file changed, 64 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/lxd,m9189a.yaml b/Documentation/devicetree/bindings/display/panel/lxd,m9189a.yaml
new file mode 100644
index 000000000000..226974a4077f
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/lxd,m9189a.yaml
@@ -0,0 +1,64 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/panel/lxd,m9189a.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: LXD M9189A DSI Display Panel
+
+maintainers:
+  - Michael Tretter <m.tretter@pengutronix.de>
+
+allOf:
+  - $ref: panel-common.yaml
+
+properties:
+  compatible:
+    const: lxd,m9189a
+
+  reg:
+    maxItems: 1
+
+  standby-gpios:
+    description: GPIO used for the standby pin
+    maxItems: 1
+
+  reset-gpios: true
+  power-supply: true
+  backlight: true
+  port: true
+
+required:
+  - compatible
+  - reg
+  - standby-gpios
+  - reset-gpios
+  - power-supply
+  - backlight
+  - port
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+
+    dsi {
+      #address-cells = <1>;
+      #size-cells = <0>;
+
+      panel@0 {
+        compatible = "lxd,m9189a";
+        reg = <0>;
+        backlight = <&backlight>;
+        reset-gpios = <&gpio3 25 GPIO_ACTIVE_LOW>;
+        standby-gpios = <&gpio5 22 GPIO_ACTIVE_LOW>;
+        power-supply = <&reg_display_3v3>;
+
+        port {
+          mipi_panel_in: endpoint {
+            remote-endpoint = <&mipi_dsi_out>;
+          };
+        };
+      };
+    };

-- 
2.47.3


