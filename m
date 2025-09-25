Return-Path: <devicetree+bounces-221523-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id F26CDBA0952
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 18:24:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1142A1C214F3
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 16:24:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 237E430AAC6;
	Thu, 25 Sep 2025 16:23:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Uifd6ReT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7629C3081BB
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 16:23:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758817435; cv=none; b=u/AGJ8Er+K9PfvcUOofEyEwo4P2lSsDl2Z/Shu77R7eSiuAlDcX2rRSSAIDZDIS4Z9+aWQFlt4iMCMpSCQjx813dTYsuLvnTwDKo1cnpS+7OdXnKe+DfJCHcF+XelOXCl1ih/BURtNgWnCwN0HbUCy8/kFrEXrizbpMI8KzEtuI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758817435; c=relaxed/simple;
	bh=wI2EgBAstfuh0Lwsj21CyJ/ou9l4B9diH54Sb1sikXo=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ft8PSohZ19VV0Rzws416qIqJp+EEELLooGi+5edWFFt6A9m+J/4AcBmmyJluCaDdcTT7iThykCkgRnL2fIN+q70OU51PFoJae4n2T5jCFKJsBUwG3nTtqnbEdK1y9t9LX1a9WXLEX3rwme/+HeWQGsqN1jja+P2HoNJm62nVP6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Uifd6ReT; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-46e34bd8eb2so9359355e9.3
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 09:23:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758817431; x=1759422231; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ojrSKhmG/fxO+GWCa4ng/6S+zCuiK4Lwk2+N5nW6KeM=;
        b=Uifd6ReTOoiTKNi4QE0vkUHTl245ESxhb8Djo5pMbndfskumdfSYzrEuD2d5xFWfgb
         y+MwpvfgJPlGAyaSCjO9ciUdMaFhhQABZflnfctYSIYwni1DX7ryWsDbBRoxIXIa+4dr
         HZH8Wsy+x4WN8803jYttJug1ZJxAOoO9tOn4zAjYaUf3q8+lIytC7+CWl8lSGJqU+s7U
         CjCiqfQkN8z++hWxvxCq+/4ILveWEiAtUj6fqyClXvCDF2WVOKFSQmSSSVhGtS3yfF2F
         qZC4/Uyxi+LiiSAf/o9ka0jFeXQ+uhDIFOvEmn3n1MGu4nWRaAtxT19wWc37P0+lt4Xe
         p7tA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758817431; x=1759422231;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ojrSKhmG/fxO+GWCa4ng/6S+zCuiK4Lwk2+N5nW6KeM=;
        b=pxcG4soA4ApvrvYEsHDW1L6jo7y4YI2qXyZ20yzVzz5y9eCvxj6XsT/Kf1SXqX604P
         IA1ko+ygbC1wfc0RGJYZTmyxSMXteyNbe73CqCFiSty2RqLi0ska90GFgg7DhJIhPqeR
         2Dk92tB1wo2YuLQ+LzmxlU3m9nHRFvQU9ZUdU9dalxAnGVaIoAwWgHp6Q9EajzhBfa4n
         F+YgM91lYkLN+DnF0DqKil4bCJE63g6kPaMtSDpvZGvHUTR134atekfh+85EJeAcidk1
         7xPdzVjZU/5NllaO+SLBU8HDH17G/a1WGNLtvWw4PaxZL7C/c8y7Lf47IswBmYKiakzD
         3K6A==
X-Forwarded-Encrypted: i=1; AJvYcCWJVgyYEX+1rl5strTLLToeNitvM61sd0L49mfMLlVO82WzC/qmIzWK79p2A95buWz4t11a8YCfWTO5@vger.kernel.org
X-Gm-Message-State: AOJu0YyXmhZxTDahGjSu4jmjX2SLFtAbN9qsqJec3frBw/+LbBNlH7YA
	GrVmJtIWjbKD5f+JWSQY00JZ0VnI9edBy1aZWgQLaHwGUd0gMeX6ezG8
X-Gm-Gg: ASbGnct7tplQ6zG2eRDVVGCJ4XMZ5RHftXTrs50oFIGiTqobiQq0S1uyOz3zxGtyFRX
	gYZYEI+FFaPor26a3TfCWS2GV9TJhItulb5gUz5c4Vu3FJLnvNKYLrlGG0EnOEzcpE5atmoJQjB
	5xIb0B6SA7MK189L3HhVHGUYeWnASb6zpTaZzi0w52TUzhCgMkVCwDU8z+Yhn6je8xz5dyZ3LTc
	SnXFgzyfE3id0CtQMA3htzDZalqgbZDc487Z+2uaQaR3t9UZeoFSn3i7F5M6oT8lHaAoIfxkcDH
	XgdiCGumQ4jcdW4byDiWj6I0lzBUdvjmuwKshf2sL9s4jnYneXHBrvUTYLElnpZfyXsHN9Hy9er
	LtWT82IwzEzjj4ac6bc2csZoz9N54IpnwYBU5HUbCshd5blFSFMxr6wyMaVDTea5ggihun7c=
X-Google-Smtp-Source: AGHT+IGoQEBIl1V2qVvXVjckSIeQJSaJ6Q4rOdOHbSTXBeT0yFthNPrs3b6Al9NZzt3gqkVk7xB4/w==
X-Received: by 2002:a05:600c:5290:b0:46e:394b:4991 with SMTP id 5b1f17b1804b1-46e394b4b1emr10436875e9.11.1758817430492;
        Thu, 25 Sep 2025 09:23:50 -0700 (PDT)
Received: from Ansuel-XPS24 (host-95-249-236-54.retail.telecomitalia.it. [95.249.236.54])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-40fb985e080sm3534819f8f.24.2025.09.25.09.23.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Sep 2025 09:23:50 -0700 (PDT)
From: Christian Marangi <ansuelsmth@gmail.com>
To: Ryder Lee <ryder.lee@mediatek.com>,
	Jianjun Wang <jianjun.wang@mediatek.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Christian Marangi <ansuelsmth@gmail.com>,
	linux-pci@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	upstream@airoha.com
Subject: [PATCH v3 3/4] dt-bindings: PCI: mediatek: Add support for Airoha AN7583
Date: Thu, 25 Sep 2025 18:23:17 +0200
Message-ID: <20250925162332.9794-4-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20250925162332.9794-1-ansuelsmth@gmail.com>
References: <20250925162332.9794-1-ansuelsmth@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Introduce Airoha AN7583 SoC compatible in mediatek PCIe controller
binding.

Similar to GEN3, the Airoha AN7583 GEN2 PCIe controller require the
PBUS csr property to permit the correct functionality of the PCIe
controller.

Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
---
 .../bindings/pci/mediatek-pcie.yaml           | 110 ++++++++++++++++++
 1 file changed, 110 insertions(+)

diff --git a/Documentation/devicetree/bindings/pci/mediatek-pcie.yaml b/Documentation/devicetree/bindings/pci/mediatek-pcie.yaml
index e3afedb77a01..46000049a6c5 100644
--- a/Documentation/devicetree/bindings/pci/mediatek-pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/mediatek-pcie.yaml
@@ -13,6 +13,7 @@ properties:
   compatible:
     oneOf:
       - enum:
+          - airoha,an7583-pcie
           - mediatek,mt2712-pcie
           - mediatek,mt7622-pcie
           - mediatek,mt7629-pcie
@@ -61,6 +62,17 @@ properties:
   power-domains:
     maxItems: 1
 
+  mediatek,pbus-csr:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    items:
+      - items:
+          - description: phandle to pbus-csr syscon
+          - description: offset of pbus-csr base address register
+          - description: offset of pbus-csr base address mask register
+    description:
+      Phandle with two arguments to the syscon node used to detect if
+      a given address is accessible on PCIe controller.
+
   '#interrupt-cells':
     const: 1
 
@@ -96,6 +108,45 @@ required:
 allOf:
   - $ref: /schemas/pci/pci-host-bridge.yaml#
 
+  - if:
+      properties:
+        compatible:
+          const: airoha,an7583-pcie
+    then:
+      properties:
+        reg:
+          maxItems: 1
+
+        reg-names:
+          const: port1
+
+        clocks:
+          maxItems: 1
+
+        clock-names:
+          const: sys_ck1
+
+        reset:
+          maxItems: 1
+
+        reset-names:
+          const: pcie-rst1
+
+        phys:
+          maxItems: 1
+
+        phy-names:
+          const: pcie-phy1
+
+        power-domain: false
+
+      required:
+        - resets
+        - reset-names
+        - phys
+        - phy-names
+        - mediatek,pbus-csr
+
   - if:
       properties:
         compatible:
@@ -131,6 +182,8 @@ allOf:
 
         power-domains: false
 
+        mediatek,pbus-csr: false
+
       required:
         - phys
         - phy-names
@@ -169,6 +222,8 @@ allOf:
 
         phy-names: false
 
+        mediatek,pbus-csr: false
+
       required:
         - power-domains
 
@@ -209,6 +264,8 @@ allOf:
           items:
             - enum: [ pcie-phy0, pcie-phy1 ]
 
+        mediatek,pbus-csr: false
+
       required:
         - power-domains
 
@@ -243,6 +300,8 @@ allOf:
 
         power-domain: false
 
+        mediatek,pbus-csr: false
+
 unevaluatedProperties: false
 
 examples:
@@ -402,3 +461,54 @@ examples:
             };
         };
     };
+
+  # AN7583
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/clock/en7523-clk.h>
+
+    soc_3 {
+        #address-cells = <2>;
+        #size-cells = <2>;
+
+        pcie@1fa92000 {
+            compatible = "airoha,an7583-pcie";
+            device_type = "pci";
+            linux,pci-domain = <1>;
+            #address-cells = <3>;
+            #size-cells = <2>;
+
+            reg = <0x0 0x1fa92000 0x0 0x1670>;
+            reg-names = "port1";
+
+            clocks = <&scuclk EN7523_CLK_PCIE>;
+            clock-names = "sys_ck1";
+
+            phys = <&pciephy>;
+            phy-names = "pcie-phy1";
+
+            ranges = <0x02000000 0 0x24000000 0x0 0x24000000 0 0x4000000>;
+
+            resets = <&scuclk>; /* AN7583_PCIE1_RST */
+            reset-names = "pcie-rst1";
+
+            mediatek,pbus-csr = <&pbus_csr 0x8 0xc>;
+
+            interrupts = <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>;
+            interrupt-names = "pcie_irq";
+            bus-range = <0x00 0xff>;
+            #interrupt-cells = <1>;
+            interrupt-map-mask = <0 0 0 7>;
+            interrupt-map = <0 0 0 1 &pcie_intc1 0>,
+                            <0 0 0 2 &pcie_intc1 1>,
+                            <0 0 0 3 &pcie_intc1 2>,
+                            <0 0 0 4 &pcie_intc1 3>;
+
+            pcie_intc1_4: interrupt-controller {
+                interrupt-controller;
+                #address-cells = <0>;
+                #interrupt-cells = <1>;
+            };
+        };
+    };
-- 
2.51.0


