Return-Path: <devicetree+bounces-163933-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F4AAA7E858
	for <lists+devicetree@lfdr.de>; Mon,  7 Apr 2025 19:32:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BCD5017AB79
	for <lists+devicetree@lfdr.de>; Mon,  7 Apr 2025 17:32:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3950522A4F4;
	Mon,  7 Apr 2025 17:29:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="im07weJb"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88842221F0D
	for <devicetree@vger.kernel.org>; Mon,  7 Apr 2025 17:29:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744046990; cv=none; b=hYv3l419XrJZYgMqCajeQZTMJ2SZMJsGVhlrhzLnhsKFc1wJ2uTgrk6nOuWkW/ZHs8vebQeEt/CaR2nwUx1QpdMLxAkHl/b4Zhc0K4nqwOZC3o9+LRyMtRxWaDPeuB7lknetp4KJy1vfoQw1UCe2NWIlBADeQpu5Ustum8skgss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744046990; c=relaxed/simple;
	bh=IZDE0Uw0REW2EC3YQAqzGRfFqccTqKOe6rIV8GxvYuo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=YaW3xbDTpqNJwO5HS6oleh1569hHAh5TCWaW41YoY5zPW05HCetLah48T8OV5gTIAJPt71Sdcz1Mk7eLb+eWrhtsBe+dm23e7v29N+z+fVTEsS8/vS1SBRn4N0BpU0EN+FBhXzuY/+dcKTL+Z7c03qLfhep7dvckdbD/BTkpCKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=im07weJb; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1744046987;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Ytfag6avHkUgxMB2gcbfrMctmdRXvNMuEhL6eCeBh8c=;
	b=im07weJbnwgtIKSuqnfxdX/zkmRLSBvlP44VygxdrvgEButnH+xfZEeujKGo5WbwqswBER
	U/CL7Ebvvqs1Oc5NG2zMpRAdekIGyreuGI4PmowkCcVQ0GY+mJYGJHFza0tsCu8E0jXhqa
	rLXwN6OEdeHCy7DvbEcqanQ5TlDQ06o=
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-650-bek0G_IQM-mH5jKEpyPM1w-1; Mon,
 07 Apr 2025 13:29:43 -0400
X-MC-Unique: bek0G_IQM-mH5jKEpyPM1w-1
X-Mimecast-MFC-AGG-ID: bek0G_IQM-mH5jKEpyPM1w_1744046981
Received: from mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.93])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id D4296195608B;
	Mon,  7 Apr 2025 17:29:40 +0000 (UTC)
Received: from p16v.luc.cera.cz (unknown [10.44.32.4])
	by mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP id 19686180A803;
	Mon,  7 Apr 2025 17:29:34 +0000 (UTC)
From: Ivan Vecera <ivecera@redhat.com>
To: netdev@vger.kernel.org
Cc: Michal Schmidt <mschmidt@redhat.com>,
	Vadim Fedorenko <vadim.fedorenko@linux.dev>,
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
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-hardening@vger.kernel.org
Subject: [PATCH 09/28] mfd: zl3073x: Add clock_id field
Date: Mon,  7 Apr 2025 19:28:36 +0200
Message-ID: <20250407172836.1009461-10-ivecera@redhat.com>
In-Reply-To: <20250407172836.1009461-1-ivecera@redhat.com>
References: <20250407172836.1009461-1-ivecera@redhat.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.93

Later commits that add support for DPLL functionality need a clock ID
for DPLL device registration. To generate such ID use chip ID read
during device initialization for this. For the case where are
multiple zl3073x based chips the chip ID is shifted and lower
bits are filled by an unique value. For I2C case it is I2C device
address and for SPI case it is chip-select value.

Reviewed-by: Michal Schmidt <mschmidt@redhat.com>
Signed-off-by: Ivan Vecera <ivecera@redhat.com>
---
 drivers/mfd/zl3073x-core.c  | 5 ++++-
 drivers/mfd/zl3073x-i2c.c   | 3 ++-
 drivers/mfd/zl3073x-spi.c   | 3 ++-
 drivers/mfd/zl3073x.h       | 2 +-
 include/linux/mfd/zl3073x.h | 1 +
 5 files changed, 10 insertions(+), 4 deletions(-)

diff --git a/drivers/mfd/zl3073x-core.c b/drivers/mfd/zl3073x-core.c
index feb139b550571..5570de58c46e4 100644
--- a/drivers/mfd/zl3073x-core.c
+++ b/drivers/mfd/zl3073x-core.c
@@ -424,7 +424,7 @@ struct zl3073x_dev *zl3073x_dev_alloc(struct device *dev)
 }
 EXPORT_SYMBOL_NS_GPL(zl3073x_dev_alloc, "ZL3073X");
 
-int zl3073x_dev_init(struct zl3073x_dev *zldev)
+int zl3073x_dev_init(struct zl3073x_dev *zldev, u8 dev_id)
 {
 	u16 id, revision, fw_ver;
 	struct devlink *devlink;
@@ -448,6 +448,9 @@ int zl3073x_dev_init(struct zl3073x_dev *zldev)
 			return rc;
 	}
 
+	/* Use chip ID and given dev ID as clock ID */
+	zldev->clock_id = ((u64)id << 8) | dev_id;
+
 	dev_info(zldev->dev, "ChipID(%X), ChipRev(%X), FwVer(%u)\n",
 		 id, revision, fw_ver);
 	dev_info(zldev->dev, "Custom config version: %lu.%lu.%lu.%lu\n",
diff --git a/drivers/mfd/zl3073x-i2c.c b/drivers/mfd/zl3073x-i2c.c
index 8c8b2ba176766..ae7079d9359c1 100644
--- a/drivers/mfd/zl3073x-i2c.c
+++ b/drivers/mfd/zl3073x-i2c.c
@@ -41,7 +41,8 @@ static int zl3073x_i2c_probe(struct i2c_client *client)
 
 	i2c_set_clientdata(client, zldev);
 
-	return zl3073x_dev_init(zldev);
+	/* Initialize device and use I2C address as dev ID */
+	return zl3073x_dev_init(zldev, client->addr);
 }
 
 static void zl3073x_i2c_remove(struct i2c_client *client)
diff --git a/drivers/mfd/zl3073x-spi.c b/drivers/mfd/zl3073x-spi.c
index a6b9a366a7585..6877ca1664111 100644
--- a/drivers/mfd/zl3073x-spi.c
+++ b/drivers/mfd/zl3073x-spi.c
@@ -42,7 +42,8 @@ static int zl3073x_spi_probe(struct spi_device *spidev)
 
 	spi_set_drvdata(spidev, zldev);
 
-	return zl3073x_dev_init(zldev);
+	/* Initialize device and use SPI chip select value as dev ID */
+	return zl3073x_dev_init(zldev, spi_get_chipselect(spidev, 0));
 }
 
 static void zl3073x_spi_remove(struct spi_device *spidev)
diff --git a/drivers/mfd/zl3073x.h b/drivers/mfd/zl3073x.h
index 582cb40d681d3..04612313d32a9 100644
--- a/drivers/mfd/zl3073x.h
+++ b/drivers/mfd/zl3073x.h
@@ -6,7 +6,7 @@
 #include <linux/mfd/zl3073x.h>
 
 struct zl3073x_dev *zl3073x_dev_alloc(struct device *dev);
-int zl3073x_dev_init(struct zl3073x_dev *zldev);
+int zl3073x_dev_init(struct zl3073x_dev *zldev, u8 dev_id);
 void zl3073x_dev_exit(struct zl3073x_dev *zldev);
 const struct regmap_config *zl3073x_get_regmap_config(void);
 
diff --git a/include/linux/mfd/zl3073x.h b/include/linux/mfd/zl3073x.h
index 436f79f2fda63..a18eddbc03709 100644
--- a/include/linux/mfd/zl3073x.h
+++ b/include/linux/mfd/zl3073x.h
@@ -9,6 +9,7 @@
 struct zl3073x_dev {
 	struct device		*dev;
 	struct regmap		*regmap;
+	u64			clock_id;
 	struct mutex		lock;
 };
 
-- 
2.48.1


