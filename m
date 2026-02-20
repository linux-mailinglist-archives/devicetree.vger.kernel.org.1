Return-Path: <devicetree+bounces-267006-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OAHGI154mGlrJAMAu9opvQ
	(envelope-from <devicetree+bounces-267006-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 16:06:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B6D5168AB7
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 16:06:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C4DCE303EFFB
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 15:05:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CDB5C34F27D;
	Fri, 20 Feb 2026 15:04:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="T/A4a7yj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com [209.85.128.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAD8C2C11C6
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 15:04:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771599895; cv=none; b=ohfnKsyo72eX+Ywa4+s1XlG0ep5r0vZof2QcmY9i/yF4owEcteKOc9z4gW2PDqM7kp7wt7e6p/dQCY2SqkKHeUmXOlXELJ882isbZExhbq10eY3pP2XXIkiR704/qOiJGxv7FFB14MjBLe+cI/CEUrfXmgPNEUgGrL/zVUhrMyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771599895; c=relaxed/simple;
	bh=YuxSOv9VX3tAM43H/mZdqAb77YkjqUcBbc4EzjFvNuc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=k5LslOVvw+6agznXj7YKj5vkXGhqIgEECxjKZSahURKJZ/NFJuzaqaLlIM6WbR/bu3p7Y2OTb03ThNmCHKJij3NbArpOztiZqDtO6TkPf/KRJ83Y3zZw/TXMESCZEd/U6eW8vRGaJPSUaf6mFi4Uda6raF9tMfecutU+0qtRBsI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=T/A4a7yj; arc=none smtp.client-ip=209.85.128.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f66.google.com with SMTP id 5b1f17b1804b1-480706554beso24741285e9.1
        for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 07:04:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1771599891; x=1772204691; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rX+H6vhxaMpbjCvEe0dhOglO89IbsRxSTfxDCUCa78U=;
        b=T/A4a7yjVgx4XDe/xLfYpPpVPr3dRgjrokkKj7gPNA7XfXmly4J38xUlyfXidMjITU
         /cwX5pyqa+u3Pr79XqGmrDN/YIito5Rge6Ok7weI0SWxGXVnZa5EmVpAB1OerJugJREb
         MaDOwY5HCbNsRUiyO7DuqkB3AiA7saTVPs3p7E4mrAMwob+ISKNL0JvcKlv3J+sKRn5L
         zFDPNIsRQpyD6l80Ou5n9USbCMoMultMrz1d0LvYMwRralBj46HGBWplejIuhewxiPWg
         rTpFepsMHh1xhk/Hd2xEKpLcw73HutPLBjeIAXBPELWcu0+2Ya8TKsqY+GHv+90Zu1+o
         r9/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771599891; x=1772204691;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=rX+H6vhxaMpbjCvEe0dhOglO89IbsRxSTfxDCUCa78U=;
        b=IPZG7cHtLcKlxGhHt+QbGfTNtynR2e+WVMgqLOxho94azoFjB+Eb8HAR4HTPf/aW4v
         OYeKdZPfXao/LEvbnQjsjQc1+xNRDxK05CtJpCvS3ZnkBdIBrgI+9408I2Amg1qgMmPu
         mbSH0K5RZRdr3K684bG4CjtLk4meAWDrR5+pw7JyyNxo94IhUthlCOU1ZUF72Bg/nEu+
         g7ogsHse13L+TH9AXoM7Z9wKCyWYX7HE64eyhyqcsqgrBYc6ckTSI20zbcjBp3bPrtx1
         8WqJBCTOtFqNdp0SLOjtHEpRfBs3TkWc+/FoPB+4GzG5F6UOR3aQ7qNae7NSDBGUAbEV
         2Grg==
X-Forwarded-Encrypted: i=1; AJvYcCWrkx8g3SxxxR33Suw2/QeMo56FvJfdXDUgxN4cU7Vng+EU0ykdBQCghqyNFudD7W5rVk+M/ndN+j/o@vger.kernel.org
X-Gm-Message-State: AOJu0Yw1n5wTMeaxXjrcmFlu+QskD4L+zGjb8tKF2QxKj7sD0GDZIWlP
	Mn6hqeaQr23hXvn8MhHhqLgllxM2OE+lrVoVQmWLbsVj7LVubIldsN2Xt3oQhJb5o/72nGo58K3
	KLiopcbg=
X-Gm-Gg: AZuq6aLCJkfX643rUXRFetgpKykFsJURRWk9e17sef34AehpJbWN8enk1ol1KMKB2z+
	cbiTndZfLLhL9DPFPYKs+MEhKeOgjOTKF80jl38hT3DL7VOqm6M5Q7fVhohQq7Vy7uAc5coESwu
	qm04XTC9BzW4bhR1T+DHj8yRO+gY8UDY3acshGkJ6wczXqLwqhlmf+tNGz6ZECr7FLBi3bhrvOl
	rpi0nfAGIxgsI1Zh4mL/+EpSae8iAPxsmjPD1isj/wcmEcMI84T/bgxPHn/QwTaP/RTuu1lSc7R
	tNe0BYUjmJp3aksTMLGnvYSQtgJZ0cDRvVQ/JNvNchW4+nr6YjQQZpeyWFFWHYebxWkzXLhEb6V
	231qTABfzaTfRlr0Mp1KO9zuEpIx//Rx9WlbiNyhu/v1l+aBB9MRlrRbjAD+uq+O5RVkrHdO6TP
	f7mnSTLrkqfxWyQU69PQp4KDoXvbuiu2Hx1Gw4HiJ5j3bv
X-Received: by 2002:a05:600c:6098:b0:477:b734:8c53 with SMTP id 5b1f17b1804b1-48379ba08a6mr350182465e9.12.1771599891220;
        Fri, 20 Feb 2026 07:04:51 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:106d:1080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483a31c56d8sm122064505e9.8.2026.02.20.07.04.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Feb 2026 07:04:50 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Fri, 20 Feb 2026 16:04:42 +0100
Subject: [PATCH v5 3/9] pci: pwrctrl: rename pci-pwrctrl-slot as generic
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260220-topic-sm8650-ayaneo-pocket-s2-base-v5-3-1ad79caa1efa@linaro.org>
References: <20260220-topic-sm8650-ayaneo-pocket-s2-base-v5-0-1ad79caa1efa@linaro.org>
In-Reply-To: <20260220-topic-sm8650-ayaneo-pocket-s2-base-v5-0-1ad79caa1efa@linaro.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Geert Uytterhoeven <geert+renesas@glider.be>, 
 Magnus Damm <magnus.damm@gmail.com>, Bartosz Golaszewski <brgl@kernel.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, 
 Bjorn Helgaas <bhelgaas@google.com>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>
Cc: linux-usb@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
 linux-pci@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=11164;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=YuxSOv9VX3tAM43H/mZdqAb77YkjqUcBbc4EzjFvNuc=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBpmHgLmCF3CTo535m1bfJkOpv8ACv7dYrDYD3b49tl
 ENGFzYKJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCaZh4CwAKCRB33NvayMhJ0Xg+EA
 CgyxFK/tDMA38L24NXVn5UJEeqh+2aCdRCiIDgBjofNJoPYWJd0D7Nk1kaIheKgn1+FEVFZthiM4FO
 s5lGnKGUASU5vtHNZIjeSqFDzHpKuKww6kCGuRSWzu0iiOvNXfR6oHPlJfOfGP1W0/LbkOmLstMbQ7
 uLWKeWJF5vP3MOc883gu8P9PeZ2ues3/rs/KgrtU1Qhp1LXz1n7ro5I9qQjDgIX7fS73F1l+hnyKpZ
 TlGet9GmqrHAF1MUtDSVRXFjXzF+j5z+6ekVPo82iSBblZtUoTcKZoqNo5J1T4rWvkbAPve+aPOHNL
 9666u1GBD4MJy+UTmNnyn+I8P6Eq3+91QJ2TLFsb48x0W/L0ldUt9VemYTQrQEb/d/RpeQztI8FLfA
 TaqgaaL64cEPime7QZEXpZRlmqnNM3XUWgq7kzLYAjh/Naq66E3XkOYI93Axc/SitKTd8HkVFZSC3n
 b7c65ekWX3kTP0wLZlGTws8c+c/3BIs/A61JhtDjAqK4vJ002zlQsr9rJMNAkVMwe2npiINVI+D4vk
 O7Kwn8ORtX0wgK/SXp6ebA1DvoXA/yvUfzlZSj+p6XP9jzBdCasJufVAq96hFeaRAMIKusfK8JDK+C
 cq0y7dbsB/fOBqzAi1S56MvrxkQ6C+h8G4VTt2i8D4MpgOtwthfYNBvORNNw==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-267006-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[linuxfoundation.org,kernel.org,glider.be,gmail.com,google.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[linaro.org:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[neil.armstrong@linaro.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,linaro.org:mid,linaro.org:dkim,linaro.org:email]
X-Rspamd-Queue-Id: 3B6D5168AB7
X-Rspamd-Action: no action

The driver is pretty generic and would fit for either
PCI Slots or endpoints connected to PCI ports, so rename
the driver and module as pci-pwrctrl-generic.

Suggested-by: Manivannan Sadhasivam <mani@kernel.org>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 drivers/pci/controller/dwc/Kconfig |   4 +-
 drivers/pci/pwrctrl/Kconfig        |  13 ++--
 drivers/pci/pwrctrl/Makefile       |   4 +-
 drivers/pci/pwrctrl/generic.c      | 139 +++++++++++++++++++++++++++++++++++++
 drivers/pci/pwrctrl/slot.c         | 137 ------------------------------------
 5 files changed, 150 insertions(+), 147 deletions(-)

diff --git a/drivers/pci/controller/dwc/Kconfig b/drivers/pci/controller/dwc/Kconfig
index d0aa031397fa..4bd36e133ca6 100644
--- a/drivers/pci/controller/dwc/Kconfig
+++ b/drivers/pci/controller/dwc/Kconfig
@@ -309,7 +309,7 @@ config PCIE_QCOM
 	select CRC8
 	select PCIE_QCOM_COMMON
 	select PCI_HOST_COMMON
-	select PCI_PWRCTRL_SLOT
+	select PCI_PWRCTRL_GENERIC
 	help
 	  Say Y here to enable PCIe controller support on Qualcomm SoCs. The
 	  PCIe controller uses the DesignWare core plus Qualcomm-specific
@@ -431,7 +431,7 @@ config PCIE_SPACEMIT_K1
 	depends on ARCH_SPACEMIT || COMPILE_TEST
 	depends on HAS_IOMEM
 	select PCIE_DW_HOST
-	select PCI_PWRCTRL_SLOT
+	select PCI_PWRCTRL_GENERIC
 	default ARCH_SPACEMIT
 	help
 	  Enables support for the DesignWare based PCIe controller in
diff --git a/drivers/pci/pwrctrl/Kconfig b/drivers/pci/pwrctrl/Kconfig
index cd3aa15bad00..ff67bec5b500 100644
--- a/drivers/pci/pwrctrl/Kconfig
+++ b/drivers/pci/pwrctrl/Kconfig
@@ -11,17 +11,18 @@ config PCI_PWRCTRL_PWRSEQ
 	select POWER_SEQUENCING
 	select PCI_PWRCTRL
 
-config PCI_PWRCTRL_SLOT
-	tristate "PCI Power Control driver for PCI slots"
+config PCI_PWRCTRL_GENERIC
+	tristate "Generic PCI Power Control driver for PCI slots and endpoints"
 	select POWER_SEQUENCING
 	select PCI_PWRCTRL
 	help
-	  Say Y here to enable the PCI Power Control driver to control the power
-	  state of PCI slots.
+	  Say Y here to enable the generic PCI Power Control driver to control
+	  the power state of PCI slots and endpoints.
 
 	  This is a generic driver that controls the power state of different
-	  PCI slots. The voltage regulators powering the rails of the PCI slots
-	  are expected to be defined in the devicetree node of the PCI bridge.
+	  PCI slots and endpoints. The voltage regulators powering the rails
+	  of the PCI slots or endpoints are expected to be defined in the
+	  devicetree node of the PCI bridge.
 
 config PCI_PWRCTRL_TC9563
 	tristate "PCI Power Control driver for TC9563 PCIe switch"
diff --git a/drivers/pci/pwrctrl/Makefile b/drivers/pci/pwrctrl/Makefile
index 13b02282106c..f6bb4fb9a410 100644
--- a/drivers/pci/pwrctrl/Makefile
+++ b/drivers/pci/pwrctrl/Makefile
@@ -5,7 +5,7 @@ pci-pwrctrl-core-y			:= core.o
 
 obj-$(CONFIG_PCI_PWRCTRL_PWRSEQ)	+= pci-pwrctrl-pwrseq.o
 
-obj-$(CONFIG_PCI_PWRCTRL_SLOT)		+= pci-pwrctrl-slot.o
-pci-pwrctrl-slot-y			:= slot.o
+obj-$(CONFIG_PCI_PWRCTRL_GENERIC)	+= pci-pwrctrl-generic.o
+pci-pwrctrl-generic-y			:= generic.o
 
 obj-$(CONFIG_PCI_PWRCTRL_TC9563)	+= pci-pwrctrl-tc9563.o
diff --git a/drivers/pci/pwrctrl/generic.c b/drivers/pci/pwrctrl/generic.c
new file mode 100644
index 000000000000..8e6f2fd5bcaf
--- /dev/null
+++ b/drivers/pci/pwrctrl/generic.c
@@ -0,0 +1,139 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (C) 2024 Linaro Ltd.
+ * Author: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
+ */
+
+#include <linux/clk.h>
+#include <linux/device.h>
+#include <linux/mod_devicetable.h>
+#include <linux/module.h>
+#include <linux/of_graph.h>
+#include <linux/pci-pwrctrl.h>
+#include <linux/platform_device.h>
+#include <linux/pwrseq/consumer.h>
+#include <linux/regulator/consumer.h>
+#include <linux/slab.h>
+
+struct generic_pwrctrl {
+	struct pci_pwrctrl pwrctrl;
+	struct regulator_bulk_data *supplies;
+	int num_supplies;
+	struct clk *clk;
+	struct pwrseq_desc *pwrseq;
+};
+
+static int generic_pwrctrl_power_on(struct pci_pwrctrl *pwrctrl)
+{
+	struct generic_pwrctrl *generic =
+				container_of(pwrctrl,
+					     struct generic_pwrctrl, pwrctrl);
+	int ret;
+
+	if (generic->pwrseq) {
+		pwrseq_power_on(generic->pwrseq);
+		return 0;
+	}
+
+	ret = regulator_bulk_enable(generic->num_supplies, generic->supplies);
+	if (ret < 0) {
+		dev_err(generic->pwrctrl.dev, "Failed to enable generic regulators\n");
+		return ret;
+	}
+
+	return clk_prepare_enable(generic->clk);
+}
+
+static int generic_pwrctrl_power_off(struct pci_pwrctrl *pwrctrl)
+{
+	struct generic_pwrctrl *generic =
+				container_of(pwrctrl,
+					     struct generic_pwrctrl, pwrctrl);
+
+	if (generic->pwrseq) {
+		pwrseq_power_off(generic->pwrseq);
+		return 0;
+	}
+
+	regulator_bulk_disable(generic->num_supplies, generic->supplies);
+	clk_disable_unprepare(generic->clk);
+
+	return 0;
+}
+
+static void devm_generic_pwrctrl_release(void *data)
+{
+	struct generic_pwrctrl *generic = data;
+
+	generic_pwrctrl_power_off(&generic->pwrctrl);
+	regulator_bulk_free(generic->num_supplies, generic->supplies);
+}
+
+static int generic_pwrctrl_probe(struct platform_device *pdev)
+{
+	struct generic_pwrctrl *generic;
+	struct device *dev = &pdev->dev;
+	int ret;
+
+	generic = devm_kzalloc(dev, sizeof(*generic), GFP_KERNEL);
+	if (!generic)
+		return -ENOMEM;
+
+	if (of_graph_is_present(dev_of_node(dev))) {
+		generic->pwrseq = devm_pwrseq_get(dev, "pcie");
+		if (IS_ERR(generic->pwrseq))
+			return dev_err_probe(dev, PTR_ERR(generic->pwrseq),
+				     "Failed to get the power sequencer\n");
+
+		goto skip_resources;
+	}
+
+	ret = of_regulator_bulk_get_all(dev, dev_of_node(dev),
+					&generic->supplies);
+	if (ret < 0)
+		return dev_err_probe(dev, ret, "Failed to get generic regulators\n");
+
+	generic->num_supplies = ret;
+
+	generic->clk = devm_clk_get_optional(dev, NULL);
+	if (IS_ERR(generic->clk))
+		return dev_err_probe(dev, PTR_ERR(generic->clk),
+				     "Failed to enable generic clock\n");
+
+skip_resources:
+	generic->pwrctrl.power_on = generic_pwrctrl_power_on;
+	generic->pwrctrl.power_off = generic_pwrctrl_power_off;
+
+	ret = devm_add_action_or_reset(dev, devm_generic_pwrctrl_release, generic);
+	if (ret)
+		return ret;
+
+	pci_pwrctrl_init(&generic->pwrctrl, dev);
+
+	ret = devm_pci_pwrctrl_device_set_ready(dev, &generic->pwrctrl);
+	if (ret)
+		return dev_err_probe(dev, ret, "Failed to register pwrctrl driver\n");
+
+	return 0;
+}
+
+static const struct of_device_id generic_pwrctrl_of_match[] = {
+	{
+		.compatible = "pciclass,0604",
+	},
+	{ }
+};
+MODULE_DEVICE_TABLE(of, generic_pwrctrl_of_match);
+
+static struct platform_driver generic_pwrctrl_driver = {
+	.driver = {
+		.name = "pci-pwrctrl-generic",
+		.of_match_table = generic_pwrctrl_of_match,
+	},
+	.probe = generic_pwrctrl_probe,
+};
+module_platform_driver(generic_pwrctrl_driver);
+
+MODULE_AUTHOR("Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>");
+MODULE_DESCRIPTION("Generic PCI Power Control driver for PCI Slots and Endpoints");
+MODULE_LICENSE("GPL");
diff --git a/drivers/pci/pwrctrl/slot.c b/drivers/pci/pwrctrl/slot.c
deleted file mode 100644
index f03debabbc73..000000000000
--- a/drivers/pci/pwrctrl/slot.c
+++ /dev/null
@@ -1,137 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-/*
- * Copyright (C) 2024 Linaro Ltd.
- * Author: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
- */
-
-#include <linux/clk.h>
-#include <linux/device.h>
-#include <linux/mod_devicetable.h>
-#include <linux/module.h>
-#include <linux/of_graph.h>
-#include <linux/pci-pwrctrl.h>
-#include <linux/platform_device.h>
-#include <linux/pwrseq/consumer.h>
-#include <linux/regulator/consumer.h>
-#include <linux/slab.h>
-
-struct slot_pwrctrl {
-	struct pci_pwrctrl pwrctrl;
-	struct regulator_bulk_data *supplies;
-	int num_supplies;
-	struct clk *clk;
-	struct pwrseq_desc *pwrseq;
-};
-
-static int slot_pwrctrl_power_on(struct pci_pwrctrl *pwrctrl)
-{
-	struct slot_pwrctrl *slot = container_of(pwrctrl,
-						struct slot_pwrctrl, pwrctrl);
-	int ret;
-
-	if (slot->pwrseq) {
-		pwrseq_power_on(slot->pwrseq);
-		return 0;
-	}
-
-	ret = regulator_bulk_enable(slot->num_supplies, slot->supplies);
-	if (ret < 0) {
-		dev_err(slot->pwrctrl.dev, "Failed to enable slot regulators\n");
-		return ret;
-	}
-
-	return clk_prepare_enable(slot->clk);
-}
-
-static int slot_pwrctrl_power_off(struct pci_pwrctrl *pwrctrl)
-{
-	struct slot_pwrctrl *slot = container_of(pwrctrl,
-						struct slot_pwrctrl, pwrctrl);
-
-	if (slot->pwrseq) {
-		pwrseq_power_off(slot->pwrseq);
-		return 0;
-	}
-
-	regulator_bulk_disable(slot->num_supplies, slot->supplies);
-	clk_disable_unprepare(slot->clk);
-
-	return 0;
-}
-
-static void devm_slot_pwrctrl_release(void *data)
-{
-	struct slot_pwrctrl *slot = data;
-
-	slot_pwrctrl_power_off(&slot->pwrctrl);
-	regulator_bulk_free(slot->num_supplies, slot->supplies);
-}
-
-static int slot_pwrctrl_probe(struct platform_device *pdev)
-{
-	struct slot_pwrctrl *slot;
-	struct device *dev = &pdev->dev;
-	int ret;
-
-	slot = devm_kzalloc(dev, sizeof(*slot), GFP_KERNEL);
-	if (!slot)
-		return -ENOMEM;
-
-	if (of_graph_is_present(dev_of_node(dev))) {
-		slot->pwrseq = devm_pwrseq_get(dev, "pcie");
-		if (IS_ERR(slot->pwrseq))
-			return dev_err_probe(dev, PTR_ERR(slot->pwrseq),
-				     "Failed to get the power sequencer\n");
-
-		goto skip_resources;
-	}
-
-	ret = of_regulator_bulk_get_all(dev, dev_of_node(dev),
-					&slot->supplies);
-	if (ret < 0)
-		return dev_err_probe(dev, ret, "Failed to get slot regulators\n");
-
-	slot->num_supplies = ret;
-
-	slot->clk = devm_clk_get_optional(dev, NULL);
-	if (IS_ERR(slot->clk))
-		return dev_err_probe(dev, PTR_ERR(slot->clk),
-				     "Failed to enable slot clock\n");
-
-skip_resources:
-	slot->pwrctrl.power_on = slot_pwrctrl_power_on;
-	slot->pwrctrl.power_off = slot_pwrctrl_power_off;
-
-	ret = devm_add_action_or_reset(dev, devm_slot_pwrctrl_release, slot);
-	if (ret)
-		return ret;
-
-	pci_pwrctrl_init(&slot->pwrctrl, dev);
-
-	ret = devm_pci_pwrctrl_device_set_ready(dev, &slot->pwrctrl);
-	if (ret)
-		return dev_err_probe(dev, ret, "Failed to register pwrctrl driver\n");
-
-	return 0;
-}
-
-static const struct of_device_id slot_pwrctrl_of_match[] = {
-	{
-		.compatible = "pciclass,0604",
-	},
-	{ }
-};
-MODULE_DEVICE_TABLE(of, slot_pwrctrl_of_match);
-
-static struct platform_driver slot_pwrctrl_driver = {
-	.driver = {
-		.name = "pci-pwrctrl-slot",
-		.of_match_table = slot_pwrctrl_of_match,
-	},
-	.probe = slot_pwrctrl_probe,
-};
-module_platform_driver(slot_pwrctrl_driver);
-
-MODULE_AUTHOR("Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>");
-MODULE_DESCRIPTION("Generic PCI Power Control driver for PCI Slots");
-MODULE_LICENSE("GPL");

-- 
2.34.1


