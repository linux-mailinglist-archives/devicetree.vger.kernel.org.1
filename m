Return-Path: <devicetree+bounces-272543-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6OG2Gk4RrWm8xwEAu9opvQ
	(envelope-from <devicetree+bounces-272543-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 08 Mar 2026 07:03:58 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C4D3522EA4D
	for <lists+devicetree@lfdr.de>; Sun, 08 Mar 2026 07:03:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F2A833024A7A
	for <lists+devicetree@lfdr.de>; Sun,  8 Mar 2026 06:03:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F2780256C61;
	Sun,  8 Mar 2026 06:03:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="QTorFkrS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-4322.protonmail.ch (mail-4322.protonmail.ch [185.70.43.22])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A5203368B0;
	Sun,  8 Mar 2026 06:03:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.70.43.22
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772949815; cv=none; b=IzMggu9teDJSXwBLWM0ubI5IM1V2DFH7wyvTR5j7H4B1cFcxf0v5Xe3Kly+xnTqdYj8EBcckeLM16QUWMmgKnE6HvrwTj3Uz2nWS9YYLxwi4bJLL4FrT4P8CqWKjFmHnbKTIfDmcT8uowSMXdHimzPXf/dk6/oZ5IdD2I9mTme4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772949815; c=relaxed/simple;
	bh=MOaaOTya6H467iJmp/1+J0vBma2OMuYXx15HUdnglas=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=J2iYMfkjfG/x/c/DuwiWcapt+0moud2dDwmhgm6Z6RXbth8H+wefupGrgxiPLoJvCtFiyot0OtXEP9k8zwfjLa+X+QiCrct36yvJqeXWD9ivLpWP1D6Zk6cF9VXwuGQtdmE4Ighvx3xjkr37XzN4R3wc27EP6jNc6eCxRkQxsM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=QTorFkrS; arc=none smtp.client-ip=185.70.43.22
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1772949812; x=1773209012;
	bh=RCwVWD51K3Bng0aSbuQAQ7SiRFAZ93WauinTBb32Sfo=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=QTorFkrSk2+m6f8MQpjKLTpqVhb0DgzUUkUV1WEEPPXUENdD3mh8xtSLtSMAXx/O8
	 h9Vm4fXtxUQpas1vixGekf/p8zgx0D6zKDTFpXZqFA7SX18mbtZaYA4ZF2MTVT1z+d
	 9oGiJ5JXCQb8hcV4PtuJGqy2LpxjDEZsgoTjLvgSZTUqmxXoVbfmAdf1X36gv+eH3V
	 0HWAnRv75fdMqgQQMjTDOJF8ZiczPrGiQwK+c1jYwyRuz+L7VLaiVv0OGB+rWGCBWc
	 dX/+xDr9DINQkORPbJH5mDUz9sefNIZR+ujWoE02HoI9lRE+8dlsKQvWVASR4jVy32
	 ihvBJazgdl9sw==
Date: Sun, 08 Mar 2026 06:03:29 +0000
To: Neil Armstrong <neil.armstrong@linaro.org>, Jessica Zhang <jesszhan0024@gmail.com>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
From: Alexander Koskovich <AKoskovich@pm.me>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Alexander Koskovich <akoskovich@pm.me>
Subject: [PATCH 1/2] dt-bindings: display: panel: Document Tianma TA066VVHM03
Message-ID: <20260308-tianma-ta066vvhm03-v1-1-869fac443b20@pm.me>
In-Reply-To: <20260308-tianma-ta066vvhm03-v1-0-869fac443b20@pm.me>
References: <20260308-tianma-ta066vvhm03-v1-0-869fac443b20@pm.me>
Feedback-ID: 37836894:user:proton
X-Pm-Message-ID: 1114fd13308e962e3c38e2973bfd995b85b98090
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: C4D3522EA4D
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[pm.me,quarantine];
	R_DKIM_ALLOW(-0.20)[pm.me:s=protonmail3];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-272543-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[linaro.org,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.974];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[AKoskovich@pm.me,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[pm.me:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,pm.me:dkim,pm.me:email,pm.me:mid,devicetree.org:url,0.0.0.0:email]
X-Rspamd-Action: no action

Add bindings for the Tianma TA066VVHM03 6.59" 1080x2340 AMOLED DSI
panel with DSC compression, found in the ASUS ROG Phone 3.

Signed-off-by: Alexander Koskovich <akoskovich@pm.me>
---
 .../bindings/display/panel/tianma,ta066vvhm03.yaml | 67 ++++++++++++++++++=
++++
 1 file changed, 67 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/tianma,ta066vv=
hm03.yaml b/Documentation/devicetree/bindings/display/panel/tianma,ta066vvh=
m03.yaml
new file mode 100644
index 000000000000..afcdd203e1b0
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/tianma,ta066vvhm03.ya=
ml
@@ -0,0 +1,67 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/panel/tianma,ta066vvhm03.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Tianma TA066VVHM03 AMOLED DSI Panel
+
+maintainers:
+  - Alexander Koskovich <akoskovich@pm.me>
+
+allOf:
+  - $ref: panel-common.yaml#
+
+properties:
+  compatible:
+    const: tianma,ta066vvhm03
+
+  reg:
+    maxItems: 1
+    description: DSI virtual channel
+
+  vddio-supply: true
+  vci-supply: true
+  vdd-supply: true
+  port: true
+  enable-gpios: true
+  reset-gpios: true
+
+additionalProperties: false
+
+required:
+  - compatible
+  - reg
+  - vddio-supply
+  - vci-supply
+  - vdd-supply
+  - reset-gpios
+  - port
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+
+    dsi {
+        #address-cells =3D <1>;
+        #size-cells =3D <0>;
+
+        panel@0 {
+            compatible =3D "tianma,ta066vvhm03";
+            reg =3D <0>;
+
+            enable-gpios =3D <&tlmm 12 GPIO_ACTIVE_HIGH>;
+            reset-gpios =3D <&tlmm 75 GPIO_ACTIVE_LOW>;
+
+            vci-supply =3D <&vreg_l10a>;
+            vdd-supply =3D <&vreg_l3c>;
+            vddio-supply =3D <&vreg_l14a>;
+
+            port {
+                panel_in: endpoint {
+                    remote-endpoint =3D <&mdss_dsi0_out>;
+                };
+            };
+        };
+    };
+...

--=20
2.53.0



