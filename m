Return-Path: <devicetree+bounces-8001-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B3027C6694
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 09:42:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8BEA01C20CFE
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 07:42:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 762EE10780;
	Thu, 12 Oct 2023 07:42:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b="nTNn8JOK"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03BAC101C1
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 07:42:40 +0000 (UTC)
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4CB5CEA
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 00:42:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1697096558; x=1728632558;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=EKrWY4pHcxLXOIeN8aelAKt+gAWUlaLiyCFHvmy41t8=;
  b=nTNn8JOKwmRVpGohIq5BNlwcjzj9zQuvYBelLKfxpcR8+UNO7wwlOmbr
   eleWD5DS+TmikO+vgacCqi9AmHv2Ybak9xrNfLLj6nk9L349W2JROpeDV
   kgQBAvhZAumo33fIxdBsyA2Y6fVIceo1dw4yVjyLMu+YQ1wGZ8AwzMyYA
   dDfZUMqgqmRuHkj6iiHV13ZC7w+caPoSCzADUdBqmN8TazaNSAIIOAm6i
   t67r5wG/CYOBmdYC8JIbvBfIN1AxQWufyTY8RsMoVXoBFCkgoD0UHk8jP
   vLLOxfwlfr+maJK+0wVxmv3adHQnjfmZr6o3mt6KaVmOtLc3XZaRl5S5I
   A==;
X-IronPort-AV: E=Sophos;i="6.03,218,1694728800"; 
   d="scan'208";a="33421874"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 12 Oct 2023 09:42:36 +0200
Received: from steina-w.tq-net.de (steina-w.tq-net.de [10.123.53.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 6F744280082;
	Thu, 12 Oct 2023 09:42:36 +0200 (CEST)
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
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 0/2] TQMa93xxCA/LA + MBa93xxCA support
Date: Thu, 12 Oct 2023 09:42:34 +0200
Message-Id: <20231012074236.2708881-1-alexander.stein@ew.tq-group.com>
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

Hi everyone,

this is the second series which adds support for TQMa93xxCA/LA modules on
MBa93xxCA carrier board.
The solder type module TQMa93xxLA can be attached on the pluggable carrier
board using an adapter.
Patch 1 of v1 has already been applied as commit 997a3e24dcc12 ("arm64:
dts: freescale: tqma9352: Fix gpio hog").
So there is only one small fixes for the TQMa93xx series left.
Note: Only MBa93xxCA Rev0200 is supported!

Changes in v2:
* Rebased to next-20231012
* Removed doubled 0 of GPIO number
* Moved lpspi6grp to the appropriate location so pinctrl entries are sorted

Best regards,
Alexander



Alexander Stein (2):
  arm64: dts: freescale: tqma9352-mba93xxla: add 'chassis-type' property
  arm64: dts: freescale: add initial device tree for MBa93xxCA starter
    kit

 arch/arm64/boot/dts/freescale/Makefile        |   1 +
 .../freescale/imx93-tqma9352-mba93xxca.dts    | 709 ++++++++++++++++++
 .../freescale/imx93-tqma9352-mba93xxla.dts    |   1 +
 3 files changed, 711 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx93-tqma9352-mba93xxca.dts

-- 
2.34.1


