Return-Path: <devicetree+bounces-266223-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6MRBFmiklGmwGAIAu9opvQ
	(envelope-from <devicetree+bounces-266223-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 18:24:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D93F414E936
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 18:24:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1A8AC302C30D
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 17:24:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D930436E49E;
	Tue, 17 Feb 2026 17:24:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="acvP/8Jg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8D8136EA9B
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 17:24:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771349088; cv=none; b=RaFNEY/ObWNHGUAHMmjAUddkFYhREULX9kzdtykvC+DofKWZUWxTCh/N93jgK7Ejgu9O45hwRv4x6sZU+FY1VagiEXx+N8KtqPidYZdR3XcDh3YwLVjZDZDBzoEu6v+ttsESHDi8EVVZCBnCdza5j7q+LOGVSfS5HYR+BPRoCmU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771349088; c=relaxed/simple;
	bh=yMpbG2qW/Og++aL06RmLkgLqBJ+EyfaWP4nTUFw7Z+o=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=CAfkad9X3jxI61Koo0wVfPBkY9NtPxsnQPFEjIKnLs+5RSIahCv5RdOiXMDsWKMSgTzoWPJXH4xPEDyEG5TI+rfawprdWruKWOL0pyzpaYgE3pJtkyE6PSnbNHg27sqzf05AT7u0OSefClX1k5gujw48BtmLLIkrj3OWgu6YnaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=acvP/8Jg; arc=none smtp.client-ip=209.85.214.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-2a8fba3f769so19801355ad.2
        for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 09:24:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771349087; x=1771953887; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wltfpER1EX3NZ0J7DGYiBhlkNSq+usE1Anaap9AMNVc=;
        b=acvP/8JgiMKdlCPs3M9cHG565BpgSupvz0NhTOkN7PZhpUuXUsXHleAOctPNi5LEIO
         Pl/0Vs8Z3JdF2BJwL8XSX2ZxDUO5tSDD1byrH9QoPLZ8rXRzjOrTxuDcFNwyWpnHr6QY
         /QRMdlpBf+30pQLruwERDzB0PfIVDtBYlrZtc5+/UXCPTIY6Ye3z1lAXE/DaXtLTR6L0
         oTSJRY28yioKx8CL6DmsQNEAer3eb391rACAFYagPDnKeFSmN3Nmo2kGKiMLE+7lwFCM
         aWQ4jXQ6qDa1wd2/rFv0MkvEJ8UoQYE3pgR2wjWnXUnVjUBO41icj+5m+xW/f8xKirtP
         T4Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771349087; x=1771953887;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=wltfpER1EX3NZ0J7DGYiBhlkNSq+usE1Anaap9AMNVc=;
        b=BhOZsNbhcAUNXWnWiGSmBHm/8VtzQ+c/C+/+GIgNaakFgAJ+ecxIfE5fqnjHPqydWI
         OUv5g5wUfzqAxccgRXr5FQ1DELH2iVAZGEai0pRAR7dTlepbdr6FTNqmgmH5OwfDHTH9
         nRDrsjN7633DXhSK35MtVGtB+PPPEJnBKGanrGHCXi1SWT4U2O1GRz3jCFD9Z/hrq79d
         R7qQhNeEHlJYoSoaVgmmLw2F00n/h4ivWfMDDCjI2ahxqAP2H8JXnEN1sbbM0ZT7/4zY
         RPVW3HSsJTGYykC1nfTDrwZdBAK+HYNu/Og8k64m2187uE/GjfLPrOcWK/XwFhxwSfkk
         2TeQ==
X-Gm-Message-State: AOJu0YwDG1X+DYU9hTj7ajhdQNcJuyIskCXsYUolQVTkmc2+J8OU6ags
	IGxmbdBGKPvYk/KgBv0FavjwyQvenW4RVTnB9jmoXTqFBFZaBcd5Wp0u
X-Gm-Gg: AZuq6aKdZxH9R/SuqqQgiBPu2TRM/HH2DWDc8in3Eh6IFxuvOfGa9aULhkdoM0OyYru
	Ua8ALQbhBNwq1Yvv762J7bdSYNcIrTvVEvDC8t+P+R8OWkdvoyMgiNWIy+2XwA+KLwFcN4++hwn
	KQgdKMFhMnFetxC03EBWyhjBebWd/LLytqJLGqjhtg6AUt1BsLVl861kHXtA8IzwXuSbgBY71yD
	WgF4abKHpTRnZyXIgt+x91iATaL3+4DGinSoq1NeqUWkWiqU2yOjlhN6fva6UqxjnFpzptB3UTw
	TIdBp24G7N38LUw4BEAw57jJfAUsNsaiJGdu77yHUyUj4LlM70vwSXCECcjMkGCKm/2+5FsnpG+
	gI09rkc2/TiVTaGjzPOQgoPDwtXzQnLiAhOqchLryAVGR/C0+P8QijsJGKP4ZrNxzEub+Yc4SU4
	8gv5I4dN6YofJbxM30se4Kl4c4TDfcc/CoWh1OBWXTSytCIvOK
X-Received: by 2002:a17:903:1b43:b0:2aa:de7e:efae with SMTP id d9443c01a7336-2ab5061ea4bmr150303725ad.53.1771349086846;
        Tue, 17 Feb 2026 09:24:46 -0800 (PST)
Received: from LAPTOP-872M7T80.localdomain ([223.181.109.65])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-2ad1a7145cbsm146880305ad.30.2026.02.17.09.24.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Feb 2026 09:24:46 -0800 (PST)
From: Akhila YS <akhilayalmati@gmail.com>
Date: Tue, 17 Feb 2026 17:24:22 +0000
Subject: [PATCH 4/5] dt-bindings: arm: atmel,at91rm9200-st: convert to DT
 schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260217-arm-microchip-v1-4-ae5d907e10e3@gmail.com>
References: <20260217-arm-microchip-v1-0-ae5d907e10e3@gmail.com>
In-Reply-To: <20260217-arm-microchip-v1-0-ae5d907e10e3@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Nicolas Ferre <nicolas.ferre@microchip.com>, 
 Claudiu Beznea <claudiu.beznea@tuxon.dev>, 
 Alexandre Belloni <alexandre.belloni@bootlin.com>
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
	TAGGED_FROM(0.00)[bounces-266223-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[akhilayalmati@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,devicetree.org:url]
X-Rspamd-Queue-Id: D93F414E936
X-Rspamd-Action: no action

Convert System Timer binding to YAML format.

Signed-off-by: Akhila YS <akhilayalmati@gmail.com>
---
 .../bindings/arm/atmel,at91rm9200-st.yaml          | 65 ++++++++++++++++++++++
 1 file changed, 65 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/atmel,at91rm9200-st.yaml b/Documentation/devicetree/bindings/arm/atmel,at91rm9200-st.yaml
new file mode 100644
index 000000000000..ac6e2c71969e
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
+  - Claudiu Beznea <claudiu.beznea@microchip.com>
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


