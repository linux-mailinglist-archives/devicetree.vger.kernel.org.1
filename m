Return-Path: <devicetree+bounces-94073-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C6407953DAC
	for <lists+devicetree@lfdr.de>; Fri, 16 Aug 2024 00:58:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0633E1C250BB
	for <lists+devicetree@lfdr.de>; Thu, 15 Aug 2024 22:58:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C9120155749;
	Thu, 15 Aug 2024 22:57:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="Sx7nTDbc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f52.google.com (mail-pj1-f52.google.com [209.85.216.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A3F3158DC8
	for <devicetree@vger.kernel.org>; Thu, 15 Aug 2024 22:57:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723762673; cv=none; b=KZjXKBBhYk/fAG6YwA46oS92kus0dDDwq1CG9a9SUM7F1oRTsV5d58RPoflna+RQYMGVGGOCk0Rq21LGnM2y6q0HiesBMvrg9BBiBOg8rk2JIBUZhePUAai+6wUlvR7207d/f7veYh5osqqlaf2ZAU2cvMM54K5yulG1UwKl1w8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723762673; c=relaxed/simple;
	bh=hTD9OmJB81cIRNMB8r5RWcIaSLzWceBhC8SGhS5dFxA=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=ldc7xsBy2RlO0IU7ViYCHYz824sylmij/7pNezrXqNG9pE88rVyvs2llo9YSWbwlQohc8BKfqyxAD4PyznmEtTw033WRB7jhhfo38aQcd+AH6z/Ecdn0GWzEWNUYNBfEYzciedIw/pk1AUB0xHo8/65p2EKR/tT1+xfnIJlcSbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=Sx7nTDbc; arc=none smtp.client-ip=209.85.216.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-pj1-f52.google.com with SMTP id 98e67ed59e1d1-2d3b595c18dso1390415a91.0
        for <devicetree@vger.kernel.org>; Thu, 15 Aug 2024 15:57:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1723762671; x=1724367471; darn=vger.kernel.org;
        h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=WH+rdrTcxkg59J1njd2uJ3iEEueSc8kUH0E7SDV6ulc=;
        b=Sx7nTDbcR7yPMvFzZ1GMjVQi9FYvRYiYzfkSXaP4KO+d65ONXB5OFBLYXm1f4H4Cqc
         SFDd4WxWIiWzNMCIakWUXaUiAm5GKc+PCBGZRpJXAUYtcVCEe2qkGtXg0N/EHA04pLQY
         5uMCf0NkEF08sAu59olL+6QYG9Qkl+ih0Gz0Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723762671; x=1724367471;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WH+rdrTcxkg59J1njd2uJ3iEEueSc8kUH0E7SDV6ulc=;
        b=Vo9AhDmt076jsBTHhcoiHJvjINFlgd+jctBXRSaIxWMUkTqweBdgLw9Ih5Ox+zWmIV
         RSdzRwNz4FC3kv2GnaUeurJn/4g2G/QrhsGNYACRgRfVs7jWUgRfs/pwMpbPJs6VEZsX
         ThaMvS/dkgcpPOd8XaiDxH2wWOMQzZXCg5J5db33fHvzUeeml8pV2ebbASGZnLaeyKuP
         yLVVmqKT/jqD9IQVkQlCVj5bdb90lMTzcves+HOnoYMdp/7UTpXsa6iT3ecUj8GiE/PY
         ZPocXDXrUota472HDovdSYYk6jvkCIsUp0Y1rC8EZOCct170a9XEJnVXgRIQGlkPgUUB
         mQPA==
X-Forwarded-Encrypted: i=1; AJvYcCUaomTuNLvlE9Y9BnikrYGKI4ou0lY8OiMaVjUeLgk6bi/L/flYjSCR1Da0c7mdgfoq0EN5MW46FqR4@vger.kernel.org
X-Gm-Message-State: AOJu0Yz2KjAwGu4Z0ii2zbONe1JKt856M3EjbmvQVMEheU3O/XGAJjOi
	tjYtU7z23CEfar23CCdfMjA8uVlznpk3NATp/Ax/ql8IwfZx2EGPHxAJ395SmQ==
X-Google-Smtp-Source: AGHT+IG376HhZUZrhW7Ph9mF+C01Bg0t7yn8TgdDnPPnyffSrZWUI6fa4Ar3i5RUImonP2U2TFaBsQ==
X-Received: by 2002:a17:90a:b114:b0:2cf:f860:f13b with SMTP id 98e67ed59e1d1-2d3e45d598bmr1129974a91.17.1723762671402;
        Thu, 15 Aug 2024 15:57:51 -0700 (PDT)
Received: from stbsrv-and-01.and.broadcom.net ([192.19.144.250])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2d3e2e6b2d1sm373997a91.18.2024.08.15.15.57.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Aug 2024 15:57:51 -0700 (PDT)
From: Jim Quinlan <james.quinlan@broadcom.com>
To: linux-pci@vger.kernel.org,
	Nicolas Saenz Julienne <nsaenz@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
	Cyril Brulebois <kibi@debian.org>,
	Stanimir Varbanov <svarbanov@suse.de>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	bcm-kernel-feedback-list@broadcom.com,
	jim2101024@gmail.com,
	james.quinlan@broadcom.com
Cc: Florian Fainelli <florian.fainelli@broadcom.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-rpi-kernel@lists.infradead.org (moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE),
	linux-arm-kernel@lists.infradead.org (moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE),
	devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS),
	linux-kernel@vger.kernel.org (open list)
Subject: [PATCH v6 03/13] dt-bindings: PCI: brcmstb: Add 7712 SoC description
Date: Thu, 15 Aug 2024 18:57:16 -0400
Message-Id: <20240815225731.40276-4-james.quinlan@broadcom.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20240815225731.40276-1-james.quinlan@broadcom.com>
References: <20240815225731.40276-1-james.quinlan@broadcom.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

Add description for the 7712 SoC, a Broadcom STB sibling chip of the RPi 5.
The 7712 uses three reset controllers: rescal, for phy reset calibration;
bridge, for the bridge between the PCIe bus and the memory bus; and swinit,
which is a "soft" initialization of the PCIe HW.

Signed-off-by: Jim Quinlan <james.quinlan@broadcom.com>
Reviewed-by: Florian Fainelli <florian.fainelli@broadcom.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../bindings/pci/brcm,stb-pcie.yaml           | 28 +++++++++++++++++--
 1 file changed, 26 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml b/Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml
index 7d2552192153..0925c520195a 100644
--- a/Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml
@@ -21,6 +21,7 @@ properties:
           - brcm,bcm7425-pcie # Broadcom 7425 MIPs
           - brcm,bcm7435-pcie # Broadcom 7435 MIPs
           - brcm,bcm7445-pcie # Broadcom 7445 Arm
+          - brcm,bcm7712-pcie # Broadcom STB sibling of Rpi 5
 
   reg:
     maxItems: 1
@@ -96,10 +97,12 @@ properties:
       maxItems: 3
 
   resets:
-    maxItems: 1
+    minItems: 1
+    maxItems: 3
 
   reset-names:
-    maxItems: 1
+    minItems: 1
+    maxItems: 3
 
 required:
   - compatible
@@ -151,6 +154,27 @@ allOf:
         - resets
         - reset-names
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: brcm,bcm7712-pcie
+    then:
+      properties:
+        resets:
+          minItems: 3
+          maxItems: 3
+
+        reset-names:
+          items:
+            - const: rescal
+            - const: bridge
+            - const: swinit
+
+      required:
+        - resets
+        - reset-names
+
 unevaluatedProperties: false
 
 examples:
-- 
2.17.1


