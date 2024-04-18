Return-Path: <devicetree+bounces-60544-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 626D38A9A12
	for <lists+devicetree@lfdr.de>; Thu, 18 Apr 2024 14:44:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8530BB20CDC
	for <lists+devicetree@lfdr.de>; Thu, 18 Apr 2024 12:44:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 31CE51607A2;
	Thu, 18 Apr 2024 12:44:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="UkFm4u9r"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CB3515F323
	for <devicetree@vger.kernel.org>; Thu, 18 Apr 2024 12:43:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713444241; cv=none; b=cqQO2WYk1UNMtYUNcFByzVuN1V7jKJhEtEAXJTukuOsML3U/E7aZZtnvtKSZ75ntEUnFWMymYMa0SWXKJX14gEpD9IDkIjvJKJ8dgHTrPn42/OPoHRIosMGZBaMy0Z0ye5vt8Mu8+yIhrhQeczkzn4Ww8uLUUCMDG88Ucc2lF5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713444241; c=relaxed/simple;
	bh=Ebkz2UrL5WmXTvDeVMjwelCR0dBJEenoSOcmBz5PT+8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=ifrMQIqr46+ayW4xi6RYKJlXG97YnFfZ9Oq5V+c4jzwzNQtL4Kbb4K2GMdsivOrt4Mm7GI7d+vNa8zsbP2ZX8eK7e16eJL5G1l+l+e0OsvqMIV2wDx5aVETJubCUxDRDE6lEMEj8/JCdYolwJInFuRHoYsnqF0zRfQj0/PpADCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=UkFm4u9r; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-346a5dea2f4so182908f8f.1
        for <devicetree@vger.kernel.org>; Thu, 18 Apr 2024 05:43:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1713444236; x=1714049036; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oAl9pLtTmdQ7M+Wok6zdTTXvycSGmEGoH9Hb6PFq4BA=;
        b=UkFm4u9rdUYm6YqVhhI0dKU2KtlxOJnkNcmAjuNTxs3gOriQXEmj6ZeK8Y5zMEa7zC
         cikf0ggfc8OHDI6UU6n8Q+DEdW5uxmcl6ShroSMpZ9ERAC+1oHUkGmc4DOyqD9JfLZow
         zuBGC+3HSwjjYDTPJmOcmzlbY746cBCZ91zRfot7SAK6Xptt/X0pu7opAKS+jFXaUVa2
         rmgRTxz1FPpCb2J3MuPTZQzFkK6X0ZqirsHvW4/dMLQdMd4+N/ZdawHKNTFLXr4fqE23
         rNvHnVFK8jReFeE2+yxGM+Ksp19xEwPZ51PSCUn1j84TjZl4mNdkd9k3iTEA4dfK7QOF
         BEWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713444236; x=1714049036;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oAl9pLtTmdQ7M+Wok6zdTTXvycSGmEGoH9Hb6PFq4BA=;
        b=VGSOjOeHyckAsP9gsDl8DqXe1GddNq8KkCM0D09Fu6X7RojRze3WfUj2Bc6ajka10L
         EZh4I8a60qPa5BVSv/mJY14fF3wqh0x75Qv7vCsTQM328BMrn6YS1tUXS2HHaKk2f3GS
         G2OUv6sVSkY4d10/0hXBOvx6ya0Wvt0zV+WOx1hJ7SL4MtNmaXFJ184V6uCZkvaY0fyo
         G8qLB+XrGUzf16vx9qAacwc47L7KEPpU/bFc0G2AtHfB4nnKEK4dBqITeOKInhS/rMrA
         PI2DO1AaSTsdauUExepENW96jv2tC/aU66g2C0H/W3OKpgMbaOM7putNIEzbzIRTkKXB
         bK2w==
X-Forwarded-Encrypted: i=1; AJvYcCU57p6KdsvTbDI0OkXrVY+qFWWShjltwP1SmMcuU4rodkmOdiDmKIdQF+EGrSiXfhd1Ab5c6tf8FuccZGZoCwVbFC4ngInGvRSdrg==
X-Gm-Message-State: AOJu0YzGHNez4HVeUtFqWd2HuRWgHyyvvfTRVIZ2jWKMrx3Hpae0OFZn
	IVFhShM2K25sXeX2tyDPoeT+bqvFeIe/lbMsNlAevhDCgagpl2dq10nkxL24GA4=
X-Google-Smtp-Source: AGHT+IFKhZshgTTpNugctUIBKjo1ziNnne6N8VGVQW4Spy090KZRQKoznik9yMPwCUs6CVPn34LP8A==
X-Received: by 2002:a5d:5989:0:b0:34a:513:5c46 with SMTP id n9-20020a5d5989000000b0034a05135c46mr1797065wri.5.1713444236215;
        Thu, 18 Apr 2024 05:43:56 -0700 (PDT)
Received: from carbon-x1.. ([2a01:e0a:999:a3a0:7b64:4d1d:16d8:e38b])
        by smtp.gmail.com with ESMTPSA id bi18-20020a05600c3d9200b00418d5b16fa2sm3373412wmb.30.2024.04.18.05.43.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Apr 2024 05:43:55 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20L=C3=A9ger?= <cleger@rivosinc.com>
To: Jonathan Corbet <corbet@lwn.net>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Conor Dooley <conor@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Anup Patel <anup@brainfault.org>,
	Shuah Khan <shuah@kernel.org>
Cc: =?UTF-8?q?Cl=C3=A9ment=20L=C3=A9ger?= <cleger@rivosinc.com>,
	Atish Patra <atishp@atishpatra.org>,
	linux-doc@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	kvm@vger.kernel.org,
	kvm-riscv@lists.infradead.org,
	linux-kselftest@vger.kernel.org
Subject: [PATCH v2 02/12] riscv: dts: enable Zc* extensions when needed
Date: Thu, 18 Apr 2024 14:42:25 +0200
Message-ID: <20240418124300.1387978-3-cleger@rivosinc.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240418124300.1387978-1-cleger@rivosinc.com>
References: <20240418124300.1387978-1-cleger@rivosinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

The Zc* spec states that:

"The C extension is the superset of the following extensions:
 - Zca
 - Zcf if F is specified (RV32 only)
 - Zcd if D is specified
 As C defines the same instructions as Zca, Zcf and Zcd, the rule is that:
 - C always implies Zca
 - C+F implies Zcf (RV32 only)"

Add these extensions to existing device-trees that contains "c"
extension in "riscv,isa-extensions".

Signed-off-by: Clément Léger <cleger@rivosinc.com>
---
 arch/riscv/boot/dts/allwinner/sun20i-d1s.dtsi |   4 +-
 arch/riscv/boot/dts/microchip/mpfs.dtsi       |  20 +-
 arch/riscv/boot/dts/renesas/r9a07g043f.dtsi   |   4 +-
 arch/riscv/boot/dts/sifive/fu540-c000.dtsi    |  20 +-
 arch/riscv/boot/dts/sifive/fu740-c000.dtsi    |  20 +-
 arch/riscv/boot/dts/sophgo/cv18xx.dtsi        |   4 +-
 arch/riscv/boot/dts/sophgo/sg2042-cpus.dtsi   | 256 +++++++++---------
 arch/riscv/boot/dts/starfive/jh7100.dtsi      |   8 +-
 arch/riscv/boot/dts/starfive/jh7110.dtsi      |  20 +-
 arch/riscv/boot/dts/thead/th1520.dtsi         |  16 +-
 10 files changed, 186 insertions(+), 186 deletions(-)

diff --git a/arch/riscv/boot/dts/allwinner/sun20i-d1s.dtsi b/arch/riscv/boot/dts/allwinner/sun20i-d1s.dtsi
index 64c3c2e6cbe0..05e0e5f0eed7 100644
--- a/arch/riscv/boot/dts/allwinner/sun20i-d1s.dtsi
+++ b/arch/riscv/boot/dts/allwinner/sun20i-d1s.dtsi
@@ -26,8 +26,8 @@ cpu0: cpu@0 {
 			operating-points-v2 = <&opp_table_cpu>;
 			riscv,isa = "rv64imafdc";
 			riscv,isa-base = "rv64i";
-			riscv,isa-extensions = "i", "m", "a", "f", "d", "c", "zicntr", "zicsr",
-					       "zifencei", "zihpm";
+			riscv,isa-extensions = "i", "m", "a", "f", "d", "c", "zca", "zcd", "zicntr",
+					       "zicsr", "zifencei", "zihpm";
 			#cooling-cells = <2>;
 
 			cpu0_intc: interrupt-controller {
diff --git a/arch/riscv/boot/dts/microchip/mpfs.dtsi b/arch/riscv/boot/dts/microchip/mpfs.dtsi
index 9883ca3554c5..82ac84afdda7 100644
--- a/arch/riscv/boot/dts/microchip/mpfs.dtsi
+++ b/arch/riscv/boot/dts/microchip/mpfs.dtsi
@@ -24,8 +24,8 @@ cpu0: cpu@0 {
 			reg = <0>;
 			riscv,isa = "rv64imac";
 			riscv,isa-base = "rv64i";
-			riscv,isa-extensions = "i", "m", "a", "c", "zicntr", "zicsr", "zifencei",
-					       "zihpm";
+			riscv,isa-extensions = "i", "m", "a", "c", "zca", "zicntr", "zicsr",
+					       "zifencei", "zihpm";
 			clocks = <&clkcfg CLK_CPU>;
 			status = "disabled";
 
@@ -53,8 +53,8 @@ cpu1: cpu@1 {
 			reg = <1>;
 			riscv,isa = "rv64imafdc";
 			riscv,isa-base = "rv64i";
-			riscv,isa-extensions = "i", "m", "a", "f", "d", "c", "zicntr", "zicsr",
-					       "zifencei", "zihpm";
+			riscv,isa-extensions = "i", "m", "a", "f", "d", "c", "zca", "zcd", "zicntr",
+					       "zicsr", "zifencei", "zihpm";
 			clocks = <&clkcfg CLK_CPU>;
 			tlb-split;
 			next-level-cache = <&cctrllr>;
@@ -84,8 +84,8 @@ cpu2: cpu@2 {
 			reg = <2>;
 			riscv,isa = "rv64imafdc";
 			riscv,isa-base = "rv64i";
-			riscv,isa-extensions = "i", "m", "a", "f", "d", "c", "zicntr", "zicsr",
-					       "zifencei", "zihpm";
+			riscv,isa-extensions = "i", "m", "a", "f", "d", "c", "zca", "zcd", "zicntr",
+					       "zicsr", "zifencei", "zihpm";
 			clocks = <&clkcfg CLK_CPU>;
 			tlb-split;
 			next-level-cache = <&cctrllr>;
@@ -115,8 +115,8 @@ cpu3: cpu@3 {
 			reg = <3>;
 			riscv,isa = "rv64imafdc";
 			riscv,isa-base = "rv64i";
-			riscv,isa-extensions = "i", "m", "a", "f", "d", "c", "zicntr", "zicsr",
-					       "zifencei", "zihpm";
+			riscv,isa-extensions = "i", "m", "a", "f", "d", "c", "zca", "zcd", "zicntr",
+					       "zicsr", "zifencei", "zihpm";
 			clocks = <&clkcfg CLK_CPU>;
 			tlb-split;
 			next-level-cache = <&cctrllr>;
@@ -146,8 +146,8 @@ cpu4: cpu@4 {
 			reg = <4>;
 			riscv,isa = "rv64imafdc";
 			riscv,isa-base = "rv64i";
-			riscv,isa-extensions = "i", "m", "a", "f", "d", "c", "zicntr", "zicsr",
-					       "zifencei", "zihpm";
+			riscv,isa-extensions = "i", "m", "a", "f", "d", "c", "zca", "zcd", "zicntr",
+					       "zicsr", "zifencei", "zihpm";
 			clocks = <&clkcfg CLK_CPU>;
 			tlb-split;
 			next-level-cache = <&cctrllr>;
diff --git a/arch/riscv/boot/dts/renesas/r9a07g043f.dtsi b/arch/riscv/boot/dts/renesas/r9a07g043f.dtsi
index f35324b9173c..b5e06fbfdf65 100644
--- a/arch/riscv/boot/dts/renesas/r9a07g043f.dtsi
+++ b/arch/riscv/boot/dts/renesas/r9a07g043f.dtsi
@@ -26,8 +26,8 @@ cpu0: cpu@0 {
 			riscv,isa = "rv64imafdc";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "zicntr", "zicsr", "zifencei",
-					       "zihpm", "xandespmu";
+					       "zca", "zcd", "zicntr", "zicsr",
+					       "zifencei", "zihpm", "xandespmu";
 			mmu-type = "riscv,sv39";
 			i-cache-size = <0x8000>;
 			i-cache-line-size = <0x40>;
diff --git a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
index 156330a9bbf3..2872515dab17 100644
--- a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
+++ b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
@@ -31,8 +31,8 @@ cpu0: cpu@0 {
 			reg = <0>;
 			riscv,isa = "rv64imac";
 			riscv,isa-base = "rv64i";
-			riscv,isa-extensions = "i", "m", "a", "c", "zicntr", "zicsr", "zifencei",
-					       "zihpm";
+			riscv,isa-extensions = "i", "m", "a", "c", "zca", "zicntr", "zicsr",
+					       "zifencei", "zihpm";
 			status = "disabled";
 			cpu0_intc: interrupt-controller {
 				#interrupt-cells = <1>;
@@ -57,8 +57,8 @@ cpu1: cpu@1 {
 			reg = <1>;
 			riscv,isa = "rv64imafdc";
 			riscv,isa-base = "rv64i";
-			riscv,isa-extensions = "i", "m", "a", "f", "d", "c", "zicntr", "zicsr",
-					       "zifencei", "zihpm";
+			riscv,isa-extensions = "i", "m", "a", "f", "d", "c", "zca", "zcd", "zicntr",
+					       "zicsr", "zifencei", "zihpm";
 			tlb-split;
 			next-level-cache = <&l2cache>;
 			cpu1_intc: interrupt-controller {
@@ -84,8 +84,8 @@ cpu2: cpu@2 {
 			reg = <2>;
 			riscv,isa = "rv64imafdc";
 			riscv,isa-base = "rv64i";
-			riscv,isa-extensions = "i", "m", "a", "f", "d", "c", "zicntr", "zicsr",
-					       "zifencei", "zihpm";
+			riscv,isa-extensions = "i", "m", "a", "f", "d", "c", "zca", "zcd", "zicntr",
+					       "zicsr", "zifencei", "zihpm";
 			tlb-split;
 			next-level-cache = <&l2cache>;
 			cpu2_intc: interrupt-controller {
@@ -111,8 +111,8 @@ cpu3: cpu@3 {
 			reg = <3>;
 			riscv,isa = "rv64imafdc";
 			riscv,isa-base = "rv64i";
-			riscv,isa-extensions = "i", "m", "a", "f", "d", "c", "zicntr", "zicsr",
-					       "zifencei", "zihpm";
+			riscv,isa-extensions = "i", "m", "a", "f", "d", "c", "zca", "zcd", "zicntr",
+					       "zicsr", "zifencei", "zihpm";
 			tlb-split;
 			next-level-cache = <&l2cache>;
 			cpu3_intc: interrupt-controller {
@@ -138,8 +138,8 @@ cpu4: cpu@4 {
 			reg = <4>;
 			riscv,isa = "rv64imafdc";
 			riscv,isa-base = "rv64i";
-			riscv,isa-extensions = "i", "m", "a", "f", "d", "c", "zicntr", "zicsr",
-					       "zifencei", "zihpm";
+			riscv,isa-extensions = "i", "m", "a", "f", "d", "c", "zca", "zcd", "zicntr",
+					       "zicsr", "zifencei", "zihpm";
 			tlb-split;
 			next-level-cache = <&l2cache>;
 			cpu4_intc: interrupt-controller {
diff --git a/arch/riscv/boot/dts/sifive/fu740-c000.dtsi b/arch/riscv/boot/dts/sifive/fu740-c000.dtsi
index 6150f3397bff..4336ed11db9a 100644
--- a/arch/riscv/boot/dts/sifive/fu740-c000.dtsi
+++ b/arch/riscv/boot/dts/sifive/fu740-c000.dtsi
@@ -32,8 +32,8 @@ cpu0: cpu@0 {
 			reg = <0x0>;
 			riscv,isa = "rv64imac";
 			riscv,isa-base = "rv64i";
-			riscv,isa-extensions = "i", "m", "a", "c", "zicntr", "zicsr", "zifencei",
-					       "zihpm";
+			riscv,isa-extensions = "i", "m", "a", "c", "zca", "zicntr", "zicsr",
+					       "zifencei", "zihpm";
 			status = "disabled";
 			cpu0_intc: interrupt-controller {
 				#interrupt-cells = <1>;
@@ -59,8 +59,8 @@ cpu1: cpu@1 {
 			reg = <0x1>;
 			riscv,isa = "rv64imafdc";
 			riscv,isa-base = "rv64i";
-			riscv,isa-extensions = "i", "m", "a", "f", "d", "c", "zicntr", "zicsr",
-					       "zifencei", "zihpm";
+			riscv,isa-extensions = "i", "m", "a", "f", "d", "c", "zca", "zcd", "zicntr",
+					       "zicsr", "zifencei", "zihpm";
 			tlb-split;
 			cpu1_intc: interrupt-controller {
 				#interrupt-cells = <1>;
@@ -86,8 +86,8 @@ cpu2: cpu@2 {
 			reg = <0x2>;
 			riscv,isa = "rv64imafdc";
 			riscv,isa-base = "rv64i";
-			riscv,isa-extensions = "i", "m", "a", "f", "d", "c", "zicntr", "zicsr",
-					       "zifencei", "zihpm";
+			riscv,isa-extensions = "i", "m", "a", "f", "d", "c", "zca", "zcd", "zicntr",
+					       "zicsr", "zifencei", "zihpm";
 			tlb-split;
 			cpu2_intc: interrupt-controller {
 				#interrupt-cells = <1>;
@@ -113,8 +113,8 @@ cpu3: cpu@3 {
 			reg = <0x3>;
 			riscv,isa = "rv64imafdc";
 			riscv,isa-base = "rv64i";
-			riscv,isa-extensions = "i", "m", "a", "f", "d", "c", "zicntr", "zicsr",
-					       "zifencei", "zihpm";
+			riscv,isa-extensions = "i", "m", "a", "f", "d", "c", "zca", "zcd", "zicntr",
+					       "zicsr", "zifencei", "zihpm";
 			tlb-split;
 			cpu3_intc: interrupt-controller {
 				#interrupt-cells = <1>;
@@ -140,8 +140,8 @@ cpu4: cpu@4 {
 			reg = <0x4>;
 			riscv,isa = "rv64imafdc";
 			riscv,isa-base = "rv64i";
-			riscv,isa-extensions = "i", "m", "a", "f", "d", "c", "zicntr", "zicsr",
-					       "zifencei", "zihpm";
+			riscv,isa-extensions = "i", "m", "a", "f", "d", "c", "zca", "zcd", "zicntr",
+					       "zicsr", "zifencei", "zihpm";
 			tlb-split;
 			cpu4_intc: interrupt-controller {
 				#interrupt-cells = <1>;
diff --git a/arch/riscv/boot/dts/sophgo/cv18xx.dtsi b/arch/riscv/boot/dts/sophgo/cv18xx.dtsi
index 2d6f4a4b1e58..1fa5c57acf48 100644
--- a/arch/riscv/boot/dts/sophgo/cv18xx.dtsi
+++ b/arch/riscv/boot/dts/sophgo/cv18xx.dtsi
@@ -28,8 +28,8 @@ cpu0: cpu@0 {
 			mmu-type = "riscv,sv39";
 			riscv,isa = "rv64imafdc";
 			riscv,isa-base = "rv64i";
-			riscv,isa-extensions = "i", "m", "a", "f", "d", "c", "zicntr", "zicsr",
-					       "zifencei", "zihpm";
+			riscv,isa-extensions = "i", "m", "a", "f", "d", "c", "zca", "zcd", "zicntr",
+					       "zicsr", "zifencei", "zihpm";
 
 			cpu0_intc: interrupt-controller {
 				compatible = "riscv,cpu-intc";
diff --git a/arch/riscv/boot/dts/sophgo/sg2042-cpus.dtsi b/arch/riscv/boot/dts/sophgo/sg2042-cpus.dtsi
index b136b6c4128c..6d03076314aa 100644
--- a/arch/riscv/boot/dts/sophgo/sg2042-cpus.dtsi
+++ b/arch/riscv/boot/dts/sophgo/sg2042-cpus.dtsi
@@ -259,8 +259,8 @@ cpu0: cpu@0 {
 			riscv,isa = "rv64imafdc";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "zicntr", "zicsr", "zifencei",
-					       "zihpm";
+					       "zca", "zcd", "zicntr", "zicsr",
+					       "zifencei", "zihpm";
 			reg = <0>;
 			i-cache-block-size = <64>;
 			i-cache-size = <65536>;
@@ -284,8 +284,8 @@ cpu1: cpu@1 {
 			riscv,isa = "rv64imafdc";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "zicntr", "zicsr", "zifencei",
-					       "zihpm";
+					       "zca", "zcd", "zicntr", "zicsr",
+					       "zifencei", "zihpm";
 			reg = <1>;
 			i-cache-block-size = <64>;
 			i-cache-size = <65536>;
@@ -309,8 +309,8 @@ cpu2: cpu@2 {
 			riscv,isa = "rv64imafdc";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "zicntr", "zicsr", "zifencei",
-					       "zihpm";
+					       "zca", "zcd", "zicntr", "zicsr",
+					       "zifencei", "zihpm";
 			reg = <2>;
 			i-cache-block-size = <64>;
 			i-cache-size = <65536>;
@@ -334,8 +334,8 @@ cpu3: cpu@3 {
 			riscv,isa = "rv64imafdc";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "zicntr", "zicsr", "zifencei",
-					       "zihpm";
+					       "zca", "zcd", "zicntr", "zicsr",
+					       "zifencei", "zihpm";
 			reg = <3>;
 			i-cache-block-size = <64>;
 			i-cache-size = <65536>;
@@ -359,8 +359,8 @@ cpu4: cpu@4 {
 			riscv,isa = "rv64imafdc";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "zicntr", "zicsr", "zifencei",
-					       "zihpm";
+					       "zca", "zcd", "zicntr", "zicsr",
+					       "zifencei", "zihpm";
 			reg = <4>;
 			i-cache-block-size = <64>;
 			i-cache-size = <65536>;
@@ -384,8 +384,8 @@ cpu5: cpu@5 {
 			riscv,isa = "rv64imafdc";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "zicntr", "zicsr", "zifencei",
-					       "zihpm";
+					       "zca", "zcd", "zicntr", "zicsr",
+					       "zifencei", "zihpm";
 			reg = <5>;
 			i-cache-block-size = <64>;
 			i-cache-size = <65536>;
@@ -409,8 +409,8 @@ cpu6: cpu@6 {
 			riscv,isa = "rv64imafdc";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "zicntr", "zicsr", "zifencei",
-					       "zihpm";
+					       "zca", "zcd", "zicntr", "zicsr",
+					       "zifencei", "zihpm";
 			reg = <6>;
 			i-cache-block-size = <64>;
 			i-cache-size = <65536>;
@@ -434,8 +434,8 @@ cpu7: cpu@7 {
 			riscv,isa = "rv64imafdc";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "zicntr", "zicsr", "zifencei",
-					       "zihpm";
+					       "zca", "zcd", "zicntr", "zicsr",
+					       "zifencei", "zihpm";
 			reg = <7>;
 			i-cache-block-size = <64>;
 			i-cache-size = <65536>;
@@ -459,8 +459,8 @@ cpu8: cpu@8 {
 			riscv,isa = "rv64imafdc";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "zicntr", "zicsr", "zifencei",
-					       "zihpm";
+					       "zca", "zcd", "zicntr", "zicsr",
+					       "zifencei", "zihpm";
 			reg = <8>;
 			i-cache-block-size = <64>;
 			i-cache-size = <65536>;
@@ -484,8 +484,8 @@ cpu9: cpu@9 {
 			riscv,isa = "rv64imafdc";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "zicntr", "zicsr", "zifencei",
-					       "zihpm";
+					       "zca", "zcd", "zicntr", "zicsr",
+					       "zifencei", "zihpm";
 			reg = <9>;
 			i-cache-block-size = <64>;
 			i-cache-size = <65536>;
@@ -509,8 +509,8 @@ cpu10: cpu@10 {
 			riscv,isa = "rv64imafdc";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "zicntr", "zicsr", "zifencei",
-					       "zihpm";
+					       "zca", "zcd", "zicntr", "zicsr",
+					       "zifencei", "zihpm";
 			reg = <10>;
 			i-cache-block-size = <64>;
 			i-cache-size = <65536>;
@@ -534,8 +534,8 @@ cpu11: cpu@11 {
 			riscv,isa = "rv64imafdc";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "zicntr", "zicsr", "zifencei",
-					       "zihpm";
+					       "zca", "zcd", "zicntr", "zicsr",
+					       "zifencei", "zihpm";
 			reg = <11>;
 			i-cache-block-size = <64>;
 			i-cache-size = <65536>;
@@ -559,8 +559,8 @@ cpu12: cpu@12 {
 			riscv,isa = "rv64imafdc";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "zicntr", "zicsr", "zifencei",
-					       "zihpm";
+					       "zca", "zcd", "zicntr", "zicsr",
+					       "zifencei", "zihpm";
 			reg = <12>;
 			i-cache-block-size = <64>;
 			i-cache-size = <65536>;
@@ -584,8 +584,8 @@ cpu13: cpu@13 {
 			riscv,isa = "rv64imafdc";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "zicntr", "zicsr", "zifencei",
-					       "zihpm";
+					       "zca", "zcd", "zicntr", "zicsr",
+					       "zifencei", "zihpm";
 			reg = <13>;
 			i-cache-block-size = <64>;
 			i-cache-size = <65536>;
@@ -609,8 +609,8 @@ cpu14: cpu@14 {
 			riscv,isa = "rv64imafdc";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "zicntr", "zicsr", "zifencei",
-					       "zihpm";
+					       "zca", "zcd", "zicntr", "zicsr",
+					       "zifencei", "zihpm";
 			reg = <14>;
 			i-cache-block-size = <64>;
 			i-cache-size = <65536>;
@@ -634,8 +634,8 @@ cpu15: cpu@15 {
 			riscv,isa = "rv64imafdc";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "zicntr", "zicsr", "zifencei",
-					       "zihpm";
+					       "zca", "zcd", "zicntr", "zicsr",
+					       "zifencei", "zihpm";
 			reg = <15>;
 			i-cache-block-size = <64>;
 			i-cache-size = <65536>;
@@ -659,8 +659,8 @@ cpu16: cpu@16 {
 			riscv,isa = "rv64imafdc";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "zicntr", "zicsr", "zifencei",
-					       "zihpm";
+					       "zca", "zcd", "zicntr", "zicsr",
+					       "zifencei", "zihpm";
 			reg = <16>;
 			i-cache-block-size = <64>;
 			i-cache-size = <65536>;
@@ -684,8 +684,8 @@ cpu17: cpu@17 {
 			riscv,isa = "rv64imafdc";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "zicntr", "zicsr", "zifencei",
-					       "zihpm";
+					       "zca", "zcd", "zicntr", "zicsr",
+					       "zifencei", "zihpm";
 			reg = <17>;
 			i-cache-block-size = <64>;
 			i-cache-size = <65536>;
@@ -709,8 +709,8 @@ cpu18: cpu@18 {
 			riscv,isa = "rv64imafdc";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "zicntr", "zicsr", "zifencei",
-					       "zihpm";
+					       "zca", "zcd", "zicntr", "zicsr",
+					       "zifencei", "zihpm";
 			reg = <18>;
 			i-cache-block-size = <64>;
 			i-cache-size = <65536>;
@@ -734,8 +734,8 @@ cpu19: cpu@19 {
 			riscv,isa = "rv64imafdc";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "zicntr", "zicsr", "zifencei",
-					       "zihpm";
+					       "zca", "zcd", "zicntr", "zicsr",
+					       "zifencei", "zihpm";
 			reg = <19>;
 			i-cache-block-size = <64>;
 			i-cache-size = <65536>;
@@ -759,8 +759,8 @@ cpu20: cpu@20 {
 			riscv,isa = "rv64imafdc";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "zicntr", "zicsr", "zifencei",
-					       "zihpm";
+					       "zca", "zcd", "zicntr", "zicsr",
+					       "zifencei", "zihpm";
 			reg = <20>;
 			i-cache-block-size = <64>;
 			i-cache-size = <65536>;
@@ -784,8 +784,8 @@ cpu21: cpu@21 {
 			riscv,isa = "rv64imafdc";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "zicntr", "zicsr", "zifencei",
-					       "zihpm";
+					       "zca", "zcd", "zicntr", "zicsr",
+					       "zifencei", "zihpm";
 			reg = <21>;
 			i-cache-block-size = <64>;
 			i-cache-size = <65536>;
@@ -809,8 +809,8 @@ cpu22: cpu@22 {
 			riscv,isa = "rv64imafdc";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "zicntr", "zicsr", "zifencei",
-					       "zihpm";
+					       "zca", "zcd", "zicntr", "zicsr",
+					       "zifencei", "zihpm";
 			reg = <22>;
 			i-cache-block-size = <64>;
 			i-cache-size = <65536>;
@@ -834,8 +834,8 @@ cpu23: cpu@23 {
 			riscv,isa = "rv64imafdc";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "zicntr", "zicsr", "zifencei",
-					       "zihpm";
+					       "zca", "zcd", "zicntr", "zicsr",
+					       "zifencei", "zihpm";
 			reg = <23>;
 			i-cache-block-size = <64>;
 			i-cache-size = <65536>;
@@ -859,8 +859,8 @@ cpu24: cpu@24 {
 			riscv,isa = "rv64imafdc";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "zicntr", "zicsr", "zifencei",
-					       "zihpm";
+					       "zca", "zcd", "zicntr", "zicsr",
+					       "zifencei", "zihpm";
 			reg = <24>;
 			i-cache-block-size = <64>;
 			i-cache-size = <65536>;
@@ -884,8 +884,8 @@ cpu25: cpu@25 {
 			riscv,isa = "rv64imafdc";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "zicntr", "zicsr", "zifencei",
-					       "zihpm";
+					       "zca", "zcd", "zicntr", "zicsr",
+					       "zifencei", "zihpm";
 			reg = <25>;
 			i-cache-block-size = <64>;
 			i-cache-size = <65536>;
@@ -909,8 +909,8 @@ cpu26: cpu@26 {
 			riscv,isa = "rv64imafdc";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "zicntr", "zicsr", "zifencei",
-					       "zihpm";
+					       "zca", "zcd", "zicntr", "zicsr",
+					       "zifencei", "zihpm";
 			reg = <26>;
 			i-cache-block-size = <64>;
 			i-cache-size = <65536>;
@@ -934,8 +934,8 @@ cpu27: cpu@27 {
 			riscv,isa = "rv64imafdc";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "zicntr", "zicsr", "zifencei",
-					       "zihpm";
+					       "zca", "zcd", "zicntr", "zicsr",
+					       "zifencei", "zihpm";
 			reg = <27>;
 			i-cache-block-size = <64>;
 			i-cache-size = <65536>;
@@ -959,8 +959,8 @@ cpu28: cpu@28 {
 			riscv,isa = "rv64imafdc";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "zicntr", "zicsr", "zifencei",
-					       "zihpm";
+					       "zca", "zcd", "zicntr", "zicsr",
+					       "zifencei", "zihpm";
 			reg = <28>;
 			i-cache-block-size = <64>;
 			i-cache-size = <65536>;
@@ -984,8 +984,8 @@ cpu29: cpu@29 {
 			riscv,isa = "rv64imafdc";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "zicntr", "zicsr", "zifencei",
-					       "zihpm";
+					       "zca", "zcd", "zicntr", "zicsr",
+					       "zifencei", "zihpm";
 			reg = <29>;
 			i-cache-block-size = <64>;
 			i-cache-size = <65536>;
@@ -1009,8 +1009,8 @@ cpu30: cpu@30 {
 			riscv,isa = "rv64imafdc";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "zicntr", "zicsr", "zifencei",
-					       "zihpm";
+					       "zca", "zcd", "zicntr", "zicsr",
+					       "zifencei", "zihpm";
 			reg = <30>;
 			i-cache-block-size = <64>;
 			i-cache-size = <65536>;
@@ -1034,8 +1034,8 @@ cpu31: cpu@31 {
 			riscv,isa = "rv64imafdc";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "zicntr", "zicsr", "zifencei",
-					       "zihpm";
+					       "zca", "zcd", "zicntr", "zicsr",
+					       "zifencei", "zihpm";
 			reg = <31>;
 			i-cache-block-size = <64>;
 			i-cache-size = <65536>;
@@ -1059,8 +1059,8 @@ cpu32: cpu@32 {
 			riscv,isa = "rv64imafdc";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "zicntr", "zicsr", "zifencei",
-					       "zihpm";
+					       "zca", "zcd", "zicntr", "zicsr",
+					       "zifencei", "zihpm";
 			reg = <32>;
 			i-cache-block-size = <64>;
 			i-cache-size = <65536>;
@@ -1084,8 +1084,8 @@ cpu33: cpu@33 {
 			riscv,isa = "rv64imafdc";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "zicntr", "zicsr", "zifencei",
-					       "zihpm";
+					       "zca", "zcd", "zicntr", "zicsr",
+					       "zifencei", "zihpm";
 			reg = <33>;
 			i-cache-block-size = <64>;
 			i-cache-size = <65536>;
@@ -1109,8 +1109,8 @@ cpu34: cpu@34 {
 			riscv,isa = "rv64imafdc";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "zicntr", "zicsr", "zifencei",
-					       "zihpm";
+					       "zca", "zcd", "zicntr", "zicsr",
+					       "zifencei", "zihpm";
 			reg = <34>;
 			i-cache-block-size = <64>;
 			i-cache-size = <65536>;
@@ -1134,8 +1134,8 @@ cpu35: cpu@35 {
 			riscv,isa = "rv64imafdc";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "zicntr", "zicsr", "zifencei",
-					       "zihpm";
+					       "zca", "zcd", "zicntr", "zicsr",
+					       "zifencei", "zihpm";
 			reg = <35>;
 			i-cache-block-size = <64>;
 			i-cache-size = <65536>;
@@ -1159,8 +1159,8 @@ cpu36: cpu@36 {
 			riscv,isa = "rv64imafdc";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "zicntr", "zicsr", "zifencei",
-					       "zihpm";
+					       "zca", "zcd", "zicntr", "zicsr",
+					       "zifencei", "zihpm";
 			reg = <36>;
 			i-cache-block-size = <64>;
 			i-cache-size = <65536>;
@@ -1184,8 +1184,8 @@ cpu37: cpu@37 {
 			riscv,isa = "rv64imafdc";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "zicntr", "zicsr", "zifencei",
-					       "zihpm";
+					       "zca", "zcd", "zicntr", "zicsr",
+					       "zifencei", "zihpm";
 			reg = <37>;
 			i-cache-block-size = <64>;
 			i-cache-size = <65536>;
@@ -1209,8 +1209,8 @@ cpu38: cpu@38 {
 			riscv,isa = "rv64imafdc";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "zicntr", "zicsr", "zifencei",
-					       "zihpm";
+					       "zca", "zcd", "zicntr", "zicsr",
+					       "zifencei", "zihpm";
 			reg = <38>;
 			i-cache-block-size = <64>;
 			i-cache-size = <65536>;
@@ -1234,8 +1234,8 @@ cpu39: cpu@39 {
 			riscv,isa = "rv64imafdc";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "zicntr", "zicsr", "zifencei",
-					       "zihpm";
+					       "zca", "zcd", "zicntr", "zicsr",
+					       "zifencei", "zihpm";
 			reg = <39>;
 			i-cache-block-size = <64>;
 			i-cache-size = <65536>;
@@ -1259,8 +1259,8 @@ cpu40: cpu@40 {
 			riscv,isa = "rv64imafdc";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "zicntr", "zicsr", "zifencei",
-					       "zihpm";
+					       "zca", "zcd", "zicntr", "zicsr",
+					       "zifencei", "zihpm";
 			reg = <40>;
 			i-cache-block-size = <64>;
 			i-cache-size = <65536>;
@@ -1284,8 +1284,8 @@ cpu41: cpu@41 {
 			riscv,isa = "rv64imafdc";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "zicntr", "zicsr", "zifencei",
-					       "zihpm";
+					       "zca", "zcd", "zicntr", "zicsr",
+					       "zifencei", "zihpm";
 			reg = <41>;
 			i-cache-block-size = <64>;
 			i-cache-size = <65536>;
@@ -1309,8 +1309,8 @@ cpu42: cpu@42 {
 			riscv,isa = "rv64imafdc";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "zicntr", "zicsr", "zifencei",
-					       "zihpm";
+					       "zca", "zcd", "zicntr", "zicsr",
+					       "zifencei", "zihpm";
 			reg = <42>;
 			i-cache-block-size = <64>;
 			i-cache-size = <65536>;
@@ -1334,8 +1334,8 @@ cpu43: cpu@43 {
 			riscv,isa = "rv64imafdc";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "zicntr", "zicsr", "zifencei",
-					       "zihpm";
+					       "zca", "zcd", "zicntr", "zicsr",
+					       "zifencei", "zihpm";
 			reg = <43>;
 			i-cache-block-size = <64>;
 			i-cache-size = <65536>;
@@ -1359,8 +1359,8 @@ cpu44: cpu@44 {
 			riscv,isa = "rv64imafdc";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "zicntr", "zicsr", "zifencei",
-					       "zihpm";
+					       "zca", "zcd", "zicntr", "zicsr",
+					       "zifencei", "zihpm";
 			reg = <44>;
 			i-cache-block-size = <64>;
 			i-cache-size = <65536>;
@@ -1384,8 +1384,8 @@ cpu45: cpu@45 {
 			riscv,isa = "rv64imafdc";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "zicntr", "zicsr", "zifencei",
-					       "zihpm";
+					       "zca", "zcd", "zicntr", "zicsr",
+					       "zifencei", "zihpm";
 			reg = <45>;
 			i-cache-block-size = <64>;
 			i-cache-size = <65536>;
@@ -1409,8 +1409,8 @@ cpu46: cpu@46 {
 			riscv,isa = "rv64imafdc";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "zicntr", "zicsr", "zifencei",
-					       "zihpm";
+					       "zca", "zcd", "zicntr", "zicsr",
+					       "zifencei", "zihpm";
 			reg = <46>;
 			i-cache-block-size = <64>;
 			i-cache-size = <65536>;
@@ -1434,8 +1434,8 @@ cpu47: cpu@47 {
 			riscv,isa = "rv64imafdc";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "zicntr", "zicsr", "zifencei",
-					       "zihpm";
+					       "zca", "zcd", "zicntr", "zicsr",
+					       "zifencei", "zihpm";
 			reg = <47>;
 			i-cache-block-size = <64>;
 			i-cache-size = <65536>;
@@ -1459,8 +1459,8 @@ cpu48: cpu@48 {
 			riscv,isa = "rv64imafdc";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "zicntr", "zicsr", "zifencei",
-					       "zihpm";
+					       "zca", "zcd", "zicntr", "zicsr",
+					       "zifencei", "zihpm";
 			reg = <48>;
 			i-cache-block-size = <64>;
 			i-cache-size = <65536>;
@@ -1484,8 +1484,8 @@ cpu49: cpu@49 {
 			riscv,isa = "rv64imafdc";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "zicntr", "zicsr", "zifencei",
-					       "zihpm";
+					       "zca", "zcd", "zicntr", "zicsr",
+					       "zifencei", "zihpm";
 			reg = <49>;
 			i-cache-block-size = <64>;
 			i-cache-size = <65536>;
@@ -1509,8 +1509,8 @@ cpu50: cpu@50 {
 			riscv,isa = "rv64imafdc";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "zicntr", "zicsr", "zifencei",
-					       "zihpm";
+					       "zca", "zcd", "zicntr", "zicsr",
+					       "zifencei", "zihpm";
 			reg = <50>;
 			i-cache-block-size = <64>;
 			i-cache-size = <65536>;
@@ -1534,8 +1534,8 @@ cpu51: cpu@51 {
 			riscv,isa = "rv64imafdc";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "zicntr", "zicsr", "zifencei",
-					       "zihpm";
+					       "zca", "zcd", "zicntr", "zicsr",
+					       "zifencei", "zihpm";
 			reg = <51>;
 			i-cache-block-size = <64>;
 			i-cache-size = <65536>;
@@ -1559,8 +1559,8 @@ cpu52: cpu@52 {
 			riscv,isa = "rv64imafdc";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "zicntr", "zicsr", "zifencei",
-					       "zihpm";
+					       "zca", "zcd", "zicntr", "zicsr",
+					       "zifencei", "zihpm";
 			reg = <52>;
 			i-cache-block-size = <64>;
 			i-cache-size = <65536>;
@@ -1584,8 +1584,8 @@ cpu53: cpu@53 {
 			riscv,isa = "rv64imafdc";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "zicntr", "zicsr", "zifencei",
-					       "zihpm";
+					       "zca", "zcd", "zicntr", "zicsr",
+					       "zifencei", "zihpm";
 			reg = <53>;
 			i-cache-block-size = <64>;
 			i-cache-size = <65536>;
@@ -1609,8 +1609,8 @@ cpu54: cpu@54 {
 			riscv,isa = "rv64imafdc";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "zicntr", "zicsr", "zifencei",
-					       "zihpm";
+					       "zca", "zcd", "zicntr", "zicsr",
+					       "zifencei", "zihpm";
 			reg = <54>;
 			i-cache-block-size = <64>;
 			i-cache-size = <65536>;
@@ -1634,8 +1634,8 @@ cpu55: cpu@55 {
 			riscv,isa = "rv64imafdc";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "zicntr", "zicsr", "zifencei",
-					       "zihpm";
+					       "zca", "zcd", "zicntr", "zicsr",
+					       "zifencei", "zihpm";
 			reg = <55>;
 			i-cache-block-size = <64>;
 			i-cache-size = <65536>;
@@ -1659,8 +1659,8 @@ cpu56: cpu@56 {
 			riscv,isa = "rv64imafdc";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "zicntr", "zicsr", "zifencei",
-					       "zihpm";
+					       "zca", "zcd", "zicntr", "zicsr",
+					       "zifencei", "zihpm";
 			reg = <56>;
 			i-cache-block-size = <64>;
 			i-cache-size = <65536>;
@@ -1684,8 +1684,8 @@ cpu57: cpu@57 {
 			riscv,isa = "rv64imafdc";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "zicntr", "zicsr", "zifencei",
-					       "zihpm";
+					       "zca", "zcd", "zicntr", "zicsr",
+					       "zifencei", "zihpm";
 			reg = <57>;
 			i-cache-block-size = <64>;
 			i-cache-size = <65536>;
@@ -1709,8 +1709,8 @@ cpu58: cpu@58 {
 			riscv,isa = "rv64imafdc";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "zicntr", "zicsr", "zifencei",
-					       "zihpm";
+					       "zca", "zcd", "zicntr", "zicsr",
+					       "zifencei", "zihpm";
 			reg = <58>;
 			i-cache-block-size = <64>;
 			i-cache-size = <65536>;
@@ -1734,8 +1734,8 @@ cpu59: cpu@59 {
 			riscv,isa = "rv64imafdc";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "zicntr", "zicsr", "zifencei",
-					       "zihpm";
+					       "zca", "zcd", "zicntr", "zicsr",
+					       "zifencei", "zihpm";
 			reg = <59>;
 			i-cache-block-size = <64>;
 			i-cache-size = <65536>;
@@ -1759,8 +1759,8 @@ cpu60: cpu@60 {
 			riscv,isa = "rv64imafdc";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "zicntr", "zicsr", "zifencei",
-					       "zihpm";
+					       "zca", "zcd", "zicntr", "zicsr",
+					       "zifencei", "zihpm";
 			reg = <60>;
 			i-cache-block-size = <64>;
 			i-cache-size = <65536>;
@@ -1784,8 +1784,8 @@ cpu61: cpu@61 {
 			riscv,isa = "rv64imafdc";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "zicntr", "zicsr", "zifencei",
-					       "zihpm";
+					       "zca", "zcd", "zicntr", "zicsr",
+					       "zifencei", "zihpm";
 			reg = <61>;
 			i-cache-block-size = <64>;
 			i-cache-size = <65536>;
@@ -1809,8 +1809,8 @@ cpu62: cpu@62 {
 			riscv,isa = "rv64imafdc";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "zicntr", "zicsr", "zifencei",
-					       "zihpm";
+					       "zca", "zcd", "zicntr", "zicsr",
+					       "zifencei", "zihpm";
 			reg = <62>;
 			i-cache-block-size = <64>;
 			i-cache-size = <65536>;
@@ -1834,8 +1834,8 @@ cpu63: cpu@63 {
 			riscv,isa = "rv64imafdc";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
-					       "zicntr", "zicsr", "zifencei",
-					       "zihpm";
+					       "zca", "zcd", "zicntr", "zicsr",
+					       "zifencei", "zihpm";
 			reg = <63>;
 			i-cache-block-size = <64>;
 			i-cache-size = <65536>;
diff --git a/arch/riscv/boot/dts/starfive/jh7100.dtsi b/arch/riscv/boot/dts/starfive/jh7100.dtsi
index 9a2e9583af88..7e53c539c871 100644
--- a/arch/riscv/boot/dts/starfive/jh7100.dtsi
+++ b/arch/riscv/boot/dts/starfive/jh7100.dtsi
@@ -35,8 +35,8 @@ U74_0: cpu@0 {
 			next-level-cache = <&ccache>;
 			riscv,isa = "rv64imafdc";
 			riscv,isa-base = "rv64i";
-			riscv,isa-extensions = "i", "m", "a", "f", "d", "c", "zicntr", "zicsr",
-					       "zifencei", "zihpm";
+			riscv,isa-extensions = "i", "m", "a", "f", "d", "c", "zca", "zcd", "zicntr",
+					       "zicsr", "zifencei", "zihpm";
 			tlb-split;
 
 			cpu0_intc: interrupt-controller {
@@ -64,8 +64,8 @@ U74_1: cpu@1 {
 			next-level-cache = <&ccache>;
 			riscv,isa = "rv64imafdc";
 			riscv,isa-base = "rv64i";
-			riscv,isa-extensions = "i", "m", "a", "f", "d", "c", "zicntr", "zicsr",
-					       "zifencei", "zihpm";
+			riscv,isa-extensions = "i", "m", "a", "f", "d", "c", "zca", "zcd", "zicntr",
+					       "zicsr", "zifencei", "zihpm";
 			tlb-split;
 
 			cpu1_intc: interrupt-controller {
diff --git a/arch/riscv/boot/dts/starfive/jh7110.dtsi b/arch/riscv/boot/dts/starfive/jh7110.dtsi
index 4a5708f7fcf7..f01024f50561 100644
--- a/arch/riscv/boot/dts/starfive/jh7110.dtsi
+++ b/arch/riscv/boot/dts/starfive/jh7110.dtsi
@@ -29,8 +29,8 @@ S7_0: cpu@0 {
 			next-level-cache = <&ccache>;
 			riscv,isa = "rv64imac_zba_zbb";
 			riscv,isa-base = "rv64i";
-			riscv,isa-extensions = "i", "m", "a", "c", "zba", "zbb", "zicntr", "zicsr",
-					       "zifencei", "zihpm";
+			riscv,isa-extensions = "i", "m", "a", "c", "zba", "zbb", "zca", "zicntr",
+					       "zicsr", "zifencei", "zihpm";
 			status = "disabled";
 
 			cpu0_intc: interrupt-controller {
@@ -58,8 +58,8 @@ U74_1: cpu@1 {
 			next-level-cache = <&ccache>;
 			riscv,isa = "rv64imafdc_zba_zbb";
 			riscv,isa-base = "rv64i";
-			riscv,isa-extensions = "i", "m", "a", "f", "d", "c", "zba", "zbb", "zicntr",
-					       "zicsr", "zifencei", "zihpm";
+			riscv,isa-extensions = "i", "m", "a", "f", "d", "c", "zba", "zbb", "zca",
+					       "zcd", "zicntr", "zicsr", "zifencei", "zihpm";
 			tlb-split;
 			operating-points-v2 = <&cpu_opp>;
 			clocks = <&syscrg JH7110_SYSCLK_CPU_CORE>;
@@ -91,8 +91,8 @@ U74_2: cpu@2 {
 			next-level-cache = <&ccache>;
 			riscv,isa = "rv64imafdc_zba_zbb";
 			riscv,isa-base = "rv64i";
-			riscv,isa-extensions = "i", "m", "a", "f", "d", "c", "zba", "zbb", "zicntr",
-					       "zicsr", "zifencei", "zihpm";
+			riscv,isa-extensions = "i", "m", "a", "f", "d", "c", "zba", "zbb", "zca",
+					       "zcd", "zicntr", "zicsr", "zifencei", "zihpm";
 			tlb-split;
 			operating-points-v2 = <&cpu_opp>;
 			clocks = <&syscrg JH7110_SYSCLK_CPU_CORE>;
@@ -124,8 +124,8 @@ U74_3: cpu@3 {
 			next-level-cache = <&ccache>;
 			riscv,isa = "rv64imafdc_zba_zbb";
 			riscv,isa-base = "rv64i";
-			riscv,isa-extensions = "i", "m", "a", "f", "d", "c", "zba", "zbb", "zicntr",
-					       "zicsr", "zifencei", "zihpm";
+			riscv,isa-extensions = "i", "m", "a", "f", "d", "c", "zba", "zbb", "zca",
+					       "zcd", "zicntr", "zicsr", "zifencei", "zihpm";
 			tlb-split;
 			operating-points-v2 = <&cpu_opp>;
 			clocks = <&syscrg JH7110_SYSCLK_CPU_CORE>;
@@ -157,8 +157,8 @@ U74_4: cpu@4 {
 			next-level-cache = <&ccache>;
 			riscv,isa = "rv64imafdc_zba_zbb";
 			riscv,isa-base = "rv64i";
-			riscv,isa-extensions = "i", "m", "a", "f", "d", "c", "zba", "zbb", "zicntr",
-					       "zicsr", "zifencei", "zihpm";
+			riscv,isa-extensions = "i", "m", "a", "f", "d", "c", "zba", "zbb", "zca",
+					       "zcd", "zicntr", "zicsr", "zifencei", "zihpm";
 			tlb-split;
 			operating-points-v2 = <&cpu_opp>;
 			clocks = <&syscrg JH7110_SYSCLK_CPU_CORE>;
diff --git a/arch/riscv/boot/dts/thead/th1520.dtsi b/arch/riscv/boot/dts/thead/th1520.dtsi
index 8b915e206f3a..530355bda7c1 100644
--- a/arch/riscv/boot/dts/thead/th1520.dtsi
+++ b/arch/riscv/boot/dts/thead/th1520.dtsi
@@ -21,8 +21,8 @@ c910_0: cpu@0 {
 			device_type = "cpu";
 			riscv,isa = "rv64imafdc";
 			riscv,isa-base = "rv64i";
-			riscv,isa-extensions = "i", "m", "a", "f", "d", "c", "zicntr", "zicsr",
-					       "zifencei", "zihpm";
+			riscv,isa-extensions = "i", "m", "a", "f", "d", "c", "zca", "zcd", "zicntr",
+					       "zicsr", "zifencei", "zihpm";
 			reg = <0>;
 			i-cache-block-size = <64>;
 			i-cache-size = <65536>;
@@ -45,8 +45,8 @@ c910_1: cpu@1 {
 			device_type = "cpu";
 			riscv,isa = "rv64imafdc";
 			riscv,isa-base = "rv64i";
-			riscv,isa-extensions = "i", "m", "a", "f", "d", "c", "zicntr", "zicsr",
-					       "zifencei", "zihpm";
+			riscv,isa-extensions = "i", "m", "a", "f", "d", "c", "zca", "zcd", "zicntr",
+					       "zicsr", "zifencei", "zihpm";
 			reg = <1>;
 			i-cache-block-size = <64>;
 			i-cache-size = <65536>;
@@ -69,8 +69,8 @@ c910_2: cpu@2 {
 			device_type = "cpu";
 			riscv,isa = "rv64imafdc";
 			riscv,isa-base = "rv64i";
-			riscv,isa-extensions = "i", "m", "a", "f", "d", "c", "zicntr", "zicsr",
-					       "zifencei", "zihpm";
+			riscv,isa-extensions = "i", "m", "a", "f", "d", "c", "zca", "zcd", "zicntr",
+					       "zicsr", "zifencei", "zihpm";
 			reg = <2>;
 			i-cache-block-size = <64>;
 			i-cache-size = <65536>;
@@ -93,8 +93,8 @@ c910_3: cpu@3 {
 			device_type = "cpu";
 			riscv,isa = "rv64imafdc";
 			riscv,isa-base = "rv64i";
-			riscv,isa-extensions = "i", "m", "a", "f", "d", "c", "zicntr", "zicsr",
-					       "zifencei", "zihpm";
+			riscv,isa-extensions = "i", "m", "a", "f", "d", "c", "zca", "zcd", "zicntr",
+					       "zicsr", "zifencei", "zihpm";
 			reg = <3>;
 			i-cache-block-size = <64>;
 			i-cache-size = <65536>;
-- 
2.43.0


