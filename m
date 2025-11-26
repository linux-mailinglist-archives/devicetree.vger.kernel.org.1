Return-Path: <devicetree+bounces-242482-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 22CECC8AC9C
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 17:00:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 0CBFA4EAC92
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 15:59:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1F2933C19B;
	Wed, 26 Nov 2025 15:59:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="faU8sh3L"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 373E33093C6
	for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 15:59:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764172758; cv=none; b=W2ywl3BQyLwf3NuZuUAZdbdnC/5vYfWtDfMIIYx6tBeviAStNS3v3woz0foXsz1leAwv9Q9QtwyMZupZIwmpgtLOAibm6KpzbkkcWYPC+KN71nP2FhvH+7pQQ29nLPdMsqOS27f6lcJHr2LV0kMe3+3bI/9QjZv1ahF8N9x3Gy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764172758; c=relaxed/simple;
	bh=sBUk2K+LyWxsZ50kZXqzevdzeTfhAWsRwpcwQmtD5xA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=L9PxQcKj5RiXGCaEIVpBBZreaioFrsj/tx+VXOQx+lIWQI85GRkEjHVEDeknM7jd0b+VMGtX48fNhK8pKre1qBCEEb6qbe62I1x71AkGcTJDLwhxAkL8dfhFgNMR3vIo585kB+bDaLokxh6RV5umg2IuNj3b4EBv9OQdE29bxoU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=faU8sh3L; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-42bb288c219so5848958f8f.1
        for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 07:59:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764172754; x=1764777554; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fxqp4M5X4tgd8J3YZl7+OJdfIMx5GV6b0qSx7EidnZM=;
        b=faU8sh3LrH0MVhS5dDYQWjGIDqG4B7cZa3R/tAywZnuMbLIJc57FELzUgJNaEQv75o
         sz9tTghyeAtDy4qxjOjCq0uFIBdfg5A9k5skQCtz3pUt8NKzxZY7xFbO+iyv8AdryvXS
         gwC1WIr9h56rXzjq45oPZ+4+3QgFIBON24IbSs9yxMpqtbHH5YkHYhbtql1YxkBDZwIy
         4Bn51naBafwtY/FO2+ROHgCkrOqb+2VeEplV8rIG3UUIIQ43QcCDnflde+v86eqYV5Wj
         F2TfYSZ4cGL2s4trZKBDxz4flqq4mB/V3Cu88i/JhRPftIuOfYM/3gk8cZ7bL3L5yEVU
         UuRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764172754; x=1764777554;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=fxqp4M5X4tgd8J3YZl7+OJdfIMx5GV6b0qSx7EidnZM=;
        b=Br8yq2vavHprAoUVNO9vj11ztd6jvMtXLuDFAqd2hj1DQkMwGSnu9ufA+C7k5ojn4h
         vzbX1eIYW+JPLLp/54LI9Wcq4qZU6QgQSFvxxpjZ9aPIj9XuCssDGzTVBaJoe6PncDoe
         47XyiDdbOhQ/uGMKtYXW0e+Iu0yXLCPEPqpS2xERayLaKfjvmbj90HaaSXSAq7B6qDXN
         pztY0Pv08Y4LpNKEDKcu5KgGCrTUWzn3iGmp/V8ec3NancokZLjB2IwFlKgrXaFrtaqk
         ck3CLwRXayEm2CilxLZ+Yk7mjrSww/4ClSrWJd1OngxjLtNG/czcD2XJ65ttDSX0h4nX
         ec3Q==
X-Forwarded-Encrypted: i=1; AJvYcCVmXJfgR2vLf+wdlJ5SJ3qx/dtupTrEvoKXKxDgW4BVWr10OnKllVGlHYw/IUIWUGZkQq5QdsRt4LLW@vger.kernel.org
X-Gm-Message-State: AOJu0YzsSME81XeqpqNRsdp6IA1B9hbkEWQY4z4nWFflTYU4A9E2OrLl
	IvXxbLaNu6WRJL6iGJTUf+J5DHr42EdHaAmwAiR7iPoXenkh+FxA5pYV
X-Gm-Gg: ASbGnctYtaQIupPQcx8v8IRKRiYo6mH3pYRQWlhD4UdW9sHXmWLP47xvy9l0CLacBpm
	d06wWXQz69dYYwh1WGJJSEEKCYVj/5tKUhD4KQ8pf2TSb35vb1tCbKpMQn09Ljk8LBXAKk6XbTZ
	JizpwxC3aEqbN+eK7mN98U488YDEJJKn8NKToKYx0rK1w/pr6LeCZE99BmQmaDLCKwQj73F+8hO
	QUB86fOBf+UNMdT00OFwMWIOtPzd1HBFlMwcoEgmG5dDy9ytUMZBodK+FXvm7CaQxJ/iEkpBgea
	p5cDU4oEzTjzcFmW5YkwPnUtwB1b9HIRLm7Ddc4uX0xjI86yyE+BejRMwZxF0fnieD0XiP9Pf2P
	O+MSHJpUs4XVvaAxWu6xEGybXHtWV/L8oX3Os+Eh3Fheq8pl7m+2zhz4CNYhTvUBUHGfuKsueXy
	2afTJ7gGHL9/PfgEMhXjqLpuc0jL/QX88wyalp7Jv7VzsJczk5oIEbEDDYZvDjQ0UHCvPKXq4=
X-Google-Smtp-Source: AGHT+IGsHAyvJKxk7IgZs6cADiBilbwV9eEwOI5jq20QUYAnEsvLcBpBixq8p6RYLJIqdLmoTspabg==
X-Received: by 2002:a05:6000:2410:b0:42b:396e:2817 with SMTP id ffacd0b85a97d-42cc1d199cdmr20649023f8f.40.1764172754101;
        Wed, 26 Nov 2025 07:59:14 -0800 (PST)
Received: from biju.lan (host86-162-200-138.range86-162.btcentralplus.com. [86.162.200.138])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42cbd764dbesm38197188f8f.27.2025.11.26.07.59.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Nov 2025 07:59:13 -0800 (PST)
From: Biju <biju.das.au@gmail.com>
X-Google-Original-From: Biju <biju.das.jz@bp.renesas.com>
To: Marc Kleine-Budde <mkl@pengutronix.de>,
	Vincent Mailhol <mailhol@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	linux-can@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Biju Das <biju.das.au@gmail.com>
Subject: [PATCH v4 1/2] dt-bindings: can: renesas,rcar-canfd: Document renesas,fd-only property
Date: Wed, 26 Nov 2025 15:59:06 +0000
Message-ID: <20251126155911.320563-2-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251126155911.320563-1-biju.das.jz@bp.renesas.com>
References: <20251126155911.320563-1-biju.das.jz@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Biju Das <biju.das.jz@bp.renesas.com>

The CANFD on RZ/{G2L,G3E} and R-Car Gen4 support 3 modes FD-Only mode,
Classical CAN mode and CAN-FD mode. In FD-Only mode, communication in
Classical CAN frame format is disabled. Document renesas,fd-only to handle
this mode. As these SoCs support 3 modes, update the description of
renesas,no-can-fd property and disallow it for R-Car Gen3.

Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
v3->v4:
 * Dropped the node added in example for just testing.
v2->v3:
 * Added check to disallow the usage of both fd-only and no-can-fd.
v1->v2:
 * Added conditional check to disallow fd-only mode for R-Car Gen3.
---
 .../bindings/net/can/renesas,rcar-canfd.yaml  | 38 +++++++++++++++++--
 1 file changed, 35 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/net/can/renesas,rcar-canfd.yaml b/Documentation/devicetree/bindings/net/can/renesas,rcar-canfd.yaml
index f4ac21c68427..e129bdceef84 100644
--- a/Documentation/devicetree/bindings/net/can/renesas,rcar-canfd.yaml
+++ b/Documentation/devicetree/bindings/net/can/renesas,rcar-canfd.yaml
@@ -125,9 +125,17 @@ properties:
   renesas,no-can-fd:
     $ref: /schemas/types.yaml#/definitions/flag
     description:
-      The controller can operate in either CAN FD only mode (default) or
-      Classical CAN only mode.  The mode is global to all channels.
-      Specify this property to put the controller in Classical CAN only mode.
+      The controller can operate in either CAN-FD mode (default) or FD-Only
+      mode (RZ/{G2L,G3E} and R-Car Gen4) or Classical CAN mode. Specify this
+      property to put the controller in Classical CAN mode.
+
+  renesas,fd-only:
+    $ref: /schemas/types.yaml#/definitions/flag
+    description:
+      The CANFD on RZ/{G2L,G3E} and R-Car Gen4 SoCs support 3 modes FD-Only
+      mode, Classical CAN mode and CAN-FD mode (default). In FD-Only mode,
+      communication in Classical CAN frame format is disabled. Specify this
+      property to put the controller in FD-Only mode.
 
   assigned-clocks:
     description:
@@ -267,6 +275,30 @@ allOf:
       patternProperties:
         "^channel[6-7]$": false
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - renesas,rcar-gen3-canfd
+    then:
+      properties:
+        renesas,fd-only: false
+
+  - if:
+      required:
+        - renesas,no-can-fd
+    then:
+      properties:
+        renesas,fd-only: false
+
+  - if:
+      required:
+        - renesas,fd-only
+    then:
+      properties:
+        renesas,no-can-fd: false
+
 unevaluatedProperties: false
 
 examples:
-- 
2.43.0


