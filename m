Return-Path: <devicetree+bounces-267941-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UGo6Hxe6nWklRgQAu9opvQ
	(envelope-from <devicetree+bounces-267941-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 15:47:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id ED781188A49
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 15:47:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 80050307BAAC
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 14:47:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 84ABA39E6C8;
	Tue, 24 Feb 2026 14:47:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="MBuiPq82"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f180.google.com (mail-pg1-f180.google.com [209.85.215.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55AA821C9EA
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 14:47:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771944433; cv=none; b=dG7srz9IiLMCwB5eOmT1ImOmyTEmFNetHhO+ThwinNgUhug7S15ckrpK+PdQGDp8XutDD1fVqwYqPBhXwAB1H1i4njcSq3pCLHpmMruo3NF6VxN+uQKlYuRQXUCSBA6zeeYgCqBAEDCOkL/+KWe5C0UptHx/vUWj/Rw6GRvw3co=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771944433; c=relaxed/simple;
	bh=B2+AcCveMfYM8JjEAHHKzfSRpNu6Gi1GE9MN/ExrH08=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=LmTmfs3SJIBBHrAPn6r9pryr6ln4TyVW49rXiQN8iOHXN3BOSr92HyKaERBSaLAIqu6NrohES9Z7Z7+9N0q2dFL8J87yAjBoMjHdYmNHq+uyYkM/+1/AGbUSK7+GM3ZtXsHkkjFLHD+DG89LkHPIyG/sQ5MB8qIzqZZu71gCOks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=MBuiPq82; arc=none smtp.client-ip=209.85.215.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f180.google.com with SMTP id 41be03b00d2f7-c6e1d3e4dc4so1220235a12.3
        for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 06:47:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771944432; x=1772549232; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jm37TMqkBTkqNVXnN3xF7Pp+crAd08HrPHesCUh8FlI=;
        b=MBuiPq82G80SQaPnzf2DxWrlv5o7tZQLrM+ndqu18L2rQM109bdCVEGaIHo/ljcnV9
         c+XcfbkJ672k0x7C4YHrCJ7Mm4cd8FIuJWcx1JSAmyrHZr/ZezzYbVhdd/qrzcGgUXis
         cu8/pl3r0X6z7KqymwOiIofJwxa8DU9TN4kDikKEUpG1eXtpnEd4vrkk3az98ujbe+DP
         Qsiq1qZ/JJl3rT31yK2ea6FTgnrCorFoEJkZlyG7YUyLI0CwcUURkLzF+BATA8iYYIeK
         YXlZsRBZRYfmmNg9EoXQtvNUDPy66c3AiI6TiErhsD9xSPm//s3qP7dUeVvflnFYZKSk
         X3SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771944432; x=1772549232;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=jm37TMqkBTkqNVXnN3xF7Pp+crAd08HrPHesCUh8FlI=;
        b=mHB3ML5RNfS81J1LXiQRzCwiRp7L01fdWieklV0GqrftFKiVhDvsTJWxWEXs+5b1Xn
         zkqs4n6E+jvQ3gIWGNforOAM5DiyidjvmEsIwkNuN9L+jnhJmXOg3jMtWo2bIERV/Kl5
         4vbYamevsJJcUFqZP1WN6U+PE8yzZjUK1JoqShZWkw2AA0nnWHO1VcQWVe2bwR3fwURh
         ThVM6v5IFpwRmeYHjismGA0zWoTZDsdXCMO98W3dhF9rPqawV2GG2B++nAlKnfG+YS4H
         U9AWmdYib90sMcZob/TPpNzSMlNkqqVRC7KM1KJps+sffKYneT8jro9+vhBP3q7U23lM
         6++w==
X-Gm-Message-State: AOJu0Yy1tSVHKYBMYe4qvxazI6nTSVwrdSVB4IxjMDg6RtwRTswJDbce
	PVUGBsWLyniZEikOUijqB+YpWtMlx0nD12XXzkaPptFsCOOXrxxgPWA4tL1gog==
X-Gm-Gg: AZuq6aL8wvptJ3Q2vdWlT+mapGkgFqIWmoXHjvZXSYXtEzIkCoOc3tCoMLQvqlPDJYQ
	hycPHBkJ2tIMCTLuBLbq1LxwrwhPKM4SITDKc3EQi7prAHZ6tq82KkJ0/Kvuj/DWhCp1ZwXoOPy
	zZ75TK5id7/DTovy/GhFtiui50nTkBXI+AyEc+08DwJts887ooM6EdXLkhMw8W7p6AIcnbzQeFK
	hNSkdV4jYAmXE44jvk8iXmn3KxvGfSwEQuJGwkdzwNkpm5eS96DszvZoLjJg40AudIEVkvfBem9
	Yk2QjuhCIzc+QxfVjE/6BewJlUmLpEyI4qXLx1nbMA0FDYZ6zLLlvKgSwOQnfGsOpG29GSIPTkN
	eP6yVfTiosj/M+HJfUNuX2mjx+RSiC9JDFi1gU5ecOtnLQRsqzdQ3s9SThQnSgK/gcCjl4uNDMY
	Ulh9vMvRLzIXyeK0lxrabMUIXP4llHtrf9xFePv4+kZ4dyKLcL
X-Received: by 2002:a05:6a21:16:b0:394:36ae:b91e with SMTP id adf61e73a8af0-39545e50b26mr10740461637.5.1771944431599;
        Tue, 24 Feb 2026 06:47:11 -0800 (PST)
Received: from LAPTOP-872M7T80.localdomain ([122.168.64.105])
        by smtp.googlemail.com with ESMTPSA id d2e1a72fcca58-826dd64367bsm11149895b3a.4.2026.02.24.06.47.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Feb 2026 06:47:11 -0800 (PST)
From: Akhila YS <akhilayalmati@gmail.com>
Date: Tue, 24 Feb 2026 14:46:48 +0000
Subject: [PATCH v2 3/5] dt-bindings: arm: microchip,sam9x60-pit64b :
 convert to DT schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260224-arm-microchip-v2-3-8bedacd2cdcb@gmail.com>
References: <20260224-arm-microchip-v2-0-8bedacd2cdcb@gmail.com>
In-Reply-To: <20260224-arm-microchip-v2-0-8bedacd2cdcb@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Nicolas Ferre <nicolas.ferre@microchip.com>, 
 Claudiu Beznea <claudiu.beznea@tuxon.dev>, 
 Alexandre Belloni <alexandre.belloni@bootlin.com>, 
 Claudiu Beznea <claudiu@tuxon.dev>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, Akhila YS <akhilayalmati@gmail.com>
X-Mailer: b4 0.14.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267941-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[akhilayalmati@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.998];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url,tuxon.dev:email,f0028000:email,microchip.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: ED781188A49
X-Rspamd-Action: no action

Convert Atmel Periodic interval timer of 64bit (PIT64b) binding to YAML
format.
Changes during conversion:
- Add missing compatible "microchip,sama7g5-pit64b" along with a fallback
compatible "microchip,sam9x60-pit64b".

Signed-off-by: Akhila YS <akhilayalmati@gmail.com>
---
 .../bindings/arm/microchip,sam9x60-pit64b.yaml     | 68 ++++++++++++++++++++++
 1 file changed, 68 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/microchip,sam9x60-pit64b.yaml b/Documentation/devicetree/bindings/arm/microchip,sam9x60-pit64b.yaml
new file mode 100644
index 000000000000..cbc0a999748a
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/microchip,sam9x60-pit64b.yaml
@@ -0,0 +1,68 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/microchip,sam9x60-pit64b.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Microchip PIT64B 64-bit Periodic Interval Timer
+
+maintainers:
+  - Nicolas Ferre <nicolas.ferre@microchip.com>
+  - Claudiu Beznea <claudiu@tuxon.dev>
+
+description:
+  The Microchip PIT64B is a 64-bit periodic interval timer used in
+  several modern Microchip ARM SoCs including SAM9X60, SAM9X7 and
+  SAMA7D65 families. It provides extended timing range, flexible
+  clock selection and supports both periodic and one-shot interrupt
+  generation modes.
+
+properties:
+  compatible:
+    oneOf:
+      - const: microchip,sam9x60-pit64b
+      - items:
+          - enum:
+              - microchip,sama7d65-pit64b
+              - microchip,sama7g5-pit64b
+              - microchip,sam9x7-pit64b
+          - const: microchip,sam9x60-pit64b
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    minItems: 1
+    maxItems: 2
+
+  clock-names:
+    minItems: 1
+    maxItems: 2
+    items:
+      enum:
+        - pclk
+        - gclk
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/clock/at91.h>
+    timer@f0028000 {
+        compatible = "microchip,sama7g5-pit64b", "microchip,sam9x60-pit64b";
+        reg = <0xf0028000 0x100>;
+        interrupts = <37 IRQ_TYPE_LEVEL_HIGH 7>;
+        clocks = <&pmc PMC_TYPE_PERIPHERAL 37>, <&pmc PMC_TYPE_GCK 37>;
+        clock-names = "pclk", "gclk";
+    };
+...

-- 
2.43.0


