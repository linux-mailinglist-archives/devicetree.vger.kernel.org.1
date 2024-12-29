Return-Path: <devicetree+bounces-134600-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D15039FE03A
	for <lists+devicetree@lfdr.de>; Sun, 29 Dec 2024 19:45:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 34A9C3A1A73
	for <lists+devicetree@lfdr.de>; Sun, 29 Dec 2024 18:45:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 79DE0198845;
	Sun, 29 Dec 2024 18:45:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="crIVmMVg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f52.google.com (mail-ot1-f52.google.com [209.85.210.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 384B6199239
	for <devicetree@vger.kernel.org>; Sun, 29 Dec 2024 18:45:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735497915; cv=none; b=uYJRrTMHIOs+sb4IVm7Aoap+bi13F2CCtybNqkUrB4NNUdCuusczdgHjsSvEwWuC120BaLdeIdKGXWcpikAjl5bmmNvvcDvLrCHlOIHNEjFLVdR2uroy6cmT1yKT6Fr9RCohtUlGL3B7syXK35JVo3XyE0jMn/FmR9tv0Qz42F0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735497915; c=relaxed/simple;
	bh=SBapEnWDI4X3WTBefbZvVdfQtpdp66DNF9aUk9eMyFI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=BLu0D1Q8d9GTB/e0zCQPKi8n1FCwFEMEYYJ0fNyWZ0Ao9Y//VAIxypr9LzDDrWZ7TJoJuYKZ8bSEiFTAKx/5UlCy9GXINDMRstnro5ZDEwsXFiMMN7kBfFLEKfJ8URkNqQQCZoI9Uwj9EJu1zuX+21FvYviZUAfdh0IWsljFLRU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=crIVmMVg; arc=none smtp.client-ip=209.85.210.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f52.google.com with SMTP id 46e09a7af769-71e1597e3b4so2185295a34.3
        for <devicetree@vger.kernel.org>; Sun, 29 Dec 2024 10:45:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1735497912; x=1736102712; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KKu1TS5Psj7hTyzCNbm0iN4cOOpfVFcu5dCXNycI6ow=;
        b=crIVmMVgA5sQKGdUsqzTiCmfj1VHl3tk94U9zrA+DUXKyBrJnzYweFXGE/ng9Y64ji
         EjuLZQhFdQmpbYEYybAvPHl75jM9JNWGLvUPveqS4ihWkCLXqtq2Aslt7Lfci0Qun1AM
         KzrRjYv9qbC/NrtFjnVf0hgrWnUEwBOE0dVNkru0CW5VBwtOMpnkWqiri8DAn+NMVegC
         jDrn0OO5TFzRELGsbu+7Q/dWZx2h2vSZV3r4w3xgX1H7MPA33LhKOviJ9fhwnL4vaqpu
         KHZQqtazSaitYluBhBGtttPRKP7mHY6tRS0eXyTyyDyILomR6TQNkN+4ipF8nteV4pR7
         j0Kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735497912; x=1736102712;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KKu1TS5Psj7hTyzCNbm0iN4cOOpfVFcu5dCXNycI6ow=;
        b=vh8BV3dOyUqSdnZnq6n3nS5/HMF4CRe95VhL9wNDZGVUTamQySaJfJzkmcCn5oQHtA
         IssUmgqC5EIynLs/Di4MmUK8h6OgCc4t7M5Zoqu2E7A2riV9C7Tm7awstDnNL5BRcivv
         rYshIbxLunBrwfZrMwocra1f6kpJgogc9RhiwXppo2hNNqHVo4yvgkwfercVEV4jF+pQ
         kL9hnBiLFi2gUTg2Y33x8TAMnQ1mX1jNizmxnqez7rxmxZvQy8z7NouWqnFnMnN95sH8
         zmqqy2qC3otnZ5HL+k/1nZk9GibWL37pelnhPJRQgW+ZJZCYgDIf3ZdD3UiYIvAxPkaJ
         Kqqw==
X-Forwarded-Encrypted: i=1; AJvYcCV5hRURB+nlbYF8sC58UX70VP3kltEuyarpoI0F732L8O/1ycPqr6/oUg4JBMFyX/iswEBISIS6EkrQ@vger.kernel.org
X-Gm-Message-State: AOJu0Yxb6VWawiFsIpAbn0DuhqBeEgvTn6Y4ygB9//A50rRgxxZ34x64
	IOH4eUmg7sFsClMgmP3UxhI6yYKKlVji3th4NoXwO40zsJ6TJruo
X-Gm-Gg: ASbGncsPaSgHqXg/uie87OLv2QEDT6To02SkDy7vTfeAEqxjfJuq3UeulszD28bMdBm
	/a5NVM3yuqo3d+YLnoRpIf5ULmEmPW9z/u0jg9RDMjwiwNf6q31V0iNEDRBZ9ypt6lQYUCrkosz
	5Lw4+cHTJvuDiPQI72rjYhjykx4BXj694omdTOqjhJJoZ2DZSDpttFVxz1J0goMBhlVNwMj0Gf7
	3yjK1t+jduAlzqOmjxWEmWdN4lWH5U8yiZuH++cHzYakmZRojU7I7A8RlJSbPjA
X-Google-Smtp-Source: AGHT+IETOyubIpNaewSb5YWblmDG49HSLncL7ygLwmf7mXu2oV9Tarb4CVAUQOoSuZ0xPYYC/d9Emw==
X-Received: by 2002:a05:6830:718c:b0:71e:223c:1789 with SMTP id 46e09a7af769-720ff894f99mr22567508a34.16.1735497912149;
        Sun, 29 Dec 2024 10:45:12 -0800 (PST)
Received: from tower.cjhon.com ([2603:8081:ad00:4a:e765:a49c:5c4:1103])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-71fc97d6fafsm5515645a34.31.2024.12.29.10.45.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Dec 2024 10:45:11 -0800 (PST)
From: Jimmy Hon <honyuenkwun@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Ondrej Jirman <megi@xff.cz>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jimmy Hon <honyuenkwun@gmail.com>
Subject: [RFC 5/7] arm64: dts: rockchip: Add Orange Pi 5 Ultra board
Date: Sun, 29 Dec 2024 12:41:33 -0600
Message-ID: <20241229184256.1870-10-honyuenkwun@gmail.com>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20241229184256.1870-2-honyuenkwun@gmail.com>
References: <20241229184256.1870-2-honyuenkwun@gmail.com>
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

Signed-off-by: Jimmy Hon <honyuenkwun@gmail.com>
---
 arch/arm64/boot/dts/rockchip/Makefile         |  1 +
 .../dts/rockchip/rk3588-orangepi-5-ultra.dts  | 21 +++++++++++++++++++
 2 files changed, 22 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-ultra.dts

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index 83ad11650f0b..7c7560b8fda3 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -144,6 +144,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-nanopc-t6-lts.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-ok3588-c.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-orangepi-5-max.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-orangepi-5-plus.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-orangepi-5-ultra.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-quartzpro64.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-rock-5-itx.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-rock-5b.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-ultra.dts b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-ultra.dts
new file mode 100644
index 000000000000..41d8d297ce4b
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-ultra.dts
@@ -0,0 +1,21 @@
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
-- 
2.47.1


