Return-Path: <devicetree+bounces-275635-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wNhTDksdtWmMwgAAu9opvQ
	(envelope-from <devicetree+bounces-275635-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 09:33:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D77F28C2C3
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 09:33:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 20B9A30C5749
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 08:27:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B98AD29D29F;
	Sat, 14 Mar 2026 08:27:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=disroot.org header.i=@disroot.org header.b="SfhMHzNg"
X-Original-To: devicetree@vger.kernel.org
Received: from layka.disroot.org (layka.disroot.org [178.21.23.139])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0B4A3264EC;
	Sat, 14 Mar 2026 08:27:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.21.23.139
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773476862; cv=none; b=dBClpxvhky1pztEtJXFlVBgZohA2V8pvMZo0IPFDFYrjSCLC3WtDeF+YKwuvcz6dr1OnlqLpJqYvsKoMyc2r7FL7dqJQULnvy5ioJeZ9DZd14fdZrwj16qucKlHbiWwqoHC2KNTcEye4lNsg/hSmDup4FUk5SlUa0l2iRSNuC/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773476862; c=relaxed/simple;
	bh=oVRN2qK1k/0ayPkgo8ZxD9p66Q+kAPL1IgzI1uUl28A=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=qXDFqLmX5m9VQcFJ2/ck3bMPz9/9Q/y8vrBZAXRMkkUABkkbAloAZCLCm0BsCGe9GqUZox9lzEmZxzCIlR+nvwpGGRhJG9WkpB3R+POTeJ/YireUJ1TK14yKGafmmveDkq0jNM+RIJz+C3D4Z7ZhFoH05Z/7GvI1ZcK5s9aZy7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=disroot.org; spf=pass smtp.mailfrom=disroot.org; dkim=pass (2048-bit key) header.d=disroot.org header.i=@disroot.org header.b=SfhMHzNg; arc=none smtp.client-ip=178.21.23.139
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=disroot.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=disroot.org
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 8839626F71;
	Sat, 14 Mar 2026 09:27:37 +0100 (CET)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PlNJVR06-Gx2; Sat, 14 Mar 2026 09:27:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1773476856; bh=oVRN2qK1k/0ayPkgo8ZxD9p66Q+kAPL1IgzI1uUl28A=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=SfhMHzNg6UzdKS3WRtJt7gNJIpdwPmOX3YKz5aWO8DnrPXQx1drveHitpWm8Lmv1G
	 ID5dUE8Ekqp86zvZ2CF0mf5CywypMefxznqVMAHP/JRbt8UlJxw8FNa9kEAt/zdisC
	 R205WCzXW0sZGfRTFqcctmzRQoD8n9cAZ5zO2LOTGAeYPxgNroU01gjHV/R7AIR1N5
	 8pKFnLIkkA9OGc+X5YPv3S4MAnDmDG47w7sycM/emnNG/QGtZUIp6MOpG4a+Cfwonb
	 sTR8IxVKhuGz975kH7q+vzINltc3EET3J8qnGK7i6DRd/IwBzUnUb9lPmsBEQPwCEB
	 o5vwnndgv4tJg==
From: Rustam Adilov <adilov@disroot.org>
To: Chris Packham <chris.packham@alliedtelesis.co.nz>,
	Andi Shyti <andi.shyti@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-i2c@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Rustam Adilov <adilov@disroot.org>
Subject: [PATCH 7/8] dt-bindings: i2c: realtek,rtl9301-i2c: extend for RTL9607C support
Date: Sat, 14 Mar 2026 13:26:27 +0500
Message-ID: <20260314082628.25206-8-adilov@disroot.org>
In-Reply-To: <20260314082628.25206-1-adilov@disroot.org>
References: <20260314082628.25206-1-adilov@disroot.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[disroot.org,reject];
	R_DKIM_ALLOW(-0.20)[disroot.org:s=mail];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275635-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[disroot.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[adilov@disroot.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[9];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[disroot.org:dkim,disroot.org:email,disroot.org:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 8D77F28C2C3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add the "realtek,rtl9607-i2c" compatible for i2c controller on the
RTL9607C SoC series.

Add a clocks property to the properties since RTL9607C requires it
along with the realtek,scl.

Signed-off-by: Rustam Adilov <adilov@disroot.org>
---
 .../bindings/i2c/realtek,rtl9301-i2c.yaml         | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/Documentation/devicetree/bindings/i2c/realtek,rtl9301-i2c.yaml b/Documentation/devicetree/bindings/i2c/realtek,rtl9301-i2c.yaml
index f9a449fee2b0..5873cfdc5b3e 100644
--- a/Documentation/devicetree/bindings/i2c/realtek,rtl9301-i2c.yaml
+++ b/Documentation/devicetree/bindings/i2c/realtek,rtl9301-i2c.yaml
@@ -15,6 +15,8 @@ description:
   assigned to either I2C controller.
   RTL9310 SoCs have equal capabilities but support 12 common SDA lines which
   can be assigned to either I2C controller.
+  RTL9607C SoCs have equal capabilities but each controller only supports 1
+  SCL/SDA line.
 
 properties:
   compatible:
@@ -34,6 +36,7 @@ properties:
       - enum:
           - realtek,rtl9301-i2c
           - realtek,rtl9310-i2c
+          - realtek,rtl9607-i2c
 
   reg:
     items:
@@ -51,6 +54,9 @@ properties:
       The SCL line number of this I2C controller.
     enum: [ 0, 1 ]
 
+  clocks:
+    maxItems: 1
+
 patternProperties:
   '^i2c@[0-9ab]$':
     $ref: /schemas/i2c/i2c-controller.yaml
@@ -81,6 +87,15 @@ allOf:
     then:
       patternProperties:
         '^i2c@[89ab]$': false
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: realtek,rtl9607-i2c
+    then:
+      required:
+        - realtek,scl
+        - clocks
 
 required:
   - compatible
-- 
2.53.0


