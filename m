Return-Path: <devicetree+bounces-247983-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D0251CCD553
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 20:08:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 55D733062E5D
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 19:06:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D3CF333725;
	Thu, 18 Dec 2025 19:06:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="KsxSAYAz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9156A32E15A
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 19:06:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766084805; cv=none; b=TWNpkbh4Swq/1VLejhQ2j5im8jvYHHtwFAP49RhrEme2uJv5K5edKPbljWdtvpHmLIGvvK+scvmS97UT7UtI6XjeEK7whMoK/+t6njNeTEDEJVpSREDsDAvg7EJDU/KfdER3poNRS7H93YGk0dt1jMMX1Ln4K9pHgO64GbaKitY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766084805; c=relaxed/simple;
	bh=24g1S/E7aS1cZPLixaJfTsFjvJ6GZwwKiWh1De6O9eA=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=RkVQCXS8cvTZ+hsssp0mNRlTlVRRMN7GjqxTMXmq20agpcDaNcmqa01DLpBqpHnzUYRiQJoq1hMMEAzyr3HqTI3BsI7BnCU3YmG7HTi03590kCToF4T9/qIQEGykeEAazBvrykluOpk67sXUyeYoVGn9SmkggIUjYbqTfVj7+TA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=KsxSAYAz; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-b7a72874af1so172856266b.3
        for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 11:06:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1766084802; x=1766689602; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zx79JY8qDg1xmaSwg2kQCiQZA4ov318HoPLNBWo/G6k=;
        b=KsxSAYAzsea3CFYI/n/h9mI7C2hBPtb2De7RpmUR3My0h87zCF9oqFHBRUKooCKQ7L
         1fxUelciBK67eUGWGGej14HUWlpPFRRWEdY4Se8FN0o1Ihr22jPhCpGEWn7lADq+FeOY
         ghAWGTGUdo5auFMkwONAlsYUbaXUrQcpVb9IgnytgPv47oFOk3YMzvR5o/4p23ITN9q+
         jbi5tF4PBFpTLv3r7EJjLY0d2eX0JetCFRewePDVtfaeVeXhIX74s0fDQH1wCNMIBFTL
         yHatMFTDGtT57ugfXNsQ+6UNa22UL2pwPdL61DwWIOhLiQN+xp5ECHMAX1gxX1S2kId3
         lTBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766084802; x=1766689602;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=zx79JY8qDg1xmaSwg2kQCiQZA4ov318HoPLNBWo/G6k=;
        b=oLpwYC8Y+Atktom9gDkBYeBbhnPQZCBqf/2HQFBuKUOimti0AxIloblqADDZDYRPMF
         OeZzFsNs6cQaG0tprsJgKow5wOJrJk5+ZLO3svafaO9vYnbCjVtWhGkZbBbjMQBE66d2
         SmBR6fb1A/AGZcTrDIi91e9CVWzobV+yHCcU/qtifJXvq2gjlhqlfYbuNx5NGyDCuWKT
         LqtJk0eKClB0hs1EExqwd3AMUNi2/+sUTULDw35Q0/cF4Xw/J/Fd3AM75tFMKv7WSizW
         ziZX3qEhiN4BwUgUxGosaa9MmkhdiQ8GMAFUTkmxrjS7/s9Fn2MZvm2KPV2TMFQgCrFW
         I8Rg==
X-Forwarded-Encrypted: i=1; AJvYcCUsXqNwFyYWiI1WVk4GCZm4mEy8bcCaLRDwBCyIpDwFOKDDga1P9Xk0g9vM1xiINEqwo2kymp4wxnCE@vger.kernel.org
X-Gm-Message-State: AOJu0YxeOW8maDI1AuTAApvDT6hJW7zMa00elLq+tSltQrMKxhZl/mrl
	mVpHQ+U1dpZ2FUfbv1/do3ernZII6AxtMRwma613mMLttI9KHENvfRnZEIla3If4Mhs=
X-Gm-Gg: AY/fxX4ZNikEW4onALuFUEnbiqx90G7oaL0TaBLn1PADkUKCD/7J/2umOwOXeLaA6X4
	HQbdZC0A2k6dQSDRfukLvm3f477Jhv7bquo6Iihe/ZUqifo5w38cWnH2BzXe7rZ+yEf3B9T13q0
	i/Q+Hz7sx43Xtlo6Zz1OAZ70g1pHZ1MNkZonbFZ3vRQ5HPZ0zp23RrQz1nDo0g2k8vev2Sx6y2s
	KylRqE5sQb37tgKiJkz7DJG5Z039GwBNvW594EM5N6MTBclzsH6T7/DJl419XDRAjhLt7JVJrhM
	VFSx5r6s3iyrpDGR9bO1tbCYCWBk9mHKadMFRUnM+jdFkGhrSNUpmeDbbrXvMY34dG4wGg99y+Q
	RiMewhCo73naYVZbkLchFJp3+vHhOnfUjLuUTlrX0o/INMMNCzEPQBish1fawtE0ZnjuFGKXH8I
	OXp2vWi2hByKpUdey/I534OuvS2+9aVbZEdRZggKZXtrzpQazq2ba62w==
X-Google-Smtp-Source: AGHT+IGz/hwriZCabz4pyg0PAJ/ezKOQ6S+SFGdp1KobFV5gJSyL5vIdIRhrdzKTifgKNcjBLVlatg==
X-Received: by 2002:a17:907:72c1:b0:b80:1d4b:bddc with SMTP id a640c23a62f3a-b803694fe6cmr39099266b.0.1766084801609;
        Thu, 18 Dec 2025 11:06:41 -0800 (PST)
Received: from localhost (host-79-37-15-246.retail.telecomitalia.it. [79.37.15.246])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64b91494b94sm155859a12.22.2025.12.18.11.06.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Dec 2025 11:06:41 -0800 (PST)
From: Andrea della Porta <andrea.porta@suse.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Andrea della Porta <andrea.porta@suse.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rpi-kernel@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-pci@vger.kernel.org,
	iivanov@suse.de,
	svarbanov@suse.de,
	mbrugger@suse.com,
	Phil Elwell <phil@raspberrypi.com>
Subject: [PATCH 2/4] misc: rp1: drop overlay support
Date: Thu, 18 Dec 2025 20:09:07 +0100
Message-ID: <4b0aa7160877cf128b9bc713776bcac73c46eb24.1766077285.git.andrea.porta@suse.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <cover.1766077285.git.andrea.porta@suse.com>
References: <cover.1766077285.git.andrea.porta@suse.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The RP1 driver can load an overlay at runtime to describe the inner
peripherals. This has led to a lot of confusion regarding the naming
of nodes, their topology and the reclaiming of related node resources.

Since the overlay is currently not fully functional, drop its support
in the driver in favor of the fully described static DT.

This also means that this driver does not depend on CONFIG_PCI_DYNAMIC_OF_NODES
and no longer requires PCI quirks to dynamically create the intermediate
PCI nodes.

Signed-off-by: Andrea della Porta <andrea.porta@suse.com>
---
 drivers/misc/rp1/Kconfig      |  6 +-----
 drivers/misc/rp1/Makefile     |  3 +--
 drivers/misc/rp1/rp1-pci.dtso | 25 -----------------------
 drivers/misc/rp1/rp1_pci.c    | 37 ++++-------------------------------
 drivers/pci/quirks.c          |  1 -
 5 files changed, 6 insertions(+), 66 deletions(-)
 delete mode 100644 drivers/misc/rp1/rp1-pci.dtso

diff --git a/drivers/misc/rp1/Kconfig b/drivers/misc/rp1/Kconfig
index 5232e70d3079b..2c13b3968b011 100644
--- a/drivers/misc/rp1/Kconfig
+++ b/drivers/misc/rp1/Kconfig
@@ -5,8 +5,7 @@
 
 config MISC_RP1
 	tristate "RaspberryPi RP1 misc device"
-	depends on OF_IRQ && OF_OVERLAY && PCI_MSI && PCI_QUIRKS
-	select PCI_DYNAMIC_OF_NODES
+	depends on OF_IRQ && PCI_MSI
 	help
 	  Support the RP1 peripheral chip found on Raspberry Pi 5 board.
 
@@ -15,6 +14,3 @@ config MISC_RP1
 
 	  The driver is responsible for enabling the DT node once the PCIe
 	  endpoint has been configured, and handling interrupts.
-
-	  This driver uses an overlay to load other drivers to support for
-	  RP1 internal sub-devices.
diff --git a/drivers/misc/rp1/Makefile b/drivers/misc/rp1/Makefile
index 508b4cb056277..ab32b433d7ede 100644
--- a/drivers/misc/rp1/Makefile
+++ b/drivers/misc/rp1/Makefile
@@ -1,3 +1,2 @@
 # SPDX-License-Identifier: GPL-2.0-only
-obj-$(CONFIG_MISC_RP1)		+= rp1-pci.o
-rp1-pci-objs			:= rp1_pci.o rp1-pci.dtbo.o
+obj-$(CONFIG_MISC_RP1)		+= rp1_pci.o
diff --git a/drivers/misc/rp1/rp1-pci.dtso b/drivers/misc/rp1/rp1-pci.dtso
deleted file mode 100644
index eea826b36e029..0000000000000
--- a/drivers/misc/rp1/rp1-pci.dtso
+++ /dev/null
@@ -1,25 +0,0 @@
-// SPDX-License-Identifier: (GPL-2.0 OR MIT)
-
-/*
- * The dts overlay is included from the dts directory so
- * it can be possible to check it with CHECK_DTBS while
- * also compile it from the driver source directory.
- */
-
-/dts-v1/;
-/plugin/;
-
-/ {
-	fragment@0 {
-		target-path="";
-		__overlay__ {
-			compatible = "pci1de4,1";
-			#address-cells = <3>;
-			#size-cells = <2>;
-			interrupt-controller;
-			#interrupt-cells = <2>;
-
-			#include "arm64/broadcom/rp1-common.dtsi"
-		};
-	};
-};
diff --git a/drivers/misc/rp1/rp1_pci.c b/drivers/misc/rp1/rp1_pci.c
index a342bcc6164bb..d210da84c30a2 100644
--- a/drivers/misc/rp1/rp1_pci.c
+++ b/drivers/misc/rp1/rp1_pci.c
@@ -34,16 +34,11 @@
 /* Interrupts */
 #define RP1_INT_END		61
 
-/* Embedded dtbo symbols created by cmd_wrap_S_dtb in scripts/Makefile.lib */
-extern char __dtbo_rp1_pci_begin[];
-extern char __dtbo_rp1_pci_end[];
-
 struct rp1_dev {
 	struct pci_dev *pdev;
 	struct irq_domain *domain;
 	struct irq_data *pcie_irqds[64];
 	void __iomem *bar1;
-	int ovcs_id;	/* overlay changeset id */
 	bool level_triggered_irq[RP1_INT_END];
 };
 
@@ -184,24 +179,13 @@ static void rp1_unregister_interrupts(struct pci_dev *pdev)
 
 static int rp1_probe(struct pci_dev *pdev, const struct pci_device_id *id)
 {
-	u32 dtbo_size = __dtbo_rp1_pci_end - __dtbo_rp1_pci_begin;
-	void *dtbo_start = __dtbo_rp1_pci_begin;
 	struct device *dev = &pdev->dev;
 	struct device_node *rp1_node;
-	bool skip_ovl = true;
 	struct rp1_dev *rp1;
 	int err = 0;
 	int i;
 
-	/*
-	 * Either use rp1_nexus node if already present in DT, or
-	 * set a flag to load it from overlay at runtime
-	 */
-	rp1_node = of_find_node_by_name(NULL, "rp1_nexus");
-	if (!rp1_node) {
-		rp1_node = dev_of_node(dev);
-		skip_ovl = false;
-	}
+	rp1_node = dev_of_node(dev);
 
 	if (!rp1_node) {
 		dev_err(dev, "Missing of_node for device\n");
@@ -276,42 +260,29 @@ static int rp1_probe(struct pci_dev *pdev, const struct pci_device_id *id)
 						 rp1_chained_handle_irq, rp1);
 	}
 
-	if (!skip_ovl) {
-		err = of_overlay_fdt_apply(dtbo_start, dtbo_size, &rp1->ovcs_id,
-					   rp1_node);
-		if (err)
-			goto err_unregister_interrupts;
-	}
-
 	err = of_platform_default_populate(rp1_node, NULL, dev);
 	if (err) {
 		dev_err_probe(&pdev->dev, err, "Error populating devicetree\n");
-		goto err_unload_overlay;
+		goto err_unregister_interrupts;
 	}
 
-	if (skip_ovl)
-		of_node_put(rp1_node);
+	of_node_put(rp1_node);
 
 	return 0;
 
-err_unload_overlay:
-	of_overlay_remove(&rp1->ovcs_id);
 err_unregister_interrupts:
 	rp1_unregister_interrupts(pdev);
 err_put_node:
-	if (skip_ovl)
-		of_node_put(rp1_node);
+	of_node_put(rp1_node);
 
 	return err;
 }
 
 static void rp1_remove(struct pci_dev *pdev)
 {
-	struct rp1_dev *rp1 = pci_get_drvdata(pdev);
 	struct device *dev = &pdev->dev;
 
 	of_platform_depopulate(dev);
-	of_overlay_remove(&rp1->ovcs_id);
 	rp1_unregister_interrupts(pdev);
 }
 
diff --git a/drivers/pci/quirks.c b/drivers/pci/quirks.c
index b9c252aa6fe08..280cd50d693bd 100644
--- a/drivers/pci/quirks.c
+++ b/drivers/pci/quirks.c
@@ -6308,7 +6308,6 @@ DECLARE_PCI_FIXUP_FINAL(PCI_VENDOR_ID_XILINX, 0x5020, of_pci_make_dev_node);
 DECLARE_PCI_FIXUP_FINAL(PCI_VENDOR_ID_XILINX, 0x5021, of_pci_make_dev_node);
 DECLARE_PCI_FIXUP_FINAL(PCI_VENDOR_ID_REDHAT, 0x0005, of_pci_make_dev_node);
 DECLARE_PCI_FIXUP_FINAL(PCI_VENDOR_ID_EFAR, 0x9660, of_pci_make_dev_node);
-DECLARE_PCI_FIXUP_FINAL(PCI_VENDOR_ID_RPI, PCI_DEVICE_ID_RPI_RP1_C0, of_pci_make_dev_node);
 
 /*
  * Devices known to require a longer delay before first config space access
-- 
2.35.3


