Return-Path: <devicetree+bounces-13656-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FA067DFAE9
	for <lists+devicetree@lfdr.de>; Thu,  2 Nov 2023 20:31:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A91F81C20F69
	for <lists+devicetree@lfdr.de>; Thu,  2 Nov 2023 19:31:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9EBA02136A;
	Thu,  2 Nov 2023 19:31:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=hugovil.com header.i=@hugovil.com header.b="fALMgy1s"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A35028FA
	for <devicetree@vger.kernel.org>; Thu,  2 Nov 2023 19:31:43 +0000 (UTC)
Received: from mail.hugovil.com (mail.hugovil.com [162.243.120.170])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7A842E7;
	Thu,  2 Nov 2023 12:31:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=hugovil.com
	; s=x; h=Subject:Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Cc:To
	:From:subject:date:message-id:reply-to;
	bh=MMBoaFWvHyo5+Qwqx08k6Bz/JCRvP050Pf0KsFHli4Q=; b=fALMgy1syvvh+xxmUWxQp9t80L
	tISZ3BtlrZ5jbtrh7VnbRmJxO7qr1efiaffe9YAh1z1uhUGu/I70xgodQjbYkemiYIrQGNCIHLSnN
	ze0TjXa/cRhf45rCW9B3xd8y9ocS5ZmMn7xpFeWSl0JpKCpeF6yTrC71Tq4gHOwq7VaA=;
Received: from modemcable168.174-80-70.mc.videotron.ca ([70.80.174.168]:46024 helo=pettiford.lan)
	by mail.hugovil.com with esmtpa (Exim 4.92)
	(envelope-from <hugo@hugovil.com>)
	id 1qydPY-00042s-CR; Thu, 02 Nov 2023 15:31:29 -0400
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
Date: Thu,  2 Nov 2023 15:31:18 -0400
Message-Id: <20231102193121.1676000-1-hugo@hugovil.com>
X-Mailer: git-send-email 2.39.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 70.80.174.168
X-SA-Exim-Mail-From: hugo@hugovil.com
X-Spam-Level: 
Subject: [PATCH v3 0/3] board: imx8mn-rve-gateway: add support for RVE gateway board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on mail.hugovil.com)

From: Hugo Villeneuve <hvilleneuve@dimonoff.com>

Hello,
this patch series add support for the RVE gateway board.

Thank you.

Link: [v1] https://lore.kernel.org/all/20231101144303.2653464-1-hugo@hugovil.com/raw
           https://lore.kernel.org/all/20231101144057.2653271-1-hugo@hugovil.com/raw
      [v2] https://lore.kernel.org/all/20231101183549.2960083-1-hugo@hugovil.com/raw

Changes for V2:
- Combine separate patches as a series. Start series at 2 to avoid confusion.

Changes for V3:
- Fix coding style / indentation
- Change vmmc supply for usdhc2 node
- Disable uart2 node instead of removing it.
- Remove MAINTAINERS board entry
- Add SOM compatible string
- Drop some status = "okay"

Hugo Villeneuve (3):
  dt-bindings: vendor-prefixes: add rve
  dt-bindings: arm: fsl: add RVE gateway board
  arm64: dts: freescale: introduce rve-gateway board

 .../devicetree/bindings/arm/fsl.yaml          |   1 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 arch/arm64/boot/dts/freescale/Makefile        |   1 +
 .../boot/dts/freescale/imx8mn-rve-gateway.dts | 282 ++++++++++++++++++
 4 files changed, 286 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mn-rve-gateway.dts


base-commit: 4652b8e4f3ffa48c706ec334f048c217a7d9750d
-- 
2.39.2


