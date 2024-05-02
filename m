Return-Path: <devicetree+bounces-64562-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 261E28B9BF9
	for <lists+devicetree@lfdr.de>; Thu,  2 May 2024 16:02:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 56C011C211BA
	for <lists+devicetree@lfdr.de>; Thu,  2 May 2024 14:02:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D4AB313C67F;
	Thu,  2 May 2024 14:02:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q7d3AT//"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF502C8F3
	for <devicetree@vger.kernel.org>; Thu,  2 May 2024 14:02:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714658565; cv=none; b=o31W09zcP5i5CyBNvqSjtx7LM95XxUMsrdzux9w1lg155SgTtjQkpYLKzWtbqSY23VRenmWxTQZMuKhNVvoTcqdDKxlJZpvh7rwMfeyO78t2GiXXuNC782Gdy5tRchgaBiKktYS01LHFJQTjj+vFpWyZ0pYxQ+CMS9df2+Pl4sc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714658565; c=relaxed/simple;
	bh=+HwR5bHMntTZYTp+bozxMQeT0vh+3PiCz9q8t56GhL4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Y72z7HQiVtjCpanq3nK7ZuwQmkfm/9TUEwqQisIQyYzYio0KeGAOR5s8rrgyBviMOdgm3o8fgwdwqAZEBlEDVXVQvd9DCSI4W4Jpm5Dz/QyAfeJT5+RS+4pwBIWzFLnQpjPD04U4gPZPhEG7/BW2HSmQi9FDau9ZdNUicduTW8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q7d3AT//; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E6C00C113CC;
	Thu,  2 May 2024 14:02:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714658565;
	bh=+HwR5bHMntTZYTp+bozxMQeT0vh+3PiCz9q8t56GhL4=;
	h=From:To:Cc:Subject:Date:From;
	b=Q7d3AT//EiibcCizWOsAk8niX0aavjwjPDAt8Q4gRWVStGtP17/vRPJHqeEQY0DEW
	 QWIzQ/hF3PmtGNLUHHxIjKNvhx4Q8b5LCtvd5pe/6lWAbTm358l1fnyZU73yp8leJe
	 ue26ZPRk6tS5sDa+XtDwv4inN94rAUy7Nve/VhrT1L5zM6L/ltYWWRvTKziXGWU4A7
	 XUE0fKXyXpHlOKXq8nVYxFD1Tf9clFlMWjgCjm5mj8tw1eGJt/hm7bbCcW9/6zLIu4
	 2M5hPwkYO90ucDh1CIlAcRTYb8LHSuy3Ph7X1ntPvATCqJif8v9sbcPSKQaBj6Td2p
	 JA2830q9xA1hA==
From: Niklas Cassel <cassel@kernel.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Damien Le Moal <dlemoal@kernel.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Niklas Cassel <cassel@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH] arm64: dts: rockchip: add rk3588 IOMMUs
Date: Thu,  2 May 2024 16:02:32 +0200
Message-ID: <20240502140231.477049-2-cassel@kernel.org>
X-Mailer: git-send-email 2.44.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2797; i=cassel@kernel.org; h=from:subject; bh=+HwR5bHMntTZYTp+bozxMQeT0vh+3PiCz9q8t56GhL4=; b=owGbwMvMwCV2MsVw8cxjvkWMp9WSGNKM53xvv7Oy3+Rfx5NHm9ZzbdtWHKLZd4T1uuw+YR2fu wFHXH6od5SyMIhxMciKKbL4/nDZX9ztPuW44h0bmDmsTCBDGLg4BWAiQusYfrN/ODBrFW/J7yuN DUslG+PXP7bZvf3oofoFOi7BokdXWu5g+J8ezhW+ZD+vsiN3Coftdnv1i9WxfgVxQVtstp1NFU/ awQgA
X-Developer-Key: i=cassel@kernel.org; a=openpgp; fpr=5ADE635C0E631CBBD5BE065A352FE6582ED9B5DA
Content-Transfer-Encoding: 8bit

The mmu600_pcie is connected with the five PCIe controllers.
The mmu600_php is connected with the USB3 controller, the GMAC
controllers, and the SATA controllers.

See 8.2 Block Diagram, in rk3588 TRM (Technical Reference Manual).

The IOMMUs are disabled by default, as further patches are needed to
program the SID/SSIDs in to the IOMMUs.

iommu: Default domain type: Translated
iommu: DMA domain TLB invalidation policy: strict mode
arm-smmu-v3 fc900000.iommu: ias 48-bit, oas 48-bit (features 0x001c1eaf)
arm-smmu-v3 fc900000.iommu: allocated 65536 entries for cmdq
arm-smmu-v3 fc900000.iommu: allocated 32768 entries for evtq
arm-smmu-v3 fc900000.iommu: msi_domain absent - falling back to wired irqs

Additionally, the IOMMU correctly triggers an IOMMU fault when
a PCIe device performs a write (since the device hasn't been
assigned a SID/SSID):
arm-smmu-v3 fc900000.iommu: event 0x02 received:
arm-smmu-v3 fc900000.iommu:      0x0000010000000002
arm-smmu-v3 fc900000.iommu:      0x0000000000000000
arm-smmu-v3 fc900000.iommu:      0x0000000000000000
arm-smmu-v3 fc900000.iommu:      0x0000000000000000

While this doesn't provide much value as is, having the devices as
disabled in the device tree will allow developers to see that the rk3588
actually has IOMMUs on the SoC.

Signed-off-by: Niklas Cassel <cassel@kernel.org>
---
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 24 +++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
index 87b83c87bd55..aaea48a19e26 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
@@ -501,6 +501,30 @@ usb_host2_xhci: usb@fcd00000 {
 		status = "disabled";
 	};
 
+	mmu600_pcie: iommu@fc900000 {
+		compatible = "arm,smmu-v3";
+		reg = <0x0 0xfc900000 0x0 0x200000>;
+		interrupts = <GIC_SPI 369 IRQ_TYPE_LEVEL_HIGH 0>,
+			     <GIC_SPI 371 IRQ_TYPE_LEVEL_HIGH 0>,
+			     <GIC_SPI 374 IRQ_TYPE_LEVEL_HIGH 0>,
+			     <GIC_SPI 367 IRQ_TYPE_LEVEL_HIGH 0>;
+		interrupt-names = "eventq", "gerror", "priq", "cmdq-sync";
+		#iommu-cells = <1>;
+		status = "disabled";
+	};
+
+	mmu600_php: iommu@fcb00000 {
+		compatible = "arm,smmu-v3";
+		reg = <0x0 0xfcb00000 0x0 0x200000>;
+		interrupts = <GIC_SPI 381 IRQ_TYPE_LEVEL_HIGH 0>,
+			     <GIC_SPI 383 IRQ_TYPE_LEVEL_HIGH 0>,
+			     <GIC_SPI 386 IRQ_TYPE_LEVEL_HIGH 0>,
+			     <GIC_SPI 379 IRQ_TYPE_LEVEL_HIGH 0>;
+		interrupt-names = "eventq", "gerror", "priq", "cmdq-sync";
+		#iommu-cells = <1>;
+		status = "disabled";
+	};
+
 	pmu1grf: syscon@fd58a000 {
 		compatible = "rockchip,rk3588-pmugrf", "syscon", "simple-mfd";
 		reg = <0x0 0xfd58a000 0x0 0x10000>;
-- 
2.44.0


