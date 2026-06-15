Return-Path: <devicetree+bounces-311538-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id FomEEJZCL2ot9wQAu9opvQ
	(envelope-from <devicetree+bounces-311538-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 02:08:54 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id D8602682942
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 02:08:53 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=postmarketos.org header.s=key1 header.b=gEWReboa;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311538-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-311538-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=postmarketos.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 06F1C300F1B9
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 00:08:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4689D78F3A;
	Mon, 15 Jun 2026 00:08:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from out-170.mta0.migadu.com (out-170.mta0.migadu.com [91.218.175.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A24C39FCE
	for <devicetree@vger.kernel.org>; Mon, 15 Jun 2026 00:08:30 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781482112; cv=none; b=q0L1en71sRhCrfRygzAOL+CnT/V77av2cqT7rJvVkq+QDyDWPVzbFHMBCTEdZvYP+Y42txBCT4/8ISq3KjZEBWagfZpB6qx7I4UaFMK8JodxVwzTwj7VJU4A87eEyKQNpHRyPcnlCeZJL9S9mQxKnBFRiysO039nZIfmaiOUjSM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781482112; c=relaxed/simple;
	bh=Ks9/ggz0gsVtbuy3t9hg1UTiYS+A12Js0rYjwehxUPU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ibXFamilXvXkInSZf7IvrtUCqGFAZRIz0RFzcVAhbG6nxdPq+wm7rRYbJtvlLIUzCNNljVvbSXxnGFhoNkL3UmBi0S3tf9ILOE4rznIiy4DwBobVtZHJY/lBwjfkP7wjnB8aWhmnj5fvXxB2orB/OB/oGcR88VYXrHYZi0G/1hw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=postmarketos.org; spf=pass smtp.mailfrom=postmarketos.org; dkim=pass (2048-bit key) header.d=postmarketos.org header.i=@postmarketos.org header.b=gEWReboa; arc=none smtp.client-ip=91.218.175.170
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=postmarketos.org;
	s=key1; t=1781482108;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Vuvqav2sU6zSRBZDHAzLQ2ucs28StDCHC2l3aV/G/U0=;
	b=gEWReboaLC9ILUVIVaLt9fW/I982/gpbCwY1HkbyuN+C9Q7dWlFCmRMIZOWLqD3gxf81CD
	dubMjf9Uz8KzqfFVbCvAru8FEl0vT5D8EiDxBdNSu2QRn7Qq/GIw0d/DH8X+VRGLWJfvdc
	CJWwRHmhPKmp1r4d8OnDN5WAfgA2MCw5/+XmZNRbcyE4ggcj4a/QMziAZKQLQ39lFWCAZs
	5vadsLAvFNRvTzp8rOlsZngI0TGRInKUUibq4LYKr5Nm++E3/7R5oekfTQ+3fDv0CjqHfs
	P/AEzDTiaTec84IN4NIRHpldfMGSUmEwg+Zj4dhTGHb+X0klyhmP45TbKcasCQ==
From: Paul Sajna <sajattack@postmarketos.org>
Date: Sun, 14 Jun 2026 17:07:59 -0700
Subject: [PATCH v3 2/4] dt-bindings: display: panel: Add documentation for
 lg,sw49410-lh609qh1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260614-judyln-panel-v3-2-07f4134441bd@postmarketos.org>
References: <20260614-judyln-panel-v3-0-07f4134441bd@postmarketos.org>
In-Reply-To: <20260614-judyln-panel-v3-0-07f4134441bd@postmarketos.org>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Thierry Reding <thierry.reding@gmail.com>, Sam Ravnborg <sam@ravnborg.org>, 
 Jessica Zhang <jesszhan0024@gmail.com>, 
 Jessica Zhang <jesszhan0024@gmail.com>
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 devicetree@vger.kernel.org, David Heidelberg <david@ixit.cz>, 
 phone-devel@vger.kernel.org, Amir Dahan <system64fumo@tuta.io>, 
 Paul Sajna <sajattack@postmarketos.org>
X-Developer-Signature: v=1; a=ed25519-sha256; t=1781482095; l=2409;
 i=sajattack@postmarketos.org; s=20250422; h=from:subject:message-id;
 bh=Ks9/ggz0gsVtbuy3t9hg1UTiYS+A12Js0rYjwehxUPU=;
 b=TaxnqGmI3KdzfXiBJe5J0lfduQUw8XGGu66SUV6wR3T4yI6PCsarkN5kFltywOvESRe/X22oU
 o432i6+6lieB3zfduUwHO+HEYi/Ph/LlKNdaUqfNOXv8Bv/QubQIQyR
X-Developer-Key: i=sajattack@postmarketos.org; a=ed25519;
 pk=TwacvEOiRJ2P2oAdEqIDrtQTL18QS4FfcHfP/zNsxkQ=
X-Migadu-Flow: FLOW_OUT
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[postmarketos.org,quarantine];
	R_DKIM_ALLOW(-0.20)[postmarketos.org:s=key1];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:neil.armstrong@linaro.org,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:thierry.reding@gmail.com,m:sam@ravnborg.org,m:jesszhan0024@gmail.com,m:linux-kernel@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:david@ixit.cz,m:phone-devel@vger.kernel.org,m:system64fumo@tuta.io,m:sajattack@postmarketos.org,m:krzk@kernel.org,m:conor@kernel.org,m:thierryreding@gmail.com,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-311538-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[linaro.org,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,ravnborg.org];
	FORGED_SENDER(0.00)[sajattack@postmarketos.org,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[20];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sajattack@postmarketos.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[postmarketos.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,devicetree.org:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D8602682942

Document how to use lg,sw49410-lh609qh1 in a devicetree

Signed-off-by: Paul Sajna <sajattack@postmarketos.org>
---
 .../bindings/display/panel/lg,sw49410.yaml         | 79 ++++++++++++++++++++++
 1 file changed, 79 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/lg,sw49410.yaml b/Documentation/devicetree/bindings/display/panel/lg,sw49410.yaml
new file mode 100644
index 000000000000..4c4bf4d89353
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/lg,sw49410.yaml
@@ -0,0 +1,79 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/panel/lg,sw49410.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: LG LH609QH1 MIPI-DSI panel with SW49410 controller
+
+maintainers:
+  - Paul Sajna <sajattack@postmarketos.org>
+
+description:
+  LG LH609QH1 6.1" 1440x3120 MIPI DSI panel with SW49410 controller found in LG G7 ThinQ smartphone.
+
+allOf:
+  - $ref: panel-common.yaml#
+
+properties:
+  compatible:
+    items:
+      - const: lg,sw49410
+      - const: lg,sw49410-lh609qh1
+
+  reg:
+    maxItems: 1
+
+  backlight:
+    description: Backlight device reference
+
+  reset-gpios:
+    description: Reset pin reference
+
+  vsp-supply:
+    description: Positive voltage supply
+
+  vsn-supply:
+    description: Negative voltage supply
+
+required:
+  - compatible
+  - reg
+  - reset-gpios
+  - port
+  - vsp-supply
+  - vsn-supply
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+
+    dsi {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        panel@0 {
+            reg = <0>;
+            compatible = "lg,sw49410-lh609qh1";
+
+            backlight = <&pmi8998_wled>;
+            reset-gpios = <&tlmm 6 GPIO_ACTIVE_LOW>;
+            width-mm = <65>;
+            height-mm = <140>;
+
+            vsp-supply = <&lab>;
+            vsn-supply = <&ibb>;
+
+            pinctrl-0 = <&sde_dsi_active &sde_te_active_sleep>;
+            pinctrl-1 = <&sde_dsi_sleep &sde_te_active_sleep>;
+            pinctrl-names = "default", "sleep";
+
+            port {
+              panel_in: endpoint {
+                remote-endpoint = <&mdss_dsi0_out>;
+              };
+            };
+        };
+    };

-- 
2.54.0


