Return-Path: <devicetree+bounces-263431-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MPivNrUdhmmTJwQAu9opvQ
	(envelope-from <devicetree+bounces-263431-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 17:58:29 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 42A90100A40
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 17:58:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9215A300E713
	for <lists+devicetree@lfdr.de>; Fri,  6 Feb 2026 16:58:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B6D92DCF7B;
	Fri,  6 Feb 2026 16:58:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="PkZSOwu6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com [209.85.216.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D75792DC765
	for <devicetree@vger.kernel.org>; Fri,  6 Feb 2026 16:58:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770397083; cv=none; b=OTRb++NywRlGbdVkCDi4NwlCItHzzmz3NCoHYSZDDTdJXVqAEk8SRMQg0VtX1Yn7zofspkiFRxLUU3JMaCTGsghqangpFGgcxjf9kmiNC2HiOC7unZcydhVGe+wH8g5O5IslWDAfxzFCxRakhfq4RQaaMYhdGH8uTmOVm/nEhws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770397083; c=relaxed/simple;
	bh=szsAM9UMao+YRDWQS9ADaOjevBE9aCJe7TyoQaU8wME=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=ZWVDaHvhyzzSO3HvEget6TXryvfF4bsP9WzQf9GfGmgg8p3EQ8kFH/A6rBKvJ+3ZMRYpH03/k+pB7Owez58NeJfaxpe+owTIIkGbRyixUYe65UJFA+daLiN9t44mT0bbyL5o2XZpCJlC27fsOCZcMfpdIk3rZQDO6OuXacpN+Dw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=PkZSOwu6; arc=none smtp.client-ip=209.85.216.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f54.google.com with SMTP id 98e67ed59e1d1-354c19bf64bso137991a91.1
        for <devicetree@vger.kernel.org>; Fri, 06 Feb 2026 08:58:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770397082; x=1771001882; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=5/uZWRYd/Hy2800O/jPSfyWNQwuWahapBaTQzGJ1Al4=;
        b=PkZSOwu6QLtqDQTcVYaMoueEEg8wAj3GSv9P6lWPFyZE9l/E93J9OHzPcsCR7LhaXW
         LOQo3d7dvd0mSfaYyI+aZVjk/03W9wdhMP0GxfnvJhS93Jr4Y6qP4glgxFLUO+Ggg5Uw
         YFeIbwDMcsrjW0c/a6aVi9Wz1f38ADy+b3hwG44RxqEcaEJFMLA1QLA9cWRp7H8vJS4l
         m+k9MOWNtyHnGT4YFW/0YHzO7an6e0NsAQ8Ih7odi15WRbJ2DqCEe+CNU5tLFtA0IfSB
         hnvy1WKwD/WnL/r/C2rX5c/LEweZZk31ubytyJPuvmRhP97tsOcBAR/He8i983c+rFD3
         zmjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770397082; x=1771001882;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5/uZWRYd/Hy2800O/jPSfyWNQwuWahapBaTQzGJ1Al4=;
        b=HhDG5uH6NnnPLSbKX16Y1eh5em2e+htP3ZUldkzK0hCw8Ar68RplgdaM3bZYTtvwUp
         JLlL26jzLSTJVgaTiFFTQKk2JTNErriEUbZblRKCFXxqIPdO4QM0wCqes848nY5iUOCt
         lvCn4ezsLSxaqQGOcii+ojpz/+13HBaVYRRdigQWN4zBPqS3rq75Gb0pynBUiwpqri+v
         jWgBIzF1uVUKaVbNCaWABO2LAQr93nWfm2FwKsuCQ0fYHO9zKdfY9qmj7hUJQTQNI5hm
         DFPGyTvGbsXME6/B35yAIaGr0dTIo76DPhrdsEHNYsEa0nws4wWYtMTMcAjg8Z30RORe
         PFIA==
X-Gm-Message-State: AOJu0YxRjEIVLXYA3nZ0ZyhJHxVxNjihI3dcZAC5CSQx9D9c2tfReZ9F
	z/7UnB9/Oo3bJCEitR4ZXA4IqbLaYOTXiDdxwg4E4ewQ+wGyYSkCiPl1qUmQJQ==
X-Gm-Gg: AZuq6aJjpkxXIQDJwk94+kd2j7/aP39max1XgmyqvERvEGAb/SEskVvQ5ILL2JlwupC
	q5jsttUQSSsXQF/6etId1uoYNy8ts7KKPxw30TsEoxA1rzNJngOGioJR9KJcBpkzAU+eqip4dhy
	tnprkmhv4eQyQyJjI73cc/1CT78gCgB5agg1uwW//7X9BLj5mt7LwDj78uO4GbnwtZfhBkQuMCB
	ZubBa/PQQgdAriSDezd7MS9qec0bclyrWazmIQrnGHvV2CV33uXTa7I6wsdcPLrTtX/wNDhjUWT
	3DerJa2h45OUgiHd4DL8OzL3v6I+RzVl/8vheH2KnlZQD7JllbgrR38DdkA8hGUax6eGNS3e5fb
	DrXgyaLgAEl7qiDR86UKJieQnsunx85qdZoGucZd5TQgYMzOvhxt9nI96CFP2xiGb7E6xwgO3RP
	7X1i13hn2fumPwaBICUs9d18Bd6CY5ayFylCpz
X-Received: by 2002:a17:90b:4b12:b0:343:e692:f8d7 with SMTP id 98e67ed59e1d1-354b3069dddmr2779319a91.11.1770397082114;
        Fri, 06 Feb 2026 08:58:02 -0800 (PST)
Received: from LAPTOP-872M7T80.localdomain ([223.181.105.219])
        by smtp.googlemail.com with ESMTPSA id 98e67ed59e1d1-354b1e3d056sm3005131a91.3.2026.02.06.08.57.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Feb 2026 08:58:01 -0800 (PST)
From: Akhila YS <akhilayalmati@gmail.com>
Date: Fri, 06 Feb 2026 16:57:54 +0000
Subject: [PATCH v2] dt-bindings: power: ti,omap3-smartreflex-core: convert
 to DT schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260206-smartreflex-v2-1-b258498917a4@gmail.com>
X-B4-Tracking: v=1; b=H4sIAJEdhmkC/1XMQQrDIBCF4auEWdeiltimq96jZGF1TAZiDBokJ
 Xj32kAXXf4P3rdDwkiY4N7sEDFTojDXkKcGzKjnARnZ2iC5VFxIxZLXcY3oJtxYZ21r0DpnuIX
 6WOpO26E9+9ojpTXE94Fn8V1/zu3PyYIJJvXrqi+tUB3ax+A1TWcTPPSllA9PrhRLpgAAAA==
X-Change-ID: 20260126-smartreflex-9dd5cedffc0d
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Tony Lindgren <tony@atomide.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Akhila YS <akhilayalmati@gmail.com>
X-Mailer: b4 0.14.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263431-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[akhilayalmati@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[7];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[atomide.com:email,4a0d9000:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,devicetree.org:url,4a0db000:email]
X-Rspamd-Queue-Id: 42A90100A40
X-Rspamd-Action: no action

Convert Texas Instruments SmartReflex module binding to YAML format.

Signed-off-by: Akhila YS <akhilayalmati@gmail.com>
---
Changes in v2:
- Remove unnecessary examples.
- Remove "ti,hwmods" property from example.
- Link to v1: https://lore.kernel.org/r/20260128-smartreflex-v1-1-2ab7a35169ed@gmail.com
---
 .../bindings/power/ti,omap3-smartreflex-core.yaml  | 58 ++++++++++++++++++++++
 .../devicetree/bindings/power/ti-smartreflex.txt   | 47 ------------------
 2 files changed, 58 insertions(+), 47 deletions(-)

diff --git a/Documentation/devicetree/bindings/power/ti,omap3-smartreflex-core.yaml b/Documentation/devicetree/bindings/power/ti,omap3-smartreflex-core.yaml
new file mode 100644
index 000000000000..9e8761b54976
--- /dev/null
+++ b/Documentation/devicetree/bindings/power/ti,omap3-smartreflex-core.yaml
@@ -0,0 +1,58 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/power/ti,omap3-smartreflex-core.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Texas Instruments SmartReflex module
+
+maintainers:
+  - Tony Lindgren <tony@atomide.com>
+
+description:
+  Texas Instruments SmartReflex is an on-chip adaptive power management
+  technology integrated into TI's OMAP and other SoCs. It dynamically
+  adjusts voltage and frequency for different chip domains in real time
+  to compensate for process, voltage, and temperature (PVT) variations.
+  Dedicated hardware sensors and control logic continuously monitor
+  conditions and apply the lowest safe voltage for the required performance
+  level.
+
+properties:
+  compatible:
+    enum:
+      - ti,omap3-smartreflex-core
+      - ti,omap3-smartreflex-mpu-iva
+      - ti,omap4-smartreflex-core
+      - ti,omap4-smartreflex-mpu
+      - ti,omap4-smartreflex-iva
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  ti,hwmods:
+    $ref: /schemas/types.yaml#/definitions/string
+    deprecated: true
+    description:
+      It was required by the OMAP interconnect/PRCM code to automatically
+      initialize hardware modules using TI's internal database.
+
+required:
+  - compatible
+  - reg
+  - interrupts
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    smartreflex@4a0db000 {
+        compatible = "ti,omap4-smartreflex-iva";
+        reg = <0x4a0db000 0x80>;
+        interrupts = <GIC_SPI 102 IRQ_TYPE_LEVEL_HIGH>;
+    };
+...
diff --git a/Documentation/devicetree/bindings/power/ti-smartreflex.txt b/Documentation/devicetree/bindings/power/ti-smartreflex.txt
deleted file mode 100644
index 21ef14d6af12..000000000000
--- a/Documentation/devicetree/bindings/power/ti-smartreflex.txt
+++ /dev/null
@@ -1,47 +0,0 @@
-Texas Instruments SmartReflex binding
-
-SmartReflex is used to set and adjust the SoC operating points.
-
-
-Required properties:
-
-compatible: Shall be one of the following:
-	    "ti,omap3-smartreflex-core"
-	    "ti,omap3-smartreflex-mpu-iva"
-	    "ti,omap4-smartreflex-core"
-	    "ti,omap4-smartreflex-mpu"
-	    "ti,omap4-smartreflex-iva"
-
-reg: Shall contain the device instance IO range
-
-interrupts: Shall contain the device instance interrupt
-
-
-Optional properties:
-
-ti,hwmods: Shall contain the TI interconnect module name if needed
-	   by the SoC
-
-
-Example:
-
-	smartreflex_iva: smartreflex@4a0db000 {
-		compatible = "ti,omap4-smartreflex-iva";
-		reg = <0x4a0db000 0x80>;
-		interrupts = <GIC_SPI 102 IRQ_TYPE_LEVEL_HIGH>;
-		ti,hwmods = "smartreflex_iva";
-	};
-
-	smartreflex_core: smartreflex@4a0dd000 {
-		compatible = "ti,omap4-smartreflex-core";
-		reg = <0x4a0dd000 0x80>;
-		interrupts = <GIC_SPI 19 IRQ_TYPE_LEVEL_HIGH>;
-		ti,hwmods = "smartreflex_core";
-	};
-
-	smartreflex_mpu: smartreflex@4a0d9000 {
-		compatible = "ti,omap4-smartreflex-mpu";
-		reg = <0x4a0d9000 0x80>;
-		interrupts = <GIC_SPI 18 IRQ_TYPE_LEVEL_HIGH>;
-		ti,hwmods = "smartreflex_mpu";
-	};

---
base-commit: cc3aa43b44bdb43dfbac0fcb51c56594a11338a8
change-id: 20260126-smartreflex-9dd5cedffc0d

Best regards,
-- 
Akhila YS <akhilayalmati@gmail.com>


