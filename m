Return-Path: <devicetree+bounces-180520-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D93BBAC3E45
	for <lists+devicetree@lfdr.de>; Mon, 26 May 2025 13:03:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BC0403B9C8A
	for <lists+devicetree@lfdr.de>; Mon, 26 May 2025 11:03:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E2B61FDA89;
	Mon, 26 May 2025 11:03:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59D611FC7CB
	for <devicetree@vger.kernel.org>; Mon, 26 May 2025 11:02:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748257381; cv=none; b=Em7Y1btx/o5UaE9qp5yCXaXlI4hF2MH/1ekPVW1M6wHrO+LaQhrguHBhg9AqJFffCHhPvVdJ9/ZoNV+TiMXhTMSnCElG26W1J4WavGbztry9lCuigmf7VW1qbmwlA3PWlWyv4ksWlch31fn0iUrNzY1G9mnSUp1z5ZFVeEoEmtw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748257381; c=relaxed/simple;
	bh=Ldi1yVf2ldhjemlFYQtQ6NnLnOmR4yYHcpAsoMfrSX0=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=QxqZVa524Ih+lyOYyMbwsQUBKqaqsDgOMoco7YnwWDNRDeIRCWaPZZ0cVr/gQwweB+mZYmFCG5G/Gw1yrHymWptYDzZhrb5uN4KfdNwjf/4ALSO5s6LFL6Ebm6RsxSyJg1fDq62Nlt/Utf5Cn+GOaZRyDMaLoDSX4TZLrfP+Re8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1uJVbX-0000Pi-89; Mon, 26 May 2025 13:02:51 +0200
From: Fabian Pflug <f.pflug@pengutronix.de>
Subject: [PATCH v2 0/2] Add devicetree for NXP i.MX93 FRDM board
Date: Mon, 26 May 2025 13:02:34 +0200
Message-Id: <20250526-fpg-nxp-imx93-frdm-v2-0-e5ad0efaec33@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAEpKNGgC/33NQQ6DIBAF0KuYWXcaQGm0q96jcWFh0FmIBKyhM
 d691AN0+X7y/98hUWRKcK92iLRx4sUXqEsFZhr8SMi2GJRQWmhVowsj+hyQ59wVRTujNka2YpD
 ODh2UYojkOJ+jz7544rQu8XN+bPKX/p3bJArUze2lbN2oVutHID++17h4zldL0B/H8QV5ba4zu
 QAAAA==
X-Change-ID: 20250523-fpg-nxp-imx93-frdm-5cc180a1fda9
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
 Fabian Pflug <f.pflug@pengutronix.de>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Daniel Baluta <daniel.baluta@nxp.com>
X-Mailer: b4 0.14.2
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::5c
X-SA-Exim-Mail-From: f.pflug@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

I could not test all features of the board, therefore a lot of stuff is
omitted from the devicetree. but this is enough to have the board boot
via eMMC or SD-Card, debug via debug USB connector and have a network
connection.

The FRDM i.MX 93 development board is a low-cost and compact development
board featuring the i.MX93 applications processor.

It features:
- Dual Cortex-A55
- 2 GB LPDDR4X / LPDDR4
- 32 GB eMMC5.1
- MicroSD slot
- GbE RJ45 x 2
- USB2.0 1x Type C, 1x Type A

This file is based upon the one provided by nxp in their own kernel and
yocto meta layer for the device, but adapted for mainline.

Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
---
Changes in v2:
- 1/2: remove CAN node, as it has not been tested.
- 1/2: ran dt-format (Thanks Frank Li)
	But also reordered some nodes afterwards again to have
	regulator-min before regulator-max, have the pinmux at the end
	of the file, and have the regulator-name as the first node
	inside the regulators.
	Re-added comments, that were deleted.
- 1/2: changes subjet to ar64:dts (Thanks Fabio Estevan)
- 1/2: removed reg_vdd_12v (Tanks Fabio Estevan)
- 1/2: added aliases for rtc, emmc, serial (Thanks Fabio Estevan)
- reordered the series to have documentation before dts. (Thanks
  Krzystof Kozlowski)
- Link to v1: https://lore.kernel.org/r/20250523-fpg-nxp-imx93-frdm-v1-0-546b2d342855@pengutronix.de

---
Fabian Pflug (2):
      dt-bindings: arm: fsl: add i.MX93 11x11 FRDM board
      arm64: dts: freescale: add support for NXP i.MX93 FRDM

 Documentation/devicetree/bindings/arm/fsl.yaml     |   1 +
 arch/arm64/boot/dts/freescale/Makefile             |   1 +
 arch/arm64/boot/dts/freescale/imx93-11x11-frdm.dts | 613 +++++++++++++++++++++
 3 files changed, 615 insertions(+)
---
base-commit: 94305e83eccb3120c921cd3a015cd74731140bac
change-id: 20250523-fpg-nxp-imx93-frdm-5cc180a1fda9

Best regards,
-- 
Fabian Pflug <f.pflug@pengutronix.de>


