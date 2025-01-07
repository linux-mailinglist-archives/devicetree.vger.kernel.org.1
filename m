Return-Path: <devicetree+bounces-136143-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A972A04074
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 14:11:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C6AB93A2172
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 13:10:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D87151F0E3B;
	Tue,  7 Jan 2025 13:10:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="eyjrwPId"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 700411E1322
	for <devicetree@vger.kernel.org>; Tue,  7 Jan 2025 13:10:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736255431; cv=none; b=PGmpGUZYX/3h05u1UWtgJpGDwCAXXv7aXolRlF0we9O2A3DMCQM64TYk4dT2NZbGdXuGWb29bejdWjWWdVWfkta0Jpc2pCRy+iak/r57LvgOpmT82lnZIelEt+O9v1eAaqEftldlKCLKA5qqJzYnhTgUQv55xYs0MHPTpZvUgBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736255431; c=relaxed/simple;
	bh=0JeW1euoB3mqtevYwIWIIfurYugfrIFM2IgHcLrHDAY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=cuLQ/LnDdu9CwToUEVmGaHw7D+wGpMX0+elIClJlOKIQiHaiDCyBUb5hxWH4O6hz6Xtxgh+lgGzp1/+Imi1M8grjPlEyaBAT/w3d+cySFFm4GNAe5Jsf+Omwm0I33U2cxefTk9BAubgiboqAwE9xJzttZe3JKhV1EvYqvlfKrq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=eyjrwPId; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-3862e570832so1757859f8f.0
        for <devicetree@vger.kernel.org>; Tue, 07 Jan 2025 05:10:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736255427; x=1736860227; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=9Fl/eQkZJH18zTL1orpXZ1EJV3FIZbVYbkE1L+IoBj4=;
        b=eyjrwPIdcjNd2s+GqArtbZS8Dck8NVVM+3nBYXPkTLgiVdKjBZejnCGsZrl4X0KwmN
         mnG0o3VX7e86dDwHFvGTI5f8DSfYHdEmyKVx+WJ8YqLnGwRbbgxrmuGIEv+iBRsgWc+C
         Xb4PW7Hn6yDtDYYz+Xmxg5ZZt7M9CjLbco6cn8uazvNl/wjPjuZHPx1jrXKoY9O/irXM
         uAQSMO9Ng6K3A7trTBO2ZP9QGumHBXvsjjNaeiRmoqhROtv2sKrNCi7UOvfN0VShgUq1
         yME8Z2ZzHZmNYmQP69RkzP/q3C7wyVFfFIOS30OR9D2NiRhG08eivuOhx6WBgIgSh/kh
         7yGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736255427; x=1736860227;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9Fl/eQkZJH18zTL1orpXZ1EJV3FIZbVYbkE1L+IoBj4=;
        b=XJHC4ZcoeiU+UhiOwJ8ezwKRy6r4GTUwLDwsg1f//iQQBhy4nN2XzlSblwjEfjlevl
         54o4DMg/CrjVXPP/SOs5TBR7n/Y9yrIco6aAtLtOfM7BdjesBIhy8TYPTUj7r6G81iGB
         Kx9r4SuDY3uz7/81S0qHgY6vYAYBBk/cs9IosWIDcwhoYhGayxDDCxr3JM9k4M4IpL1v
         VW4AoCFirRikVsVMEAvqVUdljl2Iq2G8nN10/vVrN5HzEZzWQc276syNmM8ecqdv0iE0
         1oFy5qu9vFeDphsZSdxEmRZ4QMvvrFcYuNhooSMZtTo/zAoT7d5rlug+FAjqyNxuYYpP
         4/+A==
X-Forwarded-Encrypted: i=1; AJvYcCXBW9sbaek7hs8sYSDJftxRL0IflAdoxHCbEFEynT9BscHIG0oeRKYtWF4ntBDHinGyGNBxMF4KfnZz@vger.kernel.org
X-Gm-Message-State: AOJu0YwZVqMGKQgcD7twVAvbdaXjtGW9Jd55w78JpJXTp1mBzd6n/idq
	uRFlDHe40eDd6lBYkPVDUpMZrpoOmbeeooVWaJ3aJGPPcfNQEI3rSw36lGrgX6g=
X-Gm-Gg: ASbGnctXD1k9dZz3/Hw+p/CE0RiVUrGxXnhWFUQuTFUe8a0ReJhEnI8uU2orXG+yycZ
	UTyj1/w+jbnlUKC64c7GlEaOUme0hMzzo32u5pPCmzYVgALMrsdMIPUOjQTT6LphbCHV3v0L8wb
	TZj9fabcP6FND8GsBRHLSUVcIC76ySqrm5nbEX+SxiQXL/IVjb+kz0K76aWfgVozIwXH7xxkDXv
	VgrFKrJPC3xaN1cBIadb2SkYwFIs7QoAd2TwQxvN8g6/epxEEY84a1Os/sSlH50nlNdvoE=
X-Google-Smtp-Source: AGHT+IFfRKTmcWYhwuQK29x6GhgM+3KuBDEhfqEMYqrc2eSiz3KPEdyVrqLgqFdD9VKtsVU243o1zg==
X-Received: by 2002:a05:6000:4022:b0:386:3213:5b78 with SMTP id ffacd0b85a97d-38a221e211dmr19758927f8f.3.1736255426632;
        Tue, 07 Jan 2025 05:10:26 -0800 (PST)
Received: from krzk-bin.. ([178.197.223.165])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38a1c8332absm49772227f8f.38.2025.01.07.05.10.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jan 2025 05:10:26 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Daniel Lezcano <daniel.lezcano@linaro.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Samuel Holland <samuel.holland@sifive.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
	Chris Brandt <chris.brandt@renesas.com>,
	Yoshinori Sato <ysato@users.sourceforge.jp>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Anup Patel <anup@brainfault.org>,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-kernel@lists.infradead.org,
	linux-riscv@lists.infradead.org,
	linux-renesas-soc@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] dt-bindings: timer: Correct indentation and style in DTS example
Date: Tue,  7 Jan 2025 14:10:22 +0100
Message-ID: <20250107131024.246561-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

DTS example in the bindings should be indented with 2- or 4-spaces and
aligned with opening '- |', so correct any differences like 3-spaces or
mixtures 2- and 4-spaces in one binding.

No functional changes here, but saves some comments during reviews of
new patches built on existing code.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../bindings/timer/arm,twd-timer.yaml         |  6 +--
 .../bindings/timer/renesas,cmt.yaml           | 44 +++++++++----------
 .../bindings/timer/renesas,em-sti.yaml        | 10 ++---
 .../bindings/timer/renesas,mtu2.yaml          | 14 +++---
 .../bindings/timer/renesas,ostm.yaml          | 10 ++---
 .../bindings/timer/renesas,tmu.yaml           | 22 +++++-----
 .../bindings/timer/renesas,tpu.yaml           |  8 ++--
 .../bindings/timer/sifive,clint.yaml          |  2 +-
 8 files changed, 58 insertions(+), 58 deletions(-)

diff --git a/Documentation/devicetree/bindings/timer/arm,twd-timer.yaml b/Documentation/devicetree/bindings/timer/arm,twd-timer.yaml
index 5684df6448ef..eb1127352c7b 100644
--- a/Documentation/devicetree/bindings/timer/arm,twd-timer.yaml
+++ b/Documentation/devicetree/bindings/timer/arm,twd-timer.yaml
@@ -50,7 +50,7 @@ examples:
     #include <dt-bindings/interrupt-controller/arm-gic.h>
 
     timer@2c000600 {
-            compatible = "arm,arm11mp-twd-timer";
-            reg = <0x2c000600 0x20>;
-            interrupts = <GIC_PPI 13 0xf01>;
+        compatible = "arm,arm11mp-twd-timer";
+        reg = <0x2c000600 0x20>;
+        interrupts = <GIC_PPI 13 0xf01>;
     };
diff --git a/Documentation/devicetree/bindings/timer/renesas,cmt.yaml b/Documentation/devicetree/bindings/timer/renesas,cmt.yaml
index 5e09c04da30e..260b05f213e6 100644
--- a/Documentation/devicetree/bindings/timer/renesas,cmt.yaml
+++ b/Documentation/devicetree/bindings/timer/renesas,cmt.yaml
@@ -178,29 +178,29 @@ examples:
     #include <dt-bindings/interrupt-controller/arm-gic.h>
     #include <dt-bindings/power/r8a7790-sysc.h>
     cmt0: timer@ffca0000 {
-            compatible = "renesas,r8a7790-cmt0", "renesas,rcar-gen2-cmt0";
-            reg = <0xffca0000 0x1004>;
-            interrupts = <GIC_SPI 142 IRQ_TYPE_LEVEL_HIGH>,
-                         <GIC_SPI 143 IRQ_TYPE_LEVEL_HIGH>;
-            clocks = <&cpg CPG_MOD 124>;
-            clock-names = "fck";
-            power-domains = <&sysc R8A7790_PD_ALWAYS_ON>;
-            resets = <&cpg 124>;
+        compatible = "renesas,r8a7790-cmt0", "renesas,rcar-gen2-cmt0";
+        reg = <0xffca0000 0x1004>;
+        interrupts = <GIC_SPI 142 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 143 IRQ_TYPE_LEVEL_HIGH>;
+        clocks = <&cpg CPG_MOD 124>;
+        clock-names = "fck";
+        power-domains = <&sysc R8A7790_PD_ALWAYS_ON>;
+        resets = <&cpg 124>;
     };
 
     cmt1: timer@e6130000 {
-            compatible = "renesas,r8a7790-cmt1", "renesas,rcar-gen2-cmt1";
-            reg = <0xe6130000 0x1004>;
-            interrupts = <GIC_SPI 120 IRQ_TYPE_LEVEL_HIGH>,
-                         <GIC_SPI 121 IRQ_TYPE_LEVEL_HIGH>,
-                         <GIC_SPI 122 IRQ_TYPE_LEVEL_HIGH>,
-                         <GIC_SPI 123 IRQ_TYPE_LEVEL_HIGH>,
-                         <GIC_SPI 124 IRQ_TYPE_LEVEL_HIGH>,
-                         <GIC_SPI 125 IRQ_TYPE_LEVEL_HIGH>,
-                         <GIC_SPI 126 IRQ_TYPE_LEVEL_HIGH>,
-                         <GIC_SPI 127 IRQ_TYPE_LEVEL_HIGH>;
-            clocks = <&cpg CPG_MOD 329>;
-            clock-names = "fck";
-            power-domains = <&sysc R8A7790_PD_ALWAYS_ON>;
-            resets = <&cpg 329>;
+        compatible = "renesas,r8a7790-cmt1", "renesas,rcar-gen2-cmt1";
+        reg = <0xe6130000 0x1004>;
+        interrupts = <GIC_SPI 120 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 121 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 122 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 123 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 124 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 125 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 126 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 127 IRQ_TYPE_LEVEL_HIGH>;
+        clocks = <&cpg CPG_MOD 329>;
+        clock-names = "fck";
+        power-domains = <&sysc R8A7790_PD_ALWAYS_ON>;
+        resets = <&cpg 329>;
     };
diff --git a/Documentation/devicetree/bindings/timer/renesas,em-sti.yaml b/Documentation/devicetree/bindings/timer/renesas,em-sti.yaml
index 233d74d5402c..a7385d865bca 100644
--- a/Documentation/devicetree/bindings/timer/renesas,em-sti.yaml
+++ b/Documentation/devicetree/bindings/timer/renesas,em-sti.yaml
@@ -38,9 +38,9 @@ examples:
   - |
     #include <dt-bindings/interrupt-controller/arm-gic.h>
     timer@e0180000 {
-            compatible = "renesas,em-sti";
-            reg = <0xe0180000 0x54>;
-            interrupts = <GIC_SPI 125 IRQ_TYPE_LEVEL_HIGH>;
-            clocks = <&sti_sclk>;
-            clock-names = "sclk";
+        compatible = "renesas,em-sti";
+        reg = <0xe0180000 0x54>;
+        interrupts = <GIC_SPI 125 IRQ_TYPE_LEVEL_HIGH>;
+        clocks = <&sti_sclk>;
+        clock-names = "sclk";
     };
diff --git a/Documentation/devicetree/bindings/timer/renesas,mtu2.yaml b/Documentation/devicetree/bindings/timer/renesas,mtu2.yaml
index 15d8dddf4ae9..e56c12f03f72 100644
--- a/Documentation/devicetree/bindings/timer/renesas,mtu2.yaml
+++ b/Documentation/devicetree/bindings/timer/renesas,mtu2.yaml
@@ -66,11 +66,11 @@ examples:
     #include <dt-bindings/clock/r7s72100-clock.h>
     #include <dt-bindings/interrupt-controller/arm-gic.h>
     mtu2: timer@fcff0000 {
-            compatible = "renesas,mtu2-r7s72100", "renesas,mtu2";
-            reg = <0xfcff0000 0x400>;
-            interrupts = <GIC_SPI 107 IRQ_TYPE_LEVEL_HIGH>;
-            interrupt-names = "tgi0a";
-            clocks = <&mstp3_clks R7S72100_CLK_MTU2>;
-            clock-names = "fck";
-            power-domains = <&cpg_clocks>;
+        compatible = "renesas,mtu2-r7s72100", "renesas,mtu2";
+        reg = <0xfcff0000 0x400>;
+        interrupts = <GIC_SPI 107 IRQ_TYPE_LEVEL_HIGH>;
+        interrupt-names = "tgi0a";
+        clocks = <&mstp3_clks R7S72100_CLK_MTU2>;
+        clock-names = "fck";
+        power-domains = <&cpg_clocks>;
     };
diff --git a/Documentation/devicetree/bindings/timer/renesas,ostm.yaml b/Documentation/devicetree/bindings/timer/renesas,ostm.yaml
index e8c642166462..9ba858f094ab 100644
--- a/Documentation/devicetree/bindings/timer/renesas,ostm.yaml
+++ b/Documentation/devicetree/bindings/timer/renesas,ostm.yaml
@@ -71,9 +71,9 @@ examples:
     #include <dt-bindings/clock/r7s72100-clock.h>
     #include <dt-bindings/interrupt-controller/arm-gic.h>
     ostm0: timer@fcfec000 {
-            compatible = "renesas,r7s72100-ostm", "renesas,ostm";
-            reg = <0xfcfec000 0x30>;
-            interrupts = <GIC_SPI 102 IRQ_TYPE_EDGE_RISING>;
-            clocks = <&mstp5_clks R7S72100_CLK_OSTM0>;
-            power-domains = <&cpg_clocks>;
+        compatible = "renesas,r7s72100-ostm", "renesas,ostm";
+        reg = <0xfcfec000 0x30>;
+        interrupts = <GIC_SPI 102 IRQ_TYPE_EDGE_RISING>;
+        clocks = <&mstp5_clks R7S72100_CLK_OSTM0>;
+        power-domains = <&cpg_clocks>;
     };
diff --git a/Documentation/devicetree/bindings/timer/renesas,tmu.yaml b/Documentation/devicetree/bindings/timer/renesas,tmu.yaml
index 75b0e7c70b62..b1229595acfb 100644
--- a/Documentation/devicetree/bindings/timer/renesas,tmu.yaml
+++ b/Documentation/devicetree/bindings/timer/renesas,tmu.yaml
@@ -122,15 +122,15 @@ examples:
     #include <dt-bindings/interrupt-controller/arm-gic.h>
     #include <dt-bindings/power/r8a7779-sysc.h>
     tmu0: timer@ffd80000 {
-            compatible = "renesas,tmu-r8a7779", "renesas,tmu";
-            reg = <0xffd80000 0x30>;
-            interrupts = <GIC_SPI 32 IRQ_TYPE_LEVEL_HIGH>,
-                         <GIC_SPI 33 IRQ_TYPE_LEVEL_HIGH>,
-                         <GIC_SPI 34 IRQ_TYPE_LEVEL_HIGH>,
-                         <GIC_SPI 35 IRQ_TYPE_LEVEL_HIGH>;
-            interrupt-names = "tuni0", "tuni1", "tuni2", "ticpi2";
-            clocks = <&mstp0_clks R8A7779_CLK_TMU0>;
-            clock-names = "fck";
-            power-domains = <&sysc R8A7779_PD_ALWAYS_ON>;
-            #renesas,channels = <3>;
+        compatible = "renesas,tmu-r8a7779", "renesas,tmu";
+        reg = <0xffd80000 0x30>;
+        interrupts = <GIC_SPI 32 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 33 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 34 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 35 IRQ_TYPE_LEVEL_HIGH>;
+        interrupt-names = "tuni0", "tuni1", "tuni2", "ticpi2";
+        clocks = <&mstp0_clks R8A7779_CLK_TMU0>;
+        clock-names = "fck";
+        power-domains = <&sysc R8A7779_PD_ALWAYS_ON>;
+        #renesas,channels = <3>;
     };
diff --git a/Documentation/devicetree/bindings/timer/renesas,tpu.yaml b/Documentation/devicetree/bindings/timer/renesas,tpu.yaml
index 01554dff23d8..7a473b302775 100644
--- a/Documentation/devicetree/bindings/timer/renesas,tpu.yaml
+++ b/Documentation/devicetree/bindings/timer/renesas,tpu.yaml
@@ -49,8 +49,8 @@ additionalProperties: false
 examples:
   - |
     tpu: tpu@ffffe0 {
-            compatible = "renesas,tpu";
-            reg = <0xffffe0 16>, <0xfffff0 12>;
-            clocks = <&pclk>;
-            clock-names = "fck";
+        compatible = "renesas,tpu";
+        reg = <0xffffe0 16>, <0xfffff0 12>;
+        clocks = <&pclk>;
+        clock-names = "fck";
     };
diff --git a/Documentation/devicetree/bindings/timer/sifive,clint.yaml b/Documentation/devicetree/bindings/timer/sifive,clint.yaml
index b42d43d2de48..d6a73be66765 100644
--- a/Documentation/devicetree/bindings/timer/sifive,clint.yaml
+++ b/Documentation/devicetree/bindings/timer/sifive,clint.yaml
@@ -76,6 +76,6 @@ examples:
                             <&cpu2intc 3>, <&cpu2intc 7>,
                             <&cpu3intc 3>, <&cpu3intc 7>,
                             <&cpu4intc 3>, <&cpu4intc 7>;
-       reg = <0x2000000 0x10000>;
+      reg = <0x2000000 0x10000>;
     };
 ...
-- 
2.43.0


