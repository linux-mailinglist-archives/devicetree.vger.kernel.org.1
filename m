Return-Path: <devicetree+bounces-32578-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 73B9682FBD7
	for <lists+devicetree@lfdr.de>; Tue, 16 Jan 2024 23:05:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 854C11C270D7
	for <lists+devicetree@lfdr.de>; Tue, 16 Jan 2024 22:05:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C555316C505;
	Tue, 16 Jan 2024 20:05:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tOPbeBNa"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C8BC16C500;
	Tue, 16 Jan 2024 20:05:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705435500; cv=none; b=EHKaxieOnIP0uQUbE03O0TsDwXyntjqDZZRLL/Itbcdgq+66xfbf0Ef3LFUcMP+VzcXuUFW3J/HrsJexymyvBRIA9si4khhp6AdC7GDRr3Pdq/tcbWbpDXrG0CLKDwO6l56rjMbpdA3745GXx+i2S5lY/CBc5bMzDCIW8Avw708=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705435500; c=relaxed/simple;
	bh=czksc/L8Qt/MuJeAv3NGyG2/n9Xu292vbAUJzdiLQDY=;
	h=Received:DKIM-Signature:From:To:Cc:Subject:Date:Message-ID:
	 X-Mailer:In-Reply-To:References:MIME-Version:X-stable:
	 X-Patchwork-Hint:X-stable-base:Content-Transfer-Encoding; b=KFDMzzcV6mGFPN6pca8TdPiJ5y7ga2aFU7wUo8eSdLdX6MMVYSwQqkaaTi/DHeloywAta6Ksl+Cm1raeqckGlG9J/9WXkQdEGpaGUoL1uCKr9WSni/0IIMnL5XrezewRIeW+B+Q5A+ekDfokQPcjkM55jTzdQ3R4YTxlEBQmD0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tOPbeBNa; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 20905C43390;
	Tue, 16 Jan 2024 20:04:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705435500;
	bh=czksc/L8Qt/MuJeAv3NGyG2/n9Xu292vbAUJzdiLQDY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=tOPbeBNa2mmmpfnHbK8BWRO37/W5wva05E9Mk/NC6JK/8x8nO20SHwwxgmsEenDrD
	 JIqQ/0BtFdXhcVwZAEhilfSNbMgTWk3TigdvXhqJLDQl9Kcn/MEKkLPMUZlanGj7wF
	 KbPbwNjrsfEYsxGurva7+jWKbUIDvLsBjqyqszgAC2M43JZEcTkjfp88J4EvK+l2GT
	 xm2744hWJbvP+vtF7hXxKkaJidfD8OYuHRCT7pUofMPMt2VdlmRtGBxUTeaCc8kZoc
	 aXvRraPVObqzxBxplWYSzTuSdr57jwM5r5nDkWagbJgap7x5EHh68ONUprYRY4kQNY
	 Zz4yLT1yo+gqQ==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Fabio Estevam <festevam@denx.de>,
	Shawn Guo <shawnguo@kernel.org>,
	Sasha Levin <sashal@kernel.org>,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH AUTOSEL 4.19 15/22] ARM: dts: imx27-apf27dev: Fix LED name
Date: Tue, 16 Jan 2024 15:04:09 -0500
Message-ID: <20240116200432.260016-15-sashal@kernel.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240116200432.260016-1-sashal@kernel.org>
References: <20240116200432.260016-1-sashal@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 4.19.305
Content-Transfer-Encoding: 8bit

From: Fabio Estevam <festevam@denx.de>

[ Upstream commit dc35e253d032b959d92e12f081db5b00db26ae64 ]

Per leds-gpio.yaml, the led names should start with 'led'.

Change it to fix the following dt-schema warning:

imx27-apf27dev.dtb: leds: 'user' does not match any of the regexes: '(^led-[0-9a-f]$|led)', 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/leds/leds-gpio.yaml#

Signed-off-by: Fabio Estevam <festevam@denx.de>
Signed-off-by: Shawn Guo <shawnguo@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm/boot/dts/imx27-apf27dev.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/imx27-apf27dev.dts b/arch/arm/boot/dts/imx27-apf27dev.dts
index 5f84b598e0d0..167f21434fbf 100644
--- a/arch/arm/boot/dts/imx27-apf27dev.dts
+++ b/arch/arm/boot/dts/imx27-apf27dev.dts
@@ -53,7 +53,7 @@ leds {
 		pinctrl-names = "default";
 		pinctrl-0 = <&pinctrl_gpio_leds>;
 
-		user {
+		led-user {
 			label = "Heartbeat";
 			gpios = <&gpio6 14 GPIO_ACTIVE_HIGH>;
 			linux,default-trigger = "heartbeat";
-- 
2.43.0


