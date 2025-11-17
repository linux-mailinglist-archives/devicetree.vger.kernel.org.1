Return-Path: <devicetree+bounces-239536-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 879FAC663D4
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 22:14:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 499124EE66D
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 21:13:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 399EB34D4CC;
	Mon, 17 Nov 2025 21:13:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L2KAMUEt"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD7EE34D3BD;
	Mon, 17 Nov 2025 21:13:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763414003; cv=none; b=QHewfbVRu8/PIaMT6Zjt61YFKyEVkcMMjXCfjoNt2HgvZ4oCP+qdTmd4kMWRCpBPZjelAQNfcdaCgnILExPid2wmHWGn8wLVoZr3xwRiG/Hjy2ove3aUYbO1y4081miY5Cei/+S8kYeXez4Gewv06KbkoZ4vrGG0a0Tx4CyRgsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763414003; c=relaxed/simple;
	bh=jq1Emf1oDWfJ6t8L5tAfm+ZeQHcFmUcK0fvV0zCk7aI=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=FkeTzXgZVzdFAPeCl6I7/ZDqwsyWP9mRODNVsoKY7tnxjEpfrwmMthX8qpWTYdfAW1O5GYSv8Ra0JMTFteyU+F9NQv6mA8505652qfQ464nTIb1xRsunUc4po6b4GBCPrAF6KfLEzzTg13PiO/NqFk1xU3s1vBaDEG5tYjuQ1dY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L2KAMUEt; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 83947C2BCB9;
	Mon, 17 Nov 2025 21:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763414003;
	bh=jq1Emf1oDWfJ6t8L5tAfm+ZeQHcFmUcK0fvV0zCk7aI=;
	h=From:To:Cc:Subject:Date:From;
	b=L2KAMUEtciD6KR3xc6xSlviWQpcKO95d4+mGSIqTLrhX01pEVN1jvhdeY6O/52k4Z
	 BUtwd21vXmoWe4MxLni6cANy48YYcKqmjDIWLw+lrZ568hTjbU2KMavkKuREnV6hfh
	 pPSn986/nksabiXQzBv96TDWgMDmvTCWHWG3vtduRNRd5ALHd+n3JHuVioGPkSdj5P
	 7dwqkEeEkMy9chC7JgASFCWX2m5i4DQ2Y4yxi7QZVKtFWhxldN90HFv5Gc0BYtSWx5
	 K0w0MO33div3PSb8WEEm5kP+QayJMBo+qe+h6rivY5pF/ebDNDKAzFmfy220ZqY8ks
	 yrwOIXUVQ1NBQ==
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Nishanth Menon <nm@ti.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: ti: Add missing applied DT overlay targets
Date: Mon, 17 Nov 2025 15:13:15 -0600
Message-ID: <20251117211316.725960-1-robh@kernel.org>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

It's a requirement that DT overlays be applied at build time in order to
validate them as overlays are not validated on their own.

Add the missing TI overlays. Some of the TI overlays have the first part
needed (a "*-dtbs" variable), but not the second part adding the target to
dtb-y/dtb- variable.

Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
This will soon be a warning[1].

[1] https://lore.kernel.org/all/20251114222759.4181152-1-robh@kernel.org/
---
 arch/arm64/boot/dts/ti/Makefile | 18 +++++++++++++++++-
 1 file changed, 17 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/ti/Makefile b/arch/arm64/boot/dts/ti/Makefile
index 743115b849a7..54c4a6ba23c7 100644
--- a/arch/arm64/boot/dts/ti/Makefile
+++ b/arch/arm64/boot/dts/ti/Makefile
@@ -115,7 +115,8 @@ dtb-$(CONFIG_ARCH_K3) += k3-j7200-evm.dtb
 dtb-$(CONFIG_ARCH_K3) += k3-j7200-evm-pcie1-ep.dtbo
 
 # Boards with J721e SoC
-k3-j721e-evm-dtbs := k3-j721e-common-proc-board.dtb k3-j721e-evm-quad-port-eth-exp.dtbo
+k3-j721e-evm-dtbs := k3-j721e-common-proc-board.dtb \
+	k3-j721e-evm-quad-port-eth-exp.dtbo k3-j721e-evm-gesi-exp-board.dtbo
 dtb-$(CONFIG_ARCH_K3) += k3-j721e-beagleboneai64.dtb
 dtb-$(CONFIG_ARCH_K3) += k3-j721e-common-proc-board-infotainment.dtbo
 dtb-$(CONFIG_ARCH_K3) += k3-j721e-evm.dtb
@@ -177,6 +178,7 @@ k3-am625-sk-csi2-tevi-ov5640-dtbs := k3-am625-sk.dtb \
 	k3-am62x-sk-csi2-tevi-ov5640.dtbo
 k3-am625-sk-hdmi-audio-dtbs := k3-am625-sk.dtb k3-am62x-sk-hdmi-audio.dtbo
 k3-am62-lp-sk-hdmi-audio-dtbs := k3-am62-lp-sk.dtb k3-am62x-sk-hdmi-audio.dtbo
+k3-am62-lp-sk-nand-dtbs := k3-am62-lp-sk.dtb k3-am62-lp-sk-nand.dtbo
 k3-am62a7-sk-csi2-imx219-dtbs := k3-am62a7-sk.dtb \
 	k3-am62x-sk-csi2-imx219.dtbo
 k3-am62a7-sk-csi2-ov5640-dtbs := k3-am62a7-sk.dtb \
@@ -254,11 +256,17 @@ k3-j784s4-evm-usxgmii-exp1-exp2-dtbs := k3-j784s4-evm.dtb \
 	k3-j784s4-evm-usxgmii-exp1-exp2.dtbo
 dtb- += k3-am625-beagleplay-csi2-ov5640.dtb \
 	k3-am625-beagleplay-csi2-tevi-ov5640.dtb \
+	k3-am625-phyboard-lyra-disable-eth-phy.dtb \
+	k3-am625-phyboard-lyra-disable-rtc.dtb \
+	k3-am625-phyboard-lyra-disable-spi-nor.dtb \
+	k3-am625-phyboard-lyra-gpio-fan.dtb \
+	k3-am625-phyboard-lyra-qspi-nor.dtb \
 	k3-am625-sk-csi2-imx219.dtb \
 	k3-am625-sk-csi2-ov5640.dtb \
 	k3-am625-sk-csi2-tevi-ov5640.dtb \
 	k3-am625-sk-hdmi-audio.dtb \
 	k3-am62-lp-sk-hdmi-audio.dtb \
+	k3-am62-lp-sk-nand.dtb \
 	k3-am62a7-sk-csi2-imx219.dtb \
 	k3-am62a7-sk-csi2-ov5640.dtb \
 	k3-am62a7-sk-hdmi-audio.dtb \
@@ -268,6 +276,14 @@ dtb- += k3-am625-beagleplay-csi2-ov5640.dtb \
 	k3-am642-evm-icssg1-dualemac.dtb \
 	k3-am642-evm-icssg1-dualemac-mii.dtb \
 	k3-am642-evm-pcie0-ep.dtb \
+	k3-am642-phyboard-electra-disable-eth-phy.dtb \
+	k3-am642-phyboard-electra-disable-rtc.dtb \
+	k3-am642-phyboard-electra-disable-spi-nor.dtb \
+	k3-am642-phyboard-electra-qspi-nor.dtb \
+	k3-am642-phyboard-electra-gpio-fan.dtb \
+	k3-am642-phyboard-electra-pcie-usb2.dtb \
+	k3-am642-phyboard-electra-x27-gpio1-spi1-uart3.dtb \
+	k3-am642-phyboard-electra-peb-c-010.dtb \
 	k3-am642-tqma64xxl-mbax4xxl-sdcard.dtb \
 	k3-am642-tqma64xxl-mbax4xxl-wlan.dtb \
 	k3-am68-sk-base-board-csi2-dual-imx219.dtb \
-- 
2.51.0


