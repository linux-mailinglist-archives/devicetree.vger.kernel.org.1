Return-Path: <devicetree+bounces-307510-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id T+BwEDsVI2qXhwEAu9opvQ
	(envelope-from <devicetree+bounces-307510-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 20:28:11 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CF51664A9D6
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 20:28:10 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=pm.me header.s=protonmail3 header.b=T0OjfAo5;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307510-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-307510-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=pm.me;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 9317430279D7
	for <lists+devicetree@lfdr.de>; Fri,  5 Jun 2026 18:27:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 89AED2798F3;
	Fri,  5 Jun 2026 18:27:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-244122.protonmail.ch (mail-244122.protonmail.ch [109.224.244.122])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8C323A901C
	for <devicetree@vger.kernel.org>; Fri,  5 Jun 2026 18:27:36 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780684059; cv=none; b=BZUOiWNbnsVbKXYNuwwQW8Fc7EuQL4Eet0t8ZIDUMeaObeoV06jKKEEUK0xSoxCh/TcXS9VhrEkJdGthZCG+U9QJoz1pH2h5IcUGyuTQLWIuJ6PpniiuyeKtR4Poc9wXp+rx4kGEBJip3u58YlQvHJTcc6B8uEMjceqmR7L0xuE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780684059; c=relaxed/simple;
	bh=PmhLka/oAIyw1nTpu65gQAy1Pd6k0shsEAEaJaJyphw=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=a+CT0/5UOarYw9pXjvf261IKVAIgp2fs/272LqIGd8iVhWwoI2rCD6cL915F3c0EiWgJFR0ERY29YK4jY0YaBExDtvBTdeUCnGX1J8Fn2jGorEcp1MYmyP+W1BygGLiVUodwz6Xm4ei8YqmL9MAy4ZV+g9yxU81LBX0+n2Vi/Rk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=T0OjfAo5; arc=none smtp.client-ip=109.224.244.122
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1780684053; x=1780943253;
	bh=tx75P+P7ozafjtRnuFZTBl8obCQW842DsBNmRgarzJE=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=T0OjfAo5HDT1ZU6MHnwOLpwxFQdZG0ZnMUVKlar7qQOEYkFYhnkIZEN6Ww5RSQb1x
	 /PQ4RjiqSkKwcjW3LkGA46gytFLbXn7F4WFEycRhQfO3fecO47Oa/2MwVikBGI7qQm
	 viQdiFll4zouhTeLYgzSJFmtUGaAEMA53sM89XBhaDqUPpQXv3tuh19SEbVbfD/4/a
	 aYLi8AAUSu9tKfZ+MI4VbZYgdrvzdGg++49pE6S5Na+aOlrkAIrrsGts5MB+rIGji0
	 AZJBQQC5xrTDInZI2uneQmC4cUHwXGozHNiHaYqjudcE3BaH+WTpga1Vz/XNjrUy02
	 3FGCnYiKLCYcQ==
Date: Fri, 05 Jun 2026 18:27:28 +0000
To: Neil Armstrong <neil.armstrong@linaro.org>, Jessica Zhang <jesszhan0024@gmail.com>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
From: Alexander Koskovich <akoskovich@pm.me>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Alexander Koskovich <akoskovich@pm.me>
Subject: [PATCH v2 1/2] dt-bindings: display: panel: Document Raydium RM69220 DDIC
Message-ID: <20260605-asteroids-panel-support-v2-1-44b96c6eca91@pm.me>
In-Reply-To: <20260605-asteroids-panel-support-v2-0-44b96c6eca91@pm.me>
References: <20260605-asteroids-panel-support-v2-0-44b96c6eca91@pm.me>
Feedback-ID: 37836894:user:proton
X-Pm-Message-ID: 92ce6ad62654657bc34b31db8652216b856de177
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[pm.me,quarantine];
	R_DKIM_ALLOW(-0.20)[pm.me:s=protonmail3];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:neil.armstrong@linaro.org,m:jesszhan0024@gmail.com,m:airlied@gmail.com,m:simona@ffwll.ch,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:dri-devel@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:akoskovich@pm.me,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-307510-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[linaro.org,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de];
	FORGED_SENDER(0.00)[akoskovich@pm.me,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[14];
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
	FROM_NEQ_ENVFROM(0.00)[akoskovich@pm.me,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[pm.me:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,pm.me:mid,pm.me:dkim,pm.me:from_mime,pm.me:email,devicetree.org:url,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CF51664A9D6

Document the Raydium RM69220 DDIC and the BOE BF068MWM-TD0 6.77"
1080x2392 AMOLED display panel used in the Nothing Phone (3a).

Signed-off-by: Alexander Koskovich <akoskovich@pm.me>
---
 .../bindings/display/panel/raydium,rm69220.yaml    | 74 ++++++++++++++++++=
++++
 MAINTAINERS                                        |  5 ++
 2 files changed, 79 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/raydium,rm6922=
0.yaml b/Documentation/devicetree/bindings/display/panel/raydium,rm69220.ya=
ml
new file mode 100644
index 000000000000..7423b192d892
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/raydium,rm69220.yaml
@@ -0,0 +1,74 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/panel/raydium,rm69220.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Raydium RM69220 based MIPI-DSI panels
+
+maintainers:
+  - Alexander Koskovich <akoskovich@pm.me>
+
+description:
+  The Raydium RM69220 is a generic DSI Panel IC used to control
+  AMOLED panels.
+
+allOf:
+  - $ref: panel-common.yaml#
+
+properties:
+  compatible:
+    items:
+      - enum:
+          - boe,bf068mwm-td0
+      - const: raydium,rm69220
+
+  reg:
+    maxItems: 1
+
+  dvdd-supply:
+    description: Digital voltage rail
+
+  vci-supply:
+    description: Analog voltage rail
+
+  vddio-supply:
+    description: I/O voltage rail
+
+required:
+  - compatible
+  - dvdd-supply
+  - port
+  - reg
+  - reset-gpios
+  - vci-supply
+  - vddio-supply
+
+unevaluatedProperties: false
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
+            compatible =3D "boe,bf068mwm-td0", "raydium,rm69220";
+            reg =3D <0>;
+
+            reset-gpios =3D <&tlmm 12 GPIO_ACTIVE_LOW>;
+            dvdd-supply =3D <&vreg_oled_dvdd_1p8>;
+            vci-supply =3D <&vreg_l19b>;
+            vddio-supply =3D <&vreg_l9b>;
+
+            port {
+                panel_in_0: endpoint {
+                    remote-endpoint =3D <&dsi0_out>;
+                };
+            };
+        };
+    };
+
+...
diff --git a/MAINTAINERS b/MAINTAINERS
index c9f2780b2d31..ca2417d9d238 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -8354,6 +8354,11 @@ S:=09Maintained
 F:=09Documentation/devicetree/bindings/display/panel/raydium,rm67191.yaml
 F:=09drivers/gpu/drm/panel/panel-raydium-rm67191.c
=20
+DRM DRIVER FOR RAYDIUM RM69220 PANELS
+M:=09Alexander Koskovich <akoskovich@pm.me>
+S:=09Maintained
+F:=09Documentation/devicetree/bindings/display/panel/raydium,rm69220.yaml
+
 DRM DRIVER FOR SAMSUNG DB7430 PANELS
 M:=09Linus Walleij <linusw@kernel.org>
 S:=09Maintained

--=20
2.53.0



