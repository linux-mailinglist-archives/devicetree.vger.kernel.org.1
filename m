Return-Path: <devicetree+bounces-6749-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FE627BCAFC
	for <lists+devicetree@lfdr.de>; Sun,  8 Oct 2023 02:51:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 50C621C20862
	for <lists+devicetree@lfdr.de>; Sun,  8 Oct 2023 00:50:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 71FB1A3B;
	Sun,  8 Oct 2023 00:50:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G/6ZygOR"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5715F368
	for <devicetree@vger.kernel.org>; Sun,  8 Oct 2023 00:50:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C5231C43142;
	Sun,  8 Oct 2023 00:50:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696726257;
	bh=wDWIqD460oEsh3nRxYpDhP8nQPY+vgqfxSoDuHNiGaw=;
	h=From:To:Cc:Subject:Date:From;
	b=G/6ZygORBvQANDIhFR6k9l+993r99YWqhT8smGfQCXmp9E3JPWUxxUYfwpzd6VI4Q
	 fICnvjtmJmUVVnhXLxn/LwK0KP9Lmz+Bnw/gJegyQBn3KBq+OGrXGSK5FpEJVRVpxi
	 /S7xmdC/snJIDixyY6Asi4Liybhw1IVAc/BuBhqPrOnJb2Tj9/KP1J/d2Si+rh0oh9
	 0HeXJA91w6NJTc/yY+mRLTje0J5miE4da9nnW1usQ6sbluSX5HFFV7K01sw0VQOyTz
	 mL+660cmz7tHUQrX4BqGLJ6sy1yhehARF5RMKLHAQD8cWW/R2uNIsDK0dPPuhR6jvP
	 pPg8KtBZNAoGQ==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Tony Lindgren <tony@atomide.com>,
	Ivaylo Dimitrov <ivo.g.dimitrov.75@gmail.com>,
	Carl Philipp Klemm <philipp@uvos.xyz>,
	Merlijn Wajer <merlijn@wizzup.org>,
	Pavel Machek <pavel@ucw.cz>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Sasha Levin <sashal@kernel.org>,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH AUTOSEL 4.14 1/7] ARM: dts: ti: omap: Fix noisy serial with overrun-throttle-ms for mapphone
Date: Sat,  7 Oct 2023 20:50:47 -0400
Message-Id: <20231008005053.3768625-1-sashal@kernel.org>
X-Mailer: git-send-email 2.40.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 4.14.326
Content-Transfer-Encoding: 8bit

From: Tony Lindgren <tony@atomide.com>

[ Upstream commit 5ad37b5e30433afa7a5513e3eb61f69fa0976785 ]

On mapphone devices we may get lots of noise on the micro-USB port in debug
uart mode until the phy-cpcap-usb driver probes. Let's limit the noise by
using overrun-throttle-ms.

Note that there is also a related separate issue where the charger cable
connected may cause random sysrq requests until phy-cpcap-usb probes that
still remains.

Cc: Ivaylo Dimitrov <ivo.g.dimitrov.75@gmail.com>
Cc: Carl Philipp Klemm <philipp@uvos.xyz>
Cc: Merlijn Wajer <merlijn@wizzup.org>
Cc: Pavel Machek <pavel@ucw.cz>
Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
Signed-off-by: Tony Lindgren <tony@atomide.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm/boot/dts/omap4-droid4-xt894.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/omap4-droid4-xt894.dts b/arch/arm/boot/dts/omap4-droid4-xt894.dts
index bad690b23081b..6d2ee40d88e1c 100644
--- a/arch/arm/boot/dts/omap4-droid4-xt894.dts
+++ b/arch/arm/boot/dts/omap4-droid4-xt894.dts
@@ -533,6 +533,7 @@ OMAP4_IOPAD(0X1d0, PIN_OUTPUT | MUX_MODE1)	/* dmtimer9_pwm_evt (gpio_28) */
 &uart3 {
 	interrupts-extended = <&wakeupgen GIC_SPI 74 IRQ_TYPE_LEVEL_HIGH
 			       &omap4_pmx_core 0x17c>;
+	overrun-throttle-ms = <500>;
 };
 
 &uart4 {
-- 
2.40.1


