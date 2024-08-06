Return-Path: <devicetree+bounces-91437-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 224F69495BB
	for <lists+devicetree@lfdr.de>; Tue,  6 Aug 2024 18:41:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9712AB321B2
	for <lists+devicetree@lfdr.de>; Tue,  6 Aug 2024 16:07:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0608A3FBB3;
	Tue,  6 Aug 2024 16:07:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fris.de header.i=@fris.de header.b="KY90xx5s"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.fris.de (mail.fris.de [116.203.77.234])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1E1E2E414;
	Tue,  6 Aug 2024 16:07:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.77.234
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722960431; cv=none; b=WH5A+JoQ3gUNasHKxd/6sMJLsiTvx3l/ZuRDelB56iyhbFU/+vtwrAUojgro3ceNqqyFQ2i/WYq5QZgcfu0UD7Z5vPBFRVtfmWodXbG7vCyxslw2yXvWPclReU+sfhcSr+TNj+u3NYQBqIMRNXmq6oFAZb6G0+ljG7kApiBcW/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722960431; c=relaxed/simple;
	bh=1FQ3LjegoDnlAhkNQHHzSWeJ7LVvwRA5e/urLwMVrco=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=e1HrnC2zExf+ktLs/hVwv5qCgf4Hr6mrjBDQjTWG6I7QzjjLOFsu2dM/dNEVgLV4HKFJKz4NeswTKzkZPTQW6+EhRkxQDMaBl7kjgWDCgd9NFKdLZVai/192ZZW6xOaUOyR88K+NyjBlo9nny1A4Abu1M70M30cofWO8n2sh2dM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fris.de; spf=fail smtp.mailfrom=fris.de; dkim=pass (2048-bit key) header.d=fris.de header.i=@fris.de header.b=KY90xx5s; arc=none smtp.client-ip=116.203.77.234
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fris.de
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=fris.de
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id BF4BBBFB05;
	Tue,  6 Aug 2024 18:07:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fris.de; s=dkim;
	t=1722960427; h=from:subject:date:message-id:to:cc:mime-version:
	 content-transfer-encoding; bh=FoB6Tdx3LKAMF9L3+LsSYtSPwQuugctbgeePMvmfXEo=;
	b=KY90xx5swM4QYf0pUvj+LTOcvrvuU6Pwrh0Rvr+1Pyq2tYpEVtkK38xACMLymcnkBGbmcZ
	CgFo3wTyP2MoSMApN4qpjKHxv99ubbgHSXvsuup246a9p1PMWwgzZaEBVEMCYbweeKe+t6
	yemDJKxspVyKkEBuTn42zW7rrha7SSfYusiDNtBGlDXYmJAA/YUN5u99GxpLX75EBZzkVf
	mwR8vbPHm8n4zffctz6Obbqo4jrzI2nMHdnh4LNDeRTfGPJn5JGxh7pLfB5XFezORb9TvM
	v/8XYBPdWMm/mBorF8FxwHnR+5qE6Wiv9W+dkmdCIuNZ4yi7HDsLpFXcvqyqhg==
From: Frieder Schrempf <frieder@fris.de>
To: Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>
Cc: Frieder Schrempf <frieder.schrempf@kontron.de>,
	Alexander Stein <alexander.stein@ew.tq-group.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Conor Dooley <conor.dooley@microchip.com>,
	Fabio Estevam <festevam@gmail.com>,
	Francesco Dolcini <francesco.dolcini@toradex.com>,
	Gregor Herburger <gregor.herburger@ew.tq-group.com>,
	Hiago De Franco <hiago.franco@toradex.com>,
	Hugo Villeneuve <hvilleneuve@dimonoff.com>,
	Joao Paulo Goncalves <joao.goncalves@toradex.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Marco Felsch <m.felsch@pengutronix.de>,
	Mathieu Othacehe <m.othacehe@gmail.com>,
	Michael Walle <mwalle@kernel.org>,
	Parthiban Nallathambi <parthiban@linumiz.com>,
	Peng Fan <peng.fan@nxp.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>
Subject: [PATCH v4 0/2] Add support for Kontron OSM-S i.MX93 SoM and carrier  board
Date: Tue,  6 Aug 2024 18:02:40 +0200
Message-ID: <20240806160353.823785-1-frieder@fris.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.3

From: Frieder Schrempf <frieder.schrempf@kontron.de>

Patch 1: board DT bindings
Patch 2: add devicetrees

Changes for v4:
* Reorder enable-active-high property
* Add dedicated pinctrl settings for different SDHC speed modes
* Add SION bit for SDHC pinctrls as workaround for SoC erratum

Changes for v3:
* remove applied patches
* rebase onto v6.11-rc1

Changes for v2:
* remove applied patches 1 and 2
* add tags
* improvements suggested by Krzysztof (thanks!)
* add missing Makefile entry for DT

Frieder Schrempf (2):
  dt-bindings: arm: fsl: Add Kontron i.MX93 OSM-S based boards
  arm64: dts: Add support for Kontron i.MX93 OSM-S SoM and BL carrier
    board

 .../devicetree/bindings/arm/fsl.yaml          |   6 +
 arch/arm64/boot/dts/freescale/Makefile        |   1 +
 .../dts/freescale/imx93-kontron-bl-osm-s.dts  | 165 +++++
 .../dts/freescale/imx93-kontron-osm-s.dtsi    | 628 ++++++++++++++++++
 4 files changed, 800 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx93-kontron-bl-osm-s.dts
 create mode 100644 arch/arm64/boot/dts/freescale/imx93-kontron-osm-s.dtsi

-- 
2.45.2


