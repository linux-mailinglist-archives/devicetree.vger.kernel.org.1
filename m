Return-Path: <devicetree+bounces-161654-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F2769A74D85
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 16:15:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0976816D064
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 15:15:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9CACA23AD;
	Fri, 28 Mar 2025 15:15:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tmeZpGCf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B6771CD210
	for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 15:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743174926; cv=none; b=Bty/HkQ570+YmG3KsoK49WYsIvLxtS7q6Sa1IUdi9NLKN2eVMc1l5YK9Av8Uq8o6fSB6QACj/2twAH8L72DUAAjTnuPgPtLcT3DiHflYei8J5TZSTGfLNEPxN/zqVpuxmx4wgBbtSa2v3duhrsAXLEBPaYZQwY8vRYWtbOytocw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743174926; c=relaxed/simple;
	bh=MYogVCHGeRc42nAQYUSM9/OiTxNHcGg1Ng9UgC1OpPQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=qvjXL3CdZBT2jKZ0GlHKQ+deH5WTjVNXZBaTgXQymYowqG/ghXmPpVIV5OYTkB0HFqBZ/JHCugfJPXWnCzHVnBAOL0eShYMaOSAJ4Rq4gTC9fhPc591PFDM74wSXqcY3sawR8eI/tEhsHGv451UmbDZCepUkKbNOEdrr57afFNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tmeZpGCf; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-ac29af3382dso361636366b.2
        for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 08:15:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743174922; x=1743779722; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QbMd9XdkWBLdkj8rOcFnOleEDKh/N4y+bdq1J1Qswv0=;
        b=tmeZpGCfl8lhxL5Fd7vl8SGWNrVdVyvoR9W1/Cxg8jnajCBXeDfyJpMpOWo/SpAsCJ
         hgaXF+f38FZYCPgWGW0TKzqrjdQFmJXnHguqHGO5zE5/ArmYdyJ13+RkWx634X1PsiEi
         f+SgSPJEBfckCVM5teUwFKxlndRQ1jXFBjfbqbI11l5w4gt2YWfVe/E8djU3438mC1ze
         YkyJS45JUiphANiHnFWH559sf4xHl51ujWyWZyiiIIsNOxHhAYh6qsi+Nq8pjUyfUhau
         oYGcJjRVyugdRiIs4elgbn8XMlmiNTcV3Gb0Hn+ySnwklSzHnFEpFSAqbAsoQxhcTAjy
         Q/Bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743174922; x=1743779722;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QbMd9XdkWBLdkj8rOcFnOleEDKh/N4y+bdq1J1Qswv0=;
        b=F+ljbSzr7vRaLSF93RrKmbbuG3dBTHi0sTN4YuzR3T0r621C1BiN31qx7YsdaUgD5e
         aJcy0MkzYC1OErfDz3SBty2aW/dCbIwCWJ7NKkcxxWfhy5DXlQzVODSpHlAmzNZyXZWX
         8bl5WPWxhaBazUpmpD1c/N/1XxBsWcGNpgq7CxwodqtKvR/QB2tIFsjLVEEfMJqIlj5Y
         TniT5qQOxbC11bn5P45z9E7pq4VvzqYm++QDtvtcaYAEPss8QvNrGDG0S3Gl08d1B0V+
         5zT4ZAP5wgP2muWebiSNLVK30+l0V2IX101s7BUq1KAQnRK4iSGOr18AqU+YggRbCTnN
         oubA==
X-Forwarded-Encrypted: i=1; AJvYcCVCL1Hs/GlA8akL2m3NT7+mUqTCpG2mgsO5Pmlehf6rWl0/bazu9LD02zzFrG6tDzlUKF8+W/SS9ua6@vger.kernel.org
X-Gm-Message-State: AOJu0YzweNw2qztRnitvKm3MPnP8zB4FDZY5w2QDQp+v8CeEbDoAOYpQ
	q/SePGr2UScOllXKCq+l3oGigT7stv6OOTIx7/5UoksdpNxM6XTINkffTW1cKHw=
X-Gm-Gg: ASbGnctQ70fNU2xxzyPGJwA21ZZcmtIWCPvhLepf7lSHLAv90XvgPIbMu8fRuYCeEIY
	zyC565Czh9Ew/G4Zj//WWYfzk9TQpEJLWjgY2Q8weGE140u5UlAfrG/x9uNQiB/ovgQ26vn0AWs
	cC5u0SYjqA2062wjU40XYAzlWYj7qhFXDindsc21D2LdbQmBqET5D7eadW05TNa0szNqoaAyBEe
	UctXoXfUTOqOVDqtCMRz1E6miqrOscFh5WImS6x0dVNjolDLpu9pB43En/HwHq09us7ulV+qWwB
	HgOoR6fP9WjGrQUO/sVCz70WGWpJxVPua22++nZrQGN+V5OaVtp0TLFqcxeS070uDsOFmIhyGZy
	gHk/M6RamNEK20DPSq+IevjbeGVYu
X-Google-Smtp-Source: AGHT+IHlWUcyOlOhaiUcfzknimHxQgiCSYmuaKhmBSK+QhakuXA6Sp7y7IZq0RbnF2cO1nyQaKeRzw==
X-Received: by 2002:a17:907:971d:b0:ac4:3e0:7ca3 with SMTP id a640c23a62f3a-ac6fae9bf5bmr718303266b.18.1743174922099;
        Fri, 28 Mar 2025 08:15:22 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac71927b742sm178789266b.65.2025.03.28.08.15.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Mar 2025 08:15:21 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Fri, 28 Mar 2025 15:15:20 +0000
Subject: [PATCH v4 2/3] dt-bindings: soc: samsung: exynos-pmu: update reset
 for gs101
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250328-syscon-reboot-reset-mode-v4-2-77ba57703ace@linaro.org>
References: <20250328-syscon-reboot-reset-mode-v4-0-77ba57703ace@linaro.org>
In-Reply-To: <20250328-syscon-reboot-reset-mode-v4-0-77ba57703ace@linaro.org>
To: Sebastian Reichel <sre@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-pm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.14.2

Add the gs101-specific reset node, allow it on gs101, and disallow it
on !gs101. Similarly, disallow the generic 'syscon-reboot' on gs101, as
we want the specific one in that case.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 .../devicetree/bindings/soc/samsung/exynos-pmu.yaml | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/samsung/exynos-pmu.yaml b/Documentation/devicetree/bindings/soc/samsung/exynos-pmu.yaml
index 204da6fe458d2d4bfeee1471ebc5c38247477ae2..8c7362cf3eeab11f6bb13a27eb295d5ee6721b71 100644
--- a/Documentation/devicetree/bindings/soc/samsung/exynos-pmu.yaml
+++ b/Documentation/devicetree/bindings/soc/samsung/exynos-pmu.yaml
@@ -97,6 +97,12 @@ properties:
     $ref: /schemas/phy/samsung,dp-video-phy.yaml
     unevaluatedProperties: false
 
+  gs101-reboot:
+    $ref: /schemas/power/reset/google,gs101-reboot.yaml#
+    type: object
+    description:
+      Node for gs101-specific reboot method
+
   interrupt-controller:
     description:
       Some PMUs are capable of behaving as an interrupt controller (mostly
@@ -136,6 +142,21 @@ required:
 additionalProperties: false
 
 allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: google,gs101-pmu
+    then:
+      properties:
+        gs101-reboot: true
+        syscon-reboot: false
+
+    else:
+      properties:
+        gs101-reboot: false
+        syscon-reboot: true
+
   - if:
       properties:
         compatible:

-- 
2.49.0.472.ge94155a9ec-goog


