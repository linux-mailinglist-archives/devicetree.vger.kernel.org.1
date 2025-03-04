Return-Path: <devicetree+bounces-153722-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E05CA4DA13
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 11:21:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3387D3A8A74
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 10:21:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A60AF1FF1A0;
	Tue,  4 Mar 2025 10:20:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="AEjPPy+Q"
X-Original-To: devicetree@vger.kernel.org
Received: from relay6-d.mail.gandi.net (relay6-d.mail.gandi.net [217.70.183.198])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C2141F8720;
	Tue,  4 Mar 2025 10:20:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.70.183.198
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741083647; cv=none; b=q5D0grJeb9YctkGohEYTVvSMRF3XiC8v60W/yvGgwH/caRM717nwYo/yELGp8XSkIOCrSzbMsLD8tU5tg7gaXg4iSsEzxDmF3la21YLuOOi0F6iem6b7lLB3g8jXqhCZypoVF+03gLB+YRimxMNX8iF9vO90cNvfUN1URUsLRQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741083647; c=relaxed/simple;
	bh=VjwV+h9sspXWPsJlOVZ2R7oppsM3K70j2E+LcJ89zFc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=iIZUBw4aFocuIor6LGlcYyxA6cVjdGkEbtbfkbE3RtrNsKiAuUK8r/AZLIZWQJRovg/QVcR9daWMKYJvJwl7fsbYhbRH7L10/ICqX66DLPYdasKc74ga0J10hBMQXLo/DPUEYN/Xw+K5LDT4M+5HN4pI7TjYksoPq9bZU7B3/HI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=AEjPPy+Q; arc=none smtp.client-ip=217.70.183.198
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id 59383432BE;
	Tue,  4 Mar 2025 10:20:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1741083642;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=XoU0Dl8mVp1yHjvzEVvhKqdU5xCVsSHtAGbfAGk5jdo=;
	b=AEjPPy+QiG8BbnICoVVcbY0wxPbxvoyByl5PiW1MUDzbuBsh0yEve9vRALgqkqtR8AHNH8
	Z11kNHebgPyi1Vof06FuhswSRa6DguvtGzHnmKzwm9a+z1m3ZNJRKsrizyVS9mZWKYzEYV
	gouJUaqagk02XN6atZgjz/81RYEayuJW7znhuSONKjx3C+rSpJBMndMric9Tntr/jovFVK
	i6+HbjXLzI+8LTTczDdcIR9JfMaOwVngvbxlAOHmYKCKV9p6kT+7rv8LGJ3QItoubHaE2C
	ZRQ59hra5fkDW0TsPvTGTHIEbSIQto3I3szH9vtfCNfqmN4OovS18VjgeHGjhw==
From: Kory Maincent <kory.maincent@bootlin.com>
Date: Tue, 04 Mar 2025 11:18:51 +0100
Subject: [PATCH net-next v6 02/12] net: pse-pd: Add support for reporting
 events
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250304-feature_poe_port_prio-v6-2-3dc0c5ebaf32@bootlin.com>
References: <20250304-feature_poe_port_prio-v6-0-3dc0c5ebaf32@bootlin.com>
In-Reply-To: <20250304-feature_poe_port_prio-v6-0-3dc0c5ebaf32@bootlin.com>
To: Andrew Lunn <andrew@lunn.ch>, Oleksij Rempel <o.rempel@pengutronix.de>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Jonathan Corbet <corbet@lwn.net>, Donald Hunter <donald.hunter@gmail.com>, 
 Rob Herring <robh@kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>, 
 Simon Horman <horms@kernel.org>, Heiner Kallweit <hkallweit1@gmail.com>, 
 Russell King <linux@armlinux.org.uk>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, netdev@vger.kernel.org, 
 linux-doc@vger.kernel.org, Kyle Swenson <kyle.swenson@est.tech>, 
 Dent Project <dentproject@linuxfoundation.org>, kernel@pengutronix.de, 
 Maxime Chevallier <maxime.chevallier@bootlin.com>, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 "Kory Maincent (Dent Project)" <kory.maincent@bootlin.com>
X-Mailer: b4 0.15-dev-8cb71
X-GND-State: clean
X-GND-Score: -100
X-GND-Cause: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgddutddujeekucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuifetpfffkfdpucggtfgfnhhsuhgsshgtrhhisggvnecuuegrihhlohhuthemuceftddunecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpefhfffugggtgffkfhgjvfevofesthejredtredtjeenucfhrhhomhepmfhorhihucforghinhgtvghnthcuoehkohhrhidrmhgrihhntggvnhhtsegsohhothhlihhnrdgtohhmqeenucggtffrrghtthgvrhhnpeevgfdvgfektefgfefggeekudfggffhtdfffedtueetheejtddvledvvdelhedtveenucfkphepledtrdekledrudeifedruddvjeenucevlhhushhtvghrufhiiigvpedunecurfgrrhgrmhepihhnvghtpeeltddrkeelrdduieefrdduvdejpdhhvghloheplgduvdejrddtrddurddungdpmhgrihhlfhhrohhmpehkohhrhidrmhgrihhntggvnhhtsegsohhothhlihhnrdgtohhmpdhnsggprhgtphhtthhopedvjedprhgtphhtthhopehthhhomhgrshdrphgvthgriiiiohhnihessghoohhtlhhinhdrtghomhdprhgtphhtthhopehmrgigihhmvgdrtghhvghvrghllhhivghrsegsohhothhlihhnrdgtohhmpdhrtghpthhtoheptghorhgsvghtsehlfihnrdhnvghtpdhrtghpthhtoheplhhgihhrugifohhougesghhmrghilhdrtghomhdprhgtphhtthhopeguvghnthhprhhojhgvtghtsehlihhnuhigf
 hhouhhnuggrthhiohhnrdhorhhgpdhrtghpthhtohepkhhriihkodgutheskhgvrhhnvghlrdhorhhgpdhrtghpthhtohepkhgvrhhnvghlsehpvghnghhuthhrohhnihigrdguvgdprhgtphhtthhopegrnhgurhgvfieslhhunhhnrdgthh
X-GND-Sasl: kory.maincent@bootlin.com

From: Kory Maincent (Dent Project) <kory.maincent@bootlin.com>

Add support for devm_pse_irq_helper() to register PSE interrupts and report
events such as over-current or over-temperature conditions. This follows a
similar approach to the regulator API but also sends notifications using a
dedicated PSE ethtool netlink socket.

Introduce an attached_phydev field in the pse_control structure to store
the phydev attached to the PSE PI, ensuring that PSE ethtool notifications
are sent to the correct network interface.

Signed-off-by: Kory Maincent (Dent Project) <kory.maincent@bootlin.com>
---
Change in v6:
- Update pse-ntf netlink to u32 instead of bitset.
- Update commit message.

Change in v4:
- Fix netlink notification message issues.
- Use netlink bitset in ethtool_pse_send_ntf.
- Add kdoc.

Change in v3:
- Remove C33 prefix when it is not in the standards.
- Fix pse_to_regulator_notifs which could not report regulator events
  together.
- Fix deadlock issue.
- Save interrupt in pcdev structure for later use.

Change in v2:
- Add support for PSE ethtool notification.
- Saved the attached phy_device in the pse_control structure to know which
  interface should have the notification.
- Rethink devm_pse_irq_helper() without devm_regulator_irq_helper() call.
---
 Documentation/netlink/specs/ethtool.yaml       |  21 ++++
 Documentation/networking/ethtool-netlink.rst   |  19 +++
 drivers/net/mdio/fwnode_mdio.c                 |  26 ++--
 drivers/net/pse-pd/pse_core.c                  | 157 ++++++++++++++++++++++++-
 include/linux/ethtool_netlink.h                |   9 ++
 include/linux/pse-pd/pse.h                     |  24 +++-
 include/uapi/linux/ethtool.h                   |  15 +++
 include/uapi/linux/ethtool_netlink_generated.h |   9 ++
 net/ethtool/pse-pd.c                           |  42 +++++++
 9 files changed, 305 insertions(+), 17 deletions(-)

diff --git a/Documentation/netlink/specs/ethtool.yaml b/Documentation/netlink/specs/ethtool.yaml
index 655d8d10fe248..2417a8bf7f10b 100644
--- a/Documentation/netlink/specs/ethtool.yaml
+++ b/Documentation/netlink/specs/ethtool.yaml
@@ -1526,6 +1526,17 @@ attribute-sets:
         name: hwtstamp-flags
         type: nest
         nested-attributes: bitset
+  -
+    name: pse-ntf
+    attr-cnt-name: __ethtool-a-pse-ntf-cnt
+    attributes:
+      -
+        name: header
+        type: nest
+        nested-attributes: header
+      -
+        name: events
+        type: u32
 
 operations:
   enum-model: directional
@@ -2382,3 +2393,13 @@ operations:
           attributes: *tsconfig
         reply:
           attributes: *tsconfig
+    -
+      name: pse-ntf
+      doc: Notification for PSE events.
+
+      attribute-set: pse-ntf
+
+      event:
+        attributes:
+          - header
+          - events
diff --git a/Documentation/networking/ethtool-netlink.rst b/Documentation/networking/ethtool-netlink.rst
index b6e9af4d0f1b9..60f5ec7b80dda 100644
--- a/Documentation/networking/ethtool-netlink.rst
+++ b/Documentation/networking/ethtool-netlink.rst
@@ -290,6 +290,7 @@ Kernel to userspace:
   ``ETHTOOL_MSG_PHY_NTF``                  Ethernet PHY information change
   ``ETHTOOL_MSG_TSCONFIG_GET_REPLY``       hw timestamping configuration
   ``ETHTOOL_MSG_TSCONFIG_SET_REPLY``       new hw timestamping configuration
+  ``ETHTOOL_MSG_PSE_NTF``                  PSE events notification
   ======================================== =================================
 
 ``GET`` requests are sent by userspace applications to retrieve device
@@ -1896,6 +1897,24 @@ various existing products that document power consumption in watts rather than
 classes. If power limit configuration based on classes is needed, the
 conversion can be done in user space, for example by ethtool.
 
+PSE_NTF
+=======
+
+Notify PSE events.
+
+Notification contents:
+
+  ===============================  ======  ========================
+  ``ETHTOOL_A_PSE_HEADER``         nested  request header
+  ``ETHTOOL_A_PSE_EVENTS``         bitset  PSE events
+  ===============================  ======  ========================
+
+When set, the optional ``ETHTOOL_A_PSE_EVENTS`` attribute identifies the
+PSE events.
+
+.. kernel-doc:: include/uapi/linux/ethtool.h
+    :identifiers: ethtool_pse_events
+
 RSS_GET
 =======
 
diff --git a/drivers/net/mdio/fwnode_mdio.c b/drivers/net/mdio/fwnode_mdio.c
index aea0f03575689..9b41d4697a405 100644
--- a/drivers/net/mdio/fwnode_mdio.c
+++ b/drivers/net/mdio/fwnode_mdio.c
@@ -18,7 +18,8 @@ MODULE_LICENSE("GPL");
 MODULE_DESCRIPTION("FWNODE MDIO bus (Ethernet PHY) accessors");
 
 static struct pse_control *
-fwnode_find_pse_control(struct fwnode_handle *fwnode)
+fwnode_find_pse_control(struct fwnode_handle *fwnode,
+			struct phy_device *phydev)
 {
 	struct pse_control *psec;
 	struct device_node *np;
@@ -30,7 +31,7 @@ fwnode_find_pse_control(struct fwnode_handle *fwnode)
 	if (!np)
 		return NULL;
 
-	psec = of_pse_control_get(np);
+	psec = of_pse_control_get(np, phydev);
 	if (PTR_ERR(psec) == -ENOENT)
 		return NULL;
 
@@ -128,15 +129,9 @@ int fwnode_mdiobus_register_phy(struct mii_bus *bus,
 	u32 phy_id;
 	int rc;
 
-	psec = fwnode_find_pse_control(child);
-	if (IS_ERR(psec))
-		return PTR_ERR(psec);
-
 	mii_ts = fwnode_find_mii_timestamper(child);
-	if (IS_ERR(mii_ts)) {
-		rc = PTR_ERR(mii_ts);
-		goto clean_pse;
-	}
+	if (IS_ERR(mii_ts))
+		return PTR_ERR(mii_ts);
 
 	is_c45 = fwnode_device_is_compatible(child, "ethernet-phy-ieee802.3-c45");
 	if (is_c45 || fwnode_get_phy_id(child, &phy_id))
@@ -169,6 +164,12 @@ int fwnode_mdiobus_register_phy(struct mii_bus *bus,
 			goto clean_phy;
 	}
 
+	psec = fwnode_find_pse_control(child, phy);
+	if (IS_ERR(psec)) {
+		rc = PTR_ERR(psec);
+		goto unregister_phy;
+	}
+
 	phy->psec = psec;
 
 	/* phy->mii_ts may already be defined by the PHY driver. A
@@ -180,12 +181,13 @@ int fwnode_mdiobus_register_phy(struct mii_bus *bus,
 
 	return 0;
 
+unregister_phy:
+	if (is_acpi_node(child) || is_of_node(child))
+		phy_device_remove(phy);
 clean_phy:
 	phy_device_free(phy);
 clean_mii_ts:
 	unregister_mii_timestamper(mii_ts);
-clean_pse:
-	pse_control_put(psec);
 
 	return rc;
 }
diff --git a/drivers/net/pse-pd/pse_core.c b/drivers/net/pse-pd/pse_core.c
index 4602e26eb8c86..baccec984486c 100644
--- a/drivers/net/pse-pd/pse_core.c
+++ b/drivers/net/pse-pd/pse_core.c
@@ -7,6 +7,7 @@
 
 #include <linux/device.h>
 #include <linux/ethtool.h>
+#include <linux/ethtool_netlink.h>
 #include <linux/of.h>
 #include <linux/pse-pd/pse.h>
 #include <linux/regulator/driver.h>
@@ -23,6 +24,7 @@ static LIST_HEAD(pse_controller_list);
  * @list: list entry for the pcdev's PSE controller list
  * @id: ID of the PSE line in the PSE controller device
  * @refcnt: Number of gets of this pse_control
+ * @attached_phydev: PHY device pointer attached by the PSE control
  */
 struct pse_control {
 	struct pse_controller_dev *pcdev;
@@ -30,6 +32,7 @@ struct pse_control {
 	struct list_head list;
 	unsigned int id;
 	struct kref refcnt;
+	struct phy_device *attached_phydev;
 };
 
 static int of_load_single_pse_pi_pairset(struct device_node *node,
@@ -557,6 +560,151 @@ int devm_pse_controller_register(struct device *dev,
 }
 EXPORT_SYMBOL_GPL(devm_pse_controller_register);
 
+struct pse_irq {
+	struct pse_controller_dev *pcdev;
+	struct pse_irq_desc desc;
+	unsigned long *notifs;
+};
+
+/**
+ * pse_to_regulator_notifs - Convert PSE notifications to Regulator
+ *			     notifications
+ * @notifs: PSE notifications
+ *
+ * Return: Regulator notifications
+ */
+static unsigned long pse_to_regulator_notifs(unsigned long notifs)
+{
+	unsigned long rnotifs = 0;
+
+	if (notifs & ETHTOOL_PSE_EVENT_OVER_CURRENT)
+		rnotifs |= REGULATOR_EVENT_OVER_CURRENT;
+	if (notifs & ETHTOOL_PSE_EVENT_OVER_TEMP)
+		rnotifs |= REGULATOR_EVENT_OVER_TEMP;
+
+	return rnotifs;
+}
+
+/**
+ * pse_control_find_phy_by_id - Find PHY attached to the pse control id
+ * @pcdev: a pointer to the PSE
+ * @id: index of the PSE control
+ *
+ * Return: PHY device pointer or NULL
+ */
+static struct phy_device *
+pse_control_find_phy_by_id(struct pse_controller_dev *pcdev, int id)
+{
+	struct pse_control *psec;
+
+	mutex_lock(&pse_list_mutex);
+	list_for_each_entry(psec, &pcdev->pse_control_head, list) {
+		if (psec->id == id) {
+			mutex_unlock(&pse_list_mutex);
+			return psec->attached_phydev;
+		}
+	}
+	mutex_unlock(&pse_list_mutex);
+
+	return NULL;
+}
+
+/**
+ * pse_isr - IRQ handler for PSE
+ * @irq: irq number
+ * @data: pointer to user interrupt structure
+ *
+ * Return: irqreturn_t - status of IRQ
+ */
+static irqreturn_t pse_isr(int irq, void *data)
+{
+	struct netlink_ext_ack extack = {};
+	struct pse_controller_dev *pcdev;
+	unsigned long notifs_mask = 0;
+	struct pse_irq_desc *desc;
+	struct pse_irq *h = data;
+	int ret, i;
+
+	desc = &h->desc;
+	pcdev = h->pcdev;
+
+	/* Clear notifs mask */
+	memset(h->notifs, 0, pcdev->nr_lines * sizeof(*h->notifs));
+	mutex_lock(&pcdev->lock);
+	ret = desc->map_event(irq, pcdev, h->notifs, &notifs_mask);
+	mutex_unlock(&pcdev->lock);
+	if (ret || !notifs_mask)
+		return IRQ_NONE;
+
+	for_each_set_bit(i, &notifs_mask, pcdev->nr_lines) {
+		struct phy_device *phydev;
+		unsigned long notifs, rnotifs;
+
+		/* Do nothing PI not described */
+		if (!pcdev->pi[i].rdev)
+			continue;
+
+		notifs = h->notifs[i];
+		dev_dbg(h->pcdev->dev,
+			"Sending PSE notification EVT 0x%lx\n", notifs);
+
+		phydev = pse_control_find_phy_by_id(pcdev, i);
+		if (phydev)
+			ethnl_pse_send_ntf(phydev, notifs, &extack);
+		rnotifs = pse_to_regulator_notifs(notifs);
+		regulator_notifier_call_chain(pcdev->pi[i].rdev, rnotifs,
+					      NULL);
+	}
+
+	return IRQ_HANDLED;
+}
+
+/**
+ * devm_pse_irq_helper - Register IRQ based PSE event notifier
+ *
+ * @pcdev: a pointer to the PSE
+ * @irq: the irq value to be passed to request_irq
+ * @irq_flags: the flags to be passed to request_irq
+ * @d: PSE interrupt description
+ *
+ * Return: 0 on success and failure value on error
+ */
+int devm_pse_irq_helper(struct pse_controller_dev *pcdev, int irq,
+			int irq_flags, const struct pse_irq_desc *d)
+{
+	struct device *dev = pcdev->dev;
+	struct pse_irq *h;
+	int ret;
+
+	if (!d || !d->map_event || !d->name)
+		return -EINVAL;
+
+	h = devm_kzalloc(dev, sizeof(*h), GFP_KERNEL);
+	if (!h)
+		return -ENOMEM;
+
+	h->pcdev = pcdev;
+	h->desc = *d;
+	h->desc.name = devm_kstrdup(dev, d->name, GFP_KERNEL);
+	if (!h->desc.name)
+		return -ENOMEM;
+
+	h->notifs = devm_kcalloc(pcdev->dev, pcdev->nr_lines,
+				 sizeof(*h->notifs), GFP_KERNEL);
+	if (!h->notifs)
+		return -ENOMEM;
+
+	ret = devm_request_threaded_irq(dev, irq, NULL, pse_isr,
+					IRQF_ONESHOT | irq_flags,
+					h->desc.name, h);
+	if (ret)
+		dev_err(pcdev->dev, "Failed to request IRQ %d\n", irq);
+
+	pcdev->irq = irq;
+	return ret;
+}
+EXPORT_SYMBOL_GPL(devm_pse_irq_helper);
+
 /* PSE control section */
 
 static void __pse_control_release(struct kref *kref)
@@ -599,7 +747,8 @@ void pse_control_put(struct pse_control *psec)
 EXPORT_SYMBOL_GPL(pse_control_put);
 
 static struct pse_control *
-pse_control_get_internal(struct pse_controller_dev *pcdev, unsigned int index)
+pse_control_get_internal(struct pse_controller_dev *pcdev, unsigned int index,
+			 struct phy_device *phydev)
 {
 	struct pse_control *psec;
 	int ret;
@@ -638,6 +787,7 @@ pse_control_get_internal(struct pse_controller_dev *pcdev, unsigned int index)
 	psec->pcdev = pcdev;
 	list_add(&psec->list, &pcdev->pse_control_head);
 	psec->id = index;
+	psec->attached_phydev = phydev;
 	kref_init(&psec->refcnt);
 
 	return psec;
@@ -693,7 +843,8 @@ static int psec_id_xlate(struct pse_controller_dev *pcdev,
 	return pse_spec->args[0];
 }
 
-struct pse_control *of_pse_control_get(struct device_node *node)
+struct pse_control *of_pse_control_get(struct device_node *node,
+				       struct phy_device *phydev)
 {
 	struct pse_controller_dev *r, *pcdev;
 	struct of_phandle_args args;
@@ -743,7 +894,7 @@ struct pse_control *of_pse_control_get(struct device_node *node)
 	}
 
 	/* pse_list_mutex also protects the pcdev's pse_control list */
-	psec = pse_control_get_internal(pcdev, psec_id);
+	psec = pse_control_get_internal(pcdev, psec_id, phydev);
 
 out:
 	mutex_unlock(&pse_list_mutex);
diff --git a/include/linux/ethtool_netlink.h b/include/linux/ethtool_netlink.h
index aba91335273af..0fa1d8f59cf24 100644
--- a/include/linux/ethtool_netlink.h
+++ b/include/linux/ethtool_netlink.h
@@ -43,6 +43,9 @@ void ethtool_aggregate_rmon_stats(struct net_device *dev,
 				  struct ethtool_rmon_stats *rmon_stats);
 bool ethtool_dev_mm_supported(struct net_device *dev);
 
+void ethnl_pse_send_ntf(struct phy_device *phydev, unsigned long notif,
+			struct netlink_ext_ack *extack);
+
 #else
 static inline int ethnl_cable_test_alloc(struct phy_device *phydev, u8 cmd)
 {
@@ -120,6 +123,12 @@ static inline bool ethtool_dev_mm_supported(struct net_device *dev)
 	return false;
 }
 
+static inline void ethnl_pse_send_ntf(struct phy_device *phydev,
+				      unsigned long notif,
+				      struct netlink_ext_ack *extack)
+{
+}
+
 #endif /* IS_ENABLED(CONFIG_ETHTOOL_NETLINK) */
 
 static inline int ethnl_cable_test_result(struct phy_device *phydev, u8 pair,
diff --git a/include/linux/pse-pd/pse.h b/include/linux/pse-pd/pse.h
index c773eeb92d041..5d41a1c984bd4 100644
--- a/include/linux/pse-pd/pse.h
+++ b/include/linux/pse-pd/pse.h
@@ -7,6 +7,7 @@
 
 #include <linux/list.h>
 #include <uapi/linux/ethtool.h>
+#include <linux/regulator/driver.h>
 
 /* Maximum current in uA according to IEEE 802.3-2022 Table 145-1 */
 #define MAX_PI_CURRENT 1920000
@@ -37,6 +38,19 @@ struct ethtool_c33_pse_pw_limit_range {
 	u32 max;
 };
 
+/**
+ * struct pse_irq_desc - notification sender description for IRQ based events.
+ *
+ * @name: the visible name for the IRQ
+ * @map_event: driver callback to map IRQ status into PSE devices with events.
+ */
+struct pse_irq_desc {
+	const char *name;
+	int (*map_event)(int irq, struct pse_controller_dev *pcdev,
+			 unsigned long *notifs,
+			 unsigned long *notifs_mask);
+};
+
 /**
  * struct pse_control_config - PSE control/channel configuration.
  *
@@ -228,6 +242,7 @@ struct pse_pi {
  * @types: types of the PSE controller
  * @pi: table of PSE PIs described in this controller device
  * @no_of_pse_pi: flag set if the pse_pis devicetree node is not used
+ * @irq: PSE interrupt
  */
 struct pse_controller_dev {
 	const struct pse_controller_ops *ops;
@@ -241,6 +256,7 @@ struct pse_controller_dev {
 	enum ethtool_pse_types types;
 	struct pse_pi *pi;
 	bool no_of_pse_pi;
+	int irq;
 };
 
 #if IS_ENABLED(CONFIG_PSE_CONTROLLER)
@@ -249,8 +265,11 @@ void pse_controller_unregister(struct pse_controller_dev *pcdev);
 struct device;
 int devm_pse_controller_register(struct device *dev,
 				 struct pse_controller_dev *pcdev);
+int devm_pse_irq_helper(struct pse_controller_dev *pcdev, int irq,
+			int irq_flags, const struct pse_irq_desc *d);
 
-struct pse_control *of_pse_control_get(struct device_node *node);
+struct pse_control *of_pse_control_get(struct device_node *node,
+				       struct phy_device *phydev);
 void pse_control_put(struct pse_control *psec);
 
 int pse_ethtool_get_status(struct pse_control *psec,
@@ -268,7 +287,8 @@ bool pse_has_c33(struct pse_control *psec);
 
 #else
 
-static inline struct pse_control *of_pse_control_get(struct device_node *node)
+static inline struct pse_control *of_pse_control_get(struct device_node *node,
+						     struct phy_device *phydev)
 {
 	return ERR_PTR(-ENOENT);
 }
diff --git a/include/uapi/linux/ethtool.h b/include/uapi/linux/ethtool.h
index 84833cca29fec..5e99daf42d440 100644
--- a/include/uapi/linux/ethtool.h
+++ b/include/uapi/linux/ethtool.h
@@ -1002,6 +1002,21 @@ enum ethtool_c33_pse_pw_d_status {
 	ETHTOOL_C33_PSE_PW_D_STATUS_OTHERFAULT,
 };
 
+/**
+ * enum ethtool_pse_events - event list of the PSE controller.
+ * @ETHTOOL_PSE_EVENT_OVER_CURRENT: PSE output current is too high.
+ * @ETHTOOL_PSE_EVENT_OVER_TEMP: PSE in over temperature state.
+ *
+ * @ETHTOOL_PSE_EVENT_LAST: Last PSE event of the enum.
+ */
+
+enum ethtool_pse_events {
+	ETHTOOL_PSE_EVENT_OVER_CURRENT =	1 << 0,
+	ETHTOOL_PSE_EVENT_OVER_TEMP =		1 << 1,
+
+	ETHTOOL_PSE_EVENT_LAST = ETHTOOL_PSE_EVENT_OVER_TEMP,
+};
+
 /**
  * enum ethtool_podl_pse_admin_state - operational state of the PoDL PSE
  *	functions. IEEE 802.3-2018 30.15.1.1.2 aPoDLPSEAdminState
diff --git a/include/uapi/linux/ethtool_netlink_generated.h b/include/uapi/linux/ethtool_netlink_generated.h
index fe24c3459ac0f..549f01ea7a109 100644
--- a/include/uapi/linux/ethtool_netlink_generated.h
+++ b/include/uapi/linux/ethtool_netlink_generated.h
@@ -709,6 +709,14 @@ enum {
 	ETHTOOL_A_TSCONFIG_MAX = (__ETHTOOL_A_TSCONFIG_CNT - 1)
 };
 
+enum {
+	ETHTOOL_A_PSE_NTF_HEADER = 1,
+	ETHTOOL_A_PSE_NTF_EVENTS,
+
+	__ETHTOOL_A_PSE_NTF_CNT,
+	ETHTOOL_A_PSE_NTF_MAX = (__ETHTOOL_A_PSE_NTF_CNT - 1)
+};
+
 enum {
 	ETHTOOL_MSG_USER_NONE = 0,
 	ETHTOOL_MSG_STRSET_GET = 1,
@@ -813,6 +821,7 @@ enum {
 	ETHTOOL_MSG_PHY_NTF,
 	ETHTOOL_MSG_TSCONFIG_GET_REPLY,
 	ETHTOOL_MSG_TSCONFIG_SET_REPLY,
+	ETHTOOL_MSG_PSE_NTF,
 
 	__ETHTOOL_MSG_KERNEL_CNT,
 	ETHTOOL_MSG_KERNEL_MAX = (__ETHTOOL_MSG_KERNEL_CNT - 1)
diff --git a/net/ethtool/pse-pd.c b/net/ethtool/pse-pd.c
index 2819e2ba6be2d..6a9b18134736e 100644
--- a/net/ethtool/pse-pd.c
+++ b/net/ethtool/pse-pd.c
@@ -12,6 +12,7 @@
 #include <linux/ethtool_netlink.h>
 #include <linux/ethtool.h>
 #include <linux/phy.h>
+#include "bitset.h"
 
 struct pse_req_info {
 	struct ethnl_req_info base;
@@ -315,3 +316,44 @@ const struct ethnl_request_ops ethnl_pse_request_ops = {
 	.set			= ethnl_set_pse,
 	/* PSE has no notification */
 };
+
+void ethnl_pse_send_ntf(struct phy_device *phydev, unsigned long notifs,
+			struct netlink_ext_ack *extack)
+{
+	struct net_device *netdev = phydev->attached_dev;
+	struct genl_info info;
+	void *reply_payload;
+	struct sk_buff *skb;
+	int reply_len;
+	int ret;
+
+	if (!netdev || !notifs)
+		return;
+
+	ethnl_info_init_ntf(&info, ETHTOOL_MSG_PSE_NTF);
+	info.extack = extack;
+
+	reply_len = ethnl_reply_header_size() +
+		    nla_total_size(sizeof(u32)); /* _PSE_NTF_EVENTS */
+
+	skb = genlmsg_new(reply_len, GFP_KERNEL);
+	reply_payload = ethnl_bcastmsg_put(skb, ETHTOOL_MSG_PSE_NTF);
+	if (!reply_payload)
+		goto err_skb;
+
+	ret = ethnl_fill_reply_header(skb, netdev,
+				      ETHTOOL_A_PSE_NTF_HEADER);
+	if (ret < 0)
+		goto err_skb;
+
+	if (nla_put_u32(skb, ETHTOOL_A_PSE_NTF_EVENTS, notifs))
+		goto err_skb;
+
+	genlmsg_end(skb, reply_payload);
+	ethnl_multicast(skb, netdev);
+	return;
+
+err_skb:
+	nlmsg_free(skb);
+}
+EXPORT_SYMBOL_GPL(ethnl_pse_send_ntf);

-- 
2.34.1


