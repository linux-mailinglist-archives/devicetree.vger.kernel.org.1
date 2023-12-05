Return-Path: <devicetree+bounces-21890-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 92C68805837
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 16:08:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C145B1C21066
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 15:08:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0154B67E8A;
	Tue,  5 Dec 2023 15:08:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=hugovil.com header.i=@hugovil.com header.b="N6WaSUju"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.hugovil.com (mail.hugovil.com [162.243.120.170])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E9BC2BA;
	Tue,  5 Dec 2023 07:08:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=hugovil.com
	; s=x; h=Subject:Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Cc:To
	:From:subject:date:message-id:reply-to;
	bh=nUcGz6tzLg7tmWQvCSEkSr7yvcUq+dWHUV8K72rQrZA=; b=N6WaSUjuK2qBgEJrBHzzxWel64
	HbEjCCH9qA95ebpxJefEjGzxM7c0Nq4Z+H/iO7T4hHI0k3EllyrS8mAQbzAya1YhYPfv9fqVrGpFW
	JhL18XSiaYtdLNQa7aaS+bVvh2/jNBRE8qjA/1sfjOjFiHWpNtlfaB4HYvYXxCYk8IlM=;
Received: from modemcable168.174-80-70.mc.videotron.ca ([70.80.174.168]:34220 helo=pettiford.lan)
	by mail.hugovil.com with esmtpa (Exim 4.92)
	(envelope-from <hugo@hugovil.com>)
	id 1rAX21-00008q-K3; Tue, 05 Dec 2023 10:08:18 -0500
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
Date: Tue,  5 Dec 2023 10:08:11 -0500
Message-Id: <20231205150814.344883-1-hugo@hugovil.com>
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
Subject: [PATCH v5 0/3] board: imx8mn-rve-gateway: add support for RVE gateway board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on mail.hugovil.com)

From: Hugo Villeneuve <hvilleneuve@dimonoff.com>

Hello,
this patch series add support for the RVE gateway board.

Thank you.

Link: [v1] https://lore.kernel.org/all/20231101144303.2653464-1-hugo@hugovil.com/
           https://lore.kernel.org/all/20231101144057.2653271-1-hugo@hugovil.com/
      [v2] https://lore.kernel.org/all/20231101183549.2960083-1-hugo@hugovil.com/
      [v3] https://lore.kernel.org/all/20231102193121.1676000-1-hugo@hugovil.com/
      [v4] https://lore.kernel.org/all/20231103142831.2116163-1-hugo@hugovil.com/

Changes for V2:
- Combine separate patches as a series. Start series at 2 to avoid confusion.

Changes for V3:
- Fix coding style / indentation
- Change vmmc supply for usdhc2 node
- Disable uart2 node instead of removing it.
- Remove MAINTAINERS board entry
- Add SOM compatible string
- Drop some status = "okay"

Changes for V4:
- Fix dtbs_check warning for compatible string "rve,rve-gateway"
  (remove acked by tag because of that change)

Changes for V5:
- Fix indentation for gpio-line-names
- Add Krzysztof "Reviewed-by" tag for patch 2

Hugo Villeneuve (3):
  dt-bindings: vendor-prefixes: add rve
  dt-bindings: arm: fsl: add RVE gateway board
  arm64: dts: freescale: introduce rve-gateway board

 .../devicetree/bindings/arm/fsl.yaml          |   4 +-
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 arch/arm64/boot/dts/freescale/Makefile        |   1 +
 .../boot/dts/freescale/imx8mn-rve-gateway.dts | 285 ++++++++++++++++++
 4 files changed, 291 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mn-rve-gateway.dts


base-commit: bee0e7762ad2c6025b9f5245c040fcc36ef2bde8
-- 
2.39.2


