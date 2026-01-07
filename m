Return-Path: <devicetree+bounces-252153-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B033CFBAA4
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 03:11:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 19620304BCB8
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 02:11:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D4D8274B58;
	Wed,  7 Jan 2026 02:10:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ih/Gm4TP"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E50A62737F9;
	Wed,  7 Jan 2026 02:10:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767751817; cv=none; b=oLHQJAl4/VJ78bB8LR89ivHJeZQe4HM3YeXR5YSVAiAC5Z46lieFhV4SDooOxSKA3EPx3xdEtppy/7DSSFOHe8zfrhTQeLqxfWo/2G3JW3gbu2K/As7UcB6GtGZ+89SDUN782rlPcf8/pabTX8REgEGeQxItbunt75+0gkB3y+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767751817; c=relaxed/simple;
	bh=LMeelO8gLtnnbvvu5xzPh8wTl8wU3Gtpg/HJn4KVftg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=jQWFiyJDenYAkw15VXTU1UDU69hLV29cE4a62OzsDM/yo1hxbAz4CrizzTvQVeowcIipz3aLR81W0j6PP/Psv2X2JHUww4lCFnL+5sWpuZdfKPvdkOAOj6wkMUDZ8zNcZ7zmNmyYrR3SKFH8g+kP0Fe/nhu/nfOXTA1ROfE/0bM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ih/Gm4TP; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AED1AC16AAE;
	Wed,  7 Jan 2026 02:10:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767751816;
	bh=LMeelO8gLtnnbvvu5xzPh8wTl8wU3Gtpg/HJn4KVftg=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=ih/Gm4TPH+eDejcIkAtUiP4sxYx+2oVEvnNszmk8tMys/2TQEbuN1edLIuhwoIOuE
	 +m/cFKJuioswgVkKNJU/COwR5O2izLE6PRFq1E2itm/qc5XBVrICg1m9XM+H76eqZI
	 mec4ifcCndeC216s5aBWrMzqwjWn670gp3OPBgy3qifQgjbnnJfy7ZLVP4hD4GNXK7
	 MvuDQRs58aMpGKMJlECVA5WOgI/6VLmv49AQpZqYe2ISNGvhkWZo6doA5dSXi+miAS
	 7Qu3DECwbGUIrH7yV58cR0jVxr8dh/9eLSQFHOsXYR6yhvfLTyVwjLTqP2EQxoz8XT
	 6fgNWxhceZ/RA==
From: "Rob Herring (Arm)" <robh@kernel.org>
Date: Tue, 06 Jan 2026 20:09:49 -0600
Subject: [PATCH 10/13] arm64: dts: broadcom: northstar2: Rework clock nodes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260106-dt-dtbs-broadcom-fixes-v1-10-ba45874e4553@kernel.org>
References: <20260106-dt-dtbs-broadcom-fixes-v1-0-ba45874e4553@kernel.org>
In-Reply-To: <20260106-dt-dtbs-broadcom-fixes-v1-0-ba45874e4553@kernel.org>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Florian Fainelli <florian.fainelli@broadcom.com>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>
Cc: devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
X-Mailer: b4 0.15-dev

The nd2-clocks.dtsi is oddly included in the middle of a bus node and is
only included in one place, so collapse it into ns2.dtsi. Move the fixed
and fixed-factor clock nodes to the root as they are not part of the
bus. Rename the node names to use preferred names.

Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
 .../boot/dts/broadcom/northstar2/ns2-clock.dtsi    | 105 ---------------------
 arch/arm64/boot/dts/broadcom/northstar2/ns2.dtsi   |  73 +++++++++++++-
 2 files changed, 71 insertions(+), 107 deletions(-)

diff --git a/arch/arm64/boot/dts/broadcom/northstar2/ns2-clock.dtsi b/arch/arm64/boot/dts/broadcom/northstar2/ns2-clock.dtsi
deleted file mode 100644
index 99009fdf10a4..000000000000
--- a/arch/arm64/boot/dts/broadcom/northstar2/ns2-clock.dtsi
+++ /dev/null
@@ -1,105 +0,0 @@
-/*
- *  BSD LICENSE
- *
- *  Copyright (c) 2016 Broadcom.  All rights reserved.
- *
- *  Redistribution and use in source and binary forms, with or without
- *  modification, are permitted provided that the following conditions
- *  are met:
- *
- *    * Redistributions of source code must retain the above copyright
- *      notice, this list of conditions and the following disclaimer.
- *    * Redistributions in binary form must reproduce the above copyright
- *      notice, this list of conditions and the following disclaimer in
- *      the documentation and/or other materials provided with the
- *      distribution.
- *    * Neither the name of Broadcom Corporation nor the names of its
- *      contributors may be used to endorse or promote products derived
- *      from this software without specific prior written permission.
- *
- *  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
- *  "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
- *  LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
- *  A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
- *  OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
- *  SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
- *  LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
- *  DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
- *  THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
- *  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
- * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
- */
-
-#include <dt-bindings/clock/bcm-ns2.h>
-
-	osc: oscillator {
-		#clock-cells = <0>;
-		compatible = "fixed-clock";
-		clock-frequency = <25000000>;
-	};
-
-	lcpll_ddr: lcpll_ddr@6501d058 {
-		#clock-cells = <1>;
-		compatible = "brcm,ns2-lcpll-ddr";
-		reg = <0x6501d058 0x20>,
-		      <0x6501c020 0x4>,
-		      <0x6501d04c 0x4>;
-		clocks = <&osc>;
-		clock-output-names = "lcpll_ddr", "pcie_sata_usb",
-				     "ddr", "ddr_ch2_unused",
-				     "ddr_ch3_unused", "ddr_ch4_unused",
-				     "ddr_ch5_unused";
-	};
-
-	lcpll_ports: lcpll_ports@6501d078 {
-		#clock-cells = <1>;
-		compatible = "brcm,ns2-lcpll-ports";
-		reg = <0x6501d078 0x20>,
-		      <0x6501c020 0x4>,
-		      <0x6501d054 0x4>;
-		clocks = <&osc>;
-		clock-output-names = "lcpll_ports", "wan", "rgmii",
-				     "ports_ch2_unused",
-				     "ports_ch3_unused",
-				     "ports_ch4_unused",
-				     "ports_ch5_unused";
-	};
-
-	genpll_scr: genpll_scr@6501d098 {
-		#clock-cells = <1>;
-		compatible = "brcm,ns2-genpll-scr";
-		reg = <0x6501d098 0x32>,
-		      <0x6501c020 0x4>,
-		      <0x6501d044 0x4>;
-		clocks = <&osc>;
-		clock-output-names = "genpll_scr", "scr", "fs",
-				     "audio_ref", "scr_ch3_unused",
-				     "scr_ch4_unused", "scr_ch5_unused";
-	};
-
-	iprocmed: iprocmed {
-		#clock-cells = <0>;
-		compatible = "fixed-factor-clock";
-		clocks = <&genpll_scr BCM_NS2_GENPLL_SCR_SCR_CLK>;
-		clock-div = <2>;
-		clock-mult = <1>;
-	};
-
-	iprocslow: iprocslow {
-		#clock-cells = <0>;
-		compatible = "fixed-factor-clock";
-		clocks = <&genpll_scr BCM_NS2_GENPLL_SCR_SCR_CLK>;
-		clock-div = <4>;
-		clock-mult = <1>;
-	};
-
-	genpll_sw: genpll_sw@6501d0c4 {
-		#clock-cells = <1>;
-		compatible = "brcm,ns2-genpll-sw";
-		reg = <0x6501d0c4 0x32>,
-		      <0x6501c020 0x4>,
-		      <0x6501d044 0x4>;
-		clocks = <&osc>;
-		clock-output-names = "genpll_sw", "rpe", "250", "nic",
-				     "chimp", "port", "sdio";
-	};
diff --git a/arch/arm64/boot/dts/broadcom/northstar2/ns2.dtsi b/arch/arm64/boot/dts/broadcom/northstar2/ns2.dtsi
index 0de9d6265701..c9bf77b3566e 100644
--- a/arch/arm64/boot/dts/broadcom/northstar2/ns2.dtsi
+++ b/arch/arm64/boot/dts/broadcom/northstar2/ns2.dtsi
@@ -113,6 +113,28 @@ pmu {
 				     <&A57_3>;
 	};
 
+	osc: clock-25000000 {
+		#clock-cells = <0>;
+		compatible = "fixed-clock";
+		clock-frequency = <25000000>;
+	};
+
+	iprocmed: iprocmed {
+		#clock-cells = <0>;
+		compatible = "fixed-factor-clock";
+		clocks = <&genpll_scr BCM_NS2_GENPLL_SCR_SCR_CLK>;
+		clock-div = <2>;
+		clock-mult = <1>;
+	};
+
+	iprocslow: iprocslow {
+		#clock-cells = <0>;
+		compatible = "fixed-factor-clock";
+		clocks = <&genpll_scr BCM_NS2_GENPLL_SCR_SCR_CLK>;
+		clock-div = <4>;
+		clock-mult = <1>;
+	};
+
 	pcie0: pcie@20020000 {
 		compatible = "brcm,iproc-pcie";
 		reg = <0 0x20020000 0 0x1000>;
@@ -197,8 +219,6 @@ soc: soc {
 		#size-cells = <1>;
 		ranges = <0 0 0 0xffffffff>;
 
-		#include "ns2-clock.dtsi"
-
 		enet: ethernet@61000000 {
 			compatible = "brcm,ns2-amac";
 			reg = <0x61000000 0x1000>,
@@ -334,6 +354,55 @@ smmu: iommu@64000000 {
 			#iommu-cells = <1>;
 		};
 
+		lcpll_ddr: clock-controller@6501d058 {
+			#clock-cells = <1>;
+			compatible = "brcm,ns2-lcpll-ddr";
+			reg = <0x6501d058 0x20>,
+			      <0x6501c020 0x4>,
+			      <0x6501d04c 0x4>;
+			clocks = <&osc>;
+			clock-output-names = "lcpll_ddr", "pcie_sata_usb",
+					     "ddr", "ddr_ch2_unused",
+					     "ddr_ch3_unused", "ddr_ch4_unused",
+					     "ddr_ch5_unused";
+		};
+
+		lcpll_ports: clock-controller@6501d078 {
+			#clock-cells = <1>;
+			compatible = "brcm,ns2-lcpll-ports";
+			reg = <0x6501d078 0x20>,
+			      <0x6501c020 0x4>,
+			      <0x6501d054 0x4>;
+			clocks = <&osc>;
+			clock-output-names = "lcpll_ports", "wan", "rgmii",
+					     "ports_ch2_unused",
+					     "ports_ch3_unused",
+					     "ports_ch4_unused",
+					     "ports_ch5_unused";
+		};
+
+		genpll_scr: clock-controller@6501d098 {
+			#clock-cells = <1>;
+			compatible = "brcm,ns2-genpll-scr";
+			reg = <0x6501d098 0x32>,
+			      <0x6501c020 0x4>,
+			      <0x6501d044 0x4>;
+			clocks = <&osc>;
+			clock-output-names = "genpll_scr", "scr", "fs",
+					     "audio_ref", "scr_ch3_unused",
+					     "scr_ch4_unused", "scr_ch5_unused";
+		};
+
+		genpll_sw: clock-controller@6501d0c4 {
+			#clock-cells = <1>;
+			compatible = "brcm,ns2-genpll-sw";
+			reg = <0x6501d0c4 0x32>,
+			      <0x6501c020 0x4>,
+			      <0x6501d044 0x4>;
+			clocks = <&osc>;
+			clock-output-names = "genpll_sw", "rpe", "250", "nic",
+					     "chimp", "port", "sdio";
+		};
 		pinctrl: pinctrl@6501d130 {
 			compatible = "brcm,ns2-pinmux";
 			reg = <0x6501d130 0x08>,

-- 
2.51.0


