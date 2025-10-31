Return-Path: <devicetree+bounces-233746-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 27514C251E0
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 13:56:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 98C1D463C92
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 12:56:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 948DF34AAFF;
	Fri, 31 Oct 2025 12:56:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="g6qbk92i"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5D5C346FDA
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 12:56:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761915367; cv=none; b=uSwjfP/RFwzav5ih4Zfw8rkXuIE3GMGWQ61MnVf9b2CrYXfKmmDTvvRyAZH2lfN6mek0gR66FFFUgGoLalnnN/QSPb+lmTAqVnWTMdaCRsdWgAVP1wFh9mycwV2x+g28J8r8BGY9/yihlk0olqH0m2tY1njl/dkgppLXsSm5XKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761915367; c=relaxed/simple;
	bh=52mHw6aKRd81AmHkFdwI5f2O5qzG7/nRl12+OyMNuEs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ks9VJbRhpUf6rOGkWJujYF91CCU4XvgIly01U2eg+C7ph0hmrfkW4NecFwjrUUSpziRaikN+6tDNXhHcM3OgOb9PE2TMZf79qO9hvlrvUaI8JLxQwmIbsYgWCIz3g0c6SFo2B3fMi2eIVma+7NqaYOBZIfo+wPuvM2tIPWVzWhY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=g6qbk92i; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-47719ad0c7dso19999955e9.0
        for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 05:56:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761915364; x=1762520164; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=w81C8PO6GyjajvSZnVcib72PAdJ1z5nHo14vlKsXejI=;
        b=g6qbk92iiErU3uxKfLfXvLrkzgZputVtL26LTsivzUDsADma4Ty9cDeW4tEzKEzVZq
         zLgVJAEi1zPzgMFvAsea3qw6eQb3tPSz/61rIVZt1/IYQZGwQMv1/IwHwFYiwZY9Pi3K
         HYaPuj7B2o0i8P9QNO0HabpHQmq6fRKH9KUCy3t4JmZLiC1VUFTtVRhLYQ3AlcCwyGGl
         0s5YHn24eUkYZz7OE+hxfHZ+yDPsP3i4Oxcel7vnEr/qzPoIvFOHjl8GIrQgF+WZz0bK
         czQ8DgMYXxNcu484EWrM+pNS7M42IVBhcpgMm61smy5nTuEm7ZYk2UUQzdzJZPwASakn
         R3iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761915364; x=1762520164;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=w81C8PO6GyjajvSZnVcib72PAdJ1z5nHo14vlKsXejI=;
        b=P2ph1rK4wJk8680OT76ubczEjFu1D6Ii1NuDDZB9krrAYgr5rsYaKZzi6OTsZiZy+M
         NuirvQmx6IdwKU3dO8/oC5dyLWOie7IRfooUmItYfh9n7+pf0TaBmnFQvG6cGTkl5E5b
         353V443ESXlv+uiOi0THIhqktlO7vO/39josyCGJAJSIpIeMamj+v88t98cW62rf0JYl
         1SeK+UZowlyjAtUWSDiX3LZ4CiJXbfR7aONGxmnu32cw++ZUcp3/UR2lCrpV94ShgXDK
         PhhCyj+DooiqEHiWEd1TSMk5SbCVEV1ZMf/Y/5BMM/mZACZnrgoFBmhpe/R83E2QONN7
         iNNw==
X-Forwarded-Encrypted: i=1; AJvYcCXzWfawgxlOfzrWaYDwJMkCM7uZYMP76EUB4ovANIg413rwCk1swL50o9/0dAGVEN6YvCGqk0cwSVqV@vger.kernel.org
X-Gm-Message-State: AOJu0Yw67RqWoJ6b3wBjNgb8GI1tYYPEh4YdNDkSDJ/eZ0O2fiPaU1Wd
	uEC4SKKtv4S7YulVjwNAXr6UAy6QmtcVPFFSx7BdrJ5TBUStAJRd861ZK9/ouIW2Vzw=
X-Gm-Gg: ASbGncs3yL3n3NbDB2kKjyGAzZL8ImyVhuy+gHBeGJ77ItfFz4EpfhxNUtzkZO84h7e
	Kn8OPnwOp0nb+hQ9mXzEWYc3i2BMRvhvSaKUq2xBdX56nMT4Tz/k/r3yKIdfXzGOlSZuvMAJYC7
	rPjeHhFP3ilgoIxojXIAekcsPNWJzcbWEFXmSbcs+52P/gBwxnodiOuMnF0Az7LA/lRcWKZKWGw
	CRCSm3LkO0gR8e/IFn8NUC+kXKd3+6zpSMmjS+CgQ7Xhlp3BuMr5iFrXkW0BfBSeIZJGsuR/3sg
	rPicTdL73rto65hgKu5wvC/xnoUfxJunPADX+7viUjGDI4zVKmQMhyvg7cRghQruSq2isFEvvu9
	Zw5uzdGcPwxlx4SIc28Dm28zvNu8x8uMfUFDWhsJLKDi+Y3duPQvaHbY3+FQxRorpyjaBVBGaQ6
	GoezwLMealqVV7+CiT3TMTsBTRHKZVnxraDBmRm99NJOiET0Vi2+F+4G9WIS5/31g=
X-Google-Smtp-Source: AGHT+IE5HT8zyhO+x64QxgSYjKr7L7F+qcefl5D+0FWEsp9ZQtU+HT7k2Pn+gFUE7dvYr1UxapCqpw==
X-Received: by 2002:a05:600c:19d1:b0:471:747:2116 with SMTP id 5b1f17b1804b1-477308b943dmr32724215e9.41.1761915364051;
        Fri, 31 Oct 2025 05:56:04 -0700 (PDT)
Received: from ta2.c.googlers.com (213.53.77.34.bc.googleusercontent.com. [34.77.53.213])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47732fe1075sm31814585e9.11.2025.10.31.05.56.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Oct 2025 05:56:03 -0700 (PDT)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
Date: Fri, 31 Oct 2025 12:56:00 +0000
Subject: [PATCH 01/11] dt-bindings: hwinfo: samsung,exynos-chipid: add
 google,gs101 compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251031-gs101-chipid-v1-1-d78d1076b210@linaro.org>
References: <20251031-gs101-chipid-v1-0-d78d1076b210@linaro.org>
In-Reply-To: <20251031-gs101-chipid-v1-0-d78d1076b210@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Peter Griffin <peter.griffin@linaro.org>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, semen.protsenko@linaro.org, 
 willmcvicker@google.com, kernel-team@android.com, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Tudor Ambarus <tudor.ambarus@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1761915362; l=2586;
 i=tudor.ambarus@linaro.org; s=20241212; h=from:subject:message-id;
 bh=52mHw6aKRd81AmHkFdwI5f2O5qzG7/nRl12+OyMNuEs=;
 b=vpkvnaAKzBlUYUyJicoR7s8ZIonwBdHpBvPXSHqnML9kKehWnWDt6lXVGE1gK30tPNuHSi6tz
 tYeAfPhVfVCDtbiE6EMzCUWvpiA6l7oT7wpXfT4MIUlK7O4ZKhTeT4t
X-Developer-Key: i=tudor.ambarus@linaro.org; a=ed25519;
 pk=uQzE0NXo3dIjeowMTOPCpIiPHEz12IA/MbyzrZVh9WI=

Google GS101 Chip ID references the nvmem cells from the OTP controller,
it doesn't need a reg space. Add the google,gs101-chipid compatible.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 .../bindings/hwinfo/samsung,exynos-chipid.yaml     | 51 +++++++++++++++++++++-
 1 file changed, 50 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/hwinfo/samsung,exynos-chipid.yaml b/Documentation/devicetree/bindings/hwinfo/samsung,exynos-chipid.yaml
index b9cdfe52b62ff3a365d61368c39db21facff6565..6d6260be02d47712ebf1e4d31973802e8340cdfe 100644
--- a/Documentation/devicetree/bindings/hwinfo/samsung,exynos-chipid.yaml
+++ b/Documentation/devicetree/bindings/hwinfo/samsung,exynos-chipid.yaml
@@ -33,6 +33,16 @@ properties:
               - samsung,exynosautov9-chipid
               - samsung,exynosautov920-chipid
           - const: samsung,exynos850-chipid
+      - items:
+          - const: google,gs101-chipid
+
+  nvmem-cells:
+    maxItems: 2
+
+  nvmem-cell-names:
+    items:
+      - const: product-id
+      - const: chip-id
 
   reg:
     maxItems: 1
@@ -47,7 +57,46 @@ properties:
 
 required:
   - compatible
-  - reg
+
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            oneOf:
+              - enum:
+                  - samsung,exynos4210-chipid
+                  - samsung,exynos850-chipid
+              - items:
+                  - enum:
+                      - samsung,exynos5433-chipid
+                      - samsung,exynos7-chipid
+                      - samsung,exynos7870-chipid
+                      - samsung,exynos8890-chipid
+                  - const: samsung,exynos4210-chipid
+              - items:
+                  - enum:
+                      - samsung,exynos2200-chipid
+                      - samsung,exynos7885-chipid
+                      - samsung,exynos8895-chipid
+                      - samsung,exynos9610-chipid
+                      - samsung,exynos9810-chipid
+                      - samsung,exynos990-chipid
+                      - samsung,exynosautov9-chipid
+                      - samsung,exynosautov920-chipid
+                  - const: samsung,exynos850-chipid
+    then:
+      required:
+        - reg
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: google,gs101-chipid
+    then:
+      required:
+        - nvmem-cells
+        - nvmem-cell-names
 
 additionalProperties: false
 

-- 
2.51.1.930.gacf6e81ea2-goog


