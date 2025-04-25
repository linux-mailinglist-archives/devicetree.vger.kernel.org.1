Return-Path: <devicetree+bounces-170977-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 68F28A9CE07
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 18:25:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9FB581C000DF
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 16:25:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3AA3C1A0BDB;
	Fri, 25 Apr 2025 16:25:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lI2lrVph"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B15619CD01
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 16:25:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745598319; cv=none; b=hYHDKqNxTXZRQ/YHbzaCj+/RQaNLEntZFR6QY8bINYj1ql42jsrF+Q39BK0Mc5Lx5pc0Hor9OdRGt5ptWjOr+mH2ikcHKDqqDMwlhbCsQG/L9nrFsYJos4b9IZRQIRQsX3HUsuOmsfAis3qg3YImLknHmwMnP0OJ4jo9gzcN9x8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745598319; c=relaxed/simple;
	bh=hYQB0xZ67lZhdVZ8Rt7JeIuM6JzDat6vMQb2LC4ryTs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=DEwD+thcxUsCxHPR+8ayOm4FZ533X62ugPT7SPqKohPETGQk3A4DXa27Fv6vi9RkxauJ1/k8Q03NqPlVz5+KQJvCXlYveFnB8un02vwJ12fZveG5KzlZFaxuQoKVgKWuxvp9zAnsjxJaU2WMHS6J+sQSjHQ+xtvTrR3vzuZb4pw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=lI2lrVph; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-43cfe63c592so23926505e9.2
        for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 09:25:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745598314; x=1746203114; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sYqogGLC2cddLPBbS1CDWY2diLE+Y0sNiNUFT0GEwxU=;
        b=lI2lrVphrNlhFAJAm3Tr+VNoHa7nOPsGJJq7L6jAiYg3vY2qWr8n+uNYe2NW/Ehsg5
         2sGZ0dodq+hI9U1eVnZ2d/pUehl5nwoiPpOh6MZ/1gE9oSdilBFMzrAASo9YYBK33uxi
         h0RcowZd/XWKa467+R0abpZaquBx4oXaPAc5SXOnwinVL2DXGU/Zf/i+0FRtk4e014ui
         Ij34FcxynFTvn2EQvNrlfrfcEI2h2gzpT6f7JBIrjCtawlSdYRhJF94E6DZfbjF0pE8E
         VY8F0i6/m1j+p1UDsZwGbVb6EkymgsHV8w7eMXrkb9HwC7rQkKqWISDjjKGdgXDl/Spc
         /9sQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745598314; x=1746203114;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sYqogGLC2cddLPBbS1CDWY2diLE+Y0sNiNUFT0GEwxU=;
        b=U8FV3hchcXWsGQtukq/PYEGvmbUSTSBIS7XjP5D5LcBmgElQH8/ebCG/RoNc6Uz4u2
         BIq+nKDHLGfwVgUz+YHyZJO9siXxKlUd5flWPNYXGxDqtmSSDoKagDaRjBWNTwc8w+Uo
         thbCYKhvNphwzZZ6j9aHIVCHQR1iZ/1UZ+1kGjetxO86ZdqJjka+HvVY3RE+YESejb2s
         2MWyVz7dUevLYrRKwLbLuaJ8gicogYVXermV015ni/TalZGVVLivDu7IcQP/iQIDuRXf
         +onCD75rRWoU1xbHIDAh1h13SBaJKHbNHNjHQLTaiHK/IKhi1QLzjUZzsUIbK3aSIhi/
         swyA==
X-Gm-Message-State: AOJu0YwPwoYtCXUF+XzZSqWNB/N/ryUFc2ictUmeTAUSRw94Oz6fh7D3
	ToZOAECYKbfokcIcUp+I4JVtMppOAHEBeKC1dfnLXnOrSGzZcvZYSFQ5qihOLjFi1zQA66Jo5Up
	FSCg=
X-Gm-Gg: ASbGnctG+xl630uOPGuPQ75XwD0TpY5nIH33avy5DyL56SJInuAQ0N1ZW/2KT8ZuiUG
	t817Uv+yExgbjllmhTv6ewA9aUgnDqg7LYRL0qPpxzxfYyb4UY7/kbwn05dW9DnEHShtwoMdU8H
	t365JgEldAU5aGL7/3/UyL9OpholKTyDGoyNYyMnMPV5BcTftc6YOPAZPNKzC4VB/yaGdm0Nds8
	kDPIECk/Es3j2ITQ0ltrcJF16e5AEH/cEeZTBjiFV1TSE6int8YAkLtAU8M2yt8+rDpIEju/8ia
	Me5BjOMuvlNpnLza6NMga0NTo2O9ZPIDPOYINoHcfrbWMfzU9r8Z9aaxUDRgEQ/1EKI3vaOaD/Z
	CkZjKvrA=
X-Google-Smtp-Source: AGHT+IEoUTVhmuAxWok9q4iOOc7aAuIl/RZYfIJKhfks0tAcJlF/1Zv2cSL0eyMG6m9wGc2v6oqCTg==
X-Received: by 2002:a05:600c:a418:b0:43c:fad6:fa5a with SMTP id 5b1f17b1804b1-440a66d91cbmr24459615e9.24.1745598313967;
        Fri, 25 Apr 2025 09:25:13 -0700 (PDT)
Received: from gpeter-l.roam.corp.google.com ([209.198.129.111])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4409d2d8976sm61263715e9.27.2025.04.25.09.25.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Apr 2025 09:25:13 -0700 (PDT)
From: Peter Griffin <peter.griffin@linaro.org>
Date: Fri, 25 Apr 2025 17:25:05 +0100
Subject: [PATCH v2 1/5] dt-bindings: soc: google: Add gs101-pmu-intr-gen
 binding documentation
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250425-contrib-pg-cpu-hotplug-suspend2ram-fixes-v1-v2-1-f1530de9da42@linaro.org>
References: <20250425-contrib-pg-cpu-hotplug-suspend2ram-fixes-v1-v2-0-f1530de9da42@linaro.org>
In-Reply-To: <20250425-contrib-pg-cpu-hotplug-suspend2ram-fixes-v1-v2-0-f1530de9da42@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
 tudor.ambarus@linaro.org, andre.draszik@linaro.org, willmcvicker@google.com, 
 kernel-team@android.com, Peter Griffin <peter.griffin@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1524;
 i=peter.griffin@linaro.org; h=from:subject:message-id;
 bh=hYQB0xZ67lZhdVZ8Rt7JeIuM6JzDat6vMQb2LC4ryTs=;
 b=owEBbQKS/ZANAwAKAc7ouNYCNHK6AcsmYgBoC7dl0fO9aWiyJAYUMFyeTxppJc1TurFPqfxlJ
 e+kZddHU/aJAjMEAAEKAB0WIQQO/I5vVXh1DVa1SfzO6LjWAjRyugUCaAu3ZQAKCRDO6LjWAjRy
 uvfOD/0TCWaz/XJ7+sF6TYUHwykA7Yr7lzGpZ9q3aqgqVLiJ4luaXyQ8Ob9aGBwCkA8vyrPaUQp
 TH2m22EOmeEjBPVJW1pyObwU2pHrIu46f+KCzJwL6GiiA/He6ZqhjMkFkRnH3nORmmsWoG/rcdf
 YLykA+AhagK3hgbY4520BUJ70waMgXM2UivHw64r4wrMIdzQQVwjGCNMKIhCMNY5whp3p3GYtS5
 /CauPxyjuL5ca56ZNjjJGYsuAvExNYswU/QUXDKbC6T4EpDYgMPNtMrIwkkFBiSlNj+nLViq6in
 uEDVWm4Z47clBZ95I6b47SgLz1lv9L/ums3ci/r+3Jmt4C3qzDrwkkqcHPR6gD51vbgRlSsDGcB
 moe3zec5Jx/Xi8It8QVS49NG7DeSz4eZKCMV8JoaAu5cC7cQVMkeZMYa945BZMeOMB+IA2nwLIe
 yuNUW+bfIQQyHLS7AKztyGDhq9+yu83OK53wVv6TmKmjVyKG6rnmi4dvK+LZU8EmFGuVz/VYhjb
 efbAW60e4PW5Sh6MBdepjccRkY7knOdXdwiytjIJl5tDV3+R8YnTx9ri8YLksHIrvT7JZsf3DY/
 rbinCK8oV/m8ELlxyZvF7PKhWBuhqfb032KalnVE4xw+PZNiy1ydgdDYujCripu+vC9Di4fVUSD
 AAA/4k0Ey48IVgQ==
X-Developer-Key: i=peter.griffin@linaro.org; a=openpgp;
 fpr=0EFC8E6F5578750D56B549FCCEE8B8D6023472BA

Add bindings documentation for the Power Management Unit (PMU) interrupt
generator.

Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
---
 .../soc/google/google,gs101-pmu-intr-gen.yaml      | 35 ++++++++++++++++++++++
 1 file changed, 35 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/google/google,gs101-pmu-intr-gen.yaml b/Documentation/devicetree/bindings/soc/google/google,gs101-pmu-intr-gen.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..f358c5dcd1b61e271601359bb15091e31b36d245
--- /dev/null
+++ b/Documentation/devicetree/bindings/soc/google/google,gs101-pmu-intr-gen.yaml
@@ -0,0 +1,35 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/soc/samsung/google,gs101-pmu-intr-gen.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Google Power Management Unit (PMU) Interrupt Generation
+
+description: |
+  PMU interrupt generator for handshaking between PMU through interrupts.
+
+maintainers:
+  - Peter Griffin <peter.griffin@linaro.org>
+
+properties:
+  compatible:
+    items:
+      - const: google,gs101-pmu-intr-gen
+      - const: syscon
+
+  reg:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    pmu_intr_gen: syscon@17470000 {
+      compatible = "google,gs101-pmu-intr-gen", "syscon";
+      reg = <0x17470000 0x10000>;
+    };

-- 
2.49.0.850.g28803427d3-goog


