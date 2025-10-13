Return-Path: <devicetree+bounces-226223-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5493CBD62B6
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 22:40:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 764AF4061F4
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 20:38:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A7BDA30EF91;
	Mon, 13 Oct 2025 20:34:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="PIgx4e2Y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f201.google.com (mail-pl1-f201.google.com [209.85.214.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A27D30BBBA
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 20:34:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760387661; cv=none; b=W2GNFiZ0YneePP/1SY/ELMz0iuFRkRQIHZz2uswarmO0SrhEnooHVg5vYx/FBRKzbDYOEaTXuZl8gQNvLCgf9jv4qSjdx9tCvuxxpiIbgT+ASnCjQnIUgnHAHfdihm8CFBCnW/EQq55NFhpiSrp/YJZ6vmCCXxmPe06ZFe5HMZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760387661; c=relaxed/simple;
	bh=AW0V5P1Mf/cKqSJ4kn7YwKqdZhOe9eDE0D37bytSyik=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Cc:Content-Type; b=ga2O4bt1Z5m7plHSUwiW16WqndBVH1eqlJFg0xur6HenJNT3tX/Nd1aeZaMial7LtjqfNJCmq/yLnSq/pnpeEXnfkiCxw1ZHDCdclFbagzhnf5O8t83r3VpkenRHR1WwAY1fJxkRg0Vst29t63kP+ainRvSWmjFlDQokocsfMTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--jthies.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=PIgx4e2Y; arc=none smtp.client-ip=209.85.214.201
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--jthies.bounces.google.com
Received: by mail-pl1-f201.google.com with SMTP id d9443c01a7336-286a252bfbfso209807845ad.3
        for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 13:34:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1760387659; x=1760992459; darn=vger.kernel.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=fRIxa/UzZYfGbKZJakrsYtqcVLritJ5Q3FH0o00R8uo=;
        b=PIgx4e2YeR6Rb0vn199+LNsaV0OzkQKfT/U2gwqFmeitQEDR2Y/oaORC82PCHFbwvd
         fgfcTGVXnKajA+/GVMIJ5BK5kiXT2pxVzXM1NuCCLhswGkPgZqzelWC4qOP9sPtwd0AG
         jESMxNob5JL4h9HBLHfDuYC/QKngmHZCLJfOtKTdT2BBnmKG6xriUmqzO/mOCK1rxBzi
         hJHkQM4g0ypCQRm5V5tOAET78IH1foHdjAaji9XFq8xVgeUTC5akEKtrgqjNb5iq5FHd
         JN+4I5xJeUlJfrLRCZZARVK62Y4obU4Fd+p7qkDMQRsJZh4FKT4K9/8neAm6DaPClQxY
         wxnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760387659; x=1760992459;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fRIxa/UzZYfGbKZJakrsYtqcVLritJ5Q3FH0o00R8uo=;
        b=EwJaV5nZ9/pQC/kxfL3YHU6cQGpp7BPGUQBIifx5JjIe+nIAYiagxEtOsAc7Uattqi
         4VTrk7Mh/Q/pMGCu+6jz0w4WEW6XfpyrSxH4/ake5FNyc+4SMFXs+tQvayKgCtggSOKG
         PLPi1vxeUVOBvV45pDVLynTBSK+WQgTHq08bn1mTuUJAsyXXwr17Pg82neeyosh3aceL
         50VCVFYnWs4WpmvFN/UaiYrumiFA20yJPeFwUaVW4Eqd+WSU5a1aoNEwLPG9CXmEZbZ5
         mhBE2Q+qncQUU1zcCVbRri5bnib7Y0E4CssbSuQI5LlEi2MPHMn7vw04uPKk83vmiOZH
         jUMA==
X-Gm-Message-State: AOJu0YyfsoPMp8T0S1KyYcRi8/UZTSyTNf4mUsscMx8+YB56xsVlfQEG
	gy+Wm9AjWNr8+TBxm8qvPkem9e+lyRAwRkWK9bUVDulf40zNhmIiuA2/bvEfEu8TefnlXddhjaL
	aLm0Egg==
X-Google-Smtp-Source: AGHT+IGfxe1pre0Ru6WgDcMEJLC2GoGSa7ujgL6qXJIB7Yn79ai4Bf73VFPBxmxv5ikoVklpodNHzkq0LDc=
X-Received: from plvv9.prod.google.com ([2002:a17:902:d089:b0:28e:804c:cc96])
 (user=jthies job=prod-delivery.src-stubby-dispatcher) by 2002:a17:902:e786:b0:26e:7468:8a99
 with SMTP id d9443c01a7336-290272c18e1mr271502235ad.36.1760387658511; Mon, 13
 Oct 2025 13:34:18 -0700 (PDT)
Date: Mon, 13 Oct 2025 20:33:26 +0000
In-Reply-To: <20251013203331.398517-1-jthies@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20251013203331.398517-1-jthies@google.com>
X-Mailer: git-send-email 2.51.0.858.gf9c4a03a3a-goog
Message-ID: <20251013203331.398517-3-jthies@google.com>
Subject: [PATCH v4 2/3] usb: typec: cros_ec_ucsi: Load driver from OF and ACPI definitions
From: Jameson Thies <jthies@google.com>
To: dmitry.baryshkov@oss.qualcomm.com, akuchynski@chromium.org, 
	abhishekpandit@chromium.org, krzk+dt@kernel.org, robh@kernel.org, 
	bleung@chromium.org, heikki.krogerus@linux.intel.com, ukaszb@chromium.org, 
	tzungbi@kernel.org
Cc: devicetree@vger.kernel.org, chrome-platform@lists.linux.dev, 
	linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Jameson Thies <jthies@google.com>
Content-Type: text/plain; charset="UTF-8"

Add support for cros_ec_ucsi to load based on "google,cros-ec-ucsi"
compatible devices and "GOOG0021" ACPI nodes.

Signed-off-by: Jameson Thies <jthies@google.com>
Reviewed-by: Heikki Krogerus <heikki.krogerus@linux.intel.com>
Reviewed-by: Benson Leung <bleung@chromium.org>
---
 drivers/usb/typec/ucsi/cros_ec_ucsi.c | 26 ++++++++++++++++++++++++--
 1 file changed, 24 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/typec/ucsi/cros_ec_ucsi.c b/drivers/usb/typec/ucsi/cros_ec_ucsi.c
index eed2a7d0ebc6..0c19ba84d11c 100644
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
@@ -235,7 +237,6 @@ static void cros_ucsi_destroy(struct cros_ucsi_data *udata)
 static int cros_ucsi_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
-	struct cros_ec_dev *ec_data = dev_get_drvdata(dev->parent);
 	struct cros_ucsi_data *udata;
 	int ret;
 
@@ -243,9 +244,16 @@ static int cros_ucsi_probe(struct platform_device *pdev)
 	if (!udata)
 		return -ENOMEM;
 
+	/* ACPI and OF FW nodes for cros_ec_ucsi are children of the ChromeOS EC. If the
+	 * cros_ec_ucsi device has an ACPI or OF FW node, its parent is the ChromeOS EC device.
+	 * Platforms without a FW node for cros_ec_ucsi may add it as a subdevice of cros_ec_dev.
+	 */
 	udata->dev = dev;
+	if (is_acpi_device_node(dev->fwnode) || is_of_node(dev->fwnode))
+		udata->ec = dev_get_drvdata(dev->parent);
+	else
+		udata->ec = ((struct cros_ec_dev *)dev_get_drvdata(dev->parent))->ec_dev;
 
-	udata->ec = ec_data->ec_dev;
 	if (!udata->ec)
 		return dev_err_probe(dev, -ENODEV, "couldn't find parent EC device\n");
 
@@ -326,10 +334,24 @@ static const struct platform_device_id cros_ucsi_id[] = {
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
2.51.0.858.gf9c4a03a3a-goog


