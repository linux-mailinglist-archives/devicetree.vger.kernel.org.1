Return-Path: <devicetree+bounces-156995-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DF330A5E4E4
	for <lists+devicetree@lfdr.de>; Wed, 12 Mar 2025 21:01:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B0AA219C061D
	for <lists+devicetree@lfdr.de>; Wed, 12 Mar 2025 20:01:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BDC751EE7B9;
	Wed, 12 Mar 2025 20:00:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="QAKra6lR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f202.google.com (mail-pl1-f202.google.com [209.85.214.202])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 260AD1EE028
	for <devicetree@vger.kernel.org>; Wed, 12 Mar 2025 20:00:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.202
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741809619; cv=none; b=a9X8+Hk4VZ6MI5ewqYDXukLY34rTbEYvzOuZWSCRHRBZVD+iLu5++5UWOYxQt19pDYjZ/NXY/Ma2ENYbgagouDHWtK1A3+9E/8w3sDwq3oSU7kU56/mjKzkbkEzxR0JwiQAdZgZcypmC5MRt847cMr3mdyyu1U0sM0h/yvCSnFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741809619; c=relaxed/simple;
	bh=0GWy3rp0F7KpgF0wRntfFfUSkJ3mXo1eZ4Tv31fz+NU=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Cc:Content-Type; b=ARja3jSM/n7OXCbPE+Ktm/ITpaQ+2TS3TMT/CQT6RGEJQnT9Y9u/1MKDUlyYwZKNkvDw+dTNJyj6uKXqVBkn9u5pmniY/AXspm9avO12kmlYW2GkdS04W3PUEq7ziQo6DOXB1aMhtC/e6qTsVE7+6bxAb5hlJaGnwdiBkXicWpE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--jthies.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=QAKra6lR; arc=none smtp.client-ip=209.85.214.202
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--jthies.bounces.google.com
Received: by mail-pl1-f202.google.com with SMTP id d9443c01a7336-22403329f9eso3135595ad.3
        for <devicetree@vger.kernel.org>; Wed, 12 Mar 2025 13:00:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1741809617; x=1742414417; darn=vger.kernel.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=VDEU9Q/7+kilAtJ4k6780hVL8+VoEsG1QL4aEk8tmxQ=;
        b=QAKra6lRa8Yqut8W4HDU+3znz2V3GW9seMe5fmfLTOUxkqI3JxxKW2mkSGcF+WYrf9
         B4NcXCaG0dhTABxWAVM/zB38q+lKSqs8nvfovINd5zsSb4c4LVRC/+2O9nW4EktJ8J15
         7p5Q7v8aGdBF0dUgPr16j8cZDqW29CZpXCok6KxUS8cKyDGLy/jGJKgReWQehTEawHz9
         FjXNvzkKn3lMiPhn9uZcp7BuIBUzAt9AbmPN41PvRAz/mEPpFEopBE+OjGA4p7Uh6nod
         0k5M6x9dAtkxxc/Zaz9zKSOf+ThUTrYQRaym4nHuIToO7hBJbhKp/Z2swzKaQTu3Rfzk
         pc4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741809617; x=1742414417;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VDEU9Q/7+kilAtJ4k6780hVL8+VoEsG1QL4aEk8tmxQ=;
        b=bNLFdo46w5QmjBJ7Tao89jMSWE0mgM9zgZ9ozRlmXhwupGDhg9GpiV32RmAlCZj05o
         vUBV9MMBPjwXxjyzErx67QjKDLtk7DjuqrwA0v+Fc3gmrzxnKqm5T7BtO0h9eZPERvGS
         A74DDzsDqztiWMrOldQM2qZJLJgse/8u5TMIdIJNys4rcZvm3tVXnNyKx5UGwzX3qukA
         35kIdaGjNeTzbhs3QFtl+DlhB13pCq3gAmTsvm7XJx7PvOnygG4bBUCA2qOpZHU2YqYR
         /MCUMdayrIdrxNsP2NNWIpU/ozShjmUoiI8KmekA5IwVwgmAkFhDugaXlnib7+Qv39T6
         SmXw==
X-Gm-Message-State: AOJu0Ywaje1So2oWb9xVm6HAeZEVl1XajAuAb2fOksDsh6SPHaRwdxcA
	3p/hjKVUZWCvtB4Y/Se7ZUTH8nPTRMKLtLfiXE7uI2rkf8d450a1lxrVLrxadn0meNsByEw/3da
	nGA==
X-Google-Smtp-Source: AGHT+IG+7wN0jLCNhozwudp+CmZ2bIOC2JWCQMC5PPVbBuF1mi37k+/+m0ELnNvF8x64iohsHTAqLd5wRsg=
X-Received: from plbjy16.prod.google.com ([2002:a17:903:42d0:b0:223:37b7:2388])
 (user=jthies job=prod-delivery.src-stubby-dispatcher) by 2002:a17:903:234d:b0:220:c34c:5760
 with SMTP id d9443c01a7336-22428c240demr280258275ad.51.1741809617329; Wed, 12
 Mar 2025 13:00:17 -0700 (PDT)
Date: Wed, 12 Mar 2025 19:59:11 +0000
In-Reply-To: <20250312195951.1579682-1-jthies@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20250312195951.1579682-1-jthies@google.com>
X-Mailer: git-send-email 2.49.0.rc0.332.g42c0ae87b1-goog
Message-ID: <20250312195951.1579682-3-jthies@google.com>
Subject: [PATCH v1 2/3] usb: typec: cros_ec_ucsi: Load driver from OF and ACPI definitions
From: Jameson Thies <jthies@google.com>
To: tzungbi@kernel.org, ukaszb@chromium.org, bleung@chromium.org, 
	heikki.krogerus@linux.intel.com, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, groeck@chromium.org, swboyd@chromium.org, 
	akuchynski@chromium.org
Cc: devicetree@vger.kernel.org, chrome-platform@lists.linux.dev, 
	linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
	Jameson Thies <jthies@google.com>
Content-Type: text/plain; charset="UTF-8"

Add support for cros_ec_ucsi to load based on "google,cros-ec-ucsi"
compatible devices and "GOOG0021" ACPI nodes.

Signed-off-by: Jameson Thies <jthies@google.com>
---
 drivers/usb/typec/ucsi/cros_ec_ucsi.c | 26 ++++++++++++++++++++++++--
 1 file changed, 24 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/typec/ucsi/cros_ec_ucsi.c b/drivers/usb/typec/ucsi/cros_ec_ucsi.c
index c605c8616726..d916893b8908 100644
--- a/drivers/usb/typec/ucsi/cros_ec_ucsi.c
+++ b/drivers/usb/typec/ucsi/cros_ec_ucsi.c
@@ -5,11 +5,13 @@
  * Copyright 2024 Google LLC.
  */
 
+#include <linux/acpi.h>
 #include <linux/container_of.h>
 #include <linux/dev_printk.h>
 #include <linux/jiffies.h>
 #include <linux/mod_devicetable.h>
 #include <linux/module.h>
+#include <linux/of.h>
 #include <linux/platform_data/cros_ec_commands.h>
 #include <linux/platform_data/cros_usbpd_notify.h>
 #include <linux/platform_data/cros_ec_proto.h>
@@ -226,7 +228,6 @@ static void cros_ucsi_destroy(struct cros_ucsi_data *udata)
 static int cros_ucsi_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
-	struct cros_ec_dev *ec_data = dev_get_drvdata(dev->parent);
 	struct cros_ucsi_data *udata;
 	int ret;
 
@@ -236,7 +237,14 @@ static int cros_ucsi_probe(struct platform_device *pdev)
 
 	udata->dev = dev;
 
-	udata->ec = ec_data->ec_dev;
+	if (is_acpi_device_node(dev->fwnode) || is_of_node(dev->fwnode)) {
+		udata->ec = dev_get_drvdata(pdev->dev.parent);
+	} else {
+		struct cros_ec_dev *ec_data = dev_get_drvdata(dev->parent);
+
+		udata->ec = ec_data->ec_dev;
+	}
+
 	if (!udata->ec)
 		return dev_err_probe(dev, -ENODEV, "couldn't find parent EC device\n");
 
@@ -317,10 +325,24 @@ static const struct platform_device_id cros_ucsi_id[] = {
 };
 MODULE_DEVICE_TABLE(platform, cros_ucsi_id);
 
+static const struct acpi_device_id cros_ec_ucsi_acpi_device_ids[] = {
+	{ "GOOG0021", 0 },
+	{ }
+};
+MODULE_DEVICE_TABLE(acpi, cros_ec_ucsi_acpi_device_ids);
+
+static const struct of_device_id cros_ucsi_of_match[] = {
+	{ .compatible = "google,cros-ec-ucsi", },
+	{}
+};
+MODULE_DEVICE_TABLE(of, cros_ucsi_of_match);
+
 static struct platform_driver cros_ucsi_driver = {
 	.driver = {
 		.name = KBUILD_MODNAME,
 		.pm = &cros_ucsi_pm_ops,
+		.acpi_match_table = cros_ec_ucsi_acpi_device_ids,
+		.of_match_table = cros_ucsi_of_match,
 	},
 	.id_table = cros_ucsi_id,
 	.probe = cros_ucsi_probe,
-- 
2.49.0.rc0.332.g42c0ae87b1-goog


