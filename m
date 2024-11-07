Return-Path: <devicetree+bounces-119881-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 217AB9C05EE
	for <lists+devicetree@lfdr.de>; Thu,  7 Nov 2024 13:37:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 398571C20BA0
	for <lists+devicetree@lfdr.de>; Thu,  7 Nov 2024 12:37:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E220E1EF0AD;
	Thu,  7 Nov 2024 12:37:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q5mAMdjw"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9E5A1DBB37
	for <devicetree@vger.kernel.org>; Thu,  7 Nov 2024 12:37:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730983058; cv=none; b=gJQ/N7VS7QkuLn1y5OuGG6AILG2A7hLmwsjZCN6oInQ8UoL3WtXk+yUZrr/jaEAvc2hqkIvBUSEskFzmfQS3Xb5Q8T5/Cg1iC96/obkdTCJjWF2GYIhzV1y8t6Z0r7wDK4kC/DTeoUR9trzgq9/1n+QjpM7i4UQ/3s6mC5fQrY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730983058; c=relaxed/simple;
	bh=JupmGb9015WA+7ZrISN7klsmE+UWxlE8YkOEg7MMi6M=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=oQIVLIPQYHplxjptINSIZK9DN1j96f/lNAP/17PCZIK95A1B+OP1rKOs6g51jJyjNWUnl96q+01bw3EfFZdHqnuTC9wHkB5KVTqlaCoQLv9FUf0a7PTfE7PO1IxF49dgfEfwC1I6mSEjAFP+k/LmdfUoO03eQASw7Q1ebXaoPSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q5mAMdjw; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2E8E2C4CED0;
	Thu,  7 Nov 2024 12:37:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730983058;
	bh=JupmGb9015WA+7ZrISN7klsmE+UWxlE8YkOEg7MMi6M=;
	h=From:To:Cc:Subject:Date:From;
	b=q5mAMdjweSV2HmvxiK9NXGeGBBThNSvDW8ctyLZ0oTzxZ6oxRpHuSXC3lEOZQ7w7Y
	 JyK4PNAszGEmAgEoVUrUtZNu35xiy38fzMUQ66bRPHwGCuwVHa3peo/uOWzIlhfsZY
	 oRCv//SwDxlMSO+gXQAebuDOVH+bjnyUrx2kIlpTHFEQov85DWntmfmpBGTD7boXA6
	 P2sgseHyVz6fiDwzdwrhhtyA/i8hLpR9otGhnDyUzVL6/2FwDLnDRvJp0bRnMJatna
	 N8byM8Wi3wQEjrRi8h96i2KrnOP4krVaL869g+7wbCMHatH6Ck0L7TOAjoPANstUfa
	 jKabW20MQIfsw==
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
Subject: [PATCH] arm64: dts: rockchip: enable the mmu600_pcie IOMMU on the rk3588 SoC
Date: Thu,  7 Nov 2024 13:37:33 +0100
Message-ID: <20241107123732.1160063-2-cassel@kernel.org>
X-Mailer: git-send-email 2.47.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=4968; i=cassel@kernel.org; h=from:subject; bh=JupmGb9015WA+7ZrISN7klsmE+UWxlE8YkOEg7MMi6M=; b=owGbwMvMwCV2MsVw8cxjvkWMp9WSGNJ1tvT8YEyKFhQq+rCj9rrSzbZ3s9/9Z733vfzIWha7O TUyrapXOkpZGMS4GGTFFFl8f7jsL+52n3Jc8Y4NzBxWJpAhDFycAjARHxlGhik1b54Z3w0tUeu/ kcn96qe2e/pijwo2Tn+Pd3JnQg8J/WD4p9/1Mid2c3PmCvVZ3N8OLfaecLBaeP2Ft3ybo8VZziW u5AAA
X-Developer-Key: i=cassel@kernel.org; a=openpgp; fpr=5ADE635C0E631CBBD5BE065A352FE6582ED9B5DA
Content-Transfer-Encoding: 8bit

Commit cd81d3a0695c ("arm64: dts: rockchip: add rk3588 pcie and php
IOMMUs") added the rk3588 SoC's pcie IOMMU and php IOMMU as disabled.

The mmu600_pcie is connected with the five PCIe controllers.
See 8.2 Block Diagram, in rk3588 TRM (Technical Reference Manual).

The five PCIe controllers are:
pcie3x4, pcie3x2, pcie2x1l0, pcie2x1l1, pcie2x1l2.

pcie3x4 can run in either Root Complex mode or Endpoint mode, the other
four PCIe controllers can only run in Root Complex mode. To describe this
we thus have six different device nodes in the device tree.

A PCIe controller in Root Complex mode needs to specify an iommu-map, such
that the device knows how to convert a Requester ID (PCI BDF) to an IOMMU
master ID (stream ID). (A PCIe controller in Endpoint mode should use the
iommus property, just like a regular device.)

If you look at the device tree bindings for msi-map and iommu-map, you can
see that the conversion from Requester ID to MSI-specifier data is the same
as the conversion from Requester ID to IOMMU specifier data. Thus it is
sensible to define the iommu-map property value similar to the msi-map,
such that the conversion will be identical.

Add the proper iommu device tree properties for these six device nodes
connected to the mmu600_pcie, so that we can enable the mmu600_pcie IOMMU.
(The mmu600_php IOMMU is not touched, so it is still disabled.)

Signed-off-by: Niklas Cassel <cassel@kernel.org>
---
Testing done:
-pcie2x1l2: Ethernet connected to the pcie2x1l2 works as expected.
-pcie3x4: A PCIe endpoint (running the PCI endpoint framework) connected to
 pcie3x4 can run pcitest.sh without any issues.
 Modifying the PCI endpoint to DMA to an invalid address gives IOMMU errors
 (as expected).
-pcie3x4_ep: A PCIe root complex (running Linux) connected to pcie3x4_ep can
 run pcitest.sh without any issues.
 Modifying the PCI endpoint's inbound address translation to point to a
 buffer that has not been mapped using the DMA API, results in IOMMU errors
 when the RC writes to the PCI BARs exposed by the endpoint (as expected).
-My board does not expose a convenient method to test the other PCIe
 controllers, but considering that the ones that I did test worked fine,
 I do not see any reason why the others should not do the same.

 arch/arm64/boot/dts/rockchip/rk3588-base.dtsi  | 3 ++-
 arch/arm64/boot/dts/rockchip/rk3588-extra.dtsi | 4 ++++
 2 files changed, 6 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
index d97d84b888375..f96e607db2857 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
@@ -551,7 +551,6 @@ mmu600_pcie: iommu@fc900000 {
 			     <GIC_SPI 367 IRQ_TYPE_LEVEL_HIGH 0>;
 		interrupt-names = "eventq", "gerror", "priq", "cmdq-sync";
 		#iommu-cells = <1>;
-		status = "disabled";
 	};
 
 	mmu600_php: iommu@fcb00000 {
@@ -1641,6 +1640,7 @@ pcie2x1l1: pcie@fe180000 {
 		linux,pci-domain = <3>;
 		max-link-speed = <2>;
 		msi-map = <0x3000 &its0 0x3000 0x1000>;
+		iommu-map = <0x3000 &mmu600_pcie 0x3000 0x1000>;
 		num-lanes = <1>;
 		phys = <&combphy2_psu PHY_TYPE_PCIE>;
 		phy-names = "pcie-phy";
@@ -1692,6 +1692,7 @@ pcie2x1l2: pcie@fe190000 {
 		linux,pci-domain = <4>;
 		max-link-speed = <2>;
 		msi-map = <0x4000 &its0 0x4000 0x1000>;
+		iommu-map = <0x4000 &mmu600_pcie 0x4000 0x1000>;
 		num-lanes = <1>;
 		phys = <&combphy0_ps PHY_TYPE_PCIE>;
 		phy-names = "pcie-phy";
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-extra.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-extra.dtsi
index 0ce0934ec6b79..4a950907ea6f5 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-extra.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-extra.dtsi
@@ -162,6 +162,7 @@ pcie3x4: pcie@fe150000 {
 		linux,pci-domain = <0>;
 		max-link-speed = <3>;
 		msi-map = <0x0000 &its1 0x0000 0x1000>;
+		iommu-map = <0x0000 &mmu600_pcie 0x0000 0x1000>;
 		num-lanes = <4>;
 		phys = <&pcie30phy>;
 		phy-names = "pcie-phy";
@@ -212,6 +213,7 @@ pcie3x4_ep: pcie-ep@fe150000 {
 		interrupt-names = "sys", "pmc", "msg", "legacy", "err",
 				  "dma0", "dma1", "dma2", "dma3";
 		max-link-speed = <3>;
+		iommus = <&mmu600_pcie 0x0000>;
 		num-lanes = <4>;
 		phys = <&pcie30phy>;
 		phy-names = "pcie-phy";
@@ -248,6 +250,7 @@ pcie3x2: pcie@fe160000 {
 		linux,pci-domain = <1>;
 		max-link-speed = <3>;
 		msi-map = <0x1000 &its1 0x1000 0x1000>;
+		iommu-map = <0x1000 &mmu600_pcie 0x1000 0x1000>;
 		num-lanes = <2>;
 		phys = <&pcie30phy>;
 		phy-names = "pcie-phy";
@@ -297,6 +300,7 @@ pcie2x1l0: pcie@fe170000 {
 		linux,pci-domain = <2>;
 		max-link-speed = <2>;
 		msi-map = <0x2000 &its0 0x2000 0x1000>;
+		iommu-map = <0x2000 &mmu600_pcie 0x2000 0x1000>;
 		num-lanes = <1>;
 		phys = <&combphy1_ps PHY_TYPE_PCIE>;
 		phy-names = "pcie-phy";
-- 
2.47.0


