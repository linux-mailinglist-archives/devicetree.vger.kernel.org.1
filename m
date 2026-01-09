Return-Path: <devicetree+bounces-253290-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 136C2D0A2C5
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 14:04:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 74EF330ACBCE
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 12:51:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 96B9C35C1B5;
	Fri,  9 Jan 2026 12:51:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Ht7w8WeB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com [209.85.221.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E6F335B149
	for <devicetree@vger.kernel.org>; Fri,  9 Jan 2026 12:51:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.67
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767963099; cv=none; b=e0Ya9IGU26TOaJtOctvWr4j/v87MM2EKAEGIi7YY7jR0Gt6E/ApY3/GyJ5XO5euwRcK/5/b02MM1yTwJVguD2h1sx98RbPdGqPQysht2ISc950wuFtLWclVpyKO+nMZWp3JrrzMYliKlZ4Yglf1sIGIrBRzszdHSF1+dmYofWdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767963099; c=relaxed/simple;
	bh=mdno2Ya3sQZeoP+RW7phTV1gRDXjpniBxUAGE8Uwflo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=XlFsM5tb+rxv0jCHme7mhy0CAWWzokE4qJMsh0k/IQFpFnr9QYx0L/YqNVEPfw2qQUba9bjq3qg+SlFcGkuI8coZDYp4pIp3hKaOfKBk78YrXqb+KfkB/WvIVKaTqAnuwZvH5hnxHAsJFy3P+JqjIHppPrUhnBt0/TDah5g1lpA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Ht7w8WeB; arc=none smtp.client-ip=209.85.221.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f67.google.com with SMTP id ffacd0b85a97d-432d2670932so1129505f8f.2
        for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 04:51:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767963094; x=1768567894; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lI8vt7JQePdkONS+d96oec76ZepkNLDIDJmPL38SyBk=;
        b=Ht7w8WeBuXDOTOQTKX1H3f9nviOAzXao1AqE4e54RIMHyvroxeQC4sHjG1R6pE09ED
         QAEIhn9us7ArVL6AzFEBs6z3RmuEiz7MzjdRBaJ1iMISYjNiTenA075Uxf/SDnt28pa8
         Z57q/i6aIwAAV5vuXq1rb1RkHBInXNOsN01Lqqnpk5U1LsnJqdXA8mnT/DkptlqKVXAo
         pQmgb7GvmdHOnBOyn5gqu47KTezCshTbbzAA6QbGmtIQCB15TGlyav/aHmQj2N88rafX
         yRKJk/8F5eM/p3cDWrp3W6BxCrkFyULXMANEpYbXLErIS7ja7HjQo96qkvosC7JUYHHL
         9zag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767963094; x=1768567894;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=lI8vt7JQePdkONS+d96oec76ZepkNLDIDJmPL38SyBk=;
        b=otDp4aUw2KleIpSjvXwe8stFAYQsy2wBz3hqLszx/rsTkYHk36RhxTXORPGW48heWd
         eXhg2odJtEwXNMrcFdLQQjDHmOgH1obrqydG7zIUsqX5l1YGtWLIe0nb9rXvBy41taeu
         LlQ++49+l9NK1RO7vstHheSAHqOWlgzWChH96diz9cH5BZOW+MBwAFDK78iAN01KQ44F
         enHA9BEc0RNSGjPFzxdpmbNl3QINyHEUXHJPd6TQqDCiLF08kv5Nz6fGHAdoBVhPY95v
         BhyzQvayMn+JHn5TKxw1dzWjTUVn9eOVysbx5cD6xe36m8SPyszE44fZHAFQiwNbe2Wd
         pu4Q==
X-Forwarded-Encrypted: i=1; AJvYcCW60eR9sVMisf7Jg+CsJQhMQ3jRydy9RJcCVHE7ctEGSDgQ6Jci+YsFPnQKytyIgtvXUHoT95XXgS6p@vger.kernel.org
X-Gm-Message-State: AOJu0YzQtbioWANQUib/tqgmfAo3/kFiDDA8L3kngF7IISA/bvoQUylZ
	XlvEXTcoB3sHOAo6IiYNmegOyotcIVBZzR8AVSTnYa0x8avnHszoJzq3
X-Gm-Gg: AY/fxX5nyTyNKkdCTdJRaeessDCy/KYfAhaW7LbwDCOmA5F+o5URfdJ/Sg9c+zAHPIi
	yT7NQBEmnQqBbB+vFYvIdQwhY10ZVZckS9I9ePQX998eUXq+9MDKupEh5V7eSkRQie7oDWIZxDx
	X8sJ2N6C1Ty+/KvCsutpF0Vq9Rx2lIaVlu6t71+QzJTKi987odbTHfzskljYqIETOousucvvR2k
	lCvrimMSfjOsMIaY4uebi6aEIJecgMIbcz9kTBBNkFJaWs6DCatN45wvxOA3xBXU7LIclt19POK
	cByesX8FMrmdfN0Fkay3o7Ml0TNs47ScfkF5Z8WzHKphedraEzb3ZV3OPfD09VqeC2z4nzEzV9q
	KdmhEX5cI3+nnxYcgWUrP2C8O3ebRt2ph72uB8l1fjW6nz0nlEjDi2n9/BcwztAGd3GvEKL5Vee
	rmkZqvRIQPAA98YpVFDsbSxtVpiq6d0ey2zhZpZaaHmH4rLD6tnRDIt//G8V01e3JbsaqT0etPy
	YPUczDm4dsugL1WediU9Ek=
X-Google-Smtp-Source: AGHT+IF/7O5Iq7m4d5dep0sK3aoe67xeYJTSa6/XcblkLgnoej6Sz9hCZGU8qUaHUfLbI7DU/KTyeg==
X-Received: by 2002:a5d:64e7:0:b0:432:86f5:18a1 with SMTP id ffacd0b85a97d-432c363510fmr9939620f8f.0.1767963094406;
        Fri, 09 Jan 2026 04:51:34 -0800 (PST)
Received: from iku.Home ([2a06:5906:61b:2d00:3d06:ce2:401e:8cb8])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-432bd0dad8bsm22837291f8f.8.2026.01.09.04.51.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Jan 2026 04:51:33 -0800 (PST)
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
Subject: [PATCH v3 3/4] dt-bindings: can: renesas,rcar-canfd: Document RZ/T2H and RZ/N2H SoCs
Date: Fri,  9 Jan 2026 12:51:27 +0000
Message-ID: <20260109125128.2474156-4-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260109125128.2474156-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20260109125128.2474156-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
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

The schema already enforces reset-names only for RZ/G2L and RZ/G3E and
disallows it for all other SoCs, so only the resets property is explicitly
marked as unsupported for RZ/T2H and RZ/N2H.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
v2->v3:
- Grouped single compatible entries into an enum.
- Updated commit message about disallowing reset-names property.
- Added Reviewed-by tag.

v1->v2:
- No changes made.
---
 .../bindings/net/can/renesas,rcar-canfd.yaml  | 29 +++++++++++++++++--
 1 file changed, 27 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/net/can/renesas,rcar-canfd.yaml b/Documentation/devicetree/bindings/net/can/renesas,rcar-canfd.yaml
index fb709cfd26d7..ceb072e0a304 100644
--- a/Documentation/devicetree/bindings/net/can/renesas,rcar-canfd.yaml
+++ b/Documentation/devicetree/bindings/net/can/renesas,rcar-canfd.yaml
@@ -42,7 +42,10 @@ properties:
               - renesas,r9a07g054-canfd    # RZ/V2L
           - const: renesas,rzg2l-canfd     # RZ/G2L family
 
-      - const: renesas,r9a09g047-canfd     # RZ/G3E
+      - items:
+          - enum:
+              - renesas,r9a09g047-canfd    # RZ/G3E
+              - renesas,r9a09g077-canfd    # RZ/T2H
 
       - items:
           - enum:
@@ -50,6 +53,10 @@ properties:
               - renesas,r9a09g057-canfd     # RZ/V2H(P)
           - const: renesas,r9a09g047-canfd
 
+      - items:
+          - const: renesas,r9a09g087-canfd  # RZ/N2H
+          - const: renesas,r9a09g077-canfd
+
   reg:
     maxItems: 1
 
@@ -179,7 +186,6 @@ required:
   - clocks
   - clock-names
   - power-domains
-  - resets
   - assigned-clocks
   - assigned-clock-rates
   - channel0
@@ -243,11 +249,30 @@ allOf:
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
+        resets: false
+    else:
+      required:
+        - resets
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
-- 
2.52.0


