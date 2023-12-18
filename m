Return-Path: <devicetree+bounces-26568-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BDE9F816F8B
	for <lists+devicetree@lfdr.de>; Mon, 18 Dec 2023 14:06:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 68E95288EE5
	for <lists+devicetree@lfdr.de>; Mon, 18 Dec 2023 13:06:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E357F3A1D4;
	Mon, 18 Dec 2023 12:55:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b="QoJUrUrn"
X-Original-To: devicetree@vger.kernel.org
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71F043A1BD
	for <devicetree@vger.kernel.org>; Mon, 18 Dec 2023 12:55:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1702904102; x=1734440102;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=9xjrkKmqOG1ty0S71OhHpx/IKy8QWgddU+KiakHL7MA=;
  b=QoJUrUrnI1lRaGgDF21eHWQM6yPlaQBR6Z5ckh1IDNzyiiItGZs5Yc35
   doH4hEk9p6NQmf3qUg1GGq4bDjL+CErIE228evDz5kinCXwhHLvaEZq5q
   mJklqHW3E5aipxnTBUxzf521BHHasBN2wGBdWVwx11jNiUjfqct2Ujm0M
   x2sbZeZNcW9Rx5cKYJnFCOmMbRPD7Oq/4xMI8A4pwd+MqHu4pS/3V/t0j
   WBJlqkQ+VxMrtGli9YaX1pGwY99iB7XkbW6MvcGdQEwPb7jMVzq16p5TB
   RO65t0h4R7gR++67r8QgyDpEU2m0eesOJ//J5drd5hJ/GQRpVeaT8dUGA
   w==;
X-IronPort-AV: E=Sophos;i="6.04,285,1695679200"; 
   d="scan'208";a="34562687"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 18 Dec 2023 13:54:59 +0100
Received: from steina-w.tq-net.de (steina-w.tq-net.de [10.123.53.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id BA6C2280075;
	Mon, 18 Dec 2023 13:54:58 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	NXP Linux Team <linux-imx@nxp.com>,
	linux@ew.tq-group.com,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 00/23] TQMa7x/MBa7x DT fixes
Date: Mon, 18 Dec 2023 13:54:36 +0100
Message-Id: <20231218125459.2769733-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi,

this series fixes several issues on TQMa7x DT files in various aspects.
Probably most notabe one is disabling PCIe due to missing support for internal
PHY refclock.

Best regards,
Alexander

Alexander Stein (23):
  ARM: dts: imx7-tqma7/mba7: convert fsl,pins to uint32-matrix
  ARM: dts: imx7[d]-mba7: Move ethernet PHY reset into PHY node
  ARM: dts: imx7[d]-mba7: disable USB OC on USB host and USB OTG2
  ARM: dts: imx7[d]-mba7: disable PCIe interface
  ARM: dts: imx7[d]-mba7: hog Mini PCIe signals
  ARM: dts: imx7-mba7: Mark gpio-buttons as wakeup-source
  ARM: dts: imx7-mba7: Enable SNVS power key
  ARM: dts: imx7-mba7: Add RTC aliases
  ARM: dts: imx7-mba7: Add SPI1_SS0 as chip select 3
  ARM: dts: imx7-tqma7: Add i2c bus recovery
  ARM: dts: imx7-mba7: Add i2c bus recovery
  ARM: dts: imx7-tqma7: fix EEPROM compatible for SE97BTP
  ARM: dts: imx7-mba7: Fix iomuxc node names
  ARM: dts: imx7-tqma7: Fix iomuxc node names
  ARM: dts: imx7-mba7: restrict usdhc interface modes
  ARM: dts: imx7-tqma7: restrict usdhc interface modes
  ARM: dts: imx7-tqma7: remove superfluous status property
  ARM: dts: imx7-tqma7: mark system data eeprom as read-only
  ARM: dts: imx7-tqma7: rename node for SE97BTP
  ARM: dts: imx7d-mba7: Remove USB OTG related properties on USB node
  ARM: dts: imx7-tqma7: Add missing vcc supply to i2c eeproms
  ARM: dts: imx7-mba7: Add missing vcc supply to i2c devices
  ARM: dts: imx7-tqma7: Fix PMIC v33 rail voltage range

 arch/arm/boot/dts/nxp/imx/imx7-mba7.dtsi  | 325 ++++++++++++----------
 arch/arm/boot/dts/nxp/imx/imx7-tqma7.dtsi | 144 +++++-----
 arch/arm/boot/dts/nxp/imx/imx7d-mba7.dts  |  94 ++++---
 3 files changed, 312 insertions(+), 251 deletions(-)

-- 
2.34.1


