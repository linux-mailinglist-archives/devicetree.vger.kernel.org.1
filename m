Return-Path: <devicetree+bounces-252146-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D7D24CFBAC8
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 03:13:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 62F6930CDCA4
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 02:10:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2516924676D;
	Wed,  7 Jan 2026 02:10:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nt7J2x57"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0B5B242D89;
	Wed,  7 Jan 2026 02:10:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767751810; cv=none; b=LstrRTW+5zM0OTcT/q67PShwODo04b/fGtzzdUc0v7vDEZuZGUkCYSioOQz7uAfzD4rgXBEV4VFPyf0Pkfcsqh9VPMqvwdr4vT5hjdY4TCDLKO3iRGxWxreq27VBSrMBiqC6vZqOfMHavCmdWgpy0VBrP6NXYqdQ+y5IxiOIeuE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767751810; c=relaxed/simple;
	bh=P1nkQlwmHCB4ptKpTcMysgD54OQnmfZucCNh/Rw44NM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=PhTkcLg0Z1FlsCZYBPdxa177vl4FN9fcQo53Dha3ow4NxnOma83MMJtm52nltU5IFSxKUcoKacPsUtxMB+bjVonH1JUCnlRkFLJEFjr5l8yH+YEXbCBBju2LPSHwwbWD63FHF36WsSP9d39CkC/xGP0apfi16kIJV9hh5YAItEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nt7J2x57; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A372CC116C6;
	Wed,  7 Jan 2026 02:10:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767751809;
	bh=P1nkQlwmHCB4ptKpTcMysgD54OQnmfZucCNh/Rw44NM=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=Nt7J2x57XD42gESqOOQZA3WLIBVGvcDmyrHPNjEav6/k5cST1RrjBrzzpItd3tWbo
	 /dvvf5v5l6kcr4plhg3rcfFneCUeGZknqL2eYCbN8CRKXv7tPczu1sZxrUqaveg5lF
	 wVhZn2Y4QJ7Pp2Y5c9WT3ZB2GPhLhS6zz+d6nBBsrsqp9eI3fkfegTHZp61SBZhQ2h
	 YUXEShQ/DmRvTVXzJgmP0tco1+Rmt38hE9qjTUTHL+d0pf/atYrssPBwdR1WW/JrNu
	 rWWwcFO/l+xkwzBpM5ji7egDJ9FVcU7X9shFDAAo7e0cx5QvlT3Lzl4kvwhkrsJ/Tx
	 n6x64WXSthdvg==
From: "Rob Herring (Arm)" <robh@kernel.org>
Date: Tue, 06 Jan 2026 20:09:42 -0600
Subject: [PATCH 03/13] arm64: dts: broadcom: bcm2712: Move non simple-bus
 nodes to root level
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260106-dt-dtbs-broadcom-fixes-v1-3-ba45874e4553@kernel.org>
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

The 'gpu' and 'firmware' nodes are not MMIO devices, so they should not be
under a 'simple-bus'.

Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
 .../boot/dts/broadcom/bcm2712-rpi-5-b-ovl-rp1.dts  | 49 ++++++++++------------
 arch/arm64/boot/dts/broadcom/bcm2712.dtsi          |  8 ++--
 2 files changed, 26 insertions(+), 31 deletions(-)

diff --git a/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-ovl-rp1.dts b/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-ovl-rp1.dts
index 04738bf281eb..7d4742ebe247 100644
--- a/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-ovl-rp1.dts
+++ b/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-ovl-rp1.dts
@@ -44,6 +44,28 @@ power_button: power-button {
 		};
 	};
 
+	firmware: firmware {
+		compatible = "raspberrypi,bcm2835-firmware", "simple-mfd";
+
+		mboxes = <&mailbox>;
+
+		firmware_clocks: clocks {
+			compatible = "raspberrypi,firmware-clocks";
+			#clock-cells = <1>;
+		};
+
+		reset: reset {
+			compatible = "raspberrypi,firmware-reset";
+			#reset-cells = <1>;
+		};
+
+		power: power {
+			compatible = "raspberrypi,bcm2835-power";
+			firmware = <&firmware>;
+			#power-domain-cells = <1>;
+		};
+	};
+
 	sd_io_1v8_reg: sd-io-1v8-reg {
 		compatible = "regulator-gpio";
 		regulator-name = "vdd-sd-io";
@@ -189,33 +211,6 @@ wifi: wifi@1 {
 	};
 };
 
-&soc {
-	firmware: firmware {
-		compatible = "raspberrypi,bcm2835-firmware", "simple-mfd";
-		#address-cells = <1>;
-		#size-cells = <1>;
-
-		mboxes = <&mailbox>;
-		dma-ranges;
-
-		firmware_clocks: clocks {
-			compatible = "raspberrypi,firmware-clocks";
-			#clock-cells = <1>;
-		};
-
-		reset: reset {
-			compatible = "raspberrypi,firmware-reset";
-			#reset-cells = <1>;
-		};
-	};
-
-	power: power {
-		compatible = "raspberrypi,bcm2835-power";
-		firmware = <&firmware>;
-		#power-domain-cells = <1>;
-	};
-};
-
 /* uarta communicates with the BT module */
 &uarta {
 	uart-has-rtscts;
diff --git a/arch/arm64/boot/dts/broadcom/bcm2712.dtsi b/arch/arm64/boot/dts/broadcom/bcm2712.dtsi
index d57a9b1bff70..330a121ebfcb 100644
--- a/arch/arm64/boot/dts/broadcom/bcm2712.dtsi
+++ b/arch/arm64/boot/dts/broadcom/bcm2712.dtsi
@@ -508,10 +508,6 @@ axi: axi {
 			     <0x18 0x00000000  0x18 0x00000000  0x04 0x00000000>,
 			     <0x1c 0x00000000  0x1c 0x00000000  0x04 0x00000000>;
 
-		vc4: gpu {
-			compatible = "brcm,bcm2712-vc6";
-		};
-
 		pcie0: pcie@1000100000 {
 			compatible = "brcm,bcm2712-pcie";
 			reg = <0x10 0x00100000 0x00 0x9310>;
@@ -648,6 +644,10 @@ mip1: msi-controller@1000131000 {
 		};
 	};
 
+	vc4: gpu {
+		compatible = "brcm,bcm2712-vc6";
+	};
+
 	timer {
 		compatible = "arm,armv8-timer";
 		interrupts = <GIC_PPI 13 (GIC_CPU_MASK_SIMPLE(4) |

-- 
2.51.0


