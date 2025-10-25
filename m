Return-Path: <devicetree+bounces-231017-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A60C2C08ADE
	for <lists+devicetree@lfdr.de>; Sat, 25 Oct 2025 06:32:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B9C513AD3C9
	for <lists+devicetree@lfdr.de>; Sat, 25 Oct 2025 04:32:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D7F1E267B9B;
	Sat, 25 Oct 2025 04:32:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="B9Qcok5R"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA3243BB4A
	for <devicetree@vger.kernel.org>; Sat, 25 Oct 2025 04:32:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761366734; cv=none; b=inj9WPzIc3BDWV4HBi3Temk2hbVPXu4eIFexO+9/Xh2VQ/ElsQQXMYqO37pdPeD/7TuXUgCL8NFtrH762TIlwKPdw+fPBknCxNBPhO5IFhj8gmyAzm9NG51PlznDF0P19F2DmdjxYJ9IgF+feySc9dqod9L+6yWJFpHi/tgbuDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761366734; c=relaxed/simple;
	bh=LxsKOmVaDzOSy8bwwU0rWY43UlPO4MkzptnRxF9FP4I=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=lib7qXIAlNv6Jk9Smd2rzlQHWfeXmyenTTQaKiONkp2wI2/xUy0rXvUZiSRBpFfrDkvPmd4NtGJVAPXFNbcW2xYcdQPo2KYoc9fKOeVnpSmGZwzMXyC0RRQLICqQLWGH1sm7bNNijn6VVk18ALy7jrZxKiJGvNhTRMVeexFUhAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=B9Qcok5R; arc=none smtp.client-ip=209.85.208.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-378d246f0f1so29908071fa.3
        for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 21:32:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761366731; x=1761971531; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CuZHP6YFsCwwA4TkyjhYi+XmEZKmSYURob9jZc/v+s0=;
        b=B9Qcok5RoenL6fqPlY6e10yRncd50H3kwiY26o1qE/pRn6c3Ux3k+uEO7MSFd7/CaA
         NBcnmRvhUXZxjl5UbiEiKC18ag4KrYRvH4/A1HnNIkuufh2ElkBerbg7+A5tNjSHRklG
         PDWjquaC9tXHMJmIGiZWIOIa9pgAz2ZfFXdi8wqCl+ymzUdzMtfiGOxGGWUE/ez21CNN
         QOyIyFY13Kk/ehCS2DBw6txxg3R4VuC3RKf/RbpLigqk7mn76XVnLL+kK5ExLmc6ftMH
         8aGzA3NqEUCAVaWaZnxWNRdaVi6kxo0wk2LMD1gMzc/CbQQAGBQweBzckNKNjJJ+q6ad
         Vsew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761366731; x=1761971531;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CuZHP6YFsCwwA4TkyjhYi+XmEZKmSYURob9jZc/v+s0=;
        b=AXLdYJoBuO9kDKUG6ZAP3vcARH+CbzZNKGVk5/0a/QGPuyGZ3DVCXwc7UmCkwLX9+I
         IumjhrzaXC1SIqi1ezywTxbzPP98R87YE4EN315xsw5iNEiEMs7Igy5pBtlTna6YSgDW
         DqIXDvyfHYpUP7w6nlg+E02mg9JxzwoQhfYw9EB+AEZSqqkHchmPMY94WTTJ/AKzEhao
         gYKzVkymZEBGWY9mtRjhgBSmz2mppaVY012+PQirL6gXY5ofcDTEtqJvPxKvkoO+alRa
         OHhkcU4U512njWsjgaDfWXNke4XUgx38FoVU6QkMfxrslQjKxQD/xi2r25pZTBgy6fZJ
         ZxHw==
X-Forwarded-Encrypted: i=1; AJvYcCVlLl6sA0wj1xNn8/SY5upkkVC8q9yzzXOy4xJdG4fT/mtOw0WhQ/9EeWFFY4azUu/lGeHSuu6CHXW9@vger.kernel.org
X-Gm-Message-State: AOJu0Yzmm1vJ/v+xBdRdggnUm/P0z8272zjKYYYIgrFHdfwYMCC6puJI
	7kZUZEWaAs0n8g12bEZCLR4EC7FWBX6okhd03F95xtLKHKZRj5Fv2M2u
X-Gm-Gg: ASbGncudQoT8ynZyXwSAOys9x/mTwTB0cmVxzP6+lvUlC81Fr4HRYqByMiJaCiDmoAJ
	w0m1erYwY1n+uBtr50o0cAKqgnIHQnFWpmuczOrGK6TyzRFo/DLMav9mvsIgYUWW+Qzl3hTSn6k
	OC8xJVl+Jsauiq0MICGmCoSPLlW3oAzv1LW1fWyLtq+o8f+elTn/CWJPg1uL50LOqwGJfnbLkQw
	Rp+Eq89hiNtcOQLK5TMVBfGExexW1z2hQ0/ct2z0viFwZ73rtQx8PcVdas/BT29MCaqxdQnyt9Q
	9tnKIrdknYoY6AReV6t3DZvtCB8j9lo+/a7ZDlR3g1Cvz2T2vS7rxnN8F5bOFtIsrW7X1U4VLNt
	lkSXiJOeZZbwRwzePOZ0nsskvgDCne9C7OgNoKaWWpFqyh1njMCCLdXpZj9hPldMjSuZefeIuBp
	i9
X-Google-Smtp-Source: AGHT+IHidqK20asSnkSoaYA0Ua+IEXaUMgtNo1d+OXf+4JbTCbl0aR8F8Cd5djjk9glXI6+3c84fFA==
X-Received: by 2002:a2e:a916:0:b0:376:4430:b545 with SMTP id 38308e7fff4ca-378e4648542mr13761041fa.49.1761366730866;
        Fri, 24 Oct 2025 21:32:10 -0700 (PDT)
Received: from junAIR ([176.106.241.81])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-378ee0ca7a0sm3409241fa.33.2025.10.24.21.31.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Oct 2025 21:32:10 -0700 (PDT)
From: iuncuim <iuncuim@gmail.com>
To: Vasily Khoruzhick <anarsoul@gmail.com>,
	Yangtao Li <tiny.windzz@gmail.com>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Zhang Rui <rui.zhang@intel.com>,
	Lukasz Luba <lukasz.luba@arm.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Philipp Zabel <p.zabel@pengutronix.de>
Cc: Andre Przywara <andre.przywara@arm.com>,
	linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 1/6] dt-bindings: thermal: sun8i: Add A523 THS0/1 controllers
Date: Sat, 25 Oct 2025 12:31:24 +0800
Message-ID: <20251025043129.160454-2-iuncuim@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251025043129.160454-1-iuncuim@gmail.com>
References: <20251025043129.160454-1-iuncuim@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Mikhail Kalashnikov <iuncuim@gmail.com>

Add a binding for D1/T113s thermal sensor controller. Add dt-bindings
description of the thermal sensors in the A523 processor.
The controllers require activation of the additional frequency of the
associated gpadc controller, so a new clock property has been added.

The calibration data is split into two cells that are in different areas
of nvmem. Both controllers require access to both memory cell, so a new
property nvmem-cells has been added. To maintain backward compatibility,
the name of the old cell remains the same and the new nvmem-cell-names is
called calibration-second-part

Signed-off-by: Mikhail Kalashnikov <iuncuim@gmail.com>
---
 .../thermal/allwinner,sun8i-a83t-ths.yaml     | 56 ++++++++++++++++++-
 1 file changed, 53 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/thermal/allwinner,sun8i-a83t-ths.yaml b/Documentation/devicetree/bindings/thermal/allwinner,sun8i-a83t-ths.yaml
index 3e61689f6..b2f750ef2 100644
--- a/Documentation/devicetree/bindings/thermal/allwinner,sun8i-a83t-ths.yaml
+++ b/Documentation/devicetree/bindings/thermal/allwinner,sun8i-a83t-ths.yaml
@@ -24,18 +24,23 @@ properties:
       - allwinner,sun50i-h5-ths
       - allwinner,sun50i-h6-ths
       - allwinner,sun50i-h616-ths
+      - allwinner,sun55i-a523-ths0
+      - allwinner,sun55i-a523-ths1
 
   clocks:
     minItems: 1
     items:
       - description: Bus Clock
       - description: Module Clock
+      - description: GPADC Clock
 
   clock-names:
     minItems: 1
+    maxItems: 2
     items:
       - const: bus
       - const: mod
+      - const: gpadc
 
   reg:
     maxItems: 1
@@ -47,11 +52,16 @@ properties:
     maxItems: 1
 
   nvmem-cells:
-    maxItems: 1
-    description: Calibration data for thermal sensors
+    minItems: 1
+    items:
+      - description: Calibration data for thermal sensors
+      - description: Additional cell in case of separate calibration data
 
   nvmem-cell-names:
-    const: calibration
+    minItems: 1
+    items:
+      - const: calibration
+      - const: calibration-second-part
 
   allwinner,sram:
     maxItems: 1
@@ -107,6 +117,7 @@ allOf:
             enum:
               - allwinner,sun8i-h3-ths
               - allwinner,sun20i-d1-ths
+              - allwinner,sun55i-a523-ths0
 
     then:
       properties:
@@ -132,6 +143,32 @@ allOf:
         - clock-names
         - resets
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - allwinner,sun55i-a523-ths0
+              - allwinner,sun55i-a523-ths1
+    then:
+      properties:
+        clocks:
+          minItems: 2
+        clock-names:
+          enum: [ bus, gpadc ]
+        nvmem-cells:
+          minItems: 2
+        nvmem-cell-names:
+          minItems: 2
+    else:
+      properties:
+        nvmem-cells:
+          maxItems: 1
+        nvmem-cell-names:
+          maxItems: 1
+          items:
+            - const: calibration
+
 required:
   - compatible
   - reg
@@ -176,4 +213,17 @@ examples:
         #thermal-sensor-cells = <1>;
     };
 
+  - |
+    thermal-sensor@2009400 {
+      compatible = "allwinner,sun55i-a523-ths1";
+      reg = <0x02009400 0x400>;
+      interrupts = <GIC_SPI 62 IRQ_TYPE_LEVEL_HIGH>;
+      clocks = <&ccu CLK_BUS_THS>, <&ccu CLK_GPADC1>;
+      clock-names = "bus", "gpadc";
+      resets = <&ccu RST_BUS_THS>;
+      nvmem-cells = <&ths_calibration0>, <&ths_calibration1>;
+      nvmem-cell-names = "calibration",
+             "calibration-second-part";
+      #thermal-sensor-cells = <1>;
+    };
 ...
-- 
2.51.0


