Return-Path: <devicetree+bounces-154354-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E5EE0A4FBCD
	for <lists+devicetree@lfdr.de>; Wed,  5 Mar 2025 11:23:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EB4E918942C2
	for <lists+devicetree@lfdr.de>; Wed,  5 Mar 2025 10:23:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6547A2066C4;
	Wed,  5 Mar 2025 10:21:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E86A22063FB
	for <devicetree@vger.kernel.org>; Wed,  5 Mar 2025 10:21:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741170092; cv=none; b=QwuzA4mGztAWgJCv0Zbw7SGQMnCdWSqct/8gH3k1vYgfUmnNybu6ZwtGIWsle/Uk4H38OSi/slArhoijgGP+qNdkhgG2VK+a66ZPtnnNLxxvOAFF0GgfS7kP1GSdeCleiEVJHN5+E+2GKY4Tcf7Q5qYHHXzbtYFCyLUa5Z4ltGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741170092; c=relaxed/simple;
	bh=o8rb0cRL5d/DJLK3zumcC2E3PtRerI3iEuNDOsyCwjM=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=L5CI7/4l+Vv9V6xPl/II8C4v9Oz5L8RKwN63aGp4rfNRzwQhJre/w+Wb0Jl3ktlH8xC5qPp5eFwEBxO5bFqI+5+cI+FyTIP8fuZL2ShcJjSwqdnC4mHsN6hQs9aTcOeH9Jl4XhLLZUwL08gaGwrWM+JiNSzxwfDaIg+9PGHoQ28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1tplsA-0001n1-K3; Wed, 05 Mar 2025 11:21:06 +0100
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1tpls8-0047xi-1o;
	Wed, 05 Mar 2025 11:21:04 +0100
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1tpls8-0050h8-1X;
	Wed, 05 Mar 2025 11:21:04 +0100
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
Subject: [PATCH v4 0/4] Add support for Plymovent AQM board
Date: Wed,  5 Mar 2025 11:20:59 +0100
Message-Id: <20250305102103.1194277-1-o.rempel@pengutronix.de>
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


