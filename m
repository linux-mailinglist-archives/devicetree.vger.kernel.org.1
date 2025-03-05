Return-Path: <devicetree+bounces-154404-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 05558A50062
	for <lists+devicetree@lfdr.de>; Wed,  5 Mar 2025 14:23:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C4CBD178D95
	for <lists+devicetree@lfdr.de>; Wed,  5 Mar 2025 13:16:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F1E124EF65;
	Wed,  5 Mar 2025 13:14:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AB2F24CEEF
	for <devicetree@vger.kernel.org>; Wed,  5 Mar 2025 13:14:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741180491; cv=none; b=O6WF+kYbAWwbGuMGbzw5VV64QtisrpAcefTGiRhLnNk9VP947ZAJh643Imb+p2/c3v1FM6C+KJN1I2IQRIwWhUcBznPp9TsAbzMKdt2U4ZLYrGvVwJ8YQ/oldhVq0CZGiOKAvqUq0lePvS6oHAhxfoEpFOJ1dpwcyrY+lxHczts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741180491; c=relaxed/simple;
	bh=o8rb0cRL5d/DJLK3zumcC2E3PtRerI3iEuNDOsyCwjM=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=oVr2ufIafkTIpfaXrZuP7VbfK4KzHOd/C1scwZxt7TXV7x9WWKh8Qur6Kd5dWayci289wnpsbsWNMxSPTRMrAGZ96NBhwMaICB4WzhWZ4ryBmK3GYT7JR6YN8DiXSepqHd8hzrv513A74f6R0sDPDDlIjn3CYrf4EbmheiZnbqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1tpoZw-0000xZ-A1; Wed, 05 Mar 2025 14:14:28 +0100
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1tpoZu-0049P5-1i;
	Wed, 05 Mar 2025 14:14:26 +0100
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1tpoZu-006G5O-1R;
	Wed, 05 Mar 2025 14:14:26 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Woojung Huh <woojung.huh@microchip.com>,
	Andrew Lunn <andrew+netdev@lunn.ch>
Cc: Oleksij Rempel <o.rempel@pengutronix.de>,
	kernel@pengutronix.de,
	linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH v5 0/4] Add support for Plymovent AQM board
Date: Wed,  5 Mar 2025 14:14:21 +0100
Message-Id: <20250305131425.1491769-1-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.39.5
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ore@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

This patch series adds support for the Plymovent AQM board based on the
STM32MP151C SoC. Additionally, the ICS-43432 device tree binding is
converted to YAML to address a validation warning.

The ICS-43432 patch resolves one of the devicetree validation warnings.
However, the false-positive warning:

  "audio-controller@44004000: port:endpoint: Unevaluated properties are
   not allowed ('format' was unexpected)"

remains unresolved. The "format" property is required for proper
functionality of this device.

Best regards,

Oleksij Rempel (4):
  dt-bindings: sound: convert ICS-43432 binding to YAML
  dt-bindings: arm: stm32: Add Plymovent AQM board
  ARM: dts: stm32: Add pinmux groups for Plymovent AQM board
  arm: dts: stm32: Add Plymovent AQM devicetree

 .../devicetree/bindings/arm/stm32/stm32.yaml  |   1 +
 .../devicetree/bindings/sound/ics43432.txt    |  19 -
 .../bindings/sound/invensense,ics43432.yaml   |  51 +++
 arch/arm/boot/dts/st/Makefile                 |   1 +
 arch/arm/boot/dts/st/stm32mp15-pinctrl.dtsi   | 292 ++++++++++++++
 arch/arm/boot/dts/st/stm32mp151c-plyaqm.dts   | 376 ++++++++++++++++++
 6 files changed, 721 insertions(+), 19 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/sound/ics43432.txt
 create mode 100644 Documentation/devicetree/bindings/sound/invensense,ics43432.yaml
 create mode 100644 arch/arm/boot/dts/st/stm32mp151c-plyaqm.dts

--
2.39.5


