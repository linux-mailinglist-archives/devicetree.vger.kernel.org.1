Return-Path: <devicetree+bounces-270597-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yM2sIdUAp2k7bgAAu9opvQ
	(envelope-from <devicetree+bounces-270597-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 16:40:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D7C4C1F2CF4
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 16:40:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A1951318809D
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 15:33:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D71EB48C8D3;
	Tue,  3 Mar 2026 15:33:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b="3ZyEBw3Y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 387A848A2CB
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 15:33:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772551983; cv=none; b=jwqLs2w8SOABydJ/TtWpvt7CAalpwMBaF5bW2q5iIg0hpN4/u0yquXo+Hgb1GSbSB73NI9mKONy0YdxaE4ofL2UEBKKfgyVTT6bzQcG4HMH2j/ZA15TAflHBF9A+QVuSU6MXQ4HULNynx/SE0Tlr87E9rmcEuIy8ZpMLtsJobak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772551983; c=relaxed/simple;
	bh=gbAU4zrwrEG67lPkWkojKT2Pi1hPLMXLErFJjWvmqxE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=r0+1lutZXJ80Jclpl1jUh7vxucnObcnFnZqRDIqQ0tDZGWLpsdWcPmdqKdmhfATS3NMZPI9qEXz9Hza++fK53Zkl73jYN+eqZUT452lEpj5atavRkBwq7oYTYf1WKJ/3As0NjyJ9aZlExl29Sw9DKYl1RrJgYh+FYrXvS/u/Ric=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net; spf=pass smtp.mailfrom=flipper.net; dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b=3ZyEBw3Y; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flipper.net
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-439b9b190easo1428843f8f.2
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 07:33:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1772551980; x=1773156780; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0oaDOn0WoQIww/ZnO38d/qe82lVLUA14KTAKUsdavPQ=;
        b=3ZyEBw3YxDnqVzJz3CtYiSsQUJSy0C+PIR4oFvMO5CqWi5Ctr+V0bwEk7A5L7QJ3sG
         csYlu8rj0+kA6i1YhBRF6/Zrb259G+a8tEHhpNr9HuxoHUWL7c8+VsoamkDe4Fx77R6l
         xGfo97w8FRiYu5TyFZIkIlWjzhBM0Em+rEvBd0i6LT2qx9XPOohaTCi6fivMUZGLnBYF
         NaRUM7z2yWmFpNNxBv5AQqDoc+ZqaBKo24xJ1aVwRHdhMpV+eX69OWcOe4SXcit3ac15
         O+0TD1sr1GZ6Ca0gSL9yyPJLOrgJxdwwk/KFuEY5an05FCNetO+paxT3BJK3OouDHMBx
         qwwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772551980; x=1773156780;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=0oaDOn0WoQIww/ZnO38d/qe82lVLUA14KTAKUsdavPQ=;
        b=cwpdFq8nLGKGLuWRjWaOFaHdq+PX/zR4k4uX592qQzo3eTc/1mGwRZWXcX+cJVy90C
         vqqBas19WOfO+Nh/dCCBQV2uX8WQSt6x2+V+peodz2PzAyXEQczOoR1luckc8kp7VQ+Z
         dTDDorEMIM7czlW7oQQSUgUwS1UaXzc+9O9JE4/p5uDqWa1z0PplJMQp/Lf/PHpLtOQ3
         miVgTxntf8DicnvgG2F42mX0iCV9fiwPyg3YPFwE5MV/q3qEdNGOGnfqlvf/VzYtIxUv
         CSEglEpxmee6I8s0drVzkeyQo0t5VDg4jZoulbUz1Jygrfh+7A0IgDvZ26ceIy7/mox+
         CyQg==
X-Gm-Message-State: AOJu0YztYRFCj8O9TToiUnDjCvim3kRM+8sKmr+D8O/wZWL35oIEjHvO
	wb50j8+UeA5qpc9zKhnz7197GqhrD8sRIebV6YPKIVfKpVaxvt4YoTANwlEleA+0OoE=
X-Gm-Gg: ATEYQzyPv1L+UnxCjOh9ShvGLYZkTqxlW4LFQ8ha6f7cWCY1zN1EbOTo1lAYJoKKjKw
	fxf5WQNPjHtjkFQACWiegao2LaYQjIQWD3+rCy8BQAPXnSi0ca52QF/Z932GEf+ycxxlhkiKx0r
	04EQb2pBvWSRcRf+9yEi8nVDGJDxPHBBIND1uxefSBpvuV77KwyjggkinU154PKy/pX3wHozM4p
	z2m2VXWKU4SgjwhlpSQ3d8zHxEN/IdAEzvEsjV+oGWJgMKCAqcnk6LyuX5WTJlSD/RsCBj2HT6k
	cwO9U+JyqFct6OuFLSaTUF/Aw5l1gxH4GU2zFSH7j94wqaYrX+Zpi4FEoraWsI2vh2H81nLRFOp
	aa9wLNNHrYkanRtnSPFYXxVWTayQBjwpcTRhgFxWWbI6e297OdCAdP1QrTgUu1cH6hTTgbr7UwW
	pv9DMo+dCp5JVf+MB9Aisl7/PPiye0Bhl2IPyZfHzSoMQFWSjp4K86svqQNhKFkUTtRBmStbWGn
	CY=
X-Received: by 2002:a05:6000:22c1:b0:439:c018:60f2 with SMTP id ffacd0b85a97d-439c0186351mr5563064f8f.12.1772551979971;
        Tue, 03 Mar 2026 07:32:59 -0800 (PST)
Received: from alchark-surface.localdomain (bba-94-59-44-101.alshamil.net.ae. [94.59.44.101])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439b55d15besm19799447f8f.30.2026.03.03.07.32.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 07:32:59 -0800 (PST)
From: Alexey Charkov <alchark@flipper.net>
Date: Tue, 03 Mar 2026 19:32:46 +0400
Subject: [PATCH 01/11] dt-bindings: mfd: ti,bq25703a: Expand to include
 BQ25792
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260303-bq25792-v1-1-e6e5e0033458@flipper.net>
References: <20260303-bq25792-v1-0-e6e5e0033458@flipper.net>
In-Reply-To: <20260303-bq25792-v1-0-e6e5e0033458@flipper.net>
To: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Chris Morgan <macromorgan@hotmail.com>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Sebastian Reichel <sre@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Sebastian Reichel <sebastian.reichel@collabora.com>, 
 linux-pm@vger.kernel.org, Alexey Charkov <alchark@flipper.net>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=4128; i=alchark@flipper.net;
 h=from:subject:message-id; bh=gbAU4zrwrEG67lPkWkojKT2Pi1hPLMXLErFJjWvmqxE=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWQu+6+m/jp+k5yUXuG982Z5fbkB6av9PFj4MhN5Trb1f
 FLI+mvYMZGFQYyLwVJMkWXutyW2U434Zu3y8PgKM4eVCWSItEgDAxCwMPDlJuaVGukY6ZlqG+oZ
 GuoY6xgxcHEKwFT/r2D47+DMreW4sfehk+e1Po8gri9zP5+ckFD5sabBrNhCUfbJOoZ/ikvnSz3
 ruXcxPqyINTt1YVNNR0y+7oeP6um/2+RiWx4xAwA=
X-Developer-Key: i=alchark@flipper.net; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-Rspamd-Queue-Id: D7C4C1F2CF4
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[flipper.net,quarantine];
	R_DKIM_ALLOW(-0.20)[flipper.net:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-270597-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,hotmail.com,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[flipper.net:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alchark@flipper.net,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[flipper.net:dkim,flipper.net:email,flipper.net:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,devicetree.org:url]
X-Rspamd-Action: no action

TI BQ25792 is similar in operation to BQ25703A, but has a different
register layout and different current/voltage capabilities.

Expand the existing BQ25703A binding to include BQ25792, and move the
voltage and current limits into per-variant conditional statements.

Signed-off-by: Alexey Charkov <alchark@flipper.net>
---
 .../devicetree/bindings/mfd/ti,bq25703a.yaml       | 79 +++++++++++++++++-----
 1 file changed, 62 insertions(+), 17 deletions(-)

diff --git a/Documentation/devicetree/bindings/mfd/ti,bq25703a.yaml b/Documentation/devicetree/bindings/mfd/ti,bq25703a.yaml
index ba14663c9266..99b4fba7c1d4 100644
--- a/Documentation/devicetree/bindings/mfd/ti,bq25703a.yaml
+++ b/Documentation/devicetree/bindings/mfd/ti,bq25703a.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/mfd/ti,bq25703a.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: BQ25703A Charger Manager/Buck/Boost Converter
+title: BQ257xx Charger Manager/Buck/Boost Converter
 
 maintainers:
   - Chris Morgan <macromorgan@hotmail.com>
@@ -14,7 +14,9 @@ allOf:
 
 properties:
   compatible:
-    const: ti,bq25703a
+    enum:
+      - ti,bq25703a
+      - ti,bq25792
 
   reg:
     const: 0x6b
@@ -23,9 +25,6 @@ properties:
     description:
       Maximum total input current allowed used for both charging and
       powering the device.
-    minimum: 50000
-    maximum: 6400000
-    default: 3250000
 
   interrupts:
     maxItems: 1
@@ -50,18 +49,10 @@ properties:
 
         properties:
           regulator-name: true
-          regulator-min-microamp:
-            minimum: 0
-            maximum: 6350000
-          regulator-max-microamp:
-            minimum: 0
-            maximum: 6350000
-          regulator-min-microvolt:
-            minimum: 4480000
-            maximum: 20800000
-          regulator-max-microvolt:
-            minimum: 4480000
-            maximum: 20800000
+          regulator-min-microamp: true
+          regulator-max-microamp: true
+          regulator-min-microvolt: true
+          regulator-max-microvolt: true
           enable-gpios:
             description:
               The BQ25703 may require both a register write and a GPIO
@@ -74,6 +65,60 @@ properties:
           - regulator-min-microvolt
           - regulator-max-microvolt
 
+  allOf:
+    - if:
+        properties:
+          compatible:
+            const: ti,bq25703a
+      then:
+        properties:
+          input-current-limit-microamp:
+            minimum: 500000
+            maximum: 6350000
+            default: 5000000
+          regulators:
+            properties:
+              vbus:
+                properties:
+                  regulator-min-microamp:
+                    minimum: 0
+                    maximum: 6350000
+                  regulator-max-microamp:
+                    minimum: 0
+                    maximum: 6350000
+                  regulator-min-microvolt:
+                    minimum: 4480000
+                    maximum: 20800000
+                  regulator-max-microvolt:
+                    minimum: 4480000
+                    maximum: 20800000
+    - if:
+        properties:
+          compatible:
+            const: ti,bq25792
+      then:
+        properties:
+          input-current-limit-microamp:
+            minimum: 1000000
+            maximum: 3300000
+            default: 3000000
+          regulators:
+            properties:
+              vbus:
+                properties:
+                  regulator-min-microamp:
+                    minimum: 0
+                    maximum: 3320000
+                  regulator-max-microamp:
+                    minimum: 0
+                    maximum: 3320000
+                  regulator-min-microvolt:
+                    minimum: 2800000
+                    maximum: 22000000
+                  regulator-max-microvolt:
+                    minimum: 2800000
+                    maximum: 22000000
+
 unevaluatedProperties: false
 
 required:

-- 
2.52.0


