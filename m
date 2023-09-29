Return-Path: <devicetree+bounces-4549-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 65B267B30A3
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 12:36:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 165AF28294A
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 10:36:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 802EF14262;
	Fri, 29 Sep 2023 10:36:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7153F111BC
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 10:36:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 57D62C433C7;
	Fri, 29 Sep 2023 10:36:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695983769;
	bh=ldx9jF4X9GZGha2wU+nh9igtsjutqs1LL8/03PuFfKw=;
	h=From:To:Cc:Subject:Date:From;
	b=BzKZ+sxm62x8nYDqxkih5lL3p2NtmB7L0uTyZoSVLWpYxBPoGoXmRE9nR0bFYnxom
	 n5EDlDRT72BqxhvdggGnr+AYo6fzONJVpBNSyE9+dU+iKEB3Rzaw87RcicYnP0NlGH
	 4sfxUV2reURq6qCncszpBfJVUh7FN8Ws9eza++A1tfcxLHHmp8Ga3OHA3L3K4Zp8M/
	 WjcNIwYOAe6RBLFInw8WZlHnMqm2Z6lZf4AahCO94olj1obBGb9gcXKTUrbNQkezyS
	 MljMJrI0NrkGQKP8fvhBVoNSO4q3yPDQ6PPtPoxovLxq/l++lB7VRUH98x+PsE1Hsn
	 OhgltA3C6vbcw==
From: Dinh Nguyen <dinguyen@kernel.org>
To: devicetree@vger.kernel.org
Cc: dinguyen@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowskii+dt@linaro.org,
	conor+dt@kernel.org
Subject: [PATCH 1/2] arm64: dts: socfpga: agilex/stratix10: move base_fpga_region out of soc node
Date: Fri, 29 Sep 2023 05:35:59 -0500
Message-ID: <20230929103600.262856-1-dinguyen@kernel.org>
X-Mailer: git-send-email 2.42.0
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
 arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi | 14 +++++++-------
 arch/arm64/boot/dts/intel/socfpga_agilex.dtsi     | 14 +++++++-------
 2 files changed, 14 insertions(+), 14 deletions(-)

diff --git a/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi b/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi
index 439497ab967d..4ad4cee83370 100644
--- a/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi
+++ b/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi
@@ -125,6 +125,13 @@ qspi_clk: qspi-clk {
 		};
 	};
 
+	base_fpga_region {
+		#address-cells = <0x2>;
+		#size-cells = <0x2>;
+		compatible = "fpga-region";
+		fpga-mgr = <&fpga_mgr>;
+	};
+
 	soc {
 		#address-cells = <1>;
 		#size-cells = <1>;
@@ -133,13 +140,6 @@ soc {
 		interrupt-parent = <&intc>;
 		ranges = <0 0 0 0xffffffff>;
 
-		base_fpga_region {
-			#address-cells = <0x2>;
-			#size-cells = <0x2>;
-			compatible = "fpga-region";
-			fpga-mgr = <&fpga_mgr>;
-		};
-
 		clkmgr: clock-controller@ffd10000 {
 			compatible = "intel,stratix10-clkmgr";
 			reg = <0xffd10000 0x1000>;
diff --git a/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi b/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi
index d3adb6a130ae..109bd4c35c3b 100644
--- a/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi
+++ b/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi
@@ -130,6 +130,13 @@ usbphy0: usbphy {
 		compatible = "usb-nop-xceiv";
 	};
 
+	base_fpga_region {
+		#address-cells = <0x2>;
+		#size-cells = <0x2>;
+		compatible = "fpga-region";
+		fpga-mgr = <&fpga_mgr>;
+	};
+
 	soc {
 		#address-cells = <1>;
 		#size-cells = <1>;
@@ -138,13 +145,6 @@ soc {
 		interrupt-parent = <&intc>;
 		ranges = <0 0 0 0xffffffff>;
 
-		base_fpga_region {
-			#address-cells = <0x2>;
-			#size-cells = <0x2>;
-			compatible = "fpga-region";
-			fpga-mgr = <&fpga_mgr>;
-		};
-
 		clkmgr: clock-controller@ffd10000 {
 			compatible = "intel,agilex-clkmgr";
 			reg = <0xffd10000 0x1000>;
-- 
2.42.0


