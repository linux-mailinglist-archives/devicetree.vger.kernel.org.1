Return-Path: <devicetree+bounces-20798-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 79381800EAF
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 16:39:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A5B731C20949
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 15:39:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C096B4AF85;
	Fri,  1 Dec 2023 15:39:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail11.truemail.it (mail11.truemail.it [IPv6:2001:4b7e:0:8::81])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 765B61A6;
	Fri,  1 Dec 2023 07:39:35 -0800 (PST)
Received: from francesco-nb.pivistrello.it (93-49-2-63.ip317.fastwebnet.it [93.49.2.63])
	by mail11.truemail.it (Postfix) with ESMTPA id 8824B20A0E;
	Fri,  1 Dec 2023 16:39:33 +0100 (CET)
From: Francesco Dolcini <francesco@dolcini.it>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>,
	Li Yang <leoyang.li@nxp.com>
Cc: Francesco Dolcini <francesco.dolcini@toradex.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 0/2] arm64: dts: freescale: verdin-imx8mp: add support to mallow board
Date: Fri,  1 Dec 2023 16:39:27 +0100
Message-Id: <20231201153929.26590-1-francesco@dolcini.it>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Francesco Dolcini <francesco.dolcini@toradex.com>

Add Toradex Verdin IMX8MP Mallow carrier board support. Mallow is a
low-cost carrier board in the Verdin family with a small form factor and
build for volume production making it ideal for industrial and embedded
applications.

https://www.toradex.com/products/carrier-board/mallow-carrier-board

v1:
 - https://lore.kernel.org/all/20231129164022.143340-1-francesco@dolcini.it/
v2:
 - remove dt nodes: eeprom_display_adapter, hwmon
 - add Acked-by: Krzysztof
 - correct hwmon_temp node compatible to "ti,tmp1075"

Joao Paulo Goncalves (2):
  dt-bindings: arm: fsl: add verdin imx8mp mallow board
  arm64: dts: freescale: verdin-imx8mp: add support to mallow board

 .../devicetree/bindings/arm/fsl.yaml          |   2 +
 arch/arm64/boot/dts/freescale/Makefile        |   2 +
 .../dts/freescale/imx8mp-verdin-mallow.dtsi   | 199 ++++++++++++++++++
 .../imx8mp-verdin-nonwifi-mallow.dts          |  18 ++
 .../freescale/imx8mp-verdin-wifi-mallow.dts   |  18 ++
 5 files changed, 239 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-verdin-mallow.dtsi
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-verdin-nonwifi-mallow.dts
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-verdin-wifi-mallow.dts

-- 
2.25.1


