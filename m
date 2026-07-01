Return-Path: <devicetree+bounces-318696-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id oLczE9EoRWoM8AoAu9opvQ
	(envelope-from <devicetree+bounces-318696-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 16:48:49 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id ED7CA6EEF5F
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 16:48:48 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=YE6GPTJz;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318696-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-318696-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 86E993174FFE
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 14:30:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 199DE344D9D;
	Wed,  1 Jul 2026 14:30:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BE3933F8DC
	for <devicetree@vger.kernel.org>; Wed,  1 Jul 2026 14:30:07 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782916209; cv=none; b=co1Uy4dhhItgeWqwkSh+/Mh2lX1GXzr7sqftdEFloFzQ7dvhOGsZJd3rRkBdq3nDcVD5gFUlVtWOyT5k+XplfeCAiv7y2+63RUS3TqSrBPAhHlxvISKltc8pB8xQZBsXAlcRlU7JzDJRbSL/p3x9yKgj0TfDUpBzSWyKmU43++8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782916209; c=relaxed/simple;
	bh=J+GbWvJiZAKOa8gwMW5w0/ZdCLjIm8F73+59a3lSp+0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=PdCDo4bSLiebeCYeOOYpL+Vp+NhUtLcrIFTl5ohXgkgjLQK5BptsJH7FucXGRGry/A0nw3bCyCvjl+IYsXaCAienbli2FrenuLcXOXEoJtuOEnQKZBfV5bYQiO3MsTDNY76is1UifuwR3C0l2nHbecR+xeE7NVbWRHajbKlRFZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=YE6GPTJz; arc=none smtp.client-ip=209.85.221.54
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-472a14c9965so622228f8f.1
        for <devicetree@vger.kernel.org>; Wed, 01 Jul 2026 07:30:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782916206; x=1783521006; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=M0f93MJ18B13tIX/32rfVOVMBHkdlwoRgH8VUd/Tsek=;
        b=YE6GPTJzyQRLxou1E1Q3cTT5TQq+Ahv64ebm+ihlAfZo8lO4Jmq4EHvNy2JJeauQp0
         l0A6tW6u9jYWzFgPYaNH9wvPAtMtmpCpUzNXH1lhC1Tz2tp/1JCl3lZ/EJnlDlLIkaaP
         ZU6eA/Qb7WiSXgzEaTnsn1ou5z08rHCpFKcQvRTRRgwXhfz7e/GuLeZ3vM5nuskzJlJr
         xNXVXQEaKp9uMwvvBc6cVorvm+i60ACjchsNg02qph52ZeMwDp2RpE86sGHLPjz5q2ee
         grQ0EsCFEU36ncHIw1F1Mmi9XbXs2yzp+ot16l4zZ/hgIRPHLhSvHN3AqH2X4xpWg8fC
         ldPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782916206; x=1783521006;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=M0f93MJ18B13tIX/32rfVOVMBHkdlwoRgH8VUd/Tsek=;
        b=IKZxe1cUnsnbLch/bb/7XOl0C+LfMpWtA7pFfMWlvkhSJWPexmFrzA3vnQrFyf3rxu
         cbWsxjVHokHMB1x+m5nl5tyQBUUre3Mj6QZAkYhgCCyughAsgOId3x9acRfgZDseNi+M
         CSM6EjoXAVngJuhVjbsF2BYxH85NaE+VvWqk/fzRNx9hNxrtSovgKT2STCXo3cqpqZi2
         njvVDB0MIpsWNs+Hc2KdUhNlmm+Hvn0bGRQzS0NWO6j2U7htxSvgQs1KWGWQtk/ny2aR
         UVirmBjZ2h+kaGYvbq4COyc3Xopu3IZZCYzQl1CBq5LyvGbPH7K9R9CpgQrO2IpeBzsp
         1XeQ==
X-Forwarded-Encrypted: i=1; AHgh+RpWUtQfdoLvu2nUM2ouaaP36Tt+4LruY42I2wzk0YdaQoLWz2Qb53eo/fxJTzii/51gR8DjybFkd5Rd@vger.kernel.org
X-Gm-Message-State: AOJu0Yz+FkcAK/YaWXmt6Y6ckzQtreuq4KUfQImXgqImC42+ywVav/0v
	IUTIT7RalEWbZLQuBYTfTgT9+jW9C2t1ROu+TBfZ2fUzW7hV/7HnEzno
X-Gm-Gg: AfdE7cknbOvSz5svidILdXdT0Q/es1MBH1e1Z+lKNZkTw9TN4pgfRhcVbjUBgiu68od
	VC1TpYJw3UIqw4DvcYA36EEBx31sGdZCt252V28jmciRgB93dL1eyAqlCJvlyEPgBaDtG3G+Drg
	sPu5FtIRDPCxu/avLP4Xwxzm0SUgvJHh1vHweD6kpgfy4vZA+PeLhdpqJu8pljjJ5tTybTmnVFE
	FKD2cv6Kb2Kxg7X3TzVdmpkzBQU3SLffdVp1M04aiHt5enwLm4vvam1+KvmoS+iwk1cLswELtaP
	zpC2bQo4wPzieGcmCvBgskzAnEVdwzbdSv9Jv/2/xHPGQLNTjgJ4txhVpooHxugnrm/NWw+2g92
	Ar80AlPSp9xJyPCpDUDEnRZBiYOIv+XUOQRYUyvulmuJlbFj/9oIWdRPpLKBDCofG+MfbDn6s/I
	PE3ZsPZgPzS4n0uZOjNYr7/Fad8q+ZIu5PnvJxJPOM23kOFCJfRSPt6jS+bWAKnoYG80LFsHSNW
	QkHaSNxu4d6VyPHoTsgTwgELWU=
X-Received: by 2002:a05:6000:420f:b0:475:f0c2:5b03 with SMTP id ffacd0b85a97d-4775b5539a5mr3406191f8f.57.1782916205651;
        Wed, 01 Jul 2026 07:30:05 -0700 (PDT)
Received: from iku.Home ([2a06:5906:61b:2d00:5353:5ce3:a6a2:3b98])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-477dd94c829sm184902f8f.24.2026.07.01.07.30.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Jul 2026 07:30:05 -0700 (PDT)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: linux-rtc@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Prabhakar <prabhakar.csengg+renesas@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v2 01/10] dt-bindings: rtc: renesas,rzn1-rtc: Add RZ/T2H and RZ/N2H support
Date: Wed,  1 Jul 2026 15:29:44 +0100
Message-ID: <20260701142953.2014895-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260701142953.2014895-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20260701142953.2014895-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-318696-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:miquel.raynal@bootlin.com,m:alexandre.belloni@bootlin.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:geert+renesas@glider.be,m:magnus.damm@gmail.com,m:wsa+renesas@sang-engineering.com,m:linux-rtc@vger.kernel.org,m:linux-renesas-soc@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:prabhakar.csengg+renesas@gmail.com,m:biju.das.jz@bp.renesas.com,m:fabrizio.castro.jz@renesas.com,m:prabhakar.mahadev-lad.rj@bp.renesas.com,m:conor.dooley@microchip.com,m:krzk@kernel.org,m:conor@kernel.org,m:geert@glider.be,m:magnusdamm@gmail.com,m:wsa@sang-engineering.com,m:prabhakarcsengg@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[prabhakarcsengg@gmail.com,devicetree@vger.kernel.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[bootlin.com,kernel.org,glider.be,gmail.com,sang-engineering.com];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com,bp.renesas.com,renesas.com,microchip.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[prabhakarcsengg@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,renesas.com:email,sang-engineering.com:email,bp.renesas.com:mid,microchip.com:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,bootlin.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: ED7CA6EEF5F

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Add compatible strings for the RTC block found on the Renesas RZ/T2H
(R9A09G077) and RZ/N2H (R9A09G087) SoCs.

These SoCs integrate a closely related variant of the RZ/N1 RTC IP.
Unlike RZ/N1, they do not implement the RTCA0SUBU register. This is
not a limitation for Linux support, as these registers are not used
when the RTC operates in "scmp" clock mode, which is required on
RZ/T2H and RZ/N2H due to their 195.3 kHz input clock.

The RZ/T2H RTC variant also supports a 1Hz output signal on the
RTCAT1HZ pin, controlled by the RTCA0CTL1[RTCA01HZE] bit. This bit is
marked as reserved in the RZ/N1 hardware manual.

Update the binding schema to require the additional clock inputs used by
these SoCs.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
Reviewed-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
---
v1->v2:
- Updated commit message to drop reference about RTCA0TCR register.
- Added Acked-by and Reviewed-by tags.
---
 .../bindings/rtc/renesas,rzn1-rtc.yaml        | 35 +++++++++++++++----
 1 file changed, 28 insertions(+), 7 deletions(-)

diff --git a/Documentation/devicetree/bindings/rtc/renesas,rzn1-rtc.yaml b/Documentation/devicetree/bindings/rtc/renesas,rzn1-rtc.yaml
index 1860f0e4c31a..ea7b039a91e7 100644
--- a/Documentation/devicetree/bindings/rtc/renesas,rzn1-rtc.yaml
+++ b/Documentation/devicetree/bindings/rtc/renesas,rzn1-rtc.yaml
@@ -9,15 +9,19 @@ title: Renesas RZ/N1 SoCs Real-Time Clock
 maintainers:
   - Miquel Raynal <miquel.raynal@bootlin.com>
 
-allOf:
-  - $ref: rtc.yaml#
-
 properties:
   compatible:
-    items:
-      - enum:
-          - renesas,r9a06g032-rtc
-      - const: renesas,rzn1-rtc
+    oneOf:
+      - items:
+          - enum:
+              - renesas,r9a06g032-rtc
+          - const: renesas,rzn1-rtc
+
+      - const: renesas,r9a09g077-rtc
+
+      - items:
+          - const: renesas,r9a09g087-rtc
+          - const: renesas,r9a09g077-rtc
 
   reg:
     maxItems: 1
@@ -54,6 +58,23 @@ required:
   - clock-names
   - power-domains
 
+allOf:
+  - $ref: rtc.yaml#
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - renesas,r9a09g077-rtc
+              - renesas,r9a09g087-rtc
+    then:
+      properties:
+        clocks:
+          minItems: 2
+        clock-names:
+          minItems: 2
+
 unevaluatedProperties: false
 
 examples:
-- 
2.54.0


