Return-Path: <devicetree+bounces-242655-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F728C8D9D3
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 10:45:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 13EF73A8D2B
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 09:44:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A08CA325725;
	Thu, 27 Nov 2025 09:44:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U0WmI92g"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7737531771B;
	Thu, 27 Nov 2025 09:44:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764236696; cv=none; b=HtNc4DBwIji7g64BwGLMWt2/v3PlBtX6+0fCi5qOYd0VtSn7UFnVz2MSipM2X6yAQuKjrcMlabwXk+aDfEG2mJJOvNkeXyE6wM3gWQuR+6C0Fo1ARSMnXtmlphuhkuu6DfkqI4KX61Ex5stykrsYZp5opW9+0c06LEzJvFXPf58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764236696; c=relaxed/simple;
	bh=wDdtL7Ds9riVbV6ICXm79kvDBRYPemWXZfNDHX2irog=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=SnYGg/ys87VOGqfpsVoIM2SFrU2EsVGZLMO7w6U2A11tY/Mh6kW9lfCZiO2OzdLJXYcTVE5KFVHRgEAtVrXbz8kPs7iPoDBwsscH2qXQyXhg+qeD4+8427FoMslwEVujiZjBndRCqKYyKppyyHjCtCwATtmdirsGI8gsSbZ2h34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U0WmI92g; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7CA2C4CEF8;
	Thu, 27 Nov 2025 09:44:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764236695;
	bh=wDdtL7Ds9riVbV6ICXm79kvDBRYPemWXZfNDHX2irog=;
	h=From:Date:Subject:To:Cc:Reply-To:From;
	b=U0WmI92gGBB9JMQhD9F2KjevMPDcnLEq76dYwYYvD0zUwOAZejibICAiMVofNbMaE
	 2ph8cSjaZy19bvNlEw5RXLOFHRMWnNK1qnHGmUM/StHniZMaW445Sr5fX2WV+w/ZGA
	 dO4zILc6K3uUUTm6sXebvZ212A84oQIIHvvjL+adgUXrZLiRmT7LuH38Co4u0Y51Dh
	 5LTEvZqMKSL4A3o6yM98KLFbtY90x0JUsPAAywIYKqkp/nmKtb1tB8cvJ5skxNohqN
	 VJLTRm51opPilBcWoQZH5q5OAc7q0iGLD+DhwPpDphlAzblpmqTSmumj/K9ksIaxl6
	 TV2tsZfbw7Chw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1E1BD116E2;
	Thu, 27 Nov 2025 09:44:55 +0000 (UTC)
From: Alex Wang via B4 Relay <devnull+alex.ts.wang.fii-foxconn.com@kernel.org>
Date: Thu, 27 Nov 2025 17:44:51 +0800
Subject: [PATCH v2] dt: aspeed: clemente: move hdd_led to its own gpio-leds
 group
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20251127-leo-dts-add-shunt-resistor-v2-1-c77dfbfb826c@fii-foxconn.com>
X-B4-Tracking: v=1; b=H4sIAJIdKGkC/42NQQrCMBBFr1Jm7UiSEmldeQ/pIiZTO6CJZGqol
 N7d2BO4fJ/H+ysIZSaBc7NCpsLCKVYwhwb85OKdkENlMMpYrUyLD0oYZkEXAsr0jjNmEpY5ZTR
 dNdTJ2eAIauCVaeRlj1+HytOuffavon/rX9miUaMNfd8pd3Ot6i4jM45p8SnGo09PGLZt+wI3H
 A6KygAAAA==
X-Change-ID: 20251023-leo-dts-add-shunt-resistor-2810206a5dae
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
 Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
 george.kw.lee@fii-foxconn.com, Alex Wang <alex.ts.wang@fii-foxconn.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1764236694; l=2118;
 i=alex.ts.wang@fii-foxconn.com; s=20251023; h=from:subject:message-id;
 bh=XvfoAuDaFi0LEYIxrGZlYJX6g2aVVWHGpukneXb5b2k=;
 b=SXG/ZRsEzAm0y+7zt1tH9Ydnb+YuQ8Z7nkeAo5L/ekXuavdkD1Ale8faYlW8bQmxmf8E7FYoW
 4p9x7BbeD/6BzqaKejgS49RqwnHxC/r9cz33N53NCEPzRlctPJ3nLVM
X-Developer-Key: i=alex.ts.wang@fii-foxconn.com; a=ed25519;
 pk=m/IrKXb14uSdDm4KGXemjNIxgL6TrqXCc9NX09SUJp0=
X-Endpoint-Received: by B4 Relay for alex.ts.wang@fii-foxconn.com/20251023
 with auth_id=551
X-Original-From: Alex Wang <alex.ts.wang@fii-foxconn.com>
Reply-To: alex.ts.wang@fii-foxconn.com

From: Alex Wang <alex.ts.wang@fii-foxconn.com>

The gpio-leds driver requires all GPIOs in a group to be available;
if any GPIO in the group is not available the whole group will not be
created. The hdd_led GPIO is only present after standby power is
enabled, which can prevent other LEDs in the same group from being
created and blocks properly setting 'bmc_ready_noled'.

Move the 'hdd_led' node into a separate gpio-leds group so that other
LEDs are not blocked and the 'bmc_ready_noled' flag can be set
correctly.

Signed-off-by: Alex Wang <alex.ts.wang@fii-foxconn.com>
---
Changes in v2:
- I changed “missing” to “not available”. The hdd_led and bmc_ready_noled 
do not disappear; it's just that hdd_led only becomes available after 
standby power is enabled, and this process takes some time. The hdd_led 
becomes available only after bmc_ready_noled is supposed to be set, 
which causes bmc_ready_noled to fail to be generated and set in time.

- Standby power is enabled during the BMC boot process.

- The hdd_led will only be configured after the BMC boots, when a 
dedicated service starts and applies the settings.

- Link to v1: https://lore.kernel.org/r/20251023-leo-dts-add-shunt-resistor-v1-1-5d9980aba308@fii-foxconn.com
---
 arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-clemente.dts | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-clemente.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-clemente.dts
index dfe8f6d0eeef..ea1bf6f402bd 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-clemente.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-clemente.dts
@@ -96,7 +96,12 @@ led-3 {
 			gpios = <&gpio0 ASPEED_GPIO(P, 5) (GPIO_ACTIVE_HIGH|GPIO_TRANSITORY)>;
 		};
 
-		led-hdd {
+	};
+
+	hdd-leds {
+		compatible = "gpio-leds";
+
+		led-0 {
 			label = "hdd_led";
 			gpios = <&io_expander13 1 GPIO_ACTIVE_LOW>;
 		};

---
base-commit: c6fea62a8379f9e24b243ea4ba1fd482f8cd0d83
change-id: 20251023-leo-dts-add-shunt-resistor-2810206a5dae

Best regards,
-- 
Alex Wang <alex.ts.wang@fii-foxconn.com>



