Return-Path: <devicetree+bounces-278873-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cGnTIPHpwGl6OQQAu9opvQ
	(envelope-from <devicetree+bounces-278873-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Mar 2026 08:21:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 180852ED770
	for <lists+devicetree@lfdr.de>; Mon, 23 Mar 2026 08:21:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 494E2305B96F
	for <lists+devicetree@lfdr.de>; Mon, 23 Mar 2026 07:14:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C5DF35F167;
	Mon, 23 Mar 2026 07:14:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=disroot.org header.i=@disroot.org header.b="Skdx0hwX"
X-Original-To: devicetree@vger.kernel.org
Received: from layka.disroot.org (layka.disroot.org [178.21.23.139])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E84ED35E943;
	Mon, 23 Mar 2026 07:14:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.21.23.139
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774250060; cv=none; b=hZjZgHX7fg0hZmZyKKmpsICmLbvIaXaEQ4xDQcQJj/tZ87ps7Kzo9wJmnYv+T6FJzKFwY0utrc/Pl1YV2QfxVngKiuGMRr71iMxBGa0hlAjW+nKKuOoywDXJQbHa3/HVo4dI4hU9mDraKQsvJuiim/unMQiYPOgDKnuwQ/rwXtI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774250060; c=relaxed/simple;
	bh=FUqz7MjKzDOGrnWMcC8BN+pmaNsiLf8N0I4JL3kLhR4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=jQ4S0E99dRs++17AKyg3B/c5cZbxKuwuNCT536NYqWBO54GR3oSzgUBrc7s4aXaU2Z4NKaI0L68OzmiIubzknbuCvzLyaAW3G/QqmHbS4l8L9hrp2UZq9j2v9rS+wtMlFdxTod1jsdQvDNysqipMGdtfMoVsFXB6YsRTt1z0QUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=disroot.org; spf=pass smtp.mailfrom=disroot.org; dkim=pass (2048-bit key) header.d=disroot.org header.i=@disroot.org header.b=Skdx0hwX; arc=none smtp.client-ip=178.21.23.139
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=disroot.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=disroot.org
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 69C7D264BA;
	Mon, 23 Mar 2026 08:14:17 +0100 (CET)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wkhYi2GLVI0I; Mon, 23 Mar 2026 08:14:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1774250056; bh=FUqz7MjKzDOGrnWMcC8BN+pmaNsiLf8N0I4JL3kLhR4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=Skdx0hwXUSjd86SQEAOlbXXABxBeiCxeqg8Qut5uPOhMVOKC4P7xETDS9Cc/A7mXZ
	 6VRbDgDU6BMzqUkBjjt/2zhQh0oB/6do85uMy/hXA+Gv1e5X6mfJ7M/d26A4/yH06t
	 5vB/sK/fMky1SJrF3SjfrFTTmxso1Ikj9FiZimLBVYDEvwc2FdmgI1UOoWQ94PBKLK
	 I1YNPG/B22sOXjQ3V/4Tkl8GUVRqTNmHHlWpQkOkICLu9xVrpI7FFZZud/o6MM0o+p
	 V0ArKrbyCz3/VWV08UoqDo6XP+FIngnck02Rip+HNHCMYHBJMOz7rQir93yNxgJJgf
	 iW68iedJc7Mxw==
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
Subject: [PATCH v4 5/8] dt-bindings: i2c: realtek,rtl9301-i2c: extend for clocks and RTL9607C support
Date: Mon, 23 Mar 2026 12:13:34 +0500
Message-ID: <20260323071337.15410-6-adilov@disroot.org>
In-Reply-To: <20260323071337.15410-1-adilov@disroot.org>
References: <20260323071337.15410-1-adilov@disroot.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TAGGED_FROM(0.00)[bounces-278873-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[disroot.org:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
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
X-Rspamd-Queue-Id: 180852ED770
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add the "realtek,rtl9607-i2c" compatible for i2c controller on the
RTL9607C SoC series.

Add a clocks property to the properties to describe the i2c reference
clock and make it available for all the compatibles. This i2c reference
clock is assumed to be coming from switchcore region via Lexra bus as
the other SoC peripherals.

RTL9607C requires the "realtek,scl" and "clocks" to be specified
and so handle it under separate if check for "realtek,rtl9607-i2c".

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


