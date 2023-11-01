Return-Path: <devicetree+bounces-13500-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E5AE7DE5F2
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 19:22:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CFC0A1C20DF4
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 18:22:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A73218E16;
	Wed,  1 Nov 2023 18:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=hugovil.com header.i=@hugovil.com header.b="uVwsJv3t"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2595018023
	for <devicetree@vger.kernel.org>; Wed,  1 Nov 2023 18:22:20 +0000 (UTC)
Received: from mail.hugovil.com (mail.hugovil.com [162.243.120.170])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4D452DB;
	Wed,  1 Nov 2023 11:22:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=hugovil.com
	; s=x; h=Subject:Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Cc:To
	:From:subject:date:message-id:reply-to;
	bh=JPrvVeZ4WJpxhs/zACFVSRSZAXD8OIyWKpEcKjAp87c=; b=uVwsJv3t6f9XRdTGBUS41yY40T
	30rrBu0jSn9bfHf+J8eRpMIl1rKtxcsWF/OUoI/tMilNfYXaeN9MlWX40BOdk31CIsHUKAAC3ArzE
	UKV4RpxkPUmzKKt5RLQ6UggvlepwvMt6LGqvuK0siG1yw2BZE69l9sXTuxjRuaqLhi6M=;
Received: from modemcable168.174-80-70.mc.videotron.ca ([70.80.174.168]:57364 helo=pettiford.lan)
	by mail.hugovil.com with esmtpa (Exim 4.92)
	(envelope-from <hugo@hugovil.com>)
	id 1qyFqc-0000rC-Fa; Wed, 01 Nov 2023 14:21:51 -0400
From: Hugo Villeneuve <hugo@hugovil.com>
To: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	hvilleneuve@dimonoff.com,
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
	hugo@hugovil.com
Date: Wed,  1 Nov 2023 14:21:37 -0400
Message-Id: <20231101182140.2891578-1-hugo@hugovil.com>
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
Subject: [PATCH 0/3] board: imx8mn-rve-gateway: add support for RVE gateway board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on mail.hugovil.com)

From: Hugo Villeneuve <hvilleneuve@dimonoff.com>

Hello,
this patch series add support for the RVE gateway board.

Thank you.

Link: [v1] https://lore.kernel.org/all/20231101144303.2653464-1-hugo@hugovil.com/raw
           https://lore.kernel.org/all/20231101144057.2653271-1-hugo@hugovil.com/raw

Changes for V2:
- Combine separate patches as a series. Start series at 2 to avoid confusion.

Hugo Villeneuve (3):
  dt-bindings: vendor-prefixes: add rve
  dt-bindings: arm: fsl: add RVE gateway board
  arm64: dts: freescale: introduce rve-gateway board

 .../devicetree/bindings/arm/fsl.yaml          |   1 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 MAINTAINERS                                   |   7 +
 arch/arm64/boot/dts/freescale/Makefile        |   1 +
 .../boot/dts/freescale/imx8mn-rve-gateway.dts | 284 ++++++++++++++++++
 5 files changed, 295 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mn-rve-gateway.dts


base-commit: 8bc9e6515183935fa0cccaf67455c439afe4982b
-- 
2.39.2


