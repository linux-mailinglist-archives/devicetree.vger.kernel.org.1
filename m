Return-Path: <devicetree+bounces-243723-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A35BC9BA6C
	for <lists+devicetree@lfdr.de>; Tue, 02 Dec 2025 14:45:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id BBA294E3643
	for <lists+devicetree@lfdr.de>; Tue,  2 Dec 2025 13:45:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A3F2B318133;
	Tue,  2 Dec 2025 13:45:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36002280327
	for <devicetree@vger.kernel.org>; Tue,  2 Dec 2025 13:45:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764683151; cv=none; b=mhuKBefQpMb8wv/dyu/oHyDGsfSXnZuudijrQWiKJ62yhzvY5D5/Z7HJMqR7MwH4o6aV+TZG/RXR9N/acC4it/lIGmI8vcQ8QNYNw21xDh0mxYtKwlZTMEcGlR/GgZurB4HPAwJ4e+0rFWZooDkWb9kXkNrHaCHJE0D1ATBXz3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764683151; c=relaxed/simple;
	bh=r7NBeEMuLbT8jlDfBz3Tfe2l7yJ1hcITmL2i+MsedNk=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=ECXo/vrceDgy2oC1891hLwmY2PBYCDXK7S4kwyjj7c1wt54kGF5rRFPB4bxwUDYBAY7R3V0SaLrpKnmZdILq4IKCuRgCtcnNThIMjUCVfxbBYjBpT8lmA+hMr/b0XAYkyt/PfR9MRsMTzMsfc6ejRqfxs63D79QL8INtP5iSVDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1vQQgZ-0006jO-Fr; Tue, 02 Dec 2025 14:44:55 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
Subject: [PATCH 0/2] i.MX93 phyBOARD-Segin DisplayKit AV-02 Support
Date: Tue, 02 Dec 2025 14:44:52 +0100
Message-Id: <20251202-v6-18-topic-imx93-phyboard-segin-av-02-display-v1-0-9c14be6c7478@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAFTtLmkC/x2N0QrCMAxFf2Xk2YCZc05/RXzI2mwLaFsaKRtj/
 27x5cCBw707mGQVg0ezQ5aipjFUoVMDbuEwC6qvDu25vVIFlh5pwG9M6lA/6/2CadnGyNmjyaw
 BuWDNvFp684aO+uHGTM5NHdTRlGXS9X/4fB3HD48t566AAAAA
X-Change-ID: 20251202-v6-18-topic-imx93-phyboard-segin-av-02-display-c1687aa1ccf4
To: Abel Vesa <abelvesa@kernel.org>, Peng Fan <peng.fan@nxp.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, andrej.picej@norik.com, 
 primoz.fiser@norik.com, c.hemp@phytec.de, s.mueller-klieser@phytec.de, 
 n.wesp@phytec.de, c.stoidner@phytec.de
Cc: linux-clk@vger.kernel.org, imx@lists.linux.dev, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, kernel@pengutronix.de, 
 Marco Felsch <m.felsch@pengutronix.de>
X-Mailer: b4 0.14.2
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::28
X-SA-Exim-Mail-From: m.felsch@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

Hi,

this small series add the support for the phyBOARD-Segin DisplayKit
AV-02 evaluation kit. This patchset depends on the following patchsets:

 - https://lore.kernel.org/linux-arm-kernel/20251202-v6-18-topic-imx93-blkctrl-v2-0-e73501034adc@pengutronix.de/
 - https://lore.kernel.org/linux-arm-kernel/20251202-v6-18-topic-imx93-parallel-display-v7-0-2cce31d64608@pengutronix.de/

My test setup was:
- phyCORE-i.MX93 +
- phyBOARD-Segin + 
- DisplayKit

and I used 'modeset -r' to validate the display output.

Regards,
 Marco

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
Andrej Picej (1):
      arm64: dts: imx93-phyboard-segin: Add peb-av-02 overlay

Marco Felsch (1):
      clk: imx: fracn-gppll: Add 332.60 MHz Support

 arch/arm64/boot/dts/freescale/Makefile             |   2 +
 .../freescale/imx93-phyboard-segin-peb-av-02.dtso  | 135 +++++++++++++++++++++
 drivers/clk/imx/clk-fracn-gppll.c                  |   1 +
 3 files changed, 138 insertions(+)
---
base-commit: 3a8660878839faadb4f1a6dd72c3179c1df56787
change-id: 20251202-v6-18-topic-imx93-phyboard-segin-av-02-display-c1687aa1ccf4

Best regards,
-- 
Marco Felsch <m.felsch@pengutronix.de>


