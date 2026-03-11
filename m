Return-Path: <devicetree+bounces-274035-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uJiuKHdYsWmGtwIAu9opvQ
	(envelope-from <devicetree+bounces-274035-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 12:56:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 49A9E2633DC
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 12:56:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 7772D303EB74
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 11:56:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DCACF3DEACD;
	Wed, 11 Mar 2026 11:56:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b="ZoPfvd7u"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B43083DE446
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 11:56:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773230185; cv=none; b=OzZke/ta9SiAQV1BVYPKZab/O17ZQMuwU0BNmikjpS1IJ2e+w1O37D30lQSZf637cfx5i3xAYa3ewn2ZH4Hr6G4cHt8hNRc6KUJ50jhj28f8Z7DAccm9GT/8uS4f/4nGb1ZjdIkRaOhemXQ00pyqhbU8IR2Wpxci3CA5oeX70U8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773230185; c=relaxed/simple;
	bh=Kch86XWLNpsoWXsiUYScxG9+qZq2PDWJ+mVUNiuprdY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=boxD8vMSwZbTAdZ9XeCpHZVBcCqAjMbqm17dnp5maQg2nC+AVkHOEgRt6zl6vF0mN1KNiVTHWP+5IoB+fClM9BjcQu1o98fq0xp8BNnKGk3dhdMYeOxpQ20kOytw7/QleB4K5DnGgLwbgvWS9E4ZcgxhFZqSDrtXrLoaNSNYYRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net; spf=pass smtp.mailfrom=flipper.net; dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b=ZoPfvd7u; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flipper.net
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-4852f8ac7e9so53191425e9.1
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 04:56:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1773230182; x=1773834982; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=a3tePfAp0V+6zfOlKlirFvJa8IZ0hYoxL5FVcQEbR28=;
        b=ZoPfvd7uwgmLH8bnvkCOkEOOkiu0xTsr0qCkebF1drwbWDVQ9zNslBrc5yT//loPu/
         6DwI2gzbfZRHyrqyO0mM8/rNB/szh6Kn7MurAgwd8NOvEeC3Y0wN/WEEOHyYNTm7FmyU
         Feq7dHtUv6FjpCev68pbU/qZMBLql/E7LtvyytmgILfedooeQ+8HZllaElNMer9xAwuZ
         42Tvnj9tSgTQODQqBWu8yoHERClJrNWRMQrV1/1Devq36/gJAXEJufM8zHoNL25TynJ5
         cgKYvfnqsTePT+YwCTe89wvw8ZdzbVXwdr74jZIh6Dw1FmFeD5Syh1YxroSAWTaon77/
         os2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773230182; x=1773834982;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=a3tePfAp0V+6zfOlKlirFvJa8IZ0hYoxL5FVcQEbR28=;
        b=Xq4b5n8D4KDeMC0vOcw/BBhN1KIm6DIkLIMLEYKwRWfvmceCINmD/qf057rftTs861
         4knbFuC7v4YUJ+uXX4+DJG1Uo766RF3ozFFLjZVHjOd+zWE97JovMnltZIg3+rkvwXCQ
         MjLQvcohKgBotubkAWWICPj/6DElovVjmq8U6UHRKq4QnPaBiauwQGmYW8RB1zGwnGH7
         W8shi0SCJKzqrzkhPMfZVVOh542R+CoV8EV7BRNEkV3Mp9xpuCk29lq+X6qDgX7yfTRG
         lvRNW2opPUmFRaizQHJU8wI3YaxZ47z+N87/y4ARR+nsvLKzCfeadFgZgFcRtZjTPjOt
         7XxA==
X-Gm-Message-State: AOJu0YzwastYWg892UGLMFQcVfmgpec7D8+7PPEluznb4kvgtNGWMklM
	+2hpgcwh6AIz5gade34f+J2q6kVR5uzLcJFulDvYACUIPHfbuyTZl8MqbEqDQwk5si0=
X-Gm-Gg: ATEYQzyoD352XBt2vyIKLRMCPAnTrElgZFn2RvLY2vS/MNRFVzzQnpx/wizgPbAKKH2
	pFxayDJArXaEt3C742EX/fIbkDGBAguNUnlbkdCgJvxlcPfHzGN314CCY+m+/OEF3/Bfg87o3at
	u4Ru7jCWBj56NgF2oz8RPoF0Aa24SV7HWpbqcyHYBK0SfLNNYv4UHl3c+Rg1YGRXVWeHfnmVOVc
	HTPFavBHJMv9G0kZSsGHfq5LiAa51LXkRN83Vt1ou051IMQOjb+p/bqNemGHWVCzJCLmJ6PxHir
	06AtOvKFmo2pqVeU2E6qIV555Obcybcs464OYFDY8ivb4IaKXiSLtFu1nbIe+jxniDRIb+baKmU
	UDBu5gBdcsfE/ksWER11wzZ/+JSTkrMQm5Dht1SfXO7DbJrC9iuG5KRKuSNkfvAyfkUk3vkKQrp
	TlmxNZE7Zh9DiMjkE8Vk6q1hdQtyJlGrCYeoXDHSqViebcFEwoe7kLpsENpiOcV5iw00gFbBkBP
	vngNq4yHEppZqU1
X-Received: by 2002:a05:600c:4fd5:b0:485:379b:57be with SMTP id 5b1f17b1804b1-4854b0cb6c7mr36459495e9.1.1773230182091;
        Wed, 11 Mar 2026 04:56:22 -0700 (PDT)
Received: from alchark-surface.localdomain (bba-86-98-192-109.alshamil.net.ae. [86.98.192.109])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4854ad5416bsm39586485e9.1.2026.03.11.04.56.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2026 04:56:21 -0700 (PDT)
From: Alexey Charkov <alchark@flipper.net>
Date: Wed, 11 Mar 2026 15:56:14 +0400
Subject: [PATCH v4 01/11] dt-bindings: mfd: ti,bq25703a: Expand to include
 BQ25792
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260311-bq25792-v4-1-7213415d9eec@flipper.net>
References: <20260311-bq25792-v4-0-7213415d9eec@flipper.net>
In-Reply-To: <20260311-bq25792-v4-0-7213415d9eec@flipper.net>
To: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Chris Morgan <macromorgan@hotmail.com>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Sebastian Reichel <sre@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Sebastian Reichel <sebastian.reichel@collabora.com>, 
 linux-pm@vger.kernel.org, Alexey Charkov <alchark@flipper.net>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=3922; i=alchark@flipper.net;
 h=from:subject:message-id; bh=Kch86XWLNpsoWXsiUYScxG9+qZq2PDWJ+mVUNiuprdY=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWRujEg6a9bvJP2Bu9fpQktK45xGg9KtpzUvs/5hF1FlZ
 jUKOJHdMZGFQYyLwVJMkWXutyW2U434Zu3y8PgKM4eVCWSItEgDAxCwMPDlJuaVGukY6ZlqG+oZ
 GuoY6xgxcHEKwFSfesnwP0N3QQg7w6XjyUyf5JMPVaw+lyCutkOwN5+D4XvqOgvTHYwM789/evh
 JS7i3TWLOd5bnk9I6oh/9eK0pUbbu86PytTNNOAA=
X-Developer-Key: i=alchark@flipper.net; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-Rspamd-Queue-Id: 49A9E2633DC
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[flipper.net,quarantine];
	R_DKIM_ALLOW(-0.20)[flipper.net:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-274035-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,hotmail.com,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[flipper.net:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alchark@flipper.net,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,flipper.net:dkim,flipper.net:email,flipper.net:mid]
X-Rspamd-Action: no action

TI BQ25792 is similar in operation to BQ25703A, but has a different
register layout and different current/voltage capabilities.

Expand the existing BQ25703A binding to include BQ25792, and move the
voltage and current limits into per-variant conditional statements.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Tested-by: Chris Morgan <macromorgan@hotmail.com>
Signed-off-by: Alexey Charkov <alchark@flipper.net>
---
 .../devicetree/bindings/mfd/ti,bq25703a.yaml       | 73 +++++++++++++++++++---
 1 file changed, 63 insertions(+), 10 deletions(-)

diff --git a/Documentation/devicetree/bindings/mfd/ti,bq25703a.yaml b/Documentation/devicetree/bindings/mfd/ti,bq25703a.yaml
index ba14663c9266..cdce83f05804 100644
--- a/Documentation/devicetree/bindings/mfd/ti,bq25703a.yaml
+++ b/Documentation/devicetree/bindings/mfd/ti,bq25703a.yaml
@@ -4,17 +4,16 @@
 $id: http://devicetree.org/schemas/mfd/ti,bq25703a.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: BQ25703A Charger Manager/Buck/Boost Converter
+title: BQ257xx Charger Manager/Buck/Boost Converter
 
 maintainers:
   - Chris Morgan <macromorgan@hotmail.com>
 
-allOf:
-  - $ref: /schemas/power/supply/power-supply.yaml#
-
 properties:
   compatible:
-    const: ti,bq25703a
+    enum:
+      - ti,bq25703a
+      - ti,bq25792
 
   reg:
     const: 0x6b
@@ -25,7 +24,6 @@ properties:
       powering the device.
     minimum: 50000
     maximum: 6400000
-    default: 3250000
 
   interrupts:
     maxItems: 1
@@ -57,11 +55,11 @@ properties:
             minimum: 0
             maximum: 6350000
           regulator-min-microvolt:
-            minimum: 4480000
-            maximum: 20800000
+            minimum: 2800000
+            maximum: 22000000
           regulator-max-microvolt:
-            minimum: 4480000
-            maximum: 20800000
+            minimum: 2800000
+            maximum: 22000000
           enable-gpios:
             description:
               The BQ25703 may require both a register write and a GPIO
@@ -74,6 +72,61 @@ properties:
           - regulator-min-microvolt
           - regulator-max-microvolt
 
+allOf:
+  - $ref: /schemas/power/supply/power-supply.yaml#
+  - if:
+      properties:
+        compatible:
+          const: ti,bq25703a
+    then:
+      properties:
+        input-current-limit-microamp:
+          minimum: 50000
+          maximum: 6400000
+          default: 3250000
+        regulators:
+          properties:
+            vbus:
+              properties:
+                regulator-min-microamp:
+                  minimum: 0
+                  maximum: 6350000
+                regulator-max-microamp:
+                  minimum: 0
+                  maximum: 6350000
+                regulator-min-microvolt:
+                  minimum: 4480000
+                  maximum: 20800000
+                regulator-max-microvolt:
+                  minimum: 4480000
+                  maximum: 20800000
+  - if:
+      properties:
+        compatible:
+          const: ti,bq25792
+    then:
+      properties:
+        input-current-limit-microamp:
+          minimum: 100000
+          maximum: 3300000
+          default: 3000000
+        regulators:
+          properties:
+            vbus:
+              properties:
+                regulator-min-microamp:
+                  minimum: 0
+                  maximum: 3320000
+                regulator-max-microamp:
+                  minimum: 0
+                  maximum: 3320000
+                regulator-min-microvolt:
+                  minimum: 2800000
+                  maximum: 22000000
+                regulator-max-microvolt:
+                  minimum: 2800000
+                  maximum: 22000000
+
 unevaluatedProperties: false
 
 required:

-- 
2.52.0


