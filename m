Return-Path: <devicetree+bounces-135185-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A4DBA0002A
	for <lists+devicetree@lfdr.de>; Thu,  2 Jan 2025 21:43:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C28831884210
	for <lists+devicetree@lfdr.de>; Thu,  2 Jan 2025 20:43:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D2A611B85FA;
	Thu,  2 Jan 2025 20:42:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from freeshell.de (freeshell.de [116.202.128.144])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A65581B85C5;
	Thu,  2 Jan 2025 20:42:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.202.128.144
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735850549; cv=none; b=GDR3nL82IABsuoxrthIL7AmVlivIXhQj0A6GSgKD6cF6FLnU/c80RrwXQzSWvq/5F17ImHhfhHr8PlUgq5PcwlRS+tZjvOxNyL7yfIy9mEB+XqXPJlRZiDU10xxFHgJ8F4LB+USiH7EtIdMpPr1mwWBHB5zkzfKOjgMBePJZJko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735850549; c=relaxed/simple;
	bh=2fNyqbMZ/1javLFHnZLh8cu0ZqhvHoRvcbEkcELwjkM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=EI9nee+SeUy/Jd3AyNSjLc8I8gfVKlU9mOQ7L/XvWqOygv2Io+QjkyvYtG0UvBnrhnmDgD1yMZu91+np+9WBRTCek5Hshk9+5v+kapmsP9QgFJnyyXVhqg0BwQBxXYw3U7VE8jHEZKPWwgpSYB288Gzj2ET/cKF+f721GX5K+RQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=freeshell.de; spf=pass smtp.mailfrom=freeshell.de; arc=none smtp.client-ip=116.202.128.144
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=freeshell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=freeshell.de
Received: from hay.lan. (unknown [IPv6:2605:59c8:31de:bf00:6ecf:39ff:fe00:8375])
	(Authenticated sender: e)
	by freeshell.de (Postfix) with ESMTPSA id C58F8B220C7F;
	Thu,  2 Jan 2025 21:42:22 +0100 (CET)
From: E Shattow <e@freeshell.de>
To: Emil Renner Berthing <kernel@esmil.dk>,
	Conor Dooley <conor@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>
Cc: linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org,
	E Shattow <e@freeshell.de>
Subject: [RFC PATCH v1 3/3] riscv: dts: starfive: jh7110: bootph-pre-ram hinting needed by boot loader
Date: Thu,  2 Jan 2025 12:41:23 -0800
Message-ID: <20250102204137.423081-4-e@freeshell.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250102204137.423081-1-e@freeshell.de>
References: <20250102204137.423081-1-e@freeshell.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

  Add bootph-pre-ram hinting to jh7110.dtsi:
  - CPU interrupt controller(s)
  - timer
  - DRAM memory controller
  - oscillator
  - syscrg clock-controller
  - (optional) dma controller
  - (optional) aoncrg clock-controller

  With this the U-Boot SPL secondary program loader may drop such
  overrides when using dt-rebasing with JH7110 OF_UPSTREAM board targets.

Signed-off-by: E Shattow <e@freeshell.de>
---
 arch/riscv/boot/dts/starfive/jh7110.dtsi | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/riscv/boot/dts/starfive/jh7110.dtsi b/arch/riscv/boot/dts/starfive/jh7110.dtsi
index 6948974400c1..4f19b88fe73f 100644
--- a/arch/riscv/boot/dts/starfive/jh7110.dtsi
+++ b/arch/riscv/boot/dts/starfive/jh7110.dtsi
@@ -37,6 +37,7 @@ cpu0_intc: interrupt-controller {
 				compatible = "riscv,cpu-intc";
 				interrupt-controller;
 				#interrupt-cells = <1>;
+				bootph-pre-ram;
 			};
 		};
 
@@ -70,6 +71,7 @@ cpu1_intc: interrupt-controller {
 				compatible = "riscv,cpu-intc";
 				interrupt-controller;
 				#interrupt-cells = <1>;
+				bootph-pre-ram;
 			};
 		};
 
@@ -103,6 +105,7 @@ cpu2_intc: interrupt-controller {
 				compatible = "riscv,cpu-intc";
 				interrupt-controller;
 				#interrupt-cells = <1>;
+				bootph-pre-ram;
 			};
 		};
 
@@ -136,6 +139,7 @@ cpu3_intc: interrupt-controller {
 				compatible = "riscv,cpu-intc";
 				interrupt-controller;
 				#interrupt-cells = <1>;
+				bootph-pre-ram;
 			};
 		};
 
@@ -169,6 +173,7 @@ cpu4_intc: interrupt-controller {
 				compatible = "riscv,cpu-intc";
 				interrupt-controller;
 				#interrupt-cells = <1>;
+				bootph-pre-ram;
 			};
 		};
 
@@ -323,6 +328,7 @@ osc: oscillator {
 		compatible = "fixed-clock";
 		clock-output-names = "osc";
 		#clock-cells = <0>;
+		bootph-pre-ram;
 	};
 
 	rtc_osc: rtc-oscillator {
@@ -368,6 +374,7 @@ clint: timer@2000000 {
 					      <&cpu2_intc 3>, <&cpu2_intc 7>,
 					      <&cpu3_intc 3>, <&cpu3_intc 7>,
 					      <&cpu4_intc 3>, <&cpu4_intc 7>;
+			bootph-pre-ram;
 		};
 
 		ccache: cache-controller@2010000 {
@@ -382,6 +389,7 @@ ccache: cache-controller@2010000 {
 		};
 
 		dmc: dmc@15700000 {
+			bootph-pre-ram;
 			compatible = "starfive,jh7110-dmc";
 			reg = <0x0 0x15700000 0x0 0x10000>,
 			      <0x0 0x13000000 0x0 0x10000>;
@@ -916,6 +924,7 @@ syscrg: clock-controller@13020000 {
 				      "pll0_out", "pll1_out", "pll2_out";
 			#clock-cells = <1>;
 			#reset-cells = <1>;
+			bootph-pre-ram;
 		};
 
 		sys_syscon: syscon@13030000 {
@@ -1098,6 +1107,7 @@ dma: dma-controller@16050000 {
 			snps,block-size = <65536 65536 65536 65536>;
 			snps,priority = <0 1 2 3>;
 			snps,axi-max-burst-len = <16>;
+			bootph-pre-ram;
 		};
 
 		aoncrg: clock-controller@17000000 {
@@ -1115,6 +1125,7 @@ aoncrg: clock-controller@17000000 {
 				      "rtc_osc";
 			#clock-cells = <1>;
 			#reset-cells = <1>;
+			bootph-pre-ram;
 		};
 
 		aon_syscon: syscon@17010000 {
-- 
2.45.2


