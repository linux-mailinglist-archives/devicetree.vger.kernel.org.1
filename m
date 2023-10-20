Return-Path: <devicetree+bounces-10389-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9693B7D101E
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 15:00:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 356E5282531
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 13:00:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C3C7F1A72E;
	Fri, 20 Oct 2023 13:00:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b="fQMXD518"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 821BF1A29C
	for <devicetree@vger.kernel.org>; Fri, 20 Oct 2023 13:00:27 +0000 (UTC)
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4BEEED60;
	Fri, 20 Oct 2023 06:00:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1697806824; x=1729342824;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=TnyfARd24Yv/vqdYrIhsLpQv3L7sDR2LHiBp0Qosj6Y=;
  b=fQMXD518OKtnT67QILbxzGloZKL+kJkzL2XETgK2pHzHgdH4iG7yE/z9
   jBSsPaCaL8xFcAfKJafpmb6bkRu5Ppb0d+YJhoIyPBTHl2LTEE2wAEyWS
   WJq0w1csQawtC+zhl+Ujng+uMGQQkwg5LLeCqtiN37+bJE6uDOwcih/qJ
   9pRB1r6ynEqrVISKdzRfZYonGkC955s/CG0T80oNb5WYH7jh+I+KkA3VC
   0IKvMnEBfScNDI48vLbVMLiMEfoQfRst+vpyLilhvbL9vyHPdyzR/ew8t
   rFUWNIKEo1ONX+GGuYWiw3HwAWq4OGn5zsCKYRqlCY4pojtiwWUwQ/VYg
   w==;
X-IronPort-AV: E=Sophos;i="6.03,238,1694728800"; 
   d="scan'208";a="33575466"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 20 Oct 2023 15:00:21 +0200
Received: from steina-w.tq-net.de (steina-w.tq-net.de [10.123.53.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 77FB128007F;
	Fri, 20 Oct 2023 15:00:21 +0200 (CEST)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Abel Vesa <abelvesa@kernel.org>,
	Peng Fan <peng.fan@nxp.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Marek Vasut <marex@denx.de>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	NXP Linux Team <linux-imx@nxp.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux@ew.tq-group.com,
	linux-clk@vger.kernel.org,
	linux-pm@vger.kernel.org
Subject: [PATCH 0/5] TQMa93xxLA/MBa93xxLA LVDS support
Date: Fri, 20 Oct 2023 15:00:13 +0200
Message-Id: <20231020130019.665853-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi,

this series adds LVDS display support for TQMa93xxLA/MBa93xxLA.
It consists of two parts:
1. LVDS support for imx93
2. LVDS platform support for tqma9352-mba93xxla

Patch 1 is the imx93 equivalent of commit 9cb6d1b39a8f ("soc: imx:
  imx8m-blk-ctrl: Scan subnodes and bind drivers to them")
Patch 2 is the imx93 equivalent of commit 1cb0c87d27dc ("dt-bindings:
  soc: imx8mp-media-blk-ctrl: Add LDB subnode into schema and example")
Patch 3 is the imx93 equivalent of commit 94e6197dadc9 ("arm64: dts:
  imx8mp: Add LCDIF2 & LDB nodes")
Patch 4 adds a video PLL configuration for 477.4MHz
Patch 5 adds LVDS DT overlay for platform support

Patches 1-3 are self-contained from patches 4-5 and could be merged
independently.
Patch 4 is necessary to achieve a correct LVDS frequency supported by the
display.

Alexander Stein (5):
  soc: imx: imx93-blk-ctrl: Scan subnodes and bind drivers to them
  dt-bindings: soc: imx93-media-blk-ctrl: Add LDB subnode into schema
    and example
  arm64: dts: imx93: Add LCDIF & LDB nodes
  clk: imx: clk-fracn-gppll: Add 477.4MHz config for video pll
  arm64: dts: mba93xxla: Add LVDS overlay

 .../soc/imx/fsl,imx93-media-blk-ctrl.yaml     | 44 +++++++++++
 arch/arm64/boot/dts/freescale/Makefile        |  3 +
 ...3-tqma9352-mba93xxla-lvds-tm070jvhg33.dtso | 45 +++++++++++
 .../freescale/imx93-tqma9352-mba93xxla.dts    | 27 +++++++
 arch/arm64/boot/dts/freescale/imx93.dtsi      | 76 +++++++++++++++++++
 drivers/clk/imx/clk-fracn-gppll.c             |  1 +
 drivers/pmdomain/imx/imx93-blk-ctrl.c         |  7 ++
 7 files changed, 203 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx93-tqma9352-mba93xxla-lvds-tm070jvhg33.dtso

-- 
2.34.1


