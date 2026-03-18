Return-Path: <devicetree+bounces-277206-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yBcdMDWfumkkZwIAu9opvQ
	(envelope-from <devicetree+bounces-277206-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 13:48:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id C27772BBCFB
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 13:48:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id C753930329C0
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 12:45:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F9A73D75A6;
	Wed, 18 Mar 2026 12:45:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jddml+oL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8991913D638
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 12:45:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773837920; cv=none; b=SpNPln40WLhtJ1bbW51nvduE7+RHfvTbOik0O9dOScmq8Zlpo2tInY4WuDtM4HAk1epYtz2ZyuxR/72gT3dNnYrPFluLQy05lq+kEhnIvOS0O4iy3qECKFaX0Wumm1z8Fan3ZquVP3NtqDqjjEr05u9eA74VzhoRXLk7mgzlRtw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773837920; c=relaxed/simple;
	bh=S2KC3vKp+XiJMeRZkqtihpR3beahjbDMHQU04/KXPHM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=KLeLCijgoI1OuJYs85JsQ64U0Ppo4xRM/d4ZF2BtQvdeVzqkaImNc99zEvFRSvwHcBNqt54qn0nxItHLr2uhnWw7rhiwGt4B1g5fubjZYjtXF1fOlqomP5hCoakmimy/sphVPU/E/Qm4yIgMSd9L8ObTOeiwP+kMc+bws8hr06Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jddml+oL; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-439b9b1900bso4603394f8f.1
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 05:45:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773837909; x=1774442709; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+e51u2Yg6neT38eXp4c23jk4Undnjc8a7bolt2l3qII=;
        b=jddml+oL2i7whJ/Gr2f+6ld1F0nPVZmR0KPkydbevcXowWNXVKP260851n5/1sY9AK
         F1E0ofe0jdUTgOFHgU/15DSeE0btgl56t66mcVwXKWnJETUiAbUrlXmetLr1yfOuKq2s
         NVg7aSp0gHwCh+Xg8hv62TdD1zlu3d9/qlhhzBiJZgVJiykrBQgUw4r5URpOs1Lr6xAc
         wH0fcmygF40rnyDK1sdjgacLieCSnqQfBKBvGORm/am7Soj7QF0+GYICa4LN4RBzdycP
         QjakgS2uVKeKz43cO1V9RDUljz1n/nW0z4OVFei6p3LIKHD8dYkdpZ/mY/UeU0RnOymG
         pEOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773837909; x=1774442709;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=+e51u2Yg6neT38eXp4c23jk4Undnjc8a7bolt2l3qII=;
        b=h0ClRjNRNeWXnyCR0E/CA9prGa/YV7zLiSkzP+IuFKJnsvyworKGBgs614KyDYSUGS
         ozw3q840Y7k8VhQPZEkIZktXCPyNXeV3jLv1pKYrxbPZ7zp6NzMelGlGM5H32AF+J5nP
         wpFJLkwizukF2+NPoJGrXk5oVaj/jfPqdS/paFCAGPn4/QQjE9F1R/1YmzWdn7kpXmSq
         u4doDvun2uHuhuH1Oobv2Y+AqSGWPbw8gejB+6FPASKDUbTZNqD+MencvsKAhe4q5+px
         nM1zZ27IEo8DW0LmncRF5G3KH2R82lrbI9+S6TaaK1qkmoT6hdh2/l6QkPLXMslXLjla
         yPUQ==
X-Forwarded-Encrypted: i=1; AJvYcCXRE3Pa/9+v9JdvLA1hYbMd7JfWv1bvLax188hXtsR91V9dVA4s3gpJcZoxdu9PxFSP/0DsJnOUocVP@vger.kernel.org
X-Gm-Message-State: AOJu0Yys+Iv+ba1sWHH8zciLp+7Wkpn0sT3VFAwT/0pTgbt/ItUsj9qU
	LN8e0uC4Zmn3//Kuhwc5VFIHYfXJbKzt/xh2LZW7KyQR2vHHow+ao2A4
X-Gm-Gg: ATEYQzzST1tPGraBhH3/I21Qx8PkqhjX9jI0UIe18115jl+CQ1ECBaLEYMifA3hxrRn
	YJBnwM/Psxqm5wLH71fJKVb9vjj5dDgbfXOvsTEkBF+vc+7jfqVJurao5JYqhERCGySguDoXHH2
	Al4zhrNVcvEPB9vZtIAsP9J5xTRLckuqQp8O0YbRTHY5jJ39Tj+1TqKdCOHjrEcRirHIi9NuPpo
	Pqn/t4UCzsO7hn4ZcEXTQMKHNly4gr0jLf5UdXdKwuedOtSJHQ89T+IZU4Wg7e3CbDkC9wNJQZi
	3EVJOMSssMRWD4lTkp4MEimawMHWk86AjMr1Fmv4SO0Ul2GlOUG6RpFxvNMSGhMjoWAf/1rJJ5/
	8jIxzu2wxYrvgWK5qi+CKN7cmDDUnMqyMUD6EmVBmH/u2ldgP7i0HiATG34WoHsI/rvHx4lULmn
	xE5dQwn8LklXpgReFQaH5Giil9roNmmrisX7C3Pv/5SBpFjFWQHqic1PsJtV/fsb82dETsTLl+/
	NS9oTRpa8xATkG5M5hihhrnEfReXvI8+NVGmVppN6X9vVw=
X-Received: by 2002:a05:6000:2f81:b0:439:cb9f:d635 with SMTP id ffacd0b85a97d-43b527cd28emr5179904f8f.46.1773837909165;
        Wed, 18 Mar 2026 05:45:09 -0700 (PDT)
Received: from iku.example.org ([2a06:5906:61b:2d00:5f14:a98b:b4be:efbd])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43b518985f6sm7888162f8f.25.2026.03.18.05.45.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2026 05:45:08 -0700 (PDT)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: John Madieu <john.madieu.xa@bp.renesas.com>,
	linux-pci@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH 2/5] dt-bindings: pci: renesas,r9a08g045-pcie: Add RZ/V2H(P) support
Date: Wed, 18 Mar 2026 12:44:47 +0000
Message-ID: <20260318124450.163471-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260318124450.163471-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20260318124450.163471-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_MATCH_TO(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-277206-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[bp.renesas.com,google.com,kernel.org,pengutronix.de,glider.be,gmail.com,sang-engineering.com];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[21];
	FREEMAIL_CC(0.00)[bp.renesas.com,vger.kernel.org,gmail.com,renesas.com];
	FROM_NEQ_ENVFROM(0.00)[prabhakarcsengg@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,renesas.com:email,bp.renesas.com:mid]
X-Rspamd-Queue-Id: C27772BBCFB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Add support for the PCIe controller found on the RZ/V2H(P) SoC. The
RZ/V2H(P) controller is similar to the RZ/G3E variant but includes
additional registers and configuration bits for PCIe lane control, and
supports multilink operation selectable between a single x4 port or two
independent x2 ports.

The RZ/V2H(P) SoC supports multilink operation, in which it provides
two independent PCIe channels (channel 0 and channel 1). To correctly
configure the multilink mode and per-channel PCIe settings in the SYS
registers, make the "linux,pci-domain" and "num-lanes" properties
mandatory for this SoC and restrict their values as per the SoC
requirements.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 .../bindings/pci/renesas,r9a08g045-pcie.yaml  | 22 +++++++++++++++++--
 1 file changed, 20 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/pci/renesas,r9a08g045-pcie.yaml b/Documentation/devicetree/bindings/pci/renesas,r9a08g045-pcie.yaml
index 858ec02e6d62..57807d0abd9a 100644
--- a/Documentation/devicetree/bindings/pci/renesas,r9a08g045-pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/renesas,r9a08g045-pcie.yaml
@@ -14,7 +14,7 @@ description: |
   with PCIe Base Specification 4.0 and supports different link speeds
   depending on the SoC variant:
     - Gen2 (5 GT/s): RZ/G3S
-    - Gen3 (8 GT/s): RZ/G3E, RZ/V2N
+    - Gen3 (8 GT/s): RZ/G3E, RZ/V2H(P), RZ/V2N
 
 properties:
   compatible:
@@ -22,6 +22,7 @@ properties:
       - enum:
           - renesas,r9a08g045-pcie # RZ/G3S
           - renesas,r9a09g047-pcie # RZ/G3E
+          - renesas,r9a09g057-pcie # RZ/V2H(P)
       - items:
           - const: renesas,r9a09g056-pcie # RZ/V2N
           - const: renesas,r9a09g047-pcie
@@ -220,7 +221,9 @@ allOf:
       properties:
         compatible:
           contains:
-            const: renesas,r9a09g047-pcie
+            enum:
+              - renesas,r9a09g047-pcie
+              - renesas,r9a09g057-pcie
     then:
       properties:
         interrupts:
@@ -236,6 +239,21 @@ allOf:
         reset-names:
           maxItems: 1
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: renesas,r9a09g057-pcie
+    then:
+      properties:
+        linux,pci-domain:
+          enum: [0, 1]
+        num-lanes:
+          enum: [2, 4]
+      required:
+        - linux,pci-domain
+        - num-lanes
+
 unevaluatedProperties: false
 
 examples:
-- 
2.53.0


