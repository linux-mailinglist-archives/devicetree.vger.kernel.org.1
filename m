Return-Path: <devicetree+bounces-18251-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 20ECD7F5DCF
	for <lists+devicetree@lfdr.de>; Thu, 23 Nov 2023 12:28:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B55ADB21240
	for <lists+devicetree@lfdr.de>; Thu, 23 Nov 2023 11:28:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 13C2222F1A;
	Thu, 23 Nov 2023 11:28:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from mail11.truemail.it (mail11.truemail.it [217.194.8.81])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BF3BED8;
	Thu, 23 Nov 2023 03:28:36 -0800 (PST)
Received: from francesco-nb.pivistrello.it (93-49-2-63.ip317.fastwebnet.it [93.49.2.63])
	by mail11.truemail.it (Postfix) with ESMTPA id E990B1F8DC;
	Thu, 23 Nov 2023 12:28:34 +0100 (CET)
From: Francesco Dolcini <francesco@dolcini.it>
To: Nishanth Menon <nm@ti.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Francesco Dolcini <francesco.dolcini@toradex.com>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 0/3] arm64: dts: ti: add verdin am62 mallow board
Date: Thu, 23 Nov 2023 12:28:23 +0100
Message-Id: <20231123112826.16549-1-francesco@dolcini.it>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Francesco Dolcini <francesco.dolcini@toradex.com>

Add Toradex Verdin AM62 Mallow carrier board support. Mallow is a
low-cost carrier board in the Verdin family with a small form factor and
build for volume production making it ideal for industrial and embedded
applications.

https://www.toradex.com/products/carrier-board/mallow-carrier-board

Joao Paulo Goncalves (3):
  arm64: dts: ti: verdin-am62: improve spi1 chip-select pinctrl
  dt-bindings: arm: ti: add verdin am62 mallow board
  arm64: dts: ti: add verdin am62 mallow board

 .../devicetree/bindings/arm/ti/k3.yaml        |   2 +
 arch/arm64/boot/dts/ti/Makefile               |   2 +
 .../boot/dts/ti/k3-am62-verdin-mallow.dtsi    | 198 ++++++++++++++++++
 arch/arm64/boot/dts/ti/k3-am62-verdin.dtsi    |  17 +-
 .../dts/ti/k3-am625-verdin-nonwifi-mallow.dts |  22 ++
 .../dts/ti/k3-am625-verdin-wifi-mallow.dts    |  22 ++
 6 files changed, 261 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm64/boot/dts/ti/k3-am62-verdin-mallow.dtsi
 create mode 100644 arch/arm64/boot/dts/ti/k3-am625-verdin-nonwifi-mallow.dts
 create mode 100644 arch/arm64/boot/dts/ti/k3-am625-verdin-wifi-mallow.dts

-- 
2.25.1


