Return-Path: <devicetree+bounces-8029-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 114C07C6793
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 10:31:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 426BA1C20E7A
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 08:31:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 79C03D533;
	Thu, 12 Oct 2023 08:31:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b="lsWZVj5X"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E504E1A292
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 08:31:27 +0000 (UTC)
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6D16B91;
	Thu, 12 Oct 2023 01:31:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1697099485; x=1728635485;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=annNMPKhKuxfgD9AX+6CdDKWsjBnFe8TKZvClcTuvys=;
  b=lsWZVj5XWEAc4Vdd65hlYMOehaplVEFvm6FM/F1dPc0E0XSnomvczAOA
   VP5xJ+iHanVSJbFKLBzCXi7CfEKldbPyjZHDoJj99lb2qFCtx5gmIoUBj
   GTNjIOHeuxBrs3xJYHkKMIXkZm0thkdpzuQj8Z68m4Yox9suPXy2J/2ft
   8H5kyipTW60PDfm3e/w3ShI9cU50lGECfCVwo7ItRGkMmscLKcpt7XyiP
   2bys09F1HgO0bl8IAHY5S0mo0w/yvYfdEs8r1/u9tx7OqxrBA2eTHC7jT
   IQOpRlWw0qQy7IwgKcCh5F0IPW+5y+hB1wbfiE2tUXo/LsOpVHqBAYj6F
   Q==;
X-IronPort-AV: E=Sophos;i="6.03,218,1694728800"; 
   d="scan'208";a="33423940"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 12 Oct 2023 10:31:23 +0200
Received: from steina-w.tq-net.de (steina-w.tq-net.de [10.123.53.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 508B7280082;
	Thu, 12 Oct 2023 10:31:23 +0200 (CEST)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Abel Vesa <abelvesa@kernel.org>,
	Peng Fan <peng.fan@nxp.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	NXP Linux Team <linux-imx@nxp.com>,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 0/3] imx8m: Add CCM interrupts
Date: Thu, 12 Oct 2023 10:31:20 +0200
Message-Id: <20231012083123.2729494-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi,

this is v2 of the series adding i.MX8M CCM interrupts to SoC-DT.
Patch 1 of v2 has already been applied in commit 6e6bb1639136f
("dt-bindings: clock: imx8m: Add missing interrupt property").

It's worth mentioning that these interrupts are mentioned in RM, but are
currently unused by the CCM driver.

Changes in v2:
* Rebased to next-20231012

Thanks,
Alexander

Alexander Stein (3):
  arm64: dts: imx8mp: Add CCM interrupts
  arm64: dts: imx8mn: Add CCM interrupts
  arm64: dts: imx8mm: Add CCM interrupts

 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 2 ++
 arch/arm64/boot/dts/freescale/imx8mn.dtsi | 2 ++
 arch/arm64/boot/dts/freescale/imx8mp.dtsi | 2 ++
 3 files changed, 6 insertions(+)

-- 
2.34.1


