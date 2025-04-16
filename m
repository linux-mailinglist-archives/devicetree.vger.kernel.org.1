Return-Path: <devicetree+bounces-167861-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5764EA908AC
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 18:23:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 362E819E0D06
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 16:23:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B6D320E31C;
	Wed, 16 Apr 2025 16:22:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="N552TGU2"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91BBF2135C7
	for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 16:22:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744820541; cv=none; b=cOX4An48Sx6aW6FtcBezPPJLTjPti9Dvkv6IXHikovNQCIu9TDSM49Enrt7flCg65O87UVIvj2FsxzCW1HEQ9VQ7u9Q2+oqMnkJyltgz7fbaZwcRtUVhZFKFZyAERxZyv3+A90G16LpOLMz+ELq+KxeCZzYPQtk9EnWsoUZBQdg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744820541; c=relaxed/simple;
	bh=qLpO/eKYIGCFvjkI4c9bvOECPSxSEKHEZEhy0rk4jyg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Lk1Ux9AbWQ9D6GCk5pGV4qLK2uFCtoIWu1536w5XVFBoM4zoihVxkV8nLFtzYr79vbpiIPeEdYv4eQJnQuOVZG50ZbaLcSbB/e8/SB0rzHLl3KVzz/GYzLkRgmlI/sEr9eaezhGVmeWkwJ1Z550gvMSmRVIKr+bXv4Byq9hQvwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=N552TGU2; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1744820538;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=C0LuOHZvP1P1dwLlicwz/s117HJCINnm2wIz4uJxIs8=;
	b=N552TGU2bQJs62j9DIKzctDKs/800IOzFXXPetPPQMiHToOry5GDS/By7g2fyOWeBXXquj
	SmtjbRQmM7JtoGa5l3Zf//2CUSUaIGm3itM4kbOku1Idhv/4cozQaNpbXgb+SFAeY8vmTd
	qFBxubQG2Zzw3COk3hJMUmZHIgLWup0=
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-556--nWDcjrrOtOMh3xXBYolWw-1; Wed,
 16 Apr 2025 12:22:15 -0400
X-MC-Unique: -nWDcjrrOtOMh3xXBYolWw-1
X-Mimecast-MFC-AGG-ID: -nWDcjrrOtOMh3xXBYolWw_1744820533
Received: from mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.111])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 0E4061956095;
	Wed, 16 Apr 2025 16:22:13 +0000 (UTC)
Received: from p16v.luc.cera.cz (unknown [10.44.33.32])
	by mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP id C6B53180045B;
	Wed, 16 Apr 2025 16:22:07 +0000 (UTC)
From: Ivan Vecera <ivecera@redhat.com>
To: netdev@vger.kernel.org
Cc: Vadim Fedorenko <vadim.fedorenko@linux.dev>,
	Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
	Jiri Pirko <jiri@resnulli.us>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Prathosh Satish <Prathosh.Satish@microchip.com>,
	Lee Jones <lee@kernel.org>,
	Kees Cook <kees@kernel.org>,
	Andy Shevchenko <andy@kernel.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	Michal Schmidt <mschmidt@redhat.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-hardening@vger.kernel.org
Subject: [PATCH v3 net-next 4/8] mfd: zl3073x: Add support for devlink device info
Date: Wed, 16 Apr 2025 18:21:40 +0200
Message-ID: <20250416162144.670760-5-ivecera@redhat.com>
In-Reply-To: <20250416162144.670760-1-ivecera@redhat.com>
References: <20250416162144.670760-1-ivecera@redhat.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.111

Use devlink_alloc() to alloc zl3073x_dev structure, register the device
as a devlink device and add devlink callback to provide devlink device
info.

Signed-off-by: Ivan Vecera <ivecera@redhat.com>
---
v2->v3:
* merged devlink device allocation, registration and device info
  callback

v1->v2:
- dependency on NET moved to MFD_ZL3073X_CORE in Kconfig
- devlink register managed way
---
 drivers/mfd/Kconfig        |   2 +
 drivers/mfd/zl3073x-core.c | 106 ++++++++++++++++++++++++++++++++++++-
 2 files changed, 106 insertions(+), 2 deletions(-)

diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
index 7d7902ec1d89a..e4eca15af175d 100644
--- a/drivers/mfd/Kconfig
+++ b/drivers/mfd/Kconfig
@@ -2424,6 +2424,8 @@ config MFD_UPBOARD_FPGA
 
 config MFD_ZL3073X_CORE
 	tristate
+	depends on NET
+	select NET_DEVLINK
 	select MFD_CORE
 
 config MFD_ZL3073X_I2C
diff --git a/drivers/mfd/zl3073x-core.c b/drivers/mfd/zl3073x-core.c
index 0455d6ae37da5..8a15237e0f731 100644
--- a/drivers/mfd/zl3073x-core.c
+++ b/drivers/mfd/zl3073x-core.c
@@ -8,7 +8,10 @@
 #include <linux/mfd/zl3073x.h>
 #include <linux/mfd/zl3073x_regs.h>
 #include <linux/module.h>
+#include <linux/netlink.h>
 #include <linux/regmap.h>
+#include <linux/sprintf.h>
+#include <net/devlink.h>
 #include "zl3073x.h"
 
 /* Chip IDs for zl30731 */
@@ -112,6 +115,83 @@ static const struct regmap_config zl3073x_regmap_config = {
 	.volatile_reg	= zl3073x_is_volatile_reg,
 };
 
+/**
+ * zl3073x_devlink_info_get - Devlink device info callback
+ * @devlink: devlink structure pointer
+ * @req: devlink request pointer to store information
+ * @extack: netlink extack pointer to report errors
+ *
+ * Return: 0 on success, <0 on error
+ */
+static int zl3073x_devlink_info_get(struct devlink *devlink,
+				    struct devlink_info_req *req,
+				    struct netlink_ext_ack *extack)
+{
+	struct zl3073x_dev *zldev = devlink_priv(devlink);
+	u16 id, revision, fw_ver;
+	char buf[16];
+	u32 cfg_ver;
+	int rc;
+
+	rc = zl3073x_read_id(zldev, &id);
+	if (rc)
+		return rc;
+
+	snprintf(buf, sizeof(buf), "%X", id);
+	rc = devlink_info_version_fixed_put(req,
+					    DEVLINK_INFO_VERSION_GENERIC_ASIC_ID,
+					    buf);
+	if (rc)
+		return rc;
+
+	rc = zl3073x_read_revision(zldev, &revision);
+	if (rc)
+		return rc;
+
+	snprintf(buf, sizeof(buf), "%X", revision);
+	rc = devlink_info_version_fixed_put(req,
+					    DEVLINK_INFO_VERSION_GENERIC_ASIC_REV,
+					    buf);
+	if (rc)
+		return rc;
+
+	rc = zl3073x_read_fw_ver(zldev, &fw_ver);
+	if (rc)
+		return rc;
+
+	snprintf(buf, sizeof(buf), "%u", fw_ver);
+	rc = devlink_info_version_fixed_put(req,
+					    DEVLINK_INFO_VERSION_GENERIC_FW,
+					    buf);
+	if (rc)
+		return rc;
+
+	rc = zl3073x_read_custom_config_ver(zldev, &cfg_ver);
+	if (rc)
+		return rc;
+
+	/* No custom config version */
+	if (cfg_ver == U32_MAX)
+		return 0;
+
+	snprintf(buf, sizeof(buf), "%lu.%lu.%lu.%lu",
+		 FIELD_GET(GENMASK(31, 24), cfg_ver),
+		 FIELD_GET(GENMASK(23, 16), cfg_ver),
+		 FIELD_GET(GENMASK(15, 8), cfg_ver),
+		 FIELD_GET(GENMASK(7, 0), cfg_ver));
+
+	return devlink_info_version_running_put(req, "cfg.custom_ver", buf);
+}
+
+static const struct devlink_ops zl3073x_devlink_ops = {
+	.info_get = zl3073x_devlink_info_get,
+};
+
+static void zl3073x_devlink_free(void *ptr)
+{
+	devlink_free(ptr);
+}
+
 /**
  * zl3073x_devm_alloc - allocates zl3073x device structure
  * @dev: pointer to device structure
@@ -124,12 +204,18 @@ static const struct regmap_config zl3073x_regmap_config = {
 struct zl3073x_dev *zl3073x_devm_alloc(struct device *dev)
 {
 	struct zl3073x_dev *zldev;
+	struct devlink *devlink;
 	int rc;
 
-	zldev = devm_kzalloc(dev, sizeof(*zldev), GFP_KERNEL);
-	if (!zldev)
+	devlink = devlink_alloc(&zl3073x_devlink_ops, sizeof(*zldev), dev);
+	if (!devlink)
 		return ERR_PTR(-ENOMEM);
 
+	/* Add devres action to free devlink device */
+	if (devm_add_action_or_reset(dev, zl3073x_devlink_free, devlink))
+		return ERR_PTR(-ENOMEM);
+
+	zldev = devlink_priv(devlink);
 	zldev->dev = dev;
 
 	/* We have to initialize regmap mutex here because during
@@ -158,6 +244,11 @@ void zl3073x_dev_init_regmap_config(struct regmap_config *regmap_cfg)
 }
 EXPORT_SYMBOL_NS_GPL(zl3073x_dev_init_regmap_config, "ZL3073X");
 
+static void zl3073x_devlink_unregister(void *ptr)
+{
+	devlink_unregister(ptr);
+}
+
 /**
  * zl3073x_dev_probe - initialize zl3073x device
  * @zldev: pointer to zl3073x device
@@ -171,6 +262,7 @@ int zl3073x_dev_probe(struct zl3073x_dev *zldev,
 		      const struct zl3073x_chip_info *chip_info)
 {
 	u16 id, revision, fw_ver;
+	struct devlink *devlink;
 	u32 cfg_ver;
 	int i, rc;
 
@@ -209,6 +301,16 @@ int zl3073x_dev_probe(struct zl3073x_dev *zldev,
 		FIELD_GET(GENMASK(15, 8), cfg_ver),
 		FIELD_GET(GENMASK(7, 0), cfg_ver));
 
+	/* Register the device as devlink device */
+	devlink = priv_to_devlink(zldev);
+	devlink_register(devlink);
+
+	/* Add devres action to unregister devlink device */
+	rc = devm_add_action_or_reset(zldev->dev, zl3073x_devlink_unregister,
+				      devlink);
+	if (rc)
+		return rc;
+
 	return 0;
 }
 EXPORT_SYMBOL_NS_GPL(zl3073x_dev_probe, "ZL3073X");
-- 
2.48.1


