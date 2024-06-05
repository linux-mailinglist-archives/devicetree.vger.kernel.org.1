Return-Path: <devicetree+bounces-72986-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F8838FDA7F
	for <lists+devicetree@lfdr.de>; Thu,  6 Jun 2024 01:28:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 66EF11C20DA9
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 23:28:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 966E515FCF0;
	Wed,  5 Jun 2024 23:28:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="thYHs/ZI"
X-Original-To: devicetree@vger.kernel.org
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C7E215FCEB
	for <devicetree@vger.kernel.org>; Wed,  5 Jun 2024 23:28:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=85.214.62.61
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717630116; cv=none; b=BjNOoGRCk9VlpPZT0heA0TWbG5tJgjEx7TCY5lxwZIUsSxD167SZLV/IiNADOYBvBV41Ge5ymNKeoOz5DJF1byM9I1ns1lTa6Zeo2opmBsM13qO0EF970NvU+9x70l9p1oKxGevEnvMbVtOtynMJ8HQI2FkZuOqfAe8CSIvqmpw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717630116; c=relaxed/simple;
	bh=unQYaoqzMREGjX5PY9/f1m+60aTMNiXKdEBcTQW/MJI=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=gAXJqjpZfhk5Xh8JVWOXSTbLMZwWRBBQ10kJHSyb6vFAbye13dsFNt+9Z7LOmvIxOl3JJii0TIdzg7OedmRBX5ccKJBlVYw0G/KDoGr/Acv1IJeT5to5MmrdumGPagONhvScSHLUuv0580LVnmueHoVE4KNFUaommddwtCERvDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de; spf=pass smtp.mailfrom=denx.de; dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b=thYHs/ZI; arc=none smtp.client-ip=85.214.62.61
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=denx.de
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id E0347881BC;
	Thu,  6 Jun 2024 01:28:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1717630110;
	bh=Sh3L1tN8CDv44Y4aN0xsapeWAqaQcNJARHqWd6gqaXE=;
	h=From:To:Cc:Subject:Date:From;
	b=thYHs/ZITV40869tTbvw6rXrz4iFRCU5cmbPVRYspcxLpqn+IDWc+XANg9CpJ9SVI
	 Fm1H+VDRZuG5ywLYPyTpbugoWC4f8fqKbiD1Grek8vgCeJaUUFvglDQpkEjk5jCoT7
	 G4aoIW7nWJGlV92Ta+5B92oGbdbiVeviQZbt4IjSdyFBO8GpjqmZIbp2TDLZ9GA3Rh
	 MNJKPmp/o6hv95Fzt3+y9kRw3l2i6BUnQUSa46GITjfayqAB5LEouZswmSwDECCIH+
	 QbeMYAeM3WRGJx+C1ep5DG2XQYuZq5e0koWPJga1oOpm4JpT5jbjmCa3rGjkEXpWnn
	 xcdwBoL0/gb/w==
From: Marek Vasut <marex@denx.de>
To: linux-arm-kernel@lists.infradead.org
Cc: Marek Vasut <marex@denx.de>,
	=?UTF-8?q?Leonard=20G=C3=B6hrs?= <l.goehrs@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Andre Przywara <andre.przywara@arm.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Sean Nyekjaer <sean@geanix.com>,
	Steffen Trumtrar <s.trumtrar@pengutronix.de>,
	Stephen Rothwell <sfr@canb.auug.org.au>,
	devicetree@vger.kernel.org,
	kernel@dh-electronics.com,
	linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH] ARM: dts: stm32: Fix STM32MP13xx DHCOR DHSBC Makefile entry
Date: Thu,  6 Jun 2024 01:27:01 +0200
Message-ID: <20240605232809.169927-1-marex@denx.de>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean

Fix stm32mp135f-dhcor-dhsbc board Makefile entry,
replace 'dhsom' with 'dhcor' typo.

Fixes: 12ff8e167641 ("ARM: dts: stm32: Add support for STM32MP13xx DHCOR SoM and DHSBC board")
Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: "Leonard Göhrs" <l.goehrs@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>
Cc: Andre Przywara <andre.przywara@arm.com>
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Dario Binacchi <dario.binacchi@amarulasolutions.com>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Linus Walleij <linus.walleij@linaro.org>
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
Cc: Rob Herring <robh@kernel.org>
Cc: Sean Nyekjaer <sean@geanix.com>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: Stephen Rothwell <sfr@canb.auug.org.au>
Cc: devicetree@vger.kernel.org
Cc: kernel@dh-electronics.com
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-stm32@st-md-mailman.stormreply.com
---
 arch/arm/boot/dts/st/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/st/Makefile b/arch/arm/boot/dts/st/Makefile
index db9718059ae2f..015903d09323f 100644
--- a/arch/arm/boot/dts/st/Makefile
+++ b/arch/arm/boot/dts/st/Makefile
@@ -29,7 +29,7 @@ dtb-$(CONFIG_ARCH_STM32) += \
 	stm32h743i-eval.dtb \
 	stm32h743i-disco.dtb \
 	stm32h750i-art-pi.dtb \
-	stm32mp135f-dhsom-dhsbc.dtb \
+	stm32mp135f-dhcor-dhsbc.dtb \
 	stm32mp135f-dk.dtb \
 	stm32mp151a-prtt1a.dtb \
 	stm32mp151a-prtt1c.dtb \
-- 
2.43.0


