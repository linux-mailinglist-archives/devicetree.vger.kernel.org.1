Return-Path: <devicetree+bounces-82330-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F68E923E26
	for <lists+devicetree@lfdr.de>; Tue,  2 Jul 2024 14:52:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EF7DA1F22505
	for <lists+devicetree@lfdr.de>; Tue,  2 Jul 2024 12:52:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5410016B3B4;
	Tue,  2 Jul 2024 12:52:27 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from dd48830.kasserver.com (dd48830.kasserver.com [85.13.164.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80EDB158DC8
	for <devicetree@vger.kernel.org>; Tue,  2 Jul 2024 12:52:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=85.13.164.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719924747; cv=none; b=FSWy2pZdCwLPE+YCNm9IvnDb2B25ZNgnNd1bj4X2m0Qu61VP34wUJeCmBS5m8lTMByJ6BhXvPxFhWwEyKm2aB5SleK/nsCyy2kHYwGxHGBqerqanWSvXxjRnD2+4skjLbr2dILKT5BYK9gdJ+1wtehoHDNReB4qMKHLy5ajh2cI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719924747; c=relaxed/simple;
	bh=DW0kazB9L90XuwKGKChRraWUSbj8bEVbTFacukJsqaQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=qlmNAWNhSMtbH0T+/j+7FxLEK90KCEeOA5umZuWFnZtgmK2RuzJM1p8bJI4fGGx0y2Lrima4RovVDRnGU3xdvl8uk2J9X5y16ThKXm6zo2IxNC/wckbw3q5J1kJ9kxSHF53HuBsUaKBO8HHQGkxW3XrJWmFeshd6TIcXPAQWAWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pironex.com; spf=fail smtp.mailfrom=pironex.com; arc=none smtp.client-ip=85.13.164.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pironex.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=pironex.com
Received: from ms7c95.fritz.box (p5098bff9.dip0.t-ipconnect.de [80.152.191.249])
	by dd48830.kasserver.com (Postfix) with ESMTPSA id 151616EC047D;
	Tue,  2 Jul 2024 14:46:29 +0200 (CEST)
From: Philipp Puschmann <p.puschmann@pironex.com>
To: linux-rockchip@lists.infradead.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	heiko@sntech.de,
	p.puschmann@pironex.com,
	devicetree@vger.kernel.org
Subject: [PATCH] arm64: dts: rockchip: rk356x: add ethernet aliases
Date: Tue,  2 Jul 2024 14:46:26 +0200
Message-ID: <20240702124626.116290-1-p.puschmann@pironex.com>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Bar: ++

Providing ethernet aliases solves a subtle problem for the rk3568. The
bus_id used for the sysfs directory name of the mdio. Without ethernet
alias the bus_id is always 0 and so creating the sysfs directory for the
second mdio fails with a duplicate filename error and by this the setup
of the second ethernet port fails too.

Note: The alias numbering is inverted as gmac1 comes from more generic
rk356x.dtsi but gmac0 comes from specialised rk3568.

Signed-off-by: Philipp Puschmann <p.puschmann@pironex.com>
---
 arch/arm64/boot/dts/rockchip/rk3568.dtsi | 4 ++++
 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 1 +
 2 files changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568.dtsi b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
index f1be76a54ceb..42018c8666e0 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
@@ -8,6 +8,10 @@
 / {
 	compatible = "rockchip,rk3568";
 
+	aliases {
+		ethernet1 = &gmac0;
+	};
+
 	sata0: sata@fc000000 {
 		compatible = "rockchip,rk3568-dwc-ahci", "snps,dwc-ahci";
 		reg = <0 0xfc000000 0 0x1000>;
diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index d8543b5557ee..e13bd7b24752 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -43,6 +43,7 @@ aliases {
 		spi1 = &spi1;
 		spi2 = &spi2;
 		spi3 = &spi3;
+		ethernet0 = &gmac1;
 	};
 
 	cpus {
-- 
2.45.2


