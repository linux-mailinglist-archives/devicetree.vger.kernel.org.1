Return-Path: <devicetree+bounces-321604-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id muZiNo8uTGqThQEAu9opvQ
	(envelope-from <devicetree+bounces-321604-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 00:39:11 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3538A7160D7
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 00:39:11 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=cyberchaos.dev header.s=mail header.b=v8aRUQ1s;
	dmarc=pass (policy=reject) header.from=cyberchaos.dev;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-321604-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-321604-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 36083303B7D7
	for <lists+devicetree@lfdr.de>; Mon,  6 Jul 2026 22:38:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F2B3D43848E;
	Mon,  6 Jul 2026 22:38:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.cyberchaos.dev (mail.cyberchaos.dev [195.39.247.168])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8630A435AB2;
	Mon,  6 Jul 2026 22:38:47 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783377528; cv=none; b=i6slvDhy+94eokeNYi1cQFGFJ3Bs/fc6p2noeB+fH7702bJC80p5Gd7+ps6kzF4v+XU83dilyNmddAf7Uuf89VyCTenMPj+kWrrkysgj4VTPmYkrIKfwpwZeH5m/etOZQr0ipGzW8/k3/WLrV7c+DplKA6O3Gn3p+5pbmv3E1oc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783377528; c=relaxed/simple;
	bh=Pq7FM/7dT0sdoENBJTeDdi2ZZrR4z30evW5se4bYris=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=GlOMYTSMt/CLueU9/obu5tCPVt3Y4TrOT7YPQMefvvklQ6cYWdjcUpCE/ovkMpTEk5BGn3ElG50jIKaE9HglcAzSVGoYYD6vyxFIvxvQbAKG82O3pXyW8oGWCma9SdpFc2Mc8hVKbhvIaXDzc7ChDbGy3OPN1PlPb+XwkDmtmBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=cyberchaos.dev; spf=pass smtp.mailfrom=cyberchaos.dev; dkim=pass (1024-bit key) header.d=cyberchaos.dev header.i=@cyberchaos.dev header.b=v8aRUQ1s; arc=none smtp.client-ip=195.39.247.168
From: Yureka Lilian <yureka@cyberchaos.dev>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cyberchaos.dev;
	s=mail; t=1783377519;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=3rFa0sUM2ZNZURgg7xmwQHAayX2Vx/lL2j0bys8ap8A=;
	b=v8aRUQ1siz7ifJ0JC1a+8OAQOU0AOT6dLhlF6kFKzp6NsIO709o9CYYkOy0X/T4INHI6y5
	Q7XqWjadaAIiyafY+MlsfKRoYe7qVEE57z9ItINet26/a/C+EZROUwunXQrNqh41AyGsnH
	81jl9t/JqVUsU2qXKTeHms+Ff818WiU=
Date: Tue, 07 Jul 2026 00:38:27 +0200
Subject: [PATCH 1/2] PCI: apple: Integrate pwrctrl API
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260707-apple-pcie-pwren-v1-1-5a281b182fe2@cyberchaos.dev>
References: <20260707-apple-pcie-pwren-v1-0-5a281b182fe2@cyberchaos.dev>
In-Reply-To: <20260707-apple-pcie-pwren-v1-0-5a281b182fe2@cyberchaos.dev>
To: Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
 Bjorn Helgaas <bhelgaas@google.com>, Marc Zyngier <maz@kernel.org>, 
 Sven Peter <sven@kernel.org>, Janne Grunau <j@jannau.net>, 
 Neal Gompa <neal@gompa.dev>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, 
 asahi@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
 devicetree@vger.kernel.org, Yureka Lilian <yureka@cyberchaos.dev>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[cyberchaos.dev,reject];
	R_DKIM_ALLOW(-0.20)[cyberchaos.dev:s=mail];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-321604-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:lpieralisi@kernel.org,m:kwilczynski@kernel.org,m:mani@kernel.org,m:robh@kernel.org,m:bhelgaas@google.com,m:maz@kernel.org,m:sven@kernel.org,m:j@jannau.net,m:neal@gompa.dev,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-pci@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:asahi@lists.linux.dev,m:linux-arm-kernel@lists.infradead.org,m:devicetree@vger.kernel.org,m:yureka@cyberchaos.dev,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[yureka@cyberchaos.dev,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[yureka@cyberchaos.dev,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[cyberchaos.dev:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[cyberchaos.dev:from_mime,cyberchaos.dev:email,cyberchaos.dev:mid,cyberchaos.dev:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3538A7160D7

Integrate the PCI pwrctrl framework into the Apple PCIe host driver to
provide standardized power management for PCI devices.

Notably, this allows enabling powering on the WiFi, SD card reader on
various Macs by means of the pwrctrl framework before probing the ports.

Previously, a custom solution for powering on the WiFi and SD card
reader was proposed[1], but we can now use the new pci-pwrctrl-generic
driver for this purpose.

Link[1]: https://lore.kernel.org/lkml/20220502093832.32778-4-marcan@marcan.st/

Signed-off-by: Yureka Lilian <yureka@cyberchaos.dev>
---
 drivers/pci/controller/Kconfig      |  1 +
 drivers/pci/controller/pcie-apple.c | 16 ++++++++++++++++
 2 files changed, 17 insertions(+)

diff --git a/drivers/pci/controller/Kconfig b/drivers/pci/controller/Kconfig
index 2247709ef6d6..af64630d28fa 100644
--- a/drivers/pci/controller/Kconfig
+++ b/drivers/pci/controller/Kconfig
@@ -46,6 +46,7 @@ config PCIE_APPLE
 	depends on OF
 	depends on PCI_MSI
 	select PCI_HOST_COMMON
+	select PCI_PWRCTRL_GENERIC
 	select IRQ_MSI_LIB
 	help
 	  Say Y here if you want to enable PCIe controller support on Apple
diff --git a/drivers/pci/controller/pcie-apple.c b/drivers/pci/controller/pcie-apple.c
index c2cffc0659f4..db038a9d4831 100644
--- a/drivers/pci/controller/pcie-apple.c
+++ b/drivers/pci/controller/pcie-apple.c
@@ -30,6 +30,7 @@
 #include <linux/msi.h>
 #include <linux/of_irq.h>
 #include <linux/pci-ecam.h>
+#include <linux/pci-pwrctrl.h>
 
 #include "pci-host-common.h"
 
@@ -825,6 +826,21 @@ static int apple_pcie_init(struct pci_config_window *cfg)
 	if (WARN_ON(!pcie))
 		return -ENOENT;
 
+	ret = pci_pwrctrl_create_devices(pcie->dev);
+	if (ret) {
+		dev_err(pcie->dev, "Failed to create pwrctrl devices: %pe\n", ret);
+		return ret;
+	}
+
+	ret = pci_pwrctrl_power_on_devices(pcie->dev);
+	if (ret) {
+		if (ret != -EPROBE_DEFER) {
+			dev_err(pcie->dev, "Failed to power on devices: %pe\n", ret);
+			pci_pwrctrl_destroy_devices(pcie->dev);
+		}
+		return ret;
+	}
+
 	for_each_available_child_of_node_scoped(dev->of_node, of_port) {
 		ret = apple_pcie_setup_port(pcie, of_port);
 		if (ret) {

-- 
2.54.0


