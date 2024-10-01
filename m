Return-Path: <devicetree+bounces-106662-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id AE53698B439
	for <lists+devicetree@lfdr.de>; Tue,  1 Oct 2024 08:24:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3C2BD1F24473
	for <lists+devicetree@lfdr.de>; Tue,  1 Oct 2024 06:24:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E4AE1BC085;
	Tue,  1 Oct 2024 06:23:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b="BMItdS7o"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com [209.85.210.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C30B41BBBE8
	for <devicetree@vger.kernel.org>; Tue,  1 Oct 2024 06:23:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727763828; cv=none; b=g/5CfWTz+AiasIMM3rlQH0MZu7ubktDz3SDyg4sD4KRS7mHfIqui6I33/0ZdlHDYx4Bm9MoXydOcJrV+9oZt1ZQ59thziEEehWEN1oB5pe+8CfMn7XFHAFTRhdMPK4+zRIfGQUelTY7ajwvVIq98Z1sBCknL9CRfU43gY13NLs4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727763828; c=relaxed/simple;
	bh=WX5aQjNCCCrTYM9KPkGq6aAIGKGnxmCFkFxPqT04C6o=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ahrXqHQpWpjiyINgMwpMwZ7PDfQGUu+ybcAk/px6OyYP9IS4ZoXPO7AxSaQil5O7/I8SIRHN48eJ04JVf84cs3f4Ia3T/W2x1OcWuvd6fe6kAhvnnw/Nsimzx0e6yrAXRVmQLCTV6cmHreoWdjlz6C/NQGk9hjoKGabJB7DPfs8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=tenstorrent.com; spf=pass smtp.mailfrom=tenstorrent.com; dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b=BMItdS7o; arc=none smtp.client-ip=209.85.210.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=tenstorrent.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tenstorrent.com
Received: by mail-pf1-f182.google.com with SMTP id d2e1a72fcca58-71afb729f24so3904952b3a.0
        for <devicetree@vger.kernel.org>; Mon, 30 Sep 2024 23:23:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tenstorrent.com; s=google; t=1727763826; x=1728368626; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=41dV4WalGlMrH9OJptzATrYawUoziHMOxXvyKGnl9z4=;
        b=BMItdS7oZAszJURD4Yy8sZcSES1P1s60abeuAxbHtFwgoV97hb0y93kJ0TEI50Tg50
         xVaiOM+ahRmOfFtmmSNOCIoYUP2mkORonN+Ve9xFMh5VlTBK9BloDNv36UgfVnLX0iAa
         YczxgJePqCuHJlqC1XLeDM/WkOoqJTdTo+ajtVFA+PAcMrCZqtd6rP5XFj6brLAFuMdO
         UJYvwSR2K4d1EXvFqBW2re1QW7FhDhwqcfsdgoQoDkeMcGwh07PX1726QxH0i3Cr1TBH
         c9tP/NRmsxEVvz6fwm9upuVPJdOxXvRaeKVdlpYSqBQVRnXjSb15zVSuwLnPRjR/8Mnt
         si0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727763826; x=1728368626;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=41dV4WalGlMrH9OJptzATrYawUoziHMOxXvyKGnl9z4=;
        b=tn1RNJ/SdtKnrQtDb3tq3fb+fZmmEle1RhOIIpcKhMrwKlTl8aOVouXV8OqdL5gMei
         Um/x0Z5ZPtWojSn6ewMcJC/q3w6fY2mQQcWNwAqW8ovfdw3u066MfUwizNT/pawiZZMK
         0gPjzys5WY8WEjIdil5tcxjJKHPqlh7WJrDcMO04/jXvnNRdGFCWj+8O818d5uTcX1aY
         ZK2tC3mOtk8IkQqlX6lzap1jVv8VpJoxffw9DnS5UiIFapbLRDpZBfgV0SLnlJ6e8c0k
         j+2sLFu9UnAQWdFNSAtW/g3eh+8oQzMxvmPG+FbSJgXCvP5GVJwAuHQZG+RUwoy2MPJ+
         Af1g==
X-Forwarded-Encrypted: i=1; AJvYcCWFYf3YejCZGjF1UpnOw82mrbG95TLwAyoIMmVx3GUDAmwv+ncQujspzwJ2NLjU6v8sbmf4FC7AsOh+@vger.kernel.org
X-Gm-Message-State: AOJu0YxbazjfVz+dj13KExe88zfrJoIpxt9u+C2gjT92Nqap2HVzH/9Z
	AYrFBvdc7QErOuEAQvYideXQWhX7jp9yyk1h/+a+V+kaSRHYSR4fSy5y4b2CNohM7XSY0eT0sa3
	M
X-Google-Smtp-Source: AGHT+IEAXYeopiAHVxnMZKpthZn5FMOwy5YZbD50HnTwzsWunyEhtWyVMfmLnOJUjoSOItfJDzc8Fw==
X-Received: by 2002:a05:6a21:e96:b0:1d2:bc8f:5e73 with SMTP id adf61e73a8af0-1d4fa7a6fc0mr20967670637.38.1727763825695;
        Mon, 30 Sep 2024 23:23:45 -0700 (PDT)
Received: from [127.0.1.1] (71-34-69-82.ptld.qwest.net. [71.34.69.82])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71b264ba68dsm7267804b3a.57.2024.09.30.23.23.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Sep 2024 23:23:45 -0700 (PDT)
From: Drew Fustini <dfustini@tenstorrent.com>
Date: Mon, 30 Sep 2024 23:23:24 -0700
Subject: [PATCH v3 1/3] dt-bindings: net: Add T-HEAD dwmac support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240930-th1520-dwmac-v3-1-ae3e03c225ab@tenstorrent.com>
References: <20240930-th1520-dwmac-v3-0-ae3e03c225ab@tenstorrent.com>
In-Reply-To: <20240930-th1520-dwmac-v3-0-ae3e03c225ab@tenstorrent.com>
To: "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, 
 Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>, 
 Giuseppe Cavallaro <peppe.cavallaro@st.com>, 
 Jose Abreu <joabreu@synopsys.com>, Jisheng Zhang <jszhang@kernel.org>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
 Emil Renner Berthing <emil.renner.berthing@canonical.com>, 
 Drew Fustini <drew@pdp7.com>, Guo Ren <guoren@kernel.org>, 
 Fu Wei <wefu@redhat.com>, Conor Dooley <conor@kernel.org>, 
 Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Drew Fustini <dfustini@tenstorrent.com>
Cc: netdev@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-riscv@lists.infradead.org
X-Mailer: b4 0.14.1

From: Jisheng Zhang <jszhang@kernel.org>

Add documentation to describe the DesginWare-based GMAC controllers in
the T-HEAD TH1520 SoC.

Signed-off-by: Jisheng Zhang <jszhang@kernel.org>
Signed-off-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>
[drew: rename compatible, add apb registers as second reg of gmac node]
Signed-off-by: Drew Fustini <dfustini@tenstorrent.com>
---
 .../devicetree/bindings/net/snps,dwmac.yaml        |  1 +
 .../devicetree/bindings/net/thead,th1520-gmac.yaml | 97 ++++++++++++++++++++++
 MAINTAINERS                                        |  1 +
 3 files changed, 99 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/snps,dwmac.yaml b/Documentation/devicetree/bindings/net/snps,dwmac.yaml
index 4e2ba1bf788c..474ade185033 100644
--- a/Documentation/devicetree/bindings/net/snps,dwmac.yaml
+++ b/Documentation/devicetree/bindings/net/snps,dwmac.yaml
@@ -99,6 +99,7 @@ properties:
         - snps,dwxgmac-2.10
         - starfive,jh7100-dwmac
         - starfive,jh7110-dwmac
+        - thead,th1520-gmac
 
   reg:
     minItems: 1
diff --git a/Documentation/devicetree/bindings/net/thead,th1520-gmac.yaml b/Documentation/devicetree/bindings/net/thead,th1520-gmac.yaml
new file mode 100644
index 000000000000..fef1810b10c4
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/thead,th1520-gmac.yaml
@@ -0,0 +1,97 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/net/thead,th1520-gmac.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: T-HEAD TH1520 GMAC Ethernet controller
+
+maintainers:
+  - Drew Fustini <dfustini@tenstorrent.com>
+
+description: |
+  The TH1520 GMAC is described in the TH1520 Peripheral Interface User Manual
+  https://git.beagleboard.org/beaglev-ahead/beaglev-ahead/-/tree/main/docs
+
+  Features include
+    - Compliant with IEEE802.3 Specification
+    - IEEE 1588-2008 standard for precision networked clock synchronization
+    - Supports 10/100/1000Mbps data transfer rate
+    - Supports RGMII/MII interface
+    - Preamble and start of frame data (SFD) insertion in Transmit path
+    - Preamble and SFD deletion in the Receive path
+    - Automatic CRC and pad generation options for receive frames
+    - MDIO master interface for PHY device configuration and management
+
+  The GMAC Registers consists of two parts
+    - APB registers are used to configure clock frequency/clock enable/clock
+      direction/PHY interface type.
+    - AHB registers are use to configure GMAC core (DesignWare Core part).
+      GMAC core register consists of DMA registers and GMAC registers.
+
+select:
+  properties:
+    compatible:
+      contains:
+        enum:
+          - thead,th1520-gmac
+  required:
+    - compatible
+
+allOf:
+  - $ref: snps,dwmac.yaml#
+
+properties:
+  compatible:
+    items:
+      - enum:
+          - thead,th1520-gmac
+      - const: snps,dwmac-3.70a
+
+  reg:
+    items:
+      - description: DesignWare GMAC IP core registers
+      - description: GMAC APB registers
+
+  reg-names:
+    items:
+      - const: dwmac
+      - const: apb
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - interrupts
+  - interrupt-names
+  - phy-mode
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    gmac0: ethernet@e7070000 {
+        compatible = "thead,th1520-gmac", "snps,dwmac-3.70a";
+        reg = <0xe7070000 0x2000>, <0xec003000 0x1000>;
+        reg-names = "dwmac", "apb";
+        clocks = <&clk 1>, <&clk 2>;
+        clock-names = "stmmaceth", "pclk";
+        interrupts = <66>;
+        interrupt-names = "macirq";
+        phy-mode = "rgmii-id";
+        snps,fixed-burst;
+        snps,axi-config = <&stmmac_axi_setup>;
+        snps,pbl = <32>;
+        phy-handle = <&phy0>;
+
+        mdio {
+            #address-cells = <1>;
+            #size-cells = <0>;
+            compatible = "snps,dwmac-mdio";
+
+            phy0: ethernet-phy@0 {
+                reg = <0>;
+            };
+        };
+    };
diff --git a/MAINTAINERS b/MAINTAINERS
index 67634f0ea30e..9e50107efb37 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -19942,6 +19942,7 @@ L:	linux-riscv@lists.infradead.org
 S:	Maintained
 T:	git https://github.com/pdp7/linux.git
 F:	Documentation/devicetree/bindings/clock/thead,th1520-clk-ap.yaml
+F:	Documentation/devicetree/bindings/net/thead,th1520-gmac.yaml
 F:	Documentation/devicetree/bindings/pinctrl/thead,th1520-pinctrl.yaml
 F:	arch/riscv/boot/dts/thead/
 F:	drivers/clk/thead/clk-th1520-ap.c

-- 
2.34.1


