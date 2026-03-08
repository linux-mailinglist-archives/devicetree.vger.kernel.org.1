Return-Path: <devicetree+bounces-272635-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iF1SE5TlrWlU9AEAu9opvQ
	(envelope-from <devicetree+bounces-272635-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 08 Mar 2026 22:09:40 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AD96423244A
	for <lists+devicetree@lfdr.de>; Sun, 08 Mar 2026 22:09:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AAC23300A77F
	for <lists+devicetree@lfdr.de>; Sun,  8 Mar 2026 21:09:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F129B34F479;
	Sun,  8 Mar 2026 21:09:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="YhewsJq/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-244123.protonmail.ch (mail-244123.protonmail.ch [109.224.244.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FFDD34C80D
	for <devicetree@vger.kernel.org>; Sun,  8 Mar 2026 21:09:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=109.224.244.123
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773004153; cv=none; b=ij81DdAKsXIZappwJRmMFQfNj0flPRvB6WqCCHh1KjR8y78HMqkPGjL+vDcgjJ+eANDlU6dHsF8VJxo9YuiVrFo/w+NtVdKdmtuSHAXND1qYJRMa4PRhngEtzX6FrOLaJ9VyMSQuqUUXoaUBEIry4t43xUbeEFn9KdNokJ30+rY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773004153; c=relaxed/simple;
	bh=3Mmv1R9qvWVEqJedc5CfyNu/IEx4SdhW7tRnZAt3z18=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=U3QXBuqhBpLwrmBdm/rvNvETqv6fLoNZ4EFn2cFsKBLeGZhbUc0ImzAtCEbMbCpWX2agzoUgeaBD+xOFGQlLmt3YlxwDYaP64VT+gBkGhivEViGUD39nVzf1hgA+LT/tRG0ozCBOcX60Jhs3+UW2yw2ahsZEVfj7oQtUVfBBAU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=YhewsJq/; arc=none smtp.client-ip=109.224.244.123
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1773004149; x=1773263349;
	bh=ylYirvG0pCdKrhFohTLSFDQQsmpzpzqTWZprJJA21os=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=YhewsJq/GX3BN8xIfaA2j1PKN6oSLsAgFru0GkPM9hGl+osA2yQldYfjniEANNtGm
	 X/z/OLq4BAJOXRCj7ocouqly8h+O6bodA1tX/exmaMPidwdDjeBpKPz5+v4Fjid0gc
	 GQShBje5XwYePq4JoEyjZaGfCa7d8RKFcpCQQ4CfzXgWqeVY+tkpI5drb91S807DOf
	 PzaX/sFgXRONRj5aV4bKZhEuud8o1y6CUHpLF8RCh+dSTJY+mKj3voKJ0L34ynM9S8
	 c365LZ1R61id8tLSdQu53COBA2Oujon0Ub2KixbkL99aFbFOHdiIRLvdVSYWTdHiwN
	 aiRnCqY8R40OQ==
Date: Sun, 08 Mar 2026 21:09:00 +0000
To: Neil Armstrong <neil.armstrong@linaro.org>, Jessica Zhang <jesszhan0024@gmail.com>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
From: Alexander Koskovich <AKoskovich@pm.me>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Alexander Koskovich <akoskovich@pm.me>, Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH v2 1/2] dt-bindings: display: panel: Document Tianma TA066VVHM03
Message-ID: <20260308-tianma-ta066vvhm03-v2-1-5f2344685133@pm.me>
In-Reply-To: <20260308-tianma-ta066vvhm03-v2-0-5f2344685133@pm.me>
References: <20260308-tianma-ta066vvhm03-v2-0-5f2344685133@pm.me>
Feedback-ID: 37836894:user:proton
X-Pm-Message-ID: c734d556b6de900124e0acead05e36a4b0cb7dc6
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: AD96423244A
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
	TAGGED_FROM(0.00)[bounces-272635-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[linaro.org,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_TWELVE(0.00)[15];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,pm.me:dkim,pm.me:email,pm.me:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,qualcomm.com:email,devicetree.org:url]
X-Rspamd-Action: no action

Add bindings for the Tianma TA066VVHM03 6.59" 1080x2340 AMOLED DSI
panel with DSC compression, found in the ASUS ROG Phone 3.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Alexander Koskovich <akoskovich@pm.me>
---
 .../bindings/display/panel/tianma,ta066vvhm03.yaml | 67 ++++++++++++++++++=
++++
 1 file changed, 67 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/tianma,ta066vv=
hm03.yaml b/Documentation/devicetree/bindings/display/panel/tianma,ta066vvh=
m03.yaml
new file mode 100644
index 000000000000..9bd80cd9662f
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
+required:
+  - compatible
+  - reg
+  - vddio-supply
+  - vci-supply
+  - vdd-supply
+  - reset-gpios
+  - port
+
+additionalProperties: false
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



