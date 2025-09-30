Return-Path: <devicetree+bounces-222571-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 46612BAAE03
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 03:25:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 018111C25F3
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 01:25:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE7451F91C8;
	Tue, 30 Sep 2025 01:24:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="eRjpqdnw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f201.google.com (mail-yw1-f201.google.com [209.85.128.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B7FF1F4180
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 01:24:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759195472; cv=none; b=JYSuNi5R4Og0Pz3bPkkgElYta3V6jORPDZWlUo9o08XsAZHivNoZU0RFcyr6ZOAaHh84m/9pDGQeRixd1TZklF7fOwDAxdqrMbpymo8gdVFOD7+4TNiMfRsDXr9DZ3yr1lqRTdxnQirkUHRHgexsLEJ4vKCHZte0SuWC6U4qezg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759195472; c=relaxed/simple;
	bh=N4kLniQHDskmFQXBLT0LHBLGRHO/htZMq5n45mo5spA=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Cc:Content-Type; b=Yt9u3RG2i0jih36J8jGDNtpIGiZhPxfdaIzF4itnPDzIcmmtKoxc/dDmUXdQmmLo0vaQrJwhQ2yKqX+/uo8Xx5WuLAU2tbcjPAbVQfZy2vVTYo1wjIlWhTqng3koiruq7Nbwj7AWvRkH477geL+wurvxA3yL6+fc5IpCtXL2alE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--jthies.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=eRjpqdnw; arc=none smtp.client-ip=209.85.128.201
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--jthies.bounces.google.com
Received: by mail-yw1-f201.google.com with SMTP id 00721157ae682-77de135b5aeso22488757b3.2
        for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 18:24:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1759195469; x=1759800269; darn=vger.kernel.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=atjRbq2Ix0kpQpih72xPV1a5tslbrY8BWtKFpnViPQs=;
        b=eRjpqdnwHov7uNjNBAxtduOkE+1rKzXROltB2OCVb939/djWaAKDuhgTpAFNxmt5h0
         O8SC5/KK5s3Vxgj96nEpX2yRHVRDMswpx1bvGrHc0nEJtQaMz2MeDrYap4uw72Ttlki8
         xsKJ/5hdH6n1KrrOLHgpAbKx0D2NkAnsjKtAIF7Yxr6/plhF/XF/24i1J2sh82K+wADb
         wvj957d+TO+/iFLrJa1OIzm9W5vsHVfDanq618uD5gXMrZKpk6xum0vK3SC+K5Oc2RMT
         DVQ74L0ikOOegAb/MC1SSva3mnBerJBvAkoQ5DzXl7tDpCsKaHnKmVFSKO3HBLsuDW4K
         aFaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759195469; x=1759800269;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=atjRbq2Ix0kpQpih72xPV1a5tslbrY8BWtKFpnViPQs=;
        b=lz89oCnoJuLDoOULCR83P1ZKjwq7bxa4wdZfl7PQLFV1bg9lB8ongFDG4PrmEjCGOI
         xOG4ec16iHtco0iQlHDsExhmnop3OfezBfYIiNXetj67RSz77jETZ7GT3r1mUKwk82LQ
         JcdXxDZz/sfr6y4GTtb3RRwt3WTgy/0NGzk+r7LMPRZ3zGfXgyPEcODbejvALuUSg8TZ
         dWozmPXjUGBjMIDI7d1CPE1SV1uxCnTKs01sfOwfMciyl5ZyHtNaZTqL9F8ZLjFvJ9P0
         u6q9DsfaNu9tToQB5YTamLT8qGk0XHZQJ5KaXkOjjaIi3n6YPIEx2MFROmVNjqmiWjsz
         oEtA==
X-Gm-Message-State: AOJu0YwEP47y0ADB61xUCmLfmwaq2QeFM4j8aG57QjmgVtH3qCT08B0P
	6SjTT4mx+DBuagSC4tTaUdguOqveZG2ca3cn4aKiJ36j5A0zVXe9Bm+dI3p31nqKXPHekLyEeHX
	njCTORQ==
X-Google-Smtp-Source: AGHT+IF0AUjaRoUFbB9ad+iQ92cEe5cg6xNX0XH44Xe7Y4Ue8xeSsrOu4IjOY25U6TTP0/J2T1TylPh/qAM=
X-Received: from ywbnh10.prod.google.com ([2002:a05:690c:5c0a:b0:735:7cbc:a939])
 (user=jthies job=prod-delivery.src-stubby-dispatcher) by 2002:a05:690c:3608:b0:766:6507:686b
 with SMTP id 00721157ae682-7666507767bmr165283147b3.8.1759195469484; Mon, 29
 Sep 2025 18:24:29 -0700 (PDT)
Date: Tue, 30 Sep 2025 01:23:47 +0000
In-Reply-To: <20250930012352.413066-1-jthies@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20250930012352.413066-1-jthies@google.com>
X-Mailer: git-send-email 2.51.0.570.gb178f27e6d-goog
Message-ID: <20250930012352.413066-3-jthies@google.com>
Subject: [PATCH v1 2/3] usb: typec: cros_ec_ucsi: Load driver from OF and ACPI definitions
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
---
 drivers/usb/typec/ucsi/cros_ec_ucsi.c | 25 +++++++++++++++++++++++--
 1 file changed, 23 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/typec/ucsi/cros_ec_ucsi.c b/drivers/usb/typec/ucsi/cros_ec_ucsi.c
index eed2a7d0ebc6..3d19560bbaa7 100644
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
@@ -235,7 +237,7 @@ static void cros_ucsi_destroy(struct cros_ucsi_data *udata)
 static int cros_ucsi_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
-	struct cros_ec_dev *ec_data = dev_get_drvdata(dev->parent);
+	struct cros_ec_dev *ec_data;
 	struct cros_ucsi_data *udata;
 	int ret;
 
@@ -244,8 +246,13 @@ static int cros_ucsi_probe(struct platform_device *pdev)
 		return -ENOMEM;
 
 	udata->dev = dev;
+	if (is_acpi_device_node(dev->fwnode) || is_of_node(dev->fwnode)) {
+		udata->ec = dev_get_drvdata(pdev->dev.parent);
+	} else {
+		ec_data = dev_get_drvdata(dev->parent);
+		udata->ec = ec_data->ec_dev;
+	}
 
-	udata->ec = ec_data->ec_dev;
 	if (!udata->ec)
 		return dev_err_probe(dev, -ENODEV, "couldn't find parent EC device\n");
 
@@ -326,10 +333,24 @@ static const struct platform_device_id cros_ucsi_id[] = {
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
2.51.0.570.gb178f27e6d-goog


