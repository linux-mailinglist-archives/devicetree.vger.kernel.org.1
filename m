Return-Path: <devicetree+bounces-220641-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 57897B98E79
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 10:34:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E99D17A8386
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 08:33:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1003C2857DF;
	Wed, 24 Sep 2025 08:34:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80DE72820A0
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 08:34:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758702884; cv=none; b=F1F6HdlHTr6gdEJRrVfnAbI9Yxtw7sF0PoXwOIeGcA06/CUltLokyq5k5/afx5JQCdUBfm2x6DJTHz0o7DKaQp1a+jDeLkzUNe5csPuSUQtNBfhZqQndFpLIVNYFTCh8F/g0C5yuqz9xSyPa97HM5EpajBOPVHZvbkdIotXltjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758702884; c=relaxed/simple;
	bh=4wvx639RnwwdY8F0v2Vj37kcv/o6/9JmJ8NAhXnPjto=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=EidvpCHlFnloyO3RhmojrFPRecjVlxBFoXWoSuLkXtpuUkJdbeO5Bg/Vlm/UviNK+onbZfZg0H4b59DMm/dBIRLPWuM+4Z5j2Lgly5QSlt0B9dXW4f6r2p9CguHOIkwuPp5Td+XzXkR1o2WmBb0xtfsxi9548uJk54TW3BuELq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1v1KxR-0006Aj-7V; Wed, 24 Sep 2025 10:34:37 +0200
From: Jonas Rebmann <jre@pengutronix.de>
Subject: [PATCH v3 0/3] Mainline Protonic PRT8ML board
Date: Wed, 24 Sep 2025 10:34:11 +0200
Message-Id: <20250924-imx8mp-prt8ml-v3-0-f498d7f71a94@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAOt02gC/2XMSw6CMBSF4a2Qjq3pE4oj92EcgL3ATaSQFhsMY
 e8WnBgc/ic530ICeIRALtlCPEQMOLgU8pSRR1e5Fija1EQwoVnBOMV+Nv1IRz+Z/kkZr0Gq3Kh
 clyR9Rg8Nzrt3u6fuMEyDf+985Nv6lUrODlLklNHGMlWB5Tov2HUE174mPziczxbIxkXxS5gjI
 RIhrVG1akBLC3/Euq4f9TOPKPIAAAA=
X-Change-ID: 20250701-imx8mp-prt8ml-01be34684659
To: Andrew Lunn <andrew@lunn.ch>, Vladimir Oltean <olteanv@gmail.com>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>, 
 Mark Brown <broonie@kernel.org>, Shengjiu Wang <shengjiu.wang@nxp.com>, 
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>
Cc: Vladimir Oltean <vladimir.oltean@nxp.com>, netdev@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-sound@vger.kernel.org, imx@lists.linux.dev, 
 linux-arm-kernel@lists.infradead.org, Jonas Rebmann <jre@pengutronix.de>, 
 Frank Li <Frank.Li@nxp.com>, David Jander <david@protonic.nl>, 
 Lucas Stach <l.stach@pengutronix.de>, 
 Oleksij Rempel <o.rempel@pengutronix.de>
X-Mailer: b4 0.15-dev-7abec
X-Developer-Signature: v=1; a=openpgp-sha256; l=1535; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=4wvx639RnwwdY8F0v2Vj37kcv/o6/9JmJ8NAhXnPjto=;
 b=owGbwMvMwCV2ZcYT3onnbjcwnlZLYsi4vFba0Pk8n2Oeim+bwmwF888J55+v+JZt43defuPjP
 xVJK9vPdZSyMIhxMciKKbLEqskpCBn7XzertIuFmcPKBDKEgYtTACZyRZuRYatq8smImfserIta
 ZfJgl1Nu1Ed3uVcp6fbZmmuSFr3lrWD4XxLwSyzYVJll52yVTfz9Z6anX9m37HnaiWym0rPZ9tO
 rWQE=
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::ac
X-SA-Exim-Mail-From: jre@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

This series adds the Protonic PRT8ML device tree as well as some minor
corrections to the devicetree bindings used.

Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
Changes in v3:
- Add comment on the intentional limitation to 100Mbps RGMII
- Link to v2: https://lore.kernel.org/r/20250918-imx8mp-prt8ml-v2-0-3d84b4fe53de@pengutronix.de

Changes in v2:
- Dropped "ASoC: dt-bindings: asahi-kasei,ak4458: Reference common DAI
  properties", applied to broonie/sound for-next (Thanks, Mark)
- Updated description of the reset-gpios property in sja1105 binding to
  address the issues of connecting this pin to GPIO (Thanks, Vladimir)
- Added the fec, switch and phy for RJ45 onboard ethernet after
  successful testing
- Consistently use interrupts-extended
- Link to v1: https://lore.kernel.org/r/20250910-imx8mp-prt8ml-v1-0-fd04aed15670@pengutronix.de

---
Jonas Rebmann (3):
      dt-bindings: net: dsa: nxp,sja1105: Add reset-gpios property
      dt-bindings: arm: fsl: Add Protonic PRT8ML
      arm64: dts: add Protonic PRT8ML board

 Documentation/devicetree/bindings/arm/fsl.yaml     |   1 +
 .../devicetree/bindings/net/dsa/nxp,sja1105.yaml   |   9 +
 arch/arm64/boot/dts/freescale/Makefile             |   1 +
 arch/arm64/boot/dts/freescale/imx8mp-prt8ml.dts    | 501 +++++++++++++++++++++
 4 files changed, 512 insertions(+)
---
base-commit: ea21fa34164c9ea0a2a5b8714c7e36f54c7fb46e
change-id: 20250701-imx8mp-prt8ml-01be34684659

Best regards,
--  
Jonas Rebmann <jre@pengutronix.de>


