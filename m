Return-Path: <devicetree+bounces-78993-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 56F10913DA5
	for <lists+devicetree@lfdr.de>; Sun, 23 Jun 2024 21:16:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EF9E128317C
	for <lists+devicetree@lfdr.de>; Sun, 23 Jun 2024 19:16:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 169EA145FE5;
	Sun, 23 Jun 2024 19:16:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="bp0EV5pS"
X-Original-To: devicetree@vger.kernel.org
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EE892AEE9
	for <devicetree@vger.kernel.org>; Sun, 23 Jun 2024 19:16:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=85.214.62.61
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719170180; cv=none; b=l3tIVGnBAhp5zkwdB0OGe0wP2zt4P5s23g7/j23gT6eZfpKlkouNYdKOrbsi7eeKiwvKPIYVuBEzR5DdnyCCDjCvEetByefI+iR+Xo07pKEdPdrw4+KXnYs9kQzcN0p+2F2L9G51K0QgUdBLdHKZl7iWkqP0rKCz3fc1JmiR74I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719170180; c=relaxed/simple;
	bh=Lk705AlbWpXhjkeU5eX2QNoyvmZG5mETZOj5LOE/f3Q=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=UxMgZBL06Z4tWaQ0wcs06QL+WQpuKuEZ+/LnI/R+WbD1Dt4Uz6rl9Q8/kZ91UxNqJAyB+7RQGkfna2tF3kAWbfQjm/V/rR//rsBta/w1g5MJ2Ih/xD9x24nuL5APuCIyT0oO8I+fcNzrCx/1jDYSl+Oh+Xbs/4as1Wob4eB2DQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de; spf=pass smtp.mailfrom=denx.de; dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b=bp0EV5pS; arc=none smtp.client-ip=85.214.62.61
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=denx.de
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id 14420882B8;
	Sun, 23 Jun 2024 21:16:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1719170176;
	bh=jXBLhmBOJIheEaPZEnvhhjmDxmURMa5l2quDyuLkLEk=;
	h=From:To:Cc:Subject:Date:From;
	b=bp0EV5pS8fm8tMEsXQDYzBxkFQEjZG1qm7RqPPyPYpZSTzXUF5L+FghFWo2Sn4EIF
	 2X/uum6VtznupylXZiexz0JJlHoDv9sxGkcFDVU/9WfNhxCUFYDHE3+Z4KCJnjdGXN
	 WkEUOOiguYFDruVnGCnWeSS/ocjaoPhLaaRG+NI6vutZEcPjJtgofXnkJbW+2VZmPe
	 LqxJCPSjreyeg8qIoMm1Vbnh5bXcqt9EqAuM1KrpiZ22x26ykMRxKdz/fdpPw5xlQW
	 rcOqzSnfRXM7yPXYCKDUj9vshmYWH2BPQuxfMRDgDkcXXZ4T0zKgrb1u7mRlvl1Vpe
	 bfbbYCDKbfG4g==
From: Marek Vasut <marex@denx.de>
To: linux-arm-kernel@lists.infradead.org
Cc: Marek Vasut <marex@denx.de>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Christophe Roullier <christophe.roullier@foss.st.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org,
	kernel@dh-electronics.com,
	linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH] ARM: dts: stm32: Add phandle to nvmem efuse into STM32MP13xx ethernet DT node
Date: Sun, 23 Jun 2024 21:15:57 +0200
Message-ID: <20240623191602.67424-1-marex@denx.de>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean

The efuses on STM32MP13xx can be populated with ethernet MAC address.
Add the nvmem-cells/nvmem-cell-name DT properties to ethernet MAC DT
nodes to describe the placement of both MAC address fields within the
efuses, so the ethernet MAC driver can access the efuses and populate
the correct MAC address into the hardware.

Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>
Cc: Christophe Roullier <christophe.roullier@foss.st.com>
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
Cc: Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org
Cc: kernel@dh-electronics.com
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-stm32@st-md-mailman.stormreply.com
---
 arch/arm/boot/dts/st/stm32mp131.dtsi | 2 ++
 arch/arm/boot/dts/st/stm32mp133.dtsi | 2 ++
 2 files changed, 4 insertions(+)

diff --git a/arch/arm/boot/dts/st/stm32mp131.dtsi b/arch/arm/boot/dts/st/stm32mp131.dtsi
index f41508195eb51..55f4150524f3c 100644
--- a/arch/arm/boot/dts/st/stm32mp131.dtsi
+++ b/arch/arm/boot/dts/st/stm32mp131.dtsi
@@ -1528,6 +1528,8 @@ ethernet1: ethernet@5800a000 {
 					 <&rcc ETH1RX>,
 					 <&rcc ETH1STP>,
 					 <&rcc ETH1CK_K>;
+				nvmem-cell-names = "mac-address";
+				nvmem-cells = <&ethernet_mac1_address>;
 				snps,axi-config = <&stmmac_axi_config_1>;
 				snps,mixed-burst;
 				snps,pbl = <2>;
diff --git a/arch/arm/boot/dts/st/stm32mp133.dtsi b/arch/arm/boot/dts/st/stm32mp133.dtsi
index ae2fbc09e93b9..48b6ddb59badf 100644
--- a/arch/arm/boot/dts/st/stm32mp133.dtsi
+++ b/arch/arm/boot/dts/st/stm32mp133.dtsi
@@ -85,6 +85,8 @@ ethernet2: ethernet@5800e000 {
 			 <&rcc ETH2RX>,
 			 <&rcc ETH2STP>,
 			 <&rcc ETH2CK_K>;
+		nvmem-cell-names = "mac-address";
+		nvmem-cells = <&ethernet_mac2_address>;
 		snps,axi-config = <&stmmac_axi_config_2>;
 		snps,mixed-burst;
 		snps,pbl = <2>;
-- 
2.43.0


