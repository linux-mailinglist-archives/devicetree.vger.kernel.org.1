Return-Path: <devicetree+bounces-192934-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 51D13AF88D6
	for <lists+devicetree@lfdr.de>; Fri,  4 Jul 2025 09:11:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 600C01CA0B7D
	for <lists+devicetree@lfdr.de>; Fri,  4 Jul 2025 07:11:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE9B327A46B;
	Fri,  4 Jul 2025 07:08:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="KN9hr0Xs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com [209.85.216.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F75F27A445
	for <devicetree@vger.kernel.org>; Fri,  4 Jul 2025 07:08:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751612899; cv=none; b=VB3H9SY92yCPVIURgvuGG5u3LLFsTY+dE5xyoHOaKEJrRXsLzn3jEOFWOTHzGQaZPyqxlsDpSzx8Dq4Jx2yd6cNDNDg2Szf4uRxyHBBm8tYPbG4hTrcmZ6si/lo/RU5OxVwMPWkbhKUCNngM2CEmdWdGDBHxM1Jrh2F541f+nVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751612899; c=relaxed/simple;
	bh=yxQ4/nao3TsSttA60EEZOodcoM/3MIN6VuOsCs7ivus=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=bWD0bvjiqIxCyuENUfAqTavwOLRiJ45HqjRD4tbuws6vD5QcoqKdKzZkfm3h4tpZ4QCQ7D17JAb9Ob31t1NZs4PmUD0tAYJTnopQ1Vx1lVxLVu205gCdqbHgVBqL52u3QERenq0vnmU3Q/H/dbhBvg2S8lv0l55Rx9MxKwZl5x4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=KN9hr0Xs; arc=none smtp.client-ip=209.85.216.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pj1-f51.google.com with SMTP id 98e67ed59e1d1-3134c67a173so724299a91.1
        for <devicetree@vger.kernel.org>; Fri, 04 Jul 2025 00:08:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1751612897; x=1752217697; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Hg2C8aGrSqthMYzi8AM2pKamXBwNz1uMo88H+80YoNE=;
        b=KN9hr0XsDD4ihdeBZTZlix/Um2RnhH13f54mSjiUqWWcXlDatZ/MVh9OBsLOZUmLDy
         SEeLz8yqCJ/I3XjZNb4Vjfg3n0TSGQn5JJjBPkU0POIEBluFhowzthbmmLKCwOhaUR22
         j8RDks1avGGHJxXz8SyD66J19kTM2ERKMTTK5C2lq7VfAdy2xCAi6PRIgVZlbiRBv5we
         iYC8KTqK+HEjYQyo1TRLR5VxX/JbXWcaiCwXc7ZVFHFqGixchQEouqR6G4LDhbwOuclG
         SrutBXAVFyGsGnQq3zegCu60mNOqMxaIEaRYzu7vuAvfgXb/HKcaMvuSIHHGhnt3s0rq
         pkYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751612897; x=1752217697;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Hg2C8aGrSqthMYzi8AM2pKamXBwNz1uMo88H+80YoNE=;
        b=JArllg7f0SA8TyAhR08+2hHC5IyCziPT3xE3ibnhnHgF1YufVQ2MTgw6zg6wNGgpxG
         gDWsC/JctsLD/vxAqpAvnrQlzHOfO0VTWWfiDrmOp4dRkhQl2m9VbzoAAixGv//1gnbz
         EKa8h6R/CS1Zxo4vjiHuw+kXTm3imUpeCLwNEmbiVcQ/9R0zR7e0duYPYWXNqyFLyn7O
         wVLL2wjsXDSce/me/3cXlArf3dXmc6/GZlUDUVE/B3XWAaeVrxzlo0vUx7GDWD2OkpxN
         irayu1OPgZQMOQSBBYIstvXfTbsb+EVFeufYc4kjN0tvMAhx4aMibtCDOitDpOFivo6s
         qLfQ==
X-Forwarded-Encrypted: i=1; AJvYcCUJ7OKFXxNjr6bcT20rTqqRMkU0IuakO+BBA1lbtuu7VeinScL3zckMzhoBRtI3IjTHm/blm7jIERth@vger.kernel.org
X-Gm-Message-State: AOJu0YxLxCXTW1a3RR+2/qhSCpB4ACv96e4JatztwTd6YQuD4ZLhxko0
	ahHyjevQCiq3h9mF1HUqbLJEnHYLCeOWORqwI3TCVe+FNF21qV/qEZRMkRwMP57bJ2c=
X-Gm-Gg: ASbGncuvTVI3bGMMVw+kVwerC2Ikc/oSM/BBKS/qwDYf5T266z6+y5924t6q+LAuAo5
	SZr5FssJOCvbNCYQSedSWen4FTsH/m6iMRGJ8T7Eaces1M1CKpBtDvx+Psyh8jaIdpC5Hg5WdIs
	g0u6EOXVQ25MP0n5PXEA7rW9Sua0LU5omVL4JjUw1t/mAXEs+p0VzUrMxW+Ui3P2BIwLA6MhHeh
	70Ya265PIfC48yj1Q6yig+DKa60gP8IfR7sjHfxJAMKD1Ui3FgOUl4ovXIJOmTiuG8NnzKjXeFN
	qetSkOzwFVReSI4YJl4XtrTxSbBQwV3P5dhf1jNMyRWg2dZxz2XFRx4ucnMfWlh9Fz9L2tYQfei
	DJpisM+qFchmSfki2SQ+2u4DtUQ==
X-Google-Smtp-Source: AGHT+IFT5Pa0dkoRqff/joV4++Kb+3u576Zbjs98XhITYJ3V0wKn/H8sYSAtGybI3ynT60XjUmc+dg==
X-Received: by 2002:a17:90b:568b:b0:313:db0b:75e4 with SMTP id 98e67ed59e1d1-31aac5333cfmr2825712a91.33.1751612897430;
        Fri, 04 Jul 2025 00:08:17 -0700 (PDT)
Received: from anup-ubuntu-vm.localdomain ([103.97.166.196])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-31aaae59a93sm1358697a91.12.2025.07.04.00.08.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Jul 2025 00:08:16 -0700 (PDT)
From: Anup Patel <apatel@ventanamicro.com>
To: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jassi Brar <jassisinghbrar@gmail.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	"Rafael J . Wysocki" <rafael@kernel.org>,
	Mika Westerberg <mika.westerberg@linux.intel.com>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <ukleinek@kernel.org>
Cc: Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Len Brown <lenb@kernel.org>,
	Sunil V L <sunilvl@ventanamicro.com>,
	Rahul Pathak <rpathak@ventanamicro.com>,
	Leyfoon Tan <leyfoon.tan@starfivetech.com>,
	Atish Patra <atish.patra@linux.dev>,
	Andrew Jones <ajones@ventanamicro.com>,
	Samuel Holland <samuel.holland@sifive.com>,
	Anup Patel <anup@brainfault.org>,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-acpi@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Anup Patel <apatel@ventanamicro.com>
Subject: [PATCH v8 21/24] mailbox/riscv-sbi-mpxy: Add ACPI support
Date: Fri,  4 Jul 2025 12:33:53 +0530
Message-ID: <20250704070356.1683992-22-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250704070356.1683992-1-apatel@ventanamicro.com>
References: <20250704070356.1683992-1-apatel@ventanamicro.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Sunil V L <sunilvl@ventanamicro.com>

Add ACPI support for the RISC-V SBI message proxy (MPXY) based
mailbox driver.

Signed-off-by: Sunil V L <sunilvl@ventanamicro.com>
Signed-off-by: Anup Patel <apatel@ventanamicro.com>
---
 drivers/mailbox/riscv-sbi-mpxy-mbox.c | 27 ++++++++++++++++++++++++++-
 1 file changed, 26 insertions(+), 1 deletion(-)

diff --git a/drivers/mailbox/riscv-sbi-mpxy-mbox.c b/drivers/mailbox/riscv-sbi-mpxy-mbox.c
index 1a8a74d3ad4b..a739088c3d4c 100644
--- a/drivers/mailbox/riscv-sbi-mpxy-mbox.c
+++ b/drivers/mailbox/riscv-sbi-mpxy-mbox.c
@@ -5,9 +5,11 @@
  * Copyright (C) 2025 Ventana Micro Systems Inc.
  */
 
+#include <linux/acpi.h>
 #include <linux/cpu.h>
 #include <linux/errno.h>
 #include <linux/init.h>
+#include <linux/irqchip/riscv-imsic.h>
 #include <linux/mailbox_controller.h>
 #include <linux/mailbox/riscv-rpmi-message.h>
 #include <linux/minmax.h>
@@ -902,6 +904,8 @@ static int mpxy_mbox_probe(struct platform_device *pdev)
 	 * explicitly configure here.
 	 */
 	if (!dev_get_msi_domain(dev)) {
+		struct fwnode_handle *fwnode = dev_fwnode(dev);
+
 		/*
 		 * The device MSI domain for OF devices is only set at the
 		 * time of populating/creating OF device. If the device MSI
@@ -909,8 +913,15 @@ static int mpxy_mbox_probe(struct platform_device *pdev)
 		 * then we need to set it explicitly before using any platform
 		 * MSI functions.
 		 */
-		if (dev_of_node(dev))
+		if (is_of_node(fwnode)) {
 			of_msi_configure(dev, dev_of_node(dev));
+		} else if (is_acpi_device_node(fwnode)) {
+			struct irq_domain *msi_domain;
+
+			msi_domain = irq_find_matching_fwnode(imsic_acpi_get_fwnode(dev),
+							      DOMAIN_BUS_PLATFORM_MSI);
+			dev_set_msi_domain(dev, msi_domain);
+		}
 
 		if (!dev_get_msi_domain(dev))
 			return -EPROBE_DEFER;
@@ -958,6 +969,13 @@ static int mpxy_mbox_probe(struct platform_device *pdev)
 		return rc;
 	}
 
+#ifdef CONFIG_ACPI
+	struct acpi_device *adev = ACPI_COMPANION(dev);
+
+	if (adev)
+		acpi_dev_clear_dependencies(adev);
+#endif
+
 	dev_info(dev, "mailbox registered with %d channels\n",
 		 mbox->channel_count);
 	return 0;
@@ -977,10 +995,17 @@ static const struct of_device_id mpxy_mbox_of_match[] = {
 };
 MODULE_DEVICE_TABLE(of, mpxy_mbox_of_match);
 
+static const struct acpi_device_id mpxy_mbox_acpi_match[] = {
+	{ "RSCV0005" },
+	{}
+};
+MODULE_DEVICE_TABLE(acpi, mpxy_mbox_acpi_match);
+
 static struct platform_driver mpxy_mbox_driver = {
 	.driver = {
 		.name = "riscv-sbi-mpxy-mbox",
 		.of_match_table = mpxy_mbox_of_match,
+		.acpi_match_table = mpxy_mbox_acpi_match,
 	},
 	.probe = mpxy_mbox_probe,
 	.remove = mpxy_mbox_remove,
-- 
2.43.0


