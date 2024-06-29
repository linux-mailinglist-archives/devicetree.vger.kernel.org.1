Return-Path: <devicetree+bounces-81629-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0205391CE3D
	for <lists+devicetree@lfdr.de>; Sat, 29 Jun 2024 19:11:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A3AB92827E3
	for <lists+devicetree@lfdr.de>; Sat, 29 Jun 2024 17:11:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D5D6C2230F;
	Sat, 29 Jun 2024 17:11:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="yzrJkqWc"
X-Original-To: devicetree@vger.kernel.org
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A30341E4AF
	for <devicetree@vger.kernel.org>; Sat, 29 Jun 2024 17:11:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=85.214.62.61
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719681083; cv=none; b=AvyGDi2qrD84aa1g9PRN/lNw3ULBplp0d1CUd86+I5RAB+tdleejf+AlPe8t3Rem+WwEfof4msrw/NGGIMngngXygtSV4xhDXdVz+bx36rOesh9w0TSTj3XNzRqQKzrMmGmcY79JyUhhB05I1VfzW3fj48WnnHQVmEyDpd5g+sM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719681083; c=relaxed/simple;
	bh=zNzp4b5hfBJwpbJNhb3XM49BtE39Q+D0gbYD8ZyR67c=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=lHOSR0R1iVeCAe3O9A1jVpxkMEKzEF7qKZzasvbf+kddW/NaHO0tQEEqfJuEN5kIWPtR83ZgKH/lC/IQENNbXXfhKGjh4penyXuVmGRSvbf1yyextYm1dx5TEq5hGr7Gon3gDEAnXbrmnfUXSuBdlti6UwFKgYy7sy2+eL7xrLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de; spf=pass smtp.mailfrom=denx.de; dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b=yzrJkqWc; arc=none smtp.client-ip=85.214.62.61
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=denx.de
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id A479787FC2;
	Sat, 29 Jun 2024 19:11:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1719681074;
	bh=sXLvVRJlnSoumegu1MRQL7hswbQ2cfgnVfoisYRYjcE=;
	h=From:To:Cc:Subject:Date:From;
	b=yzrJkqWcwQtnPC2aAnWxKnDLVNuQc5Bm6+1ZDXINAszJqxSvO9XMg3t5v1bEUsM8E
	 0M8qJ2xZ3GXxEThXylOOKELYESXVJ+on1nnh/zHs91oogU0baJ/4paZBsk1X4tI138
	 tp0EiTprSYAJQmK3jI0mUwpa8jdfO7K5ituOaFJzZIz46LVZrOMJIHY2yRwDq0q/gG
	 1brdrEuu31V+ewMh9Y5vmA5q5uIo0KO5iUV1vqsxIWeEBeYKEt705V6uJjVWDgrC0D
	 zfFqdRgWi+g3SdHVBtSp7tSfpkEggYLWBOgIOVrgin2m7nWONw5E0MYMKXIfiZcQHO
	 k5Mb19sfXH8uw==
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
Subject: [PATCH] ARM: dts: stm32: Add ethernet MAC nvmem cells to DH STM32MP13xx DHCOR DHSBC board
Date: Sat, 29 Jun 2024 19:10:30 +0200
Message-ID: <20240629171100.20285-1-marex@denx.de>
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

Describe ethernet MAC address nvmem cells in DH STM32MP13xx DHCOR DHSBC
board DT. The MAC address can be fused in BSEC OTP fuses and used to set
up MAC address for both ethernet MACs on this board.

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
 arch/arm/boot/dts/st/stm32mp135f-dhcor-dhsbc.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/boot/dts/st/stm32mp135f-dhcor-dhsbc.dts b/arch/arm/boot/dts/st/stm32mp135f-dhcor-dhsbc.dts
index bacb70b4256bc..3cc9ad88d61bc 100644
--- a/arch/arm/boot/dts/st/stm32mp135f-dhcor-dhsbc.dts
+++ b/arch/arm/boot/dts/st/stm32mp135f-dhcor-dhsbc.dts
@@ -75,6 +75,8 @@ channel@12 {
 };
 
 &ethernet1 {
+	nvmem-cell-names = "mac-address";
+	nvmem-cells = <&ethernet_mac1_address>;
 	phy-handle = <&ethphy1>;
 	phy-mode = "rgmii-id";
 	pinctrl-0 = <&eth1_rgmii_pins_a>;
@@ -102,6 +104,8 @@ ethphy1: ethernet-phy@1 {
 };
 
 &ethernet2 {
+	nvmem-cell-names = "mac-address";
+	nvmem-cells = <&ethernet_mac2_address>;
 	phy-handle = <&ethphy2>;
 	phy-mode = "rgmii-id";
 	pinctrl-0 = <&eth2_rgmii_pins_a>;
-- 
2.43.0


