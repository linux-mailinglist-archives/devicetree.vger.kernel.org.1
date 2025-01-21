Return-Path: <devicetree+bounces-140016-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DE279A17CC0
	for <lists+devicetree@lfdr.de>; Tue, 21 Jan 2025 12:14:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9DAAB1885D55
	for <lists+devicetree@lfdr.de>; Tue, 21 Jan 2025 11:14:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C65651F1505;
	Tue, 21 Jan 2025 11:14:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CB561F12F3
	for <devicetree@vger.kernel.org>; Tue, 21 Jan 2025 11:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737458065; cv=none; b=LJqPorMmmpNr90NksfKK/f2EDtvihdkRNUlJZ88VQeYOPImmcF31zesvT8/Lcj7aQ2Qk/HZF5/Yu+Pts7m/YMdlnmWiottLNu6romM7sk4A97plaU7iokKJIchD2C080krgP8DIlD0J2fiqXmtCZOPiQtHeG4DSgTT3v03Eu39A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737458065; c=relaxed/simple;
	bh=gLAGzHCTBArIbQ78yvJWJOpUrAVjiYKWUXHS22nGDvI=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=fvleupOYiwFrbww589x2c7ufyBrZZFS5PTZpXoIGyCiIGPLfL+q22C1NlgMNUwpp1PruVRyBzKm2lNXVyOsOYgSf1gXWxsgLBk6kMWx+w4koX0YllUsbLBXZtnb6/wMABakS+72MBheIjpfs1QlwJc4qYraff6fzB+T1Tv9EPY0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1taCD8-0000Ys-BO
	for devicetree@vger.kernel.org; Tue, 21 Jan 2025 12:14:22 +0100
Received: from moin.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::7b] helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mkl@pengutronix.de>)
	id 1taCD7-00169p-2X
	for devicetree@vger.kernel.org;
	Tue, 21 Jan 2025 12:14:21 +0100
Received: from dspam.blackshift.org (localhost [127.0.0.1])
	by bjornoya.blackshift.org (Postfix) with SMTP id 765EE3AD9CA
	for <devicetree@vger.kernel.org>; Tue, 21 Jan 2025 11:14:21 +0000 (UTC)
Received: from hardanger.blackshift.org (unknown [172.20.34.65])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by bjornoya.blackshift.org (Postfix) with ESMTPS id 6B8193AD9A6;
	Tue, 21 Jan 2025 11:14:18 +0000 (UTC)
Received: from [172.20.34.65] (localhost [::1])
	by hardanger.blackshift.org (OpenSMTPD) with ESMTP id 21fefb3e;
	Tue, 21 Jan 2025 11:14:17 +0000 (UTC)
From: Marc Kleine-Budde <mkl@pengutronix.de>
Subject: [PATCH stm32-next v3 0/2] ARM: dts: stm32: lxa-fairytux2: add
 gen{1,2} boards
Date: Tue, 21 Jan 2025 12:14:04 +0100
Message-Id: <20250121-lxa-fairytux-v3-0-8d42d7d232fb@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIAH2Bj2cC/23NTQ6CMBAF4KuQrq3pH0FceQ/jotIBJtFC2tKUE
 O5ubeJGXb7Mm+9txIND8ORcbcRBRI+TzUEeKtKN2g5A0eRMBBOKC87oI2naa3RrWBKFRrK2aY0
 0sif5ZXbQYyrclfjwlIJaSIHc8m1EHya3lqXIS+M/GjlltNWgGe/M/SThMoMdluAmi+looGhRf
 ISacfEtiLdQ90oz0Fop8yPs+/4Cfsy2Q/sAAAA=
X-Change-ID: 20241210-lxa-fairytux-e730979d3d3f
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>
Cc: kernel@pengutronix.de, devicetree@vger.kernel.org, 
 linux-stm32@st-md-mailman.stormreply.com, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Marc Kleine-Budde <mkl@pengutronix.de>, 
 =?utf-8?q?Leonard_G=C3=B6hrs?= <l.goehrs@pengutronix.de>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.15-dev-1b0d6
X-Developer-Signature: v=1; a=openpgp-sha256; l=1759; i=mkl@pengutronix.de;
 h=from:subject:message-id; bh=gLAGzHCTBArIbQ78yvJWJOpUrAVjiYKWUXHS22nGDvI=;
 b=owEBbQGS/pANAwAKASg4oj56LbxvAcsmYgBnj4F/deGvqvVVtXYvv0rwry5wbUPLKielpr2KH
 dvQPMDOmSyJATMEAAEKAB0WIQRQQLqG4LYE3Sm8Pl8oOKI+ei28bwUCZ4+BfwAKCRAoOKI+ei28
 b2NsB/4zlM2Qsoh2apcCOK537lddCEmvs86JylIVLspPQ71D+YNReCP9s5Mtz0kke/zhv/m37uo
 IkT/2YA2tlPgp/C0MHrMeCPoQdhzHnN3pZeYhZakMN556wLcviDsIdHsorjfyf2+jOoiT9zKqPj
 YalcIGcf4ARs6H7MmMV+6neee1CZCg4Y85tno7p5KQbM6siAS2JdbgvUPh9zrdOSh+HwbtfwdAY
 cNZPelfUtXFaRiA5NeOWpEqCQ4wxPNO9sVFdwTUpHggQfy09hDXnVU7znw94sp9m3uqXy+jhaxK
 ucwJOME+2T7ptVUIDCwsRQ0GWWVpABUHPrWuyDphsYkTRmHW
X-Developer-Key: i=mkl@pengutronix.de; a=openpgp;
 fpr=C1400BA0B3989E6FBC7D5B5C2B5EE211C58AEA54
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

Hello,

this series adds support for the Linux Automation GmbH FairyTux2
boards generation 1 and 2.

The FairyTux2 is a small Linux device based on an Octavo Systems
OSD32MP153c SiP, that occupies just two slots on a DIN rail.

regards,
Marc

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
Changes in v3:
- 2/2: fix use generic node names for external GPIO and USB Type-C controller (thanks Krzysztof)
- 2/2: LEDs: replace label by color and function property (thanks Krzysztof)
- 2/2: gen2: sort nodes of i2c1 by address (thanks Krzysztof)
- Link to v2: https://patch.msgid.link/20250120-lxa-fairytux-v2-0-95f4a0eaa44d@pengutronix.de

Changes in v2:
- 1/2: Added Krzysztof's Acked-by
- 2/2: fix alignment for gpio-line-names (thanks Krzysztof)
- 2/2: only use color:function for LED labels (thanks Krzysztof)
- 2/2: use generic node names for external GPIO and USB Type-C controller
- Link to v1: https://patch.msgid.link/20241210-lxa-fairytux-v1-0-9aea01cdb83e@pengutronix.de

---
Leonard Göhrs (2):
      dt-bindings: arm: stm32: add compatible strings for Linux Automation GmbH LXA FairyTux 2
      ARM: dts: stm32: lxa-fairytux2: add Linux Automation GmbH FairyTux 2

 .../devicetree/bindings/arm/stm32/stm32.yaml       |   2 +
 arch/arm/boot/dts/st/Makefile                      |   2 +
 .../boot/dts/st/stm32mp153c-lxa-fairytux2-gen1.dts | 103 ++++++
 .../boot/dts/st/stm32mp153c-lxa-fairytux2-gen2.dts | 147 ++++++++
 .../arm/boot/dts/st/stm32mp153c-lxa-fairytux2.dtsi | 397 +++++++++++++++++++++
 5 files changed, 651 insertions(+)
---
base-commit: b7ebfb84a09de6b44492974339654d8ffc5ad9e1
change-id: 20241210-lxa-fairytux-e730979d3d3f

Best regards,
-- 
Marc Kleine-Budde <mkl@pengutronix.de>



