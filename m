Return-Path: <devicetree+bounces-47955-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 29C5486F6AC
	for <lists+devicetree@lfdr.de>; Sun,  3 Mar 2024 20:05:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5BE581C20911
	for <lists+devicetree@lfdr.de>; Sun,  3 Mar 2024 19:05:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE93D768E7;
	Sun,  3 Mar 2024 19:05:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="A2ZJ9H21"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 464167641C
	for <devicetree@vger.kernel.org>; Sun,  3 Mar 2024 19:05:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709492706; cv=none; b=tyZpAQT6HGOIW7i/Oui0cdZrAwEClG8YazWvLuPRJfeQyKYROpGLYHZtwdI/r8hbXKPWFNCP4QqV8TPjLDIBkAQ6cBld1arcubx6F7nG0Ejb3ks1QTF09BJeahNPKv7nQIuUnYivxxHoAhfrtj/yXeaQ5bLxSFXPMcvilT3M7hs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709492706; c=relaxed/simple;
	bh=3Msr0kf9JJbjKsmt9uK226K1/N0RkpTHQFTp2SH9kGI=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=RvaRM9ww3FXfc8TNPAMMu1wqW8VjcjYxe707ItbJwePcRrwbDSUrRpYNENAOSb1lYH9WbkToL8VBA1ShTOwTnQ+fryZY84p53p91GGP3tv6IVXkd3mQ0OZWfM4OpVKXfCwDeDmHeybfLEq6y9RSQsfjYXAT/Tkjpy6PeXqbHPl4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=A2ZJ9H21; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
From: Dragan Simic <dsimic@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1709492702;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=eclI6Nht94ihjn4YyAdHXbtFQ8yPR/LbXHslJ7ic0X4=;
	b=A2ZJ9H21YFjy9KxtqqQ74xNwF6wVwv3+I2cqbDdEXZRlXUaa29u3tFxIdNkEVTfUN+rI5E
	yuooFF4t9Vk7B/T0OJMsv/xPXHjz0YIHzNKLwrxPUo+YW+jTQG82MUEhnRgq9QSfUKSWhE
	XhV69OUvjqqRZ1cUh9rpmxKuRllNfkLrPoWjO0+IKy4PV6LYGSGLGBneE94U+RabumpM//
	jYUo6HLdcG8W0Fukysj3hbtFMQ4Eemx4DcuJ26bhGB2Ey92iVM2/E8qSUwLvjVqE7zOIYc
	x8Uy7a41qD5slXRxPwReh2G1Q8S08/5DSEacW8x5irDgVcBixe9K0cD+T1qLWA==
To: linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	Anand Moon <linux.amoon@gmail.com>
Subject: [PATCH] arm64: dts: rockchip: Add cache information to the SoC dtsi for RK356x
Date: Sun,  3 Mar 2024 20:04:50 +0100
Message-Id: <2285ee41e165813011220f9469e28697923aa6e0.1709491108.git.dsimic@manjaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

Add missing cache information to the Rockchip RK356x SoC dtsi, to allow
the userspace, which includes /proc/cpuinfo and lscpu(1), to present proper
RK3566 and RK3568 cache information.  Also, it gets rid of the following
error in the kernel log:

  cacheinfo: Unable to detect cache hierarchy for CPU 0

The cache parameters for the RK356x dtsi were obtained and partially derived
by hand from the cache size and layout specifications found in the following
datasheets and technical reference manuals:

  - Rockchip RK3566 datasheet, version 1.1
  - Rockchip RK3568 datasheet, version 1.3
  - ARM Cortex-A55 revision r1p0 TRM, version 0100-00
  - ARM DynamIQ Shared Unit revision r4p0 TRM, version 0400-02

For future reference, here's a rather detailed summary of the documentation,
which applies to both Rockchip RK3566 and RK3568 SoCs:

  - All caches employ the 64-byte cache line length
  - Each Cortex-A55 core has 32 KB of L1 4-way, set-associative instruction
    cache and 32 KB of L1 4-way, set-associative data cache
  - There are no L2 caches, which are per-core and private in Cortex-A55,
    because it belongs to the ARM DynamIQ IP core lineup
  - The entire SoC has 512 KB of unified L3 16-way, set-associative cache,
    which is shared among all four Cortex-A55 CPU cores
  - Cortex-A55 cores can be configured without private per-core L2 caches,
    in which case the shared L3 cache appears to them as an L2 cache;  this
    is the case for the RK356x SoCs, so let's use "cache-level = <2>" to
    prevent the "huh, no L2 caches, but an L3 cache?" confusion among the
    users viewing the data presented to the userspace;  another option could
    be to have additional 0 KB L2 caches defined, which may be technically
    correct, but would probably be even more confusing

Helped-by: Anand Moon <linux.amoon@gmail.com>
Signed-off-by: Dragan Simic <dsimic@manjaro.org>
---

Notes:
    As already agreed upon with Anand Moon, this patch replaces the submission
    of a similar, albeit a bit incorrect patch [1] that appeared a bit earlier
    on the linux-rockchip mailing list.
    
    [1] https://lore.kernel.org/linux-rockchip/20240226182310.4032-1-linux.amoon@gmail.com/T/#u

 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 41 ++++++++++++++++++++++++
 1 file changed, 41 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index c19c0f1b3778..6dfb2d47d3d0 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -57,36 +57,77 @@ cpu0: cpu@0 {
 			#cooling-cells = <2>;
 			enable-method = "psci";
 			operating-points-v2 = <&cpu0_opp_table>;
+			i-cache-size = <0x8000>;
+			i-cache-line-size = <64>;
+			i-cache-sets = <128>;
+			d-cache-size = <0x8000>;
+			d-cache-line-size = <64>;
+			d-cache-sets = <128>;
+			next-level-cache = <&l3_cache>;
 		};
 
 		cpu1: cpu@100 {
 			device_type = "cpu";
 			compatible = "arm,cortex-a55";
 			reg = <0x0 0x100>;
 			#cooling-cells = <2>;
 			enable-method = "psci";
 			operating-points-v2 = <&cpu0_opp_table>;
+			i-cache-size = <0x8000>;
+			i-cache-line-size = <64>;
+			i-cache-sets = <128>;
+			d-cache-size = <0x8000>;
+			d-cache-line-size = <64>;
+			d-cache-sets = <128>;
+			next-level-cache = <&l3_cache>;
 		};
 
 		cpu2: cpu@200 {
 			device_type = "cpu";
 			compatible = "arm,cortex-a55";
 			reg = <0x0 0x200>;
 			#cooling-cells = <2>;
 			enable-method = "psci";
 			operating-points-v2 = <&cpu0_opp_table>;
+			i-cache-size = <0x8000>;
+			i-cache-line-size = <64>;
+			i-cache-sets = <128>;
+			d-cache-size = <0x8000>;
+			d-cache-line-size = <64>;
+			d-cache-sets = <128>;
+			next-level-cache = <&l3_cache>;
 		};
 
 		cpu3: cpu@300 {
 			device_type = "cpu";
 			compatible = "arm,cortex-a55";
 			reg = <0x0 0x300>;
 			#cooling-cells = <2>;
 			enable-method = "psci";
 			operating-points-v2 = <&cpu0_opp_table>;
+			i-cache-size = <0x8000>;
+			i-cache-line-size = <64>;
+			i-cache-sets = <128>;
+			d-cache-size = <0x8000>;
+			d-cache-line-size = <64>;
+			d-cache-sets = <128>;
+			next-level-cache = <&l3_cache>;
 		};
 	};
 
+	/*
+	 * There are no private per-core L2 caches, but only the
+	 * L3 cache that appears to the CPU cores as L2 caches
+	 */
+	l3_cache: l3-cache {
+		compatible = "cache";
+		cache-level = <2>;
+		cache-unified;
+		cache-size = <0x80000>;
+		cache-line-size = <64>;
+		cache-sets = <512>;
+	};
+
 	cpu0_opp_table: opp-table-0 {
 		compatible = "operating-points-v2";
 		opp-shared;

