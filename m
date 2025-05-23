Return-Path: <devicetree+bounces-180095-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DED1AC296E
	for <lists+devicetree@lfdr.de>; Fri, 23 May 2025 20:17:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AD3C09E82AC
	for <lists+devicetree@lfdr.de>; Fri, 23 May 2025 18:17:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD4D2298CAA;
	Fri, 23 May 2025 18:17:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 205D6296FCE
	for <devicetree@vger.kernel.org>; Fri, 23 May 2025 18:17:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748024261; cv=none; b=W9qjU93x3BauenSdHsJCUPOGuSJcwjSHF/HFMjeCwQz7fujhSS9Mg7fMh61jiLihJQM0YYQVEgZ1Q4Vubpgk5Jiu6GRQRnWzRTSX7mt5sFy5IQdmuB1G1Rdk+hS+q594qAL3OJDKftLZqYPiO0j0JZL4mMny1+c+/NArTxwukw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748024261; c=relaxed/simple;
	bh=cmCMBWHTnNBgoUmIuYy5Z7k8QnZhvVGmqUyM3waEkyc=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=BplkX4JU5dKX4kHQRny7FYufy/CDJxcm6itDuG1TNpKPKroga4UGZYES5WRDeKElhhxJqGW+Qy1LgT2GHZCpX2tnp73Mo3B82QK/WhHcuOmSLBXBp1xUM1F1poBZQvrCrgOcTenU7A+BogZIujTczvv0K+p6QnOTcusKyBKL8sQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1uIWxU-0003Td-Kt; Fri, 23 May 2025 20:17:28 +0200
From: Fabian Pflug <f.pflug@pengutronix.de>
Subject: [PATCH 0/2] Add devicetree for NXP i.MX93 FRDM board
Date: Fri, 23 May 2025 20:16:47 +0200
Message-Id: <20250523-fpg-nxp-imx93-frdm-v1-0-546b2d342855@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAI+7MGgC/x3MQQqAIBBA0avErBtQQ6iuEi1ER5uFJgohhHdPW
 r7F/y9UKkwV9umFQg9XvtOAnCewl0mBkN0wKKG00GpBnwOmlpFj24aKi6itlasw0juzwQhzIc/
 tnx5n7x918YiKZAAAAA==
X-Change-ID: 20250523-fpg-nxp-imx93-frdm-5cc180a1fda9
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
 Fabian Pflug <f.pflug@pengutronix.de>
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
Fabian Pflug (2):
      ARM: dts: freescale: add support for NXP i.MX93 FRDM
      dt-bindings: arm: fsl: add i.MX93 11x11 FRDM board

 Documentation/devicetree/bindings/arm/fsl.yaml     |   1 +
 arch/arm64/boot/dts/freescale/Makefile             |   1 +
 arch/arm64/boot/dts/freescale/imx93-11x11-frdm.dts | 630 +++++++++++++++++++++
 3 files changed, 632 insertions(+)
---
base-commit: 94305e83eccb3120c921cd3a015cd74731140bac
change-id: 20250523-fpg-nxp-imx93-frdm-5cc180a1fda9

Best regards,
-- 
Fabian Pflug <f.pflug@pengutronix.de>


