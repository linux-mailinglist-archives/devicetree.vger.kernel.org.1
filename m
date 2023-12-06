Return-Path: <devicetree+bounces-22401-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DDD380746E
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 17:03:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C70A61F210E5
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 16:03:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE6D946442;
	Wed,  6 Dec 2023 16:03:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=hugovil.com header.i=@hugovil.com header.b="ohnwL3fo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.hugovil.com (mail.hugovil.com [162.243.120.170])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 55775A3;
	Wed,  6 Dec 2023 08:03:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=hugovil.com
	; s=x; h=Subject:Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Cc:To
	:From:subject:date:message-id:reply-to;
	bh=xy6l32A4P7C8HtTGqNek/tlPpVvtIR1ErZkJn0NwVXI=; b=ohnwL3foo6faBhPOFnUB0JFQyp
	VbB97VyyFGnwg9fD8eFZDJmZqeCNJDLSSfJbRt6phVzDOkayZTQ/uj2OTzm59etcC5Yu7nlfYDOt3
	xeZssCb7T3bropSQuVTroy6I0Vwy+VNBUHTyDlvjiaznpnLrA+grrqD/h9jaXeT9b7Pg=;
Received: from modemcable168.174-80-70.mc.videotron.ca ([70.80.174.168]:39388 helo=pettiford.lan)
	by mail.hugovil.com with esmtpa (Exim 4.92)
	(envelope-from <hugo@hugovil.com>)
	id 1rAuMe-0005Bw-9Q; Wed, 06 Dec 2023 11:03:08 -0500
From: Hugo Villeneuve <hugo@hugovil.com>
To: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	shawnguo@kernel.org,
	s.hauer@pengutronix.de,
	kernel@pengutronix.de,
	festevam@gmail.com,
	linux-imx@nxp.com,
	leoyang.li@nxp.com,
	robh@kernel.org
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	hugo@hugovil.com,
	Hugo Villeneuve <hvilleneuve@dimonoff.com>
Date: Wed,  6 Dec 2023 11:03:00 -0500
Message-Id: <20231206160303.33185-1-hugo@hugovil.com>
X-Mailer: git-send-email 2.39.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 70.80.174.168
X-SA-Exim-Mail-From: hugo@hugovil.com
X-Spam-Level: 
Subject: [PATCH 0/3] board: imx8mn-dimonoff-gateway-evk: add support for Dimonoff gateway EVK board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on mail.hugovil.com)

From: Hugo Villeneuve <hvilleneuve@dimonoff.com>

Hello,
this patch series add support for the Dimonoff gateway EVK board.

Based on shawnguo/for-next branch.

Thank you.

Hugo Villeneuve (3):
  dt-bindings: vendor-prefixes: add dimonoff
  dt-bindings: arm: fsl: add Dimonoff gateway EVK board
  arm64: dts: freescale: introduce dimonoff-gateway-evk board

 .../devicetree/bindings/arm/fsl.yaml          |   1 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 arch/arm64/boot/dts/freescale/Makefile        |   1 +
 .../freescale/imx8mn-dimonoff-gateway-evk.dts | 159 ++++++++++++++++++
 4 files changed, 163 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mn-dimonoff-gateway-evk.dts


base-commit: 8c3c7094bf5b965a6dfc74864838fa4954dcf1c9
-- 
2.39.2


