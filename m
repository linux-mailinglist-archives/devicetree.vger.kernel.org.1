Return-Path: <devicetree+bounces-37646-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AA1AC845C47
	for <lists+devicetree@lfdr.de>; Thu,  1 Feb 2024 16:57:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CF6EB1C2AB4F
	for <lists+devicetree@lfdr.de>; Thu,  1 Feb 2024 15:57:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7898315F332;
	Thu,  1 Feb 2024 15:55:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="G9dsRo5m"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08B2115B11B
	for <devicetree@vger.kernel.org>; Thu,  1 Feb 2024 15:55:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706802951; cv=none; b=rWOaDxDuGKA44iLNAx8ZwILc1wigdaswzV5LyAaP9rcQYlfJQ2Fs6FfKvf6TtFMJ8bLDHd1rsqSisq3U11osFsyIp6kWQk6g+yn1Cfm4pcRB3rBDHGowv9ho7eWfXPXq4gR7NsCtM2SXPN9ib0VNPsMFz1dDjaYYe03mfmOw1os=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706802951; c=relaxed/simple;
	bh=2TB7G9586wBiGx6TP08ByJQQGcZ49ktk6A5S0Zz7eEA=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=XO3olNJwhm9HBL5Eyc/u3NcULWJRxaUFR6oI8cHeJ6DVNa5bylcvAuxTYaz+WtpUn/sFZUm8/78jZQ9l1B3XD3EVAYNaQ4bdc9CWtn0x11SNOGBz1SpMo604m/zwViFQAeljRABbsfUuFKzmO4GBcAf1/3maZYGp1mNfotutfBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=G9dsRo5m; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-40fc352d2e2so1641705e9.2
        for <devicetree@vger.kernel.org>; Thu, 01 Feb 2024 07:55:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1706802947; x=1707407747; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rGIV5k0CAIkt4/Drq57Mr31uOV54nJUOwQSsCzcpX2k=;
        b=G9dsRo5mBndH0MSMW/uIl8ZTCJMpbP3e+U977Pmx50Reev4/hGbbKFGBEa9gOtTHJC
         ID5z1P9L5CvkQymS8iaQ+y/mzAlLqWcHlxeBqb4swkzauyAomfVjEnsGBnGPcvfx/wRz
         T4xlsYTOygksWhfjaDrC3geL8Opf4yoKTMAVbtW0vwOAQ/LrnYVrAaIoiVH+40XjsVxa
         6q3QPbK6LeclniG5WGwJriXZ7NIvToK/Jf1H5CZK3ZVJTqP/kqSETyyBJXa2PVpJkwtX
         XyaSOtzAXpSU0/UxVScVGyMhvyTr60EfXB15zko2cgLL0U6Vyv//EOZTvQbaEWkmTRAB
         zFpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706802947; x=1707407747;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rGIV5k0CAIkt4/Drq57Mr31uOV54nJUOwQSsCzcpX2k=;
        b=AKYxqrSjg83GUJ6cyYUQBwz1IEEDgAWv+owlAA77gpqPelCR7i00M9Nqx25s9xh2+S
         xT/s1OeaNu15EW490P/QZog/sQSdJ+MF2yA4OR64XlpYmqXHNfKBDDYGCtsLA8t45OZN
         8ZrTMp1loVmVdNqLAuUvBetnlP4vGjSjGRYCQpDhEnojF3y9wpZoSjAT3+X2rzI3IrXk
         UU3GSU2HKiNaFF9mT8kqUBxFusRGAbDhdG6JtNkD8AgEeWW9d9KeycUIAYqY+YSzk9Ij
         yf6uh6M2XMX6fziPyFHD75KLwURRNzdcLHhNdBt1CA3LMU+GwotlbnRuAb2+Ve5poLCk
         RZYA==
X-Gm-Message-State: AOJu0YzUyi45wx/hYPwR9KbIZFbG9J8M2AH+VAFFwppFOlf64eAhGU8Q
	EVB4rb887r5Tn2oVJEuTyop+INt7xyyAy8SthbJFUfaqd7PYPuorJisyh+lHrbs=
X-Google-Smtp-Source: AGHT+IHrIgtPBGOwwkToCnKJnB1aV9LD4TnNqN3x0TxT01CT3Pl7rZrWkB/WvconB244cLvA5Ru8sw==
X-Received: by 2002:a5d:5051:0:b0:33a:e8b7:14e6 with SMTP id h17-20020a5d5051000000b0033ae8b714e6mr3518028wrt.55.1706802947384;
        Thu, 01 Feb 2024 07:55:47 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCXUMnyLPTzxs2SEFue0K3khL4YRX36+K6a24zNZtfHXX30QIy5AwLzkcOFoQSx9bYdOnjgFk7fGi0X9bf1oNY2Rzsr48eGGsQM0HqMrTVjODTok8uzFCEUfZMJ/z0yH2DMWVPkCgiO68mL/fAJoYRlh4Bht0FXuPud6GmRWwoHr5b0I5y7PiyFAHcZbs7jjbceC/CpoxGEKvsgtzrD7cBZyPq18HXGgzDlBxCaos0IFTiXOezjtX7SoBaSj7pgGXyNXnX/p9Wpc4F/rDMrXogWXuMF4jYSV9N3WATTc9bh9Ks9ibvnx+bPrvGdjN2q6VpaysNTaWNew82h33i/0/7b3DY3XG1/VBurZpJLKtQcBCiDZjKJGcUcOPEpcQ1UVzRy+qayZSl1ia/C2V8RhZ8LlWcHt49Zms7PtlFW1RbPzdG6u92Nyk8/WnpHoLTyTbZptchTnRl3JYj3PsW2XAXxiwB703s3Mvf8nGow5+gFM3Xhv3paQaGkxlIz3PZiwmP+Q2rRBdxhqLKPOcWNXxxB42qj5QBv5APxVn+nzH/EDWPc9WRVh/KcN0tf4zmDdNiOUnpSZBvkNAxjXh7EaukBQOjDrQyhBz2FmKdlD3UppVYUnQJdIR82XBPMlDYo6YG17TNElV7HBrLnk7AHx9sUICFEbIsJoNdLpDlrkadi6IWQJy3ycgqIukkp/LzSJyUvja3GPJN3+
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:dd01:5dec:43e3:b607])
        by smtp.gmail.com with ESMTPSA id ce2-20020a5d5e02000000b0033af4848124sm9650318wrb.109.2024.02.01.07.55.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Feb 2024 07:55:47 -0800 (PST)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Marcel Holtmann <marcel@holtmann.org>,
	Luiz Augusto von Dentz <luiz.dentz@gmail.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Alex Elder <elder@linaro.org>,
	Srini Kandagatla <srinivas.kandagatla@linaro.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Abel Vesa <abel.vesa@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Lukas Wunner <lukas@wunner.de>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-bluetooth@vger.kernel.org,
	linux-pci@vger.kernel.org,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: [RFC 6/9] PCI: create platform devices for child OF nodes of the port node
Date: Thu,  1 Feb 2024 16:55:29 +0100
Message-Id: <20240201155532.49707-7-brgl@bgdev.pl>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20240201155532.49707-1-brgl@bgdev.pl>
References: <20240201155532.49707-1-brgl@bgdev.pl>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

In order to introduce PCI power-sequencing, we need to create platform
devices for child nodes of the port node. They will get matched against
the pwrseq drivers (if one exists) and then the actual PCI device will
reuse the node once it's detected on the bus.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
 drivers/pci/bus.c    | 9 ++++++++-
 drivers/pci/remove.c | 2 ++
 2 files changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/pci/bus.c b/drivers/pci/bus.c
index 826b5016a101..17ab41094c4e 100644
--- a/drivers/pci/bus.c
+++ b/drivers/pci/bus.c
@@ -12,6 +12,7 @@
 #include <linux/errno.h>
 #include <linux/ioport.h>
 #include <linux/of.h>
+#include <linux/of_platform.h>
 #include <linux/proc_fs.h>
 #include <linux/slab.h>
 
@@ -342,8 +343,14 @@ void pci_bus_add_device(struct pci_dev *dev)
 	 */
 	pcibios_bus_add_device(dev);
 	pci_fixup_device(pci_fixup_final, dev);
-	if (pci_is_bridge(dev))
+	if (pci_is_bridge(dev)) {
 		of_pci_make_dev_node(dev);
+		retval = of_platform_populate(dev->dev.of_node, NULL, NULL,
+					      &dev->dev);
+		if (retval)
+			pci_err(dev, "failed to populate child OF nodes (%d)\n",
+				retval);
+	}
 	pci_create_sysfs_dev_files(dev);
 	pci_proc_attach_device(dev);
 	pci_bridge_d3_update(dev);
diff --git a/drivers/pci/remove.c b/drivers/pci/remove.c
index d749ea8250d6..fc9db2805888 100644
--- a/drivers/pci/remove.c
+++ b/drivers/pci/remove.c
@@ -1,6 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0
 #include <linux/pci.h>
 #include <linux/module.h>
+#include <linux/of_platform.h>
 #include "pci.h"
 
 static void pci_free_resources(struct pci_dev *dev)
@@ -22,6 +23,7 @@ static void pci_stop_dev(struct pci_dev *dev)
 		device_release_driver(&dev->dev);
 		pci_proc_detach_device(dev);
 		pci_remove_sysfs_dev_files(dev);
+		of_platform_depopulate(&dev->dev);
 		of_pci_remove_node(dev);
 
 		pci_dev_assign_added(dev, false);
-- 
2.40.1


