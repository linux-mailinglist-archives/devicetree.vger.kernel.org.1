Return-Path: <devicetree+bounces-18703-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 91F887F8734
	for <lists+devicetree@lfdr.de>; Sat, 25 Nov 2023 01:35:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 47B79281E56
	for <lists+devicetree@lfdr.de>; Sat, 25 Nov 2023 00:35:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1840C15AA;
	Sat, 25 Nov 2023 00:35:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gGVVX0dO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5576919A3;
	Fri, 24 Nov 2023 16:35:20 -0800 (PST)
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-40b27726369so17262365e9.0;
        Fri, 24 Nov 2023 16:35:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700872519; x=1701477319; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=170V99bF9fbfKYiUs+utHt6sltSk5a5hRXsRWfq9j/0=;
        b=gGVVX0dOKUyEJbsjr54y+MvfFzJockTdupn5qh7pNhTxCEThgrZzvW3gb7IOSpHZBm
         LG4UimB6Vxeymz3ZRgf6OeMDGUpdVwwXAMTN9D2a2G2ht97GpP2GVNd2Xy24tXMc/ahn
         qHZF6qH3vRdmXqq9GVQyKMjalbmJl4tdlwT6PrGRXu1KapGxuY2EWIy+FZCMb05MqcAV
         wAptUajlKt9kfzWkuvuVvTZTnEyIk7IyS9nZI0fS3N3HSApEhAqwN7qIrLD4j1GxRq+K
         rKRnh6SOfxbuvvghP6rsA+MfsMvqAploFKVDF88Cms3wvDFi1/zoPUul/RCHxl0F/zsk
         eLiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700872519; x=1701477319;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=170V99bF9fbfKYiUs+utHt6sltSk5a5hRXsRWfq9j/0=;
        b=kdbiSvuXaW49aRQ1enkJfC60FuOSPe4Ejejdhichn9gU+/ZXEFfBJdD6wyJsvPMpu+
         Tt8FW4NfnN1cca4wdSCp55mz3AXDUww88FbxCc2mb6afVWndHfRfLZWWQVZWJmefEWYi
         1v2m/GnsaWdlTaXbWorDwlV/wDoj8WwYDzKgjSkWePsIpHwrU0Sp0lEqwCan2vdMjpnw
         SHDLlreA/oV0HsmgNHjd7RWICnbGiMFzPPxI7ruKvvA9IM+8calX1vf4S9N3MC4ikQwy
         ait2Mhz86FvGqX0C4sMiu6CbaN0fFkySRRC7JjewQhJjwCOSodq3ac5KVJ/QZhN25NXl
         v9ow==
X-Gm-Message-State: AOJu0YzhiKiq0QgDAN5/XINqOXel019V1A/umXs3XOpbUAZBM9NM/uOl
	VMQ6CxaLdzti10lotGL+flo=
X-Google-Smtp-Source: AGHT+IEMHpczOiP3Q7wU7IBEqropKVuE8Jhtmw0bYQnfIP+ill6XeVc+Yn33EYb8aHrCInbyKgVw4w==
X-Received: by 2002:a05:600c:444b:b0:401:b204:3b97 with SMTP id v11-20020a05600c444b00b00401b2043b97mr4029095wmn.4.1700872518348;
        Fri, 24 Nov 2023 16:35:18 -0800 (PST)
Received: from localhost.localdomain (93-34-89-13.ip49.fastwebnet.it. [93.34.89.13])
        by smtp.googlemail.com with ESMTPSA id u13-20020a05600c00cd00b00405718cbeadsm4268005wmm.1.2023.11.24.16.35.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Nov 2023 16:35:18 -0800 (PST)
From: Christian Marangi <ansuelsmth@gmail.com>
To: "David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Andrew Lunn <andrew@lunn.ch>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Daniel Golle <daniel@makrotopia.org>,
	Qingfang Deng <dqfext@gmail.com>,
	SkyLake Huang <SkyLake.Huang@mediatek.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Vladimir Oltean <olteanv@gmail.com>,
	David Epping <david.epping@missinglinkelectronics.com>,
	Harini Katakam <harini.katakam@amd.com>,
	Christian Marangi <ansuelsmth@gmail.com>,
	"Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>,
	Robert Marko <robert.marko@sartura.hr>,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Subject: [net-next RFC PATCH v2 01/11] net: phy: extend PHY package API to support multiple global address
Date: Sat, 25 Nov 2023 01:11:17 +0100
Message-Id: <20231125001127.5674-2-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231125001127.5674-1-ansuelsmth@gmail.com>
References: <20231125001127.5674-1-ansuelsmth@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Current API for PHY package are limited to single address to configure
global settings for the PHY package.

It was found that some PHY package (for example the qca807x, a PHY
package that is shipped with a bundle of 5 PHY) require multiple PHY
address to configure global settings. An example scenario is a PHY that
have a dedicated PHY for PSGMII/serdes calibrarion and have a specific
PHY in the package where the global PHY mode is set and affects every
other PHY in the package.

Change the API in the following way:
- Make phy_package_join() require a list of address to be passed and the
  number of address in the list
- On shared data init, each address is the list is checked and added to
  the shared struct.
- Make __/phy_package_write/read() require an additional arg that
  select what global PHY address to use in the provided list.

Each user of this API is updated to follow this new implementation
following a pattern where an enum is defined to declare the index of the
addr and the addr list is passed.

Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
---
 drivers/net/phy/bcm54140.c        | 23 +++++++--
 drivers/net/phy/mediatek-ge-soc.c | 11 +++-
 drivers/net/phy/micrel.c          | 13 +++--
 drivers/net/phy/mscc/mscc.h       |  7 +++
 drivers/net/phy/mscc/mscc_main.c  | 16 ++++--
 drivers/net/phy/phy_device.c      | 85 ++++++++++++++++++++-----------
 include/linux/phy.h               | 51 +++++++++++++------
 7 files changed, 147 insertions(+), 59 deletions(-)

diff --git a/drivers/net/phy/bcm54140.c b/drivers/net/phy/bcm54140.c
index d43076592f81..89c735b386d3 100644
--- a/drivers/net/phy/bcm54140.c
+++ b/drivers/net/phy/bcm54140.c
@@ -128,6 +128,12 @@
 #define BCM54140_DEFAULT_DOWNSHIFT 5
 #define BCM54140_MAX_DOWNSHIFT 9
 
+enum bcm54140_global_phy {
+	BCM54140_BASE_ADDR = 0,
+
+	__BCM54140_GLOBAL_PHY_MAX,
+};
+
 struct bcm54140_priv {
 	int port;
 	int base_addr;
@@ -429,11 +435,13 @@ static int bcm54140_base_read_rdb(struct phy_device *phydev, u16 rdb)
 	int ret;
 
 	phy_lock_mdio_bus(phydev);
-	ret = __phy_package_write(phydev, MII_BCM54XX_RDB_ADDR, rdb);
+	ret = __phy_package_write(phydev, BCM54140_BASE_ADDR,
+				  MII_BCM54XX_RDB_ADDR, rdb);
 	if (ret < 0)
 		goto out;
 
-	ret = __phy_package_read(phydev, MII_BCM54XX_RDB_DATA);
+	ret = __phy_package_read(phydev, BCM54140_BASE_ADDR,
+				 MII_BCM54XX_RDB_DATA);
 
 out:
 	phy_unlock_mdio_bus(phydev);
@@ -446,11 +454,13 @@ static int bcm54140_base_write_rdb(struct phy_device *phydev,
 	int ret;
 
 	phy_lock_mdio_bus(phydev);
-	ret = __phy_package_write(phydev, MII_BCM54XX_RDB_ADDR, rdb);
+	ret = __phy_package_write(phydev, BCM54140_BASE_ADDR,
+				  MII_BCM54XX_RDB_ADDR, rdb);
 	if (ret < 0)
 		goto out;
 
-	ret = __phy_package_write(phydev, MII_BCM54XX_RDB_DATA, val);
+	ret = __phy_package_write(phydev, BCM54140_BASE_ADDR,
+				  MII_BCM54XX_RDB_DATA, val);
 
 out:
 	phy_unlock_mdio_bus(phydev);
@@ -570,6 +580,7 @@ static int bcm54140_get_base_addr_and_port(struct phy_device *phydev)
 
 static int bcm54140_probe(struct phy_device *phydev)
 {
+	int addrs[__BCM54140_GLOBAL_PHY_MAX];
 	struct bcm54140_priv *priv;
 	int ret;
 
@@ -583,7 +594,9 @@ static int bcm54140_probe(struct phy_device *phydev)
 	if (ret)
 		return ret;
 
-	devm_phy_package_join(&phydev->mdio.dev, phydev, priv->base_addr, 0);
+	addrs[BCM54140_BASE_ADDR] = priv->base_addr;
+	devm_phy_package_join(&phydev->mdio.dev, phydev, addrs,
+			      ARRAY_SIZE(addrs), 0);
 
 #if IS_ENABLED(CONFIG_HWMON)
 	mutex_init(&priv->alarm_lock);
diff --git a/drivers/net/phy/mediatek-ge-soc.c b/drivers/net/phy/mediatek-ge-soc.c
index 8a20d9889f10..3f2043fe05ed 100644
--- a/drivers/net/phy/mediatek-ge-soc.c
+++ b/drivers/net/phy/mediatek-ge-soc.c
@@ -298,6 +298,12 @@ struct mtk_socphy_priv {
 	unsigned long		led_state;
 };
 
+enum mtk_global_phy {
+	MTK_BASE_ADDR = 0,
+
+	__MTK_GLOBAL_PHY_MAX
+};
+
 struct mtk_socphy_shared {
 	u32			boottrap;
 	struct mtk_socphy_priv	priv[4];
@@ -1431,13 +1437,16 @@ static void mt798x_phy_leds_state_init(struct phy_device *phydev)
 static int mt7988_phy_probe(struct phy_device *phydev)
 {
 	struct mtk_socphy_shared *shared;
+	int addrs[__MTK_GLOBAL_PHY_MAX];
 	struct mtk_socphy_priv *priv;
 	int err;
 
 	if (phydev->mdio.addr > 3)
 		return -EINVAL;
 
-	err = devm_phy_package_join(&phydev->mdio.dev, phydev, 0,
+	addrs[MTK_BASE_ADDR] = 0;
+	err = devm_phy_package_join(&phydev->mdio.dev, phydev,
+				    addrs, ARRAY_SIZE(addrs),
 				    sizeof(struct mtk_socphy_shared));
 	if (err)
 		return err;
diff --git a/drivers/net/phy/micrel.c b/drivers/net/phy/micrel.c
index 08e3915001c3..94a4c7d9ae9c 100644
--- a/drivers/net/phy/micrel.c
+++ b/drivers/net/phy/micrel.c
@@ -328,6 +328,12 @@ struct kszphy_ptp_priv {
 	spinlock_t seconds_lock;
 };
 
+enum ksz_global_phy {
+	KSZ_BASE_ADDR = 0,
+
+	__KZS_GLOBAL_PHY_MAX,
+};
+
 struct kszphy_priv {
 	struct kszphy_ptp_priv ptp_priv;
 	const struct kszphy_type *type;
@@ -3274,8 +3280,8 @@ static int lan8814_release_coma_mode(struct phy_device *phydev)
 static int lan8814_probe(struct phy_device *phydev)
 {
 	const struct kszphy_type *type = phydev->drv->driver_data;
+	int addrs[__KZS_GLOBAL_PHY_MAX];
 	struct kszphy_priv *priv;
-	u16 addr;
 	int err;
 
 	priv = devm_kzalloc(&phydev->mdio.dev, sizeof(*priv), GFP_KERNEL);
@@ -3291,9 +3297,10 @@ static int lan8814_probe(struct phy_device *phydev)
 	/* Strap-in value for PHY address, below register read gives starting
 	 * phy address value
 	 */
-	addr = lanphy_read_page_reg(phydev, 4, 0) & 0x1F;
+	addrs[KSZ_BASE_ADDR] = lanphy_read_page_reg(phydev, 4, 0) & 0x1F;
 	devm_phy_package_join(&phydev->mdio.dev, phydev,
-			      addr, sizeof(struct lan8814_shared_priv));
+			      addrs, ARRAY_SIZE(addrs),
+			      sizeof(struct lan8814_shared_priv));
 
 	if (phy_package_init_once(phydev)) {
 		err = lan8814_release_coma_mode(phydev);
diff --git a/drivers/net/phy/mscc/mscc.h b/drivers/net/phy/mscc/mscc.h
index 7a962050a4d4..88da8eca2b94 100644
--- a/drivers/net/phy/mscc/mscc.h
+++ b/drivers/net/phy/mscc/mscc.h
@@ -416,6 +416,13 @@ struct vsc8531_private {
  * gpio_lock: used for PHC operations. Common for all PHYs as the load/save GPIO
  * is shared.
  */
+
+enum vsc85xx_global_phy {
+	VSC88XX_BASE_ADDR = 0,
+
+	__VSC8XX_GLOBAL_PHY_MAX,
+};
+
 struct vsc85xx_shared_private {
 	struct mutex gpio_lock;
 };
diff --git a/drivers/net/phy/mscc/mscc_main.c b/drivers/net/phy/mscc/mscc_main.c
index 4171f01d34e5..749d4a6be60c 100644
--- a/drivers/net/phy/mscc/mscc_main.c
+++ b/drivers/net/phy/mscc/mscc_main.c
@@ -711,7 +711,7 @@ int phy_base_write(struct phy_device *phydev, u32 regnum, u16 val)
 		dump_stack();
 	}
 
-	return __phy_package_write(phydev, regnum, val);
+	return __phy_package_write(phydev, VSC88XX_BASE_ADDR, regnum, val);
 }
 
 /* phydev->bus->mdio_lock should be locked when using this function */
@@ -722,7 +722,7 @@ int phy_base_read(struct phy_device *phydev, u32 regnum)
 		dump_stack();
 	}
 
-	return __phy_package_read(phydev, regnum);
+	return __phy_package_read(phydev, VSC88XX_BASE_ADDR, regnum);
 }
 
 u32 vsc85xx_csr_read(struct phy_device *phydev,
@@ -2204,6 +2204,7 @@ static int vsc85xx_read_status(struct phy_device *phydev)
 
 static int vsc8514_probe(struct phy_device *phydev)
 {
+	int addrs[__VSC8XX_GLOBAL_PHY_MAX];
 	struct vsc8531_private *vsc8531;
 	u32 default_mode[4] = {VSC8531_LINK_1000_ACTIVITY,
 	   VSC8531_LINK_100_ACTIVITY, VSC8531_LINK_ACTIVITY,
@@ -2216,8 +2217,9 @@ static int vsc8514_probe(struct phy_device *phydev)
 	phydev->priv = vsc8531;
 
 	vsc8584_get_base_addr(phydev);
+	addrs[VSC88XX_BASE_ADDR] = vsc8531->base_addr;
 	devm_phy_package_join(&phydev->mdio.dev, phydev,
-			      vsc8531->base_addr, 0);
+			      addrs, ARRAY_SIZE(addrs), 0);
 
 	vsc8531->nleds = 4;
 	vsc8531->supp_led_modes = VSC85XX_SUPP_LED_MODES;
@@ -2233,6 +2235,7 @@ static int vsc8514_probe(struct phy_device *phydev)
 
 static int vsc8574_probe(struct phy_device *phydev)
 {
+	int addrs[__VSC8XX_GLOBAL_PHY_MAX];
 	struct vsc8531_private *vsc8531;
 	u32 default_mode[4] = {VSC8531_LINK_1000_ACTIVITY,
 	   VSC8531_LINK_100_ACTIVITY, VSC8531_LINK_ACTIVITY,
@@ -2245,8 +2248,9 @@ static int vsc8574_probe(struct phy_device *phydev)
 	phydev->priv = vsc8531;
 
 	vsc8584_get_base_addr(phydev);
+	addrs[VSC88XX_BASE_ADDR] = vsc8531->base_addr;
 	devm_phy_package_join(&phydev->mdio.dev, phydev,
-			      vsc8531->base_addr, 0);
+			      addrs, ARRAY_SIZE(addrs), 0);
 
 	vsc8531->nleds = 4;
 	vsc8531->supp_led_modes = VSC8584_SUPP_LED_MODES;
@@ -2262,6 +2266,7 @@ static int vsc8574_probe(struct phy_device *phydev)
 
 static int vsc8584_probe(struct phy_device *phydev)
 {
+	int addrs[__VSC8XX_GLOBAL_PHY_MAX];
 	struct vsc8531_private *vsc8531;
 	u32 default_mode[4] = {VSC8531_LINK_1000_ACTIVITY,
 	   VSC8531_LINK_100_ACTIVITY, VSC8531_LINK_ACTIVITY,
@@ -2280,7 +2285,8 @@ static int vsc8584_probe(struct phy_device *phydev)
 	phydev->priv = vsc8531;
 
 	vsc8584_get_base_addr(phydev);
-	devm_phy_package_join(&phydev->mdio.dev, phydev, vsc8531->base_addr,
+	addrs[VSC88XX_BASE_ADDR] = vsc8531->base_addr;
+	devm_phy_package_join(&phydev->mdio.dev, phydev, addrs, ARRAY_SIZE(addrs),
 			      sizeof(struct vsc85xx_shared_private));
 
 	vsc8531->nleds = 4;
diff --git a/drivers/net/phy/phy_device.c b/drivers/net/phy/phy_device.c
index 478126f6b5bc..e016dbfb0d27 100644
--- a/drivers/net/phy/phy_device.c
+++ b/drivers/net/phy/phy_device.c
@@ -1648,59 +1648,80 @@ EXPORT_SYMBOL_GPL(phy_driver_is_genphy_10g);
 /**
  * phy_package_join - join a common PHY group
  * @phydev: target phy_device struct
- * @addr: cookie and PHY address for global register access
+ * @addrs: list of cookies and PHY addresses for global register access
+ * @addrs_num: num of cookies and PHY address in addrs list
  * @priv_size: if non-zero allocate this amount of bytes for private data
  *
  * This joins a PHY group and provides a shared storage for all phydevs in
  * this group. This is intended to be used for packages which contain
  * more than one PHY, for example a quad PHY transceiver.
  *
- * The addr parameter serves as a cookie which has to have the same value
+ * The addrs parameters serves as cookies which has to have the same values
  * for all members of one group and as a PHY address to access generic
  * registers of a PHY package. Usually, one of the PHY addresses of the
  * different PHYs in the package provides access to these global registers.
- * The address which is given here, will be used in the phy_package_read()
+ * The addresses which is given here, will be used in the phy_package_read()
  * and phy_package_write() convenience functions. If your PHY doesn't have
  * global registers you can just pick any of the PHY addresses.
+ * In some special PHY package, multiple PHY are used for global init of
+ * the entire PHY package. In the scenario, multiple address are defined.
+ * phy_package_read() and phy_package_write() requires an index to be passed
+ * to communicate which PHY to use for global init on read/write.
  *
  * This will set the shared pointer of the phydev to the shared storage.
  * If this is the first call for a this cookie the shared storage will be
  * allocated. If priv_size is non-zero, the given amount of bytes are
  * allocated for the priv member.
+ * A list is allocated based on the addrs_num value and the passed list in
+ * addrs is copied to the just allocated list.
  *
  * Returns < 1 on error, 0 on success. Esp. calling phy_package_join()
  * with the same cookie but a different priv_size is an error.
  */
-int phy_package_join(struct phy_device *phydev, int addr, size_t priv_size)
+int phy_package_join(struct phy_device *phydev, int *addrs, size_t addrs_num,
+		     size_t priv_size)
 {
 	struct mii_bus *bus = phydev->mdio.bus;
 	struct phy_package_shared *shared;
-	int ret;
+	int *shared_addrs;
+	int i, addr, ret;
 
-	if (addr < 0 || addr >= PHY_MAX_ADDR)
+	if (!addrs || !addrs_num)
 		return -EINVAL;
 
+	for (i = 0; i < addrs_num; i++)
+		if (addrs[i] < 0 || addrs[i] >= PHY_MAX_ADDR)
+			return -EINVAL;
+
 	mutex_lock(&bus->shared_lock);
-	shared = bus->shared[addr];
-	if (!shared) {
-		ret = -ENOMEM;
-		shared = kzalloc(sizeof(*shared), GFP_KERNEL);
-		if (!shared)
-			goto err_unlock;
-		if (priv_size) {
-			shared->priv = kzalloc(priv_size, GFP_KERNEL);
-			if (!shared->priv)
-				goto err_free;
-			shared->priv_size = priv_size;
+	for (i = 0; i < addrs_num; i++) {
+		addr = addrs[i];
+		shared = bus->shared[addr];
+		if (!shared) {
+			ret = -ENOMEM;
+			shared = kzalloc(sizeof(*shared), GFP_KERNEL);
+			if (!shared)
+				goto err_unlock;
+			if (priv_size) {
+				shared->priv = kzalloc(priv_size, GFP_KERNEL);
+				if (!shared->priv)
+					goto err_free;
+				shared->priv_size = priv_size;
+			}
+			shared_addrs = kmalloc_array(addrs_num, sizeof(*addrs), GFP_KERNEL);
+			if (!shared_addrs)
+				goto err_free_priv;
+			memcpy(shared_addrs, addrs, sizeof(*addrs) * addrs_num);
+			shared->addrs = shared_addrs;
+			shared->addrs_num = addrs_num;
+			refcount_set(&shared->refcnt, 1);
+			bus->shared[addr] = shared;
+		} else {
+			ret = -EINVAL;
+			if (priv_size && priv_size != shared->priv_size)
+				goto err_unlock;
+			refcount_inc(&shared->refcnt);
 		}
-		shared->addr = addr;
-		refcount_set(&shared->refcnt, 1);
-		bus->shared[addr] = shared;
-	} else {
-		ret = -EINVAL;
-		if (priv_size && priv_size != shared->priv_size)
-			goto err_unlock;
-		refcount_inc(&shared->refcnt);
 	}
 	mutex_unlock(&bus->shared_lock);
 
@@ -1708,6 +1729,8 @@ int phy_package_join(struct phy_device *phydev, int addr, size_t priv_size)
 
 	return 0;
 
+err_free_priv:
+	kfree(shared->priv);
 err_free:
 	kfree(shared);
 err_unlock:
@@ -1728,13 +1751,16 @@ void phy_package_leave(struct phy_device *phydev)
 {
 	struct phy_package_shared *shared = phydev->shared;
 	struct mii_bus *bus = phydev->mdio.bus;
+	int i;
 
 	if (!shared)
 		return;
 
 	if (refcount_dec_and_mutex_lock(&shared->refcnt, &bus->shared_lock)) {
-		bus->shared[shared->addr] = NULL;
+		for (i = 0; i < shared->addrs_num; i++)
+			bus->shared[shared->addrs[i]] = NULL;
 		mutex_unlock(&bus->shared_lock);
+		kfree(shared->addrs);
 		kfree(shared->priv);
 		kfree(shared);
 	}
@@ -1752,7 +1778,8 @@ static void devm_phy_package_leave(struct device *dev, void *res)
  * devm_phy_package_join - resource managed phy_package_join()
  * @dev: device that is registering this PHY package
  * @phydev: target phy_device struct
- * @addr: cookie and PHY address for global register access
+ * @addrs: list of cookies and PHY addresses for global register access
+ * @addrs_num: num of cookies and PHY address in addrs list
  * @priv_size: if non-zero allocate this amount of bytes for private data
  *
  * Managed phy_package_join(). Shared storage fetched by this function,
@@ -1760,7 +1787,7 @@ static void devm_phy_package_leave(struct device *dev, void *res)
  * phy_package_join() for more information.
  */
 int devm_phy_package_join(struct device *dev, struct phy_device *phydev,
-			  int addr, size_t priv_size)
+			  int *addrs, size_t addrs_num, size_t priv_size)
 {
 	struct phy_device **ptr;
 	int ret;
@@ -1770,7 +1797,7 @@ int devm_phy_package_join(struct device *dev, struct phy_device *phydev,
 	if (!ptr)
 		return -ENOMEM;
 
-	ret = phy_package_join(phydev, addr, priv_size);
+	ret = phy_package_join(phydev, addrs, addrs_num, priv_size);
 
 	if (!ret) {
 		*ptr = phydev;
diff --git a/include/linux/phy.h b/include/linux/phy.h
index 3cc52826f18e..c2bb3f0b9dda 100644
--- a/include/linux/phy.h
+++ b/include/linux/phy.h
@@ -327,7 +327,8 @@ struct mdio_bus_stats {
 
 /**
  * struct phy_package_shared - Shared information in PHY packages
- * @addr: Common PHY address used to combine PHYs in one package
+ * @addrs: List of common PHY addresses used to combine PHYs in one package
+ * @addrs_num: Number of common PHY addresses in addrs list
  * @refcnt: Number of PHYs connected to this shared data
  * @flags: Initialization of PHY package
  * @priv_size: Size of the shared private data @priv
@@ -338,7 +339,14 @@ struct mdio_bus_stats {
  * phy_package_leave().
  */
 struct phy_package_shared {
-	int addr;
+	/* addrs list pointer */
+	/* note that this pointer is shared between different phydevs.
+	 * It is allocated and freed automatically by phy_package_join() and
+	 * phy_package_leave(), the list passed to phy_package_join() is copied
+	 * to the new allocated list.
+	 */
+	int *addrs;
+	size_t addrs_num;
 	refcount_t refcnt;
 	unsigned long flags;
 	size_t priv_size;
@@ -1970,10 +1978,11 @@ int phy_ethtool_get_link_ksettings(struct net_device *ndev,
 int phy_ethtool_set_link_ksettings(struct net_device *ndev,
 				   const struct ethtool_link_ksettings *cmd);
 int phy_ethtool_nway_reset(struct net_device *ndev);
-int phy_package_join(struct phy_device *phydev, int addr, size_t priv_size);
+int phy_package_join(struct phy_device *phydev, int *addrs, size_t addrs_num,
+		     size_t priv_size);
 void phy_package_leave(struct phy_device *phydev);
 int devm_phy_package_join(struct device *dev, struct phy_device *phydev,
-			  int addr, size_t priv_size);
+			  int *addrs, size_t addrs_num, size_t priv_size);
 
 int __init mdio_bus_init(void);
 void mdio_bus_exit(void);
@@ -1996,46 +2005,56 @@ int __phy_hwtstamp_set(struct phy_device *phydev,
 		       struct kernel_hwtstamp_config *config,
 		       struct netlink_ext_ack *extack);
 
-static inline int phy_package_read(struct phy_device *phydev, u32 regnum)
+static inline int phy_package_read(struct phy_device *phydev,
+				   int global_phy_index, u32 regnum)
 {
 	struct phy_package_shared *shared = phydev->shared;
+	int addr;
 
-	if (!shared)
+	if (!shared || global_phy_index > shared->addrs_num - 1)
 		return -EIO;
 
-	return mdiobus_read(phydev->mdio.bus, shared->addr, regnum);
+	addr = shared->addrs[global_phy_index];
+	return mdiobus_read(phydev->mdio.bus, addr, regnum);
 }
 
-static inline int __phy_package_read(struct phy_device *phydev, u32 regnum)
+static inline int __phy_package_read(struct phy_device *phydev,
+				     int global_phy_index, u32 regnum)
 {
 	struct phy_package_shared *shared = phydev->shared;
+	int addr;
 
-	if (!shared)
+	if (!shared || global_phy_index > shared->addrs_num - 1)
 		return -EIO;
 
-	return __mdiobus_read(phydev->mdio.bus, shared->addr, regnum);
+	addr = shared->addrs[global_phy_index];
+	return __mdiobus_read(phydev->mdio.bus, addr, regnum);
 }
 
 static inline int phy_package_write(struct phy_device *phydev,
-				    u32 regnum, u16 val)
+				    int global_phy_index, u32 regnum, u16 val)
 {
 	struct phy_package_shared *shared = phydev->shared;
+	int addr;
 
-	if (!shared)
+	if (!shared || global_phy_index > shared->addrs_num - 1)
 		return -EIO;
 
-	return mdiobus_write(phydev->mdio.bus, shared->addr, regnum, val);
+	addr = shared->addrs[global_phy_index];
+	return mdiobus_write(phydev->mdio.bus, addr, regnum, val);
 }
 
 static inline int __phy_package_write(struct phy_device *phydev,
-				      u32 regnum, u16 val)
+				      int global_phy_index, u32 regnum, u16 val)
 {
 	struct phy_package_shared *shared = phydev->shared;
+	int addr;
 
-	if (!shared)
+	if (!shared || global_phy_index > shared->addrs_num - 1)
 		return -EIO;
 
-	return __mdiobus_write(phydev->mdio.bus, shared->addr, regnum, val);
+	addr = shared->addrs[global_phy_index];
+	return __mdiobus_write(phydev->mdio.bus, addr, regnum, val);
 }
 
 static inline bool __phy_package_set_once(struct phy_device *phydev,
-- 
2.40.1


