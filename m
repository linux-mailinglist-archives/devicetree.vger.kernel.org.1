Return-Path: <devicetree+bounces-280329-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GEI0Jqixw2kktgQAu9opvQ
	(envelope-from <devicetree+bounces-280329-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Mar 2026 10:58:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D87CF32288A
	for <lists+devicetree@lfdr.de>; Wed, 25 Mar 2026 10:57:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8406B300F9FC
	for <lists+devicetree@lfdr.de>; Wed, 25 Mar 2026 09:54:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B4B439F196;
	Wed, 25 Mar 2026 09:54:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="uFDJAPU9"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-02.galae.net (smtpout-02.galae.net [185.246.84.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F51D3A1D0A
	for <devicetree@vger.kernel.org>; Wed, 25 Mar 2026 09:54:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.84.56
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774432499; cv=none; b=VMkm/4SaS87NkjWKcoTu01ZP1DhTW3gs4VLKkuH2C4eo71J8j52/Fx7KN8yFEAm1Rjq3mb/wDvJgFc4meeerR3qLr/dCwAqnwsOceULUnQQNTBUXDnQ+u3xsYPsCoSi+o/LztiiNWn6xoP25XB0CyQcVjqkfLNZKTG1fdoQEAGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774432499; c=relaxed/simple;
	bh=JwOTfZ0zXD9xFm+GwfjoTgGaOSvCpQiomKrNmkHafR8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=qs4D2kwkn5rpqpG3tp0Wx4cV2IEox0Q0BAZC0432n4SOj3Cwk2g3XIBvkMZ8oMCv1FSOKUcJvfopZOy162jCvLHbOo3TJTuWhRnj8Ek34czIACcxN7rvXLlTy+Wa+SVV6ZwGToy05Fpn6AOFXeGLXqpi3+L5Ona+nZGXHJynfWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=uFDJAPU9; arc=none smtp.client-ip=185.246.84.56
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id 331891A2FE1;
	Wed, 25 Mar 2026 09:54:56 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 02318601A1;
	Wed, 25 Mar 2026 09:54:56 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id E038D104513BB;
	Wed, 25 Mar 2026 10:54:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1774432495; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=cI4BDv5XAVww5GN1bqorromN+dveJhzpfdeVRH93Lt8=;
	b=uFDJAPU9NN+Sz06jQdjEw8BNn1rrWNi06O1syql+WiDlG2Z6xZdY54D2tT6cVpCgsOiEBs
	paswgOX8c0FA9mOvIueSwagi5NINbf+IHZKJx8APbeP55aOzyeXbxOOlW8B7DP2IaQGVWB
	I0YLQdvX+pJgQqwvP9u1g9EAfCgHxxfyo6kurLNqAcFrLDviDaHn40ev5cRbDqohFK9DS9
	bHAjlzbCjxnY2t0vDsASUZamnCK1uvm6HIhedMB3Mi3Mp/WNxX+UF5XBNLxoCwWdv54gDc
	Ss43Yxj6BB1O/VtGDxzVz3d/R38tg1Kg8TOcTdJ4rx6Ig0NhDWjlV/Ty10nS+Q==
From: Romain Gantois <romain.gantois@bootlin.com>
Date: Wed, 25 Mar 2026 10:54:32 +0100
Subject: [PATCH RESEND v2 2/3] dt-bindings: misc: Describe FPC202 LED
 features
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260325-fpc202-leds-v2-2-a2f4da739b92@bootlin.com>
References: <20260325-fpc202-leds-v2-0-a2f4da739b92@bootlin.com>
In-Reply-To: <20260325-fpc202-leds-v2-0-a2f4da739b92@bootlin.com>
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
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[gmail.com,bootlin.com,vger.kernel.org,microchip.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-280329-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[bootlin.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[romain.gantois@bootlin.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,bootlin.com:dkim,bootlin.com:email,bootlin.com:mid,microchip.com:email,0.0.0.2:email,0.0.0.20:email]
X-Rspamd-Queue-Id: D87CF32288A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

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
2.53.0


