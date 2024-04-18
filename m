Return-Path: <devicetree+bounces-60529-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id CA8A38A9993
	for <lists+devicetree@lfdr.de>; Thu, 18 Apr 2024 14:11:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 809A71F217EA
	for <lists+devicetree@lfdr.de>; Thu, 18 Apr 2024 12:11:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F179615F415;
	Thu, 18 Apr 2024 12:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m+190KiW"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD94215E814
	for <devicetree@vger.kernel.org>; Thu, 18 Apr 2024 12:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713442313; cv=none; b=tXMjWLteYGlYIuWyZ/KIvWQFg7nULKqOLs4TC4bK0R9CS5DYtOtq6sEv5ecP/k1NUBQifWl2pAxjEw+St2jaeS2HJsLBL62E2mHIMQ0ol7GdNToz18BMsrnbGZ+jhYSKHh5EzOoNZ+LcEf1Qb95emoUGcyX2v4YEXXYMHXJL2oo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713442313; c=relaxed/simple;
	bh=TLaO4PDj+2DqhXNFfIhRQHhMhs/mD6k6Z62/73Qbj6Y=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=JJchChE7MIFlW+hTSA2Pf0M76wvTP81YydL4TBeIT9hvC8S90kFPeGH0VpmW9RD4rIz7vTCQiWv5lky9h6X2qnvHolyaSUf5Zb6vd7aNHz1XdlvO9fMhEC3LwMG0O+5HW/0isyVckwi4TkwS7daaqKLakH7EK7HnQQErXKp5Krs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m+190KiW; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 55819C32783;
	Thu, 18 Apr 2024 12:11:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713442313;
	bh=TLaO4PDj+2DqhXNFfIhRQHhMhs/mD6k6Z62/73Qbj6Y=;
	h=From:List-Id:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=m+190KiWyW5iPuk9e5x7jRpPdJTxPwtkyR0TwhmjjKHI2YgYrObdRqFsWGwiZPRJs
	 7lGnjjzPygcC4A8W6QmWt2+tPvGVe5fyti4FE3Klsf8T4UA2yk0+3xGjEocFCx+FKb
	 mqffydc8J4F6bq3qvWWgfoZgvh0juILBcOcsK1HMMlsrg5UH6EeklFYC3r78GS0GL9
	 GBwNm9slCX7vZjAYrUXUPcgdWqxA4J8+9oJc/Efrs4/GkGHZfdddKdbzKmmeFuaojd
	 CKCkAm2+LodrlzITyrGjavpIVmg/JllUCD+y+u4SMwvHkguiVcCc8hOyStxTf+qKM/
	 o1BurOx33xstA==
From: =?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>
To: Gregory CLEMENT <gregory.clement@bootlin.com>,
	Arnd Bergmann <arnd@arndb.de>,
	soc@kernel.org
Cc: arm@kernel.org,
	=?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>,
	Andrew Lunn <andrew@lunn.ch>,
	Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>,
	devicetree@vger.kernel.org
Subject: [PATCH v6 11/11] ARM: dts: turris-omnia: Add GPIO key node for front button
Date: Thu, 18 Apr 2024 14:11:16 +0200
Message-ID: <20240418121116.22184-12-kabel@kernel.org>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240418121116.22184-1-kabel@kernel.org>
References: <20240418121116.22184-1-kabel@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Now that we have the MCU device-tree node, which acts as a GPIO
controller, add GPIO key node for the front button.

Fixes: 26ca8b52d6e1 ("ARM: dts: add support for Turris Omnia")
Signed-off-by: Marek Behún <kabel@kernel.org>
---
 .../boot/dts/marvell/armada-385-turris-omnia.dts    | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm/boot/dts/marvell/armada-385-turris-omnia.dts b/arch/arm/boot/dts/marvell/armada-385-turris-omnia.dts
index 59079d63fe27..43202890c959 100644
--- a/arch/arm/boot/dts/marvell/armada-385-turris-omnia.dts
+++ b/arch/arm/boot/dts/marvell/armada-385-turris-omnia.dts
@@ -112,6 +112,19 @@ sfp: sfp {
 		status = "disabled";
 	};
 
+	gpio-keys {
+		compatible = "gpio-keys";
+
+		front-button {
+			label = "Front Button";
+			linux,code = <KEY_VENDOR>;
+			linux,can-disable;
+			gpios = <&mcu 0 12 GPIO_ACTIVE_HIGH>;
+			/* debouncing is done by the microcontroller */
+			debounce-interval = <0>;
+		};
+	};
+
 	sound {
 		compatible = "simple-audio-card";
 		simple-audio-card,name = "SPDIF";
-- 
2.43.2


