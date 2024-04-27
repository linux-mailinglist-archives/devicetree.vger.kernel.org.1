Return-Path: <devicetree+bounces-63344-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 65BF18B48CB
	for <lists+devicetree@lfdr.de>; Sun, 28 Apr 2024 00:11:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 16764281CAA
	for <lists+devicetree@lfdr.de>; Sat, 27 Apr 2024 22:11:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2200B1465BA;
	Sat, 27 Apr 2024 22:11:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="rG4MOmno"
X-Original-To: devicetree@vger.kernel.org
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E77A1DA53
	for <devicetree@vger.kernel.org>; Sat, 27 Apr 2024 22:11:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=85.214.62.61
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714255886; cv=none; b=D4/OYotq71rtr5YuljVgEZpgHLVxVUz8xBRw6jmFEDsxkgiI6XPluWhs8Xn5gA4dz6LFvQJiA5zWHuiV8vYJqadYaLSoGlpt/Ovop7KMACt/2peSB9GD02q3OemX4zSzZIT/84wIXBCS3dCEt2YF9Hl090R6MpwFp1IjOrEt8g0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714255886; c=relaxed/simple;
	bh=CGgmAMZuIq5sNf+wYoEXqrXUiZ3Ivayh7jSXf7NNAJk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=nQ62rW1Am5VlFmQRsNYXjrmEUZPtnUyWaCqLb5sDl91nNIm4Oiq+M707XkDxwfSdXNHUd3ZWnq93qtsuD5QSrVmxXFN0FnAoEOYGQVuPx0Zxttcv56bZqxi7kBqQOm4cFUEsnmUz+eV0bTDj0Dlrspdjo2xwgP0gPWOt0275wP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de; spf=pass smtp.mailfrom=denx.de; dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b=rG4MOmno; arc=none smtp.client-ip=85.214.62.61
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=denx.de
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id 35D7A881F8;
	Sun, 28 Apr 2024 00:11:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1714255882;
	bh=QX5wg8H03Y76/IAFbub0DZS+NBRtA7iEmj/2mDAVlrU=;
	h=From:To:Cc:Subject:Date:From;
	b=rG4MOmno0jXHM7mHYCQnRDwDFOu5AqEW1JW3gxw5KJC8dymaYU8ijCukrh0EIptN0
	 xx0Q8+4VP1tcG5PvRlzdYIve8C1RN5vyr1ApHPljEhz/JSwP9SQYCyKUK8dTBEaKMV
	 zMCuqk2NGZDFgxAce1fH2TCciZfu8QS57DTdZAaC+kkCfblzoIsbhQ5BkEiJfWwRTB
	 xS1tosVcBp5WK5c/yKPUcjUQiDytDITfAIphRhY2AC3+vfCxPfk3Ne2rRxYKY1PY9d
	 aNTGnFqzsBFVRxKT8dHqJrDc1ed+Fsdhvhu/jm6UfyGaE27uDXchp6VQvVNWkzy+kj
	 pBGoKKrHPGcBw==
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
Subject: [PATCH v2 1/3] dt-bindings: arm: stm32: Add compatible string for DH electronics STM32MP13xx DHCOR DHSBC board
Date: Sun, 28 Apr 2024 00:10:10 +0200
Message-ID: <20240427221048.65392-1-marex@denx.de>
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
V2: Fix the bindings to list the right SoC/SoM/Board compatibles
---
 Documentation/devicetree/bindings/arm/stm32/stm32.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/stm32/stm32.yaml b/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
index bc2f43330ae42..58099949e8f3a 100644
--- a/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
+++ b/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
@@ -59,6 +59,12 @@ properties:
               - prt,prtt1s   # Protonic PRTT1S
           - const: st,stm32mp151
 
+      - description: DH STM32MP135 DHCOR SoM based Boards
+        items:
+          - const: dh,stm32mp135f-dhcor-dhsbc
+          - const: dh,stm32mp135f-dhcor-som
+          - const: st,stm32mp135
+
       - description: DH STM32MP151 DHCOR SoM based Boards
         items:
           - const: dh,stm32mp151a-dhcor-testbench
-- 
2.43.0


