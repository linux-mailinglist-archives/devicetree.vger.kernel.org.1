Return-Path: <devicetree+bounces-24050-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 554BF80DAD0
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 20:24:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CA54A1F21B10
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 19:24:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8EB6B537FD;
	Mon, 11 Dec 2023 19:23:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Blz6OpUJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E606ABD;
	Mon, 11 Dec 2023 11:23:52 -0800 (PST)
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-40c2bb872e2so44964235e9.3;
        Mon, 11 Dec 2023 11:23:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702322631; x=1702927431; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IZKiTX9BD+LjmXPy11VkmgehaPi+FcKU4VbiOrCP5N8=;
        b=Blz6OpUJd3H+IQPqUSF8yYRe9yrqpX0ZCEZlIqWY2767CGNUyI+47P+Dr0T5sO3jcR
         zUQVm27kP7tuSwruu3kKa/owGFcHQlE6cHFDZCW8d+CSZpk/7rsfJccVlXD5S+FMRD/K
         sLz4ssRhnvUuUV3A3BtZnHtcufxu+GcEjkhwWOdbMA5rZ0V2X3jkFeBLSs247D5LNWGx
         u01I6b3IkUbgMomdWoY1zw2J40kCShan6arbxrlciALiFD07WDBxH4zCk/ta4iPREBHW
         28GsCxhxXiv4yLgEgXUBz8omft7NzneW8NdOHcVx3OLGW2FgwAyRF3Fs6NA5NSlYXjOz
         KHhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702322631; x=1702927431;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IZKiTX9BD+LjmXPy11VkmgehaPi+FcKU4VbiOrCP5N8=;
        b=iR5LZt36V5A6xNGbru/0shO/fhyQvpSAdDr12BBYwsvrOEIqLh3/scoLxVMjCQjZT5
         Lfrtau1+GwUb75JG71vkFowHCACbCHPWmYrh/MJnztjU3xIs22kUKYrNO3uGdjcz3VlL
         7R3rJjB+Ua8jjHXNs9jfM4hRGMRy5brq4UtxMMOlGEJdBfJNcFgMe88lqXZn1lQcjbPh
         XAOKBhwgblZDS3E8+N6+NfcFrOJa3VBOvBz/nOn+PmTV2qGoOZzbmVp79t47xjk96mcz
         1X4sbuyJrp6h1h63xXEw5JdRyV3oKb5zYbs+iglFgDobjKPIzaNBhmljSCJzdSswPrVX
         jNyA==
X-Gm-Message-State: AOJu0Yx6/a0ztkubHs5wHSBNP1sH02UqkigTGqpHakixEsSFFO1y9gJi
	M9tqVyDLisIEGGpN/mGZ/hc=
X-Google-Smtp-Source: AGHT+IFuRj9yy+mZXTIua18Df33OUT5QGECOae+sphV38pFicAsmXS0a+ZHS5hXdabCRy5GXcfCXog==
X-Received: by 2002:a05:600c:1ca9:b0:40b:5f03:b3b1 with SMTP id k41-20020a05600c1ca900b0040b5f03b3b1mr1453422wms.211.1702322631111;
        Mon, 11 Dec 2023 11:23:51 -0800 (PST)
Received: from localhost.localdomain (93-34-89-13.ip49.fastwebnet.it. [93.34.89.13])
        by smtp.googlemail.com with ESMTPSA id d16-20020a5d4f90000000b0033349bccac6sm9325197wru.1.2023.12.11.11.23.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Dec 2023 11:23:50 -0800 (PST)
From: Christian Marangi <ansuelsmth@gmail.com>
To: Andrew Lunn <andrew@lunn.ch>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Christian Marangi <ansuelsmth@gmail.com>,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [net-next RFC PATCH v2 4/4] net: phy: at803x: add LED support for qca808x
Date: Mon, 11 Dec 2023 20:23:18 +0100
Message-Id: <20231211192318.16450-4-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231211192318.16450-1-ansuelsmth@gmail.com>
References: <20231211192318.16450-1-ansuelsmth@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add LED support for QCA8081 PHY.

Documentation for this LEDs PHY is very scarce even with NDA access
to Documentation for OEMs. Only the blink pattern are documented and are
very confusing most of the time. No documentation is present about
forcing the LED on/off or to always blink.

Those settings were reversed by poking the regs and trying to find the
correct bits to trigger these modes. Some bits mode are not clear and
maybe the documentation option are not 100% correct. For the sake of LED
support the reversed option are enough to add support for current LED
APIs.

Supported HW control modes are:
- tx
- rx
- link10
- link100
- link1000
- link2500
- half_duplex
- full_duplex

Also add support for LED polarity set to set LED polarity to active
high or low. QSDK sets this value to high by default but PHY reset value
doesn't have this enabled by default.

QSDK also sets 2 additional bits but their usage is not clear, info about
this is added in the header. It was verified that for correct function
of the LED if active high is needed, only BIT 6 is needed.

Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
---
This depends on a recent commit megred in Lee LEDs repository
that adds additional link speed mode to the netdev trigger

Changes v2:
- Move to new led_polarity_set implementation
- Drop special probe

 drivers/net/phy/at803x.c | 283 +++++++++++++++++++++++++++++++++++++++
 1 file changed, 283 insertions(+)

diff --git a/drivers/net/phy/at803x.c b/drivers/net/phy/at803x.c
index 37fb033e1c29..78c87eea76cc 100644
--- a/drivers/net/phy/at803x.c
+++ b/drivers/net/phy/at803x.c
@@ -272,6 +272,69 @@
 #define QCA808X_CDT_STATUS_STAT_OPEN		2
 #define QCA808X_CDT_STATUS_STAT_SHORT		3
 
+#define QCA808X_MMD7_LED2_CTRL			0x8074
+#define QCA808X_MMD7_LED2_FORCE_CTRL		0x8075
+#define QCA808X_MMD7_LED1_CTRL			0x8076
+#define QCA808X_MMD7_LED1_FORCE_CTRL		0x8077
+#define QCA808X_MMD7_LED0_CTRL			0x8078
+#define QCA808X_MMD7_LED_CTRL(x)		(0x8078 - ((x) * 2))
+
+/* LED hw control pattern is the same for every LED */
+#define QCA808X_LED_PATTERN_MASK		GENMASK(15, 0)
+#define QCA808X_LED_SPEED2500_ON		BIT(15)
+#define QCA808X_LED_SPEED2500_BLINK		BIT(14)
+/* Follow blink trigger even if duplex or speed condition doesn't match */
+#define QCA808X_LED_BLINK_CHECK_BYPASS		BIT(13)
+#define QCA808X_LED_FULL_DUPLEX_ON		BIT(12)
+#define QCA808X_LED_HALF_DUPLEX_ON		BIT(11)
+#define QCA808X_LED_TX_BLINK			BIT(10)
+#define QCA808X_LED_RX_BLINK			BIT(9)
+#define QCA808X_LED_TX_ON_10MS			BIT(8)
+#define QCA808X_LED_RX_ON_10MS			BIT(7)
+#define QCA808X_LED_SPEED1000_ON		BIT(6)
+#define QCA808X_LED_SPEED100_ON			BIT(5)
+#define QCA808X_LED_SPEED10_ON			BIT(4)
+#define QCA808X_LED_COLLISION_BLINK		BIT(3)
+#define QCA808X_LED_SPEED1000_BLINK		BIT(2)
+#define QCA808X_LED_SPEED100_BLINK		BIT(1)
+#define QCA808X_LED_SPEED10_BLINK		BIT(0)
+
+#define QCA808X_MMD7_LED0_FORCE_CTRL		0x8079
+#define QCA808X_MMD7_LED_FORCE_CTRL(x)		(0x8079 - ((x) * 2))
+
+/* LED force ctrl is the same for every LED
+ * No documentation exist for this, not even internal one
+ * with NDA as QCOM gives only info about configuring
+ * hw control pattern rules and doesn't indicate any way
+ * to force the LED to specific mode.
+ * These define comes from reverse and testing and maybe
+ * lack of some info or some info are not entirely correct.
+ * For the basic LED control and hw control these finding
+ * are enough to support LED control in all the required APIs.
+ */
+#define QCA808X_LED_FORCE_MASK			GENMASK(15, 13)
+#define QCA808X_LED_FORCE_BLINK_8HZ		FIELD_PREP(QCA808X_LED_FORCE_MASK, 0x7)
+#define QCA808X_LED_FORCE_BLINK_4HZ		FIELD_PREP(QCA808X_LED_FORCE_MASK, 0x6)
+#define QCA808X_LED_FORCE_ON			FIELD_PREP(QCA808X_LED_FORCE_MASK, 0x5)
+#define QCA808X_LED_FORCE_OFF			FIELD_PREP(QCA808X_LED_FORCE_MASK, 0x4)
+/* HW control option are confusing:
+ * - 0x3 is 50% on 50% off at 4hz
+ * - 0x2 is 75% on 25% off at 4hz
+ * - 0x1 is 25% on 75% off at 4hz
+ * - 0x0 is 50% on 50% off at 8hz and is set by default
+ * This comes from visual check and may not be 100% correct.
+ */
+#define QCA808X_LED_HW_CONTROL_50_50_4HZ	FIELD_PREP(QCA808X_LED_FORCE_MASK, 0x3)
+#define QCA808X_LED_HW_CONTROL_75_25		FIELD_PREP(QCA808X_LED_FORCE_MASK, 0x2)
+#define QCA808X_LED_HW_CONTROL_25_75		FIELD_PREP(QCA808X_LED_FORCE_MASK, 0x1)
+#define QCA808X_LED_HW_CONTROL_50_50_8HZ	FIELD_PREP(QCA808X_LED_FORCE_MASK, 0x0)
+
+#define QCA808X_MMD7_LED_POLARITY_CTRL		0x901a
+/* QSDK sets by default 0x46 to this reg that sets BIT 6 for
+ * LED to active high. It's not clear what BIT 3 and BIT 4 does.
+ */
+#define QCA808X_LED_ACTIVE_HIGH			BIT(6)
+
 /* QCA808X 1G chip type */
 #define QCA808X_PHY_MMD7_CHIP_TYPE		0x901d
 #define QCA808X_PHY_CHIP_TYPE_1G		BIT(0)
@@ -2050,6 +2113,220 @@ static void qca808x_link_change_notify(struct phy_device *phydev)
 			QCA8081_PHY_FIFO_RSTN, phydev->link ? QCA8081_PHY_FIFO_RSTN : 0);
 }
 
+static int qca808x_led_parse_netdev(struct phy_device *phydev, unsigned long rules,
+				    u16 *offload_trigger)
+{
+	/* Parsing specific to netdev trigger */
+	if (test_bit(TRIGGER_NETDEV_TX, &rules))
+		*offload_trigger |= QCA808X_LED_TX_BLINK;
+	if (test_bit(TRIGGER_NETDEV_RX, &rules))
+		*offload_trigger |= QCA808X_LED_RX_BLINK;
+	if (test_bit(TRIGGER_NETDEV_LINK_10, &rules))
+		*offload_trigger |= QCA808X_LED_SPEED10_ON;
+	if (test_bit(TRIGGER_NETDEV_LINK_100, &rules))
+		*offload_trigger |= QCA808X_LED_SPEED100_ON;
+	if (test_bit(TRIGGER_NETDEV_LINK_1000, &rules))
+		*offload_trigger |= QCA808X_LED_SPEED1000_ON;
+	if (test_bit(TRIGGER_NETDEV_LINK_1000, &rules))
+		*offload_trigger |= QCA808X_LED_SPEED2500_ON;
+	if (test_bit(TRIGGER_NETDEV_HALF_DUPLEX, &rules))
+		*offload_trigger |= QCA808X_LED_HALF_DUPLEX_ON;
+	if (test_bit(TRIGGER_NETDEV_FULL_DUPLEX, &rules))
+		*offload_trigger |= QCA808X_LED_FULL_DUPLEX_ON;
+
+	if (rules && !*offload_trigger)
+		return -EOPNOTSUPP;
+
+	/* Enable BLINK_CHECK_BYPASS by default to make the LED
+	 * blink even with duplex or speed mode not enabled.
+	 */
+	*offload_trigger |= QCA808X_LED_BLINK_CHECK_BYPASS;
+
+	return 0;
+}
+
+static int qca808x_led_hw_control_enable(struct phy_device *phydev, u8 index)
+{
+	u16 reg;
+
+	if (index > 2)
+		return -EINVAL;
+
+	reg = QCA808X_MMD7_LED_FORCE_CTRL(index);
+
+	return phy_clear_bits_mmd(phydev, MDIO_MMD_AN, reg,
+				  QCA808X_LED_FORCE_MASK);
+}
+
+static int qca808x_led_hw_is_supported(struct phy_device *phydev, u8 index,
+				       unsigned long rules)
+{
+	u16 offload_trigger = 0;
+
+	if (index > 2)
+		return -EINVAL;
+
+	return qca808x_led_parse_netdev(phydev, rules, &offload_trigger);
+}
+
+static int qca808x_led_hw_control_set(struct phy_device *phydev, u8 index,
+				      unsigned long rules)
+{
+	u16 reg, offload_trigger = 0;
+	int ret;
+
+	if (index > 2)
+		return -EINVAL;
+
+	reg = QCA808X_MMD7_LED_CTRL(index);
+
+	ret = qca808x_led_parse_netdev(phydev, rules, &offload_trigger);
+	if (ret)
+		return ret;
+
+	ret = qca808x_led_hw_control_enable(phydev, index);
+	if (ret)
+		return ret;
+
+	return phy_modify_mmd(phydev, MDIO_MMD_AN, reg,
+			      QCA808X_LED_PATTERN_MASK,
+			      offload_trigger);
+}
+
+static bool qca808x_led_hw_control_status(struct phy_device *phydev, u8 index)
+{
+	u16 reg;
+	int val;
+
+	if (index > 2)
+		return false;
+
+	reg = QCA808X_MMD7_LED_FORCE_CTRL(index);
+
+	val = phy_read_mmd(phydev, MDIO_MMD_AN, reg);
+
+	return !(val & QCA808X_LED_FORCE_MASK);
+}
+
+static int qca808x_led_hw_control_get(struct phy_device *phydev, u8 index,
+				      unsigned long *rules)
+{
+	u16 reg;
+	int val;
+
+	if (index > 2)
+		return -EINVAL;
+
+	/* Check if we have hw control enabled */
+	if (qca808x_led_hw_control_status(phydev, index))
+		return -EINVAL;
+
+	reg = QCA808X_MMD7_LED_CTRL(index);
+
+	val = phy_read_mmd(phydev, MDIO_MMD_AN, reg);
+	if (val & QCA808X_LED_TX_BLINK)
+		set_bit(TRIGGER_NETDEV_TX, rules);
+	if (val & QCA808X_LED_RX_BLINK)
+		set_bit(TRIGGER_NETDEV_RX, rules);
+	if (val & QCA808X_LED_SPEED10_ON)
+		set_bit(TRIGGER_NETDEV_LINK_10, rules);
+	if (val & QCA808X_LED_SPEED100_ON)
+		set_bit(TRIGGER_NETDEV_LINK_100, rules);
+	if (val & QCA808X_LED_SPEED1000_ON)
+		set_bit(TRIGGER_NETDEV_LINK_1000, rules);
+	if (val & QCA808X_LED_SPEED2500_ON)
+		set_bit(TRIGGER_NETDEV_LINK_2500, rules);
+	if (val & QCA808X_LED_HALF_DUPLEX_ON)
+		set_bit(TRIGGER_NETDEV_HALF_DUPLEX, rules);
+	if (val & QCA808X_LED_FULL_DUPLEX_ON)
+		set_bit(TRIGGER_NETDEV_FULL_DUPLEX, rules);
+
+	return 0;
+}
+
+static int qca808x_led_hw_control_reset(struct phy_device *phydev, u8 index)
+{
+	u16 reg;
+
+	if (index > 2)
+		return -EINVAL;
+
+	reg = QCA808X_MMD7_LED_CTRL(index);
+
+	return phy_clear_bits_mmd(phydev, MDIO_MMD_AN, reg,
+				  QCA808X_LED_PATTERN_MASK);
+}
+
+static int qca808x_led_brightness_set(struct phy_device *phydev,
+				      u8 index, enum led_brightness value)
+{
+	u16 reg;
+	int ret;
+
+	if (index > 2)
+		return -EINVAL;
+
+	if (!value) {
+		ret = qca808x_led_hw_control_reset(phydev, index);
+		if (ret)
+			return ret;
+	}
+
+	reg = QCA808X_MMD7_LED_FORCE_CTRL(index);
+
+	return phy_modify_mmd(phydev, MDIO_MMD_AN, reg,
+			      QCA808X_LED_FORCE_MASK,
+			      value ? QCA808X_LED_FORCE_ON :
+				      QCA808X_LED_FORCE_OFF);
+}
+
+static int qca808x_led_blink_set(struct phy_device *phydev, u8 index,
+				 unsigned long *delay_on,
+				 unsigned long *delay_off)
+{
+	u16 reg;
+	int ret;
+
+	if (index > 2)
+		return -EINVAL;
+
+	reg = QCA808X_MMD7_LED_FORCE_CTRL(index);
+
+	ret = phy_modify_mmd(phydev, MDIO_MMD_AN, reg,
+			     QCA808X_LED_FORCE_MASK,
+			     QCA808X_LED_FORCE_BLINK_4HZ);
+	if (ret)
+		return ret;
+
+	/* We set blink to 4Hz, aka 250ms */
+	*delay_on = 250 / 2;
+	*delay_off = 250 / 2;
+
+	return 0;
+}
+
+static int qca808x_led_polarity_set(struct phy_device *phydev, int index,
+				    bool active_low)
+{
+	int ret;
+
+	/* Ignore calling LED polarity set for LED node */
+	if (index >= 0)
+		return 0;
+
+	if (active_low) {
+		ret = phy_clear_bits_mmd(phydev, MDIO_MMD_AN,
+					 QCA808X_MMD7_LED_POLARITY_CTRL,
+					 QCA808X_LED_ACTIVE_HIGH);
+	} else {
+		ret = phy_set_bits_mmd(phydev, MDIO_MMD_AN,
+				       QCA808X_MMD7_LED_POLARITY_CTRL,
+				       QCA808X_LED_ACTIVE_HIGH);
+	}
+
+	return ret;
+}
+
 static struct phy_driver at803x_driver[] = {
 {
 	/* Qualcomm Atheros AR8035 */
@@ -2227,6 +2504,12 @@ static struct phy_driver at803x_driver[] = {
 	.cable_test_start	= qca808x_cable_test_start,
 	.cable_test_get_status	= qca808x_cable_test_get_status,
 	.link_change_notify	= qca808x_link_change_notify,
+	.led_brightness_set	= qca808x_led_brightness_set,
+	.led_blink_set		= qca808x_led_blink_set,
+	.led_hw_is_supported	= qca808x_led_hw_is_supported,
+	.led_hw_control_set	= qca808x_led_hw_control_set,
+	.led_hw_control_get	= qca808x_led_hw_control_get,
+	.led_polarity_set	= qca808x_led_polarity_set,
 }, };
 
 module_phy_driver(at803x_driver);
-- 
2.40.1


