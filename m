Return-Path: <devicetree+bounces-280744-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SK4UNo9FxGm1xwQAu9opvQ
	(envelope-from <devicetree+bounces-280744-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Mar 2026 21:29:03 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DBC032BD30
	for <lists+devicetree@lfdr.de>; Wed, 25 Mar 2026 21:29:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 100A630C3304
	for <lists+devicetree@lfdr.de>; Wed, 25 Mar 2026 20:20:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9151D3644D1;
	Wed, 25 Mar 2026 20:20:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com [209.85.216.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62DFE3537C9
	for <devicetree@vger.kernel.org>; Wed, 25 Mar 2026 20:20:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774470026; cv=none; b=lYUVyXY1um4GMDrgLbAJM+ZvY40Y5cunzpMbXW/Wy9MjwcYnA/8IxzoFuXlT6VoAoK+lXkzjSrrWFc/ZlhOIV79Rq/bja4cDxdMSnPKEMffUoDltanceRqhLHlUIJA7e0xLiLeDjE7rQntib+TsqaoRHKVO/LpRx4ETj8JpcCJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774470026; c=relaxed/simple;
	bh=8R2nRMTpNx0hPRXdARFDfIVrrrQqtMRyhIM/X1ptw4M=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=mnMlJ70Vlh+bmximDWyaSQY/5/aMJ1+bjglT3nHxV67BnfYfisKV9urrNRtJl8WWCgy58/7yt79O2ZChowHUX6Hfpq5lo+1iQ+Sgs1LUCKMw924+Q441OXtHC/qfQhLU3zFxFSz0TjENJT734asf4ecGbQF77YqpmiSPB1F0Vmk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sirat.me; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.216.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sirat.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f48.google.com with SMTP id 98e67ed59e1d1-35a094cc3e9so158844a91.3
        for <devicetree@vger.kernel.org>; Wed, 25 Mar 2026 13:20:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774470025; x=1775074825;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=yQv+ZppFPPLtEPidAQ+20u5P3TvQUDZOQRWkCdljIik=;
        b=AugtGyobM/YF5WNUKwmOeFVcCKen44S248+NEe6GWj4uTmmMJpYCw2WLOjPcHAePkf
         4eUJ3QFgzajkoCogHL7VpJgNvA8+c8tGEZpRyR4Qko8TmC6/6aMTGcw6a2znO1U9Kw2q
         AlMAPTAb8U5+SMxVYVC4I60JmnCOhdBcdKOjM/WOxSaAcGLLPxU5mdE4KHMoI43lHa5n
         JcaWup+g1QwAtATV3p45J9EJU0kGg095odDxqJxRN135uSmcNqmcvkHu3XG3sWIEfUm9
         cWWpEpt3fW73waDdpcHJJHFbKOgRXRVpVKrOG7q5ysvfXNlcZwuLH5EO/uCYop0zpk2C
         hkZQ==
X-Forwarded-Encrypted: i=1; AJvYcCVYbFbwixHTaoZSmSTer+YASmCfJtXyX97kXr1kO/dKlybFCF0tiepAkm2LDckxxH5t5VMtSjmGKaI3@vger.kernel.org
X-Gm-Message-State: AOJu0YyakK6+BDDjYzLBdoLSxjwSUMWbWrdpjdpQ6RTGRpVcYM3qB26t
	S76TAu8AVrKaHBQlfBBL81nQzkvwNXp7m3v358vagrbrUI/ljXsMAt8y
X-Gm-Gg: ATEYQzyAnBWBdZD7Fi1/PWuCKsvoaT6hy3Ko7njT1/bHFXNKChvf+WcrOYhPHjjxRQO
	c58A80BapHwtKeaW5ABplMAYFb6VH8dgTTLhhBNp0XPhxmwE1D+tt1eUfvpKlj3mpPwLdq9yHz/
	+wIHyk565M5hy8qdqaDwsPf49YsasH+R5dFId7A62F8uU0Q3/89Dn0fDx93Ohfp+dhCKdT4PU3Q
	39pPYP+qIMLCc79lwNXfo/kuGW2zubuDwdX+RKbUq4Ia5ZYc9B8wrzR/boyHZJTyHl17wdyNid6
	btw5QjBhhsosXDwx/WxAH9QsEr6ZxODtEIWcGC7E60mFYp10l/esFyx01y0Feg7ijOBj7vRUJ3C
	N/pM+SPVKH+OaYc9ar6DpLjLKVMK2eEnZT0o3IqUmbCN+yq3l3tMiC82KaN7Nz06PQGLpWQzID+
	fKsiWutqezi1T/yD/4ug6UTn7G6hvJgORl+tWlStI30usavUcyVMByN+6SVAF3NbcCEBUPaWl5X
	Yf/XbtANVBaJkRVvqqXvX9f
X-Received: by 2002:a17:90b:540f:b0:356:1db4:8fe5 with SMTP id 98e67ed59e1d1-35c0ddaa5admr4243177a91.29.1774470024544;
        Wed, 25 Mar 2026 13:20:24 -0700 (PDT)
Received: from archlinux.www.tp-link.com ([103.135.252.24])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c7673933816sm280511a12.21.2026.03.25.13.20.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Mar 2026 13:20:24 -0700 (PDT)
From: Siratul Islam <email@sirat.me>
To: linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: jic23@kernel.org,
	dlechner@baylibre.com,
	nuno.sa@analog.com,
	andy@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-kernel@vger.kernel.org,
	Siratul Islam <email@sirat.me>
Subject: [PATCH v8 1/2] dt-bindings: iio: proximity: add ST VL53L1X ToF sensor
Date: Thu, 26 Mar 2026 02:19:41 +0600
Message-ID: <20260325202005.29822-2-email@sirat.me>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260325202005.29822-1-email@sirat.me>
References: <20260325202005.29822-1-email@sirat.me>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [1.54 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[sirat.me];
	TAGGED_FROM(0.00)[bounces-280744-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[email@sirat.me,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: 3DBC032BD30
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add device tree binding documentation for the STMicroelectronics
VL53L1X Time-of-Flight ranging sensor connected via I2C.

Signed-off-by: Siratul Islam <email@sirat.me>
---
 .../bindings/iio/proximity/st,vl53l0x.yaml    | 24 ++++++++++++++++---
 MAINTAINERS                                   |  6 +++++
 2 files changed, 27 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/iio/proximity/st,vl53l0x.yaml b/Documentation/devicetree/bindings/iio/proximity/st,vl53l0x.yaml
index 322befc41de6..9adb9b13ccc5 100644
--- a/Documentation/devicetree/bindings/iio/proximity/st,vl53l0x.yaml
+++ b/Documentation/devicetree/bindings/iio/proximity/st,vl53l0x.yaml
@@ -4,14 +4,17 @@
 $id: http://devicetree.org/schemas/iio/proximity/st,vl53l0x.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: ST VL53L0X ToF ranging sensor
+title: ST VL53L0X/VL53L1X ToF ranging sensor
 
 maintainers:
   - Song Qiang <songqiang1304521@gmail.com>
+  - Siratul Islam <email@sirat.me>
 
 properties:
   compatible:
-    const: st,vl53l0x
+    enum:
+      - st,vl53l0x
+      - st,vl53l1x
 
   reg:
     maxItems: 1
@@ -21,6 +24,8 @@ properties:
 
   reset-gpios:
     maxItems: 1
+    description:
+      Phandle to the XSHUT GPIO. Used for hardware reset.
 
   vdd-supply: true
 
@@ -28,6 +33,18 @@ required:
   - compatible
   - reg
 
+# vdd-supply is not made globally required to maintain backwards compatibility
+# with existing st,vl53l0x devicetrees that do not specify it.
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: st,vl53l1x
+    then:
+      required:
+        - vdd-supply
+
 additionalProperties: false
 
 examples:
@@ -38,8 +55,9 @@ examples:
         #size-cells = <0>;
 
         proximity@29 {
-            compatible = "st,vl53l0x";
+            compatible = "st,vl53l1x";
             reg = <0x29>;
+            vdd-supply = <&reg_3v3>;
             interrupt-parent = <&gpio>;
             interrupts = <23 IRQ_TYPE_EDGE_FALLING>;
         };
diff --git a/MAINTAINERS b/MAINTAINERS
index 61bf550fd37c..a142a97be4cb 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -25093,6 +25093,12 @@ S:	Maintained
 F:	Documentation/devicetree/bindings/iio/proximity/st,vl53l0x.yaml
 F:	drivers/iio/proximity/vl53l0x-i2c.c
 
+ST VL53L1X ToF RANGER(I2C) IIO DRIVER
+M:	Siratul Islam <email@sirat.me>
+L:	linux-iio@vger.kernel.org
+S:	Maintained
+F:	Documentation/devicetree/bindings/iio/proximity/st,vl53l0x.yaml
+
 STABLE BRANCH
 M:	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
 M:	Sasha Levin <sashal@kernel.org>
-- 
2.53.0


