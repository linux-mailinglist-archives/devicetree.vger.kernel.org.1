Return-Path: <devicetree+bounces-20115-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EE607FDD64
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 17:40:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6AD2EB20EB0
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 16:40:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B0A19358AF;
	Wed, 29 Nov 2023 16:40:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from mail11.truemail.it (mail11.truemail.it [217.194.8.81])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6F9BD90;
	Wed, 29 Nov 2023 08:40:28 -0800 (PST)
Received: from francesco-nb.corp.toradex.com (31-10-206-125.static.upc.ch [31.10.206.125])
	by mail11.truemail.it (Postfix) with ESMTPA id 5E03221D82;
	Wed, 29 Nov 2023 17:40:26 +0100 (CET)
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
Subject: [PATCH v1 0/2] arm64: dts: freescale: verdin-imx8mp: add support to mallow board
Date: Wed, 29 Nov 2023 17:40:20 +0100
Message-Id: <20231129164022.143340-1-francesco@dolcini.it>
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

Joao Paulo Goncalves (2):
  dt-bindings: arm: fsl: add verdin imx8mp mallow board
  arm64: dts: freescale: verdin-imx8mp: add support to mallow board

 .../devicetree/bindings/arm/fsl.yaml          |   2 +
 arch/arm64/boot/dts/freescale/Makefile        |   2 +
 .../dts/freescale/imx8mp-verdin-mallow.dtsi   | 208 ++++++++++++++++++
 .../imx8mp-verdin-nonwifi-mallow.dts          |  18 ++
 .../freescale/imx8mp-verdin-wifi-mallow.dts   |  18 ++
 5 files changed, 248 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-verdin-mallow.dtsi
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-verdin-nonwifi-mallow.dts
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-verdin-wifi-mallow.dts

-- 
2.25.1


