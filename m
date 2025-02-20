Return-Path: <devicetree+bounces-148671-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C1BA7A3D050
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 05:11:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8B1923BA8B5
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 04:10:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 258CD1DE2BB;
	Thu, 20 Feb 2025 04:11:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="MnoAAZh+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f44.google.com (mail-oo1-f44.google.com [209.85.161.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7852519D067
	for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 04:11:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740024666; cv=none; b=K6QbM5QFPPr5PH5ZLTvWu7xhxGDGIEfAapU7JNW0ZIMaVHbKYWkXGrSDyICQhdMXQQYaQJiNqVAzfBK3a3nQeZpp0vtFSR0D1t+94vPWgLCHdCbNdoB7Fk7Vdn5rxvQCPBQg3x9Eszu2xWPCquP+EQ+kiNyO6Oyu1SjPRexWEdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740024666; c=relaxed/simple;
	bh=TTkmIIpKhyKZxb88wYkLkU/THJFHqWwva7Ge/A9RgE8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=YHkY+WPO74hEzPCZu1V76XA5mBEdDEB7eT4YfS3Czsn08gvRQfxAS7AD5dH+jV16NzQY5ug8Ii6GUD3l5EkN13p7P7fVjZWggiy9jgHM88sRW7XJhfl0hOkIOQScrtkTcvQtuxBK5y6PRRFI6NgPaFLo3PsYtuYilCIPeBgtxQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=MnoAAZh+; arc=none smtp.client-ip=209.85.161.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oo1-f44.google.com with SMTP id 006d021491bc7-5fcf21d7235so210349eaf.0
        for <devicetree@vger.kernel.org>; Wed, 19 Feb 2025 20:11:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740024663; x=1740629463; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fJqdFLU48tnq92+2A61DhSAxiXGci5HKtgHpbeQ/4oU=;
        b=MnoAAZh+JKMF4rVaAiGDmE5E4Fg/yZRfKKpd/yc3F9Aa4YYJ80zpwv76b+X389xbED
         6WRyp/eYv1im5FfXID8Ord/oh4VrMNnIx1DqdMIWJcn19NIL8ViylzoVtxhxkR7gUPQR
         hfQyfO7zgedGCrObNfQ1jQL+mQIqgEaTmBDn/h6u7VSk/zPTsMR00lfW43YqOImosPAm
         9r5wgbEy5TPSNwEmXgW8YyW1oQtvSHsWjSX5UZz4Hjw97Qjc9suMxXLZQBmQnNmazWkT
         58500QHUglivbIOFF8GqM2oCPp7SAjuaZ8LQV43quAFzCfpgKaAEpA6YOqAvUT/v4qId
         Ez0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740024663; x=1740629463;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fJqdFLU48tnq92+2A61DhSAxiXGci5HKtgHpbeQ/4oU=;
        b=TrGz/w1R4BZPu3KGuOWaJVd8/dHveBunJxb0gKF+iggT6QgV0y0MoE0bHKa39edrFn
         pr2LFVYP5+R6MAaFcpicwOnhgtgK3YYql7N3/dWurFuPdx6EzpH5L1qiRUnyZYqVUfHV
         VtUktu0/6KGyv2v2ohgskZz0SQu0D5IZBl8EmFtUH3/PY8q2GHz/x5Fk6bSIzUBuN42/
         DrNw6WaAD+fU7IK/tZCjwcmTGxrByetuWQckwPJR7afcARMp6nbrAIqcqh7BTCV/9z3F
         mYxa3fUGpWb4X/bwaJM78UB/OFyBHTCMnpJVUx5Iy96bWoaC52R1EDvZ00FLdVz1cHvP
         8Y1w==
X-Forwarded-Encrypted: i=1; AJvYcCXn4gSt+qMS6LYeZCFpMCtO4BujArhqy60VdB8Ddf1L+oNK7lSb8NAl8ZnTEClWxHtm68UhctNjIew5@vger.kernel.org
X-Gm-Message-State: AOJu0Yzo3A321z4sb35VxkO5Xn5Y97P8w3Yiyh0zVBJumfnmWJbV8Fms
	UoY9tBLDvJ1c4VSfTK0d7SB/eUzd97NRvMyyQjBlm7HzBAqhj+fA
X-Gm-Gg: ASbGncupFUbBxPc2dBOyE75hO6xkRGCtDmLuMZsYWelUW4NtC85isat4h73YPAq2lTG
	gDIqjAwQhGDtVpVZFf4/V5BNJ36S6wr5VLqYKVh1rAi8pF4D7N+Z4N6UCxen0lyZNnkn6tx9tC+
	ksupa1fy/frJIZkfR/jiGRoMKP+XZ04rQL9tiGek/C+Auw/cZRoFMiHKYbmB4JbCEL5l+dE7FAG
	4jk/haddNe5CwAYhM9G0KznZlT+F5fQM+qH3QUuFuC5ekz6x/6DCptHuxDaM6SXPKozvUgQ3S0z
	rrTSsAjhLZ5ZsBmXPPJRfBc4
X-Google-Smtp-Source: AGHT+IFq+LbJlTio7nz2ar+eCrCU4GrZWBLeVv5oMljjH7p8qOeVSrEML6pFWikcIU79YuIBePDZtw==
X-Received: by 2002:a05:6870:702a:b0:29e:7d35:2319 with SMTP id 586e51a60fabf-2bc99a502c7mr15652236fac.4.1740024663245;
        Wed, 19 Feb 2025 20:11:03 -0800 (PST)
Received: from tower.cjhon.com ([2603:8081:ad00:4a:20f3:777f:5ae9:b018])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-727378237e4sm1025875a34.47.2025.02.19.20.11.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Feb 2025 20:11:02 -0800 (PST)
From: Jimmy Hon <honyuenkwun@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jimmy Hon <honyuenkwun@gmail.com>
Subject: [PATCH UNTESTED v5 2/4] arm64: dts: rockchip: Add Orange Pi 5 Ultra board
Date: Wed, 19 Feb 2025 22:10:08 -0600
Message-ID: <20250220041010.3801-3-honyuenkwun@gmail.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250220041010.3801-1-honyuenkwun@gmail.com>
References: <20250220041010.3801-1-honyuenkwun@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The RK3588 Single Board Computer includes
- eMMC
- microSD
- UART
- 2 PWM LEDs
- RTC
- RTL8125 network controller on PCIe 2.0x1.
- M.2 M-key connector routed to PCIe 3.0x4
- PWM controlled heat sink fan.
- 2 USB2 ports
- lower USB3 port
- upper USB3 port with OTG capability
- Mali GPU
- SPI NOR flash
- Mask Rom button
- Analog audio using es8388 codec via the headset jack and onboard mic
- HDMI1
- HDMI IN

the vcc5v0_usb30 regulator shares the same enable gpio pin as the
vcc5v0_usb20 regulator.

The Orange Pi 5 Ultra is a single board computer powered by the Rockchip
RK3588 with similar board layout as the 5 Max but with the HDMI0 swapped
for HDMI IN.

Signed-off-by: Jimmy Hon <honyuenkwun@gmail.com>
---
 arch/arm64/boot/dts/rockchip/Makefile         |  1 +
 .../dts/rockchip/rk3588-orangepi-5-ultra.dts  | 25 +++++++++++++++++++
 2 files changed, 26 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-ultra.dts

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index def1222c1907..d0deffb8a1f9 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -150,6 +150,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-nanopc-t6-lts.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-ok3588-c.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-orangepi-5-max.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-orangepi-5-plus.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-orangepi-5-ultra.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-quartzpro64.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-rock-5-itx.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-rock-5b.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-ultra.dts b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-ultra.dts
new file mode 100644
index 000000000000..93561b7a0938
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-ultra.dts
@@ -0,0 +1,25 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+/dts-v1/;
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/pinctrl/rockchip.h>
+#include "rk3588-orangepi-5-compact.dtsi"
+
+/ {
+	model = "Xunlong Orange Pi 5 Ultra";
+	compatible = "xunlong,orangepi-5-ultra", "rockchip,rk3588";
+};
+
+&pinctrl {
+
+	usb {
+		usb_otg_pwren: usb-otg-pwren {
+			rockchip,pins = <4 RK_PB1 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+};
+
+&vcc5v0_usb30_otg {
+	gpios = <&gpio4 RK_PB1 GPIO_ACTIVE_HIGH>;
+};
-- 
2.48.1


