Return-Path: <devicetree+bounces-59005-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 055D68A3F66
	for <lists+devicetree@lfdr.de>; Sun, 14 Apr 2024 00:15:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 85B3A1F215BE
	for <lists+devicetree@lfdr.de>; Sat, 13 Apr 2024 22:15:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B05557883;
	Sat, 13 Apr 2024 22:14:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="HUUswcw3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D52156B9F
	for <devicetree@vger.kernel.org>; Sat, 13 Apr 2024 22:14:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713046487; cv=none; b=Ts7bc+DH29GjzOQp8gWz5Cltyx0WgKwH6wpCoaNHLmYpCYl1Dv/SdOhVJ2iy4eKoJdN0yDLcfPMSznt1ZbefO4zdOmj0KdRlhPkchW/iBLAPS3V4g38LXBe4u55GRWRo8EvDy/bhTjFCRjHy2G0E7OoI1uFqWi8fHHQzFXZi/Ks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713046487; c=relaxed/simple;
	bh=ZtByzIHxpfuAEFUa9VWbWb1E2J8uKDy/v2iO84NC0x8=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Dg0UN0SesqkYCqyryG7YHlGIFebPJjVlxU49maaA3Cqb4ANFWxGYZvQYorHR4WCabBcEQ9OCxPH1MM0w4F6vK+zKN+zw+9eAcdXDp5xn24OXiFpaoYVhE9rKxukWFbZnSy+W5eSHq9OVp+YLB7hbneju65KG4WwR51GE+G+4H2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=HUUswcw3; arc=none smtp.client-ip=209.85.208.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-2d895e2c6efso25256241fa.0
        for <devicetree@vger.kernel.org>; Sat, 13 Apr 2024 15:14:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1713046483; x=1713651283; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XZwqKfG6p8JaM/Q71ad/MDCBd7iRVLRuGbWu8s7oPwE=;
        b=HUUswcw3D5xv2UFGEh4YE4WeduhJPSAq51pdhJr0CXJO345ZtZbR4gx5JU4DHMii7/
         3/8AvsbdXnvjWg60LvzFmfoWUS3fTRQ/6sSMIdCDuJyr4IZB+BvFgD47Dn0RdVFd01gM
         G4ARA1PoGWTfi6glC0RPaGnp9pym7if+cqIaV72m9CS+LR0+9k0mN0zQwI2BCzPPBsnm
         x1fLmvm0GtlaoJboHkRZySGnkPB2JF59HV8QjvofmbLjF1bYYU4DdW/Ub5ousy/8Q4PF
         UE+vUbm5EIuoKJxEIIu5kdT5WPodDvEy+d8KFINhDsV2XwN1YYQqeYB/7l/xSouKH7+T
         qaog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713046483; x=1713651283;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XZwqKfG6p8JaM/Q71ad/MDCBd7iRVLRuGbWu8s7oPwE=;
        b=SalIOZ2sSkYgsjIAEc2bTAcPQnHKtmBtpuH4q2/+LYqf+/H3SycMQANdvckUUcvsFt
         /6LSQ+cFdjRdjQSd4OfHspila7XdgnvXhGJkY30604VIMBIs6A+PD+uX5393kecFUPje
         adEpNcGsxFVbE0YVToV/f9Pb9AKWMA3MfII3w9EfxCeYn82igIjT/xvfVdDG8MCXvi2Q
         qn6Eq3zHp4vSW8VjKxIio3tu7PyZ4lJniW3jC69tMtd++YIZv0tO75zi0ebixXLGtgUu
         PA6gH1glv7fGH+mOxuu9tnkzrFtCXZhPCX1Etw4jxHga4Jm5XYVUrIVlVK9GChyFOv4C
         YsQw==
X-Forwarded-Encrypted: i=1; AJvYcCWEMZsn2evGYbB+sY4WKmzQTFjKgS96C826o42GFSPngXB9yiruJ6/Stemkt5WnLH8oM9WmhT2VLU/tAvr9sls8tXRHM7GQGY3RDg==
X-Gm-Message-State: AOJu0YyElldunpOoVfaQjbFrrMB+ks040UwADpTo5hLirZLF+kwRwkqZ
	uPeD4O7gW0XwDrlJiMWOh+/0l1dz/dcUxGPYYKplQSOCldYdrG+C1IueAPcGSoI=
X-Google-Smtp-Source: AGHT+IFfx3Ukte+/jbUIOHsuAj8JYMvFoe/VC/sh9UZQlEdV09O7BFS5ROv7MMq6W1YAyuALnuGL8w==
X-Received: by 2002:a2e:9b1a:0:b0:2d8:b2e:7bf3 with SMTP id u26-20020a2e9b1a000000b002d80b2e7bf3mr3537864lji.0.1713046483364;
        Sat, 13 Apr 2024 15:14:43 -0700 (PDT)
Received: from localhost (host-87-4-160-102.retail.telecomitalia.it. [87.4.160.102])
        by smtp.gmail.com with ESMTPSA id dh5-20020a0564021d2500b0056e3e0394absm2970717edb.68.2024.04.13.15.14.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Apr 2024 15:14:43 -0700 (PDT)
From: Andrea della Porta <andrea.porta@suse.com>
To: Ulf Hansson <ulf.hansson@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Adrian Hunter <adrian.hunter@intel.com>,
	Kamal Dasu <kamal.dasu@broadcom.com>,
	Al Cooper <alcooperx@gmail.com>,
	della Porta <andrea.porta@suse.com>,
	linux-mmc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	Jonathan Bell <jonathan@raspberrypi.com>,
	Phil Elwell <phil@raspberrypi.com>
Subject: [PATCH 2/6] dt-bindings: mmc: Add support for BCM2712 SD host controller
Date: Sun, 14 Apr 2024 00:14:24 +0200
Message-ID: <ad96fff723675c2d65a5e3328da9b09f2781cbcd.1713036964.git.andrea.porta@suse.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <cover.1713036964.git.andrea.porta@suse.com>
References: <cover.1713036964.git.andrea.porta@suse.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Andrea della Porta <andrea.porta@suse.com>
---
 .../bindings/mmc/brcm,sdhci-brcmstb.yaml      | 51 ++++++++++++++++++-
 1 file changed, 50 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/mmc/brcm,sdhci-brcmstb.yaml b/Documentation/devicetree/bindings/mmc/brcm,sdhci-brcmstb.yaml
index cbd3d6c6c77f..6aa137d78e4f 100644
--- a/Documentation/devicetree/bindings/mmc/brcm,sdhci-brcmstb.yaml
+++ b/Documentation/devicetree/bindings/mmc/brcm,sdhci-brcmstb.yaml
@@ -13,6 +13,7 @@ maintainers:
 properties:
   compatible:
     oneOf:
+      - const: brcm,bcm2712-sdhci
       - items:
           - enum:
               - brcm,bcm7216-sdhci
@@ -26,12 +27,16 @@ properties:
           - const: brcm,sdhci-brcmstb
 
   reg:
-    maxItems: 2
+    minItems: 2
+    maxItems: 4
 
   reg-names:
+    minItems: 2
     items:
       - const: host
       - const: cfg
+      - const: busisol
+      - const: lcpll
 
   interrupts:
     maxItems: 1
@@ -60,6 +65,7 @@ properties:
     description: Specifies that controller should use auto CMD12
 
 allOf:
+  - $ref: sdhci-common.yaml
   - $ref: mmc-controller.yaml#
   - if:
       properties:
@@ -71,6 +77,28 @@ allOf:
       required:
         - clock-frequency
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: brcm,bcm2712-sdhci
+
+    then:
+      properties:
+        reg:
+          maxItems: 4
+        clock-names:
+         const: "sw_sdio"
+
+    else:
+      properties:
+        reg:
+          minItems: 2
+          maxItems: 2
+        reg-names:
+          minItems: 2
+          maxItems: 2
+
 required:
   - compatible
   - reg
@@ -114,3 +142,24 @@ examples:
       clocks = <&scmi_clk 245>;
       clock-names = "sw_sdio";
     };
+
+  - |
+    soc {
+      #address-cells = <2>;
+      #size-cells = <2>;
+
+      mmc@fff000 {
+        compatible = "brcm,bcm2712-sdhci";
+        reg = <0x10 0x00fff000  0x0 0x260>,
+              <0x10 0x00fff400  0x0 0x200>,
+              <0x10 0x015040b0  0x0 0x4>,  // Bus isolation control
+              <0x10 0x015200f0  0x0 0x24>; // LCPLL control misc0-8
+        reg-names = "host", "cfg", "busisol", "lcpll";
+        interrupts = <0x0 0x111 0x4>;
+        clocks = <&clk_emmc2>;
+        sdhci-caps-mask = <0x0000C000 0x0>;
+        sdhci-caps = <0x0 0x0>;
+        mmc-ddr-3_3v;
+        clock-names = "sw_sdio";
+      };
+    };
-- 
2.35.3


