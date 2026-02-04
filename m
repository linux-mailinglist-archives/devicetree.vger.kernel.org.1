Return-Path: <devicetree+bounces-262696-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ICixKdNWg2mJlQMAu9opvQ
	(envelope-from <devicetree+bounces-262696-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 15:25:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F7C4E70D9
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 15:25:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1F4EE3012E83
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 14:23:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E0AB9410D1F;
	Wed,  4 Feb 2026 14:23:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="PhvLEth7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f65.google.com (mail-ed1-f65.google.com [209.85.208.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7110C40FDB2
	for <devicetree@vger.kernel.org>; Wed,  4 Feb 2026 14:23:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770215005; cv=none; b=dghuCyCXOlyXl/RLTPPoYpMgp/V1RLTZPgxmPcrjH7k6tfVnf8mLIX0Z0SRwX5RFPdwDS9sDwrw7U4Bn/Vn9m7fPmjW+caph1cwnhCNTliYy2JFPAlx2tDdFwOBfEwgi22aZmOuxIhRHmWNgfhxzdqbS9E518tUV6/q7xvGwrTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770215005; c=relaxed/simple;
	bh=1zX/KmPqe4XbBIXKCE0/BFFxZ+38CAZXt+tLU70EOuc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=qNwMtnZ96LAyV7QNDFymMFo55o1NWXd0fjn0wtgDV3WsBD4CYGzh+/VJIVCsqvAo8HCgn0G7nZn26e2HKVZ5BicywuqJS0YzxcC7vfshPaLUic0Ggoa2yc/6wzMpoX5VmzanfOOVjXwoFPCXDVgBrvuZcmgeLLRtySSMK+2fhok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=PhvLEth7; arc=none smtp.client-ip=209.85.208.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f65.google.com with SMTP id 4fb4d7f45d1cf-6581af9c94aso1257149a12.1
        for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 06:23:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770215004; x=1770819804; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=I1znNX1N3rANUdGlvXWVGWuiuSP52fPEYjbxG/ELNnM=;
        b=PhvLEth7b1lrYThDBkWEXbvC5QmpmRnrqvGnnhHauVsw6E3kxOGOfGiHPhB6iWpQyv
         jKrer/l9zPje9JIIhO8P46UeEcUovAT2AlNURGNI/B9JFZm79Us3kPinteNC1/oPPDDK
         BVYCiUs5ST+pU8OtN+0cYV3R4ot17ZjDGpGbhA1pm5KiRKf98e7rX7hZqx+W9uSbE5h8
         Z3NMD8Nkiev2VpCf1qClvI+G1KyPmQrRi7fckQL5H/CQ/LdHO7dt3XKz3EPBlkLsIht3
         EfXKUsG2GZtVgk6gQgVclc0wZRKnC1bRfTMoiPLE5MkD0ewwfj7xe25wBQAEgfbmbf3h
         I25Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770215004; x=1770819804;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=I1znNX1N3rANUdGlvXWVGWuiuSP52fPEYjbxG/ELNnM=;
        b=Q8jn0eepv8MVjyhVpDwMdg+/6bwpCoFUwoOfchel0Y8yyrj/2D/AuOyoBNASxarcTc
         NL5cZsNyFxIEypbOemh1KoTf8563k1yhCrir1YdXUkP6UAP7cE9yxhTaQgjNMIgf5FbH
         tq0WHdC6dplW1rCJ0tYgk+iUsAESNumkdW+nNZLJYvdHWEEjm2jl1qCckOBwRHOZVgnA
         kW/NJIUdkLMOJCTRxCX6tKU/OXoEIQXzPG08pDTFdCfNFoweAumDELkJ+P3AK3PqZ52p
         Pwm9e04BL3aVI56jqJLg5mPdHprA7lqSkthXgr38bMSiBzbEo8L+cGGgMl+k2HvPE713
         9FfA==
X-Forwarded-Encrypted: i=1; AJvYcCVb0yuMlYJ/vrVzwhhNNCROFlxH4CM0OZ9kEmVJE+QVPWpaYUHwanuQpRtaQ+Y4Y5XkntWYa/hoCAWh@vger.kernel.org
X-Gm-Message-State: AOJu0YyCqSsd6D9ok1zar5VWPgkLHgPTotfUgooagdXBDnX9xdghjVnV
	XFBBmZ7oRNLDHWB0z9g7GnemL+d3Gc2RFiXNHVRXeGvR3w9T1cYLkz2r
X-Gm-Gg: AZuq6aKsHaz96B9swDa095/ROLBxAzFXjLe1VQEKOAVjBBchT23Yt1LP8dzsY/7xzYL
	TxM/KA/+6dVey2ysy2cspdQoQLiigVt4NAtLrXiV3CsXG9Fg33wldPj5VVKiwDEY6mVo8697sxf
	0zu8uocohZZmyfIaJhC2TLuOQoO8V56Rlatz+UXaLM4Y4RFpmVNsbXUhmMFaeE3XiwcHWiWwRCf
	w+lBnXU9tERXJLDr20nTUSQvcuVIzJGa98OG/BYoWJBK1+/NYDJT/P5ucEdqc76UIr2PVHzszH2
	6uQEyvq4agiiSe0nGkQfAbe0OijuMZ5D7ut7WkhLCnapXvCtqJww0+hglmV8sm4Mf+vp9JD3gk2
	3fKwEnul2sGl4iUu5QGHoh9SQQv6sr2X6+X23QzQEyDeE8UemAYyjuSqTc+q+hqgl5GO4peNmwC
	w788dQ0fXh5tPd6j+wJDYApHl7WW4p10yZKGU=
X-Received: by 2002:a17:906:eecd:b0:b87:173f:61b with SMTP id a640c23a62f3a-b8e9ef2c012mr215351566b.9.1770215003489;
        Wed, 04 Feb 2026 06:23:23 -0800 (PST)
Received: from localhost.localdomain ([2a00:23c4:a758:8a01:3c9f:a100:4d45:ebc7])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8ea001ea7dsm129038366b.47.2026.02.04.06.23.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Feb 2026 06:23:23 -0800 (PST)
From: Biju <biju.das.au@gmail.com>
X-Google-Original-From: Biju <biju.das.jz@bp.renesas.com>
To: Thomas Gleixner <tglx@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Biju Das <biju.das.au@gmail.com>
Subject: [PATCH 1/8] dt-bindings: interrupt-controller: renesas,rzg2l-irqc: Document RZ/G3L SoC
Date: Wed,  4 Feb 2026 14:23:09 +0000
Message-ID: <20260204142320.103184-2-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260204142320.103184-1-biju.das.jz@bp.renesas.com>
References: <20260204142320.103184-1-biju.das.jz@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262696-lists,devicetree=lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,glider.be,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	FREEMAIL_CC(0.00)[bp.renesas.com,vger.kernel.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bijudasau@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[renesas.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,bp.renesas.com:mid]
X-Rspamd-Queue-Id: 1F7C4E70D9
X-Rspamd-Action: no action

From: Biju Das <biju.das.jz@bp.renesas.com>

Document RZ/G3L (R9A08G046) IRQC bindings. The IRQC block on RZ/G3L SoC
is almost identical to one found on the RZ/G3S SoC with the difference
like it support more External IRQs, GPT Error Interrupts and also has
additional registers for GPT/MTU IRQ selection, shared IRQ selection
between external IRQ and TINT. Hence new generic compatible string
"renesas,r9a08g046-irqc" is added for RZ/G3L SoC.

Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
 .../renesas,rzg2l-irqc.yaml                   | 66 +++++++++++++++++--
 1 file changed, 62 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/interrupt-controller/renesas,rzg2l-irqc.yaml b/Documentation/devicetree/bindings/interrupt-controller/renesas,rzg2l-irqc.yaml
index 44b6ae5fc802..6ee81663f0a1 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/renesas,rzg2l-irqc.yaml
+++ b/Documentation/devicetree/bindings/interrupt-controller/renesas,rzg2l-irqc.yaml
@@ -30,7 +30,10 @@ properties:
               - renesas,r9a08g045-irqc     # RZ/G3S
           - const: renesas,rzg2l-irqc
 
-      - const: renesas,r9a07g043f-irqc     # RZ/Five
+      - items:
+          - enum:
+              - renesas,r9a07g043f-irqc    # RZ/Five
+              - renesas,r9a08g046-irqc     # RZ/G3L
 
   '#interrupt-cells':
     description: The first cell should contain a macro RZG2L_{NMI,IRQX} included in the
@@ -58,6 +61,14 @@ properties:
       - description: IRQ5 interrupt
       - description: IRQ6 interrupt
       - description: IRQ7 interrupt
+      - description: IRQ8 interrupt
+      - description: IRQ9 interrupt
+      - description: IRQ10 interrupt
+      - description: IRQ11 interrupt
+      - description: IRQ12 interrupt
+      - description: IRQ13 interrupt
+      - description: IRQ14 interrupt
+      - description: IRQ15 interrupt
       - description: GPIO interrupt, TINT0
       - description: GPIO interrupt, TINT1
       - description: GPIO interrupt, TINT2
@@ -97,6 +108,14 @@ properties:
       - description: ECCRAM1 1bit error interrupt
       - description: ECCRAM1 2bit error interrupt
       - description: ECCRAM1 error overflow interrupt
+      - description: Integrated GPT Error interrupt for channel 0, OVFUNF0
+      - description: Integrated GPT Error interrupt for channel 1, OVFUNF1
+      - description: Integrated GPT Error interrupt for channel 2, OVFUNF2
+      - description: Integrated GPT Error interrupt for channel 3, OVFUNF3
+      - description: Integrated GPT Error interrupt for channel 4, OVFUNF4
+      - description: Integrated GPT Error interrupt for channel 5, OVFUNF5
+      - description: Integrated GPT Error interrupt for channel 6, OVFUNF6
+      - description: Integrated GPT Error interrupt for channel 7, OVFUNF7
 
   interrupt-names:
     minItems: 45
@@ -110,6 +129,14 @@ properties:
       - const: irq5
       - const: irq6
       - const: irq7
+      - const: irq8
+      - const: irq9
+      - const: irq10
+      - const: irq11
+      - const: irq12
+      - const: irq13
+      - const: irq14
+      - const: irq15
       - const: tint0
       - const: tint1
       - const: tint2
@@ -149,6 +176,14 @@ properties:
       - const: ec7tie1-1
       - const: ec7tie2-1
       - const: ec7tiovf-1
+      - const: ovfunf0
+      - const: ovfunf1
+      - const: ovfunf2
+      - const: ovfunf3
+      - const: ovfunf4
+      - const: ovfunf5
+      - const: ovfunf6
+      - const: ovfunf7
 
   clocks:
     maxItems: 2
@@ -180,6 +215,22 @@ required:
 allOf:
   - $ref: /schemas/interrupt-controller.yaml#
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - renesas,r9a07g043f-irqc
+              - renesas,r9a07g043u-irqc
+              - renesas,r9a07g044-irqc
+              - renesas,r9a07g054-irqc
+    then:
+      properties:
+        interrupts:
+          maxItems: 48
+        interrupt-names:
+          maxItems: 48
+
   - if:
       properties:
         compatible:
@@ -192,12 +243,19 @@ allOf:
           maxItems: 45
         interrupt-names:
           maxItems: 45
-    else:
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - renesas,r9a08g046-irqc
+    then:
       properties:
         interrupts:
-          minItems: 48
+          maxItems: 61
         interrupt-names:
-          minItems: 48
+          maxItems: 61
 
 unevaluatedProperties: false
 
-- 
2.43.0


