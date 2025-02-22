Return-Path: <devicetree+bounces-149891-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DE262A40B75
	for <lists+devicetree@lfdr.de>; Sat, 22 Feb 2025 20:34:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 86BC018962F2
	for <lists+devicetree@lfdr.de>; Sat, 22 Feb 2025 19:34:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 866B7202C2A;
	Sat, 22 Feb 2025 19:34:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="GnBatlX9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f43.google.com (mail-oo1-f43.google.com [209.85.161.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2A8C145B16
	for <devicetree@vger.kernel.org>; Sat, 22 Feb 2025 19:34:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740252859; cv=none; b=ITxRkPXq+aHMbsKExQYxPAvQGwjRCUxSN6PMp58Ln0JBifQaXxWOBXHI6XFRHyzDUGNQUSXTr/PULmB2wLcmquKI+4qddgXI6421YtCL1MQ9pwql3AX7Vws7DDFfJL5Glv9XTm1CCfPSm1nizZ1cIlGdwgvoYnkmTS2T+rD6xI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740252859; c=relaxed/simple;
	bh=7GX5td6WyiulUV/FmhA8IeB6xdHqsOTahU7Uf35APGM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=RpseEcw4/BZAaiMOdnoPet/lC4UR5gxK/iz2bYiCfIKotCf863H+I5Jy+01LFpoQcnd89uOZNwH3LMvW856At8Hjd/JPDMldXjwk8ytydDTJJRh5OwoJgJJWNIlCrm6uRLXpmNVRczgbfP7ZjANguc63imMQ3j68dOyFYSV2Ils=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=GnBatlX9; arc=none smtp.client-ip=209.85.161.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oo1-f43.google.com with SMTP id 006d021491bc7-5fc13355a5bso1469569eaf.3
        for <devicetree@vger.kernel.org>; Sat, 22 Feb 2025 11:34:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740252856; x=1740857656; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NZD7e7lS6np8xcPoE89XQdSUqvckt6z8hBlyas+Zg58=;
        b=GnBatlX9qMaFYfcA8fLFhN9wzJBqegQG0wfx4WJ+JeI5zt6vb33ruJlcotbDAP1hby
         I0NBYXIslhDp5wRa6syKGWfqAd5Ijix4JGfH7EG45dH43ylE5jLxnk3LamKb2lwTnyaA
         cn/zmRpTGXFajgI4t519h/z/vnO8bt900eHCw6etxLr4qoAQ1JDOmJkq2Bl/9Zs3uhWy
         Q3rJUr/WG/YmwL8FhwXKwO+OD1ZRI/8U1VUYQ5CFlkAFbhx8cORVpBJM1OIAT2eEytHJ
         WdJLEMXqxEMRlNefcCUIzOsh63D2cE2tSp0PKrVdF4Vq454BdEz8AtdSJ0w6WcS7jEcR
         2BOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740252856; x=1740857656;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NZD7e7lS6np8xcPoE89XQdSUqvckt6z8hBlyas+Zg58=;
        b=u9GmlOJ5pvjE4gn28y8Ur5+e6C6KLuNdg/eLlfM53ZvToh3gAoDVc2wjL6+Vj9NpJQ
         IehltrWckGYawxNibspJjMCfKTVafFyU2fBtOY2pE+1QHUFfRgAD9ugnzp468aL14f7R
         nZODSYVNdBY7aOvkH8ps5S5ysEj6Kbi1IPkApcBCjhXdNhbCr5KpGxLGO5tyQQhClJs1
         eXI7wccu5qVxbV2YSUtZ9Rtrb/tSGhmR9wYt0vp/tKItVWcMYPsmcsbzy8oYafSaAsvT
         7RzORh1QtNkGOxfN/pBD/12qMvCsn/R05n7aJW+7PLbxZP6EMfPrmQuIk/B+KRF6YOmd
         8oSQ==
X-Forwarded-Encrypted: i=1; AJvYcCXHR1jzgwS2MMlh1K0epO7FFA+1rZfJWjuJOFN2qA8/tSWY7WYCCdzsIm77iT04UP01I6PvE0p99c0P@vger.kernel.org
X-Gm-Message-State: AOJu0Yy9OsyTr5EeNDXwu0qSAK9YxgCM3ggsjmyK7cyEL7YkhGDoBQEt
	RhZs+TvYVN7PHjBQYg7V10gY9e9cC+TP2h6fEJTK22NzZ3LlGyXO
X-Gm-Gg: ASbGnctXE8K3AOuBxaRJN61BeT+2tqgaPWWBCp4s5G2z0U6fqOh5/GZAsV/8n1rmuVY
	zykUqOixCGmz404QhTaMqo4wEXzZykI2+LOoqMzLFS1a4neQHXNUu0j6FzK7DllgspI1ZNHoHe8
	abUjhxZdvjWSMLtb+FeFpLC8cm28eXd406cBZBp5C8bpj6OSaXhrliB/jGu003MjuoQUJOGtT7A
	JE3jxkq1cXz4ZOgFQ5u8mhXN6vYWBRML2boBuJt/ltO9mqvdZjulBIABcu8j3H4YQEInqDkEiI4
	WkKdZRy2zrjrXN1XuoO/TDPRIN7G3Nyp5g==
X-Google-Smtp-Source: AGHT+IGAlE7E53XcWVW/rCeVZVzlbW04JQK5gia0SAjU0WBqiKDwJ9mVpl7FBpm7jj5IT4VGe6a3EA==
X-Received: by 2002:a05:6820:16a2:b0:5fd:896:f222 with SMTP id 006d021491bc7-5fd196017d7mr5491847eaf.4.1740252855847;
        Sat, 22 Feb 2025 11:34:15 -0800 (PST)
Received: from tower.cjhon.com ([2603:8081:ad00:4a:b69:ffa3:9d4e:2cd7])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-5fce7afabd8sm2724012eaf.34.2025.02.22.11.34.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 22 Feb 2025 11:34:14 -0800 (PST)
From: Jimmy Hon <honyuenkwun@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Johannes Erdfelt <johannes@erdfelt.com>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jimmy Hon <honyuenkwun@gmail.com>
Subject: [PATCH v7 3/5] arm64: dts: rockchip: Add Orange Pi 5 Ultra board
Date: Sat, 22 Feb 2025 13:33:30 -0600
Message-ID: <20250222193332.1761-4-honyuenkwun@gmail.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250222193332.1761-1-honyuenkwun@gmail.com>
References: <20250222193332.1761-1-honyuenkwun@gmail.com>
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
 .../dts/rockchip/rk3588-orangepi-5-ultra.dts  | 34 +++++++++++++++++++
 2 files changed, 35 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-ultra.dts

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index 57c5c013cc08..d068b9018cf4 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -151,6 +151,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-nanopc-t6-lts.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-ok3588-c.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-orangepi-5-max.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-orangepi-5-plus.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-orangepi-5-ultra.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-quartzpro64.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-rock-5-itx.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-rock-5b.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-ultra.dts b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-ultra.dts
new file mode 100644
index 000000000000..06800733d11e
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-ultra.dts
@@ -0,0 +1,34 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+/dts-v1/;
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/pinctrl/rockchip.h>
+#include <dt-bindings/pwm/pwm.h>
+#include "rk3588-orangepi-5-compact.dtsi"
+
+/ {
+	model = "Xunlong Orange Pi 5 Ultra";
+	compatible = "xunlong,orangepi-5-ultra", "rockchip,rk3588";
+};
+
+&led_blue_pwm {
+	pwms = <&pwm4 0 25000 PWM_POLARITY_INVERTED>;
+};
+
+&led_green_pwm {
+	pwms = <&pwm5 0 25000 PWM_POLARITY_INVERTED>;
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


