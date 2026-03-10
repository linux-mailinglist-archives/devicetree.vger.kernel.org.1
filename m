Return-Path: <devicetree+bounces-273262-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QGuMLDCgr2mvbAIAu9opvQ
	(envelope-from <devicetree+bounces-273262-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 05:38:08 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 26F6724547E
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 05:38:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3721430FA8A1
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 04:37:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C1AEC3B5315;
	Tue, 10 Mar 2026 04:37:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="rKNSq665"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-244121.protonmail.ch (mail-244121.protonmail.ch [109.224.244.121])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4843836BCF5
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 04:37:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=109.224.244.121
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773117421; cv=none; b=mbsZZA7hqtFyuG/JzKQysEW/M077aQrToWa8Nqc2olOqaky6uTdAKfApz6cbPkFirWcfCGdE7+m5WNLt52UO1hs6Krlk2wsuXm3DgostXBZlJdpeEw5CdNZRXfpKmZNIz3IlwfClYR8XjABrHrOfwuoQGgBK0DWy0I+7xJEbe6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773117421; c=relaxed/simple;
	bh=3Mmv1R9qvWVEqJedc5CfyNu/IEx4SdhW7tRnZAt3z18=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=ku6T4ODs9MN+wyw6HEwavBtZxk3+Tyrmsu5B44+8rJTS+WZp4tjNRfoFPhYrnEyR6IswLfSMBkCjkO9pRaWqnPkqyBwpWYDrQGuWQlM8RIOarrGwfZ5E835mkQ/Bq/7eEhaeSf7awMfweUAf5zPfIZ1VK4oQanXl9laCX9lbm/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=rKNSq665; arc=none smtp.client-ip=109.224.244.121
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1773117418; x=1773376618;
	bh=ylYirvG0pCdKrhFohTLSFDQQsmpzpzqTWZprJJA21os=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=rKNSq665qfuM/b0CjNFFIb8vDgKbN5WIItI6u3ZxvKvlkU9FbS/Jh1f4N+TgPUsyl
	 09BNG2W6iRxAppVQlvEDHW/tPyATwGLQdl31kVjP0tdcB1bmd2CJgz+cFLU76aNBuK
	 /QKPc3Uq+uH+QujtX1aQVNC5E+6fovuWF0ZBhc+BF1BwUNARy4uHZguNJ/ocosQDbp
	 mjy1Lvy1ddIUaJLkuBH2C/RUz1uEIT5Jd2UKi0SYNuEapnYCUi547DFqLlPOg8onGC
	 Gfyp94lvPDZfLJjC6HoanR/cV3lu/xSGyntTAihy9K2YJPmkYcHduHz3gVKn0r8Eqc
	 4957gq6Gnn2+Q==
Date: Tue, 10 Mar 2026 04:36:53 +0000
To: Neil Armstrong <neil.armstrong@linaro.org>, Jessica Zhang <jesszhan0024@gmail.com>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
From: Alexander Koskovich <akoskovich@pm.me>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Alexander Koskovich <akoskovich@pm.me>, Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH v3 1/2] dt-bindings: display: panel: Document Tianma TA066VVHM03
Message-ID: <20260310-tianma-ta066vvhm03-v3-1-fc2938971d79@pm.me>
In-Reply-To: <20260310-tianma-ta066vvhm03-v3-0-fc2938971d79@pm.me>
References: <20260310-tianma-ta066vvhm03-v3-0-fc2938971d79@pm.me>
Feedback-ID: 37836894:user:proton
X-Pm-Message-ID: 84b604d4ef74e0ac3cf1a4cc24946f1a82fcd1c6
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: 26F6724547E
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[pm.me,quarantine];
	R_DKIM_ALLOW(-0.20)[pm.me:s=protonmail3];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273262-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[linaro.org,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[akoskovich@pm.me,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[pm.me:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,pm.me:dkim,pm.me:email,pm.me:mid,devicetree.org:url,qualcomm.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
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



