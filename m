Return-Path: <devicetree+bounces-275101-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +OUfB/ris2ktcQAAu9opvQ
	(envelope-from <devicetree+bounces-275101-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 11:12:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C0422281383
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 11:12:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 95F1730E7A22
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 10:08:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC11238F648;
	Fri, 13 Mar 2026 10:08:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from TWMBX01.aspeed.com (mail.aspeedtech.com [211.20.114.72])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9FDB538F622;
	Fri, 13 Mar 2026 10:08:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=211.20.114.72
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773396513; cv=none; b=qaQyC/ybqRx2jhYmbP6d8JX8/2jfLbxq3FePFioWDxmKhG0MLQFYqBS9Al9m7XEiPTIFLiCx8Y6Lk72e8N3fMzI/sNYxGQgwBuIFwLjSgYnxPhfizJUPPIrVDGXA3BUSAvT640EnQ64INzC/6MOYhfIZPoA//LpeAaz+oK9xCbk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773396513; c=relaxed/simple;
	bh=78sBqzD/xgUaZNF42FudqCrohUeibR7beHp9FUjNNAs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-ID:References:
	 In-Reply-To:To:CC; b=EUZ4Zugre4aL98ZsX9FZ9sh8HEKxGnnGri+QMIbAsjL3AT/uuhcnhZYEOu7Sh+GN46ql2RMNK+Uxf5EU5lu+HYzg1m6ZglkOcVbmsagXaxtTJxKjsZpb0HU8tlZkUU3j41aA7nY1Qm0pMc5nJKPQBOrYpvtrJ4cTOu1Kv0x6p/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=aspeedtech.com; spf=pass smtp.mailfrom=aspeedtech.com; arc=none smtp.client-ip=211.20.114.72
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=aspeedtech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=aspeedtech.com
Received: from TWMBX01.aspeed.com (192.168.0.62) by TWMBX01.aspeed.com
 (192.168.0.62) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1748.10; Fri, 13 Mar
 2026 18:08:12 +0800
Received: from [127.0.1.1] (192.168.10.13) by TWMBX01.aspeed.com
 (192.168.0.62) with Microsoft SMTP Server id 15.2.1748.10 via Frontend
 Transport; Fri, 13 Mar 2026 18:08:12 +0800
From: aspeedyh <yh_chung@aspeedtech.com>
Date: Fri, 13 Mar 2026 18:07:41 +0800
Subject: [PATCH 6/7] soc: aspeed: Add sysfs controls for flash backend
 selection
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20260313-upstream_espi-v1-6-9504428e1f43@aspeedtech.com>
References: <20260313-upstream_espi-v1-0-9504428e1f43@aspeedtech.com>
In-Reply-To: <20260313-upstream_espi-v1-0-9504428e1f43@aspeedtech.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, "Andrew
 Jeffery" <andrew@codeconstruct.com.au>, Ryan Chen <ryan_chen@aspeedtech.com>,
	Philipp Zabel <p.zabel@pengutronix.de>
CC: <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-aspeed@lists.ozlabs.org>, <linux-kernel@vger.kernel.org>,
	<openbmc@lists.ozlabs.org>, <maciej.lawniczak@intel.com>, aspeedyh
	<yh_chung@aspeedtech.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773396491; l=6770;
 i=yh_chung@aspeedtech.com; s=20260313; h=from:subject:message-id;
 bh=78sBqzD/xgUaZNF42FudqCrohUeibR7beHp9FUjNNAs=;
 b=QGkIR8fhoTHKqHX7qiGYNnqJAwkWw+OA6BoXb4376Fz9jYQGG7DV9cJp65M1QyLvL9AJD+q8M
 11B5HHphtSQDoNhDjDx6Jkwl5ne3yiNzTyotfRqUcwsySxms7ps06WA
X-Developer-Key: i=yh_chung@aspeedtech.com; a=ed25519;
 pk=o71dz0J8lpN+v0f3Mk4gT9PfVngADPC1Pex4aK6VigM=
X-Spamd-Result: default: False [1.54 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[aspeedtech.com : SPF not aligned (relaxed), No valid DKIM,quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275101-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[yh_chung@aspeedtech.com,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.964];
	MID_RHS_MATCH_FROM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[aspeedtech.com:email,aspeedtech.com:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: C0422281383
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

add following attributes to select backend storage for eSPI TAFS LUN
interface:
- flash_lun_path: specify path of backend storage for eSPI TAFS to share
  with host.
- flash_lun_readonly: set flash LUN to read-only or read-write mode to
  block host write operations.
- flash_lun_enable: open storage according to flash_lun_path as file for
  eSPI TAFS access.

Example usage:
- Select /dev/mtdblock8 as backend storage for eSPI TAFS LUN interface
  echo /dev/mtdblock8 > \
    /sys/bus/platform/devices/1e6ee000.espi/flash_lun_path
- Set LUN to read-only mode to block host write operations
  echo 1 > /sys/bus/platform/devices/1e6ee000.espi/flash_lun_readonly
- Enable flash LUN for eSPI TAFS access
  echo 1 > /sys/bus/platform/devices/1e6ee000.espi/flash_lun_enable

Signed-off-by: aspeedyh <yh_chung@aspeedtech.com>
---
 drivers/soc/aspeed/espi/aspeed-espi.c | 218 ++++++++++++++++++++++++++++++++++
 1 file changed, 218 insertions(+)

diff --git a/drivers/soc/aspeed/espi/aspeed-espi.c b/drivers/soc/aspeed/espi/aspeed-espi.c
index 7d58c78ed397..2c8f9641174d 100644
--- a/drivers/soc/aspeed/espi/aspeed-espi.c
+++ b/drivers/soc/aspeed/espi/aspeed-espi.c
@@ -12,12 +12,224 @@
 #include <linux/of.h>
 #include <linux/platform_device.h>
 #include <linux/reset.h>
+#include <linux/kstrtox.h>
+#include <linux/slab.h>
+#include <linux/string.h>
 
 #include "aspeed-espi.h"
 #include "aspeed-espi-comm.h"
 #include "ast2600-espi.h"
 #include "espi_storage.h"
 
+static ssize_t flash_lun_path_show(struct device *dev,
+				   struct device_attribute *attr, char *buf)
+{
+	struct aspeed_espi_flash *flash;
+	struct aspeed_espi *espi;
+	ssize_t rc;
+
+	espi = dev_get_drvdata(dev);
+
+	if (!espi)
+		return -ENODEV;
+
+	flash = &espi->flash;
+
+	mutex_lock(&flash->lun_mtx);
+	rc = scnprintf(buf, PAGE_SIZE, "%s\n", flash->lun_path);
+	mutex_unlock(&flash->lun_mtx);
+
+	return rc;
+}
+
+static ssize_t flash_lun_path_store(struct device *dev,
+				    struct device_attribute *attr,
+				    const char *buf, size_t count)
+{
+	char tmp[ASPEED_ESPI_LUN_PATH_MAX];
+	struct aspeed_espi_flash *flash;
+	struct aspeed_espi *espi;
+	size_t len;
+
+	espi = dev_get_drvdata(dev);
+	if (!espi)
+		return -ENODEV;
+
+	flash = &espi->flash;
+
+	len = strnlen(buf, count);
+	if (len && buf[len - 1] == '\n')
+		len--;
+
+	if (len >= sizeof(tmp))
+		return -ENAMETOOLONG;
+
+	memcpy(tmp, buf, len);
+	tmp[len] = '\0';
+
+	mutex_lock(&flash->lun_mtx);
+	if (flash->lun && flash->lun->filp) {
+		mutex_unlock(&flash->lun_mtx);
+		return -EBUSY;
+	}
+
+	strscpy(flash->lun_path, tmp, sizeof(flash->lun_path));
+	dev_info(dev, "flash lun path set to %s\n", flash->lun_path);
+	mutex_unlock(&flash->lun_mtx);
+
+	return count;
+}
+
+static ssize_t flash_lun_readonly_show(struct device *dev,
+				       struct device_attribute *attr, char *buf)
+{
+	struct aspeed_espi_flash *flash;
+	struct aspeed_espi *espi;
+	ssize_t rc;
+
+	espi = dev_get_drvdata(dev);
+	if (!espi)
+		return -ENODEV;
+
+	flash = &espi->flash;
+
+	mutex_lock(&flash->lun_mtx);
+	rc = scnprintf(buf, PAGE_SIZE, "%u\n", flash->lun_ro);
+	mutex_unlock(&flash->lun_mtx);
+
+	return rc;
+}
+
+static ssize_t flash_lun_readonly_store(struct device *dev,
+					struct device_attribute *attr,
+					const char *buf, size_t count)
+{
+	struct aspeed_espi_flash *flash;
+	struct aspeed_espi *espi;
+	bool ro;
+	int rc;
+
+	espi = dev_get_drvdata(dev);
+	if (!espi)
+		return -ENODEV;
+
+	flash = &espi->flash;
+
+	rc = kstrtobool(buf, &ro);
+	if (rc)
+		return rc;
+
+	mutex_lock(&flash->lun_mtx);
+	if (flash->lun && flash->lun->filp) {
+		mutex_unlock(&flash->lun_mtx);
+		return -EBUSY;
+	}
+
+	flash->lun_ro = ro;
+	dev_info(dev, "flash lun readonly set to %u\n", flash->lun_ro);
+	mutex_unlock(&flash->lun_mtx);
+
+	return count;
+}
+
+static ssize_t flash_lun_enable_show(struct device *dev,
+				     struct device_attribute *attr, char *buf)
+{
+	struct aspeed_espi_flash *flash;
+	struct aspeed_espi *espi;
+	bool enabled;
+	ssize_t rc;
+
+	espi = dev_get_drvdata(dev);
+	if (!espi)
+		return -ENODEV;
+
+	flash = &espi->flash;
+
+	mutex_lock(&flash->lun_mtx);
+	enabled = flash->lun && flash->lun->filp;
+	mutex_unlock(&flash->lun_mtx);
+
+	rc = scnprintf(buf, PAGE_SIZE, "%u\n", enabled);
+	return rc;
+}
+
+static ssize_t flash_lun_enable_store(struct device *dev,
+				      struct device_attribute *attr,
+				      const char *buf, size_t count)
+{
+	struct aspeed_espi_flash *flash;
+	struct aspeed_espi *espi;
+	bool enable;
+	int rc = 0;
+
+	espi = dev_get_drvdata(dev);
+	if (!espi)
+		return -ENODEV;
+
+	flash = &espi->flash;
+
+	rc = kstrtobool(buf, &enable);
+	if (rc)
+		return rc;
+
+	mutex_lock(&flash->lun_mtx);
+	if (!flash->lun) {
+		flash->lun = devm_kzalloc(dev, sizeof(*flash->lun), GFP_KERNEL);
+		if (!flash->lun) {
+			rc = -ENOMEM;
+			goto out_unlock;
+		}
+	}
+
+	if (enable) {
+		if (flash->lun->filp)
+			goto out_unlock;
+		if (!flash->lun_path[0]) {
+			rc = -EINVAL;
+			goto out_unlock;
+		}
+
+		dev_info(dev, "flash lun enable: path=%s ro=%u\n",
+			 flash->lun_path, flash->lun_ro);
+		mutex_lock(&flash->tx_mtx);
+		rc = aspeed_espi_lun_open(flash->lun, flash->lun_path,
+					  flash->lun_ro, false);
+		mutex_unlock(&flash->tx_mtx);
+	} else {
+		if (!flash->lun->filp)
+			goto out_unlock;
+
+		dev_info(dev, "flash lun disable\n");
+		mutex_lock(&flash->tx_mtx);
+		aspeed_espi_lun_close(flash->lun);
+		mutex_unlock(&flash->tx_mtx);
+	}
+
+out_unlock:
+	mutex_unlock(&flash->lun_mtx);
+	if (rc) {
+		dev_err(dev, "flash lun enable=%u failed: %d\n", enable, rc);
+		return rc;
+	}
+
+	return count;
+}
+
+static DEVICE_ATTR_RW(flash_lun_path);
+static DEVICE_ATTR_RW(flash_lun_readonly);
+static DEVICE_ATTR_RW(flash_lun_enable);
+
+static struct attribute *aspeed_espi_flash_attrs[] = {
+	&dev_attr_flash_lun_path.attr,
+	&dev_attr_flash_lun_readonly.attr,
+	&dev_attr_flash_lun_enable.attr,
+	NULL,
+};
+
+static const struct attribute_group aspeed_espi_flash_attr_group = {
+	.attrs = aspeed_espi_flash_attrs,
+};
 
 struct aspeed_espi_ops {
 	void (*espi_pre_init)(struct aspeed_espi *espi);
@@ -336,6 +548,12 @@ static int aspeed_espi_probe(struct platform_device *pdev)
 		goto err_remove_perif;
 	}
 
+	rc = devm_device_add_group(dev, &aspeed_espi_flash_attr_group);
+	if (rc) {
+		dev_err(dev, "cannot add flash LUN sysfs group, rc=%d\n", rc);
+		goto err_remove_flash;
+	}
+
 	rc = devm_request_irq(dev, espi->irq, espi->ops->espi_isr, 0,
 			      dev_name(dev), espi);
 	if (rc) {

-- 
2.34.1


