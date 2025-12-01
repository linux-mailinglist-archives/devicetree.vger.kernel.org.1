Return-Path: <devicetree+bounces-243509-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 7578AC98764
	for <lists+devicetree@lfdr.de>; Mon, 01 Dec 2025 18:16:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id E345034480A
	for <lists+devicetree@lfdr.de>; Mon,  1 Dec 2025 17:16:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D34D6337B80;
	Mon,  1 Dec 2025 17:15:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C46B3375B9
	for <devicetree@vger.kernel.org>; Mon,  1 Dec 2025 17:15:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764609359; cv=none; b=kARliJGaBKSD/jJnELhYXBcQ+Iirlrqr78zg5kAZVqJESVoll3GY0+LephI4nmJ+uPMQnjqbRef+21sx3PQ8J+aNVVNXtp5L/1E77OrICkhgOLMcbUqJvztzsw8/q4NLlM7BKBH0gAHLw/SpXgu4YvhcE+/0xsR39DM2q6NXw/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764609359; c=relaxed/simple;
	bh=dPHueffEzGPPZcyl+tNZegios5NSbcB5CGGZ2wb9slw=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=MUm5vxxI5sE//huHWwo11UiavR1xGBjL6Lv8ksPsdCfON/1iIBHFgjwUF8ae5wtFXeiHt8mTSy+y6Gcut1ZMqUS2vZBNYk9vfOOF7fwzgm+BElSsyeDS8w8f5R3hKSBbos1KAa8x6Di/svVIaowLbhXbzxg5vfyEK17gWJfaXzw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1vQ7Uw-0003DM-Ii; Mon, 01 Dec 2025 18:15:38 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
Subject: [PATCH v6 0/3] Add i.MX91/93 parallel display support
Date: Mon, 01 Dec 2025 18:15:19 +0100
Message-Id: <20251201-v6-18-topic-imx93-parallel-display-v6-0-7b056e1e5b1e@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIACfNLWkC/x3NwQqEIBCA4VeJOTeQWpK9SnRwbdwGrEQjWqJ3T
 /b4Xf7/hkyJKcNQ3ZDo5Mz7VqDrCtxity8hz8UgG9kJ2Qg8NYoejz2yQ14vozDaZEOggDPnGOw
 PTeeNVO3Ha+eghGIiz9d/Mk7P8wIj4FDDdAAAAA==
X-Change-ID: 20251201-v6-18-topic-imx93-parallel-display-95f9234bf6cc
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, Peng Fan <peng.fan@nxp.com>, 
 Liu Ying <victor.liu@nxp.com>, Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>
Cc: devicetree@vger.kernel.org, imx@lists.linux.dev, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 dri-devel@lists.freedesktop.org, Marco Felsch <m.felsch@pengutronix.de>
X-Mailer: b4 0.14.2
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::28
X-SA-Exim-Mail-From: m.felsch@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

Hi,

this patchset adds the driver, dt-bindings and dt integration required
to drive a parallel display on the i.MX93.

Since the i.MX91 register layout equals the one from the i.MX93, I added
the support for both but tested only the i.MX93 use-case.

This patchset depends on:
 - https://lore.kernel.org/all/20251201-v6-18-topic-imx93-blkctrl-v1-0-b57a72e60105@pengutronix.de/

@Conor Dooley
I dropped your r-b tag since I added the 'bus-width' property.

Regards,
  Marco

Changelog:
v5:
- https://lore.kernel.org/all/20250304082434.834031-1-victor.liu@nxp.com/
- Add bus-width support
- rebase onto v6.18-rc1
- add review feedback (Alexander)
- driver license "GPL v2" -> "GPL" (checkpatch)
- make use of reg of-property
- fix to short Kconfig description (checkpath)
- add OF integration

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
Liu Ying (2):
      dt-bindings: soc: imx93-media-blk-ctrl: Add PDFC subnode to schema and example
      drm/bridge: imx: Add i.MX93 parallel display format configuration support

Marco Felsch (1):
      arm64: dts: imx93: Add parallel display output nodes

 .../bindings/soc/imx/fsl,imx93-media-blk-ctrl.yaml |  92 +++++++++
 arch/arm64/boot/dts/freescale/imx91_93_common.dtsi |  57 ++++++
 arch/arm64/boot/dts/freescale/imx93.dtsi           |  12 ++
 drivers/gpu/drm/bridge/imx/Kconfig                 |  11 +
 drivers/gpu/drm/bridge/imx/Makefile                |   1 +
 drivers/gpu/drm/bridge/imx/imx93-pdfc.c            | 225 +++++++++++++++++++++
 6 files changed, 398 insertions(+)
---
base-commit: 3a8660878839faadb4f1a6dd72c3179c1df56787
change-id: 20251201-v6-18-topic-imx93-parallel-display-95f9234bf6cc

Best regards,
-- 
Marco Felsch <m.felsch@pengutronix.de>


