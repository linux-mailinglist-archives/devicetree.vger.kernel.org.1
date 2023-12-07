Return-Path: <devicetree+bounces-22777-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 57006808B61
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 16:05:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 876431C20B6B
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 15:05:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DAE1444395;
	Thu,  7 Dec 2023 15:05:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=hugovil.com header.i=@hugovil.com header.b="gTaN9ieO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.hugovil.com (mail.hugovil.com [162.243.120.170])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1F76B19A;
	Thu,  7 Dec 2023 07:05:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=hugovil.com
	; s=x; h=Subject:Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Cc:To
	:From:subject:date:message-id:reply-to;
	bh=uxFGHxakStf7yH8nRFVFur6OexrjKQWIh4WIBrE+e5k=; b=gTaN9ieOG+xb95+U9xzUBuF6hX
	7+KoPz3qKcNPWhY3HULkwaYfvqom/gjFOf9nUCB4W97ZYs+JUpnoEnIltMYW+druhljkAxtYh5D9Z
	okJYobKeWW8INde9Tz+C/QwwMR7EP1QDgOTUGAqvkwh/bkFb/hU8o6jt9l3w1GE8E4m8=;
Received: from modemcable168.174-80-70.mc.videotron.ca ([70.80.174.168]:59044 helo=pettiford.lan)
	by mail.hugovil.com with esmtpa (Exim 4.92)
	(envelope-from <hugo@hugovil.com>)
	id 1rBFwI-0006Zh-2x; Thu, 07 Dec 2023 10:05:22 -0500
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
Date: Thu,  7 Dec 2023 10:05:16 -0500
Message-Id: <20231207150519.1264808-1-hugo@hugovil.com>
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
Subject: [PATCH v2 0/3] board: imx8mn-dimonoff-gateway-evk: add support for Dimonoff gateway EVK board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on mail.hugovil.com)

From: Hugo Villeneuve <hvilleneuve@dimonoff.com>

Hello,
this patch series add support for the Dimonoff gateway EVK board.

Based on shawnguo/for-next branch.

Thank you.

Link: [v1] https://lore.kernel.org/all/20231206160303.33185-1-hugo@hugovil.com/

Changes for V2:
- Add Krzysztof Acked-by tag
- Wrap lines at 80 columns in dts
- Remove company name from compatible property

Hugo Villeneuve (3):
  dt-bindings: vendor-prefixes: add dimonoff
  dt-bindings: arm: fsl: add Dimonoff gateway EVK board
  arm64: dts: freescale: introduce dimonoff-gateway-evk board

 .../devicetree/bindings/arm/fsl.yaml          |   1 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 arch/arm64/boot/dts/freescale/Makefile        |   1 +
 .../freescale/imx8mn-dimonoff-gateway-evk.dts | 160 ++++++++++++++++++
 4 files changed, 164 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mn-dimonoff-gateway-evk.dts


base-commit: 8c3c7094bf5b965a6dfc74864838fa4954dcf1c9
-- 
2.39.2


