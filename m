Return-Path: <devicetree+bounces-320460-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id n+2qEULUSGpFuQAAu9opvQ
	(envelope-from <devicetree+bounces-320460-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 04 Jul 2026 11:37:06 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CFF7B7074A0
	for <lists+devicetree@lfdr.de>; Sat, 04 Jul 2026 11:37:05 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=lnQY0cfo;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320460-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-320460-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 951EB303AF05
	for <lists+devicetree@lfdr.de>; Sat,  4 Jul 2026 09:34:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C88D3A8FF6;
	Sat,  4 Jul 2026 09:34:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 486D43A59A3
	for <devicetree@vger.kernel.org>; Sat,  4 Jul 2026 09:34:41 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783157683; cv=none; b=P5+3vAHG8pTeHrhi80YYxdM3hHKecnFebHj66f1t6VIs9EZVJu+kjaeXuESbUDCzgKlg5Th3YVGoqryZ/J8Pxu47Q21bviK0S4aFHlqeC2X7yvdZXS4tT0WcWgaArq92YI9BU1QmPkG08Usqf1G7DSXodaKO5w1vSXNx69OpqIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783157683; c=relaxed/simple;
	bh=BbYLJhEgdSoWZo4IzbOnYd4Pb5An1UxlxVaJpXJ+EQw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=YZnfBUq2oaj3Lb9SpoPSem72vG/f03woxpDN344SWohsoIZPqEsWifmsqCK9HIvmEzEXDcexnEkSDwv3UtqBE0Vj06zGS+qdodlhe1ha/r+sXTrW6iHe/bmUKvs4WA86IgQ+mOPuNncdXPyKl9PuvXw4F0gTOVBLNUdOle6oBH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lnQY0cfo; arc=none smtp.client-ip=209.85.128.52
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-493c2c0b9a8so11496525e9.1
        for <devicetree@vger.kernel.org>; Sat, 04 Jul 2026 02:34:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783157680; x=1783762480; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=q9vf76BqIuQO+oLK9NNkHBXuVK+BkmRkVD8Sg2pJCJU=;
        b=lnQY0cfoq832O6rCLuYXLvIQxmp2dw0ewrB6hGbGoWBQ5vucAViErqwssm+vevGLkT
         KZXyTuqLQ0wAEXhVMbpfPh6aNxUy8+kUo08g0R0TgaNvc1jWSJakuBaQ0airSDxW3HAA
         yi5dYMS6T1wtQyEwP+UWEi7hSXphSmFxMrPwX574orZObT7FPmic91GzE2SUWk4R4LH8
         NENHxXlDnh4tlXcfOmTZ3waWkozqPMmhucV+Kz1MARdAs3vMuqFnW2giXXp4Yc7GZUtZ
         17awrmn+GBE81NEq4P0jLnp4rS/TjNZCcwOSv2um/vJdeZbco3w1u58vCZQITx20UxIZ
         yW3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783157680; x=1783762480;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=q9vf76BqIuQO+oLK9NNkHBXuVK+BkmRkVD8Sg2pJCJU=;
        b=EqgtnnOBd951cjWX/eDFUYeZZ06FuV8UsDx0jh+YIfOHQ8XFP78BEgu/RjENuJ7IgZ
         qvZ/3Z7CCKgkMO1Qo5E+yhEFMzFiimuyXG4+ZmjxK8Lg3OusXvQy23jxhaAcHCUYNZWw
         iBuqNApjEz5rB+YaOKStUzmg3xSPdLonHRIRLUFrBADUnNxXlV6dMOsU+v0FyAmkz6Uz
         B3XpZGqtB315CpF+cuUvdTrZKCyzRtFH2LN9L2PGCssp8H//6tOsUweemi3r6Pqw7xI0
         lkM+2KDQSpK5brceKa03LekwV8Tb4EQETP5RoHmT8Il9J6pPzrZUHtezmXr1QmYAhKKo
         FcBQ==
X-Forwarded-Encrypted: i=1; AFNElJ/arfOzekPro6XhFsvpsZ1qqF5p+uJZcH5tPWapRUJNNk+OR7vB5MFwo2ysu36XXnRpHisUnEniTc2P@vger.kernel.org
X-Gm-Message-State: AOJu0YzrQaT4wLkFskxkpjnWXsw4jHp0Q474Z3RGXDRDNFfBFMwkLBYE
	T3P+4sydApUu56sHfQ/oWmJHIy169OMuA4vIRvL9j0id1BGdS1PbsbcF
X-Gm-Gg: AfdE7ckMIiCgyWyyV4aUe+gBdvIO1DVnKitcWe40BU/jotENx5BwwU7C1bNc0dW3C1R
	ART915y6UiJhPM0ulRTpQveZw4kBJk/NDJAear0nxbksg6qlxPen5LuyKA5mAwhSogMhpYMpgM9
	8ZlbMfRLBP9pXhV88D5lPOUvDbAX62pongszkIL5D0OsFezXNcmMx8xaAiq4MwK+NbuF1SLy4+5
	DzvDmWgomKtoeEi/k+m0SnSc4V9hVMeIBsHpOmbCnv2EKXVnFXTwLm6y+sd2XC65h47KcSRshij
	HjhphJwPK7+3EdBQY3gMEzCAZJIz19iQgHhycxNY5YVrg9hJSSYtEY5Mp8Q04ZMCGEReeD0zWzz
	GTE9Pwfn9nKNfLq3hn45Ex7inByYQdxotf4PfVdfvsTwivMwpPXgEy18ZlAmuuL0A7Z1DVVnquy
	kn04c+N3nI5dV0vRjhzZQC
X-Received: by 2002:a05:600c:3515:b0:493:c42e:5be0 with SMTP id 5b1f17b1804b1-493d11894f7mr32349275e9.0.1783157679621;
        Sat, 04 Jul 2026 02:34:39 -0700 (PDT)
Received: from biju.lan ([2a00:23c4:a702:d301:8c5b:5b11:f6a5:9bc9])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-493cce040b4sm153180235e9.10.2026.07.04.02.34.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 04 Jul 2026 02:34:39 -0700 (PDT)
From: Biju <biju.das.au@gmail.com>
X-Google-Original-From: Biju <biju.das.jz@bp.renesas.com>
To: Biju Das <biju.das.jz@bp.renesas.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>
Cc: Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
	dri-devel@lists.freedesktop.org,
	linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Biju Das <biju.das.au@gmail.com>
Subject: [PATCH 07/16] dt-bindings: display: renesas,rzg2l-du: Document RZ/G3L SoC
Date: Sat,  4 Jul 2026 10:34:17 +0100
Message-ID: <20260704093433.273672-8-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260704093433.273672-1-biju.das.jz@bp.renesas.com>
References: <20260704093433.273672-1-biju.das.jz@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_TO(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-320460-lists,devicetree=lfdr.de];
	FORGED_SENDER(0.00)[bijudasau@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:biju.das.jz@bp.renesas.com,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:geert+renesas@glider.be,m:magnus.damm@gmail.com,m:laurent.pinchart+renesas@ideasonboard.com,m:dri-devel@lists.freedesktop.org,m:linux-renesas-soc@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:prabhakar.mahadev-lad.rj@bp.renesas.com,m:biju.das.au@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,m:geert@glider.be,m:magnusdamm@gmail.com,m:laurent.pinchart@ideasonboard.com,m:bijudasau@gmail.com,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[bp.renesas.com,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,glider.be];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bijudasau@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[ideasonboard.com,lists.freedesktop.org,vger.kernel.org,bp.renesas.com,gmail.com];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[renesas.com:email,bp.renesas.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CFF7B7074A0

From: Biju Das <biju.das.jz@bp.renesas.com>

The DU block on the RZ/G3L SoC is identical to the one found on the RZ/G2L
SoC. However, it supports the DSI, DPI, and LVDS interfaces, while the
RZ/G2L supports only the DSI and DPI interfaces.

Due to this difference, a SoC-specific compatible string,
'renesas,r9a08g046-du', is added for the RZ/G3L SoC.

Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
 .../bindings/display/renesas,rzg2l-du.yaml    | 27 +++++++++++++++++--
 1 file changed, 25 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/renesas,rzg2l-du.yaml b/Documentation/devicetree/bindings/display/renesas,rzg2l-du.yaml
index 7c84a9ecc7a7..65368649fe77 100644
--- a/Documentation/devicetree/bindings/display/renesas,rzg2l-du.yaml
+++ b/Documentation/devicetree/bindings/display/renesas,rzg2l-du.yaml
@@ -20,6 +20,7 @@ properties:
       - enum:
           - renesas,r9a07g043u-du # RZ/G2UL
           - renesas,r9a07g044-du # RZ/G2{L,LC}
+          - renesas,r9a08g046-du # RZ/G3L
           - renesas,r9a09g057-du # RZ/V2H(P)
           - renesas,r9a09g077-du # RZ/T2H
       - items:
@@ -65,7 +66,7 @@ properties:
       model-dependent. Each port shall have a single endpoint.
 
     patternProperties:
-      "^port@[0-1]$":
+      "^port@[0-2]$":
         $ref: /schemas/graph.yaml#/properties/port
         unevaluatedProperties: false
 
@@ -88,7 +89,6 @@ required:
   - clocks
   - clock-names
   - power-domains
-  - ports
   - renesas,vsps
 
 additionalProperties: false
@@ -108,6 +108,7 @@ allOf:
             port@0:
               description: DPI
             port@1: false
+            port@2: false
 
           required:
             - port@0
@@ -124,10 +125,31 @@ allOf:
               description: DSI
             port@1:
               description: DPI
+            port@2: false
 
           required:
             - port@0
             - port@1
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: renesas,r9a08g046-du
+    then:
+      properties:
+        port:
+          properties:
+            endpoint@0:
+              description: DSI
+            endpoint@1:
+              description: DPI
+            endpoint@2:
+              description: LVDS
+
+          required:
+            - port@0
+            - port@1
+            - port@2
   - if:
       properties:
         compatible:
@@ -140,6 +162,7 @@ allOf:
             port@0:
               description: DSI
             port@1: false
+            port@2: false
 
           required:
             - port@0
-- 
2.43.0


