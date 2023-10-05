Return-Path: <devicetree+bounces-6217-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 67E2C7BA3CF
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 17:59:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 999E2B20A0E
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 15:59:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 46515339A6;
	Thu,  5 Oct 2023 15:59:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="kThq2dA9"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4E11328D2
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 15:59:19 +0000 (UTC)
Received: from relay8-d.mail.gandi.net (relay8-d.mail.gandi.net [217.70.183.201])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 01D251FC2;
	Thu,  5 Oct 2023 08:59:17 -0700 (PDT)
Received: by mail.gandi.net (Postfix) with ESMTPSA id F08F71BF212;
	Thu,  5 Oct 2023 15:59:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1696521556;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=aGKTwONKSfoZzpn2n3JSkVgAv7XwGFmEAvr55ZBB+Go=;
	b=kThq2dA9mg6lXKkMVJK+SStPNlI+PSaAURbLkfhnE7QiJGX6Fdtn3qEPUp4K48j0lUvhAd
	w6Zq4TiANeUnV1YI3jWKyP03QGAuAWir3N9sIKN5eJV1Mwn2QgJ7Pof75WvzSh5XJKJOGk
	LWf0op/24SDiJ7wRbwEgs9FYHJNTTSnWZT0ehK23okOMaUma+2KOKZoRoMjh9S3hFHgJqr
	QqA4y0Gyht9/MY88Rb6JCJDjj9ZtFyGyjrzXpVH3UR+byy86F6//LuWJ4b95pqW0sWfqhj
	N2szJGoGyy0ga7cl+9O7nC2nLQaYIR26c++KrDRmH5fw3CzlMpzCm3aYCkZ0Aw==
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
Subject: [PATCH v12 3/7] nvmem: Move of_nvmem_layout_get_container() in another header
Date: Thu,  5 Oct 2023 17:59:03 +0200
Message-Id: <20231005155907.2701706-4-miquel.raynal@bootlin.com>
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
	RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_PASS,
	URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

nvmem-consumer.h is included by consumer devices, extracting data from
NVMEM devices whereas nvmem-provider.h is included by devices providing
NVMEM content.

The only users of of_nvmem_layout_get_container() outside of the core
are layout drivers, so better move its prototype to nvmem-provider.h.

While we do so, we also move the kdoc associated with the function to
the header rather than the .c file.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/nvmem/core.c           |  8 --------
 include/linux/nvmem-consumer.h |  7 -------
 include/linux/nvmem-provider.h | 14 ++++++++++++++
 3 files changed, 14 insertions(+), 15 deletions(-)

diff --git a/drivers/nvmem/core.c b/drivers/nvmem/core.c
index 286efd3f5a31..c63057a7a3b8 100644
--- a/drivers/nvmem/core.c
+++ b/drivers/nvmem/core.c
@@ -844,14 +844,6 @@ static int nvmem_add_cells_from_layout(struct nvmem_device *nvmem)
 }
 
 #if IS_ENABLED(CONFIG_OF)
-/**
- * of_nvmem_layout_get_container() - Get OF node to layout container.
- *
- * @nvmem: nvmem device.
- *
- * Return: a node pointer with refcount incremented or NULL if no
- * container exists. Use of_node_put() on it when done.
- */
 struct device_node *of_nvmem_layout_get_container(struct nvmem_device *nvmem)
 {
 	return of_get_child_by_name(nvmem->dev.of_node, "nvmem-layout");
diff --git a/include/linux/nvmem-consumer.h b/include/linux/nvmem-consumer.h
index 4523e4e83319..960728b10a11 100644
--- a/include/linux/nvmem-consumer.h
+++ b/include/linux/nvmem-consumer.h
@@ -241,7 +241,6 @@ struct nvmem_cell *of_nvmem_cell_get(struct device_node *np,
 				     const char *id);
 struct nvmem_device *of_nvmem_device_get(struct device_node *np,
 					 const char *name);
-struct device_node *of_nvmem_layout_get_container(struct nvmem_device *nvmem);
 #else
 static inline struct nvmem_cell *of_nvmem_cell_get(struct device_node *np,
 						   const char *id)
@@ -254,12 +253,6 @@ static inline struct nvmem_device *of_nvmem_device_get(struct device_node *np,
 {
 	return ERR_PTR(-EOPNOTSUPP);
 }
-
-static inline struct device_node *
-of_nvmem_layout_get_container(struct nvmem_device *nvmem)
-{
-	return NULL;
-}
 #endif /* CONFIG_NVMEM && CONFIG_OF */
 
 #endif  /* ifndef _LINUX_NVMEM_CONSUMER_H */
diff --git a/include/linux/nvmem-provider.h b/include/linux/nvmem-provider.h
index dae26295e6be..2905f9e6fc2a 100644
--- a/include/linux/nvmem-provider.h
+++ b/include/linux/nvmem-provider.h
@@ -205,6 +205,16 @@ void nvmem_layout_unregister(struct nvmem_layout *layout);
 const void *nvmem_layout_get_match_data(struct nvmem_device *nvmem,
 					struct nvmem_layout *layout);
 
+/**
+ * of_nvmem_layout_get_container() - Get OF node of layout container
+ *
+ * @nvmem: nvmem device
+ *
+ * Return: a node pointer with refcount incremented or NULL if no
+ * container exists. Use of_node_put() on it when done.
+ */
+struct device_node *of_nvmem_layout_get_container(struct nvmem_device *nvmem);
+
 #else
 
 static inline struct nvmem_device *nvmem_register(const struct nvmem_config *c)
@@ -242,6 +252,10 @@ nvmem_layout_get_match_data(struct nvmem_device *nvmem,
 	return NULL;
 }
 
+static inline struct device_node *of_nvmem_layout_get_container(struct nvmem_device *nvmem)
+{
+	return NULL;
+}
 #endif /* CONFIG_NVMEM */
 
 #define module_nvmem_layout_driver(__layout_driver)		\
-- 
2.34.1


