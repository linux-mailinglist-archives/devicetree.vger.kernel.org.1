Return-Path: <devicetree+bounces-319374-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id C1LnDv1aRmotRgsAu9opvQ
	(envelope-from <devicetree+bounces-319374-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 14:35:09 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9825C6F7AE1
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 14:35:08 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=ofPq5Rk6;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319374-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-319374-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 26474305EA6C
	for <lists+devicetree@lfdr.de>; Thu,  2 Jul 2026 12:31:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8386A480951;
	Thu,  2 Jul 2026 12:31:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF0F548122E
	for <devicetree@vger.kernel.org>; Thu,  2 Jul 2026 12:31:31 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782995497; cv=none; b=bHzo4GtxsHJrVuCh5/R4yaEuF/iX4LaCetq4x9eU+KmfeDuABeMru2d9/OcGH+VNMJmaVwuEQ5290Prso93Z8ypd5OudyPWe/vC1fV+uJ9xOTjrwB2ZWi9N8g37OtqlYvp3iVMKn8yGhAWCwihGlHQc/H9n6Wdap6zMJP+ddQzE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782995497; c=relaxed/simple;
	bh=PmDTNVsDWfiEJmr+uQTPVzkjhlVGry8IKEMbCyAPdqU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=iDnMPld2KGa4k0PKkfbayv+uSCnz1O1JNTI/svMUZjUctkglcaJ8wufr3os98Tip7okCCbzOglwaEG+pzAqaUKoKnpcctMuLamOSd6E9Qz6fBd/HGk1uPx/CzPert6OfB9uvfGGpok2dQ1joac1WPyLmvGyDHnWXZLrHRvm4wGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ofPq5Rk6; arc=none smtp.client-ip=209.85.221.50
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-4745492ed3aso1147422f8f.1
        for <devicetree@vger.kernel.org>; Thu, 02 Jul 2026 05:31:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782995489; x=1783600289; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HmlYZPisAM18uLrOj3e2exC6+6sOiuaqyI++DJghzLo=;
        b=ofPq5Rk6tu6Wj6B19gVx3/JogaLKD2UElywLd9RUs4mZWCwU6XqZfIv0mVIagQjHIK
         pSoJN7ztpTHyuc9bq/+9z6kgwMojbs3kHSxmlO6rLYzttyvSdRF59as7rb/LkZPGSK3N
         o3G4Vacy2b6JGgLZ3lSo9e1zblHtKal35lp8pII3u4eBkkEhfgSNq90DpPdgudEt6Dn8
         nIN8rbDc2FE58UbRSsL5PogC0z+5QThuQSOqZK95gfwk9fWIPvONgYwK0MNTKxdJOZf3
         nuS0TmWSBBtPJ5AWk/Dz5Dme622ySxv2OmgYI8LdqIwDxg6xnFnrq6HIRC0H+J7BmgZb
         Oyfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782995489; x=1783600289;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=HmlYZPisAM18uLrOj3e2exC6+6sOiuaqyI++DJghzLo=;
        b=gdN2EBFaRbVUJQRx1KNR9sYQkTCXEw/wKwixR9dy1uEiZbfox88j3xWhiSmehGXVmC
         q7zVLkvEj9t8KRagQ6F4n0+8zOumq2lYxMhUeSNLH6Ao4m+hw5iK2JqtgoOY1KAywyax
         w4KQeec6a2BwrPa4RSwI3KE0o4zDF1a5Hh+p8EVa7immhkAQN4zHkN9Hs2cnWTKAuYzM
         tnfvB4KikSaWXA8k7fWLiqa243ejWDi2kkKWBdY0zU/y9q6LJXIXd6wuQmvKHIxiOcaP
         yz/B0eLHMXLtMCH2LKZ5kOodxkazvHTcLE71n5wuSxivQ+dBhpug0niSSUjLzA5FgGWC
         EYIg==
X-Forwarded-Encrypted: i=1; AHgh+RqnLDNnWalKcDKFU4G4uSDpH0Du3MqqopomyOMAUKIBvElzoCHMAp1y2J7MzgIvatGnkcvGDZ4RAK3i@vger.kernel.org
X-Gm-Message-State: AOJu0YwEWeJI1MynPwxzyoFoyrOL1plJC+MsPit1j+qfvgfbusLRrZyZ
	N1JRD2z+5YFxvEM6k4R5Jyzl4KWWpTOO8cwA9xOSTO9W5okOKjMqBCfN
X-Gm-Gg: AfdE7cmB6vbK5GJTk/QHCGhvsFSSQhVoMVAmMq2QLxQM3Yqfr37/TOJiomoD/0vs7zU
	AMQ+QVhHcKHh5qvueYjgByFR5x0TQOJjGMcq97zj8ucggqpKi1MpszuTgC/nLvJbRJ+3Ox1mKR6
	cNCXDXYry+AGZNBQcw/gm7s7LFAP3FRu7d8umTyoH51ajGAs41ZwRJOyXn1oY5A+KFZeRGERWNO
	1tUcVOUAU0bTOGjTbhaM0dxdESwGSYf/ckZwcE5gBpOsc6+iKc3K6EDNru8Da3uuke9fzTpQgqs
	O1TBPiJYx+cxqX2Xke78wwHfcA+V9Y/ZWI3WLY8Upi5P9rs412CSFG3Qcs0Bxn9fk7RaaMXVRCn
	pIcKbF1qisvL07Ytp1dv0ttUXIl7cY0iuqjqc44Gr+h/PoFDHryfjAz2DfPhERNXxZ7+yMJfRsY
	72m5OU+6LfQbagkPpEIvcOS7CgBWEB95XjmlFZWWJY2LnSG3qY7e+oBc/BbBZ2aOqHsTkDvqZzQ
	HKsqXFOlNkr46zlAbxabTz5dBw=
X-Received: by 2002:a05:6000:200d:b0:475:5454:49f2 with SMTP id ffacd0b85a97d-47757e57dc4mr8804566f8f.24.1782995489181;
        Thu, 02 Jul 2026 05:31:29 -0700 (PDT)
Received: from iku.Home ([2a06:5906:61b:2d00:7a4b:58b4:175e:8c2d])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-477ddf0f433sm9772923f8f.32.2026.07.02.05.31.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Jul 2026 05:31:28 -0700 (PDT)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Brian Masney <bmasney@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Wim Van Sebroeck <wim@linux-watchdog.org>,
	Guenter Roeck <linux@roeck-us.net>,
	Magnus Damm <magnus.damm@gmail.com>,
	Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-renesas-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-watchdog@vger.kernel.org,
	Prabhakar <prabhakar.csengg+renesas@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH RFC v2 5/9] dt-bindings: watchdog: renesas,r9a09g057-wdt: Add SYS syscon support
Date: Thu,  2 Jul 2026 13:31:08 +0100
Message-ID: <20260702123112.161160-6-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260702123112.161160-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20260702123112.161160-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
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
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-319374-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_RECIPIENTS(0.00)[m:geert+renesas@glider.be,m:mturquette@baylibre.com,m:sboyd@kernel.org,m:bmasney@redhat.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:wim@linux-watchdog.org,m:linux@roeck-us.net,m:magnus.damm@gmail.com,m:p.zabel@pengutronix.de,m:linux-renesas-soc@vger.kernel.org,m:linux-clk@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-watchdog@vger.kernel.org,m:prabhakar.csengg+renesas@gmail.com,m:biju.das.jz@bp.renesas.com,m:fabrizio.castro.jz@renesas.com,m:prabhakar.mahadev-lad.rj@bp.renesas.com,m:geert@glider.be,m:krzk@kernel.org,m:conor@kernel.org,m:magnusdamm@gmail.com,m:prabhakarcsengg@gmail.com,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_TO(0.00)[glider.be,baylibre.com,kernel.org,redhat.com,linux-watchdog.org,roeck-us.net,gmail.com,pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	FORGED_SENDER(0.00)[prabhakarcsengg@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[prabhakarcsengg@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com,bp.renesas.com,renesas.com];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9825C6F7AE1

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

On the Renesas RZ/T2H SoC, the Watchdog Timer Control Register (WDTDCR)
resides within the System Controller (SYS) block rather than the WDT
address space itself.

Previously, this was handled by including a second register range in the
"reg" property. However, this is architecturally incorrect as the SYS
block consists of two distinct regions (0x80290000 and 0x81290000) that
contain registers for multiple peripheral blocks.

Now that the SYS driver provides a unified syscon regmap, introduce the
"renesas,sys" phandle-array property to allow the WDT driver to
access its control register via the system controller.

Mark the use of a second "reg" entry as deprecated in favor of the
new phandle-array approach for SoCs that require WDTDCR access.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
v1->v2:
- No change.
---
 .../watchdog/renesas,r9a09g057-wdt.yaml       | 29 +++++++++++++++++--
 1 file changed, 27 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/watchdog/renesas,r9a09g057-wdt.yaml b/Documentation/devicetree/bindings/watchdog/renesas,r9a09g057-wdt.yaml
index 975c5aa4d747..3fa3044cde6a 100644
--- a/Documentation/devicetree/bindings/watchdog/renesas,r9a09g057-wdt.yaml
+++ b/Documentation/devicetree/bindings/watchdog/renesas,r9a09g057-wdt.yaml
@@ -48,6 +48,17 @@ properties:
   resets:
     maxItems: 1
 
+  renesas,sys:
+    description:
+      System controller registers control the start/stop of the WDT, and halt debug.
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    items:
+      - items:
+          - description: phandle to system controller
+          - description: watchdog IP instance index
+            minimum: 0
+            maximum: 5
+
   timeout-sec: true
 
 required:
@@ -73,15 +84,29 @@ allOf:
           minItems: 2
         clock-names:
           minItems: 2
+        renesas,sys: false
     else:
       properties:
         clocks:
           maxItems: 1
         clock-names:
           maxItems: 1
-        reg:
-          minItems: 2
         resets: false
+      allOf:
+        - if:
+            required:
+              - renesas,sys
+          then:
+            properties:
+              reg:
+                maxItems: 1
+          else:
+            properties:
+              reg:
+                description: Deprecated. Use renesas,sys to pass the offset
+                             of WDTDCR register instead.
+                minItems: 2
+                deprecated: true
 
 additionalProperties: false
 
-- 
2.54.0


