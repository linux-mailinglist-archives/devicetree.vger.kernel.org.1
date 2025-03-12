Return-Path: <devicetree+bounces-156996-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D5D5CA5E4E7
	for <lists+devicetree@lfdr.de>; Wed, 12 Mar 2025 21:01:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1744A167233
	for <lists+devicetree@lfdr.de>; Wed, 12 Mar 2025 20:01:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D4FA41EE7A8;
	Wed, 12 Mar 2025 20:00:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="pDuNEo9d"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f202.google.com (mail-pl1-f202.google.com [209.85.214.202])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55AA21EE7C6
	for <devicetree@vger.kernel.org>; Wed, 12 Mar 2025 20:00:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.202
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741809621; cv=none; b=MHhYDZEaaKTvvNUPU1H08VLu313uewaCnKPEWGRfJy7c0iq0m0ZvFjhlO3aMA0+Wfkz+chZ8URWevrWgu3JvM78eSzeKCImov4PkbWcv2GK8fnqth3dcH+cGr6n1TLgl6nMIdHFmJMd1B2K1bpJx05j3Beq5t5Tzp154GZYxqqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741809621; c=relaxed/simple;
	bh=05+7dVWuOECHdsMMg1bh5t6jzIqyq0QLMWPcZxTVIQY=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Cc:Content-Type; b=UtkMYZ5w6VTjVhsf5hcJP0IJOduDwzCXeNgK5IisL+xKz4ZT2xcxc5S7hZNLT5iH5yaAc0Z4MTZh3mWWUoYCkDdiBTgV5J79hTP4rlHhq1tZBenEXje7+yhJQdqf6fiXJzbAPxfO7XN2SjXL8Ia7/mBZ+FENEomBcvuY72K6lTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--jthies.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=pDuNEo9d; arc=none smtp.client-ip=209.85.214.202
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--jthies.bounces.google.com
Received: by mail-pl1-f202.google.com with SMTP id d9443c01a7336-22410053005so5587335ad.1
        for <devicetree@vger.kernel.org>; Wed, 12 Mar 2025 13:00:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1741809620; x=1742414420; darn=vger.kernel.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=L17RDKhWUu6oMmo9Xalv19pEsxNZy4ncT3jPzEM2UX4=;
        b=pDuNEo9dU1xeUwAGKpNJjX/5xH6mFHLzgXgg713KpOOW1EEa9PrKi0vgDGNFOGduVs
         S6udB/on88tOO/1sWiWKA4O3v+JmQyie1VI2SulepMrbG9n34zLxZiRDKwyMOqP/l+bV
         bnwUdhYXnEbdlT0bIytSyyGEm97s5NX5C25QxC9TsGxsjKHxADKtDAuZ7fMLmHFLVdIk
         DJvFs4s5nU2WfDfqaALucCjf7oYAj6H423UNvZ4oue1Uqesth5Q3Pwgcyw0tEstI7mOZ
         Vmjb48JoPrqKPQ5ffphXW0MWdI4+kjD7JbUCUmXJMdHbGnYLYdrMimC5XFYA04PYnVZy
         PH1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741809620; x=1742414420;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=L17RDKhWUu6oMmo9Xalv19pEsxNZy4ncT3jPzEM2UX4=;
        b=BmQyx87W/O6GAdAd6U3fPeSyeCBtRiey+uAHrJUOpu5UklXyZqE2oQixl4AnBkBwdm
         w9X7hx4rTplEKSooemvQwWXKvp6Fvi3+hdvExSTs2ZNvIO5J44+pa3BB2FdRHqQ2yi9R
         vzI1tY64GbtgEVMTs1oeOQsEsb2OB4sFZrcmFz7HWbQcPZxlMWAH3R5HZt8hoaJ6C4p7
         l+xGa6FGdFPrF4+mZ04oEM9kI5c8W6WlWus5qEaO10iP/iTmrw2Obz4t5fBEz2c/74DO
         MSFw5M4skesK4UORHDnmGtSgS3JLON/IunYyuC3ABM1Eisf3RISvzSoMm7fNH4sKcxpL
         VjQA==
X-Gm-Message-State: AOJu0YzUAhTlSE9MqMvBNjjWlhsFyMhzmMzVFM4yWyKBDn7n0sEkaVkp
	ts5CcgHYhvBnd/ILSM856ifuSuS7LgoyyFx1dslgIMuettNEDTflTnfAkCjQfeq0GZdhzEfFy0V
	v3Q==
X-Google-Smtp-Source: AGHT+IH4K/47qeRDt1YjBAXcU3FOe5IP5JjThNYGWQevxtIT/iQUAQ0NeIwRHC3jFWJ6xWJBzD8leYYbizE=
X-Received: from plbmp13.prod.google.com ([2002:a17:902:fd0d:b0:21f:56e1:c515])
 (user=jthies job=prod-delivery.src-stubby-dispatcher) by 2002:a17:903:2405:b0:224:24d5:f20a
 with SMTP id d9443c01a7336-22428bfdba7mr411018645ad.48.1741809619744; Wed, 12
 Mar 2025 13:00:19 -0700 (PDT)
Date: Wed, 12 Mar 2025 19:59:12 +0000
In-Reply-To: <20250312195951.1579682-1-jthies@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20250312195951.1579682-1-jthies@google.com>
X-Mailer: git-send-email 2.49.0.rc0.332.g42c0ae87b1-goog
Message-ID: <20250312195951.1579682-4-jthies@google.com>
Subject: [PATCH v1 3/3] mfd: cros_ec: Don't add cros_ec_ucsi if it is defined
 in OF or ACPI
From: Jameson Thies <jthies@google.com>
To: tzungbi@kernel.org, ukaszb@chromium.org, bleung@chromium.org, 
	heikki.krogerus@linux.intel.com, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, groeck@chromium.org, swboyd@chromium.org, 
	akuchynski@chromium.org
Cc: devicetree@vger.kernel.org, chrome-platform@lists.linux.dev, 
	linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
	Jameson Thies <jthies@google.com>
Content-Type: text/plain; charset="UTF-8"

Check for cros_ec_ucsi to be defined in the OF device tree or an ACPI
node. If it is defined by either OF or ACPI, it does not need to be
added as a subdevice of cros_ec_dev.

Signed-off-by: Jameson Thies <jthies@google.com>
---
 drivers/mfd/cros_ec_dev.c | 39 ++++++++++++++++++++++++++++++++++-----
 1 file changed, 34 insertions(+), 5 deletions(-)

diff --git a/drivers/mfd/cros_ec_dev.c b/drivers/mfd/cros_ec_dev.c
index 9f84a52b48d6..5fb6cd20c5ec 100644
--- a/drivers/mfd/cros_ec_dev.c
+++ b/drivers/mfd/cros_ec_dev.c
@@ -5,6 +5,7 @@
  * Copyright (C) 2014 Google, Inc.
  */
 
+#include <linux/acpi.h>
 #include <linux/dmi.h>
 #include <linux/kconfig.h>
 #include <linux/mfd/core.h>
@@ -128,11 +129,6 @@ static const struct cros_feature_to_cells cros_subdevices[] = {
 		.mfd_cells	= cros_ec_rtc_cells,
 		.num_cells	= ARRAY_SIZE(cros_ec_rtc_cells),
 	},
-	{
-		.id		= EC_FEATURE_UCSI_PPM,
-		.mfd_cells	= cros_ec_ucsi_cells,
-		.num_cells	= ARRAY_SIZE(cros_ec_ucsi_cells),
-	},
 	{
 		.id		= EC_FEATURE_HANG_DETECT,
 		.mfd_cells	= cros_ec_wdt_cells,
@@ -169,6 +165,15 @@ static const struct mfd_cell cros_ec_vbc_cells[] = {
 	{ .name = "cros-ec-vbc", }
 };
 
+
+static int ucsi_acpi_match(struct device *dev, void *data)
+{
+	struct acpi_device_id ucsi_acpi_device_ids[] = {
+		{ "GOOG0021", 0 },
+	};
+	return !!acpi_match_device(ucsi_acpi_device_ids, dev);
+}
+
 static void cros_ec_class_release(struct device *dev)
 {
 	kfree(to_cros_ec_dev(dev));
@@ -256,6 +261,30 @@ static int ec_device_probe(struct platform_device *pdev)
 		}
 	}
 
+	/*
+	 * FW nodes can load cros_ec_ucsi, but early PDC devices did not define
+	 * the required nodes. On PDC systems without FW nodes for cros_ec_ucsi,
+	 * the driver should be added as an mfd subdevice.
+	 */
+	if (cros_ec_check_features(ec, EC_FEATURE_USB_PD) &&
+	    cros_ec_check_features(ec, EC_FEATURE_UCSI_PPM)) {
+		struct device *acpi_dev = device_find_child(ec->ec_dev->dev,
+							    NULL,
+							    ucsi_acpi_match);
+
+		if (!!acpi_dev) {
+			put_device(acpi_dev);
+		} else if (!of_find_compatible_node(NULL, NULL, "google,cros-ec-ucsi")) {
+			retval = mfd_add_hotplug_devices(ec->dev,
+						cros_ec_ucsi_cells,
+						ARRAY_SIZE(cros_ec_ucsi_cells));
+			if (retval)
+				dev_warn(ec->dev,
+					 "failed to add cros_ec_ucsi: %d\n",
+					 retval);
+		}
+	}
+
 	/*
 	 * UCSI provides power supply information so we don't need to separately
 	 * load the cros_usbpd_charger driver.
-- 
2.49.0.rc0.332.g42c0ae87b1-goog


