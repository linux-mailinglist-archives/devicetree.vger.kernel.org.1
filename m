Return-Path: <devicetree+bounces-221330-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id F162AB9E8BD
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 12:04:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E180D2E1D8A
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 10:04:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C0942EB85A;
	Thu, 25 Sep 2025 10:04:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="M+ZnOWk6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64F312EACEE
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 10:04:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758794649; cv=none; b=pZravhwu769wK56YS/mpngDyMs/JOEkI+C572vWm3kyKoosQe19cGMnN3FYWJ4LPp0Y8nJyavN8EcLOvvFKkBCnBs5/6WMyRSH6gJYcTAxSTUrsDb/XWh3cfA7gfD4SeoIK3+5kYcvEr1qPBJGKNjY9zroTAKHdDBIYkXoJq8m4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758794649; c=relaxed/simple;
	bh=+AeL94by/7w4FDjrreJOe3xUyx4Fabq+S9BZDnqY75Y=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=q1V8dfc+nSx5WOrmrtjU6gAhvZhkBsmzevDTnjC5YLmRrEoxtMJHUnGde+KEPIFH+BGF6SwrLdyJQWfE5TTLJG4phE1lfEJ08G9o85Ss0Z0cVHlbjE42BAcZJp1QWCYcPoytR4W5aHbUMhOxMhpBx3jGQMSpfgS/OIXOWkti76A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=M+ZnOWk6; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-3b9edf4cf6cso909612f8f.3
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 03:04:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1758794646; x=1759399446; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2up2UqdcL4oRJT2zpolksru/os9YxPpp0z/P/v3XBDU=;
        b=M+ZnOWk659u2p+GmoafYhdZuiNhIQYGGOvZitalF58fDHMHaPzAm8h9qDMESwSgee9
         so0wHzsA0OIqYlrvXqgS0pB61prIRRnyzl72MsjVNEj6jc/MhaXAv9x29hC2Wrdy+bdI
         FyRl09sqZ/dRbLhxiOZHqnIjuuIZQzDZhJD82umiILCe+CF+WRPJqlO9kFEcJ/wGVl3t
         hTcIftaYHVTvLzJgC59FW10oCYGxJFFFcwDqXbZbe6NyKqxdTdpl3Zhs8O5x6l9cN5S7
         j12Aktion5i3g8kyIxF9OOLSr0oEWg97WOc35K7euJntAX/vKn1+RREGZcKhFWbEdpJu
         H1Hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758794646; x=1759399446;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2up2UqdcL4oRJT2zpolksru/os9YxPpp0z/P/v3XBDU=;
        b=CMD87KXn/ed4J8hW9tEBKJgmcXasWEMX5MG2eqwYUJEv0zkiEjmA0Z4fxQGVoLtVfJ
         vMEo9Z69K9pXAsjAI2w7Q1YeJi3AVYgSPvOPeAfnTxAb9ctcLVW+UJT1mKu3RdGfkxYL
         FlbKGJvOdKQ8lf3lynLGa8t41n8jh32sYg8KKUTf/8+0E9+5ORxZqU/ftnTV1QRxycK5
         Q5R8PT4PDnGrX9zxpTRrXyjh/zWmzSE/ZyeZ0F7i0Jvv0M9lHosrJLSLfpS/RZh4oUi4
         keN9ZZ2S7IvmqijUPlnn3OCfzP6lld8m3hsb1G+/TWpVdYnLxgijIwBKaq7GdlkiSaK8
         oZBg==
X-Forwarded-Encrypted: i=1; AJvYcCVL6XcQ9hLQ/LcGGQ/wZego2DtSpyMul4kpwuffG4SNUYhsirW1mIoei4j1lnhYYW7du/C6Yqddn2dc@vger.kernel.org
X-Gm-Message-State: AOJu0YwnkqkoGorWKcDaBWRpJl+ns2QhHBY+Lc1gKHwACKxvC21g64CY
	Gck5kQ1ioB7PAmpnnfK8PY5TSXXVIee49Xw0nJxorp+7zPo1h2mgz87np2kQM7hJMI4=
X-Gm-Gg: ASbGncttQTrFVV5+bdMLi+FafRy2a+4UxgzTJgX6RdflYVfLoSBNTZL0qFrqNJxGEtV
	Bbhyu4XZkk/b9+Q1DQA6IzUpopwY745VtqZn98H8kogIiS9zpUjAVGrIkq6ylbniVI+g+OGpkgV
	y6bvzYHXIZr+wtlFX/Xx2Cd0elJnOvDIMoNh519c6q+5L79difdBlHi9hEVtzbuY0kvz4yjcnAP
	+SrXn4OpSdJkpvEnUTafLfzVe+V5EwgOv6461G5WmjpTz56l1cjxuR8YdwcYTVW+qhDNBFigS+D
	MbWcgdfnSUd/w4Zq37uad/wBSl6qTmwhi/wnXp6abthOl00RKO1E5EDG4JDN6eghaglUR3oy0MU
	GpACEr24b+G+IFAEAIIUNVC53qzhclgGbJcrwJsHq8AeYFJOeiIV8weFKgtFcFrI=
X-Google-Smtp-Source: AGHT+IHHXHU24s3yb+6JEfRFP5BcjapHyELprs/0xwVx2h8MUo2ViXnlmaMNOX3gM17wiujTTQJrxg==
X-Received: by 2002:a05:6000:40c9:b0:3ee:1521:95fc with SMTP id ffacd0b85a97d-40e4745e16emr3063661f8f.14.1758794645638;
        Thu, 25 Sep 2025 03:04:05 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.153])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-40fb72fb6b7sm2501122f8f.2.2025.09.25.03.04.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Sep 2025 03:04:05 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: vkoul@kernel.org,
	kishon@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	p.zabel@pengutronix.de,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	yoshihiro.shimoda.uh@renesas.com,
	biju.das.jz@bp.renesas.com
Cc: claudiu.beznea@tuxon.dev,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>,
	Wolfram Sang <wsa+renesas@sang-engineering.com>
Subject: [PATCH v7 4/7] reset: rzg2l-usbphy-ctrl: Add support for USB PWRRDY
Date: Thu, 25 Sep 2025 13:02:59 +0300
Message-ID: <20250925100302.3508038-5-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250925100302.3508038-1-claudiu.beznea.uj@bp.renesas.com>
References: <20250925100302.3508038-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

On the Renesas RZ/G3S SoC, the USB PHY block has an input signal called
PWRRDY. This signal is managed by the system controller and must be
de-asserted after powering on the area where USB PHY resides and asserted
before powering it off.

On power-on the USB PWRRDY signal need to be de-asserted before enabling
clock and switching the module to normal state (through MSTOP support). The
power-on configuration sequence must be:

1/ PWRRDY=0
2/ CLK_ON=1
3/ MSTOP=0

On power-off the configuration sequence should be:

1/ MSTOP=1
2/ CLK_ON=0
3/ PWRRDY=1

The CLK_ON and MSTOP functionalities are controlled by clock drivers.

After long discussions with the internal HW team, it has been confirmed
that the HW connection b/w USB PHY block, the USB channels, the system
controller, clock, MSTOP, PWRRDY signal is as follows:

                               ┌──────────────────────────────┐
                               │                              │◄── CPG_CLKON_USB.CLK0_ON
                               │     USB CH0                  │
┌──────────────────────────┐   │┌───────────────────────────┐ │◄── CPG_CLKON_USB.CLK2_ON
│                 ┌────────┐   ││host controller registers  │ │
│                 │        │   ││function controller registers│
│                 │ PHY0   │◄──┤└───────────────────────────┘ │
│     USB PHY     │        │   └────────────▲─────────────────┘
│                 └────────┘                │
│                          │    CPG_BUS_PERI_COM_MSTOP.MSTOP{6, 5}_ON
│┌──────────────┐ ┌────────┐
││USHPHY control│ │        │
││  registers   │ │ PHY1   │   ┌──────────────────────────────┐
│└──────────────┘ │        │◄──┤     USB CH1                  │
│                 └────────┘   │┌───────────────────────────┐ │◄── CPG_CLKON_USB.CLK1_ON
└─▲───────▲─────────▲──────┘   ││ host controller registers │ │
  │       │         │          │└───────────────────────────┘ │
  │       │         │          └────────────▲─────────────────┘
  │       │         │                       │
  │       │         │           CPG_BUS_PERI_COM_MSTOP.MSTOP7_ON
  │PWRRDY │         │
  │       │   CPG_CLK_ON_USB.CLK3_ON
  │       │
  │  CPG_BUS_PERI_COM_MSTOP.MSTOP4_ON
  │
┌────┐
│SYSC│
└────┘

where:
- CPG_CLKON_USB.CLK.CLKX_ON is the register bit controlling the clock X
  of different USB blocks, X in {0, 1, 2, 3}
- CPG_BUS_PERI_COM_MSTOP.MSTOPX_ON is the register bit controlling the
  MSTOP of different USB blocks, X in {4, 5, 6, 7}
- USB PHY is the USB PHY block exposing 2 ports, port0 and port1, used
  by the USB CH0, USB CH1
- SYSC is the system controller block controlling the PWRRDY signal
- USB CHx are individual USB block with host and function capabilities
  (USB CH0 have both host and function capabilities, USB CH1 has only
  host capabilities)

The USBPHY control registers are controlled though the
reset-rzg2l-usbphy-ctrl driver. The USB PHY ports are controlled by
phy_rcar_gen3_usb2 (drivers/phy/renesas/phy-rcar-gen3-usb2.c file). The
USB PHY ports request resets from the reset-rzg2l-usbphy-ctrl driver.

The connection b/w the system controller and the USB PHY CTRL driver is
implemented through the renesas,sysc-pwrrdy device tree property
proposed in this patch. This property specifies the register offset and the
bitmask required to control the PWRRDY signal.

Since the USB PHY CTRL driver needs to be probed before any other
USB-specific driver on RZ/G3S, control of PWRRDY is passed exclusively
to it. This guarantees the correct configuration sequence between clocks,
MSTOP bits, and the PWRRDY bit. At the same time, changes are kept minimal
by avoiding modifications to the USB PHY driver to also handle the PWRRDY
itself.

Tested-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v7:
- used proper regmap update value on rzg2l_usbphy_ctrl_set_pwrrdy()

Changes in v6:
- used syscon_regmap_lookup_by_phandle_args() to simplify the code
- collected tags

Changes in v5:
- none

Changes in v4:
- updated patch description
- updated rzg2l_usbphy_ctrl_pwrrdy_init() to map directly the
  "renesas,sysc-pwrrdy" as the SYSC signal abstraction was dropped
  in this version, along with rz_sysc_get_signal_map()
- dropped priv member of rzg2l_usbphy_ctrl_pwrrdy_init() as it is
  not needed in this version
- shift left !power_on with pwrrdy->mask as this is how the
  regmap_update_bits() needs the last member to be
- selected MFD_SYSCON

Changes in v3:
- none; this patch is new


 drivers/reset/Kconfig                   |  1 +
 drivers/reset/reset-rzg2l-usbphy-ctrl.c | 62 +++++++++++++++++++++++++
 2 files changed, 63 insertions(+)

diff --git a/drivers/reset/Kconfig b/drivers/reset/Kconfig
index 78b7078478d4..329730cbcfb9 100644
--- a/drivers/reset/Kconfig
+++ b/drivers/reset/Kconfig
@@ -237,6 +237,7 @@ config RESET_RASPBERRYPI
 config RESET_RZG2L_USBPHY_CTRL
 	tristate "Renesas RZ/G2L USBPHY control driver"
 	depends on ARCH_RZG2L || COMPILE_TEST
+	select MFD_SYSCON
 	help
 	  Support for USBPHY Control found on RZ/G2L family. It mainly
 	  controls reset and power down of the USB/PHY.
diff --git a/drivers/reset/reset-rzg2l-usbphy-ctrl.c b/drivers/reset/reset-rzg2l-usbphy-ctrl.c
index 8a7f167e405e..be315199e2b0 100644
--- a/drivers/reset/reset-rzg2l-usbphy-ctrl.c
+++ b/drivers/reset/reset-rzg2l-usbphy-ctrl.c
@@ -13,6 +13,7 @@
 #include <linux/regmap.h>
 #include <linux/reset.h>
 #include <linux/reset-controller.h>
+#include <linux/mfd/syscon.h>
 
 #define RESET			0x000
 #define VBENCTL			0x03c
@@ -41,6 +42,18 @@ struct rzg2l_usbphy_ctrl_priv {
 
 #define rcdev_to_priv(x)	container_of(x, struct rzg2l_usbphy_ctrl_priv, rcdev)
 
+/**
+ * struct rzg2l_usbphy_ctrl_pwrrdy - SYSC PWRRDY signal descriptor
+ * @regmap: SYSC regmap
+ * @offset: offset into the SYSC address space for accessing PWRRDY
+ * @mask: mask into the register at offset for accessing PWRRDY
+ */
+struct rzg2l_usbphy_ctrl_pwrrdy {
+	struct regmap *regmap;
+	u32 offset;
+	u32 mask;
+};
+
 static int rzg2l_usbphy_ctrl_assert(struct reset_controller_dev *rcdev,
 				    unsigned long id)
 {
@@ -91,6 +104,8 @@ static int rzg2l_usbphy_ctrl_status(struct reset_controller_dev *rcdev,
 	return !!(readl(priv->base + RESET) & port_mask);
 }
 
+#define RZG2L_USBPHY_CTRL_PWRRDY	1
+
 static const struct of_device_id rzg2l_usbphy_ctrl_match_table[] = {
 	{ .compatible = "renesas,rzg2l-usbphy-ctrl" },
 	{ /* Sentinel */ }
@@ -110,6 +125,49 @@ static const struct regmap_config rzg2l_usb_regconf = {
 	.max_register = 1,
 };
 
+static void rzg2l_usbphy_ctrl_set_pwrrdy(struct rzg2l_usbphy_ctrl_pwrrdy *pwrrdy,
+					 bool power_on)
+{
+	u32 val = (!power_on << (ffs(pwrrdy->mask) - 1)) & pwrrdy->mask;
+
+	regmap_update_bits(pwrrdy->regmap, pwrrdy->offset, pwrrdy->mask, val);
+}
+
+static void rzg2l_usbphy_ctrl_pwrrdy_off(void *data)
+{
+	rzg2l_usbphy_ctrl_set_pwrrdy(data, false);
+}
+
+static int rzg2l_usbphy_ctrl_pwrrdy_init(struct device *dev)
+{
+	struct rzg2l_usbphy_ctrl_pwrrdy *pwrrdy;
+	struct regmap *regmap;
+	const int *data;
+	u32 args[2];
+
+	data = device_get_match_data(dev);
+	if (data != (int *)RZG2L_USBPHY_CTRL_PWRRDY)
+		return 0;
+
+	regmap = syscon_regmap_lookup_by_phandle_args(dev->of_node,
+						      "renesas,sysc-pwrrdy",
+						      ARRAY_SIZE(args), args);
+	if (IS_ERR(regmap))
+		return PTR_ERR(regmap);
+
+	pwrrdy = devm_kzalloc(dev, sizeof(*pwrrdy), GFP_KERNEL);
+	if (!pwrrdy)
+		return -ENOMEM;
+
+	pwrrdy->regmap = regmap;
+	pwrrdy->offset = args[0];
+	pwrrdy->mask = args[1];
+
+	rzg2l_usbphy_ctrl_set_pwrrdy(pwrrdy, true);
+
+	return devm_add_action_or_reset(dev, rzg2l_usbphy_ctrl_pwrrdy_off, pwrrdy);
+}
+
 static int rzg2l_usbphy_ctrl_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
@@ -132,6 +190,10 @@ static int rzg2l_usbphy_ctrl_probe(struct platform_device *pdev)
 	if (IS_ERR(regmap))
 		return PTR_ERR(regmap);
 
+	error = rzg2l_usbphy_ctrl_pwrrdy_init(dev);
+	if (error)
+		return error;
+
 	priv->rstc = devm_reset_control_get_exclusive(&pdev->dev, NULL);
 	if (IS_ERR(priv->rstc))
 		return dev_err_probe(dev, PTR_ERR(priv->rstc),
-- 
2.43.0


