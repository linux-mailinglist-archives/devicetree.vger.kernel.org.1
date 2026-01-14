Return-Path: <devicetree+bounces-255130-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F0CCD1FEA9
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 16:47:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id F381130617C1
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 15:45:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EDFE23A0EA8;
	Wed, 14 Jan 2026 15:45:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DJRSYN38"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com [209.85.128.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D41F23A0B0A
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 15:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768405535; cv=none; b=aPpUBcttuVf9qGdm0Y0VmbsF5q0s0mi6p+SXDcSNiB13DzJ7O4V0uq3jvY22HbfljwyFZuVReZ1bJrIOJT0osY0KuS2Rir9fVK5AQJErFEBbdd6h32kxtKFHjeA1b21vFDau61Ho7En/wSZJUMHLc4046TG7k/uHcbzk/A9LNok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768405535; c=relaxed/simple;
	bh=NcSIh13nkfl2o/fHyJPuPnsmYgeObjMEWYBabqP7Z/s=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=qmQHuBSEqtxzObsRFtX6++JcMoOdUUuT179rOycoCNJC9vigblcZ2fiWfRAbgWoVlOYohaDFe2nvgaPj/MXzwxmXhQUG/1t8ToYrLlZaBXtBxHAAWym+72rBoOsYfKOG+dwlNmr3rHDo4HX7GdSydRRr00qSp02Mzer99OyDNiM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DJRSYN38; arc=none smtp.client-ip=209.85.128.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f65.google.com with SMTP id 5b1f17b1804b1-47795f6f5c0so55833825e9.1
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 07:45:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768405531; x=1769010331; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JGNBX9HKq6etY9Yk1wwPNkxG5bUhI9J7ur5YibrY+sU=;
        b=DJRSYN38Z0H0u0K5L3fUbxwSxOLlJjMFJBcgRsQFOxZf2TLgBWgM4m86vkR+W+Jd9/
         YVgFiwg1VxbUWtSdGEuwktI8CUU+pKwwNGtyeMXvL1jc+ffodlrA4vcHqFKPEkp+xdZ0
         PzW348DAGzLpi8Mrc3nWLQjgtRGHhOAnp3GwgZWljPZYRQjvDEIDA25l3ilwbgJGzh8b
         uqy4Vr7dca0DSKoi77GeODxkSyMBU4yHFZhhdmnmToAp3YjsivuEv4a6uYPajZjGLzE4
         rprKPVE3FCguk9aFNsFU9KLtcrdtls+OhKl8SeDmx6F/eBDxVEroN65V1oUhhFbw5JIS
         zQvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768405531; x=1769010331;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=JGNBX9HKq6etY9Yk1wwPNkxG5bUhI9J7ur5YibrY+sU=;
        b=M1v4MQnFEox+P3wXmKa9d3CCXFdlsnw9IJwl2MkprxYKMVCrIHlDgabW4hVG1WdYuj
         b4Phx0tGJzu+oBflE3Dx5+k5QK39CrxG0vuvNKu2hHpoz9OLpezCSZ/yiSMMA64DIPuQ
         FcfEuWeNY/El88nvlV1wPFs7RCqJTRBXwI6j2Mu0GSNKyB+9cNIg6YZkP3qpK8l1uSM1
         FoaMHXcft6olFg65FBPCqn2yOqWgYjZlH+mMRFB3fXditMG5N6IRq/CoDUNkl8SKyjpc
         oZHL4xirFGDXLEpQVW4tTlJ/hhThB6Fd9qEa9l99lTtPKiqLHV057WmhlojM3SSiiAR8
         2t2w==
X-Forwarded-Encrypted: i=1; AJvYcCWd9Kc4HUnoa/W++Riv/lnGbDx4zFod/7NT3KTUEjXt3u1MWDwK7HPuksiaTN4DO3ptgVyqRVR7lq9P@vger.kernel.org
X-Gm-Message-State: AOJu0YyWqxjKOza1ceOfzg4x25x/pDgdZTDSyZvS3oSZNs70MNvar1ul
	wqyyu9xp/9IPeymD8gksR33iE8OI29VenFLsicfmJexy35t1rnDUywoN
X-Gm-Gg: AY/fxX446xqFkPkPZ8if1ooVirvoDNJU4s5gaewQaid4davgrqxpMiSVmI+GFfRqx1F
	b8KuYNVbQNwD/DZN/6B3fphavvNy2/TPuSl2S5JdKcSflNE1GZdH07gje9WdRJNCUgbiaxNagU3
	FRwhOoEtCEk5NsH1yh98cqOVXE2QjvzNUAqtmaT7SkvrVj9xMyr0iIwKOJZ4bHYhLxlC8C7rHcF
	r/lbyZOq4+16MfgBUW8eMv+K6mc6G+bJneBkdZgMogKA97dUT2AvDElpolKbrBiq6V0CKWheipj
	aoSAtE2WLf2vON0PcVwMJgXwPBNtQbi08Dd3Lun9cCJ5TB3rK9nwbuUfSObK4L0oP5B5ko9oElm
	CQxbQ+Zh1ZSJj5GeTgYsgkkUJgcA66Uu58D6ySbgnaTFDCPxzGDT1gYnweRVpBybWa6vOkUuolp
	p1cEHQl8DCNUJ0W85fZihgO2FW8J/jnSxGtKbOr2mOu0BkkCh91Zot81OgFzQZm+PgMWfbvY/6m
	5XCT267anvHZx2waq4jWdbN
X-Received: by 2002:a05:600c:5490:b0:479:3876:22a8 with SMTP id 5b1f17b1804b1-47ee3356d5dmr45061685e9.16.1768405531444;
        Wed, 14 Jan 2026 07:45:31 -0800 (PST)
Received: from iku.Home ([2a06:5906:61b:2d00:7f20:df14:ac2b:3d74])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47ee544387fsm33867105e9.0.2026.01.14.07.45.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 07:45:30 -0800 (PST)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Marc Kleine-Budde <mkl@pengutronix.de>,
	Vincent Mailhol <mailhol@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	linux-can@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: linux-renesas-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH v4 3/4] dt-bindings: can: renesas,rcar-canfd: Document RZ/T2H and RZ/N2H SoCs
Date: Wed, 14 Jan 2026 15:45:24 +0000
Message-ID: <20260114154525.3169992-4-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260114154525.3169992-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20260114154525.3169992-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Document the CAN-FD controller used on the RZ/T2H and RZ/N2H SoCs. The
CAN-FD IP is largely compatible with the R-Car Gen4 block, but differs
in that AFLPN and CFTML are different, there is no reset line for the IP,
and it only supports two channels.

Sync the resets and reset-names schema handling with other CAN-FD SoCs so
DT validation stays consistent and maintainable.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
v3->v4:
- Dropped Reviewed-by from Geert due to below changes.
- Updated commit message.
- Moved single compatible entries into an enum and to below oneOf.
- Synced the resets/reset-names handling with other similar SoCs.

v2->v3:
- Grouped single compatible entries into an enum.
- Updated commit message about disallowing reset-names property.
- Added Reviewed-by tag.

v1->v2:
- No changes made.
---
 .../bindings/net/can/renesas,rcar-canfd.yaml  | 48 +++++++++++++++++--
 1 file changed, 44 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/net/can/renesas,rcar-canfd.yaml b/Documentation/devicetree/bindings/net/can/renesas,rcar-canfd.yaml
index fb709cfd26d7..b9d9dd7a7967 100644
--- a/Documentation/devicetree/bindings/net/can/renesas,rcar-canfd.yaml
+++ b/Documentation/devicetree/bindings/net/can/renesas,rcar-canfd.yaml
@@ -12,6 +12,10 @@ maintainers:
 properties:
   compatible:
     oneOf:
+      - enum:
+          - renesas,r9a09g047-canfd        # RZ/G3E
+          - renesas,r9a09g077-canfd        # RZ/T2H
+
       - items:
           - enum:
               - renesas,r8a774a1-canfd     # RZ/G2M
@@ -42,14 +46,16 @@ properties:
               - renesas,r9a07g054-canfd    # RZ/V2L
           - const: renesas,rzg2l-canfd     # RZ/G2L family
 
-      - const: renesas,r9a09g047-canfd     # RZ/G3E
-
       - items:
           - enum:
               - renesas,r9a09g056-canfd     # RZ/V2N
               - renesas,r9a09g057-canfd     # RZ/V2H(P)
           - const: renesas,r9a09g047-canfd
 
+      - items:
+          - const: renesas,r9a09g087-canfd  # RZ/N2H
+          - const: renesas,r9a09g077-canfd
+
   reg:
     maxItems: 1
 
@@ -179,7 +185,6 @@ required:
   - clocks
   - clock-names
   - power-domains
-  - resets
   - assigned-clocks
   - assigned-clock-rates
   - channel0
@@ -243,11 +248,25 @@ allOf:
           minItems: 2
           maxItems: 2
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: renesas,r9a09g077-canfd
+    then:
+      properties:
+        interrupts:
+          maxItems: 8
+
+        interrupt-names:
+          maxItems: 8
+
   - if:
       properties:
         compatible:
           contains:
             enum:
+              - renesas,r9a09g077-canfd
               - renesas,rcar-gen3-canfd
               - renesas,rzg2l-canfd
     then:
@@ -296,6 +315,16 @@ allOf:
       properties:
         renesas,no-can-fd: false
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: renesas,r9a09g077-canfd
+    then:
+      properties:
+        resets: false
+        reset-names: false
+
   - if:
       properties:
         compatible:
@@ -305,8 +334,19 @@ allOf:
               - renesas,rzg2l-canfd
     then:
       required:
+        - resets
         - reset-names
-    else:
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - renesas,rcar-gen3-canfd
+              - renesas,rcar-gen4-canfd
+    then:
+      required:
+        - resets
       properties:
         reset-names: false
 
-- 
2.52.0


