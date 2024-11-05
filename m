Return-Path: <devicetree+bounces-119228-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D4A59BD9CF
	for <lists+devicetree@lfdr.de>; Wed,  6 Nov 2024 00:41:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D33761F239B4
	for <lists+devicetree@lfdr.de>; Tue,  5 Nov 2024 23:41:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 26A5B216A1A;
	Tue,  5 Nov 2024 23:41:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="ejvFprQH"
X-Original-To: devicetree@vger.kernel.org
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 765D021643C
	for <devicetree@vger.kernel.org>; Tue,  5 Nov 2024 23:41:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=85.214.62.61
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730850085; cv=none; b=QR7+fE5GPzwDbqL319nm7vnssesfjkOqeYKz0dnxHT0kiueOh6uJIjzVzd+ittXHViDZG8PNisFIOEMc/f8aH4doYSSIy5yvDF+JEZWKRUz8C3AZf+G50A/CjVycMNjFk2ercoB+1Ck6dCl/HLYS5Gs5WCP3FOFSvfwPkVhNQUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730850085; c=relaxed/simple;
	bh=0RZGBsykZ3JwzrY7HfnGsGjD0K18dgMDvaXV6KJyEpQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=ZlOMjCY+PxO6SKvYLVUl9eWHCNL3510QQlU/6VZjGBDmuEQvFme/a0zrI9NqgLLX1fRShYBCfbia1FL7xWYfc/rDGer2QdOXkAf7DsZyH3wZ5qTOSftygstJ2UHBs8M/VW0Dxwu6bPDqE9uYejsn0nbnI3ZTvkavSJXHF8RkA1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de; spf=pass smtp.mailfrom=denx.de; dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b=ejvFprQH; arc=none smtp.client-ip=85.214.62.61
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=denx.de
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id 3F73F88E43;
	Wed,  6 Nov 2024 00:41:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1730850081;
	bh=Visze8T1/o6NUVrcZdRQoW4QaawF0ER2MqTcFpjP8Eg=;
	h=From:To:Cc:Subject:Date:From;
	b=ejvFprQH13kWl4SckkcMJ/PbMRZcGSzg08H2bIDBgvVuuEv/he9ahzWjdPIrMSKMo
	 l76DYvu4E3IFY6fZ6/GOM08S0b9XQDHLh8Y4yKI1mgD8oLbL6QlY58+MtM7/yaH4Sy
	 MOYsHua9eZffCK4pLqz6FzKEKh/qCH3c78vRGLdboIjP+y6s8l8T+X5kjT/iIEAWJ6
	 b6AZV0qF5Bkfv4fTWoZFgOOw8Roo+RWCgBLM07DkKCPSNHAhPDpXnxM1c9xT7RFMC6
	 j4/t0Tz2w2m10G44iVcNILWKhC0GwIolm1+cRWxwhzy/NQ8Ogd1GhDLfEjVE4Lrstg
	 JHZEOpBH6N8MQ==
From: Marek Vasut <marex@denx.de>
To: linux-arm-kernel@lists.infradead.org
Cc: Marek Vasut <marex@denx.de>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org,
	kernel@dh-electronics.com,
	linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH] ARM: dts: stm32: Sort M24256E write-lockable page in DH STM32MP13xx DHCOR SoM DT
Date: Wed,  6 Nov 2024 00:40:41 +0100
Message-ID: <20241105234106.162610-1-marex@denx.de>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean

Move the M24256E write-lockable page subnode after RTC subnode in
DH STM32MP13xx DHCOR SoM DT to keep the list of nodes sorted by I2C
address. No functional change.

Fixes: 3f2e7d167307 ("ARM: dts: stm32: Describe M24256E write-lockable page in DH STM32MP13xx DHCOR SoM DT")
Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
Cc: Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org
Cc: kernel@dh-electronics.com
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-stm32@st-md-mailman.stormreply.com
---
 arch/arm/boot/dts/st/stm32mp13xx-dhcor-som.dtsi | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boot/dts/st/stm32mp13xx-dhcor-som.dtsi b/arch/arm/boot/dts/st/stm32mp13xx-dhcor-som.dtsi
index 5edbc790d1d27..a181d5a816f69 100644
--- a/arch/arm/boot/dts/st/stm32mp13xx-dhcor-som.dtsi
+++ b/arch/arm/boot/dts/st/stm32mp13xx-dhcor-som.dtsi
@@ -201,17 +201,17 @@ eeprom0: eeprom@50 {
 		pagesize = <64>;
 	};
 
-	eeprom0wl: eeprom@58 {
-		compatible = "st,24256e-wl";	/* ST M24256E WL page of 0x50 */
-		pagesize = <64>;
-		reg = <0x58>;
-	};
-
 	rv3032: rtc@51 {
 		compatible = "microcrystal,rv3032";
 		reg = <0x51>;
 		interrupts-extended = <&gpioi 0 IRQ_TYPE_EDGE_FALLING>;
 	};
+
+	eeprom0wl: eeprom@58 {
+		compatible = "st,24256e-wl";	/* ST M24256E WL page of 0x50 */
+		pagesize = <64>;
+		reg = <0x58>;
+	};
 };
 
 &iwdg2 {
-- 
2.45.2


