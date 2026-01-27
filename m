Return-Path: <devicetree+bounces-259911-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uCf1B+LEeGmltAEAu9opvQ
	(envelope-from <devicetree+bounces-259911-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 15:00:02 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B20209540E
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 15:00:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 2491E304E698
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 13:51:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7DC8635B622;
	Tue, 27 Jan 2026 13:51:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="XYsF5QM6"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07E2235A956
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 13:51:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.171.202.116
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769521882; cv=none; b=lnymF2ARW4QagW9JBipJo2z3W5zuIm3pisunuG9MgPjO4mvbRV5PV3fW1mHC2D/InKN5h9SRmowrHq3eGvTH7psu0MM7mqgCmuJXq/nXGTgPvOh1QxZtNaUAbJfF2DdxAsSyg67dPB87IZwDbhDFtkogntwBysbH6Lrg90dSh/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769521882; c=relaxed/simple;
	bh=EhDs+6PdLY09bwrEjy6oLc/QWMgQGLEsXtzy9NBOYYw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=GHr5GmioLxsNOyOIAk7Vyegfx2tZjw9JsAVlOeVoY1HbgnhwjR6KQUeg7FluOy/ix1lFZo8J2yYS9ZL3SFtujmbm9aJwhFdbg2tHufdwuNxA8Nb+OE0JuXz36Ux/1iW3l8sKK01o4B/ncdbP0Wy7Vgn9jjE+0jmn0E7Vas0+5Uk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=XYsF5QM6; arc=none smtp.client-ip=185.171.202.116
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id B8A13C211C2;
	Tue, 27 Jan 2026 13:51:21 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id A846B606F5;
	Tue, 27 Jan 2026 13:51:19 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id E0F6F119A864D;
	Tue, 27 Jan 2026 14:51:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1769521878; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=pg8UaP+E+u/jU7UCV1uDi0k3PQIk59zgUwfS5Ki6ZnQ=;
	b=XYsF5QM6ZKWrqrax79YmYPfrri+Uf4nc9qKAxUk8vkcaJafiqn3SLU3bsamgkmLVK9PmBO
	VQEJWyh/vRx5XUqnyDFmOQM1y3B6wQ5pPhFUgP9Ro4FZy/QNtlNVW6TfxB0o40jrotWEaA
	zEyAF0TTQul5t8puSSaUsOQ3n/5fUQhC5Y7/eGA3zf45N7V6PkVzd18KXnG+ukQRXgqhvu
	gn8UitoCyxeViG+zvP9SWCu5Qt39OpC3Uf6blfXqxaIs8W3B6awcrmRwbY227lH6DKE+fD
	SE+21tMELgg2dLuMPzBOqzoLymZ/zh8RYnTt6yiwjUfaDT4OOBgnsMKZrA3XtA==
From: Romain Gantois <romain.gantois@bootlin.com>
Date: Tue, 27 Jan 2026 14:51:10 +0100
Subject: [PATCH 1/2] dt-bindings: misc: Describe FPC202 LED features
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260127-fpc202-leds-v1-1-ebd0cfb9f9a1@bootlin.com>
References: <20260127-fpc202-leds-v1-0-ebd0cfb9f9a1@bootlin.com>
In-Reply-To: <20260127-fpc202-leds-v1-0-ebd0cfb9f9a1@bootlin.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 Romain Gantois <romain.gantois@bootlin.com>
X-Mailer: b4 0.14.3
X-Last-TLS-Session-Version: TLSv1.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259911-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[bootlin.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[romain.gantois@bootlin.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:email,bootlin.com:dkim,bootlin.com:mid,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,0.0.0.2:email,0.0.0.20:email]
X-Rspamd-Queue-Id: B20209540E
X-Rspamd-Action: no action

The FPC202 dual port controller has 20 regular GPIO lines and 8 special
GPIO lines with LED features. Each one of these "LED GPIOs" can output PWM
and blink signals.

Describe these special-purpose GPIO lines.

Signed-off-by: Romain Gantois <romain.gantois@bootlin.com>
---
 .../devicetree/bindings/misc/ti,fpc202.yaml        | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/Documentation/devicetree/bindings/misc/ti,fpc202.yaml b/Documentation/devicetree/bindings/misc/ti,fpc202.yaml
index a8cb10f2d0df..32913966a22a 100644
--- a/Documentation/devicetree/bindings/misc/ti,fpc202.yaml
+++ b/Documentation/devicetree/bindings/misc/ti,fpc202.yaml
@@ -53,6 +53,23 @@ patternProperties:
 
     unevaluatedProperties: false
 
+  "^led@2[0-7]$":
+    $ref: /schemas/leds/common.yaml#
+    description: Output GPIO line with advanced LED features enabled.
+
+    properties:
+      reg:
+        minimum: 20
+        maximum: 27
+        description:
+          GPIO line ID
+
+    required:
+      - reg
+      - label
+
+    unevaluatedProperties: false
+
 required:
   - compatible
   - reg
@@ -89,6 +106,11 @@ examples:
                 #size-cells = <0>;
                 reg = <1>;
             };
+
+            led@20 {
+                reg = <20>;
+                label = "phy0:green:indicator";
+            };
         };
     };
 ...

-- 
2.52.0


