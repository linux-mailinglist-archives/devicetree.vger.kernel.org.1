Return-Path: <devicetree+bounces-60528-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 959E88A9992
	for <lists+devicetree@lfdr.de>; Thu, 18 Apr 2024 14:11:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 35A1B1F220CF
	for <lists+devicetree@lfdr.de>; Thu, 18 Apr 2024 12:11:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E21315F405;
	Thu, 18 Apr 2024 12:11:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IlCt6Ra/"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A32715E5B2
	for <devicetree@vger.kernel.org>; Thu, 18 Apr 2024 12:11:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713442311; cv=none; b=WB7ePT8a+yR3+smNEeXzQlqbk/cF4kRP7VaZ1d2lCK4QN5Dgz5n0N0yhQSg9r6q6ODsxAycQPsQYNDVY2g/qY6f8vPUIdwzR5xBkGWDkheAam6HmT7sNAB/U6fEL9wiJSenxbAdh/Ux3NOJD1DUOByvrD75uvlXbrzVOsrwNth4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713442311; c=relaxed/simple;
	bh=37yk1SLJTNogGwuhRvNW0aCMjVDru9bLPJ0iOjpjveE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Kq4hKyqBfRipoLe62Okc5oMGm/PCcBvNnmuG7+EyHKh+u7RHMQAiTNGSvBXsAEF6Wss+GsPvI5tLLGQIPU4ypGZgzNvDw5TBf8stePsQgP4yByzdxkf0Lke+uS0UWmX6q9XDyKKKZZcuQuBSVmsfSBw0cmTOhSyiYO82JS0Eo9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IlCt6Ra/; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9B38BC3277B;
	Thu, 18 Apr 2024 12:11:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713442310;
	bh=37yk1SLJTNogGwuhRvNW0aCMjVDru9bLPJ0iOjpjveE=;
	h=From:List-Id:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=IlCt6Ra/aFxwZg1hujMX6BjVMgj7ASY3aFKSWl/RPYZh8/UldO4cBjCEHPR5W5oOJ
	 DW4dKdyy5V0fEHHm5DGk7+P0G9tZ4m0+SJvXFnOJVUL/J8BQe54KldyYiBQSkD7KSl
	 8N9Ht6dPuoqg+2rt09+qYBiYKEOCbWeQg/eg6dxrZd3RyTk/sG0K4tAA75YVUmIFxH
	 3A44Mp+Est0ZQZhRJtP16wrOKYcLxjy44g5qzJ9weeJgeembFPedIh4aebqTAXOnuL
	 vwhGu6p/iFVf3ifiQsSLxrWbGZItKhk+4IJzpLveuuGakv37hRF8mf3zzFx4gPcu6M
	 4E6oIzXQo6kzA==
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
Subject: [PATCH v6 10/11] ARM: dts: turris-omnia: Add MCU system-controller node
Date: Thu, 18 Apr 2024 14:11:15 +0200
Message-ID: <20240418121116.22184-11-kabel@kernel.org>
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

Turris Omnia's MCU provides various features that can be configured over
I2C at address 0x2a. Add device-tree node.

Fixes: 26ca8b52d6e1 ("ARM: dts: add support for Turris Omnia")
Signed-off-by: Marek Behún <kabel@kernel.org>
---
 .../dts/marvell/armada-385-turris-omnia.dts   | 22 ++++++++++++++++++-
 1 file changed, 21 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/marvell/armada-385-turris-omnia.dts b/arch/arm/boot/dts/marvell/armada-385-turris-omnia.dts
index 7b755bb4e4e7..59079d63fe27 100644
--- a/arch/arm/boot/dts/marvell/armada-385-turris-omnia.dts
+++ b/arch/arm/boot/dts/marvell/armada-385-turris-omnia.dts
@@ -218,7 +218,22 @@ i2c@0 {
 			#size-cells = <0>;
 			reg = <0>;
 
-			/* STM32F0 command interface at address 0x2a */
+			mcu: system-controller@2a {
+				compatible = "cznic,turris-omnia-mcu";
+				reg = <0x2a>;
+
+				pinctrl-names = "default";
+				pinctrl-0 = <&mcu_pins>;
+
+				interrupt-parent = <&gpio1>;
+				interrupts = <11 IRQ_TYPE_NONE>;
+
+				gpio-controller;
+				#gpio-cells = <3>;
+
+				interrupt-controller;
+				#interrupt-cells = <2>;
+			};
 
 			led-controller@2b {
 				compatible = "cznic,turris-omnia-leds";
@@ -501,6 +516,11 @@ fixed-link {
 };
 
 &pinctrl {
+	mcu_pins: mcu-pins {
+		marvell,pins = "mpp43";
+		marvell,function = "gpio";
+	};
+
 	pcawan_pins: pcawan-pins {
 		marvell,pins = "mpp46";
 		marvell,function = "gpio";
-- 
2.43.2


