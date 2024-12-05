Return-Path: <devicetree+bounces-127274-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CA8469E50C3
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 10:10:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 60F0A2894CE
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 09:10:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 09A09202C25;
	Thu,  5 Dec 2024 09:06:30 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F14A1D89F7
	for <devicetree@vger.kernel.org>; Thu,  5 Dec 2024 09:06:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733389589; cv=none; b=gfaiFBQpbzZ+118fmTNV3D9DVegpMu0O8+qEjfo3ab9Qpf6hYrj1+93XvOt5M3IN5zH96j/K7CT2T22tdDbti74AIHeTGReF8nZ3FgnW810yIbQDdIpK4kG7hjNENPywYUCDkpjiZ67nu/cNNRI4CZVdG1vWxUhJMJqSi0Su8vk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733389589; c=relaxed/simple;
	bh=BrjZih4Ol/B/N7HxsWl8g5R6vYxxpRcHt620HszKJVU=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=gEIowhVAmKfIT0TR7VOxTJs2Mq0SB/vjZBbv6FzDJ6dRGbRbRUonutwD8vhua14cs1tEi6suhIwKgMDtJz7uMyoJVsYbuwsp29MFcpYEcKYOM66xN+WzBvxzIwqJiQiKX9kQHkFdaKXKehyiR0CM6WGP9YEgM2yTBl4S/+QMSoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1tJ7oQ-0004Ks-Ji; Thu, 05 Dec 2024 10:06:18 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Subject: [PATCH v3 0/6] ARM64: dts: intel: agilex5: add nodes and new board
Date: Thu, 05 Dec 2024 10:06:00 +0100
Message-Id: <20241205-v6-12-topic-socfpga-agilex5-v3-0-2a8cdf73f50a@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAPhsUWcC/43NQQ6CMBCF4auQrh3TDlDAlfcwLqAMMImhpMUGQ
 7i7hY0LE+Pyf4vvrcKTY/LikqzCUWDPdoyRnhJhhnrsCbiNLVBipmQqIWhQCLOd2IC3ppv6Guq
 eH7TkUMmuTduyq0ppRBQmRx0vh367xx7Yz9a9jrOg9vU/NyiQ0GCji6KUpCVdJxr75+zsyMu5J
 bHjAT+gwvw3iBEsdYa5JmOKBr/Abdve+EgsIxwBAAA=
X-Change-ID: 20241030-v6-12-topic-socfpga-agilex5-90fd3d8f980c
To: Dinh Nguyen <dinguyen@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Richard Cochran <richardcochran@gmail.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 netdev@vger.kernel.org, linux-clk@vger.kernel.org, kernel@pengutronix.de, 
 Steffen Trumtrar <s.trumtrar@pengutronix.de>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: s.trumtrar@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

This series adds the gpio0 and gmac nodes to the socfpga_agilex5.dtsi.
As the the socfpga-dwmac binding is still in txt format, convert it to
yaml, to pass dtb_checks.

An initial devicetree for a new board (Arrow AXE5-Eagle) is also added.
Currently only QSPI and network are functional as all other hardware
currently lacks mainline support.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
Changes in v3:
- add socfpga-stmmac-agilex5 compatible
- convert socfpga-dwmac.txt -> yaml
- add Acked-bys
- rebase to v6.13-rc1
- Link to v2: https://lore.kernel.org/r/20241125-v6-12-topic-socfpga-agilex5-v2-0-864256ecc7b2@pengutronix.de

Changes in v2:
- fix node names according to dtb_check
- remove gpio 'status = disabled'
- mdio0: remove setting of adi,[rt]x-internal-delay-ps. 2000 is the
  default value
- add Acked-by to dt-binding
- Link to v1: https://lore.kernel.org/r/20241030-v6-12-topic-socfpga-agilex5-v1-0-b2b67780e60e@pengutronix.de

---
Steffen Trumtrar (6):
      dt-bindings: net: dwmac: Convert socfpga dwmac to DT schema
      dt-bindings: net: dwmac: add compatible for Agilex5
      arm64: dts: agilex5: add gmac nodes
      arm64: dts: agilex5: add gpio0
      dt-bindings: intel: add agilex5-based Arrow AXE5-Eagle
      arm64: dts: agilex5: initial support for Arrow AXE5-Eagle

 .../devicetree/bindings/arm/intel,socfpga.yaml     |   1 +
 .../devicetree/bindings/net/socfpga-dwmac.txt      |  57 ---------
 .../devicetree/bindings/net/socfpga-dwmac.yaml     | 126 +++++++++++++++++++
 arch/arm64/boot/dts/intel/Makefile                 |   1 +
 arch/arm64/boot/dts/intel/socfpga_agilex5.dtsi     | 109 ++++++++++++++++
 .../boot/dts/intel/socfpga_agilex5_axe5_eagle.dts  | 140 +++++++++++++++++++++
 6 files changed, 377 insertions(+), 57 deletions(-)
---
base-commit: 40384c840ea1944d7c5a392e8975ed088ecf0b37
change-id: 20241030-v6-12-topic-socfpga-agilex5-90fd3d8f980c

Best regards,
-- 
Steffen Trumtrar <s.trumtrar@pengutronix.de>


