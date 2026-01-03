Return-Path: <devicetree+bounces-251226-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C48CACF0456
	for <lists+devicetree@lfdr.de>; Sat, 03 Jan 2026 19:57:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 76179300EE41
	for <lists+devicetree@lfdr.de>; Sat,  3 Jan 2026 18:57:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C45E52D3750;
	Sat,  3 Jan 2026 18:57:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KxtVbTeD"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D4F7271457;
	Sat,  3 Jan 2026 18:57:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767466662; cv=none; b=M/Uqx5v0PyDHwo+apYz/Lwwn2rmSJy4AuBEFa/TsCgpFrTQa52+GCqCzjaM28ZG6DT4L4PxtAEJtaHA1YhdFZZCYBkKNKdegGqAIGoykfLHeEsSxyexSEpmFoCeQbkvE78YFN/tsJCzovZK5moZUjOtwAODUOqv3YsfNkyQd2eg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767466662; c=relaxed/simple;
	bh=My/NfxgmIvxjaFeC8OnhapcSLL8g7lHuerKBbzvT1eM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Fy084OfidvLI7Jv63tWglg2sYRruZqQB0KJETkyEP68skIb8h1uMCOXeSE0yTwqcfje3t/lRezPICRgpDmjdofbv42OzKhYE59urPI455oUoeCdWEHhpAaeXtMN1hg2y9HO7P0aa0IdvTwS6NZ3Dk9OqCcdWDQak0GzaFjXe6eo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KxtVbTeD; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 5F30CC19423;
	Sat,  3 Jan 2026 18:57:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767466662;
	bh=My/NfxgmIvxjaFeC8OnhapcSLL8g7lHuerKBbzvT1eM=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=KxtVbTeDOUVxTQJ6A9VRShzJZIXbJgMgmrlO1oKJ+7yIh9+wjZKNSi2JDxItwd/TE
	 HwaEY8SunFbqs9x1sKKjGMZpMSIJKWDVctbCUSalNXNqMutqhZlr7e/gDi8dcq2U6h
	 DDzugJu8jaeV/UDOgBXzElBDK2uu0S2Q/2MJIV0oGKuCLDdxhaL07hRiptQJXeYKc5
	 ReiSL/mvdqSBSrb+lysEZ+XqdLqL5hzvzsjZkBaV71HJlEKtb9erMkJWfM7KspQDBe
	 mTDqNckWuITrZ0krMjphS8Lt/IvR9R8jEW69wn9VvVU/sokEAfcfZxDdSPVbDH/b8U
	 3tk/0Mp2e8MkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 517B0FC6188;
	Sat,  3 Jan 2026 18:57:42 +0000 (UTC)
From: =?utf-8?q?J=2E_Neusch=C3=A4fer_via_B4_Relay?= <devnull+j.ne.posteo.net@kernel.org>
Date: Sat, 03 Jan 2026 19:54:06 +0100
Subject: [PATCH v2 2/5] powerpc: dts: mpc8315erdb: Use IRQ_TYPE_* macros
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260103-mpc83xx-cleanup-v2-2-b2a13c0a0d63@posteo.net>
References: <20260103-mpc83xx-cleanup-v2-0-b2a13c0a0d63@posteo.net>
In-Reply-To: <20260103-mpc83xx-cleanup-v2-0-b2a13c0a0d63@posteo.net>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Madhavan Srinivasan <maddy@linux.ibm.com>, 
 Michael Ellerman <mpe@ellerman.id.au>, Nicholas Piggin <npiggin@gmail.com>, 
 "Christophe Leroy (CS GROUP)" <chleroy@kernel.org>
Cc: devicetree@vger.kernel.org, linuxppc-dev@lists.ozlabs.org, 
 linux-kernel@vger.kernel.org, 
 =?utf-8?q?J=2E_Neusch=C3=A4fer?= <j.ne@posteo.net>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767466660; l=9600;
 i=j.ne@posteo.net; s=20240329; h=from:subject:message-id;
 bh=qJSNJfVmiDZG+g6KBxDQ/n/7zXxMj4agDbro7jKlVcE=;
 b=ezJaCNs8FJEtTao+ZSRrR2B8jYoBByxnxkLgCDCha2WEzaXyVShfdnTTmuRWn099peT3JP6dI
 tejbOFZNYp4ANmzOosDWgwYQJe3RuJIcfAcFzJSTjDf0S3Ky1aNcQhD
X-Developer-Key: i=j.ne@posteo.net; a=ed25519;
 pk=NIe0bK42wNaX/C4bi6ezm7NJK0IQE+8MKBm7igFMIS4=
X-Endpoint-Received: by B4 Relay for j.ne@posteo.net/20240329 with
 auth_id=156
X-Original-From: =?utf-8?q?J=2E_Neusch=C3=A4fer?= <j.ne@posteo.net>
Reply-To: j.ne@posteo.net

From: "J. Neuschäfer" <j.ne@posteo.net>

This increases readability, because "0x8" isn't very descriptive.

mpc8315erdb.dtb remains identical after this patch.

Signed-off-by: J. Neuschäfer <j.ne@posteo.net>
---
 arch/powerpc/boot/dts/mpc8315erdb.dts | 111 ++++++++++++++++++----------------
 1 file changed, 59 insertions(+), 52 deletions(-)

diff --git a/arch/powerpc/boot/dts/mpc8315erdb.dts b/arch/powerpc/boot/dts/mpc8315erdb.dts
index a8f68d6e50b0dd..1957b6687b2987 100644
--- a/arch/powerpc/boot/dts/mpc8315erdb.dts
+++ b/arch/powerpc/boot/dts/mpc8315erdb.dts
@@ -50,7 +50,7 @@ localbus@e0005000 {
 		#size-cells = <1>;
 		compatible = "fsl,mpc8315-elbc", "fsl,elbc", "simple-bus";
 		reg = <0xe0005000 0x1000>;
-		interrupts = <77 0x8>;
+		interrupts = <77 IRQ_TYPE_LEVEL_LOW>;
 		interrupt-parent = <&ipic>;
 
 		// CS0 and CS1 are swapped when
@@ -112,7 +112,7 @@ i2c@3000 {
 			cell-index = <0>;
 			compatible = "fsl-i2c";
 			reg = <0x3000 0x100>;
-			interrupts = <14 0x8>;
+			interrupts = <14 IRQ_TYPE_LEVEL_LOW>;
 			interrupt-parent = <&ipic>;
 			dfsrr;
 			rtc@68 {
@@ -133,7 +133,7 @@ spi@7000 {
 			cell-index = <0>;
 			compatible = "fsl,spi";
 			reg = <0x7000 0x1000>;
-			interrupts = <16 0x8>;
+			interrupts = <16 IRQ_TYPE_LEVEL_LOW>;
 			interrupt-parent = <&ipic>;
 			mode = "cpu";
 		};
@@ -145,35 +145,35 @@ dma@82a8 {
 			reg = <0x82a8 4>;
 			ranges = <0 0x8100 0x1a8>;
 			interrupt-parent = <&ipic>;
-			interrupts = <71 8>;
+			interrupts = <71 IRQ_TYPE_LEVEL_LOW>;
 			cell-index = <0>;
 			dma-channel@0 {
 				compatible = "fsl,mpc8315-dma-channel", "fsl,elo-dma-channel";
 				reg = <0 0x80>;
 				cell-index = <0>;
 				interrupt-parent = <&ipic>;
-				interrupts = <71 8>;
+				interrupts = <71 IRQ_TYPE_LEVEL_LOW>;
 			};
 			dma-channel@80 {
 				compatible = "fsl,mpc8315-dma-channel", "fsl,elo-dma-channel";
 				reg = <0x80 0x80>;
 				cell-index = <1>;
 				interrupt-parent = <&ipic>;
-				interrupts = <71 8>;
+				interrupts = <71 IRQ_TYPE_LEVEL_LOW>;
 			};
 			dma-channel@100 {
 				compatible = "fsl,mpc8315-dma-channel", "fsl,elo-dma-channel";
 				reg = <0x100 0x80>;
 				cell-index = <2>;
 				interrupt-parent = <&ipic>;
-				interrupts = <71 8>;
+				interrupts = <71 IRQ_TYPE_LEVEL_LOW>;
 			};
 			dma-channel@180 {
 				compatible = "fsl,mpc8315-dma-channel", "fsl,elo-dma-channel";
 				reg = <0x180 0x28>;
 				cell-index = <3>;
 				interrupt-parent = <&ipic>;
-				interrupts = <71 8>;
+				interrupts = <71 IRQ_TYPE_LEVEL_LOW>;
 			};
 		};
 
@@ -183,7 +183,7 @@ usb@23000 {
 			#address-cells = <1>;
 			#size-cells = <0>;
 			interrupt-parent = <&ipic>;
-			interrupts = <38 0x8>;
+			interrupts = <38 IRQ_TYPE_LEVEL_LOW>;
 			phy_type = "utmi";
 		};
 
@@ -197,7 +197,9 @@ enet0: ethernet@24000 {
 			reg = <0x24000 0x1000>;
 			ranges = <0x0 0x24000 0x1000>;
 			local-mac-address = [ 00 00 00 00 00 00 ];
-			interrupts = <32 0x8 33 0x8 34 0x8>;
+			interrupts = <32 IRQ_TYPE_LEVEL_LOW>,
+				     <33 IRQ_TYPE_LEVEL_LOW>,
+				     <34 IRQ_TYPE_LEVEL_LOW>;
 			interrupt-parent = <&ipic>;
 			tbi-handle = <&tbi0>;
 			phy-handle = < &phy0 >;
@@ -238,7 +240,9 @@ enet1: ethernet@25000 {
 			reg = <0x25000 0x1000>;
 			ranges = <0x0 0x25000 0x1000>;
 			local-mac-address = [ 00 00 00 00 00 00 ];
-			interrupts = <35 0x8 36 0x8 37 0x8>;
+			interrupts = <35 IRQ_TYPE_LEVEL_LOW>,
+				     <36 IRQ_TYPE_LEVEL_LOW>,
+				     <37 IRQ_TYPE_LEVEL_LOW>;
 			interrupt-parent = <&ipic>;
 			tbi-handle = <&tbi1>;
 			phy-handle = < &phy1 >;
@@ -263,7 +267,7 @@ serial0: serial@4500 {
 			compatible = "fsl,ns16550", "ns16550";
 			reg = <0x4500 0x100>;
 			clock-frequency = <133333333>;
-			interrupts = <9 0x8>;
+			interrupts = <9 IRQ_TYPE_LEVEL_LOW>;
 			interrupt-parent = <&ipic>;
 		};
 
@@ -273,7 +277,7 @@ serial1: serial@4600 {
 			compatible = "fsl,ns16550", "ns16550";
 			reg = <0x4600 0x100>;
 			clock-frequency = <133333333>;
-			interrupts = <10 0x8>;
+			interrupts = <10 IRQ_TYPE_LEVEL_LOW>;
 			interrupt-parent = <&ipic>;
 		};
 
@@ -282,7 +286,7 @@ crypto@30000 {
 				     "fsl,sec2.4", "fsl,sec2.2", "fsl,sec2.1",
 				     "fsl,sec2.0";
 			reg = <0x30000 0x10000>;
-			interrupts = <11 0x8>;
+			interrupts = <11 IRQ_TYPE_LEVEL_LOW>;
 			interrupt-parent = <&ipic>;
 			fsl,num-channels = <4>;
 			fsl,channel-fifo-len = <24>;
@@ -294,7 +298,7 @@ sata@18000 {
 			compatible = "fsl,mpc8315-sata", "fsl,pq-sata";
 			reg = <0x18000 0x1000>;
 			cell-index = <1>;
-			interrupts = <44 0x8>;
+			interrupts = <44 IRQ_TYPE_LEVEL_LOW>;
 			interrupt-parent = <&ipic>;
 		};
 
@@ -302,14 +306,17 @@ sata@19000 {
 			compatible = "fsl,mpc8315-sata", "fsl,pq-sata";
 			reg = <0x19000 0x1000>;
 			cell-index = <2>;
-			interrupts = <45 0x8>;
+			interrupts = <45 IRQ_TYPE_LEVEL_LOW>;
 			interrupt-parent = <&ipic>;
 		};
 
 		gtm1: timer@500 {
 			compatible = "fsl,mpc8315-gtm", "fsl,gtm";
 			reg = <0x500 0x100>;
-			interrupts = <90 8 78 8 84 8 72 8>;
+			interrupts = <90 IRQ_TYPE_LEVEL_LOW>,
+				     <78 IRQ_TYPE_LEVEL_LOW>,
+				     <84 IRQ_TYPE_LEVEL_LOW>,
+				     <72 IRQ_TYPE_LEVEL_LOW>;
 			interrupt-parent = <&ipic>;
 			clock-frequency = <133333333>;
 		};
@@ -317,16 +324,16 @@ gtm1: timer@500 {
 		timer@600 {
 			compatible = "fsl,mpc8315-gtm", "fsl,gtm";
 			reg = <0x600 0x100>;
-			interrupts = <91 8 79 8 85 8 73 8>;
+			interrupts = <91 IRQ_TYPE_LEVEL_LOW>,
+				     <79 IRQ_TYPE_LEVEL_LOW>,
+				     <85 IRQ_TYPE_LEVEL_LOW>,
+				     <73 IRQ_TYPE_LEVEL_LOW>;
 			interrupt-parent = <&ipic>;
 			clock-frequency = <133333333>;
 		};
 
 		/* IPIC
-		 * interrupts cell = <intr #, sense>
-		 * sense values match linux IORESOURCE_IRQ_* defines:
-		 * sense == 8: Level, low assertion
-		 * sense == 2: Edge, high-to-low change
+		 * interrupts cell = <intr #, type>
 		 */
 		ipic: interrupt-controller@700 {
 			interrupt-controller;
@@ -340,14 +347,14 @@ ipic-msi@7c0 {
 			compatible = "fsl,ipic-msi";
 			reg = <0x7c0 0x40>;
 			msi-available-ranges = <0 0x100>;
-			interrupts = <0x43 0x8
-				      0x4  0x8
-				      0x51 0x8
-				      0x52 0x8
-				      0x56 0x8
-				      0x57 0x8
-				      0x58 0x8
-				      0x59 0x8>;
+			interrupts = <0x43 IRQ_TYPE_LEVEL_LOW
+				      0x4  IRQ_TYPE_LEVEL_LOW
+				      0x51 IRQ_TYPE_LEVEL_LOW
+				      0x52 IRQ_TYPE_LEVEL_LOW
+				      0x56 IRQ_TYPE_LEVEL_LOW
+				      0x57 IRQ_TYPE_LEVEL_LOW
+				      0x58 IRQ_TYPE_LEVEL_LOW
+				      0x59 IRQ_TYPE_LEVEL_LOW>;
 			interrupt-parent = < &ipic >;
 		};
 
@@ -355,7 +362,7 @@ pmc: power@b00 {
 			compatible = "fsl,mpc8315-pmc", "fsl,mpc8313-pmc",
 				     "fsl,mpc8349-pmc";
 			reg = <0xb00 0x100 0xa00 0x100>;
-			interrupts = <80 8>;
+			interrupts = <80 IRQ_TYPE_LEVEL_LOW>;
 			interrupt-parent = <&ipic>;
 			fsl,mpc8313-wakeup-timer = <&gtm1>;
 		};
@@ -374,24 +381,24 @@ pci0: pci@e0008500 {
 		interrupt-map-mask = <0xf800 0x0 0x0 0x7>;
 		interrupt-map = <
 				/* IDSEL 0x0E -mini PCI */
-				 0x7000 0x0 0x0 0x1 &ipic 18 0x8
-				 0x7000 0x0 0x0 0x2 &ipic 18 0x8
-				 0x7000 0x0 0x0 0x3 &ipic 18 0x8
-				 0x7000 0x0 0x0 0x4 &ipic 18 0x8
+				 0x7000 0x0 0x0 0x1 &ipic 18 IRQ_TYPE_LEVEL_LOW
+				 0x7000 0x0 0x0 0x2 &ipic 18 IRQ_TYPE_LEVEL_LOW
+				 0x7000 0x0 0x0 0x3 &ipic 18 IRQ_TYPE_LEVEL_LOW
+				 0x7000 0x0 0x0 0x4 &ipic 18 IRQ_TYPE_LEVEL_LOW
 
 				/* IDSEL 0x0F -mini PCI */
-				 0x7800 0x0 0x0 0x1 &ipic 17 0x8
-				 0x7800 0x0 0x0 0x2 &ipic 17 0x8
-				 0x7800 0x0 0x0 0x3 &ipic 17 0x8
-				 0x7800 0x0 0x0 0x4 &ipic 17 0x8
+				 0x7800 0x0 0x0 0x1 &ipic 17 IRQ_TYPE_LEVEL_LOW
+				 0x7800 0x0 0x0 0x2 &ipic 17 IRQ_TYPE_LEVEL_LOW
+				 0x7800 0x0 0x0 0x3 &ipic 17 IRQ_TYPE_LEVEL_LOW
+				 0x7800 0x0 0x0 0x4 &ipic 17 IRQ_TYPE_LEVEL_LOW
 
 				/* IDSEL 0x10 - PCI slot */
-				 0x8000 0x0 0x0 0x1 &ipic 48 0x8
-				 0x8000 0x0 0x0 0x2 &ipic 17 0x8
-				 0x8000 0x0 0x0 0x3 &ipic 48 0x8
-				 0x8000 0x0 0x0 0x4 &ipic 17 0x8>;
+				 0x8000 0x0 0x0 0x1 &ipic 48 IRQ_TYPE_LEVEL_LOW
+				 0x8000 0x0 0x0 0x2 &ipic 17 IRQ_TYPE_LEVEL_LOW
+				 0x8000 0x0 0x0 0x3 &ipic 48 IRQ_TYPE_LEVEL_LOW
+				 0x8000 0x0 0x0 0x4 &ipic 17 IRQ_TYPE_LEVEL_LOW>;
 		interrupt-parent = <&ipic>;
-		interrupts = <66 0x8>;
+		interrupts = <66 IRQ_TYPE_LEVEL_LOW>;
 		bus-range = <0x0 0x0>;
 		ranges = <0x02000000 0 0x90000000 0x90000000 0 0x10000000
 			  0x42000000 0 0x80000000 0x80000000 0 0x10000000
@@ -417,10 +424,10 @@ pci1: pcie@e0009000 {
 		          0x01000000 0 0x00000000 0xb1000000 0 0x00800000>;
 		bus-range = <0 255>;
 		interrupt-map-mask = <0xf800 0 0 7>;
-		interrupt-map = <0 0 0 1 &ipic 1 8
-				 0 0 0 2 &ipic 1 8
-				 0 0 0 3 &ipic 1 8
-				 0 0 0 4 &ipic 1 8>;
+		interrupt-map = <0 0 0 1 &ipic 1 IRQ_TYPE_LEVEL_LOW
+				 0 0 0 2 &ipic 1 IRQ_TYPE_LEVEL_LOW
+				 0 0 0 3 &ipic 1 IRQ_TYPE_LEVEL_LOW
+				 0 0 0 4 &ipic 1 IRQ_TYPE_LEVEL_LOW>;
 		clock-frequency = <0>;
 
 		pcie@0 {
@@ -448,10 +455,10 @@ pci2: pcie@e000a000 {
 			  0x01000000 0 0x00000000 0xd1000000 0 0x00800000>;
 		bus-range = <0 255>;
 		interrupt-map-mask = <0xf800 0 0 7>;
-		interrupt-map = <0 0 0 1 &ipic 2 8
-				 0 0 0 2 &ipic 2 8
-				 0 0 0 3 &ipic 2 8
-				 0 0 0 4 &ipic 2 8>;
+		interrupt-map = <0 0 0 1 &ipic 2 IRQ_TYPE_LEVEL_LOW
+				 0 0 0 2 &ipic 2 IRQ_TYPE_LEVEL_LOW
+				 0 0 0 3 &ipic 2 IRQ_TYPE_LEVEL_LOW
+				 0 0 0 4 &ipic 2 IRQ_TYPE_LEVEL_LOW>;
 		clock-frequency = <0>;
 
 		pcie@0 {

-- 
2.51.0



