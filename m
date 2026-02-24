Return-Path: <devicetree+bounces-267942-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EN7KNyW6nWnERQQAu9opvQ
	(envelope-from <devicetree+bounces-267942-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 15:48:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 834E7188A66
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 15:48:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1BA2330C21EE
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 14:47:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB0863A0B1B;
	Tue, 24 Feb 2026 14:47:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="X1QiuMnm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAC7039E6C8
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 14:47:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771944438; cv=none; b=EdYMtSLSl6qly3p3bBUkOtD+N9udcudkdko/ZMZqJHaNHPgofimPykLQIu10ZmY7AVR44hTfCvusL1ssPzZ3PCj8bHWWOQUfs44OCgirCK4Itgn4jOkvfoSWQITrLH8wUS3OzsjI0agPfInXRdTttl4KwbjMilnlbMUWffsbQMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771944438; c=relaxed/simple;
	bh=+LSTDb1YSUbFTl7An7hA6sSNEqhx+uSwsjHSyaz6ZVI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=g61UxmYS9g6jgmR4XG+70RCWhsBYtJYxwY6QxrI9xtmlZws/KVs6CPALq5sXEzsFzGbipTDXGXHubO16l5Q7yb6orO7KXDppjVQ7VZOFOQj27fYQPmf/YeaoroBOqGfSr4aiwD5NTQU7aWo6E+8PPYqNhnQSpciSGZ2NS6ZvXeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=X1QiuMnm; arc=none smtp.client-ip=209.85.210.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f176.google.com with SMTP id d2e1a72fcca58-8249cb73792so4974671b3a.3
        for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 06:47:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771944437; x=1772549237; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pmLq0qmeV50CrbxLujz4IkdUyCeZ40OrRobR1+C3o9U=;
        b=X1QiuMnmpaBvF99jxX4PuwGyFUqm8+7A8h7nsrdTrY5lbk98r3sVjxSRKv/kgURdlU
         4ucyyzks8+SJ/xxSw/+j0jErjQpR9Ia8Jdlf36VVXOL+rZUYCgkCtWZQnahxD4TEsb0A
         2YvTB2bqgtsW8wYavGieDdPNPJ4gw7zbW40AkBd1dadk/rrdM0G8v7p2BJLDL4mnwx4v
         khkpu9W6Chq2jF7dkq8j7PbCpI3sDor5eORIf1/+/HAASGsHgwlAnMfMw9+LkkdwndMz
         OfKgWGiIuJfmubJ3frqR014xQ3O9a+QrgX/g0jE0rixBy1LXP+KBkjT2g69drjYHC1kD
         IXwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771944437; x=1772549237;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=pmLq0qmeV50CrbxLujz4IkdUyCeZ40OrRobR1+C3o9U=;
        b=YXs+Hsoh72OFxlReuDRhuCrV7gsNbA1nL/MxyIMBT+kcMguI8hEr4q8vQsu45pOzJx
         RcdStlJTKbR8Ru/dmk12KMRmD6kZUvJl3jk1SFMb+qJ6dcEPIeljRfD8oXVrWduTHNS2
         R+VK41B3OFIHWn3u57HXFUNsM87As0gDZzuw4PpklZ0TXAQF30tsgSt3zei9Sj5ZDybw
         3SR4M8eHLczmYks7cwO2yJ3JLNk0B356Psllssa1t3qIyf115THCuklmfoXnCJSJTtaC
         ogYzxSGzi3YTRAJWptMXv7KE8HEe8QQ6mnEvvOsazXEEoDT5o0/JdJrM40tIKTY5LMij
         VPvQ==
X-Gm-Message-State: AOJu0YxI7tS8GbxoH8cAasW12jFp6UyiQtpQQ7yhI7RTEjohAIIPEfoe
	TY9D7Zk5q94cPgs5cO3LPGZoB8DfKF4s+v0+0JX06OJHZQQXt8zrjBCk
X-Gm-Gg: AZuq6aKUZtffcyvgfcz0HPLEXi4l2ft2Q1S0icH5KN8HUpOobnlZeLIBdqjmCMjInS1
	42Np6j4DFZF90naUwyT6nJ/ZAwGpQtoGikfi/id/J9pq0aUgRoNP6rXh7jZqfncF78J213AY+5L
	ctBFGSnA49BXrGydbTwSxpIXVBUOh4waRzHkigbCOnsO3pk3BXS7lR4q4Ntj7TWn4VeE3EgqTmT
	vLlyarR73T3qRKK4PJQir744R65EcmSb7oGQkGzIv+txGT0qwlgn7CimdnDxzwRFhlP/ZmwAC6J
	twiD/KOppLmoafgPq4zFA+Hgfr/B11HZXbn1kv6YONVTfHbJVvJWO5aScTqgzaVfXgIZ0HGRZ/x
	6l29MAiwLX+AKULyssEfGROf/w8/IulYPuz58gaVG+vbNyLyhOoD0EjAz+btJpsovJJGTZ8pbRO
	WBl0RMBJnrD24YxcTTHHK+APhjCVTajw0a6JeBT2qN/Xc6IxOE
X-Received: by 2002:a05:6a00:c83:b0:81f:852b:a91c with SMTP id d2e1a72fcca58-826daaad4aemr9634315b3a.64.1771944436969;
        Tue, 24 Feb 2026 06:47:16 -0800 (PST)
Received: from LAPTOP-872M7T80.localdomain ([122.168.64.105])
        by smtp.googlemail.com with ESMTPSA id d2e1a72fcca58-826dd64367bsm11149895b3a.4.2026.02.24.06.47.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Feb 2026 06:47:16 -0800 (PST)
From: Akhila YS <akhilayalmati@gmail.com>
Date: Tue, 24 Feb 2026 14:46:49 +0000
Subject: [PATCH v2 4/5] dt-bindings: arm: atmel,at91rm9200-st: convert to
 DT schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260224-arm-microchip-v2-4-8bedacd2cdcb@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267942-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[akhilayalmati@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-0.998];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tuxon.dev:email,devicetree.org:url,microchip.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,fffffd00:email]
X-Rspamd-Queue-Id: 834E7188A66
X-Rspamd-Action: no action

Convert System Timer binding to YAML format.

Signed-off-by: Akhila YS <akhilayalmati@gmail.com>
---
 .../bindings/arm/atmel,at91rm9200-st.yaml          | 65 ++++++++++++++++++++++
 1 file changed, 65 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/atmel,at91rm9200-st.yaml b/Documentation/devicetree/bindings/arm/atmel,at91rm9200-st.yaml
new file mode 100644
index 000000000000..ff485b37cba8
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/atmel,at91rm9200-st.yaml
@@ -0,0 +1,65 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/atmel,at91rm9200-st.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Atmel System Timer
+
+maintainers:
+  - Nicolas Ferre <nicolas.ferre@microchip.com>
+  - Claudiu Beznea <claudiu@tuxon.dev>
+
+description:
+  The System Timer (ST) module in AT91RM9200 provides periodic tick and
+  alarm capabilities. It is exposed as a simple multi-function device
+  (simple-mfd + syscon) because it shares its register space and interrupt
+  with other System Controller blocks.
+
+properties:
+  compatible:
+    items:
+      - const: atmel,at91rm9200-st
+      - const: syscon
+      - const: simple-mfd
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  watchdog:
+    type: object
+    description: Watchdog timer subnode.
+    properties:
+      compatible:
+        const: atmel,at91rm9200-wdt
+    required:
+      - compatible
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
+    timer@fffffd00 {
+        compatible = "atmel,at91rm9200-st", "syscon", "simple-mfd";
+        reg = <0xfffffd00 0x100>;
+        interrupts = <1 IRQ_TYPE_LEVEL_HIGH 7>;
+        clocks = <&slow_xtal>;
+
+        watchdog {
+                compatible = "atmel,at91rm9200-wdt";
+        };
+    };
+...

-- 
2.43.0


