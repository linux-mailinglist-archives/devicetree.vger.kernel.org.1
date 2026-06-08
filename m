Return-Path: <devicetree+bounces-308417-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id HJYcIz7wJmqPnwIAu9opvQ
	(envelope-from <devicetree+bounces-308417-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 18:39:26 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A9E88658CCD
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 18:39:25 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=bootlin.com header.s=dkim header.b=zHQlZzT1;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308417-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-308417-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=bootlin.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 900F63055A97
	for <lists+devicetree@lfdr.de>; Mon,  8 Jun 2026 16:00:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 984A032FA3C;
	Mon,  8 Jun 2026 16:00:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FB44330305
	for <devicetree@vger.kernel.org>; Mon,  8 Jun 2026 16:00:36 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780934438; cv=none; b=on2/MeUtiWAxAjhTsSQ/0wVIfD5+wf+UtAon0mg0PxmNGtNp8S1bwQTYaYqRDeEXmj30NqLfrvDz+WABXARRxoTu2GD0vjLjqPj/0Sh9txfgz8ex9QYUUpNmUQ01YsNH2ylst2I8xdyH+aNJ9HoqQbeDEfFHeqJ+1BmFhdgV38g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780934438; c=relaxed/simple;
	bh=sdpDayMX61YvBZXacSyRdkvxSAoP6fxbVWk/8cunNLc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=H22Iy13D2k8HUvV9os1sAlykcQz0GugxlGYiY6lO/D2Z9CJWyN1/Z75NbnvsCiP82dshuI659mOgCTUisvE+1VbdJDcgdY3S+tj5bcVwbjYOLlqkR9eonlOfy/cqW6GqkaUp12OtGibydze10KCI+VgBv3dJg/YuhEF7zhP2wOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=zHQlZzT1; arc=none smtp.client-ip=185.246.85.4
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id 842754E41786;
	Mon,  8 Jun 2026 16:00:35 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 5645D5FFB7;
	Mon,  8 Jun 2026 16:00:35 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id DD2E2106A19CE;
	Mon,  8 Jun 2026 18:00:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1780934434; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=5L85lN+YIg76FDHGEipMOXZM+5GQVFMUjSQ04DJ98rM=;
	b=zHQlZzT1V5ImsmIMOHoEQc5nXpwKftecEKLCklUZBRcQ5/1zp6gBeCk8i+NxWqbKaEuX8x
	oTenWSrzJ2UEA5cvtAJaXGn812qHi5J10bC/vTtceqHA9hN7T0e1lii5R8VDTN+f4DAgSD
	/qkJ9UjksMeat/OC40WFvnflpSgPPgaqIizww9XQj6dsKxiiyAp6/daJJogYSuVgSVUceH
	EgbCNNymiaVeQmYBKspklGx//zvQNqS1GP0lKP0FVbKos0fV5ETHfsE0Ow7fhLeMm6NPC1
	JqrJCbBSnNiziaB6VIrSqaLn/PKC6YZvJl9f1WZulb/vVLsjzG1qU7J+FLFRDw==
From: Romain Gantois <romain.gantois@bootlin.com>
Date: Mon, 08 Jun 2026 18:00:24 +0200
Subject: [PATCH v2 1/2] dt-bindings: iio: ti,tmp117: add binding for the
 TMP119
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260608-tmp119-v2-1-30c3537d5097@bootlin.com>
References: <20260608-tmp119-v2-0-30c3537d5097@bootlin.com>
In-Reply-To: <20260608-tmp119-v2-0-30c3537d5097@bootlin.com>
To: Puranjay Mohan <puranjay@kernel.org>, 
 Jonathan Cameron <jic23@kernel.org>, David Lechner <dlechner@baylibre.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 Wil Stark <wil_stark@keysight.com>, linux-iio@vger.kernel.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 Romain Gantois <romain.gantois@bootlin.com>
X-Mailer: b4 0.15.2
X-Last-TLS-Session-Version: TLSv1.3
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-308417-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:puranjay@kernel.org,m:jic23@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:thomas.petazzoni@bootlin.com,m:wil_stark@keysight.com,m:linux-iio@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:romain.gantois@bootlin.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[romain.gantois@bootlin.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[bootlin.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[romain.gantois@bootlin.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A9E88658CCD

The TMP119 has the same register layout as the TMP117, and a better local
sensor accuracy. Add a compatible for it.

Use ti,tmp117 as a fallback compatible for ti,tmp119.

Signed-off-by: Romain Gantois <romain.gantois@bootlin.com>
---
 .../devicetree/bindings/iio/temperature/ti,tmp117.yaml   | 16 +++++++++++-----
 1 file changed, 11 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/iio/temperature/ti,tmp117.yaml b/Documentation/devicetree/bindings/iio/temperature/ti,tmp117.yaml
index fbba5e934861c..d12dfef315b6c 100644
--- a/Documentation/devicetree/bindings/iio/temperature/ti,tmp117.yaml
+++ b/Documentation/devicetree/bindings/iio/temperature/ti,tmp117.yaml
@@ -7,19 +7,25 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: TI TMP117 - Digital temperature sensor with integrated NV memory
 
 description: |
-    TI TMP116/117 - Digital temperature sensor with integrated NV memory that
-    supports I2C interface.
+    TI TMP116/117/119 - Digital temperature sensor with integrated NV memory
+    that supports I2C interface.
       https://www.ti.com/lit/gpn/tmp116
       https://www.ti.com/lit/gpn/tmp117
+      https://www.ti.com/lit/gpn/tmp119
 
 maintainers:
   - Puranjay Mohan <puranjay12@gmail.com>
 
 properties:
   compatible:
-    enum:
-      - ti,tmp116
-      - ti,tmp117
+    oneOf:
+      - enum:
+        - ti,tmp116
+        - ti,tmp117
+      - items:
+        - enum:
+          - ti,tmp119
+        - const: ti,tmp117
 
   reg:
     maxItems: 1

-- 
2.54.0


