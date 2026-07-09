Return-Path: <devicetree+bounces-323447-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Z1SmGmJdT2oHfQIAu9opvQ
	(envelope-from <devicetree+bounces-323447-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 10:35:46 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id DB48372E5AA
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 10:35:45 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=dsgyNRx9;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323447-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-323447-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id BA8493091EAA
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 08:31:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B032A3F167C;
	Thu,  9 Jul 2026 08:31:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B28263F0AA2
	for <devicetree@vger.kernel.org>; Thu,  9 Jul 2026 08:31:13 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783585875; cv=none; b=aPLJt4ifDcJ3SHQSxydrqgn46omXT+LST+js40Dn8eIR3iAvVJve/JiYb6EKV/h2McotP61zjXCKLhP4TLJ04zrF0LbYdzBis2GDbxqksqKAtfT5iMQ4S4ZbIJzYbvlrhAtYvlZ3OeUiXpI6CEfJBKp05wMrKRHvdiHwIxNARe4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783585875; c=relaxed/simple;
	bh=dqDtGzJZOlfFdYrSW5lVTNLuA6IMvlvhMJK+tpIafIM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=LsY6CsZF3+qddhXqi+S0gRsQU8UshFB98ufZ19GWqy076KNx1Uzgxvy6+BHTob5CzuarfXLEXlz8DVN479KXDAyRrmR2nzbTfmDGn3j7lp8MToFfULaK77iiHU4bosc9etdMoKTk+qnGPL6m+SxKo7dnI0iuKCP3u0P/WUhoHF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dsgyNRx9; arc=none smtp.client-ip=209.85.128.43
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-493d1e8aa46so12171365e9.0
        for <devicetree@vger.kernel.org>; Thu, 09 Jul 2026 01:31:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783585872; x=1784190672; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=jdbNF4i/EhSHcuxWSR013AgphBBmBaypfipjN8b8Gtk=;
        b=dsgyNRx9ms9hYfn7cw3eER04pXQAUQSDBNAvI7hgHBB4KaOBI5C0XJ7919696h6OdD
         oA0u1RHKWqJs/3DTJx5SEqclf9gDcWUVebLRoxFLSaA0TFTu7bXenL8t1bH2EHOTcIJy
         /SK0sbGQ80gCDuSBCWvg4mk1+4RqY/POj2hnUXziotJ/leyAdhCBCUkvFXObjVzf0U9F
         INKxFPx2xI3wVYVAiVFWktA+cfEUYomK5xAt9ppP2cG9Rq9UJYp5yqzu6zhi1v5kxCsT
         sXhsZ/brZkkWLtdYuJGyzOBTgBr6FY9W0rTKwbZiYhd6B4eN0RjPIBmnNuI1iNZkpLCK
         3FyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783585872; x=1784190672;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=jdbNF4i/EhSHcuxWSR013AgphBBmBaypfipjN8b8Gtk=;
        b=fkdbO1g/h1pAFi+s6rX6WZ0dqryeo5aQnl6Eu+XEwQaTuCgvzvmEKy31TYpl+hperb
         UmX625aWmnWxo491g/Zjm+gKRhfw6vMRxg0PG4xcx6f7OYuqCY9jOk/XRKOFQQ5pUIEy
         GNB3por/UswU6/RZdKZr6S/3Kj9IVA3TdOWi2JsAmJSzu/XiOpQtBlP5/DVH4sLiuUWN
         NRrv1/3+ybcYcopSgz0uCvOy7CQwkf2yP1embs6l5fLTg+D0Xo18wTTQG5/4i8zBGwIp
         cYUoV1jcRdd7NAsU94dMyImibMS9+JMlOItBSOMOeCNud3GqKDIKn1v+Zxz0vEDb9XZh
         Og3w==
X-Forwarded-Encrypted: i=1; AHgh+Rp7i8Y8UU2FqIsc7JRgP5P3/ehSjunZCfMZ3xKawvRHW8UD/BP8aqBDSotvsvMopTfMpeKvvJyXUSLk@vger.kernel.org
X-Gm-Message-State: AOJu0YzDkmyPQgPN6T9EZ+LG5GIEDBJ7ZxqTjqsT2oNrjGw2V8m6LWNi
	wy9+5QVucz3PUnLFbXAUm75n52JHoktjJC15Szgko1YUb+71VARpkg2B
X-Gm-Gg: AfdE7cnLTiG2IGBrbHWMls8DatHfLzgTOcaN9LdvnZ8di8TY1Bon8hAWLZGoGRhaC1M
	ICfqrt7rJJxWfZ9BsaHISs1D7JIIFRE4xSnAaeSUtSpY8G8JL+ZrealBcOSWxW562x7TXu1KiyK
	bIOWtJsETSUO6V1iTtSDoe+OqFErMiuVc8zwwTqSvbVVas2XU4fDS3iGRpbm50xZW3eGhmkOnXw
	4qNQ07cnnNxnLzGNihK/GL0IB3kAPG7UkwzIjsqWUVa5VmQ+XH0z+b5G2bOpiz8Vcgwf7zhSJHP
	Bif9QpdvDhwi1U4V/Wq20IiIVWqpJd1MndwZaBRE0USWnAmehnDWh0Lt95Dz7EyIvs3FOu85W2H
	An05GulJIfYiBZk2KcUYGs22d+jjLsjFDQldk6avt7Y+Eah4HKC4IDrstZji/QQYr0RJyL9aTtv
	GXofesVZ2Mse/T4W5EkIqm
X-Received: by 2002:a05:600c:4694:b0:493:a438:7f98 with SMTP id 5b1f17b1804b1-493e68ddd36mr57474105e9.18.1783585871835;
        Thu, 09 Jul 2026 01:31:11 -0700 (PDT)
Received: from biju.lan ([2a00:23c4:a702:d301:8fb6:1d85:3dc1:42ab])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47a9e4d780csm50316543f8f.11.2026.07.09.01.31.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jul 2026 01:31:11 -0700 (PDT)
From: Biju <biju.das.au@gmail.com>
X-Google-Original-From: Biju <biju.das.jz@bp.renesas.com>
To: Philipp Zabel <p.zabel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Biju Das <biju.das.au@gmail.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v4 1/9] dt-bindings: reset: renesas,rzg2l-usbphy-ctrl: Document RZ/G3L support
Date: Thu,  9 Jul 2026 09:30:54 +0100
Message-ID: <20260709083108.108370-2-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260709083108.108370-1-biju.das.jz@bp.renesas.com>
References: <20260709083108.108370-1-biju.das.jz@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-323447-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:p.zabel@pengutronix.de,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:geert+renesas@glider.be,m:magnus.damm@gmail.com,m:biju.das.jz@bp.renesas.com,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-renesas-soc@vger.kernel.org,m:prabhakar.mahadev-lad.rj@bp.renesas.com,m:biju.das.au@gmail.com,m:conor.dooley@microchip.com,m:krzk@kernel.org,m:conor@kernel.org,m:geert@glider.be,m:magnusdamm@gmail.com,m:bijudasau@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[bijudasau@gmail.com,devicetree@vger.kernel.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[pengutronix.de,kernel.org,glider.be,gmail.com];
	FREEMAIL_CC(0.00)[bp.renesas.com,vger.kernel.org,gmail.com,microchip.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bijudasau@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,vger.kernel.org:from_smtp,microchip.com:email,renesas.com:email,bp.renesas.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: DB48372E5AA

From: Biju Das <biju.das.jz@bp.renesas.com>

Document Renesas RZ/G3L (r9a08g046) USB PHY controller bindings.
The RZ/G3L USB PHY block is similar to RZ/G3S but differs in that each
port has its own OTG controller, whereas RZ/G3S only has one on port 1.
To reflect this, RZ/G3L uses a regulators sub-node with per-port vbus0
and vbus1 entries instead of the single regulator-vbus property used
by other compatible SoCs.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
v3->v4:
 * No change.
v2->v3:
 * Replaced items->enum
 * Collected tag.
v1->v2:
 * Updated commit description.
 * Added enum instead of const in the compatible section.
 * Dropped regulator1-vbus and added a regulators group node.
 * Updated schema check.
---
 .../reset/renesas,rzg2l-usbphy-ctrl.yaml      | 48 +++++++++++++++++--
 1 file changed, 45 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/reset/renesas,rzg2l-usbphy-ctrl.yaml b/Documentation/devicetree/bindings/reset/renesas,rzg2l-usbphy-ctrl.yaml
index c83469a1b379..06e003218d2a 100644
--- a/Documentation/devicetree/bindings/reset/renesas,rzg2l-usbphy-ctrl.yaml
+++ b/Documentation/devicetree/bindings/reset/renesas,rzg2l-usbphy-ctrl.yaml
@@ -16,13 +16,16 @@ description:
 properties:
   compatible:
     oneOf:
+      - enum:
+          - renesas,r9a08g045-usbphy-ctrl # RZ/G3S
+          - renesas,r9a08g046-usbphy-ctrl # RZ/G3L
+
       - items:
           - enum:
               - renesas,r9a07g043-usbphy-ctrl # RZ/G2UL and RZ/Five
               - renesas,r9a07g044-usbphy-ctrl # RZ/G2{L,LC}
               - renesas,r9a07g054-usbphy-ctrl # RZ/V2L
           - const: renesas,rzg2l-usbphy-ctrl
-      - const: renesas,r9a08g045-usbphy-ctrl # RZ/G3S
 
   reg:
     maxItems: 1
@@ -50,6 +53,28 @@ properties:
     $ref: /schemas/regulator/regulator.yaml#
     unevaluatedProperties: false
 
+  regulators:
+    type: object
+    description:
+      list of vbus regulators provided by this controller.
+
+    properties:
+      vbus0:
+        type: object
+        description: Port 1 USB VBUS regulator
+        $ref: /schemas/regulator/regulator.yaml#
+        unevaluatedProperties: false
+
+      vbus1:
+        type: object
+        description: Port 2 USB VBUS regulator
+        $ref: /schemas/regulator/regulator.yaml#
+        unevaluatedProperties: false
+
+    required:
+      - vbus0
+      - vbus1
+
   renesas,sysc-pwrrdy:
     description:
       The system controller PWRRDY indicates to the USB PHY if the power supply
@@ -71,14 +96,15 @@ required:
   - resets
   - power-domains
   - '#reset-cells'
-  - regulator-vbus
 
 allOf:
   - if:
       properties:
         compatible:
           contains:
-            const: renesas,r9a08g045-usbphy-ctrl
+            enum:
+              - renesas,r9a08g045-usbphy-ctrl
+              - renesas,r9a08g046-usbphy-ctrl
     then:
       required:
         - renesas,sysc-pwrrdy
@@ -86,6 +112,22 @@ allOf:
       properties:
         renesas,sysc-pwrrdy: false
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: renesas,r9a08g046-usbphy-ctrl
+    then:
+      properties:
+        regulator-vbus: false
+      required:
+        - regulators
+    else:
+      properties:
+        regulators: false
+      required:
+        - regulator-vbus
+
 additionalProperties: false
 
 examples:
-- 
2.43.0


