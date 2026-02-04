Return-Path: <devicetree+bounces-262782-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8taNLYGNg2lCpQMAu9opvQ
	(envelope-from <devicetree+bounces-262782-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 19:18:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 53A5AEB8BE
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 19:18:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 8896F306CA76
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 18:09:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 566B743C04F;
	Wed,  4 Feb 2026 18:06:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="K1mTkGq0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f65.google.com (mail-ej1-f65.google.com [209.85.218.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC2B243C047
	for <devicetree@vger.kernel.org>; Wed,  4 Feb 2026 18:06:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770228398; cv=none; b=rpDyqivkaPIjHibRbwLx6jLWhKZLFxjevJeADcOADIzdlQ1KkKQ8Nsx0irib3bv1HaF3OIQuilew3WEsgcub6t/Ny5BJU+eFGNJ1K3MUO1gOsGITiw10z0RC92QNCdONhX2Jc0mSUMX/+V5mOk6cTtqD4Kux9npTS/Ct6wvFceY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770228398; c=relaxed/simple;
	bh=93z5FuEEmFLmBkSL+Dc7swYHtEbFxQ4U3/0DO+GPkc0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=n0ooMgFx4HovLBZE8hq1r3t7mO74crktL2Q5pzAIVp77bgodj5y5CSyvZxhGgmK+UL3JY4Xk2L78c0xUH+ObbYYkGPpGUIfqwhOBaR1SmfwiUJP4dI7JuFSEg8WEygsLHOxX2VMaAQSbSCJQgUldG4/RJXG6Hp6veZGZWShIDEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=K1mTkGq0; arc=none smtp.client-ip=209.85.218.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f65.google.com with SMTP id a640c23a62f3a-b8842e5a2a1so3268566b.2
        for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 10:06:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770228396; x=1770833196; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GzpNvPr/y3whqKmnV4OaZn3Wq+d87uOS4okfjCgNIQM=;
        b=K1mTkGq09fhQkHiYqTJENlaGyvo9lPnMmltIIQR17/Pbm7/6jRYoj1pH22jhaEucct
         JQzbMA/4wKI6zEHfeY2pHvUIJ+/QFUcF8vXMEfI5N4f+Dpf8Xm/goJcE+l4ERff8Evru
         pWe6Qab/rJofXC169uHu2Esz58hdlUv4V/h5DoCUAE7w/qcPss8II9O/8Kgi2Kqgj9F2
         r3mdO8PlWEGKkjE936waDayLaECTNrqEvegRqhvsEvZvkGmwfZ1y8It7StDR1lAwKBgp
         HVJd+l8kYNBL/Pmuc8O8gCHLRe5saKiLmsMHM3gpj4OzLfspszNw7iGlRbUx7GG6nZFW
         ABjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770228396; x=1770833196;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=GzpNvPr/y3whqKmnV4OaZn3Wq+d87uOS4okfjCgNIQM=;
        b=hbuAufk+w7W8RAx1W+z2IME0UwtFRb93H1Wb8AaWl2ouIJgC/SwXRvhWewkQMMIVDO
         IWHijCXwMUZeMdHw3UkVYs0PQIV9mJr4Lf5DlAjWX3/ex/FFFvWF58NA7UWHthmXrrAt
         V+QER9ZAdM3HA2ZReI3JwsQIqjUhdjwSep41FER6jvMqGa27ehwlFbIMUbRjfumSI9IN
         yMvl3z7ap9bnfyRQLKSMBr78GZ+W/z4avFzw2Rb6v5ZSJ7bFwZ8fsaI1zmS6yGP2UjW9
         v0bCHfXDGkMspXcNPojHHOGljeHcUcuNOSCks2wUeTEjlL5viYP0XvtPXTeBrsPADuAP
         6lXA==
X-Forwarded-Encrypted: i=1; AJvYcCWmdyGrNPU5Atf6GCf7bUNq7XK9p1ltwD9fUfvvEpLNccUa8hMJo6w7G9heKJll96WBROafKJbWEYmw@vger.kernel.org
X-Gm-Message-State: AOJu0Yy8n0dpo8KZodx7ySxYmTTwONODbp5spEHPYZFbz+T9e/MRosP7
	Sq4nzrMlRcbRmSQH7wRi0FXGNde17TMRdVo66DayYLfu6m4fAiAIR72b
X-Gm-Gg: AZuq6aKPTRCAkq4E/yFRYWGWRq0nqt3dIC2hQEWF3SrhQ4GR9Fd8TiUop3heSLTiIBq
	ishcL+tXQKcXPls1sBE7SgltdPCgHjykH7f2yGIG9yVQ7Dt06oh8cQgKwdEpkrE4rHs9+V113Zd
	1dF0h/RauOBTA69UT0cM9aGze2SDQJQ6P4xanGOkVPYSp8IjWNKS138pgK+Nf/P4HX72Lim8UlX
	VJJKC5j5I1jmmE4mv1IenG8r11wUeWVhltRlbc/hjF+v6WQH1gfGJI42/5gtEIgcIXhrZUPMSan
	lHyTbT/vGKwb9A+CBk1saTFv8tTphBFRcEfrd3mREEEeD0gldO0002lXpYmaJvztQE6IkT7rQXO
	GwZxkdl99A9KiGZKA6Qf3N1Y/fp6XvhAj2hjNS8Bun1mNOcS8YcBPilCxDs8XdiHI9+hbsmpQKK
	7uhBLZ0J5ErAkOGRd6f38zVIWbz+R08y1O3FQ=
X-Received: by 2002:a17:907:3d87:b0:b88:5a74:4cd6 with SMTP id a640c23a62f3a-b8e9f2e83ddmr291404066b.43.1770228396028;
        Wed, 04 Feb 2026 10:06:36 -0800 (PST)
Received: from localhost.localdomain ([2a00:23c4:a758:8a01:3c9f:a100:4d45:ebc7])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8ea0057dd1sm149677666b.65.2026.02.04.10.06.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Feb 2026 10:06:35 -0800 (PST)
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
Subject: [PATCH v2 2/9] dt-bindings: interrupt-controller: renesas,rzg2l-irqc: Document RZ/G3L SoC
Date: Wed,  4 Feb 2026 18:06:18 +0000
Message-ID: <20260204180632.249139-3-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260204180632.249139-1-biju.das.jz@bp.renesas.com>
References: <20260204180632.249139-1-biju.das.jz@bp.renesas.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262782-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[kernel.org,glider.be,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	FREEMAIL_CC(0.00)[bp.renesas.com,vger.kernel.org,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bijudasau@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: 53A5AEB8BE
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
v1->v2:
 * Simplified the binding using pattern
---
 .../renesas,rzg2l-irqc.yaml                   | 42 +++++++++++++++----
 1 file changed, 35 insertions(+), 7 deletions(-)

diff --git a/Documentation/devicetree/bindings/interrupt-controller/renesas,rzg2l-irqc.yaml b/Documentation/devicetree/bindings/interrupt-controller/renesas,rzg2l-irqc.yaml
index a0b57d808639..311741122b05 100644
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
@@ -48,17 +51,17 @@ properties:
 
   interrupts:
     minItems: 45
-    maxItems: 48
+    maxItems: 61
 
   interrupt-names:
     minItems: 45
-    maxItems: 48
+    maxItems: 61
     items:
       oneOf:
         - description: NMI interrupt
           const: nmi
         - description: External IRQ interrupt
-          pattern: '^irq([0-7])$'
+          pattern: '^irq([0-9]|1[0-5])$'
         - description: GPIO interrupt
           pattern: '^tint([0-9]|1[0-9]|2[0-9]|3[0-1])$'
         - description: Bus error interrupt
@@ -75,6 +78,8 @@ properties:
           const: ec7tie2-1
         - description: ECCRAM1 error overflow interrupt
           const: ec7tiovf-1
+        - description: Integrated GPT Error interrupt
+          pattern: '^ovfunf([0-7])$'
 
   clocks:
     maxItems: 2
@@ -106,6 +111,22 @@ required:
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
@@ -118,12 +139,19 @@ allOf:
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


