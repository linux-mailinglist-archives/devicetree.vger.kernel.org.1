Return-Path: <devicetree+bounces-47954-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C775D86F6AB
	for <lists+devicetree@lfdr.de>; Sun,  3 Mar 2024 20:04:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 049291C2092E
	for <lists+devicetree@lfdr.de>; Sun,  3 Mar 2024 19:04:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E1CA9768E7;
	Sun,  3 Mar 2024 19:04:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="ge9Be1XY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3267076417
	for <devicetree@vger.kernel.org>; Sun,  3 Mar 2024 19:04:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709492691; cv=none; b=ME7dxVldFH19+e0uBJyP4PqmTeqUqkOpZmY45R/OxiHGEn9wNGGL+VFo4J/jNHU7PdY9DsvRcBv/K8wwmNskHImWPDhMnVadopm1FLMIumy1evUZ5XL+2E96uT7Ui55ikxkYg29setfcpiw5wYTQaUiNJBNNyGCUMLMLWJn1G/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709492691; c=relaxed/simple;
	bh=yUCKTERpm7RwVfsTUZyX+VOS3BZfvod5tti3+eOonYQ=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=I5t6F3bCJD6mU1+xQZXO+9ois6FtYwMU0369Lg14Mm6yKoaipgig5u5FjFBnTJyt0nfgg1SIXMSmbFeqxpZ0bS5PdYhGUPxNKZ37R9q53K6+DkJcAVxlmN9d2CWZMFI8WXIVOhZ8DRjf+/61jJXIFps/d5mJFm14YWZAUjbImpk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=ge9Be1XY; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
From: Dragan Simic <dsimic@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1709492679;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=PhdEsgsaQJt/ydW9Y2LBPPTw2gGhmjRcC5/1KGmz7K4=;
	b=ge9Be1XYE5k0igwgLfxN/tTtlKhKW/QbvmJWyFTbGrIvenz3kfBnfp8xcf8e2jygsf2j/E
	cNgYRGH1aswwwEAPIPrkBr+29ZnJ3w2YE9MafsmFYfl2y5vWsFf1R/ADBpxalEYSj7XTgr
	2JbHt9GHguQHzDRZWWTJThXkr79EUZxl2BfAKjCTYLjJ1Rf6IRoy6e5iP6tynPMicsZ+Jj
	04YwwBVmKJEKorKJyjk+RX/JblntjtqV3kvM+6G2EFZ4nfMnNA5mhE4aH8ULpLd4PITNK3
	xD/HsgrJYtWMT9a8/njVU0d/ZQ1JMsevw5schtSBC+oNCP/F5lPl/Kx2yWt/qA==
To: linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Subject: [PATCH] arm64: dts: rockchip: Add cache information to the SoC dtsi for RK3328
Date: Sun,  3 Mar 2024 20:04:27 +0100
Message-Id: <e61173d87f5f41af80e6f87f8820ce8d06f7c20c.1709491127.git.dsimic@manjaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

Add missing cache information to the Rockchip RK3328 SoC dtsi, to allow
the userspace, which includes /proc/cpuinfo and lscpu(1), to present proper
RK3328 cache information.

While there, use a more self-descriptive label for the L2 cache node, which
also makes it more consistent with other SoC dtsi files.

The cache parameters for the RK3328 dtsi were obtained and partially derived
by hand from the cache size and layout specifications found in the following
datasheets, official vendor websites, and technical reference manuals:

  - Rockchip RK3328 datasheet, version 1.4
  - https://opensource.rock-chips.com/wiki_RK3328, accessed on 2024-02-28
  - ARM Cortex-A53 revision r0p3 TRM, version E

For future reference, here's a brief summary of the documentation:

  - All caches employ the 64-byte cache line length
  - Each Cortex-A53 core has 32 KB of L1 2-way, set-associative instruction
    cache and 32 KB of L1 4-way, set-associative data cache
  - The entire SoC has 256 KB of unified L2 16-way, set-associative cache

The RK3328 SoC dtsi is also used for the single RK3318-based supported board.
Unfortunately, no datasheet is available for the RK3318, but some unofficial
sources state that its L2 cache size is the same as RK3328's, so it's perhaps
safe to assume the same for the L1 instruction and data cache sizes.

Signed-off-by: Dragan Simic <dsimic@manjaro.org>
---
 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 37 ++++++++++++++++++++----
 1 file changed, 32 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index 7b4c15c4a9c3..ac2846c33dc9 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -46,47 +46,71 @@ cpu0: cpu@0 {
 			cpu-idle-states = <&CPU_SLEEP>;
 			dynamic-power-coefficient = <120>;
 			enable-method = "psci";
-			next-level-cache = <&l2>;
 			operating-points-v2 = <&cpu0_opp_table>;
+			i-cache-size = <0x8000>;
+			i-cache-line-size = <64>;
+			i-cache-sets = <256>;
+			d-cache-size = <0x8000>;
+			d-cache-line-size = <64>;
+			d-cache-sets = <128>;
+			next-level-cache = <&l2_cache>;
 		};
 
 		cpu1: cpu@1 {
 			device_type = "cpu";
 			compatible = "arm,cortex-a53";
 			reg = <0x0 0x1>;
 			clocks = <&cru ARMCLK>;
 			#cooling-cells = <2>;
 			cpu-idle-states = <&CPU_SLEEP>;
 			dynamic-power-coefficient = <120>;
 			enable-method = "psci";
-			next-level-cache = <&l2>;
 			operating-points-v2 = <&cpu0_opp_table>;
+			i-cache-size = <0x8000>;
+			i-cache-line-size = <64>;
+			i-cache-sets = <256>;
+			d-cache-size = <0x8000>;
+			d-cache-line-size = <64>;
+			d-cache-sets = <128>;
+			next-level-cache = <&l2_cache>;
 		};
 
 		cpu2: cpu@2 {
 			device_type = "cpu";
 			compatible = "arm,cortex-a53";
 			reg = <0x0 0x2>;
 			clocks = <&cru ARMCLK>;
 			#cooling-cells = <2>;
 			cpu-idle-states = <&CPU_SLEEP>;
 			dynamic-power-coefficient = <120>;
 			enable-method = "psci";
-			next-level-cache = <&l2>;
 			operating-points-v2 = <&cpu0_opp_table>;
+			i-cache-size = <0x8000>;
+			i-cache-line-size = <64>;
+			i-cache-sets = <256>;
+			d-cache-size = <0x8000>;
+			d-cache-line-size = <64>;
+			d-cache-sets = <128>;
+			next-level-cache = <&l2_cache>;
 		};
 
 		cpu3: cpu@3 {
 			device_type = "cpu";
 			compatible = "arm,cortex-a53";
 			reg = <0x0 0x3>;
 			clocks = <&cru ARMCLK>;
 			#cooling-cells = <2>;
 			cpu-idle-states = <&CPU_SLEEP>;
 			dynamic-power-coefficient = <120>;
 			enable-method = "psci";
-			next-level-cache = <&l2>;
 			operating-points-v2 = <&cpu0_opp_table>;
+			i-cache-size = <0x8000>;
+			i-cache-line-size = <64>;
+			i-cache-sets = <256>;
+			d-cache-size = <0x8000>;
+			d-cache-line-size = <64>;
+			d-cache-sets = <128>;
+			next-level-cache = <&l2_cache>;
 		};
 
 		idle-states {
@@ -102,10 +126,13 @@ CPU_SLEEP: cpu-sleep {
 			};
 		};
 
-		l2: l2-cache0 {
+		l2_cache: l2-cache {
 			compatible = "cache";
 			cache-level = <2>;
 			cache-unified;
+			cache-size = <0x40000>;
+			cache-line-size = <64>;
+			cache-sets = <256>;
 		};
 	};
 

