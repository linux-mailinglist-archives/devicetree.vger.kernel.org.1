Return-Path: <devicetree+bounces-13308-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F0B07DD747
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 21:47:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1B36A28188E
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 20:47:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9387122EE5;
	Tue, 31 Oct 2023 20:47:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fris.de header.i=@fris.de header.b="WbxX3QoR"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E5C1225D0
	for <devicetree@vger.kernel.org>; Tue, 31 Oct 2023 20:47:15 +0000 (UTC)
Received: from mail.fris.de (unknown [IPv6:2a01:4f8:c2c:390b::1])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 59633102;
	Tue, 31 Oct 2023 13:47:11 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 76C5DC015D;
	Tue, 31 Oct 2023 21:38:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fris.de; s=dkim;
	t=1698784743; h=from:subject:date:message-id:to:cc:mime-version:
	 content-transfer-encoding; bh=zJqjQl37oqSU7hpiBGUJniZ1omvW45N+RUaTYh4Bj3A=;
	b=WbxX3QoR721ZrzUVN7wavQWMBaJZ54krK9EkpDPJiy9z7yEnruvNqXWoHb+aPmwEs4oL/0
	vN/z9/sTU2T50eaKyKsYoZp6f03Pg4Zy4oKCSBABtqzbR+66mqgV9up0kW0ca72VeK2cTs
	EUDABxvdk882uxi344mfXCozl8txWsEuMPvqm0+ddByG+QMz/kNqlsRkys3sU+kPp6F7V9
	xdoR04MFe41gw11vcD5RkCPXSCk8crfEkrNssHGRdqIntXYo4tyQ3iDC47onuebcbak1fm
	Z3rE02vNKGDVZoPBDDNJa9eII993UvG+C5YWMzCqk9zZI/c47uAzOK6XEo/xRw==
From: Frieder Schrempf <frieder@fris.de>
To: Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	Frieder Schrempf <frieder.schrempf@kontron.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Rob Herring <robh+dt@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>,
	Fabio Estevam <festevam@gmail.com>,
	Gregor Herburger <gregor.herburger@ew.tq-group.com>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Marcel Ziswiler <marcel.ziswiler@toradex.com>,
	Marek Vasut <marex@denx.de>,
	NXP Linux Team <linux-imx@nxp.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Philippe Schenker <philippe.schenker@toradex.com>,
	Tim Harvey <tharvey@gateworks.com>
Subject: [PATCH 00/14] arm64: dts: imx8mm-kontron: DT updates
Date: Tue, 31 Oct 2023 21:37:37 +0100
Message-ID: <20231031203836.3888404-1-frieder@fris.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.3

From: Frieder Schrempf <frieder.schrempf@kontron.de>

This patchset contains several improvements and updates for the devicetrees
for the i.MX8MM modules and boards by Kontron Electronics GmbH.

* HDMI/LVDS support for the BL/DL i.MX8MM
* Misc cleanups and small fixes
* OSM-S i.MX8MM module refactoring and update to latest HW revision

Frieder Schrempf (14):
  arm64: dts: imx8mm-kontron: Add support for display bridges on BL
    i.MX8MM
  arm64: dts: imx8mm-kontron: Add DL (Display-Line) overlay with LVDS
    support
  arm64: dts: imx8mm-kontron: Disable pullups for I2C signals on OSM-S
    i.MX8MM
  arm64: dts: imx8mm-kontron: Disable pullups for I2C signals on SL/BL
    i.MX8MM
  arm64: dts: imx8mm-kontron: Disable pullups for onboard UART signals
    on BL OSM-S board
  arm64: dts: imx8mm-kontron: Disable pullups for onboard UART signals
    on BL board
  arm64: dts: imx8mm-kontron: Disable pull resistors for SD card signals
    on BL OSM-S board
  arm64: dts: imx8mm-kontron: Disable pull resistors for SD card signals
    on BL board
  arm64: dts: imx8mm-kontron: Fix interrupt for RTC on OSM-S i.MX8MM
    module
  arm64: dts: imx8mm-kontron: Fix OSM-S devicetrees to match latest
    hardware
  arm64: dts: imx8mm-kontron: Disable uneffective PUE bit in SDIO IOMUX
  arm64: dts: imx8mm-kontron: Remove useless trickle-diode-disable from
    RTC node
  arm64: dts: imx8mm-kontron: Add I2C EEPROM on OSM-S Kontron i.MX8MM
  arm64: dts: imx8mm-kontron: Refactor devicetree for OSM-S module and
    board

 arch/arm64/boot/dts/freescale/Makefile        |   4 +
 .../dts/freescale/imx8mm-kontron-bl-osm-s.dts | 295 +++------
 .../boot/dts/freescale/imx8mm-kontron-bl.dts  | 187 +++++-
 .../boot/dts/freescale/imx8mm-kontron-dl.dtso | 197 ++++++
 .../dts/freescale/imx8mm-kontron-osm-s.dtsi   | 567 +++++++++++++++++-
 .../boot/dts/freescale/imx8mm-kontron-sl.dtsi |   4 +-
 6 files changed, 1020 insertions(+), 234 deletions(-)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mm-kontron-dl.dtso

-- 
2.42.0

