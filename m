Return-Path: <devicetree+bounces-250491-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 12119CE9982
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 12:58:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3C06D301E222
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 11:58:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 024BB2EAD1C;
	Tue, 30 Dec 2025 11:58:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="HNvzadZI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E84D92EAB72
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 11:58:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767095901; cv=none; b=IsD8aX5tYFUqo8y5M4gx5nUwzfycs+jMRZC12cjfwDsIT8qfIykhKCkdOJptlGjuoJibVvuAeM4LRR/L3J7xoVRmFkYNfq+cjacN1UeeKJJmZtI+4V57PWxmldPqeQBnWpHzrQfjMt0dRikxHadCvuuYyfHgQPHHzPy0kGF1GX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767095901; c=relaxed/simple;
	bh=OUvQ7oMO2uFr9fGsfbR1wf4//xDMs1kHRoIFW2NBxuM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=gilRNFAQ7kolezkf4SRBKxS9P1NNorE3gM4nPbe7UIbGJlSGgo+nMmH2lymC4N5L1tiG9c33SmfVr7TgBDGmFKjVY8X9CB/p9AwADdoRgCmJoZVMZxKBsCfGURBd6BYnUsbbjDIzDo9mf7ZQmIpBK4zHOdKz0pc2HGv4GkgRv3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=HNvzadZI; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-47d3ffa5f33so17852245e9.2
        for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 03:58:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767095898; x=1767700698; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ih4AMzp1qzpw/x5kP2zA7D0V9ItD81etj5nbb7Pbm9o=;
        b=HNvzadZIkB50KhwdjK/B103VhqkJcJjsyoW8v1xwE3ggPCyi70hVtcCv4gOeINNDsS
         2QiyoZ3WFl5VINcpHA3m8Tmz8QVGyCEZTLB4G23X3EdAdmRh5o5ReoGlge2BVik0cWle
         RR5kDjdd5IvVgsYBVo3UhOIMdvMZIUQPFNQTFni6I8zK+g1QEUaPNPBV+TkrUAozOeAD
         Og6K/TkplnFxRONhVBoTphBpinoJf8AN+hsoYHE7hBJeFbtWIfg1w793wo5H28xZDEUL
         hqWAwtftVJ8tvLj05+UsqH/xfxEHMJHrQ38bIIbxoI3a1wNDmTo/pE8UfQIubG6hKYLa
         t91A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767095898; x=1767700698;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Ih4AMzp1qzpw/x5kP2zA7D0V9ItD81etj5nbb7Pbm9o=;
        b=S0VcvtSUX9witI8wLYsaS7HNtA08ynik0jUKyMeObFV4DGVSLlTJd/ehZXiuenad2j
         95WyJtJ9/rsaXpU3621dBHzcILhRj+PtCcxU88vYkstP+co81hQj0A+xHpqlU0iqeQGi
         vWlARzVa1y7wsAoMqMHJv12lcGhZu0Jg8H+DIBax+ZZ6vY34tCvSkSuz9lyzggxk1Hb2
         sn7VQ/OYP7k1EXdc9INj5c51l7XhGFx8yt8LZpTJeWFysllV44W06QYbj7AMqYfkontF
         THJgPsI+N++cRdch7Yxy9PBXBR5cqHmWBSs1v6OXSsIQ8bTVBvwq6xU+9vuz13IDxPph
         xD9g==
X-Forwarded-Encrypted: i=1; AJvYcCULgvmc0o31DTAt1nwBeiMWKY/ks5KIGH4NhlCZohC0FjVjf32hpYvIs8+SrXm0rN9+vY3wksOQ3q08@vger.kernel.org
X-Gm-Message-State: AOJu0YwdZqwUHDp8wEDG0INdpjSciGgj5lDwoYJBzdZJ56R9aEFKFixJ
	cOzco0cVRT1sgPAf24IdtvK3DKcpgFgbb23S/pwFNfANKRlNO37wqhNb
X-Gm-Gg: AY/fxX5U0Iaa7k3T67c416CTAPPp70Ej/j4Y/QJULrSQi8I2h4hi/eA96h3WXfKwGc7
	cEiI8Yabjn28mnMGtGPssTv9sIU9eHZsrQh73kYsfJRSukW15JJv4+nBHLfvFb1hEFNCuRNCwdI
	Foftt57/we4eiwD7OM4rTZ9Qi46v4N7gH3wE6NoZZlgiSwMJFdrUac+mRKLKFOUptDt86Hm1BfH
	upgyE2+6oY9y9v3U6X4TMjMQ0GfIMhbNkRtIi0xr4BaOhrclz3TwuH7grM6rkbzgWS5/pFK6wcX
	nUgqBQohVkUdgbe4+hAOTmArZklNJhaB+QfjISxfH2d2L+WdvMIDqMMxFNU7zVje+tZKdDZgBsE
	p1to1Uxamu/CBLZIt/G1UbUTHf3IaT7o/VGU5IlUQFfc/rtEsSM+bfhXhNEOQP38aA/IGoOp9eT
	WMCnvluQLq8WNlGcIv5CbJvcW9O74qhuC9hsTTIPekGRne9Ox4slqvPUiVWvwnQHkxm+iBeHWH3
	49l1rlnFTC4cyFHwv9lB1Gk
X-Google-Smtp-Source: AGHT+IHdDVC7lomz8TAuNBzU35/RQ1JXAvvT8J2ZMG5rpljK2zLHi7f6CAAFZSJR3isDZm6g7zv47A==
X-Received: by 2002:a05:600c:1c13:b0:477:63dc:be00 with SMTP id 5b1f17b1804b1-47d195893d6mr381036625e9.25.1767095897558;
        Tue, 30 Dec 2025 03:58:17 -0800 (PST)
Received: from iku.Home ([2a06:5906:61b:2d00:efaa:981e:926e:8957])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4324eaa64cesm68337227f8f.35.2025.12.30.03.58.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Dec 2025 03:58:16 -0800 (PST)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Marc Kleine-Budde <mkl@pengutronix.de>,
	Vincent Mailhol <mailhol@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>
Cc: linux-can@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH v2 1/4] dt-bindings: can: renesas,rcar-canfd: Specify reset-names
Date: Tue, 30 Dec 2025 11:58:11 +0000
Message-ID: <20251230115814.53536-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20251230115814.53536-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20251230115814.53536-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
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

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
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


