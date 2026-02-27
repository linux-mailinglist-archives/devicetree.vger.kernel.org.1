Return-Path: <devicetree+bounces-269267-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SCN9F62ooWm1vQQAu9opvQ
	(envelope-from <devicetree+bounces-269267-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 15:22:37 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B503C1B8CAF
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 15:22:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 29A5431B014B
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 14:08:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 76881436344;
	Fri, 27 Feb 2026 14:03:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="F4FdZcfR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C40B9421F10
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 14:03:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772201003; cv=none; b=oY1hj9gBLeBWfXA+fuzxZvZZnXTyohHcO+cFROugssFC+cOroZniy+reoDdL+f56XUotVK1a18LVOeHUfQ8D18JKiUYy/pJaJyEC+qb91tk9Jo1VbO1JOGdg/yFbrAYbrG4GW0pkzsi59UZhyxpjCh6EQHQ7QFxqqy5LCclehAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772201003; c=relaxed/simple;
	bh=H3kxOxp2ALJIVSC0YsDxjDp/bguYng3VF566NylkaO4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=R7k32Q/DioQbnRAAhDpUu3/exWop1UPc4ujq/aH3NvAlB2JBjJjMc9k1KVCpT4ORlg+oO4N2+aiT6fhBfvCOm3g5TtzQCXA9l+YyFW7HCsmgVXY51SncC80v+wo1TNPMnoAv/+FBxGErr2VNkFjsksRnsnHJ3zMYs4fN0LkNids=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=F4FdZcfR; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-4399dd8d7b3so651978f8f.0
        for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 06:03:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772201000; x=1772805800; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5usUo2XpJhaTxmQdTpUBGqGDBLyO4HnKXMdTPdQM54M=;
        b=F4FdZcfRglxtW/bie4jgstVEhjkwonP6D53ugxsIUUTAK9N3GZNyb4B1q7PzbZml/8
         CuHGR9fFTS7e//hrbXBF9jHtDdgxszb7YaFYAWZ1PILLmuSTb/dHzwsbwy5DX6j6BLPw
         A++GBdBoHuwFxtYMeMt6IVVBq4CdaJf7o/6FkZHuZyd6mhsq5ND0uxjTy0b3jEQna/cz
         Q371PRvxkjRNV5R2RM5eamswEajBE6oS+rwUvljVDhNVRnPaEd4Ra+cHMUn66OuEYzSn
         pXBSCQmHdf+A7W2mY+5/zN8gOvImm6vJxcOmkAjxobLli+w9QAgDCPHRX9YUqY1i/Gnf
         LBrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772201000; x=1772805800;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=5usUo2XpJhaTxmQdTpUBGqGDBLyO4HnKXMdTPdQM54M=;
        b=gv3LFTmMGOYDYI8bCWWqQLWiOUUaehHLMF1r5EKhY4MzhHOalMW9F8iAascNjJkZ/V
         XjZ3mitdPeB/FDtVhU1Lxul4YLY0VsQ+fM7xC+4t4LZ5An5jGxL3ypHQHULT+Mx6zSw1
         lRGF0dE+KBBG4bAH4PySZqjbB1rT9Rt3iVdJSzHV+oeYOCzZr1jRNQtGkabw5Ksj4UBH
         rKBJGT3tFpY5RtjT3nXT5g1iAJonY06z17s101sCyU/9vq6MN0KAS/nGUtTEP6tmDscy
         jQ0OsOz7iMr7N4N8BzmnOMPzGVPa6qAaHF5yuY9b+cIOObOJ3o51lcUKQOtN6sH43Rfb
         vRjQ==
X-Forwarded-Encrypted: i=1; AJvYcCXX5N/l+RdKSoX1KFiC9rzicvrKNdPy0JBMx3RdmSZuzzUApSalwY6WG+g01Yxhwj45k1JjHGo581op@vger.kernel.org
X-Gm-Message-State: AOJu0YyYPohmKnzsl64u9NGiBhPnp4Cx4cmDQifb3F65qGhY9IvZJCGs
	NJmMVlWcWUzj0LpLUpM3t0b9si15ArPEv93kRniiBhzP2K1kSoxW4D4d
X-Gm-Gg: ATEYQzwwUTVlDskVmX5IMsr+JDJ/YLIr6LOIhOV3uxXm5MBPCiwQ+q5geyzjhYj3ZHi
	jSWhj5FSNihTZlqfsi1oUewnzenDKErBmSkVrJA7K2pQutr/nrcylOXcOSe18HnlsSdfXKG1O00
	bI5UTUhebGZfeqe3TJ00ht9+ug6LFFjkRaKh4+iw0+35b/l0477EKLDvSvLeUlCHJu7TNvsAFxY
	2kG1Qe4YAQ7gEU9Cn19Yxa/neGneXQ/HqS9jSJuGFMFxrA6r5vBA9JFVcJfavzM8rzDuzWUqZ4t
	4ptkH3197O3WTGy42YPj32OH1k8TGca7CqjiiaOd2SoX9Oz9bxE9RP3BgPks3wvL0aXbMr4BpGM
	Pxc+2osHko94aYZ1HHdqnhPm4YCh2VRvELuTpEsAJH263p0Dpct/d2UdD8nyCUTM48xMBCOV21h
	ah6C2Qf8CxE66OZ9uVd7mSfYv1tD+8N6dNHntED/wPCA==
X-Received: by 2002:a05:6000:2583:b0:436:36cb:70b7 with SMTP id ffacd0b85a97d-439971ae732mr13388933f8f.7.1772200999713;
        Fri, 27 Feb 2026 06:03:19 -0800 (PST)
Received: from biju.lan ([2a00:23c4:a758:8a01:4d8b:fefb:26cf:1906])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4399c60feeesm7658811f8f.1.2026.02.27.06.03.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Feb 2026 06:03:19 -0800 (PST)
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
Subject: [PATCH v4 1/9] dt-bindings: interrupt-controller: renesas,rzg2l-irqc: Use pattern for interrupt-names
Date: Fri, 27 Feb 2026 14:03:01 +0000
Message-ID: <20260227140316.308106-2-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260227140316.308106-1-biju.das.jz@bp.renesas.com>
References: <20260227140316.308106-1-biju.das.jz@bp.renesas.com>
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
	TAGGED_FROM(0.00)[bounces-269267-lists,devicetree=lfdr.de];
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
X-Rspamd-Queue-Id: B503C1B8CAF
X-Rspamd-Action: no action

From: Biju Das <biju.das.jz@bp.renesas.com>

Simplify the bindings by using pattern property for interrupt-names.
It also allows to change the ordering of interrupts.

Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
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


