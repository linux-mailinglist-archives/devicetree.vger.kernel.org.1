Return-Path: <devicetree+bounces-6214-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 214277BA3CC
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 17:59:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id C68EB282C5D
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 15:59:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 44610328DD;
	Thu,  5 Oct 2023 15:59:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="OycCdYD6"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A927328A3
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 15:59:18 +0000 (UTC)
Received: from relay8-d.mail.gandi.net (relay8-d.mail.gandi.net [IPv6:2001:4b98:dc4:8::228])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 019A36A8E;
	Thu,  5 Oct 2023 08:59:14 -0700 (PDT)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 0D4FE1BF209;
	Thu,  5 Oct 2023 15:59:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1696521553;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ek8z6qq1VdvF44JDUEP0S5+gwXqIdO59LstVSiFw/0A=;
	b=OycCdYD6veGEf3F9gxTneo0BiWUY4LInvlhaUBmPO8OzBRolI8XsQlIZ2JG9ME5gTiJjJn
	ugGB6Ji8y57zW48gHYyadYZXUALw7tJaYRy14SaspD5okplxaPhJfr69nreGYP7Ep2DxXE
	jXpSsYW9OyvPbqw26L0wYWB6tZD3ijN/vaieQBRZPtx+U784zlEZi6buDkZtL5rhZNYHlR
	xKIxUhhr6Oinqi2pB9U5UfdUHfUh9/IW9W+G3rwSoEtm1E1BusQXfxVLOhnUlg3WTFjama
	7sCEQbvLLFRWiIFhOM6fzlyr6TsWcj+ta3OWJFKq+DZF+LdhC/z5OiZB9wyB9A==
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Michael Walle <michael@walle.cc>,
	=?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>,
	Rob Herring <robh+dt@kernel.org>,
	Frank Rowand <frowand.list@gmail.com>,
	devicetree@vger.kernel.org,
	<linux-kernel@vger.kernel.org>,
	Robert Marko <robert.marko@sartura.hr>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Luka Perkov <luka.perkov@sartura.hr>,
	Randy Dunlap <rdunlap@infradead.org>,
	Chen-Yu Tsai <wenst@chromium.org>,
	Daniel Golle <daniel@makrotopia.org>,
	Miquel Raynal <miquel.raynal@bootlin.com>
Subject: [PATCH v12 1/7] of: device: Export of_device_make_bus_id()
Date: Thu,  5 Oct 2023 17:59:01 +0200
Message-Id: <20231005155907.2701706-2-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231005155907.2701706-1-miquel.raynal@bootlin.com>
References: <20231005155907.2701706-1-miquel.raynal@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-GND-Sasl: miquel.raynal@bootlin.com
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_PASS,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

This helper is really handy to create unique device names based on their
device tree path, we may need it outside of the OF core (in the NVMEM
subsystem) so let's export it. As this helper has nothing patform
specific, let's move it to of/device.c instead of of/platform.c so we
can add its prototype to of_device.h.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/of/device.c       | 41 +++++++++++++++++++++++++++++++++++++++
 drivers/of/platform.c     | 40 --------------------------------------
 include/linux/of_device.h |  6 ++++++
 3 files changed, 47 insertions(+), 40 deletions(-)

diff --git a/drivers/of/device.c b/drivers/of/device.c
index 1ca42ad9dd15..6e9572c4af83 100644
--- a/drivers/of/device.c
+++ b/drivers/of/device.c
@@ -304,3 +304,44 @@ int of_device_uevent_modalias(const struct device *dev, struct kobj_uevent_env *
 	return 0;
 }
 EXPORT_SYMBOL_GPL(of_device_uevent_modalias);
+
+/**
+ * of_device_make_bus_id - Use the device node data to assign a unique name
+ * @dev: pointer to device structure that is linked to a device tree node
+ *
+ * This routine will first try using the translated bus address to
+ * derive a unique name. If it cannot, then it will prepend names from
+ * parent nodes until a unique name can be derived.
+ */
+void of_device_make_bus_id(struct device *dev)
+{
+	struct device_node *node = dev->of_node;
+	const __be32 *reg;
+	u64 addr;
+	u32 mask;
+
+	/* Construct the name, using parent nodes if necessary to ensure uniqueness */
+	while (node->parent) {
+		/*
+		 * If the address can be translated, then that is as much
+		 * uniqueness as we need. Make it the first component and return
+		 */
+		reg = of_get_property(node, "reg", NULL);
+		if (reg && (addr = of_translate_address(node, reg)) != OF_BAD_ADDR) {
+			if (!of_property_read_u32(node, "mask", &mask))
+				dev_set_name(dev, dev_name(dev) ? "%llx.%x.%pOFn:%s" : "%llx.%x.%pOFn",
+					     addr, ffs(mask) - 1, node, dev_name(dev));
+
+			else
+				dev_set_name(dev, dev_name(dev) ? "%llx.%pOFn:%s" : "%llx.%pOFn",
+					     addr, node, dev_name(dev));
+			return;
+		}
+
+		/* format arguments only used if dev_name() resolves to NULL */
+		dev_set_name(dev, dev_name(dev) ? "%s:%s" : "%s",
+			     kbasename(node->full_name), dev_name(dev));
+		node = node->parent;
+	}
+}
+EXPORT_SYMBOL_GPL(of_device_make_bus_id);
diff --git a/drivers/of/platform.c b/drivers/of/platform.c
index f235ab55b91e..be32e28c6f55 100644
--- a/drivers/of/platform.c
+++ b/drivers/of/platform.c
@@ -97,46 +97,6 @@ static const struct of_device_id of_skipped_node_table[] = {
  * mechanism for creating devices from device tree nodes.
  */
 
-/**
- * of_device_make_bus_id - Use the device node data to assign a unique name
- * @dev: pointer to device structure that is linked to a device tree node
- *
- * This routine will first try using the translated bus address to
- * derive a unique name. If it cannot, then it will prepend names from
- * parent nodes until a unique name can be derived.
- */
-static void of_device_make_bus_id(struct device *dev)
-{
-	struct device_node *node = dev->of_node;
-	const __be32 *reg;
-	u64 addr;
-	u32 mask;
-
-	/* Construct the name, using parent nodes if necessary to ensure uniqueness */
-	while (node->parent) {
-		/*
-		 * If the address can be translated, then that is as much
-		 * uniqueness as we need. Make it the first component and return
-		 */
-		reg = of_get_property(node, "reg", NULL);
-		if (reg && (addr = of_translate_address(node, reg)) != OF_BAD_ADDR) {
-			if (!of_property_read_u32(node, "mask", &mask))
-				dev_set_name(dev, dev_name(dev) ? "%llx.%x.%pOFn:%s" : "%llx.%x.%pOFn",
-					     addr, ffs(mask) - 1, node, dev_name(dev));
-
-			else
-				dev_set_name(dev, dev_name(dev) ? "%llx.%pOFn:%s" : "%llx.%pOFn",
-					     addr, node, dev_name(dev));
-			return;
-		}
-
-		/* format arguments only used if dev_name() resolves to NULL */
-		dev_set_name(dev, dev_name(dev) ? "%s:%s" : "%s",
-			     kbasename(node->full_name), dev_name(dev));
-		node = node->parent;
-	}
-}
-
 /**
  * of_device_alloc - Allocate and initialize an of_device
  * @np: device node to assign to device
diff --git a/include/linux/of_device.h b/include/linux/of_device.h
index 2c7a3d4bc775..a72661e47faa 100644
--- a/include/linux/of_device.h
+++ b/include/linux/of_device.h
@@ -40,6 +40,9 @@ static inline int of_dma_configure(struct device *dev,
 {
 	return of_dma_configure_id(dev, np, force_dma, NULL);
 }
+
+void of_device_make_bus_id(struct device *dev);
+
 #else /* CONFIG_OF */
 
 static inline int of_driver_match_device(struct device *dev,
@@ -82,6 +85,9 @@ static inline int of_dma_configure(struct device *dev,
 {
 	return 0;
 }
+
+static inline void of_device_make_bus_id(struct device *dev) {}
+
 #endif /* CONFIG_OF */
 
 #endif /* _LINUX_OF_DEVICE_H */
-- 
2.34.1


