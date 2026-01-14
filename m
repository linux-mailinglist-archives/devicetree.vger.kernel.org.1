Return-Path: <devicetree+bounces-255128-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id E1FC7D1FE97
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 16:47:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A76CD30524D5
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 15:45:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 155183A0E85;
	Wed, 14 Jan 2026 15:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JnyuGnhc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15E683A0B0A
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 15:45:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768405532; cv=none; b=MklXjQqsx7TMa3TDULRBGsZAcJ5S9aW2ks5vpwwKfpnVGI52D6UdJ4Iq1PzJkDLdJYLDG5NK8KXHA39muVZZF7/MrZn//M3EKBFJqBUK7hOhQwrbDeiwQW7qa2618o0y3bwlCdpmCQqgJPCAw5SSgleh5bGnp0HCKgLI0jf7e8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768405532; c=relaxed/simple;
	bh=qSCl/eFcYORT2xOr9C9aVf5NIUqIXDn3ZLWt6rVQW6Y=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=V5JioA9US7jnKsSitxcIBSfGdG7l/TdW1RBfnqzXmKma6SvAoSTzqpShhYvLxJqE8xxpX0IPWkzFHrowc+jNppR8ZHJxHHohCbkmK0sEuYTLKXjMvEiyjfdD32FF/OL8Aj2sXmQWCqUCD73vq8gh/DUrSqKfMtNuxdYjKLVFpyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=JnyuGnhc; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-47d1d8a49f5so56210735e9.3
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 07:45:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768405529; x=1769010329; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=omQbD76IKfBCNHbl78X1AUCJmtxXa2tDPyRYxCm9lbY=;
        b=JnyuGnhcSed2xRu1S3JeNU1nRgEMKTPvZDoUo2nV8qO6U9dioZD6IiBg9MB4o6NteT
         ekhZIhyeDyr7neBgPE+xnXH7rVZw8AO7JO2dUYFeHhn63VqM+MAGIa+z/0LXI3VWc+C+
         3cO0Eo705kyFrhaWdMfmLJsB/p6TZiHSn7QXNZGDv71p6nU8734TjG4I4CgnKP5DiYwM
         6UcsXaNyU+IMXeijlqW+rKPMapdfdyjgE2sVuYp0KXzPl8avHD+WxKxUR0QPZN5QL0y7
         XcmjHWQF9gtWqXEvW1lljcarvVZSh3QWfJcST+jXVe5UzU3E9ZxNioX+RpyrhYutKdfL
         u5Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768405529; x=1769010329;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=omQbD76IKfBCNHbl78X1AUCJmtxXa2tDPyRYxCm9lbY=;
        b=uCczekJDevna5AaAMilRrYDCR5fOkfV3hhh4gc8dnOAc1FZT/Il1nk7GkMwhlSPdGB
         4WWo1C5n3SlabWBfCaLxGdwLleUmiIGFFjvPZJM1PshXqsupD8Thqa4uKKIaJEqYiwns
         vpaVS/aVcklqdO/+HjBIwExdKs+l4pTAvbuat7/PFg7vAVuk9LossHcD95jF1TD/qZ3z
         SD16rZRcoODSUfim8J2pDAAqIrqfgBaehgo/wqnFtPZQwzsQL9k1+w/Oa+7Css08DHzJ
         9tDuaiLqq++CSkYbTdqUFH+t4kUa7g9rGG/5ey7z/iHQrsjjW/5zLAeHi3SF1gEsXBnn
         p6vw==
X-Forwarded-Encrypted: i=1; AJvYcCXAJrNqWPmVvuOtS+AWI6tc07C9IqdNmydppKQ7FPFNjryjDA7rtBAOQvFG2LAf6AXXz/MbkgHSwZjd@vger.kernel.org
X-Gm-Message-State: AOJu0YzNQZ1bc+5vLOD6/VNitcCqaP1zSlJ7wfBMew/t9CuIFrPrdz1f
	jhrzn6ixbl9OZ7fFHIJpyn4K/Z0TnpcYCVK5LCCYv3mskdAaZFGZweom
X-Gm-Gg: AY/fxX6jiFv4vb7mhaZFOuZRKnNHA7hSD86XlyP/PmoLDSVkEIBa191TX6psXBoY3DG
	+AlKthNPbewqYix/CjKIwhx/acYdsZn5+BVIo8vHzppCXAvnGaRIU2uNX6Nxy8qzd2Ua2Byhq90
	5KAync3Xr6qPN/YpeM+497lNGaSF5Tnq89gineZG2YiCbPAlmZBrd/MAvERZhCovvTTSvaF17xi
	Vbme5PPgWSykmSExsfywCBHI/PdI4yk2u7ICZwS5ojRJN7/f6sqskxwzE0onQ1vzIEkBY5l4Q0u
	sgy9MNqud8EnsVnv/QGPSr+/54rDeJssIsYLA/vhTFWe3m312wPEt7fY1ah6NOh7Yf6RRz6xJ1R
	sbFIyee8/2UP22n4aY5d5ufn/nFCJl8CAGCwOQmqBzv7Gjw1RH/RXNE4RWgfSgXFagy0aPIzolp
	kBEw9dm30Djk4eg9qRTECaaVdYZW2nbu1oYHTtRa/noI6j8PjowsjrekFkJSXuRSb+t2TscAQ29
	EATw7cnikb6DZ2OlBcENKO5
X-Received: by 2002:a05:600c:3586:b0:470:fe3c:a3b7 with SMTP id 5b1f17b1804b1-47ee32e0d5amr39228465e9.5.1768405529026;
        Wed, 14 Jan 2026 07:45:29 -0800 (PST)
Received: from iku.Home ([2a06:5906:61b:2d00:7f20:df14:ac2b:3d74])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47ee544387fsm33867105e9.0.2026.01.14.07.45.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 07:45:28 -0800 (PST)
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
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH v4 1/4] dt-bindings: can: renesas,rcar-canfd: Specify reset-names
Date: Wed, 14 Jan 2026 15:45:22 +0000
Message-ID: <20260114154525.3169992-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
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

Specify the expected reset-names for the Renesas CAN-FD controller on
RZ/G2L and RZ/G3E SoCs.

The reset names rstp_n and rstc_n are defined in the SoC hardware manual
and are already used by the driver since commit 76e9353a80e9 ("can:
rcar_canfd: Add support for RZ/G2L family"). The reset-names property
existed previously but was dropped by commit 466c8ef7b66b ("dt-bindings:
can: renesas,rcar-canfd: Simplify the conditional schema").

Restore and constrain reset-names in the binding so DT schema checks
match the actual hardware requirements and driver expectations.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
v3->v4:
- Added Reviewed-by tag.

v2->v3:
- Updated commit message to clarify that reset-names existed previously
  but was dropped.

v1->v2:
- Moved reset-names to top-level properties.
---
 .../bindings/net/can/renesas,rcar-canfd.yaml  | 33 +++++++++++--------
 1 file changed, 19 insertions(+), 14 deletions(-)

diff --git a/Documentation/devicetree/bindings/net/can/renesas,rcar-canfd.yaml b/Documentation/devicetree/bindings/net/can/renesas,rcar-canfd.yaml
index e129bdceef84..9bfd4f44e4d4 100644
--- a/Documentation/devicetree/bindings/net/can/renesas,rcar-canfd.yaml
+++ b/Documentation/devicetree/bindings/net/can/renesas,rcar-canfd.yaml
@@ -122,6 +122,11 @@ properties:
 
   resets: true
 
+  reset-names:
+    items:
+      - const: rstp_n
+      - const: rstc_n
+
   renesas,no-can-fd:
     $ref: /schemas/types.yaml#/definitions/flag
     description:
@@ -195,13 +200,6 @@ allOf:
           minItems: 2
           maxItems: 2
 
-        reset-names:
-          minItems: 2
-          maxItems: 2
-
-      required:
-        - reset-names
-
   - if:
       properties:
         compatible:
@@ -239,13 +237,6 @@ allOf:
           minItems: 2
           maxItems: 2
 
-        reset-names:
-          minItems: 2
-          maxItems: 2
-
-      required:
-        - reset-names
-
   - if:
       properties:
         compatible:
@@ -299,6 +290,20 @@ allOf:
       properties:
         renesas,no-can-fd: false
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - renesas,r9a09g047-canfd
+              - renesas,rzg2l-canfd
+    then:
+      required:
+        - reset-names
+    else:
+      properties:
+        reset-names: false
+
 unevaluatedProperties: false
 
 examples:
-- 
2.52.0


