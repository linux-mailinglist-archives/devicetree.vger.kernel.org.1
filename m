Return-Path: <devicetree+bounces-25579-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id AEECC813B65
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 21:15:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 39F531F22417
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 20:15:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F40E66AB8E;
	Thu, 14 Dec 2023 20:15:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=waldekranz-com.20230601.gappssmtp.com header.i=@waldekranz-com.20230601.gappssmtp.com header.b="YCmLJDkV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 809CE6A02E
	for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 20:15:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=waldekranz.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=waldekranz.com
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-50c05ea5805so10100032e87.0
        for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 12:15:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=waldekranz-com.20230601.gappssmtp.com; s=20230601; t=1702584904; x=1703189704; darn=vger.kernel.org;
        h=content-transfer-encoding:organization:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=I7HLv62IYJdHMlDeZU7GmB5aQgHlfet899NoGCtHGJY=;
        b=YCmLJDkVEKfwItjDjpiFeqnUBUm9kXbIjf3JzFiib7a9JgKbCZVyxO8e+ReRyUjYJ9
         OV+YP6ks9i7pvv3hWv/ZOhf83oJDcIOLPtf5A339jJ/iBrkfL1XF/F96OhdjT1w+1FmM
         PTSlwX6SsYr05UVG5znTn1pShbNBcrlVFTW24O9cJRjOkNY9Md8rawnfEp9cdQzox9p9
         tTe38Zrj7Dz7Vnc8y5sHETpSK7AUCKNPiBan+aE3tSe+rMUcCtdt+EE0Ou5oZgBRQj9U
         vyVski7Yrg4UPaDtqr5JdLtbcX1vHGqe3cQY3ybXuGbObMio5ZlVNveXCOZXpD4l+yKQ
         VAEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702584904; x=1703189704;
        h=content-transfer-encoding:organization:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=I7HLv62IYJdHMlDeZU7GmB5aQgHlfet899NoGCtHGJY=;
        b=HEGOazFwPKRhG1HvwX0StJ20B0xgkV9bdTs9903oBtt7l8UoBuG95l1lhnR/sLa1Oq
         seFMTQ+G5jayk13/4jx8NEODQxCkUgLP+q8ixPwZD9db5c/4ogTRsDQpAoxGXCLVGiAV
         QUu+1oF9vLj84vtMItLYrm63m8azDqlcN6vo1lRUtTwhXRpGqjyeb8XktOW4jtGLPQ43
         2QDFjqtmQwZWngu4Pt6ZO/4fPdz4vziixK4z0ycGCOgfpHNd05gKdTMpUiAZTQiVYXwP
         IMz+B2rFLAV5Qc+AeipFCKzB/Rfyl13X5Mo9wCxJJ4TCfQf60Tu308/cq0AnfCsKbYK5
         hUAQ==
X-Gm-Message-State: AOJu0Yyfo3zvrwXRzZ+oG0u9MuDNpR+LGDuKe4l+1qBcCWp4jnlGtJGk
	xClbG043kXyYgb0l7jLTjjkJvw==
X-Google-Smtp-Source: AGHT+IFaGXXOf4tADTBM1Ga8Rxetf5wJRLNmDeDq6xqhSzPRs/O2pCk2oOTdTkZRu6MBzbEn+HvzNQ==
X-Received: by 2002:ac2:4251:0:b0:50e:1b4e:cbdd with SMTP id m17-20020ac24251000000b0050e1b4ecbddmr505780lfl.114.1702584904312;
        Thu, 14 Dec 2023 12:15:04 -0800 (PST)
Received: from wkz-x13.addiva.ad (h-158-174-187-194.NA.cust.bahnhof.se. [158.174.187.194])
        by smtp.gmail.com with ESMTPSA id dw11-20020a0565122c8b00b0050e140f84besm369519lfb.164.2023.12.14.12.15.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Dec 2023 12:15:03 -0800 (PST)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: davem@davemloft.net,
	kuba@kernel.org
Cc: linux@armlinux.org.uk,
	kabel@kernel.org,
	andrew@lunn.ch,
	hkallweit1@gmail.com,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH net-next 3/4] net: phy: marvell10g: Add LED support for 88X3310
Date: Thu, 14 Dec 2023 21:14:41 +0100
Message-Id: <20231214201442.660447-4-tobias@waldekranz.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231214201442.660447-1-tobias@waldekranz.com>
References: <20231214201442.660447-1-tobias@waldekranz.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Organization: Addiva Elektronik
Content-Transfer-Encoding: 8bit

Pickup the LEDs from the state in which the hardware reset or
bootloader left them, but also support further configuration via
device tree. This is primarily needed because the electrical polarity
and drive behavior is software controlled and not possible to set via
hardware strapping.

Trigger support:
- "none"
- "timer": Map 60-100 ms periods to the fast rate (81ms) and 1000-1600
  	   ms periods to the slow rate (1300ms). Defer everything else to
	   software blinking
- "netdev": Offload link or duplex information to the solid behavior;
  	    tx and/or rx activity to blink behavior.

Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
---
 drivers/net/phy/marvell10g.c | 436 +++++++++++++++++++++++++++++++++++
 1 file changed, 436 insertions(+)

diff --git a/drivers/net/phy/marvell10g.c b/drivers/net/phy/marvell10g.c
index 1c1333d867fb..73d74977dd05 100644
--- a/drivers/net/phy/marvell10g.c
+++ b/drivers/net/phy/marvell10g.c
@@ -28,6 +28,7 @@
 #include <linux/firmware.h>
 #include <linux/hwmon.h>
 #include <linux/marvell_phy.h>
+#include <linux/of.h>
 #include <linux/phy.h>
 #include <linux/sfp.h>
 #include <linux/netdevice.h>
@@ -136,6 +137,14 @@ enum {
 	MV_V2_33X0_PORT_CTRL_MACTYPE_10GBASER_NO_SGMII_AN	= 0x5,
 	MV_V2_33X0_PORT_CTRL_MACTYPE_10GBASER_RATE_MATCH	= 0x6,
 	MV_V2_33X0_PORT_CTRL_MACTYPE_USXGMII			= 0x7,
+	MV_V2_LED0_CONTROL	= 0xf020,
+	MV_V2_LED_CONTROL_POLARITY_MASK		= 0x0003,
+	MV_V2_LED_CONTROL_POLARITY_SHIFT	= 0,
+	MV_V2_LED_CONTROL_BLINK_RATE		= BIT(2),
+	MV_V2_LED_CONTROL_SOLID_FUNC_MASK	= 0x00f8,
+	MV_V2_LED_CONTROL_SOLID_FUNC_SHIFT	= 3,
+	MV_V2_LED_CONTROL_BLINK_FUNC_MASK	= 0x1f00,
+	MV_V2_LED_CONTROL_BLINK_FUNC_SHIFT	= 8,
 	MV_V2_PORT_INTR_STS		= 0xf040,
 	MV_V2_PORT_INTR_MASK		= 0xf043,
 	MV_V2_PORT_INTR_STS_WOL_EN	= BIT(8),
@@ -164,6 +173,7 @@ struct mv3310_mactype {
 struct mv3310_chip {
 	bool (*has_downshift)(struct phy_device *phydev);
 	void (*init_supported_interfaces)(unsigned long *mask);
+	int (*leds_probe)(struct phy_device *phydev);
 	int (*get_mactype)(struct phy_device *phydev);
 	int (*set_mactype)(struct phy_device *phydev, int mactype);
 	int (*select_mactype)(unsigned long *interfaces);
@@ -177,6 +187,13 @@ struct mv3310_chip {
 #endif
 };
 
+#define MV3310_N_LEDS 4
+
+struct mv3310_led {
+	u8 index;
+	u16 fw_ctrl;
+};
+
 struct mv3310_priv {
 	DECLARE_BITMAP(supported_interfaces, PHY_INTERFACE_MODE_MAX);
 	const struct mv3310_mactype *mactype;
@@ -186,6 +203,8 @@ struct mv3310_priv {
 
 	struct device *hwmon_dev;
 	char *hwmon_name;
+
+	struct mv3310_led led[MV3310_N_LEDS];
 };
 
 static const struct mv3310_chip *to_mv3310_chip(struct phy_device *phydev)
@@ -193,6 +212,413 @@ static const struct mv3310_chip *to_mv3310_chip(struct phy_device *phydev)
 	return phydev->drv->driver_data;
 }
 
+enum mv3310_led_func {
+	MV3310_LED_FUNC_OFF		 = 0x00,
+	MV3310_LED_FUNC_TX_RX		 = 0x01,
+	MV3310_LED_FUNC_TX		 = 0x02,
+	MV3310_LED_FUNC_RX		 = 0x03,
+	MV3310_LED_FUNC_COLLISION	 = 0x04,
+	MV3310_LED_FUNC_LINK_COPPER	 = 0x05,
+	MV3310_LED_FUNC_LINK_FIBER	 = 0x06,
+	MV3310_LED_FUNC_LINK		 = 0x07,
+	MV3310_LED_FUNC_10M_LINK	 = 0x08,
+	MV3310_LED_FUNC_100M_LINK	 = 0x09,
+	MV3310_LED_FUNC_1G_LINK		 = 0x0a,
+	MV3310_LED_FUNC_10G_LINK	 = 0x0b,
+	MV3310_LED_FUNC_10M_100M_LINK	 = 0x0c,
+	MV3310_LED_FUNC_10M_100M_1G_LINK = 0x0d,
+	MV3310_LED_FUNC_100M_10G_LINK	 = 0x0e,
+	MV3310_LED_FUNC_1G_10G_LINK	 = 0x0f,
+	MV3310_LED_FUNC_1G_10G_SLAVE	 = 0x10,
+	MV3310_LED_FUNC_1G_10G_MASTER	 = 0x11,
+	MV3310_LED_FUNC_HALF_DUPLEX	 = 0x12,
+	MV3310_LED_FUNC_FULL_DUPLEX	 = 0x13,
+	MV3310_LED_FUNC_LINK_EEE	 = 0x14,
+	MV3310_LED_FUNC_2G5_LINK	 = 0x15,
+	MV3310_LED_FUNC_5G_LINK		 = 0x16,
+	MV3310_LED_FUNC_ON		 = 0x17,
+	MV3310_LED_FUNC_2G5_5G_SLAVE	 = 0x18,
+	MV3310_LED_FUNC_2G5_5G_MASTER	 = 0x19,
+
+	MV3310_LED_FUNC_SPEED_BLINK	 = 0x1f
+};
+
+static int mv3310_led_flags_from_funcs(struct mv3310_led *led,
+				       enum mv3310_led_func solid,
+				       enum mv3310_led_func blink,
+				       unsigned long *flagsp)
+{
+	unsigned long flags = 0;
+
+	switch (solid) {
+	case MV3310_LED_FUNC_OFF:
+		break;
+	case MV3310_LED_FUNC_LINK_COPPER:
+	case MV3310_LED_FUNC_LINK_FIBER:
+	case MV3310_LED_FUNC_LINK:
+		flags |= TRIGGER_NETDEV_LINK;
+		break;
+	case MV3310_LED_FUNC_HALF_DUPLEX:
+		flags |= TRIGGER_NETDEV_HALF_DUPLEX;
+		break;
+	case MV3310_LED_FUNC_FULL_DUPLEX:
+		flags |= TRIGGER_NETDEV_FULL_DUPLEX;
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	switch (blink) {
+	case MV3310_LED_FUNC_OFF:
+		break;
+	case MV3310_LED_FUNC_TX:
+		flags |= TRIGGER_NETDEV_TX;
+		break;
+	case MV3310_LED_FUNC_RX:
+		flags |= TRIGGER_NETDEV_RX;
+		break;
+	case MV3310_LED_FUNC_TX_RX:
+		flags |= TRIGGER_NETDEV_TX | TRIGGER_NETDEV_RX;
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	*flagsp = flags;
+	return 0;
+}
+
+static int mv3310_led_funcs_from_flags(struct mv3310_led *led,
+				       unsigned long flags,
+				       enum mv3310_led_func *solid,
+				       enum mv3310_led_func *blink)
+{
+	unsigned long activity, duplex, link;
+
+	if (flags & ~(BIT(TRIGGER_NETDEV_LINK) |
+		      BIT(TRIGGER_NETDEV_HALF_DUPLEX) |
+		      BIT(TRIGGER_NETDEV_FULL_DUPLEX) |
+		      BIT(TRIGGER_NETDEV_TX) |
+		      BIT(TRIGGER_NETDEV_RX)))
+		return -EINVAL;
+
+	link = flags & BIT(TRIGGER_NETDEV_LINK);
+
+	duplex = flags & (BIT(TRIGGER_NETDEV_HALF_DUPLEX) |
+			  BIT(TRIGGER_NETDEV_FULL_DUPLEX));
+
+	activity = flags & (BIT(TRIGGER_NETDEV_TX) |
+			    BIT(TRIGGER_NETDEV_RX));
+
+	if (link && duplex)
+		return -EINVAL;
+
+	if (solid) {
+		if (link) {
+			*solid = MV3310_LED_FUNC_LINK;
+		} else if (duplex) {
+			switch (duplex) {
+			case BIT(TRIGGER_NETDEV_HALF_DUPLEX):
+				*solid = MV3310_LED_FUNC_HALF_DUPLEX;
+				break;
+			case BIT(TRIGGER_NETDEV_FULL_DUPLEX):
+				*solid = MV3310_LED_FUNC_FULL_DUPLEX;
+				break;
+			default:
+				break;
+			}
+		} else {
+			*solid = MV3310_LED_FUNC_OFF;
+		}
+	}
+
+	if (blink) {
+		switch (activity) {
+		case 0:
+			*blink = MV3310_LED_FUNC_OFF;
+			break;
+		case BIT(TRIGGER_NETDEV_TX):
+			*blink = MV3310_LED_FUNC_TX;
+			break;
+		case BIT(TRIGGER_NETDEV_RX):
+			*blink = MV3310_LED_FUNC_RX;
+			break;
+		default:
+			*blink = MV3310_LED_FUNC_TX_RX;
+			break;
+		}
+	}
+
+	return 0;
+}
+
+static int mv3310_led_get(struct phy_device *phydev,
+			  struct mv3310_led *led,
+			  enum mv3310_led_func *solid,
+			  enum mv3310_led_func *blink,
+			  bool *slow_blink)
+{
+	int ctrl;
+
+	ctrl = phy_read_mmd(phydev, MDIO_MMD_VEND2,
+			    MV_V2_LED0_CONTROL + led->index);
+	if (ctrl < 0)
+		return ctrl;
+
+	*solid = (ctrl & MV_V2_LED_CONTROL_SOLID_FUNC_MASK) >>
+		MV_V2_LED_CONTROL_SOLID_FUNC_SHIFT;
+	*blink = (ctrl & MV_V2_LED_CONTROL_BLINK_FUNC_MASK) >>
+		MV_V2_LED_CONTROL_BLINK_FUNC_SHIFT;
+
+	*slow_blink = !!(ctrl & MV_V2_LED_CONTROL_BLINK_RATE);
+	return 0;
+}
+
+static int mv3310_led_set(struct phy_device *phydev,
+			  struct mv3310_led *led,
+			  enum mv3310_led_func solid,
+			  enum mv3310_led_func blink,
+			  bool slow_blink)
+{
+	u16 ctrl = led->fw_ctrl;
+
+	ctrl &= ~MV_V2_LED_CONTROL_SOLID_FUNC_MASK;
+	ctrl &= ~MV_V2_LED_CONTROL_BLINK_FUNC_MASK;
+	ctrl &= ~MV_V2_LED_CONTROL_BLINK_RATE;
+
+	ctrl |= solid << MV_V2_LED_CONTROL_SOLID_FUNC_SHIFT;
+	ctrl |= blink << MV_V2_LED_CONTROL_BLINK_FUNC_SHIFT;
+
+	if (slow_blink)
+		ctrl |= MV_V2_LED_CONTROL_BLINK_RATE;
+
+	return phy_write_mmd(phydev, MDIO_MMD_VEND2,
+			     MV_V2_LED0_CONTROL + led->index, ctrl);
+}
+
+enum mv3310_led_polarity {
+	MV3310_LED_POLARITY_ACTIVE_LOW = 0x0,
+	MV3310_LED_POLARITY_ACTIVE_HIGH = 0x1,
+	MV3310_LED_POLARITY_ACTIVE_LOW_TRISTATE = 0x2,
+	MV3310_LED_POLARITY_ACTIVE_HIGH_TRISTATE = 0x3,
+};
+
+static const char * const mv3310_led_polarity_name[] = {
+	[MV3310_LED_POLARITY_ACTIVE_LOW]	   = "active-low",
+	[MV3310_LED_POLARITY_ACTIVE_HIGH]	   = "active-high",
+	[MV3310_LED_POLARITY_ACTIVE_LOW_TRISTATE]  = "active-low-tristate",
+	[MV3310_LED_POLARITY_ACTIVE_HIGH_TRISTATE] = "active-high-tristate",
+};
+
+static int mv3310_led_polarity_from_str(const char *str,
+					enum mv3310_led_polarity *polarity)
+{
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(mv3310_led_polarity_name); i++) {
+		if (!mv3310_led_polarity_name[i])
+			continue;
+
+		if (!strcmp(mv3310_led_polarity_name[i], str)) {
+			*polarity = i;
+			return 0;
+		}
+	}
+
+	return -ENOENT;
+}
+
+static int mv3310_led_probe_of(struct phy_device *phydev,
+			       struct device_node *np)
+{
+	struct mv3310_priv *priv = dev_get_drvdata(&phydev->mdio.dev);
+	enum mv3310_led_polarity polarity;
+	struct mv3310_led *led;
+	const char *str;
+	u32 index;
+	u16 ctrl;
+	int err;
+
+	err = of_property_read_u32(np, "reg", &index);
+	if (err)
+		return err;
+
+	if (index >= MV3310_N_LEDS)
+		return -EINVAL;
+
+	led = &priv->led[index];
+	ctrl = led->fw_ctrl;
+
+	err = of_property_read_string(np, "marvell,polarity", &str);
+	err = err ? : mv3310_led_polarity_from_str(str, &polarity);
+	if (!err) {
+		ctrl &= ~MV_V2_LED_CONTROL_POLARITY_MASK;
+		ctrl |= polarity << MV_V2_LED_CONTROL_POLARITY_SHIFT;
+	}
+
+	if (ctrl != led->fw_ctrl) {
+		led->fw_ctrl = ctrl;
+
+		return phy_write_mmd(phydev, MDIO_MMD_VEND2,
+				     MV_V2_LED0_CONTROL + index, ctrl);
+	}
+
+	return 0;
+}
+
+static int mv3310_leds_probe(struct phy_device *phydev)
+{
+	struct mv3310_priv *priv = dev_get_drvdata(&phydev->mdio.dev);
+	struct device_node *node = phydev->mdio.dev.of_node;
+	struct device_node *pnp, *np;
+	int err, val, index;
+
+	/* Save the config left by HW reset or bootloader, to make
+	 * sure that we do not loose any polarity config made by
+	 * firmware. This will be overridden by info from DT, if
+	 * available.
+	 */
+	for (index = 0; index < MV3310_N_LEDS; index++) {
+		val = phy_read_mmd(phydev, MDIO_MMD_VEND2,
+				   MV_V2_LED0_CONTROL + index);
+		if (val < 0)
+			return val;
+
+		priv->led[index] = (struct mv3310_led) {
+			.index = index,
+			.fw_ctrl = val,
+		};
+	}
+
+	if (!node)
+		return 0;
+
+	pnp = of_get_child_by_name(node, "leds");
+	if (!pnp)
+		return 0;
+
+	for_each_available_child_of_node(pnp, np) {
+		err = mv3310_led_probe_of(phydev, np);
+		if (err)
+			return err;
+	}
+
+	return 0;
+}
+
+static int mv3310_led_brightness_set(struct phy_device *phydev,
+				     u8 index, enum led_brightness value)
+{
+	struct mv3310_priv *priv = dev_get_drvdata(&phydev->mdio.dev);
+	enum mv3310_led_func solid;
+	struct mv3310_led *led;
+
+	if (index >= MV3310_N_LEDS)
+		return -ENODEV;
+
+	led = &priv->led[index];
+
+	if (value == LED_OFF)
+		solid = MV3310_LED_FUNC_OFF;
+	else
+		solid = MV3310_LED_FUNC_ON;
+
+	return mv3310_led_set(phydev, led, solid, MV3310_LED_FUNC_OFF, false);
+}
+
+static int mv3310_led_blink_set(struct phy_device *phydev, u8 index,
+				unsigned long *delay_on,
+				unsigned long *delay_off)
+{
+	struct mv3310_priv *priv = dev_get_drvdata(&phydev->mdio.dev);
+	struct mv3310_led *led;
+	bool slow_blink;
+	int err;
+
+	if (index >= MV3310_N_LEDS)
+		return -ENODEV;
+
+	led = &priv->led[index];
+
+	if (*delay_on != *delay_off)
+		/* Defer anything other than 50% duty cycles to
+		 * software.
+		 */
+		return -EINVAL;
+
+	/* Accept values within ~20% of our supported rates (80ms or
+	 * 1300ms periods).
+	 */
+	if ((*delay_on >= 30) && (*delay_on <= 50))
+		slow_blink = false;
+	else if (((*delay_on >= 500) && (*delay_on <= 800)) || (*delay_on == 0))
+		slow_blink = true;
+	else
+		return -EINVAL;
+
+	err = mv3310_led_set(phydev, led, MV3310_LED_FUNC_OFF,
+			     MV3310_LED_FUNC_ON, slow_blink);
+	if (!err)
+		*delay_on = *delay_off = slow_blink ? 650 : 40;
+
+	return err;
+}
+
+static int mv3310_led_hw_is_supported(struct phy_device *phydev, u8 index,
+				      unsigned long flags)
+{
+	struct mv3310_priv *priv = dev_get_drvdata(&phydev->mdio.dev);
+	struct mv3310_led *led;
+
+	if (index >= MV3310_N_LEDS)
+		return -ENODEV;
+
+	led = &priv->led[index];
+
+	return mv3310_led_funcs_from_flags(led, flags, NULL, NULL);
+}
+
+static int mv3310_led_hw_control_set(struct phy_device *phydev, u8 index,
+				     unsigned long flags)
+{
+	struct mv3310_priv *priv = dev_get_drvdata(&phydev->mdio.dev);
+	enum mv3310_led_func solid, blink;
+	struct mv3310_led *led;
+	int err;
+
+	if (index >= MV3310_N_LEDS)
+		return -ENODEV;
+
+	led = &priv->led[index];
+
+	err = mv3310_led_funcs_from_flags(led, flags, &solid, &blink);
+	if (err)
+		return err;
+
+	return mv3310_led_set(phydev, led, solid, blink, false);
+}
+
+static int mv3310_led_hw_control_get(struct phy_device *phydev, u8 index,
+				     unsigned long *flags)
+{
+	struct mv3310_priv *priv = dev_get_drvdata(&phydev->mdio.dev);
+	enum mv3310_led_func solid, blink;
+	struct mv3310_led *led;
+	bool slow_blink;
+	int err;
+
+	if (index >= MV3310_N_LEDS)
+		return -ENODEV;
+
+	led = &priv->led[index];
+
+	err = mv3310_led_get(phydev, led, &solid, &blink, &slow_blink);
+	if (err)
+		return err;
+
+	return  mv3310_led_flags_from_funcs(led, solid, blink, flags);
+}
+
 #ifdef CONFIG_HWMON
 static umode_t mv3310_hwmon_is_visible(const void *data,
 				       enum hwmon_sensor_types type,
@@ -719,6 +1145,10 @@ static int mv3310_probe(struct phy_device *phydev)
 	if (ret)
 		return ret;
 
+	ret = chip->leds_probe ? chip->leds_probe(phydev) : 0;
+	if (ret)
+		return ret;
+
 	chip->init_supported_interfaces(priv->supported_interfaces);
 
 	return phy_sfp_probe(phydev, &mv3310_sfp_ops);
@@ -1371,6 +1801,7 @@ static void mv2111_init_supported_interfaces(unsigned long *mask)
 static const struct mv3310_chip mv3310_type = {
 	.has_downshift = mv3310_has_downshift,
 	.init_supported_interfaces = mv3310_init_supported_interfaces,
+	.leds_probe = mv3310_leds_probe,
 	.get_mactype = mv3310_get_mactype,
 	.set_mactype = mv3310_set_mactype,
 	.select_mactype = mv3310_select_mactype,
@@ -1579,6 +2010,11 @@ static struct phy_driver mv3310_drivers[] = {
 		.set_loopback	= genphy_c45_loopback,
 		.get_wol	= mv3110_get_wol,
 		.set_wol	= mv3110_set_wol,
+		.led_brightness_set = mv3310_led_brightness_set,
+		.led_blink_set	= mv3310_led_blink_set,
+		.led_hw_is_supported = mv3310_led_hw_is_supported,
+		.led_hw_control_set = mv3310_led_hw_control_set,
+		.led_hw_control_get = mv3310_led_hw_control_get,
 	},
 	{
 		.phy_id		= MARVELL_PHY_ID_88X3310,
-- 
2.34.1


