Return-Path: <devicetree+bounces-272163-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MJ4IAbbmqmkTYAEAu9opvQ
	(envelope-from <devicetree+bounces-272163-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 15:37:42 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E169222CD3
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 15:37:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9064E314FFDE
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 14:33:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D30FB34F48B;
	Fri,  6 Mar 2026 14:33:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b="g0gDN96p"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50C4034D907
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 14:33:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772807596; cv=none; b=MXNL4Lt5vD4Z4DY7U7aWstWw1XBkZNhcOEb2y3lMWfjwcdgxNNcITIqDGnVt/k+ApjLtANOLS1mPU1e4mRVuzMvZ0p3X8fDwgEwJ5h6EJvYPMS5f2Ws58qxiC5ERx+IDiy0C1oECKwxffpUzHtuvzb3ri1sVYnSqWtzHrmo49Zk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772807596; c=relaxed/simple;
	bh=58YP2dJRgAizAOikYaKjM/irmjn+e7RczszyYkhkS9E=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=KMJqpiQUP4FrmxFwewwE/5CvqXmgX6ZojPIA9Tdx8NQJgvbbfoVpuNGzLSfYGoyJX1vKAPkNnKA2zavPSLiVgPhshTr7ChHj1OHMc5L8BUgLVDvrhe6OUYQ9BCfl+n7hftBTt63T1rntopXuUcC5Sj3chTBC5Xay8LsrFBeBmTo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net; spf=pass smtp.mailfrom=flipper.net; dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b=g0gDN96p; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flipper.net
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-439b73f4ab4so6114566f8f.1
        for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 06:33:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1772807594; x=1773412394; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jt/bQE8Be9/7vIBUKX4+9xpaDCMMIJNvl2zw+VOvhnY=;
        b=g0gDN96pc3H1b+eveNBdoH6ko0Exh0Vn1npPf9W4gp+ELRvpKg6pIMmGbUc3X7JjZ8
         PUd9CFrCsL2D1BdjI1KvnlMSaePMUeGq1h4VWXXuWS7k+W6c1B6gSXNySjZEZBGOAjtN
         ZRaxYSybu3V/nf2NqC3/O3uR74HVGqRKh/uNF8ZjuhTBVOwZlj0s5fOifyAv/grLiP1D
         g0D3C4bqtQ3foTm9H0egWAXzxdqIrNv9VuUDrgLKezHTeyErzrxjmejTLB1cO3McGrn2
         CPWA9eun6iXBDRp7dmwuoHrb3zmbf8UMaysk381gur0JR7O2k+fSOm6fteSdMo2BdNA5
         ZDWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772807594; x=1773412394;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=jt/bQE8Be9/7vIBUKX4+9xpaDCMMIJNvl2zw+VOvhnY=;
        b=csjIrIMypwE36dKDIiW/E0apZtQI2FtgTblToEBFLOTKqHXbKihf+7ZB4ug3uTsxUA
         onRM8SsO4vrUDjgledCOgyZliCahvm5vyAu/kpg/ROoL6J5M3NCLj0+QlF/u5IGGYNWi
         026RcPEQd3icEH4AP6TW3/f6m2I4Zssw+CP2U3GHKJTGGTxsZzuN2H3+mMiZJ4OdTf6b
         uCIZ/3tupdxBo423Z1pPM14R3DlN0+8v17Lr9+/2m7s4hGusWcfZ67KvgAckpcibKwb9
         lC+A/V8UY0fFf+pUqEtxtEO3JUpF5Nj7cQUJyDfoLU4mov0L8Ip0yGgv/CYxXsjiyp8m
         6AQQ==
X-Gm-Message-State: AOJu0Yz/3usNFQEVvwGEC/w010OaT2lA/Tk4ZsK0tOHAGZDdVN6QCo97
	eqENlPpQi4o2ahs4Gn3hIoQzu1S9aEDzftQTOA79cJ+BUbv3+XhvVZtlo2/LWlGr69A=
X-Gm-Gg: ATEYQzz47+TbApBQPijaI3uThQfDIWJ/+6cptXdB9hkxUlXZLfG2yux9XIMo4a9xGEt
	GBcUyWQb97847MKQrXqfm+0phV2osutTKyyWFrqc6J2HdPSQAbghkp9f91QlrAY2f4s+S+FRgVv
	QnLKNAgxxyjYFKDcLLThdmVhfp+jcYW//GMDkSFqWnJb64a0RGeRFQ23Y/28xhVdyEviNaHFM2y
	FsnYj149zyuKx2KgVYYLfaUxd6hN8wnR+Cs+AWROUFq8LGm4qLlALMwhI1dzc1uGEi2SOem+P77
	QRcxCGXQWU3Kw0NXRgfBcbAFu5k7/veUOcHssK59QmuVrKy7bFFYGEcL+F+fZ908QYEgFoKnKbT
	z4lL5AcNhV4WHKsjCTtyYuhskfxxLOlBI03RrrwULJjGT2ktxmwA8fRi7ijPM9USn4RI1L6Sakh
	5LDr1f/vZO9gURpriisReEk9w1Y9iG8yAxhlR87pyeOR166ajcr4dUnGEgHf8rt9aT52GaABk6Y
	0RwRQ==
X-Received: by 2002:a5d:5c8a:0:b0:439:ac98:751f with SMTP id ffacd0b85a97d-439da65764cmr4107142f8f.23.1772807593609;
        Fri, 06 Mar 2026 06:33:13 -0800 (PST)
Received: from alchark-surface.localdomain (bba-86-98-192-109.alshamil.net.ae. [86.98.192.109])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439dad8daf2sm4635281f8f.2.2026.03.06.06.33.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Mar 2026 06:33:13 -0800 (PST)
From: Alexey Charkov <alchark@flipper.net>
Date: Fri, 06 Mar 2026 18:33:01 +0400
Subject: [PATCH v2 01/11] dt-bindings: mfd: ti,bq25703a: Expand to include
 BQ25792
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260306-bq25792-v2-1-6595249d6e6f@flipper.net>
References: <20260306-bq25792-v2-0-6595249d6e6f@flipper.net>
In-Reply-To: <20260306-bq25792-v2-0-6595249d6e6f@flipper.net>
To: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Chris Morgan <macromorgan@hotmail.com>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Sebastian Reichel <sre@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Sebastian Reichel <sebastian.reichel@collabora.com>, 
 linux-pm@vger.kernel.org, Alexey Charkov <alchark@flipper.net>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=3798; i=alchark@flipper.net;
 h=from:subject:message-id; bh=58YP2dJRgAizAOikYaKjM/irmjn+e7RczszyYkhkS9E=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWSuero4VYovWf7P7kmhP2IWiaW2vvps0vCwm6f82eKKQ
 uYkqcovHRNZGMS4GCzFFFnmfltiO9WIb9YuD4+vMHNYmUCGSIs0MAABCwNfbmJeqZGOkZ6ptqGe
 oaGOsY4RAxenAEx1gh4jw8TnCx92iPPs9ZaZef5tCBtXYwDT1NpztxyXhjwN7E47MZORYZNpoNW
 7XAFNk9Uypct+i9/+PH39h5uaF5pM1rzivmLBzgcA
X-Developer-Key: i=alchark@flipper.net; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-Rspamd-Queue-Id: 4E169222CD3
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
	TAGGED_FROM(0.00)[bounces-272163-lists,devicetree=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url,flipper.net:dkim,flipper.net:email,flipper.net:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

TI BQ25792 is similar in operation to BQ25703A, but has a different
register layout and different current/voltage capabilities.

Expand the existing BQ25703A binding to include BQ25792, and move the
voltage and current limits into per-variant conditional statements.

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


