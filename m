Return-Path: <devicetree+bounces-224689-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FF6DBC70AC
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 03:04:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5ACC719E012D
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 01:04:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 12E8219DF4D;
	Thu,  9 Oct 2025 01:03:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="X/6hw1d5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f202.google.com (mail-pg1-f202.google.com [209.85.215.202])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B4CC17BB35
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 01:03:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.202
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759971805; cv=none; b=IEmV11DO6n3bg7trNcrkLiZwVDeOFHmHYej7PBzL/I8YN2RcW8FQ4Jek1qHYLims6xORiYzxUnUj5bTKsIrek7kgClOa61JPI3TqYFlmUwzJHiukN3W544tLWy9PaUqXA1VfYaECy3/0vfyPX+87PuKmufmJTLMU86vXi6ZWAWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759971805; c=relaxed/simple;
	bh=tSONzkd/O/+rs+POwDj3o16Z3uPD6VSUJul2FCsIGzM=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Cc:Content-Type; b=miWbOV8PFJ+QibIy9mdPf3BuvXraH3TEwI8eDAFzEBtRKCJUtjbjvnqTmwL8E+idJASrDdOAPysWIkLQMNlKRw8TQFFzqQYXu+G/HHO+z1FAz3RQ5o+oCZ9+5sr9KwISaTQzN6KedsWjDF69vy4aA/stZausxRfw44JrQy+x3vg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--jthies.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=X/6hw1d5; arc=none smtp.client-ip=209.85.215.202
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--jthies.bounces.google.com
Received: by mail-pg1-f202.google.com with SMTP id 41be03b00d2f7-b6474cf4573so221079a12.2
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 18:03:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1759971802; x=1760576602; darn=vger.kernel.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=g/4YIFu4sS9h/R2pTNo5KqxfeVEIXuxRpdzIrSZfq5Y=;
        b=X/6hw1d5HqOZj0Y1XDiNBt3p2KDa/OafJ8OI64OC1qxExw0x5jSOKlDgkYg7BIfyZr
         IXdx/l/URbtjdKW2kZE6UQ40nS7/4TJ3Ds7nkAcf/X75jmRg50VAjZzI5J8dEdOCx25s
         L5ikjqrEMYjeqIaoz3cD1lg+s0OXhkC+pe4Rz15CZD/EPLWI+AahNRhr6g7exp4Vivp0
         fFNtn0ZU/LMncmInnxTogA/BWI18be3NJR58ZJIiQiSuQ9+vDeb/uRO/bg4nQaLEEWFt
         b9qbxHnI5RC77QJCiUEQnjgO4Tj5bDLZpyHaqrLf+AhdszJbPap5lfmuQBKXGclodYPY
         yhqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759971802; x=1760576602;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=g/4YIFu4sS9h/R2pTNo5KqxfeVEIXuxRpdzIrSZfq5Y=;
        b=eU6V/4cXb53Xix0Bg1cO5f/qePsG16I8fH23MgEx0C/kFdd+KDKt00LZ2V26UIvEO+
         O4vwxbtEFAElRmLjoZ6AYZwCyZcAliRYKqOfoOnxYMXLcfZueJTpwJzkPhmBeC00fRSI
         qVjox4eA7tfLi7wwKV84qkFN8r9u2dd+y+e/hOvlIn+gSxOKFxLwH9Wh+ONB1UXfr1rm
         HlPW0hYSE4usKvwChqUsgZ8vgLHUzljls6SlvKWXxlWqQ52WmGhywI1uYK8GhdNTe+VM
         nmKuWol1NZP2Ter7P0oczq2rwhmtZrG+RzudRtovHoxpXdlfygF0kl2xQRZvF4AqXMaW
         xQKQ==
X-Gm-Message-State: AOJu0Ywy3m6IucOPIx++PSIjrG6S8tC7rXj/Xox4HRl2PYtBgcMakWbP
	plzbKwaKxbt98DXEgsc+agF/+EDXFkoqb/HkUdv4Y4dLz9MWoF9WCmRUAnYlJ6IRkoPIVOT/lAW
	dMYolyg==
X-Google-Smtp-Source: AGHT+IHp9lhngu8Gcn0L1T1mTc3AnO+MfrO5+f6Ss5kpMxPs3s4Tw2S+ucM0AiCl634GfbIg65sr8/46cQg=
X-Received: from pjbbt21.prod.google.com ([2002:a17:90a:f015:b0:32e:a3c3:df27])
 (user=jthies job=prod-delivery.src-stubby-dispatcher) by 2002:a17:90b:1e0a:b0:334:cb89:bde6
 with SMTP id 98e67ed59e1d1-33b51105dcemr6509867a91.4.1759971800738; Wed, 08
 Oct 2025 18:03:20 -0700 (PDT)
Date: Thu,  9 Oct 2025 01:03:07 +0000
In-Reply-To: <20251009010312.2203812-1-jthies@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20251009010312.2203812-1-jthies@google.com>
X-Mailer: git-send-email 2.51.0.710.ga91ca5db03-goog
Message-ID: <20251009010312.2203812-3-jthies@google.com>
Subject: [PATCH v3 2/3] usb: typec: cros_ec_ucsi: Load driver from OF and ACPI definitions
From: Jameson Thies <jthies@google.com>
To: akuchynski@chromium.org, abhishekpandit@chromium.org, krzk+dt@kernel.org, 
	robh@kernel.org, bleung@chromium.org, heikki.krogerus@linux.intel.com, 
	ukaszb@chromium.org, tzungbi@kernel.org
Cc: devicetree@vger.kernel.org, chrome-platform@lists.linux.dev, 
	linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Jameson Thies <jthies@google.com>
Content-Type: text/plain; charset="UTF-8"

Add support for cros_ec_ucsi to load based on "google,cros-ec-ucsi"
compatible devices and "GOOG0021" ACPI nodes.

Signed-off-by: Jameson Thies <jthies@google.com>
Reviewed-by: Heikki Krogerus <heikki.krogerus@linux.intel.com>
---
 drivers/usb/typec/ucsi/cros_ec_ucsi.c | 22 ++++++++++++++++++++--
 1 file changed, 20 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/typec/ucsi/cros_ec_ucsi.c b/drivers/usb/typec/ucsi/cros_ec_ucsi.c
index eed2a7d0ebc6..62b80ad85a68 100644
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
 
@@ -244,8 +245,11 @@ static int cros_ucsi_probe(struct platform_device *pdev)
 		return -ENOMEM;
 
 	udata->dev = dev;
+	if (is_acpi_device_node(dev->fwnode) || is_of_node(dev->fwnode))
+		udata->ec = dev_get_drvdata(dev->parent);
+	else
+		udata->ec = ((struct cros_ec_dev *)dev_get_drvdata(dev->parent))->ec_dev;
 
-	udata->ec = ec_data->ec_dev;
 	if (!udata->ec)
 		return dev_err_probe(dev, -ENODEV, "couldn't find parent EC device\n");
 
@@ -326,10 +330,24 @@ static const struct platform_device_id cros_ucsi_id[] = {
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
2.51.0.710.ga91ca5db03-goog


