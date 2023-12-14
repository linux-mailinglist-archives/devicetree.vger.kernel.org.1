Return-Path: <devicetree+bounces-25408-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 356C98132F4
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 15:23:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4F7001C214D4
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 14:23:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 207F859E45;
	Thu, 14 Dec 2023 14:23:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b="EDTGYFD2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9FD2B9A;
	Thu, 14 Dec 2023 06:23:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1702563812; x=1734099812;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=mliULnIudaZ8Z9b/YiDFL3xTlsi8t7PxGhTU2deBEsE=;
  b=EDTGYFD240t6vYAyOjJkHAfvM0YGDctoeguWLLiqA5jEyHqJIyJFDPTM
   sg2zoxOtD+Ejge9rNcF79G0/b7W33cm/qjnFdm16FWj5I+z5hY42vIekp
   7NZlmQ3ARR5U45Kc0NlZcTM8BU1V586wHfCWtYJMbUAkQPF80R0Sgwlck
   OAj2a2+kOZnbpOsNkNeU0IM5EyZLrp/2RtYB8z3N/0HOgkM7exVTX0gbb
   lZYbjSS4q1a8a2i2Kx6hmUWv1qnFr41RpT11gn7X+v58WlyE5DidqARW9
   gOXjvS7Z7Jl5FEupAu6Thet+kKpJxfG5NDfETddDDdgAMZGU5RdhA6I5Y
   g==;
X-IronPort-AV: E=Sophos;i="6.04,275,1695679200"; 
   d="scan'208";a="34512084"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 14 Dec 2023 15:23:29 +0100
Received: from steina-w.tq-net.de (steina-w.tq-net.de [10.123.53.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 97268280075;
	Thu, 14 Dec 2023 15:23:29 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Marek Vasut <marex@denx.de>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	NXP Linux Team <linux-imx@nxp.com>,
	Li Yang <leoyang.li@nxp.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 0/4] TQMa8Xx (i.MX8QXP/i.MX8DXP) support
Date: Thu, 14 Dec 2023 15:23:23 +0100
Message-Id: <20231214142327.1962914-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi,

this series adds initial support for the TQ TQMa8Xx series, namely
TQMa8XQP (imx8qxp based) and TQMa8XDP (imx8dxp based).
The device tree is split into generic mba8xx.dtsi and tqma8xx.dtsi which
can be used for both imx8qxp and imx8dxp based hardware.

Changes in v2:
* Rebased to next-20231214
* Add imx8dxp support patch
* Collected Marco's and Conor's R-b
* Added support for TQMa8XDP as well
* Add PWM polarity to PWM consumer
* Add PWM pinctrl settings
* Rename ethphy node names
* Remove obsolete num-cs property for SPI nodes
* Add gpio-line-names for lsio_gpio3
* Add USB host support (usbotg3)
* Add eMMC pinctrl settings for 100 & 200 MHz
* Merged SPI pinctrl groups (SPI lines + CS)
* Enabled USB3 host related driver in defconfig
* Add TODO entries

Alexander Stein (4):
  arm64: dts: imx: add imx8dxp support
  dt-bindings: arm: add TQMa8Xx boards
  arm64: dts: freescale: add initial device tree for TQMa8Xx
  arm64: defconfig: Enable i.MX8QXP device drivers

 .../devicetree/bindings/arm/fsl.yaml          |  16 +
 arch/arm64/boot/dts/freescale/Makefile        |   2 +
 .../dts/freescale/imx8dxp-tqma8xdp-mba8xx.dts |  16 +
 .../boot/dts/freescale/imx8dxp-tqma8xdp.dtsi  |  24 +
 arch/arm64/boot/dts/freescale/imx8dxp.dtsi    |  24 +
 .../dts/freescale/imx8qxp-tqma8xqp-mba8xx.dts |  16 +
 .../boot/dts/freescale/imx8qxp-tqma8xqp.dtsi  |  14 +
 arch/arm64/boot/dts/freescale/mba8xx.dtsi     | 532 ++++++++++++++++++
 arch/arm64/boot/dts/freescale/tqma8xx.dtsi    | 265 +++++++++
 arch/arm64/configs/defconfig                  |   6 +
 10 files changed, 915 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8dxp-tqma8xdp-mba8xx.dts
 create mode 100644 arch/arm64/boot/dts/freescale/imx8dxp-tqma8xdp.dtsi
 create mode 100644 arch/arm64/boot/dts/freescale/imx8dxp.dtsi
 create mode 100644 arch/arm64/boot/dts/freescale/imx8qxp-tqma8xqp-mba8xx.dts
 create mode 100644 arch/arm64/boot/dts/freescale/imx8qxp-tqma8xqp.dtsi
 create mode 100644 arch/arm64/boot/dts/freescale/mba8xx.dtsi
 create mode 100644 arch/arm64/boot/dts/freescale/tqma8xx.dtsi

-- 
2.34.1


