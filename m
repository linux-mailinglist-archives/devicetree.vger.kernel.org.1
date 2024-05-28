Return-Path: <devicetree+bounces-70004-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 876C48D21D9
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 18:45:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0A4831F22A3B
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 16:45:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF438172BD8;
	Tue, 28 May 2024 16:45:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="XfZPCvB0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F55216F84B;
	Tue, 28 May 2024 16:45:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716914734; cv=none; b=BOqmpUFjdUQw1t0NI4HZ0joR+9srV3U6AnSJvEEsYHruYsHrSmK+cQwADVsrcjc4Pt4G+amulvTSjjU0rHhgGKNnVRqkcLZQCHkDR0cWjMRR9U3hWObWdpRcYJzgQhNEMys/uSe6PuuX9mUJeox9BJTaF6ZFKqUsj/1Ayf1erFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716914734; c=relaxed/simple;
	bh=RNENPMUVOErEihV9VpMUSVtosnCNGIbMtiITHws7HUY=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=p8vD/0CTAcoc8SDlS4DhX+hJxELLONZA1aM1ZR/6akCK9tMV5nU9I0vtEBXd9tdvyxYtYQRinpdNrHNTlOl/htEbLfm5l0Chailxqg1iPkQfpgksVrOhHgNZqf0NdlM2lDzOIeayJFRAMa92hOkuHJu64RoCob/f1M3pDBtFHMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=XfZPCvB0; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
From: Dragan Simic <dsimic@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1716914728;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=qU/m0pT2o1BSovPlePC2ZNxt37n/l0bBu7fGFNu7dK0=;
	b=XfZPCvB0bXqtMHUryeAAoL0CvQLeuJS+DTZoFoAftSDqxbakJ9WDlesZuhNotj5JaaSUHQ
	hoOfdNOOFctLehFvlfTtez69Tojn3kefLHVVidhSNoPzrZBq6rK427PE9g3AuGwLDB5z12
	E4hJtPGLvXL6ZUT/xBl42KAT6l5lw+UOarIuxSnJ0JyjgavzP7ERwKlQthsoBOEHCUfTDh
	WdtQcBQ4x2MgkH55Z/7mwv9cbyDONDL34SF79kRjfc1hV52djTnWIrjHaVdeznYBZyQ7Ue
	3HgvOaqwLgC9Tb3hXcBOpzSNA19yshZzcorjEvs5A+ruRGEQZaJxaE1ds2sYnQ==
To: linux-sunxi@lists.linux.dev
Cc: wens@csie.org,
	jernej.skrabec@gmail.com,
	samuel@sholland.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	robh+dt@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-kernel@vger.kernel.org,
	Andre Przywara <andre.przywara@arm.com>
Subject: [PATCH v2] arm64: dts: allwinner: Add cache information to the SoC dtsi for H616
Date: Tue, 28 May 2024 18:45:16 +0200
Message-Id: <e4b9cc3e3d366a571e552c31dafa5de847bc1c12.1716914537.git.dsimic@manjaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

Add missing cache information to the Allwinner H616 SoC dtsi, to allow
the userspace, which includes lscpu(1) that uses the virtual files provided
by the kernel under the /sys/devices/system/cpu directory, to display the
proper H616 cache information.

Adding the cache information to the H616 SoC dtsi also makes the following
warning message in the kernel log go away:

  cacheinfo: Unable to detect cache hierarchy for CPU 0

Rather conspicuously, almost no cache-related information is available in
the publicly available Allwinner H616 datasheet (version 1.0) and H616 user
manual (version 1.0).  Thus, the cache parameters for the H616 SoC dtsi were
obtained and derived by hand from the cache size and layout specifications
found in the following technical reference manual, and from the cache size
and die revision hints available from the following community-provided data
and memory subsystem benchmarks:

  - ARM Cortex-A53 revision r0p4 TRM, version J
  - Summary of the two available H616 die revisions and their differences
    in cache sizes observed from the CSSIDR_EL1 register readouts, provided
    by Andre Przywara [1][2]
  - Tinymembench benchmark results of the H616-based OrangePi Zero 2 SBC,
    provided by Thomas Kaiser [3]

For future reference, here's a brief summary of the available documentation
and the community-provided data and memory subsystem benchmarks:

  - All caches employ the 64-byte cache line length
  - Each Cortex-A53 core has 32 KB of L1 2-way, set-associative instruction
    cache and 32 KB of L1 4-way, set-associative data cache
  - The size of the L2 cache depends on the actual H616 die revision (there
    are two die revisions), so the entire SoC can have either 256 KB or 1 MB
    of unified L2 16-way, set-associative cache [1]

Also for future reference, here's the relevant excerpt from the community-
provided H616 memory subsystem benchmark, [3] which confirms that 32 KB and
256 KB are the L1 data and L2 cache sizes, respectively:

    block size : single random read / dual random read
          1024 :    0.0 ns          /     0.0 ns
          2048 :    0.0 ns          /     0.0 ns
          4096 :    0.0 ns          /     0.0 ns
          8192 :    0.0 ns          /     0.0 ns
         16384 :    0.0 ns          /     0.0 ns
         32768 :    0.0 ns          /     0.0 ns
         65536 :    4.3 ns          /     7.3 ns
        131072 :    6.6 ns          /    10.5 ns
        262144 :    9.8 ns          /    15.2 ns
        524288 :   91.8 ns          /   142.9 ns
       1048576 :  138.6 ns          /   188.3 ns
       2097152 :  163.0 ns          /   204.8 ns
       4194304 :  178.8 ns          /   213.5 ns
       8388608 :  187.1 ns          /   217.9 ns
      16777216 :  192.2 ns          /   220.9 ns
      33554432 :  196.5 ns          /   224.0 ns
      67108864 :  215.7 ns          /   259.5 ns

The changes introduced to the H616 SoC dtsi by this patch specify 256 KB as
the L2 cache size.  As outlined by Andre Przywara, [2] a follow-up TF-A patch
will perform runtime adjustment of the device tree data, making the correct
L2 cache size of 1 MB present in the device tree for the boards based on the
revision of H616 that actually provides 1 MB of L2 cache.

[1] https://lore.kernel.org/linux-sunxi/20240430114627.0cfcd14a@donnerap.manchester.arm.com/
[2] https://lore.kernel.org/linux-sunxi/20240501103059.10a8f7de@donnerap.manchester.arm.com/
[3] https://raw.githubusercontent.com/ThomasKaiser/sbc-bench/master/results/4knM.txt

Suggested-by: Andre Przywara <andre.przywara@arm.com>
Helped-by: Andre Przywara <andre.przywara@arm.com>
Reviewed-by: Andre Przywara <andre.przywara@arm.com>
Signed-off-by: Dragan Simic <dsimic@manjaro.org>
---

Notes:
    Link to v1: https://lore.kernel.org/linux-sunxi/9d52e6d338a059618d894abb0764015043330c2b.1714727227.git.dsimic@manjaro.org/T/#u
    
    Changes in v2:
      - Collected one Reviewed-by tag
      - Rebased the patch to 6.10-rc1, as requested by Chen-Yu, [4] with
        no functional changes introduced
    
    [4] https://lore.kernel.org/linux-sunxi/CAGb2v67_4MHEZned0X1sFxisySahemHYo6sjn9sttQY+RO=VQw@mail.gmail.com/

 .../arm64/boot/dts/allwinner/sun50i-h616.dtsi | 37 +++++++++++++++++++
 1 file changed, 37 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi
index 921d5f61d8d6..6595e0406b6d 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi
@@ -27,33 +27,70 @@ cpu0: cpu@0 {
 			enable-method = "psci";
 			clocks = <&ccu CLK_CPUX>;
 			#cooling-cells = <2>;
+			i-cache-size = <0x8000>;
+			i-cache-line-size = <64>;
+			i-cache-sets = <256>;
+			d-cache-size = <0x8000>;
+			d-cache-line-size = <64>;
+			d-cache-sets = <128>;
+			next-level-cache = <&l2_cache>;
 		};
 
 		cpu1: cpu@1 {
 			compatible = "arm,cortex-a53";
 			device_type = "cpu";
 			reg = <1>;
 			enable-method = "psci";
 			clocks = <&ccu CLK_CPUX>;
 			#cooling-cells = <2>;
+			i-cache-size = <0x8000>;
+			i-cache-line-size = <64>;
+			i-cache-sets = <256>;
+			d-cache-size = <0x8000>;
+			d-cache-line-size = <64>;
+			d-cache-sets = <128>;
+			next-level-cache = <&l2_cache>;
 		};
 
 		cpu2: cpu@2 {
 			compatible = "arm,cortex-a53";
 			device_type = "cpu";
 			reg = <2>;
 			enable-method = "psci";
 			clocks = <&ccu CLK_CPUX>;
 			#cooling-cells = <2>;
+			i-cache-size = <0x8000>;
+			i-cache-line-size = <64>;
+			i-cache-sets = <256>;
+			d-cache-size = <0x8000>;
+			d-cache-line-size = <64>;
+			d-cache-sets = <128>;
+			next-level-cache = <&l2_cache>;
 		};
 
 		cpu3: cpu@3 {
 			compatible = "arm,cortex-a53";
 			device_type = "cpu";
 			reg = <3>;
 			enable-method = "psci";
 			clocks = <&ccu CLK_CPUX>;
 			#cooling-cells = <2>;
+			i-cache-size = <0x8000>;
+			i-cache-line-size = <64>;
+			i-cache-sets = <256>;
+			d-cache-size = <0x8000>;
+			d-cache-line-size = <64>;
+			d-cache-sets = <128>;
+			next-level-cache = <&l2_cache>;
+		};
+
+		l2_cache: l2-cache {
+			compatible = "cache";
+			cache-level = <2>;
+			cache-unified;
+			cache-size = <0x40000>;
+			cache-line-size = <64>;
+			cache-sets = <256>;
 		};
 	};
 

