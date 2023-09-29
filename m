Return-Path: <devicetree+bounces-4550-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id ED0177B30A4
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 12:36:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 0BE9E283290
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 10:36:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 46E0D156F9;
	Fri, 29 Sep 2023 10:36:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38B12111BC
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 10:36:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 38AC4C433C8;
	Fri, 29 Sep 2023 10:36:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695983769;
	bh=K9QLdPHo8nBFuTiyVq7+XbsksTk49CUxtd/Yuthu8nM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=bhHn7lgoraCIarVnwXT6M3j82ztFuXhI4iG9vzvOpmydj7kHreTVFb3dVrzHqTy6k
	 w205JnY3BqTuO9l0n1bGdTdSaFgHMxKQQty2uTIa3rWoCbnRURQ+GpX/ZgXMH9cwJj
	 1yZaZHWHd1hJ1Lv2kQ2tQW917Aviz1FOSSNLOkvkgrGAyNIXbsSlX+JjC018kkv9wt
	 deZMxebECztm35HLBaAK6dELD++wf9bWH/T1Zp4YGPOQS/FPnVl3lZ2d0J8Pz7tdjB
	 wPIFkHAXzq7a37mBXM2b6Y+1KvHSd+j9ujwh3vVXsXX9eJG78NqopKW5JwQ3yXVPrH
	 TehVcrMrZCcWg==
From: Dinh Nguyen <dinguyen@kernel.org>
To: devicetree@vger.kernel.org
Cc: dinguyen@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowskii+dt@linaro.org,
	conor+dt@kernel.org
Subject: [PATCH 2/2] ARM: dts: socfpga: move base_fpga_region out of soc node
Date: Fri, 29 Sep 2023 05:36:00 -0500
Message-ID: <20230929103600.262856-2-dinguyen@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230929103600.262856-1-dinguyen@kernel.org>
References: <20230929103600.262856-1-dinguyen@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The soc node is supposed to only have device nodes with MMIO addresses,
thus move the base_fpga_region outside of the soc node.

soc: base_fpga_region: {'#address-cells': [[2]], '#size-cells': [[2]],
'compatible': ['fpga-region'], 'fpga-mgr': [[6]]} should not be valid
under {'type': 'object'}

Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
---
 arch/arm/boot/dts/intel/socfpga/socfpga.dtsi     | 16 ++++++++--------
 .../boot/dts/intel/socfpga/socfpga_arria10.dtsi  | 16 ++++++++--------
 2 files changed, 16 insertions(+), 16 deletions(-)

diff --git a/arch/arm/boot/dts/intel/socfpga/socfpga.dtsi b/arch/arm/boot/dts/intel/socfpga/socfpga.dtsi
index 4c1d140f40f8..db6aa372b868 100644
--- a/arch/arm/boot/dts/intel/socfpga/socfpga.dtsi
+++ b/arch/arm/boot/dts/intel/socfpga/socfpga.dtsi
@@ -54,6 +54,14 @@ intc: interrupt-controller@fffed000 {
 		      <0xfffec100 0x100>;
 	};
 
+	base_fpga_region {
+		compatible = "fpga-region";
+		fpga-mgr = <&fpgamgr0>;
+
+		#address-cells = <0x1>;
+		#size-cells = <0x1>;
+	};
+
 	soc {
 		#address-cells = <1>;
 		#size-cells = <1>;
@@ -87,14 +95,6 @@ pdma: pdma@ffe01000 {
 			};
 		};
 
-		base_fpga_region {
-			compatible = "fpga-region";
-			fpga-mgr = <&fpgamgr0>;
-
-			#address-cells = <0x1>;
-			#size-cells = <0x1>;
-		};
-
 		can0: can@ffc00000 {
 			compatible = "bosch,d_can";
 			reg = <0xffc00000 0x1000>;
diff --git a/arch/arm/boot/dts/intel/socfpga/socfpga_arria10.dtsi b/arch/arm/boot/dts/intel/socfpga/socfpga_arria10.dtsi
index f36063c57c7f..dbba8b2533c3 100644
--- a/arch/arm/boot/dts/intel/socfpga/socfpga_arria10.dtsi
+++ b/arch/arm/boot/dts/intel/socfpga/socfpga_arria10.dtsi
@@ -46,6 +46,14 @@ intc: interrupt-controller@ffffd000 {
 		      <0xffffc100 0x100>;
 	};
 
+	base_fpga_region {
+		#address-cells = <0x1>;
+		#size-cells = <0x1>;
+
+		compatible = "fpga-region";
+		fpga-mgr = <&fpga_mgr>;
+	};
+
 	soc {
 		#address-cells = <1>;
 		#size-cells = <1>;
@@ -80,14 +88,6 @@ pdma: pdma@ffda1000 {
 			};
 		};
 
-		base_fpga_region {
-			#address-cells = <0x1>;
-			#size-cells = <0x1>;
-
-			compatible = "fpga-region";
-			fpga-mgr = <&fpga_mgr>;
-		};
-
 		clkmgr@ffd04000 {
 				compatible = "altr,clk-mgr";
 				reg = <0xffd04000 0x1000>;
-- 
2.42.0


