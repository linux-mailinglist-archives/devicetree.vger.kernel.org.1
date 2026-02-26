Return-Path: <devicetree+bounces-268871-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iIihFhNWoGlLiQQAu9opvQ
	(envelope-from <devicetree+bounces-268871-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 15:17:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A5B01A75C0
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 15:17:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 7C0BD30B5570
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 13:52:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A73603A1E97;
	Thu, 26 Feb 2026 13:52:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="L/7AIz8r"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09EF63A1A2D;
	Thu, 26 Feb 2026 13:52:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.171.202.116
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772113927; cv=none; b=E3pdeRR5+kKK2NapdHhA3+7SSeNKrarraxEWnuU3EEqUpiqySTW2rautZTH824WafWOo2XM0+8QBkFpQgt2Osq4mxmP/czWy650E7JsbA8+vlRpVpkT6uoTAYyqEVXkt74IoHmDUDsIMbyVEfv2Hxm1lxjdIOnfUXujgPxUlBGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772113927; c=relaxed/simple;
	bh=1h1H6e3lBEANZSbDNUw6NzkC2iukXH7P5Q4+TpRsykI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=jZMwdxRvuKGgkQmshWFAkWwbP8SSpfD+hakIVuoJa2Q2ofqrohPTIRQHXUEFCMo42Aih5UpV+Ak/mcRcvfkohUAY7krE1tOVwsjNBmLx67TmLpQIpr9K0Esf+yZWXd7xDI/4qdaF8R7jp7D5lp40vPTD7Em1wEjVGuuyTcyOl+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=L/7AIz8r; arc=none smtp.client-ip=185.171.202.116
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id 24776C40696;
	Thu, 26 Feb 2026 13:52:16 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id A9FFD5FDEB;
	Thu, 26 Feb 2026 13:52:00 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id B10221036939A;
	Thu, 26 Feb 2026 14:51:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1772113919; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=oRNHwNkL6/KInlqbqQIYxGEYtoRm7PUWkKEU0wLTows=;
	b=L/7AIz8rEbczF9i6R6jNQCisL3uZNW82XXYH3Ppj0Ew2V+8G2wfNqzhOagNgnp7Fotnvnb
	eSSDd78fGtohExB5SpITN6DlzFaL3KYqoSdBNt/vx1PcrxjocNxZMCBE79UU5H9GX+59t0
	M3DVkafNaEf3vZUkkOExNw46pgZ7Xd4Qij1JVNCb/EvWRsUeykZWI/D6w+1HUlmZ5JTl5V
	uMcBykO0U+/DPtKg6HuQYjRUxlmnl3XauyEVe8n5+2cjHrTmFVn3nfzv/3siGytWH0EncM
	zaUi17QIQU99xiEj7TX4wzyBCBKbrUt2vY3DWgpBybjEQnN8GC+uvD49Zk4e4A==
From: Romain Gantois <romain.gantois@bootlin.com>
Date: Thu, 26 Feb 2026 14:51:52 +0100
Subject: [PATCH v2 2/3] dt-bindings: misc: Describe FPC202 LED features
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260226-fpc202-leds-v2-2-bc74857869e0@bootlin.com>
References: <20260226-fpc202-leds-v2-0-bc74857869e0@bootlin.com>
In-Reply-To: <20260226-fpc202-leds-v2-0-bc74857869e0@bootlin.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Felix Gu <ustc.gu@gmail.com>, 
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 Romain Gantois <romain.gantois@bootlin.com>, 
 Conor Dooley <conor.dooley@microchip.com>
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
	FREEMAIL_CC(0.00)[gmail.com,bootlin.com,vger.kernel.org,microchip.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268871-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[bootlin.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[romain.gantois@bootlin.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.991];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:mid,bootlin.com:dkim,bootlin.com:email,0.0.0.20:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,microchip.com:email,0.0.0.2:email]
X-Rspamd-Queue-Id: 6A5B01A75C0
X-Rspamd-Action: no action

The FPC202 dual port controller has 20 regular GPIO lines and 8 special
GPIO lines with LED features. Each one of these "LED GPIOs" can output PWM
and blink signals.

Describe these special-purpose GPIO lines.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Romain Gantois <romain.gantois@bootlin.com>
---
 .../devicetree/bindings/misc/ti,fpc202.yaml        | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/Documentation/devicetree/bindings/misc/ti,fpc202.yaml b/Documentation/devicetree/bindings/misc/ti,fpc202.yaml
index a8cb10f2d0df3..32913966a22a5 100644
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


