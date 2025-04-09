Return-Path: <devicetree+bounces-164848-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 76D48A828C0
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 16:52:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 88B634E7056
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 14:48:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 149FC266B4F;
	Wed,  9 Apr 2025 14:43:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="Mjj1IIrM"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 335332641DA
	for <devicetree@vger.kernel.org>; Wed,  9 Apr 2025 14:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744209835; cv=none; b=lcJND6phV5LcEF70R8XN4PUHfyZt+/jmLnKyI1BkCtMVj139qTg5wXtI4FVDfLitAlWjKN3OSpOOag0EroJ/gJX+rgGRTPZDL6gJuYz3m3X4I2nkgrr76uM8OvfDQftcvJjcyU3Nuxg7YxfY1rGVtNxHHX91+DUUU1qbBkgWQyI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744209835; c=relaxed/simple;
	bh=n/aD4uKaAByt3p9ZsI9QEm1+7uef9ErIiUabPy/IhvE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=tERFe75rUhdhOGNH0eHyjttxONrbMMKp28XgeEe9AB6IQaRZSY2iXRsmx9szN8n2Gy1y/rHZD+k29SJ/JAR7LOcPs5Kqh8YyRCkG1FLvezDRR44kwHCzxjm56AtPDe5a2qzQkGLTOUXmeQ209z7CdRRx6pw/sod0pvaAAjVlOvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=Mjj1IIrM; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1744209833;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=dIx4cR7Kr5LB9b4vPyy5kovahj5pVidyEEdK4zNswDg=;
	b=Mjj1IIrMPPDKmWdpDqSf0/DYsRU0kP+oVu7+XneQhF0Ktyj8z7MQnr5FRqEnnr2Qaz4SD7
	/2idwmpuB8X9zQIAnMI+k2mI74g68n1Xinkt9f7cZmuSCpByNImMnULrf0OwQPzbXnceYX
	PVunrZBoYLJuttiX1QptXQA2cg5Iums=
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-649--fSU5gaWPSeinXDFJOJ_CA-1; Wed,
 09 Apr 2025 10:43:51 -0400
X-MC-Unique: -fSU5gaWPSeinXDFJOJ_CA-1
X-Mimecast-MFC-AGG-ID: -fSU5gaWPSeinXDFJOJ_CA_1744209829
Received: from mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.111])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id AF1711801A12;
	Wed,  9 Apr 2025 14:43:49 +0000 (UTC)
Received: from p16v.luc.cera.cz (unknown [10.44.32.72])
	by mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP id 817C918009BC;
	Wed,  9 Apr 2025 14:43:45 +0000 (UTC)
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
Subject: [PATCH v2 11/14] mfd: zl3073x: Add clock_id field
Date: Wed,  9 Apr 2025 16:42:47 +0200
Message-ID: <20250409144250.206590-12-ivecera@redhat.com>
In-Reply-To: <20250409144250.206590-1-ivecera@redhat.com>
References: <20250409144250.206590-1-ivecera@redhat.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.111

Add .clock_id to zl3073x_dev structure that will be used by later
commits introducing DPLL driver. The clock ID is necessary for DPLL
device registration.  To generate such ID use chip ID read during
device initialization for this. For the case where are multiple
zl3073x based chips the chip ID is shifted and lower bits are filled
by an unique value. For I2C case it is I2C device address and for SPI
case it is chip-select value.

Signed-off-by: Ivan Vecera <ivecera@redhat.com>
---
 drivers/mfd/zl3073x-core.c  | 6 +++++-
 drivers/mfd/zl3073x-i2c.c   | 3 ++-
 drivers/mfd/zl3073x-spi.c   | 3 ++-
 drivers/mfd/zl3073x.h       | 2 +-
 include/linux/mfd/zl3073x.h | 2 ++
 5 files changed, 12 insertions(+), 4 deletions(-)

diff --git a/drivers/mfd/zl3073x-core.c b/drivers/mfd/zl3073x-core.c
index f606c51c90fdf..a1fb5af5b3d9f 100644
--- a/drivers/mfd/zl3073x-core.c
+++ b/drivers/mfd/zl3073x-core.c
@@ -467,12 +467,13 @@ static void zl3073x_devlink_unregister(void *ptr)
 /**
  * zl3073x_dev_init - initialize zl3073x device
  * @zldev: pointer to zl3073x device
+ * @dev_id: device ID to be used as part of clock ID
  *
  * Common initialization of zl3073x device structure.
  *
  * Returns: 0 on success, <0 on error
  */
-int zl3073x_dev_init(struct zl3073x_dev *zldev)
+int zl3073x_dev_init(struct zl3073x_dev *zldev, u8 dev_id)
 {
 	u16 id, revision, fw_ver;
 	struct devlink *devlink;
@@ -501,6 +502,9 @@ int zl3073x_dev_init(struct zl3073x_dev *zldev)
 			return rc;
 	}
 
+	/* Use chip ID and given dev ID as clock ID */
+	zldev->clock_id = ((u64)id << 8) | dev_id;
+
 	dev_info(zldev->dev, "ChipID(%X), ChipRev(%X), FwVer(%u)\n",
 		 id, revision, fw_ver);
 	dev_info(zldev->dev, "Custom config version: %lu.%lu.%lu.%lu\n",
diff --git a/drivers/mfd/zl3073x-i2c.c b/drivers/mfd/zl3073x-i2c.c
index 461b583e536b7..9d6b8a84942d3 100644
--- a/drivers/mfd/zl3073x-i2c.c
+++ b/drivers/mfd/zl3073x-i2c.c
@@ -27,7 +27,8 @@ static int zl3073x_i2c_probe(struct i2c_client *client)
 
 	i2c_set_clientdata(client, zldev);
 
-	return zl3073x_dev_init(zldev);
+	/* Initialize device and use I2C address as dev ID */
+	return zl3073x_dev_init(zldev, client->addr);
 }
 
 static const struct i2c_device_id zl3073x_i2c_id[] = {
diff --git a/drivers/mfd/zl3073x-spi.c b/drivers/mfd/zl3073x-spi.c
index db976aef74917..af98ea35440d7 100644
--- a/drivers/mfd/zl3073x-spi.c
+++ b/drivers/mfd/zl3073x-spi.c
@@ -27,7 +27,8 @@ static int zl3073x_spi_probe(struct spi_device *spi)
 
 	spi_set_drvdata(spi, zldev);
 
-	return zl3073x_dev_init(zldev);
+	/* Initialize device and use SPI chip select value as dev ID */
+	return zl3073x_dev_init(zldev, spi_get_chipselect(spi, 0));
 }
 
 static const struct spi_device_id zl3073x_spi_id[] = {
diff --git a/drivers/mfd/zl3073x.h b/drivers/mfd/zl3073x.h
index 8e8ffa961e4ca..cdba713c8441f 100644
--- a/drivers/mfd/zl3073x.h
+++ b/drivers/mfd/zl3073x.h
@@ -8,7 +8,7 @@ struct regmap_config;
 struct zl3073x_dev;
 
 struct zl3073x_dev *zl3073x_devm_alloc(struct device *dev);
-int zl3073x_dev_init(struct zl3073x_dev *zldev);
+int zl3073x_dev_init(struct zl3073x_dev *zldev, u8 dev_id);
 const struct regmap_config *zl3073x_get_regmap_config(void);
 
 #endif /* __ZL3073X_CORE_H */
diff --git a/include/linux/mfd/zl3073x.h b/include/linux/mfd/zl3073x.h
index cc80014ebb384..50befd7f03b24 100644
--- a/include/linux/mfd/zl3073x.h
+++ b/include/linux/mfd/zl3073x.h
@@ -16,11 +16,13 @@ struct regmap;
  * struct zl3073x_dev - zl3073x device
  * @dev: pointer to device
  * @regmap: regmap to access HW registers
+ * @clock_id: clock id of the device
  * @lock: lock to be held during access to HW registers
  */
 struct zl3073x_dev {
 	struct device		*dev;
 	struct regmap		*regmap;
+	u64			clock_id;
 	struct mutex		lock;
 };
 
-- 
2.48.1


