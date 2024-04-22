Return-Path: <devicetree+bounces-61252-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 063398AC247
	for <lists+devicetree@lfdr.de>; Mon, 22 Apr 2024 02:20:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B10E4280E53
	for <lists+devicetree@lfdr.de>; Mon, 22 Apr 2024 00:20:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B8BE737E;
	Mon, 22 Apr 2024 00:20:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="N40HmBI3"
X-Original-To: devicetree@vger.kernel.org
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0DAC184
	for <devicetree@vger.kernel.org>; Mon, 22 Apr 2024 00:20:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=85.214.62.61
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713745238; cv=none; b=sQOFGpxKpMsnrxxKXcnzDq/pqe/0lQbVqMJhoxASTnyA6Z/Dml1IG9cPS2AWsrBMBLxmZA/O71JxPPgLdb9WdxRATbeLzuXsqELEghIE6L8jrW5JnYaRJZtmkxHiDXxjaWxUw4Fy2RzNRyD/DWeagVDWsnq9J3/IYPHkX8grI0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713745238; c=relaxed/simple;
	bh=BsoPBMBiYJze3fIpzn47U65+hcj9m0/6ht/SthPUn6U=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=qL9z+upzPkpW+8z/T67vNwzofLYQ9xhWKLkMsKWvuQJfNe1odeHM5AKDdJoUgBRLckA3nkHn47K8DwJ0gN/QzJ2cU7MrPEUzvGyZBl+7qo/X6V9dOrH5p+bGIS/8bLa5Xh8Sh8XNnAd8JV764WPpYKmOO0tFYygNsJM68r7uEPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de; spf=pass smtp.mailfrom=denx.de; dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b=N40HmBI3; arc=none smtp.client-ip=85.214.62.61
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=denx.de
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id C4A8F882CD;
	Mon, 22 Apr 2024 02:20:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1713745234;
	bh=C3skNuOyjMc/CYhL0wwlYo4G50Iwfw8YHKxPSn1MoQE=;
	h=From:To:Cc:Subject:Date:From;
	b=N40HmBI3en0fLAu/iLk7SQIfOKLT3t7hzVqGpJGsrQ320UIoi226X9vD73VNbrajU
	 fQ9+1hIHwunjWivfsbonB9uOTxdbFOoDIEXlkub3aK2+RhiX4hZbruppRhZklzh03p
	 XLOVlqOHfioVQp2qJ1Fp97ePqie8h885lsV4dilmM1A432xsXxwiZWGvL9ttDi1XIJ
	 KVquQ0RI7fH8ZVBlMDhx9gv9sfSa7igLGF9uWYmylaV/V0i8jTvBxbGT0UDba2I4ha
	 VjJd5G9Hh14RjkVRSEpcCQ2sGH+g6vcHOkf8ZgMSzOYE7JtViD9hzQExbXrzU57LB1
	 58EPUOB+yJcIA==
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
	devicetree@vger.kernel.org,
	kernel@dh-electronics.com,
	linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH 01/20] dt-bindings: arm: stm32: Add compatible string for DH electronics STM32MP13xx DHCOR DHSBC board
Date: Mon, 22 Apr 2024 02:19:15 +0200
Message-ID: <20240422002006.243687-1-marex@denx.de>
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

Add DT compatible string for DH electronics STM32MP13xx DHCOR SoM and
DHSBC carrier board. This stm32mp135f-dhcor-dhsbc board is a stack of
DHCOR SoM based on STM32MP135F SoC (900MHz / crypto capabilities)
populated on DHSBC carrier board.

The SoM contains the following peripherals:
- STPMIC (power delivery)
- 512MB DDR3L memory
- eMMC and SDIO WiFi module

The DHSBC carrier board contains the following peripherals:
- Two RGMII Ethernet ports
- USB-A Host port, USB-C peripheral port, USB-C power supply plug
- Expansion connector

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
Cc: devicetree@vger.kernel.org
Cc: kernel@dh-electronics.com
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-stm32@st-md-mailman.stormreply.com
---
 Documentation/devicetree/bindings/arm/stm32/stm32.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/stm32/stm32.yaml b/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
index bc2f43330ae42..7f61223b8ef24 100644
--- a/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
+++ b/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
@@ -59,6 +59,12 @@ properties:
               - prt,prtt1s   # Protonic PRTT1S
           - const: st,stm32mp151
 
+      - description: DH STM32MP135 DHCOR SoM based Boards
+        items:
+          - const: dh,stm32mp135f-dhcor-dhsbc
+          - const: dh,stm32mp131a-dhcor-som
+          - const: st,stm32mp135
+
       - description: DH STM32MP151 DHCOR SoM based Boards
         items:
           - const: dh,stm32mp151a-dhcor-testbench
-- 
2.43.0


