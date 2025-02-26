Return-Path: <devicetree+bounces-151365-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E62A0A458D0
	for <lists+devicetree@lfdr.de>; Wed, 26 Feb 2025 09:50:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 13A197A4B45
	for <lists+devicetree@lfdr.de>; Wed, 26 Feb 2025 08:49:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E99120E01F;
	Wed, 26 Feb 2025 08:50:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="b4cY+8dx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5327A1E1E17
	for <devicetree@vger.kernel.org>; Wed, 26 Feb 2025 08:50:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740559811; cv=none; b=T0mIHoEmDdh6iOiuiZpKaFY4uF8QOMr5DUJuVh4QnxVBVwUt8flpCrFRbKz3/PVJW7K/pbY9J4MlrXOwSDMMz2DSt+xVNsZ9va6zohwyubk6z18BXuq+EKM5aPOB76ue1IwEg8tnwMJ08G4I7zrXiuVQMH+G2s+oN5YwD1TP9BU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740559811; c=relaxed/simple;
	bh=VRteS3scAxzeBNmlelUo+QGvUuLCYYvTvIEyug/2XH8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=FiQuNKWtMerO75RYNVGZzGglkkkuH3sCN2csTTvZPuPdx0LnLZ6NOBtyxH3jryN+7mMp1bHPD2tx6Rbbd+M0SGgGOwN+iOeMTGpDw+bObgtKGlmlLRZwRnr9ztbu6BRwQ3QvoTnBtngHpU1AKXXaI/sG55Dura6oXvg6yxzZ5hE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=b4cY+8dx; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:mime-version:content-transfer-encoding; s=k1; bh=AQq1tfNVC3PLTk
	luezaUKOxK1ntdb4Rwze8vX7bXHRc=; b=b4cY+8dxDKoGjTrMa1Ve+FLtVhfWlp
	QjLoAZxrw0Bux0IQxH/ywcB5WlXVew7oALVAEXm/qSKhSrJPdkTfejKUPQogIUGX
	7sPJdhk195COtnfVzhn3GZS6IGwEuPUcDbgbW61hZ++7KAqSoh6ex/ybPGvG2m4D
	P49BgoQmwXNYd+ch258B/kVJjEQOb06YkIJ4EaREJ7zl1xD7VWIpYWAYRglJpa5k
	Sc0JuZoT4nhrkbEcimkqdxeWhQqAMtp07+44ADrz4CNzoHObBXapSc4yh4aELoCD
	27P9jBBc9XYo+dTS2ODJaC0nngaMYH1bXTecj3iCWdBN3w7CY+S1Xjig==
Received: (qmail 500321 invoked from network); 26 Feb 2025 09:50:03 +0100
Received: by mail.zeus03.de with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 26 Feb 2025 09:50:03 +0100
X-UD-Smtp-Session: l3s3148p1@iBzBqAcv2pIgAwDPXxaLANR24ZQNPy5l
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-arm-kernel@lists.infradead.org
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Claudiu Beznea <claudiu.beznea@tuxon.dev>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Nicolas Ferre <nicolas.ferre@microchip.com>,
	Rob Herring <robh@kernel.org>
Subject: [PATCH v2 0/4] ARM: dts: at91: calao_usb: improve support
Date: Wed, 26 Feb 2025 09:49:35 +0100
Message-ID: <20250226084938.3436-6-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This series improves Calao USB devicetrees and fixes other at91-wide DT
issues on the way. The Calao boards are added to the at91 binding
description, the Olimex board is separated first. Also, the wrong
usb-node name is fixed for the whole directory

Changes since v1:
* add patches 1-2 to this series to meet dependencies of patch 3
* patch 4 is new
* rebased on at91-next

Wolfram Sang (4):
  dt-bindings: ARM: at91: make separate entry for Olimex board
  dt-bindings: ARM: at91: add Calao USB boards
  ARM: dts: at91: usb_a9263: fix wrong vendor
  ARM: dts: at91: fix faulty ohci/ehci node names

 .../devicetree/bindings/arm/atmel-at91.yaml   | 33 +++++++++++++++++--
 arch/arm/boot/dts/microchip/aks-cdu.dts       |  2 +-
 arch/arm/boot/dts/microchip/animeo_ip.dts     |  2 +-
 arch/arm/boot/dts/microchip/at91-foxg20.dts   |  2 +-
 .../arm/boot/dts/microchip/at91-qil_a9260.dts |  2 +-
 .../boot/dts/microchip/at91-sam9_l9260.dts    |  2 +-
 .../dts/microchip/at91-sama5d27_som1_ek.dts   |  4 +--
 .../dts/microchip/at91-sama5d2_ptc_ek.dts     |  4 +--
 .../dts/microchip/at91-sama5d2_xplained.dts   |  4 +--
 .../dts/microchip/at91-sama5d3_xplained.dts   |  4 +--
 .../dts/microchip/at91-sama5d4_ma5d4evk.dts   |  4 +--
 .../dts/microchip/at91-sama5d4_xplained.dts   |  4 +--
 .../arm/boot/dts/microchip/at91-sama5d4ek.dts |  4 +--
 arch/arm/boot/dts/microchip/at91-vinco.dts    |  4 +--
 arch/arm/boot/dts/microchip/at91rm9200.dtsi   |  2 +-
 arch/arm/boot/dts/microchip/at91rm9200ek.dts  |  2 +-
 arch/arm/boot/dts/microchip/at91sam9260.dtsi  |  2 +-
 arch/arm/boot/dts/microchip/at91sam9260ek.dts |  2 +-
 arch/arm/boot/dts/microchip/at91sam9261.dtsi  |  2 +-
 arch/arm/boot/dts/microchip/at91sam9261ek.dts |  2 +-
 arch/arm/boot/dts/microchip/at91sam9263.dtsi  |  2 +-
 arch/arm/boot/dts/microchip/at91sam9263ek.dts |  2 +-
 .../dts/microchip/at91sam9g20ek_common.dtsi   |  2 +-
 arch/arm/boot/dts/microchip/at91sam9g45.dtsi  |  4 +--
 .../boot/dts/microchip/at91sam9m10g45ek.dts   |  4 +--
 arch/arm/boot/dts/microchip/at91sam9n12.dtsi  |  2 +-
 arch/arm/boot/dts/microchip/at91sam9n12ek.dts |  2 +-
 arch/arm/boot/dts/microchip/at91sam9x5.dtsi   |  4 +--
 arch/arm/boot/dts/microchip/ethernut5.dts     |  2 +-
 arch/arm/boot/dts/microchip/evk-pro3.dts      |  2 +-
 arch/arm/boot/dts/microchip/mpa1600.dts       |  2 +-
 arch/arm/boot/dts/microchip/pm9g45.dts        |  4 +--
 arch/arm/boot/dts/microchip/sam9x60.dtsi      |  4 +--
 arch/arm/boot/dts/microchip/sama5d2.dtsi      |  4 +--
 arch/arm/boot/dts/microchip/sama5d3.dtsi      |  4 +--
 arch/arm/boot/dts/microchip/sama5d3xmb.dtsi   |  4 +--
 arch/arm/boot/dts/microchip/sama5d4.dtsi      |  4 +--
 .../boot/dts/microchip/usb_a9260_common.dtsi  |  2 +-
 arch/arm/boot/dts/microchip/usb_a9263.dts     |  4 +--
 39 files changed, 87 insertions(+), 58 deletions(-)

-- 
2.45.2


