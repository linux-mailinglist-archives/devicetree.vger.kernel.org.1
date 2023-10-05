Return-Path: <devicetree+bounces-6221-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BB59B7BA3D3
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 17:59:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 072D1B2097D
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 15:59:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 73564339BE;
	Thu,  5 Oct 2023 15:59:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="S3TLUt4d"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33ECD339A1
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 15:59:27 +0000 (UTC)
Received: from relay8-d.mail.gandi.net (relay8-d.mail.gandi.net [IPv6:2001:4b98:dc4:8::228])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F0E9C658D;
	Thu,  5 Oct 2023 08:59:23 -0700 (PDT)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 391541BF204;
	Thu,  5 Oct 2023 15:59:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1696521562;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=d9qv6wW6nLIBV472azKIbA9MexkFiNMfPwaC3rv72TU=;
	b=S3TLUt4dJ2IVoFIkrPLeOOKXiT/pxodrgelbBcY++SpVPkVHMki9qhcKBpWnTZOfrBBTIe
	Qgtv6UUeBIrOqODaYwTB2CacZwEf/ZLKuFz97HxlZEuGOwANdTuiTVxDn4jP738sD+33uy
	8UHg53YrUeCIvuos7J3f7V0QFA0Q/jSWclutctO1Eg2dCjbhM5QMuq6K122G7AEU8Fn+P8
	KjW32EfQ/NP2YArvC0MX9K1Xqch6/VmkSKZ4ZEWLXwl0ntTnozZm/zCvvuCGBVKJ/fqaPa
	wBz6U2dGpQdjSh2pMvoemo4gXfVzy1xLPs82vQSH2PM0bz1TXJaF6BriS7z3xg==
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
Subject: [PATCH v12 7/7] nvmem: core: Expose cells through sysfs
Date: Thu,  5 Oct 2023 17:59:07 +0200
Message-Id: <20231005155907.2701706-8-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231005155907.2701706-1-miquel.raynal@bootlin.com>
References: <20231005155907.2701706-1-miquel.raynal@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-GND-Sasl: miquel.raynal@bootlin.com
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_PASS,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

The binary content of nvmem devices is available to the user so in the
easiest cases, finding the content of a cell is rather easy as it is
just a matter of looking at a known and fixed offset. However, nvmem
layouts have been recently introduced to cope with more advanced
situations, where the offset and size of the cells is not known in
advance or is dynamic. When using layouts, more advanced parsers are
used by the kernel in order to give direct access to the content of each
cell, regardless of its position/size in the underlying
device. Unfortunately, these information are not accessible by users,
unless by fully re-implementing the parser logic in userland.

Let's expose the cells and their content through sysfs to avoid these
situations. Of course the relevant NVMEM sysfs Kconfig option must be
enabled for this support to be available.

Not all nvmem devices expose cells. Indeed, the .bin_attrs attribute
group member will be filled at runtime only when relevant and will
remain empty otherwise. In this case, as the cells attribute group will
be empty, it will not lead to any additional folder/file creation.

Exposed cells are read-only. There is, in practice, everything in the
core to support a write path, but as I don't see any need for that, I
prefer to keep the interface simple (and probably safer). The interface
is documented as being in the "testing" state which means we can later
add a write attribute if though relevant.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
Tested-by: Rafał Miłecki <rafal@milecki.pl>
Tested-by: Chen-Yu Tsai <wenst@chromium.org>
---
 drivers/nvmem/core.c      | 131 +++++++++++++++++++++++++++++++++++++-
 drivers/nvmem/internals.h |   1 +
 2 files changed, 131 insertions(+), 1 deletion(-)

diff --git a/drivers/nvmem/core.c b/drivers/nvmem/core.c
index 6c6b0bac24f5..9ac74a6e38a0 100644
--- a/drivers/nvmem/core.c
+++ b/drivers/nvmem/core.c
@@ -299,6 +299,43 @@ static umode_t nvmem_bin_attr_is_visible(struct kobject *kobj,
 	return nvmem_bin_attr_get_umode(nvmem);
 }
 
+static struct nvmem_cell *nvmem_create_cell(struct nvmem_cell_entry *entry,
+					    const char *id, int index);
+
+static ssize_t nvmem_cell_attr_read(struct file *filp, struct kobject *kobj,
+				    struct bin_attribute *attr, char *buf,
+				    loff_t pos, size_t count)
+{
+	struct nvmem_cell_entry *entry;
+	struct nvmem_cell *cell = NULL;
+	size_t cell_sz, read_len;
+	void *content;
+
+	entry = attr->private;
+	cell = nvmem_create_cell(entry, entry->name, 0);
+	if (IS_ERR(cell))
+		return PTR_ERR(cell);
+
+	if (!cell)
+		return -EINVAL;
+
+	content = nvmem_cell_read(cell, &cell_sz);
+	if (IS_ERR(content)) {
+		read_len = PTR_ERR(content);
+		goto destroy_cell;
+	}
+
+	read_len = min_t(unsigned int, cell_sz - pos, count);
+	memcpy(buf, content + pos, read_len);
+	kfree(content);
+
+destroy_cell:
+	kfree_const(cell->id);
+	kfree(cell);
+
+	return read_len;
+}
+
 /* default read/write permissions */
 static struct bin_attribute bin_attr_rw_nvmem = {
 	.attr	= {
@@ -320,11 +357,21 @@ static const struct attribute_group nvmem_bin_group = {
 	.is_bin_visible = nvmem_bin_attr_is_visible,
 };
 
+/* Cell attributes will be dynamically allocated */
+static struct attribute_group nvmem_cells_group = {
+	.name		= "cells",
+};
+
 static const struct attribute_group *nvmem_dev_groups[] = {
 	&nvmem_bin_group,
 	NULL,
 };
 
+static const struct attribute_group *nvmem_cells_groups[] = {
+	&nvmem_cells_group,
+	NULL,
+};
+
 static struct bin_attribute bin_attr_nvmem_eeprom_compat = {
 	.attr	= {
 		.name	= "eeprom",
@@ -380,6 +427,68 @@ static void nvmem_sysfs_remove_compat(struct nvmem_device *nvmem,
 		device_remove_bin_file(nvmem->base_dev, &nvmem->eeprom);
 }
 
+static int nvmem_populate_sysfs_cells(struct nvmem_device *nvmem)
+{
+	struct bin_attribute **cells_attrs, *attrs;
+	struct nvmem_cell_entry *entry;
+	unsigned int ncells = 0, i = 0;
+	int ret = 0;
+
+	mutex_lock(&nvmem_mutex);
+
+	if (list_empty(&nvmem->cells) || nvmem->sysfs_cells_populated) {
+		nvmem_cells_group.bin_attrs = NULL;
+		goto unlock_mutex;
+	}
+
+	/* Allocate an array of attributes with a sentinel */
+	ncells = list_count_nodes(&nvmem->cells);
+	cells_attrs = devm_kcalloc(&nvmem->dev, ncells + 1,
+				   sizeof(struct bin_attribute *), GFP_KERNEL);
+	if (!cells_attrs) {
+		ret = -ENOMEM;
+		goto unlock_mutex;
+	}
+
+	attrs = devm_kcalloc(&nvmem->dev, ncells, sizeof(struct bin_attribute), GFP_KERNEL);
+	if (!attrs) {
+		ret = -ENOMEM;
+		goto unlock_mutex;
+	}
+
+	/* Initialize each attribute to take the name and size of the cell */
+	list_for_each_entry(entry, &nvmem->cells, node) {
+		sysfs_bin_attr_init(&attrs[i]);
+		attrs[i].attr.name = devm_kasprintf(&nvmem->dev, GFP_KERNEL,
+						    "%s@%x", entry->name,
+						    entry->offset);
+		attrs[i].attr.mode = 0444;
+		attrs[i].size = entry->bytes;
+		attrs[i].read = &nvmem_cell_attr_read;
+		attrs[i].private = entry;
+		if (!attrs[i].attr.name) {
+			ret = -ENOMEM;
+			goto unlock_mutex;
+		}
+
+		cells_attrs[i] = &attrs[i];
+		i++;
+	}
+
+	nvmem_cells_group.bin_attrs = cells_attrs;
+
+	ret = devm_device_add_groups(&nvmem->dev, nvmem_cells_groups);
+	if (ret)
+		goto unlock_mutex;
+
+	nvmem->sysfs_cells_populated = true;
+
+unlock_mutex:
+	mutex_unlock(&nvmem_mutex);
+
+	return ret;
+}
+
 #else /* CONFIG_NVMEM_SYSFS */
 
 static int nvmem_sysfs_setup_compat(struct nvmem_device *nvmem,
@@ -744,6 +853,7 @@ static int nvmem_add_cells_from_fixed_layout(struct nvmem_device *nvmem)
 int nvmem_layout_register(struct nvmem_layout *layout)
 {
 	struct nvmem_device *nvmem = dev_get_platdata(layout->dev);
+	int ret;
 
 	if (!layout->add_cells)
 		return -EINVAL;
@@ -752,7 +862,19 @@ int nvmem_layout_register(struct nvmem_layout *layout)
 	nvmem->layout = layout;
 
 	/* Populate the cells */
-	return nvmem->layout->add_cells(&nvmem->dev, nvmem, nvmem->layout);
+	ret = nvmem->layout->add_cells(&nvmem->dev, nvmem, nvmem->layout);
+	if (ret)
+		return ret;
+
+#ifdef CONFIG_NVMEM_SYSFS
+	ret = nvmem_populate_sysfs_cells(nvmem);
+	if (ret) {
+		nvmem_device_remove_all_cells(nvmem);
+		return ret;
+	}
+#endif
+
+	return 0;
 }
 EXPORT_SYMBOL_GPL(nvmem_layout_register);
 
@@ -910,11 +1032,18 @@ struct nvmem_device *nvmem_register(const struct nvmem_config *config)
 	if (rval)
 		goto err_destroy_layout;
 
+#ifdef CONFIG_NVMEM_SYSFS
+	rval = nvmem_populate_sysfs_cells(nvmem);
+	if (rval)
+		goto err_remove_dev;
+#endif
 
 	blocking_notifier_call_chain(&nvmem_notifier, NVMEM_ADD, nvmem);
 
 	return nvmem;
 
+err_remove_dev:
+	device_del(&nvmem->dev);
 err_destroy_layout:
 	nvmem_destroy_layout(nvmem);
 err_remove_cells:
diff --git a/drivers/nvmem/internals.h b/drivers/nvmem/internals.h
index 10a317d46fb6..bd24fc915298 100644
--- a/drivers/nvmem/internals.h
+++ b/drivers/nvmem/internals.h
@@ -31,6 +31,7 @@ struct nvmem_device {
 	struct device		*layout_dev;
 	struct nvmem_layout	*layout;
 	void *priv;
+	bool			sysfs_cells_populated;
 };
 
 #if IS_ENABLED(CONFIG_OF)
-- 
2.34.1


