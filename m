Return-Path: <devicetree+bounces-76799-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 15C7E90C07D
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 02:40:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7B859B22B26
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 00:40:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 62E881BF3A;
	Tue, 18 Jun 2024 00:37:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bjmu609N"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f45.google.com (mail-oo1-f45.google.com [209.85.161.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CFA44C98
	for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 00:37:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718671068; cv=none; b=oGtiBZ2WeakQ3MHTuJicBEPbswxl4q2HGiuwZviFKFDsrR8JSOb8qqTey/WvZIUszTXZCDcPT1Z7lpgqn9F/rlYJoiDG2GceLCNfezydm5qiu0ge6e70QenLPLU1kVTPESQ1u4DBo1qpXcCDYeE8UBapD57JIaMX5bk9UQr2bRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718671068; c=relaxed/simple;
	bh=FPECna8QubWZJWyI17d+5QqMeSrVSngVEd37TbVrJY4=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=GcY9p26Q8CvZYUZlHDMRuxWLDb1/jDm9mAssvwg7mA9kGi14OYVNA0SSk1JsNHKRcgSYywD8ArpBxjjz0g6HfNOgGmOTRYQF5EPBEs90M18h5kBHAUKh6E5oS6MCGuG7Y5qvs5xIx61MMhmnpjFtHn3rF4CaGBKSeVuE7YvtbAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=bjmu609N; arc=none smtp.client-ip=209.85.161.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oo1-f45.google.com with SMTP id 006d021491bc7-5bfa5f9bbe6so1099128eaf.3
        for <devicetree@vger.kernel.org>; Mon, 17 Jun 2024 17:37:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718671065; x=1719275865; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xQ++MWratnfX3umvtaDdV/3AZjItAbPo3zx0EZywnGo=;
        b=bjmu609NqRv2L4oqh1Xkunfp6nAsjqQpmjr/ey7aFBMEIrDCIJGs+jh9zEz+QHopjI
         +ZKbjYNR/dY3KI84v3A9SokmLRgxbmjOCJ66ECiwU5hrGQmz+Htp8gx+bsOMq4yQLRKM
         rsMgC0z13xT/5D7xBtWQQsKWUhp5V791J4ejNltPij8KY22NHoVVxQBr5q/+0CEPu7ho
         KIZDvQMvqKUQzOxakoH2x3D1djnHLQdzHP/1niUePtBCo2eGrbs3botTSCeUcHy4yLSD
         je78RJbCkBVjaM4etU9mNvsMjJgU/JyRLULZQqXnQOXMRgYP8t94Yw5y8kPOQ55XCAsL
         4wzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718671065; x=1719275865;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xQ++MWratnfX3umvtaDdV/3AZjItAbPo3zx0EZywnGo=;
        b=QPJIWJQna9wGgardBhmIL0As9f41i7XKaEXtEQv29TjG+D/bqL4bQEtKoZfJQgTO4R
         FLnyd+aFoGbNhDATk+ByuALCQyquhLrlEV2lZWPZHM5Bs0FUpMj0Q+sdoO9WNnUvbf/q
         7+0R89kt+5HYHqwhXNrRDaZ3GjvpqtxN2CGo2MC6HNhqm84lmOjHV0E0jyfZilvgGbjt
         pqQCW4EN8sikZLrywJe5ZJVIvDOVRVnqIJo2jtXWiRWIukDT4AcRt051Az/IWdNkUbJO
         duBBr8vgvHkHNN0TuKXaNI9UGeiIjv76F575ivrYRlLz3xq9pwxXqSsoezNpOUw8A+gV
         nrFg==
X-Forwarded-Encrypted: i=1; AJvYcCXBnGiLQr3FW8kKQtBDV53lBsJN9NCcTD+9voKkyfIbBmYOllgLAn+i4TkIIWhYgwsAlRX4Fx18ZozDk6oxF8vkRuGp1bzPbCQP+g==
X-Gm-Message-State: AOJu0Yw5df3Qz/ubVRJo602YhaTI5ox09lK/zbTWDTQZC5zzwICBZRSJ
	IsaxpE1xbl6TtwcaGn6w7JSblVbMe0FXcbw1erN8wFvl6qy26KMA+GXBAep+XFM=
X-Google-Smtp-Source: AGHT+IFuFpjdFpuLvIdaYw3w/WCr1/gHlrImp8DoWkXpIxzm220GdkXoQwm/XTk+jxZ+CH+KzmX0Xg==
X-Received: by 2002:a05:6820:161e:b0:5bb:2d23:8aeb with SMTP id 006d021491bc7-5bdadb68eb5mr13265376eaf.2.1718671065156;
        Mon, 17 Jun 2024 17:37:45 -0700 (PDT)
Received: from localhost ([136.62.192.75])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-5bd5e19e943sm1229935eaf.23.2024.06.17.17.37.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Jun 2024 17:37:44 -0700 (PDT)
From: Sam Protsenko <semen.protsenko@linaro.org>
To: =?UTF-8?q?=C5=81ukasz=20Stelmach?= <l.stelmach@samsung.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Olivia Mackall <olivia@selenic.com>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	linux-samsung-soc@vger.kernel.org,
	linux-crypto@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 2/7] dt-bindings: rng: Add Exynos850 support to exynos-trng
Date: Mon, 17 Jun 2024 19:37:38 -0500
Message-Id: <20240618003743.2975-3-semen.protsenko@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240618003743.2975-1-semen.protsenko@linaro.org>
References: <20240618003743.2975-1-semen.protsenko@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The TRNG block in Exynos850 is pretty much the same as in Exynos5250,
but there are two clocks that has to be controlled to make it work:
  1. Functional (operating) clock: called ACLK in Exynos850, the same as
     "secss" clock in Exynos5250
  2. Interface (bus) clock: called PCLK in Exynos850. It has to be
     enabled in order to access TRNG registers

Document Exynos850 compatible and the related clock changes, and provide
a corresponding example for Exynos850 TRNG node with ACLK and PCLK
clocks.

Signed-off-by: Sam Protsenko <semen.protsenko@linaro.org>
---
 .../bindings/rng/samsung,exynos-trng.yaml     | 49 +++++++++++++++++--
 1 file changed, 45 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/rng/samsung,exynos-trng.yaml b/Documentation/devicetree/bindings/rng/samsung,exynos-trng.yaml
index 99c382d25c11..e57310fa89c7 100644
--- a/Documentation/devicetree/bindings/rng/samsung,exynos-trng.yaml
+++ b/Documentation/devicetree/bindings/rng/samsung,exynos-trng.yaml
@@ -12,14 +12,17 @@ maintainers:
 
 properties:
   compatible:
-    const: samsung,exynos5250-trng
+    enum:
+      - samsung,exynos5250-trng
+      - samsung,exynos850-trng
 
   clocks:
-    maxItems: 1
+    minItems: 1
+    maxItems: 2
 
   clock-names:
-    items:
-      - const: secss
+    minItems: 1
+    maxItems: 2
 
   reg:
     maxItems: 1
@@ -30,6 +33,35 @@ required:
   - clock-names
   - reg
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: samsung,exynos850-trng
+
+    then:
+      properties:
+        clocks:
+          items:
+            - description: SSS (Security Sub System) operating clock
+            - description: SSS (Security Sub System) bus clock
+
+        clock-names:
+          items:
+            - const: secss
+            - const: pclk
+
+    else:
+      properties:
+        clocks:
+          items:
+            - description: SSS (Security Sub System) operating clock
+
+        clock-names:
+          items:
+            - const: secss
+
 additionalProperties: false
 
 examples:
@@ -42,3 +74,12 @@ examples:
         clocks = <&clock CLK_SSS>;
         clock-names = "secss";
     };
+  - |
+    #include <dt-bindings/clock/exynos850.h>
+
+    rng@12081400 {
+        compatible = "samsung,exynos850-trng";
+        reg = <0x12081400 0x100>;
+        clocks = <&cmu_core CLK_GOUT_SSS_ACLK>, <&cmu_core CLK_GOUT_SSS_PCLK>;
+        clock-names = "secss", "pclk";
+    };
-- 
2.39.2


