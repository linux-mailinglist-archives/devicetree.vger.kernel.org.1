Return-Path: <devicetree+bounces-17276-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 26E2C7F1E6D
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 21:58:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D5257282376
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 20:58:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D8FF9315B3;
	Mon, 20 Nov 2023 20:58:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from mail11.truemail.it (mail11.truemail.it [IPv6:2001:4b7e:0:8::81])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 65AF7CF;
	Mon, 20 Nov 2023 12:58:41 -0800 (PST)
Received: from francesco-nb.pivistrello.it (93-49-2-63.ip317.fastwebnet.it [93.49.2.63])
	by mail11.truemail.it (Postfix) with ESMTPA id CB8F72071A;
	Mon, 20 Nov 2023 21:58:36 +0100 (CET)
From: Francesco Dolcini <francesco@dolcini.it>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>
Cc: Francesco Dolcini <francesco.dolcini@toradex.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Hiago De Franco <hiago.franco@toradex.com>
Subject: [PATCH v1 0/3] ARM: dts: imx: Add mmc aliases to Toradex DTS
Date: Mon, 20 Nov 2023 21:58:15 +0100
Message-Id: <20231120205818.33120-1-francesco@dolcini.it>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Francesco Dolcini <francesco.dolcini@toradex.com>

Add mmc aliases to ensure a consistent mmc device naming across the
Toradex SoM family, with this commit mmc0 is the on-module eMMC
boot device and the not available mmc interfaces are removed.

Hiago De Franco (3):
  ARM: dts: imx6qdl-apalis: Add usdhc aliases
  ARM: dts: imx6qdl-colibri: Add usdhc aliases
  ARM: dts: imx7d-colibri-emmc: Add usdhc aliases

 arch/arm/boot/dts/nxp/imx/imx6qdl-apalis.dtsi     | 7 +++++++
 arch/arm/boot/dts/nxp/imx/imx6qdl-colibri.dtsi    | 7 +++++++
 arch/arm/boot/dts/nxp/imx/imx7d-colibri-emmc.dtsi | 4 ++++
 3 files changed, 18 insertions(+)

-- 
2.25.1


