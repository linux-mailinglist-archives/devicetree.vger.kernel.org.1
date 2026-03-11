Return-Path: <devicetree+bounces-274322-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kLVpD5jBsWkwFAAAu9opvQ
	(envelope-from <devicetree+bounces-274322-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 20:25:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AD42E269430
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 20:25:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 7757A3025F71
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 19:25:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C3633750BA;
	Wed, 11 Mar 2026 19:25:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ZjMeQ8DP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CC1D332917
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 19:25:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773257107; cv=none; b=UWCzWVlhDtfJDMMhg8pQ+emMAyNBDLjl2vDukBpP8oqgu2WvE4GsMVI9AtOEeXqz0qGNZ+wsFznP3EmHWZCWnP2CAr/uhtHa8t/X3P12EViE1I3pBI0um5jAJZeghqkeBGGAFTD3IflALflktEYd2FW4u8uLeThx1B+Zfi1O5WA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773257107; c=relaxed/simple;
	bh=VpbzE535uXG6AgP5tyiFll4LfhI52aEagCP+X3CBZMQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=IjXz63VbM2h5IoYwMry/OzIhNmx8R6xKdIx/+7XBRdpZHOqtRYwns2ggae2ry4FfATTYRm+eJn9A3GEQYruIgqZ1VToekGNVh0bXDxidkO52QLJWHWQEYNR/i04gOrVIOncyK4qKykrzA5554cJTBXiXT49AzNnFwRSshXAWSsE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ZjMeQ8DP; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-439c6fc2910so181163f8f.0
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 12:25:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773257104; x=1773861904; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ibLQ5wY2D6UHG6MJbChHCM8vDme8uvD6Axpd7zdJp8I=;
        b=ZjMeQ8DPQg8jnM3dYPPu/OxPVKdCt7mIOsWjgjSjjQbZ5A5Q6lAsBmNYAeXI4gnxp5
         1M4Zqvp0M9IArBP8s3nXko7d88TamMMZ9C6BXQcfw0xUnFIFnxe2OZAoJ6SdZHvmmBQ1
         X81ZqKFptvBVqtpkLPzxGyjiLqRVyolDkZyHujjJyXHq0SDE/ixf7q8dBk9lkQL8JSF8
         hwnmoLjfJLsspHScFO+cnXxkKZXKiXJzMZK/fu3ixSJl0TSswBvq6ErIWagoaLht/dWv
         1BC9N8fMO9POkMYTFXB38t6fo/NzlnnCIF1GFZTPP09Yxw5RzBi7oWyLIeIUwl2k4iGv
         0WYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773257104; x=1773861904;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ibLQ5wY2D6UHG6MJbChHCM8vDme8uvD6Axpd7zdJp8I=;
        b=g3LUusukU/1G3cRN68H99yTnzt8jo1LyR8ZZv5zwMn/d6qp7YOM/YMeQOIpUlppEiu
         C+1GFcIH8aoob1k9J9UsOZ/PWNaeyNi5oLZ3vOmKbC9h1QsaEaRLt/mgxQWrvK+X1nV2
         j6XXNIkkz4AgqZR9CNCX7sZD5f+ZvIbsqC08QHr2Vz8nM4nSHFD/AvdBxdCtca01QGB2
         Ailel6hApugZ9ucyRlUzzYOCZb7XKLznrKSxKPiwkCDY1zFB48jH/xcpK52Q56Hl2zGl
         dumybKYBRziH4lv3JPczzg4F7/2e95B1U/gwLc2lDDDFQVtXocVdVSMT25XUzHV/Uh21
         a07Q==
X-Forwarded-Encrypted: i=1; AJvYcCUhBqYqG2Xm93u2H+oIW15YAeB/IhSKRTU2dX3Cuwa5Q9T8OCb9CfF3pRdQclL13BkBWYedx0oP551C@vger.kernel.org
X-Gm-Message-State: AOJu0Yzk1bYHRtEv355faytRIbdoEdBfIdGbUEDlPzey1Sjv0SVOMmya
	kq3n2BP7Znh01/N13i5KP76HEznqEG68RAproMQs+fT98W3zPwsHEkTq
X-Gm-Gg: ATEYQzzWopXCTf0BWV39ayetQVHpRju3LYZUV8/iQdy0G5DC8aID+sLm2HNQq3nfYSN
	1upPPW6piUZAzOadqoXUJB1qq3y8dekMxrCqUQP1zPdG25JnIsCyW3FG/K+SEAtSVkIEAVq4Gxj
	RVM+dkrqc+AScODzTxSamR7GGReRLGe5v8iC2gd12+MWzOQmlPZbMQLgov4EJVNOhUtbGjfXR38
	0aMsVnmG7jGgyYVJ9C+6LUCSOfGc0rv9URGN3uwInTngcPX6PBlscK4063N0JNBrps1N0Bg8Yqz
	xnQF/RmxnFxEx78xLj/8gBL4fTJPUPIA0/oSvhKnNHevAkBRry0kXCVlhTfbI4NXPUn8M737P9K
	wSt+JGZXax+j98aVg6H1epedM1IJg9Ma8tWBBDmEes/Pz6z9YHkRdzS5lMBlwU5e/gBBROb8kdN
	xesqhzZFX3kQLN8ljn6sg2/X27dVYBLATMPGisgw+MQ3tM7L1F
X-Received: by 2002:a05:6000:2886:b0:439:c202:99a2 with SMTP id ffacd0b85a97d-439f843c98amr7586895f8f.52.1773257103630;
        Wed, 11 Mar 2026 12:25:03 -0700 (PDT)
Received: from localhost.localdomain ([2a00:23c4:a758:8a01:38b7:8ca3:cb55:d344])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439fe20bd9csm1323210f8f.21.2026.03.11.12.25.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2026 12:25:03 -0700 (PDT)
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
Subject: [PATCH v5 02/15] dt-bindings: interrupt-controller: renesas,rzg2l-irqc: Document RZ/G3L SoC
Date: Wed, 11 Mar 2026 19:24:33 +0000
Message-ID: <20260311192459.609064-3-biju.das.jz@bp.renesas.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274322-lists,devicetree=lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,glider.be,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	FREEMAIL_CC(0.00)[bp.renesas.com,vger.kernel.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
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
X-Rspamd-Queue-Id: AD42E269430
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Biju Das <biju.das.jz@bp.renesas.com>

Document RZ/G3L (R9A08G046) IRQC. The IRQC block on the RZ/G3L SoC is
nearly identical to that found on the RZ/G3S SoC, with the following
differences: it supports more external interrupts and GPT error
interrupts, and adds registers for GPT/MTU interrupt selection and shared
interrupt selection between external interrupt and TINT. A new compatible
string "renesas,r9a08g046-irqc" is therefore introduced for the RZ/G3L
SoC.

Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
v4->v5:
 * No change.
v3->v4: [4]
 * Updated commit description.
v2->v3: [3]
 * Dropped items and instead used enum for single compatible values
 * Add minItems for interrupts and interrupt-names properties of 
   the RZ/{G2L,G2UL,Five,V2L} SoCs
 * Replaced maxItems->minItems for interrupts and interrupt-names
   properties of the RZ/G3L SoC.
v1->v2: [2]
 * Simplified the binding using pattern

[4] https://lore.kernel.org/all/20260227140316.308106-3-biju.das.jz@bp.renesas.com/
[3] https://lore.kernel.org/all/20260204180632.249139-3-biju.das.jz@bp.renesas.com/
[2] https://lore.kernel.org/all/20260206111658.231934-3-biju.das.jz@bp.renesas.com/
[1]https://lore.kernel.org/all/20260204142320.103184-2-biju.das.jz@bp.renesas.com/
---
 .../renesas,rzg2l-irqc.yaml                   | 43 ++++++++++++++++---
 1 file changed, 36 insertions(+), 7 deletions(-)

diff --git a/Documentation/devicetree/bindings/interrupt-controller/renesas,rzg2l-irqc.yaml b/Documentation/devicetree/bindings/interrupt-controller/renesas,rzg2l-irqc.yaml
index a0b57d808639..3a221e1800a0 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/renesas,rzg2l-irqc.yaml
+++ b/Documentation/devicetree/bindings/interrupt-controller/renesas,rzg2l-irqc.yaml
@@ -30,7 +30,9 @@ properties:
               - renesas,r9a08g045-irqc     # RZ/G3S
           - const: renesas,rzg2l-irqc
 
-      - const: renesas,r9a07g043f-irqc     # RZ/Five
+      - enum:
+          - renesas,r9a07g043f-irqc    # RZ/Five
+          - renesas,r9a08g046-irqc     # RZ/G3L
 
   '#interrupt-cells':
     description: The first cell should contain a macro RZG2L_{NMI,IRQX} included in the
@@ -48,17 +50,17 @@ properties:
 
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
@@ -75,6 +77,8 @@ properties:
           const: ec7tie2-1
         - description: ECCRAM1 error overflow interrupt
           const: ec7tiovf-1
+        - description: Integrated GPT Error interrupt
+          pattern: '^ovfunf([0-7])$'
 
   clocks:
     maxItems: 2
@@ -106,6 +110,24 @@ required:
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
+          minItems: 48
+          maxItems: 48
+        interrupt-names:
+          minItems: 48
+          maxItems: 48
+
   - if:
       properties:
         compatible:
@@ -118,12 +140,19 @@ allOf:
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
+          minItems: 61
         interrupt-names:
-          minItems: 48
+          minItems: 61
 
 unevaluatedProperties: false
 
-- 
2.43.0


