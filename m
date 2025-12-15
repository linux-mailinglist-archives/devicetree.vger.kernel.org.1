Return-Path: <devicetree+bounces-246724-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E0D0CBF321
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 18:16:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C55CF302C4CF
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 17:05:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24CB5329E42;
	Mon, 15 Dec 2025 17:05:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-42ae.mail.infomaniak.ch (smtp-42ae.mail.infomaniak.ch [84.16.66.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49D6128B3E2
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 17:05:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=84.16.66.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765818315; cv=none; b=L4ZYo1x1Ex3lZB4gmulBb8o+fo+by3lVBD7IP/ejZ7m+SgXNz47pkc+xULH6f72VQXMe6CIrbsg3qGeDZLSC2trB98UTUMel/leBcF4/SCZIRCTY6m95xBJr/OSnUzcLxlV6WeqYCZzYfYJxh8ugOujOrdKevI1yOEAG0Yp5Q7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765818315; c=relaxed/simple;
	bh=KnKjjGyy5oiElHceVx9Q+yjPqUm+QFl9fOYbN4GMrA0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=GaVgwFTdx0jMmCYWdn4nk+Ec4B8xF1efhfuAa8W4X3Sj1d8XkGJplaDqOKOPdMGZ7iMXTxuSMJ4iZgc01E3Vi2Lx/+CD2BvDlRxaLhqoL59hGZ/wyL0qyfvlDBptnZMd3MNrqbTemO2yJhF6bmVg3PevhnAVjlsBwRAoe9R+a7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=0leil.net; spf=pass smtp.mailfrom=0leil.net; arc=none smtp.client-ip=84.16.66.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=0leil.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=0leil.net
Received: from smtp-3-0000.mail.infomaniak.ch (unknown [IPv6:2001:1600:4:17::246b])
	by smtp-3-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4dVQtf6cv1zTkg;
	Mon, 15 Dec 2025 17:46:18 +0100 (CET)
Received: from unknown by smtp-3-0000.mail.infomaniak.ch (Postfix) with ESMTPA id 4dVQtf0KpFz6NJ;
	Mon, 15 Dec 2025 17:46:17 +0100 (CET)
From: Quentin Schulz <foss+kernel@0leil.net>
Date: Mon, 15 Dec 2025 17:45:56 +0100
Subject: [PATCH] arm64: dts: rockchip: fix unit-address for RK3588 NPU's
 core1 and core2's IOMMU
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251215-npu-dt-node-address-v1-1-840093e8a2bf@cherry.de>
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/x3MQQqFMAxF0a1Ixj9giyK6FXFQzVMzqdLoRxD3b
 nF4BvfeZEgKo664KeGvplvMcL+CpjXEBaySTb70tfOu5rifLAfHTcBBJMGMm3FGGCsvAS3lck+
 Y9fqu/fA8L8QN/89lAAAA
X-Change-ID: 20251215-npu-dt-node-address-7bfeab42dae9
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Tomeu Vizoso <tomeu@tomeuvizoso.net>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Quentin Schulz <quentin.schulz@cherry.de>, stable@vger.kernel.org
X-Mailer: b4 0.14.3
X-Infomaniak-Routing: alpha

From: Quentin Schulz <quentin.schulz@cherry.de>

The Device Tree specification specifies[1] that

"""
Each node in the devicetree is named according to the following
convention:
	node-name@unit-address
[...]
The unit-address must match the first address specified in the reg
property of the node.
"""

The first address in the reg property is fdaXa000 and not fdaX9000. This
is likely a copy-paste error as the IOMMU for core0 has two entries in
the reg property, the first one being fdab9000 and the second fdaba000.

Let's fix this oversight to match what the spec is expecting.

[1] https://github.com/devicetree-org/devicetree-specification/releases/download/v0.4/devicetree-specification-v0.4.pdf 2.2.1 Node Names

Fixes: a31dfc060a74 ("arm64: dts: rockchip: Add nodes for NPU and its MMU to rk3588-base")
Cc: stable@vger.kernel.org
Signed-off-by: Quentin Schulz <quentin.schulz@cherry.de>
---
 arch/arm64/boot/dts/rockchip/rk3588-base.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
index 2a79217930206..7ab12d1054a73 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
@@ -1200,7 +1200,7 @@ rknn_core_1: npu@fdac0000 {
 		status = "disabled";
 	};
 
-	rknn_mmu_1: iommu@fdac9000 {
+	rknn_mmu_1: iommu@fdaca000 {
 		compatible = "rockchip,rk3588-iommu", "rockchip,rk3568-iommu";
 		reg = <0x0 0xfdaca000 0x0 0x100>;
 		interrupts = <GIC_SPI 111 IRQ_TYPE_LEVEL_HIGH 0>;
@@ -1230,7 +1230,7 @@ rknn_core_2: npu@fdad0000 {
 		status = "disabled";
 	};
 
-	rknn_mmu_2: iommu@fdad9000 {
+	rknn_mmu_2: iommu@fdada000 {
 		compatible = "rockchip,rk3588-iommu", "rockchip,rk3568-iommu";
 		reg = <0x0 0xfdada000 0x0 0x100>;
 		interrupts = <GIC_SPI 112 IRQ_TYPE_LEVEL_HIGH 0>;

---
base-commit: a619746d25c8adafe294777cc98c47a09759b3ed
change-id: 20251215-npu-dt-node-address-7bfeab42dae9

Best regards,
-- 
Quentin Schulz <quentin.schulz@cherry.de>


