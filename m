Return-Path: <devicetree+bounces-139817-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FE9BA1703B
	for <lists+devicetree@lfdr.de>; Mon, 20 Jan 2025 17:34:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5C859169F77
	for <lists+devicetree@lfdr.de>; Mon, 20 Jan 2025 16:34:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D500B1EB9E8;
	Mon, 20 Jan 2025 16:34:08 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E2231E0DC0
	for <devicetree@vger.kernel.org>; Mon, 20 Jan 2025 16:34:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737390848; cv=none; b=sF8L1yH0hkxxqOh53jiW7LAFcPxPP40ffD9TWcjJIg9fvuejFaqHX7h4gj8z8bDeiohWvEUMxMUhuTknp5cVJqds118qrwpLBnpFQW2v31OevbSG4G9DIZMn8Y/xZmJv8UL6j7CLmIuGDg+09piCFz3ATV54bbMmSbPw03BzVz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737390848; c=relaxed/simple;
	bh=QUCrRzfLcrv/sEz8FJ6qxQC7xNYnscNmjk0UmAB32rk=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=lCQPxhfEshoHjXnTIPBxFha0/2KGOCOn8Hh6M9pTaXr/lQWeWxz/4XHNN5igF7LYUK3Dc3dWLFAK5xNpNqjLaseujXX3Xu+nKjMpzANyEeq3XIe2ga5cNos+TwCn+DSQIrwmEiLFklBTgsqolPZAYOXs6YWj8KSLN+7++pjvXAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1tZuix-00034C-1s
	for devicetree@vger.kernel.org; Mon, 20 Jan 2025 17:34:03 +0100
Received: from moin.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::7b] helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mkl@pengutronix.de>)
	id 1tZuiw-000xsN-2H
	for devicetree@vger.kernel.org;
	Mon, 20 Jan 2025 17:34:02 +0100
Received: from dspam.blackshift.org (localhost [127.0.0.1])
	by bjornoya.blackshift.org (Postfix) with SMTP id 65C693AD0C9
	for <devicetree@vger.kernel.org>; Mon, 20 Jan 2025 16:34:02 +0000 (UTC)
Received: from hardanger.blackshift.org (unknown [172.20.34.65])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by bjornoya.blackshift.org (Postfix) with ESMTPS id 178193AD0A4;
	Mon, 20 Jan 2025 16:33:59 +0000 (UTC)
Received: from [172.20.34.65] (localhost [::1])
	by hardanger.blackshift.org (OpenSMTPD) with ESMTP id 6815eb50;
	Mon, 20 Jan 2025 16:33:58 +0000 (UTC)
From: Marc Kleine-Budde <mkl@pengutronix.de>
Subject: [PATCH stm32-next v2 0/2] ARM: dts: stm32: lxa-fairytux2: add
 gen{1,2} boards
Date: Mon, 20 Jan 2025 17:33:46 +0100
Message-Id: <20250120-lxa-fairytux-v2-0-95f4a0eaa44d@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIAOp6jmcC/22NzQqDMBCEX0X23C35KVh76nsUD6nZ6EIbJYkSE
 d+9IeceP2bmmwMiBaYIj+aAQBtHnn0BdWlgmIwfCdkWBiXUTSop8JMNOsNhT2tGarXo2s5qqx2
 UyRLIca66F8T01Qo95QR9ySaOaQ57fdpkbfyXbhIFdoaMkIN93zU9F/LjmsLsOV8tQX+e5w/Df
 f8/uQAAAA==
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1407; i=mkl@pengutronix.de;
 h=from:subject:message-id; bh=QUCrRzfLcrv/sEz8FJ6qxQC7xNYnscNmjk0UmAB32rk=;
 b=owEBbQGS/pANAwAKASg4oj56LbxvAcsmYgBnjnruIewAenRs8HPGcmEcVef/zd9aynU0vqWRz
 VLz1pEpsv+JATMEAAEKAB0WIQRQQLqG4LYE3Sm8Pl8oOKI+ei28bwUCZ4567gAKCRAoOKI+ei28
 b1G5B/9zTvXY8tCoJoS66NDPZKaTcf27QLsgnAajtyBe9rkh90y1LEof04jBnpEjiyKuFLxRQJR
 NLUoxcmTwcp8AENowO/iA+GF4GqBoIDZLfP6dH4wARvaMwoIMn2RxnAjiD9+f0QHv6pdudDlfbk
 0POFX/NAuiFBal5Gm1DUa3g7Bs7rtatWkGp0ItppGS5Objix6m1NgUo4SUCi9WM0255I5Ahcf32
 5o7n5rufPc2hvuN/sxEgeptRHPfvvjMiQj0c/cFNB0twpZReDA+ToinTt7Azcp14ka6/7/H3t8W
 YP3rHfeWV422oaYrAP8x0dotq89xBAqGHXjsdR18B7Ml3PZr
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
 .../boot/dts/st/stm32mp153c-lxa-fairytux2-gen1.dts | 101 ++++++
 .../boot/dts/st/stm32mp153c-lxa-fairytux2-gen2.dts | 146 ++++++++
 .../arm/boot/dts/st/stm32mp153c-lxa-fairytux2.dtsi | 394 +++++++++++++++++++++
 5 files changed, 645 insertions(+)
---
base-commit: b7ebfb84a09de6b44492974339654d8ffc5ad9e1
change-id: 20241210-lxa-fairytux-e730979d3d3f

Best regards,
-- 
Marc Kleine-Budde <mkl@pengutronix.de>



