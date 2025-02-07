Return-Path: <devicetree+bounces-143966-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 714EBA2C5B1
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 15:39:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 11A44166819
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 14:39:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A024423ED64;
	Fri,  7 Feb 2025 14:39:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h7sgOyVc"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C60A13BAE4
	for <devicetree@vger.kernel.org>; Fri,  7 Feb 2025 14:39:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738939147; cv=none; b=U0CoCLHm4R8haizYYbEfqwvpL5LW00GIX4EXd+QeKUVpLWUshvyZX0KA01C3Fwyh64c3wvXEqFlAKOYlWdSOYeO79QT2ml6lq7erVgUpHJzN09G1rX9NgH5mPnCd2KWJAN9kx2zE1teO9nFnS/WT5JZrvNUNp9lUj/LrKCvdRAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738939147; c=relaxed/simple;
	bh=M+Hy65/SS+oURgcqCZr+Z443JfLpEZaU5/hVEXAJagI=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=T2ayJMb2DcfyioPopC+d+ids95ApTWMKZ6C0jo8dCxVSlzMiMQXOvPn0Dz/DvkJgC0TtNXHQV1FEsxeHB/qqPLDSZ6WKkVXu6yqoQ4WOvARS+HeWc6GUV+6WCZQq6x4psBwOLWvcncbRvudau5NIpb1mTgATNJWQsZV+FYSpK64=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h7sgOyVc; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 19682C4CED1;
	Fri,  7 Feb 2025 14:39:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738939146;
	bh=M+Hy65/SS+oURgcqCZr+Z443JfLpEZaU5/hVEXAJagI=;
	h=From:To:Cc:Subject:Date:From;
	b=h7sgOyVc6O+HddlDp7gD44CwMMMl1vCAgJ/RCeC1d7HyvCY4nvqvDaIMEtrJyF17p
	 aLgdqsohYS/OYxLwxJBjCEoasCq6Mi9l8L2TfyUrnKFO1RU0tjmw3CNlods3W+vvu9
	 A2ZlCZeN+HylWM8RUvUI5B07Bne/BdO+RUe3QM9b0vvgmC72rZMRQBxEolLbwRISLY
	 GPfWIAWgvpqXevZlMbqAfcwCKWMfQ4ahX0+lHaQ+AWkfkVGka/RjtejKLxc9LaL86E
	 SQKT3l8KFQkAGmOYO9iokvZf8756SCKMo7RPFtmBCYkFeHt9JQtnsOp6SvUsFLT/NP
	 8Z+nVrkv1eVUA==
From: Niklas Cassel <cassel@kernel.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Niklas Cassel <cassel@kernel.org>
Cc: Damien Le Moal <dlemoal@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH] arm64: dts: rockchip: disable IOMMU when running rk3588 in PCIe endpoint mode
Date: Fri,  7 Feb 2025 15:39:01 +0100
Message-ID: <20250207143900.2047949-2-cassel@kernel.org>
X-Mailer: git-send-email 2.48.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=3209; i=cassel@kernel.org; h=from:subject; bh=M+Hy65/SS+oURgcqCZr+Z443JfLpEZaU5/hVEXAJagI=; b=owGbwMvMwCV2MsVw8cxjvkWMp9WSGNKXSbMI/dg9RUe1+YdRhaHjg9BZ2w+556eU1M+oYJK5m vBsNpNCRykLgxgXg6yYIovvD5f9xd3uU44r3rGBmcPKBDKEgYtTACYizsDwV74qNP7RafYnK+Uz X5VYCfAfDfv257FWzqdbM81lPLJ3L2f4pz/t6s9VYS69nBVOxyZoB4QcPKISli77ccrG6dlfHxm J8wMA
X-Developer-Key: i=cassel@kernel.org; a=openpgp; fpr=5ADE635C0E631CBBD5BE065A352FE6582ED9B5DA
Content-Transfer-Encoding: 8bit

Commit da92d3dfc871 ("arm64: dts: rockchip: enable the mmu600_pcie IOMMU
on the rk3588 SoC") enabled the mmu600_pcie IOMMU, both in the normal case
(when all PCIe controllers are running in Root Complex mode) and in the
case when running the pcie3x4 PCIe controller in Endpoint mode.

There have been no issues detected when running the PCIe controllers in
Root Complex mode. During PCI probe time, we will add a SID to the IOMMU
for each PCI device enumerated on the bus, including the root port itself.

However, when running the pcie3x4 PCIe controller in Endpoint mode, we
will only add a single SID to the IOMMU (the SID specified in the iommus
DT property).

The enablement of IOMMU in endpoint mode was verified on setup with two
Rock 5b:s, where the BDF of the Root Complex has BDF (00:00.0).

A Root Complex sending a TLP to the Endpoint will have Requester ID set
to the BDF of the initiator. On the EP side, the Requester ID will then
be used as the SID. This works fine if the Root Complex has a BDF that
matches the iommus DT property, however, if the Root Complex has any other
BDF, we will see something like:
arm-smmu-v3 fc900000.iommu: event: C_BAD_STREAMID client: (unassigned sid) sid: 0x1600 ssid: 0x0
on the endpoint side.

For PCIe controllers running in endpoint mode that always uses the
incoming Requester ID as the SID, the iommus DT property simply isn't
a viable solution. (Neither is iommu-map a viable solution, as there is
no enumeration done on the endpoint side.)

Thus, partly revert commit da92d3dfc871 ("arm64: dts: rockchip: enable the
mmu600_pcie IOMMU on the rk3588 SoC") by disabling the PCI IOMMU when
running the pcie3x4 PCIe controller in Endpoint mode.

Since the PCI IOMMU is working as expected in the normal case, keep it
enabled when running all PCIe controllers in Root Complex mode.

Fixes: da92d3dfc871 ("arm64: dts: rockchip: enable the mmu600_pcie IOMMU on the rk3588 SoC")
Signed-off-by: Niklas Cassel <cassel@kernel.org>
---
 arch/arm64/boot/dts/rockchip/rk3588-extra.dtsi           | 1 -
 arch/arm64/boot/dts/rockchip/rk3588-rock-5b-pcie-ep.dtso | 4 ++++
 2 files changed, 4 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-extra.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-extra.dtsi
index 42b57e27ee4c..b5feefda9d2d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-extra.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-extra.dtsi
@@ -215,7 +215,6 @@ pcie3x4_ep: pcie-ep@fe150000 {
 		interrupt-names = "sys", "pmc", "msg", "legacy", "err",
 				  "dma0", "dma1", "dma2", "dma3";
 		max-link-speed = <3>;
-		iommus = <&mmu600_pcie 0x0000>;
 		num-lanes = <4>;
 		phys = <&pcie30phy>;
 		phy-names = "pcie-phy";
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-pcie-ep.dtso b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-pcie-ep.dtso
index 672d748fcc67..f229cb49da68 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-pcie-ep.dtso
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-pcie-ep.dtso
@@ -23,3 +23,7 @@ &pcie3x4_ep {
 	vpcie3v3-supply = <&vcc3v3_pcie30>;
 	status = "okay";
 };
+
+&mmu600_pcie {
+	status = "disabled";
+};
-- 
2.48.1


