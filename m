Return-Path: <devicetree+bounces-260227-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YFjyNtfEeWl0zAEAu9opvQ
	(envelope-from <devicetree+bounces-260227-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 09:12:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 795039E14C
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 09:12:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 3E3023004630
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 08:12:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B1ED3337694;
	Wed, 28 Jan 2026 08:12:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fZFepya9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com [209.85.210.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41F7C2DF142
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 08:12:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769587923; cv=none; b=AG8yjC4T/OsD5Oqc8bBOkSWcAUu26+C53ShKZHd3oSCUvPoFcy75X/jVgV1/1kyMHMRE+m2V2N+JCfYOXN25SETnX/oWeYxpWGfuZXvzPAGnrdXoJ00OrFTZr6zL0ia937JJsO9bLWqeZ+jxvQD2jWuuivLMbVD2NtVaNM1k96Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769587923; c=relaxed/simple;
	bh=XBi3OpXRWjoNio8b8S+LNdPOkklnU6kpztUDEQ4KVPA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=Vi78TAzcC/OAtmoUvQPECRhO6pjtxuGBuUJV2qg4RUzsdtd20auWaWdpBDQKIIQ+QFOB8FikftGjZQULhoFKLjKXcLlZKbo0AuRP3/DUX4R2n8iVEviR2wy0ZZKqg4RSV5TSlamLfmvlkpHL6hhU6k5vxjRCT1G73wAUdOcSOvE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=fZFepya9; arc=none smtp.client-ip=209.85.210.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f182.google.com with SMTP id d2e1a72fcca58-823075fed75so368016b3a.1
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 00:12:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769587921; x=1770192721; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=BNNMF80ZHWvlW/EHO5EiFEl7Lk/TnAFtVOAzbOPvS7M=;
        b=fZFepya9MgRBnVWOs+MJSRGgkzfsGMd1GgMKPFDfI4gB9uR/Q1KY1zXHIkrHfUB9tP
         gVXayuZZdaR8g+xRAm9K4T/5o8PlL7pOmq2/mdIu1WDz1BR9gAB5lUXaRR59kXnAXp55
         TZYjTt9VxiKPBDQY6si67izEdPxUGxGOugkz2sarHkdHgrKgJGJ+dYegmasC7i2ksc9m
         TGTHQ9WQCpu5FPgbapIgbY59thXgAOfCEl7Kw8VVN4vNIavHau0RJ2mseAlx21MmTTCo
         N/08K15QL/ZP4kRU9sapu0bZl3ZSpbjl0PU55w6ZUCwp/6Tu9cS3HntKk7pdl1ajeN2X
         glzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769587921; x=1770192721;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BNNMF80ZHWvlW/EHO5EiFEl7Lk/TnAFtVOAzbOPvS7M=;
        b=LjnKJyZhtXHV1zh8z8CfEu7qGdzDrPfCVGEGGSGqManZrUky0IEp41/jJAxenIio+S
         RVne+prNY8Rsz8w7qtjNloCUVEK20I/rMD9J7eK50NNm1Q1OfeabO2xoAOqonVTmB1dx
         UBEwHSy+1xLPGhugn7kPKXQxVKFlJ7e7KpYg5ZaboWwCYY2lQ8WuBDYL6a+X9hwPJpZS
         mXKIfmAMPZ/r+jjey3X53gm52+p94X0ydum0o5eI2xQaTLEl5O65xQnFh3WJ8FFer/Hj
         5qDP0p7kz0e6SozME9lxFMASO37aPUFa0+XeXGZmTAJWH8rlu/faKz9YbnYdHMgg2l67
         hQ9A==
X-Gm-Message-State: AOJu0YzFlGxuIID0kTzA5Xvv/2yLYpqwtZ8MsIcNbe2jjub4Tm6KdwTt
	TTOeJsClOUYq3fNYO+g3vod2KrQNk/I7eLOVLAhOV4W6IWq+3stxpycJ
X-Gm-Gg: AZuq6aJPGhwPIL0hAQvwuE/LZz3pr8m/4BZSwVhUh2UDmu9+6v01GVCyr+OSp7rg/oE
	nisIwTmcmmMf6h7CDe1B3ZRD6yFmXBkkzxB+LzQfTI8NEd8vVLMr1POccaa1qUU9+aaB57yJrDn
	+WyNRtNU6OIxNPfFux53k4WPllujmtwnYxXlvI6OaUNXFr+leWrbqLa/lHg+1S5VQDfZxAuPc8F
	ahmEmuJgnVDc0gE0oFtfC03IlWFovFZNCLABGkNfNuZuNDP1ji9ed0zAe0xopG8KsAFIj4JiaIQ
	75OLeeru5EFrsNriLpG0IDrj9iE+4wzCYhuzMqupVkJ0cJrXch4CtxsyiaZ5vT8jQAd8ip8J38s
	Qp0eEBYbe9BCYuZ1W1W6SMrdkh2Yupfbifd7ROduT75jk4W5DBzzTAFrTouBv2VvJRQfJLWIixV
	J6tkGM5bB3ZOuvPOwCZ6bJipA2t1oRBa05oFgl
X-Received: by 2002:a05:6a00:1a0b:b0:81f:c6d1:5608 with SMTP id d2e1a72fcca58-8236a14bd51mr3695428b3a.1.1769587921447;
        Wed, 28 Jan 2026 00:12:01 -0800 (PST)
Received: from LAPTOP-872M7T80.localdomain ([223.181.119.57])
        by smtp.googlemail.com with ESMTPSA id d2e1a72fcca58-82379c5293dsm1736896b3a.61.2026.01.28.00.11.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jan 2026 00:12:01 -0800 (PST)
From: Akhila YS <akhilayalmati@gmail.com>
Date: Wed, 28 Jan 2026 08:11:55 +0000
Subject: [PATCH] dt-bindings: power: ti,omap3-smartreflex-core: convert to
 DT schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260128-smartreflex-v1-1-2ab7a35169ed@gmail.com>
X-B4-Tracking: v=1; b=H4sIAMrEeWkC/x2MQQqAIBAAvyJ7TlAhob4SHcRda6EsNEIQ/550n
 IGZCpkSU4ZZVEj0cuYrdtCDAL+7uJFk7AxGGau0sTKfLj2JwkFFToijJwzBK4Re3N1z+W/L2to
 H9ey5iV0AAAA=
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
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_FROM(0.00)[bounces-260227-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[akhilayalmati@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[7];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com]
X-Rspamd-Queue-Id: 795039E14C
X-Rspamd-Action: no action

Convert Texas Instruments SmartReflex module binding to YAML format.

Signed-off-by: Akhila YS <akhilayalmati@gmail.com>
---
 .../bindings/power/ti,omap3-smartreflex-core.yaml  | 75 ++++++++++++++++++++++
 .../devicetree/bindings/power/ti-smartreflex.txt   | 47 --------------
 2 files changed, 75 insertions(+), 47 deletions(-)

diff --git a/Documentation/devicetree/bindings/power/ti,omap3-smartreflex-core.yaml b/Documentation/devicetree/bindings/power/ti,omap3-smartreflex-core.yaml
new file mode 100644
index 000000000000..ad4094f15a63
--- /dev/null
+++ b/Documentation/devicetree/bindings/power/ti,omap3-smartreflex-core.yaml
@@ -0,0 +1,75 @@
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
+        ti,hwmods = "smartreflex_iva";
+    };
+
+  - |
+    smartreflex@4a0dd000 {
+        compatible = "ti,omap4-smartreflex-core";
+        reg = <0x4a0dd000 0x80>;
+        interrupts = <GIC_SPI 19 IRQ_TYPE_LEVEL_HIGH>;
+        ti,hwmods = "smartreflex_core";
+    };
+
+  - |
+    smartreflex@4a0d9000 {
+        compatible = "ti,omap4-smartreflex-mpu";
+        reg = <0x4a0d9000 0x80>;
+        interrupts = <GIC_SPI 18 IRQ_TYPE_LEVEL_HIGH>;
+        ti,hwmods = "smartreflex_mpu";
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


