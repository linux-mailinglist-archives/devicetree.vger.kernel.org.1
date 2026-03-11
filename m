Return-Path: <devicetree+bounces-274321-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sOfeH5TBsWkwFAAAu9opvQ
	(envelope-from <devicetree+bounces-274321-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 20:25:08 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 16124269429
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 20:25:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0E23F3027D8E
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 19:25:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F33836EA8A;
	Wed, 11 Mar 2026 19:25:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Dk4fHkCn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B63C732C316
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 19:25:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773257106; cv=none; b=QVQ84LV2vrKhSsXIAZG8db/6yuhcGqIntFQcQUcuQGKSLF9HlcSpwGGvKB7NARqCv89AAa+fXzoSDSDCEHyNgqLwnIvSY7n0UD3ZhXC6+QB/uqq6ngD85T98mhSiBM2f/Flyh334srmUTbnpywxPNEiJ3PRF5xN0ft5rNbZzG2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773257106; c=relaxed/simple;
	bh=JOC7zQQxcBbrUatDZzHsCqQlUtqB/9p0zHtPiQs1VZM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=KFrfSihbdf1uU79QW2XzO3JNehDni7lBbxL9ffGL7/HWq5w1DqZmEbxx4UrBxHnyaqq+/Sc85uhZcJvdnCGb1LALZHVQU/h0IuCbI8OgvYEYbv44VxRjI95Q7tLdPJKpdhxmEsP0YTKMt20oCzUBrbzuXHsxT5yye26u+atm/aw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Dk4fHkCn; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-485409ab264so1826495e9.1
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 12:25:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773257103; x=1773861903; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BlMlbjII4EE/PGDZ41CR9CFSgzHzgh2IK3Re4kHP3BE=;
        b=Dk4fHkCnL1rReB40jD5Mh92ENnYz2NlsS6uYzwIMUgGtOwpWX4/YHS0dtMEbJHGYQc
         XYiyX23HVZwu883X8isUz2OMLA6kDWr0N54vU/LzV8fZlBcgnoF/gc70g/WWsCuiGRI7
         EMxra+S2SW8tHRUmdqrROVd1yq9yl3zdFBLiKPxQ6ss3wFsQoDn4axEwRZfdTp0arcFS
         tzlyHFONHNPkFIZ3rHer46OtKFqbqbYNcjYlwhS9AYHWG5LZdTpmPqKy6y4M3fMB6T3w
         sJUNWV8uQ1dmyj/btwqdvV6LyCllLkbehhIhdpVJe3AdeXJA1viPgOqghy97K9LOk0j5
         vPJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773257103; x=1773861903;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=BlMlbjII4EE/PGDZ41CR9CFSgzHzgh2IK3Re4kHP3BE=;
        b=mI3vDHAEiC8ry5O1ra4BUN9+2uO+nRRl6XjBQHagdCJdGtgPr7a4dZ1lWh4+apEX6e
         0s1eVIZ6WA5xmzA5/MWwAkUX/N5iVzrtXnk+MJ1QD3Q3QDs3NMWtxU6HiByj9DunXVbM
         5knMpPus2wwbsFzaAkG+zwSXjFRKQkvDDcxRAPlaMHhRyGF4YAczYC10EFAozcHBGJrL
         2mZ5YlJlZzs/ALrQH0OdwVGQJVuv+Wdg02EKlibC1tWs2Zvtg/1sFVKVw1xxUMLN+QJH
         w8OOSQ9N+LwjHSzoX+fLo2cqzLCWtJ0THugIalLmnWxeHxNQPPDXabOxPvVErclLkbn8
         Y+DQ==
X-Forwarded-Encrypted: i=1; AJvYcCWDVIriQWak9sRdQDp4UUIithLU0eskn7HfXB4hzbKIXvKoAw5iInhSn9FZ+VSj7Yjjxp+tt8g9IgJj@vger.kernel.org
X-Gm-Message-State: AOJu0YyJN7TROFE+bhRxtHuTaBVV9W4PjqdDmpO2SVOPtPqUC0qrA0qb
	nm3VSOSyg4wKBWWDoNY6w/wxE7YYs7rAQyzoPXXWYWq5TSJi6Xy8mStG
X-Gm-Gg: ATEYQzwxbG9VE6ALMZSCxncYnU8aorsAeTDnfNy3Fhm8hG6LO8E9NhPeI5qbRhB4qgK
	1bPcaE+86nBPita6WgbGW4gq64vWlYezyjK6wrk/pw+/0asesw06MdQjYgbV4zx8JGxm81El5zR
	3EhAhP4f2eofjxKjSNuVGuivwHtDLi8ImjiOTvZHARNDhrxrLaSG2AGCFlT1NAJ2Ks82Ogyaf8Y
	2q7hIELT5or0iCL0QskFKGZbFCD5oJhjQnNozhn0fnsgROyI77Vqj5hFmAMT01D/SdxmlJeSp99
	3PsM3PbdfodEjbXCinKA4RNTt9+NVha+MH5XZN/AGeyHTSBT7gfNuu5sO/QN1OmwvEUlCUXuZWu
	8AHbCV/AFM/iTSEbkCiqCe8nrHIMCHXI16cp8P8bN2OUR6An6QDy7fpBPERD5naeQeTgyTCGwJJ
	B9aSUcN2A3AnIlabG9pYtxGe2HNeUZliPPqaqbGVU5VCdcL8Kf
X-Received: by 2002:a05:600c:4fd5:b0:485:3989:b3e4 with SMTP id 5b1f17b1804b1-4854f578e86mr13064925e9.6.1773257102902;
        Wed, 11 Mar 2026 12:25:02 -0700 (PDT)
Received: from localhost.localdomain ([2a00:23c4:a758:8a01:38b7:8ca3:cb55:d344])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439fe20bd9csm1323210f8f.21.2026.03.11.12.25.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2026 12:25:02 -0700 (PDT)
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
Subject: [PATCH v5 01/15] dt-bindings: interrupt-controller: renesas,rzg2l-irqc: Use pattern for interrupt-names
Date: Wed, 11 Mar 2026 19:24:32 +0000
Message-ID: <20260311192459.609064-2-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260311192459.609064-1-biju.das.jz@bp.renesas.com>
References: <20260311192459.609064-1-biju.das.jz@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274321-lists,devicetree=lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,glider.be,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	FREEMAIL_CC(0.00)[bp.renesas.com,vger.kernel.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,renesas.com:email,bp.renesas.com:mid]
X-Rspamd-Queue-Id: 16124269429
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Biju Das <biju.das.jz@bp.renesas.com>

Simplify the bindings by using pattern property for interrupt-names.
It also allows to change the ordering of interrupts.

Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
---
v4->v5:
 * No change.
v3->v4:
 * Updated commit description.
v2->v3: [3]
 * Dropped items and instead used enum for single compatible values
 * Add minItems for interrupts and interrupt-names properties of 
   the RZ/{G2L,G2UL,Five,V2L} SoCs
 * Replaced maxItems->minItems for interrupts and interrupt-names
   properties of the RZ/G3L SoC.
v1->v2: [2]
 * Simplified the binding using pattern

[3] https://lore.kernel.org/all/20260204180632.249139-3-biju.das.jz@bp.renesas.com/
[2] https://lore.kernel.org/all/20260206111658.231934-3-biju.das.jz@bp.renesas.com/
[1]https://lore.kernel.org/all/20260204142320.103184-2-biju.das.jz@bp.renesas.com/
---
v3->v4:
 * Collected tag from Rob [1]
 * Updated commit description and kept the tag as it is trivial change.
v2->v3: [2]
 * No change
v1->v2:
 * New patch [1].

[1] https://lore.kernel.org/all/20260204180632.249139-2-biju.das.jz@bp.renesas.com/
[2] https://lore.kernel.org/all/20260206111658.231934-2-biju.das.jz@bp.renesas.com/
---
 .../renesas,rzg2l-irqc.yaml                   | 120 ++++--------------
 1 file changed, 23 insertions(+), 97 deletions(-)

diff --git a/Documentation/devicetree/bindings/interrupt-controller/renesas,rzg2l-irqc.yaml b/Documentation/devicetree/bindings/interrupt-controller/renesas,rzg2l-irqc.yaml
index 44b6ae5fc802..a0b57d808639 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/renesas,rzg2l-irqc.yaml
+++ b/Documentation/devicetree/bindings/interrupt-controller/renesas,rzg2l-irqc.yaml
@@ -48,107 +48,33 @@ properties:
 
   interrupts:
     minItems: 45
-    items:
-      - description: NMI interrupt
-      - description: IRQ0 interrupt
-      - description: IRQ1 interrupt
-      - description: IRQ2 interrupt
-      - description: IRQ3 interrupt
-      - description: IRQ4 interrupt
-      - description: IRQ5 interrupt
-      - description: IRQ6 interrupt
-      - description: IRQ7 interrupt
-      - description: GPIO interrupt, TINT0
-      - description: GPIO interrupt, TINT1
-      - description: GPIO interrupt, TINT2
-      - description: GPIO interrupt, TINT3
-      - description: GPIO interrupt, TINT4
-      - description: GPIO interrupt, TINT5
-      - description: GPIO interrupt, TINT6
-      - description: GPIO interrupt, TINT7
-      - description: GPIO interrupt, TINT8
-      - description: GPIO interrupt, TINT9
-      - description: GPIO interrupt, TINT10
-      - description: GPIO interrupt, TINT11
-      - description: GPIO interrupt, TINT12
-      - description: GPIO interrupt, TINT13
-      - description: GPIO interrupt, TINT14
-      - description: GPIO interrupt, TINT15
-      - description: GPIO interrupt, TINT16
-      - description: GPIO interrupt, TINT17
-      - description: GPIO interrupt, TINT18
-      - description: GPIO interrupt, TINT19
-      - description: GPIO interrupt, TINT20
-      - description: GPIO interrupt, TINT21
-      - description: GPIO interrupt, TINT22
-      - description: GPIO interrupt, TINT23
-      - description: GPIO interrupt, TINT24
-      - description: GPIO interrupt, TINT25
-      - description: GPIO interrupt, TINT26
-      - description: GPIO interrupt, TINT27
-      - description: GPIO interrupt, TINT28
-      - description: GPIO interrupt, TINT29
-      - description: GPIO interrupt, TINT30
-      - description: GPIO interrupt, TINT31
-      - description: Bus error interrupt
-      - description: ECCRAM0 or combined ECCRAM0/1 1bit error interrupt
-      - description: ECCRAM0 or combined ECCRAM0/1 2bit error interrupt
-      - description: ECCRAM0 or combined ECCRAM0/1 error overflow interrupt
-      - description: ECCRAM1 1bit error interrupt
-      - description: ECCRAM1 2bit error interrupt
-      - description: ECCRAM1 error overflow interrupt
+    maxItems: 48
 
   interrupt-names:
     minItems: 45
+    maxItems: 48
     items:
-      - const: nmi
-      - const: irq0
-      - const: irq1
-      - const: irq2
-      - const: irq3
-      - const: irq4
-      - const: irq5
-      - const: irq6
-      - const: irq7
-      - const: tint0
-      - const: tint1
-      - const: tint2
-      - const: tint3
-      - const: tint4
-      - const: tint5
-      - const: tint6
-      - const: tint7
-      - const: tint8
-      - const: tint9
-      - const: tint10
-      - const: tint11
-      - const: tint12
-      - const: tint13
-      - const: tint14
-      - const: tint15
-      - const: tint16
-      - const: tint17
-      - const: tint18
-      - const: tint19
-      - const: tint20
-      - const: tint21
-      - const: tint22
-      - const: tint23
-      - const: tint24
-      - const: tint25
-      - const: tint26
-      - const: tint27
-      - const: tint28
-      - const: tint29
-      - const: tint30
-      - const: tint31
-      - const: bus-err
-      - const: ec7tie1-0
-      - const: ec7tie2-0
-      - const: ec7tiovf-0
-      - const: ec7tie1-1
-      - const: ec7tie2-1
-      - const: ec7tiovf-1
+      oneOf:
+        - description: NMI interrupt
+          const: nmi
+        - description: External IRQ interrupt
+          pattern: '^irq([0-7])$'
+        - description: GPIO interrupt
+          pattern: '^tint([0-9]|1[0-9]|2[0-9]|3[0-1])$'
+        - description: Bus error interrupt
+          const: bus-err
+        - description: ECCRAM0 or combined ECCRAM0/1 1bit error interrupt
+          const: ec7tie1-0
+        - description: ECCRAM0 or combined ECCRAM0/1 2bit error interrupt
+          const: ec7tie2-0
+        - description: ECCRAM0 or combined ECCRAM0/1 error overflow interrupt
+          const: ec7tiovf-0
+        - description: ECCRAM1 1bit error interrupt
+          const: ec7tie1-1
+        - description: ECCRAM1 2bit error interrupt
+          const: ec7tie2-1
+        - description: ECCRAM1 error overflow interrupt
+          const: ec7tiovf-1
 
   clocks:
     maxItems: 2
-- 
2.43.0


