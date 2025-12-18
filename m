Return-Path: <devicetree+bounces-247984-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F0BDCCD56E
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 20:09:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9DED13089E7E
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 19:06:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 82CDE337686;
	Thu, 18 Dec 2025 19:06:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="Mzsr2pch"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33EE7331A4D
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 19:06:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766084808; cv=none; b=B5wBrimNBlukTPqw1Z3+5kPe14zIue3bIwaZ2qfu2AnbTWxx+acMSdnOxAvVpUd8DkDPnfU9S6+tHcxmiNcCmqbWsKaD/5+UgwjewWS3KA7+tFFo2+51TLwIhNHb+QaZxtGZn4AD4tlfrjEgXU5x7H7FWAQTu7InewUfVxOvnt0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766084808; c=relaxed/simple;
	bh=WmNhKHxR56giJYTC+Sr5zcWuTajITgecx+NDCIWTXHI=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=TgXzOPhj0qbdISlJJ/EnUjStYQL/TCiQVdlsDg7DNoKyXPROTCbobuxTjLN0wWcA7KnU6nB+mNCSGqZj/GkuAzMwOS/gagV1IyGPaWUwXSt8qeKZtbeXxYd/9g014p6+nj9GFSe1VcJpW4fSY13NKMTINH65ZPz2mGndVTraLXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=Mzsr2pch; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-b8010b8f078so20663466b.0
        for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 11:06:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1766084803; x=1766689603; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yD0K3OTadJJd6t4hzFzNdpV2SBHdW94fnjzmwjH3hgg=;
        b=Mzsr2pch8LhMOh873v2hoChicTtusruY5cE3BmhNkJApzueWQZYxwQq6Zj1JXEt2z5
         KHHOZuK4iY0CHXVLxPluNHWrEUuFfGIQGZK1AzHctmHO+XJba1uCBNkASDQb0NoO+ocy
         KclkPOQOh5vkTKo2lMt1cD5XzWOUm9TAeaezt594a9ITfHe/5uO0+U5/4HbE3B9fn1Xu
         5DUNWxk5DCNadE8bK/+63JDkbWY5/Um03IjBf/9RyIxWx/Je7ybdI7LYEt28zhW0nBN6
         Ikp3cjAbWpT2miSqQZV8pDRo87swSPYqQefGpc8rYN5CjVpA4mzv1wHBXh83srrQm2GZ
         myEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766084803; x=1766689603;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=yD0K3OTadJJd6t4hzFzNdpV2SBHdW94fnjzmwjH3hgg=;
        b=vxhcJyOfPHAcpaTcjByZ8XWdhmwjJbImJftXByIl9pBb6zRsctvabnLdwdc1bi8Peg
         /ZaMJ2tb5h12GlrGuZJgdjfSmoENkhdXI2Nfs5LkaMW1B30m07V7g+JTYtzwKGOb0jRr
         QgE0r06YJe4QMksDy/BKJQCxozcy0fppM9/YYaKSiRYJ+Uc3WoktB4L1+dLFLuaKqpJe
         BPXMkL6YexOXiFhNLLNwM5TDOHyKAzS4UMiTCw+MCUnfrm01hQBKHBu4L53sgWfgmBII
         F+owg/8FpZMlJmLaekBkq7WJ1J45loPEytFSvpl21Fr9z2p5ApoIwutZYo88UtEzyefL
         tceg==
X-Forwarded-Encrypted: i=1; AJvYcCVnBwFRVnSCgyDKuEiQJS0ASdAKGMIMHZmJKXpva/7csd+4hmlFb44SvjlWkaAOv5CjFfJ1hJ1MTLsw@vger.kernel.org
X-Gm-Message-State: AOJu0YyGYMVT+yhg3F8eFyTprlB9A54XAWH6sx2hVgeolUYCS1St7/76
	G7JkszfpKE/eMewK28ILlwWsJdL+iCfX5e46ob0j00UPuVyZkhXhYlG2dld9R9JJNQE=
X-Gm-Gg: AY/fxX45mV+hjUIzjKaShI10ldT8IodUniHlarbkC52Ok4t6iiT0YXCIVqG3LoROw+j
	o0X/UkEdLWEuAMRvonURMZJHyDns0s4ZbTlTh3Jfs4uVzEzMtwCUrZ9rjz2Yr3NnqpSyRIN1Ou4
	1qNYnPv6SQobA6mbZZ9e6BXNdnTRnGMT/L9w1e3Th7+8VdYjz24VvmRVE9cJnRzDEHa8xEza7mh
	89Zi8rm1cFCToxHT+dBB7fp+jDfpV8JE9Y26U1BJw3E0z7rQnOyP+uv4ssgo2/IhbmeL0GBEKt4
	coSamWzTEoYkaNSKHI4lWX547yk9GFpnDmKzxLg+owa5yGKQrV2w9gn+6dnL/uxIfTBmVUW20UF
	Iv5AKT9bMFJC1IBkYd/7tjULGfbP00iRAMeNHjTAq6RpvOVzEeDcLo1OBfAWOmJQgJ+Bp4zqlRy
	PdTCkUNMUsKod2jULwuYN2g9dK9zx1bwHo41PM+2QpqUqHb8UrfHDLsw==
X-Google-Smtp-Source: AGHT+IGMlzVyG7sXrFNsNeLNed/uMM7+wZEL1Cu2Qp1hC2aPgnk5qKL9w/gcFZDVh1e21Hfc/SdNQQ==
X-Received: by 2002:a17:907:868e:b0:b7a:1be1:86e6 with SMTP id a640c23a62f3a-b8037224ea0mr39939966b.62.1766084803242;
        Thu, 18 Dec 2025 11:06:43 -0800 (PST)
Received: from localhost (host-79-37-15-246.retail.telecomitalia.it. [79.37.15.246])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037a5c4dfsm18931166b.14.2025.12.18.11.06.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Dec 2025 11:06:42 -0800 (PST)
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
Subject: [PATCH 3/4] arm64: dts: broadcom: bcm2712: fix RP1 endpoint PCI topology
Date: Thu, 18 Dec 2025 20:09:08 +0100
Message-ID: <827b12ba48bb47bc77a0f5e5617aea961c8bc6b5.1766077285.git.andrea.porta@suse.com>
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

The node describing the RP1 endpoint currently uses a specific name
('rp1_nexus') that does not correctly reflect the PCI topology.

Update the DT with the correct topology and use generic node names.

Additionally, since the driver dropped overlay support in favor of a
fully described DT, rename '...-ovl-rp1.dts' to '...-base.dtsi' for
inclusion in the board DTB, as it is no longer compiled as a
standalone DTB.

Signed-off-by: Andrea della Porta <andrea.porta@suse.com>
---
The DTC compiler produces the following warning:

WARNING: DT compatible string vendor "pci1de4" appears un-documented -- check ./Documentation/devicetree/bindings/vendor-prefixes.yaml
#91: FILE: arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b.dts:31:
                        compatible = "pci1de4,1";

I'm not sure wheter I should add that compatible to vendor-prefixes.yaml
or change the compatible to something already recognized as a vendor,
such as 'raspberrypi,pci1de4,1'.
I'd prefer the former to be consistent to what would be filled by enabling
CONFIG_PCI_DYNAMIC_OF_NODES. Any hint will be really appreciated.
---
 arch/arm64/boot/dts/broadcom/Makefile         |  1 -
 ...-ovl-rp1.dts => bcm2712-rpi-5-b-base.dtsi} |  0
 .../boot/dts/broadcom/bcm2712-rpi-5-b.dts     | 39 ++++++++++++-------
 3 files changed, 26 insertions(+), 14 deletions(-)
 rename arch/arm64/boot/dts/broadcom/{bcm2712-rpi-5-b-ovl-rp1.dts => bcm2712-rpi-5-b-base.dtsi} (100%)

diff --git a/arch/arm64/boot/dts/broadcom/Makefile b/arch/arm64/boot/dts/broadcom/Makefile
index 83d45afc6588e..d43901404c955 100644
--- a/arch/arm64/boot/dts/broadcom/Makefile
+++ b/arch/arm64/boot/dts/broadcom/Makefile
@@ -7,7 +7,6 @@ dtb-$(CONFIG_ARCH_BCM2835) += bcm2711-rpi-400.dtb \
 			      bcm2711-rpi-4-b.dtb \
 			      bcm2711-rpi-cm4-io.dtb \
 			      bcm2712-rpi-5-b.dtb \
-			      bcm2712-rpi-5-b-ovl-rp1.dtb \
 			      bcm2712-d-rpi-5-b.dtb \
 			      bcm2837-rpi-2-b.dtb \
 			      bcm2837-rpi-3-a-plus.dtb \
diff --git a/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-ovl-rp1.dts b/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-base.dtsi
similarity index 100%
rename from arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-ovl-rp1.dts
rename to arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-base.dtsi
diff --git a/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b.dts b/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b.dts
index 3e0319fdb93f7..2856082814462 100644
--- a/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b.dts
+++ b/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b.dts
@@ -1,22 +1,16 @@
 // SPDX-License-Identifier: (GPL-2.0 OR MIT)
 /*
- * bcm2712-rpi-5-b-ovl-rp1.dts is the overlay-ready DT which will make
- * the RP1 driver to load the RP1 dtb overlay at runtime, while
- * bcm2712-rpi-5-b.dts (this file) is the fully defined one (i.e. it
- * already contains RP1 node, so no overlay is loaded nor needed).
- * This file is intended to host the override nodes for the RP1 peripherals,
- * e.g. to declare the phy of the ethernet interface or the custom pin setup
- * for several RP1 peripherals.
- * This in turn is due to the fact that there's no current generic
- * infrastructure to reference nodes (i.e. the nodes in rp1-common.dtsi) that
- * are not yet defined in the DT since they are loaded at runtime via overlay.
+ * As a loose attempt to separate RP1 customizations from SoC peripherals
+ * definitioni, this file is intended to host the override nodes for the RP1
+ * peripherals, e.g. to declare the phy of the ethernet interface or custom
+ * pin setup.
  * All other nodes that do not have anything to do with RP1 should be added
- * to the included bcm2712-rpi-5-b-ovl-rp1.dts instead.
+ * to the included bcm2712-rpi-5-b-base.dtsi instead.
  */
 
 /dts-v1/;
 
-#include "bcm2712-rpi-5-b-ovl-rp1.dts"
+#include "bcm2712-rpi-5-b-base.dtsi"
 
 / {
 	aliases {
@@ -25,7 +19,26 @@ aliases {
 };
 
 &pcie2 {
-	#include "rp1-nexus.dtsi"
+	pci@0,0 {
+		reg = <0x0 0x0 0x0 0x0 0x0>;
+		ranges;
+		bus-range = <0 1>;
+		device_type = "pci";
+		#address-cells = <3>;
+		#size-cells = <2>;
+
+		dev@0,0 {
+			compatible = "pci1de4,1";
+			reg = <0x10000 0x0 0x0 0x0 0x0>;
+			ranges = <0x1 0x0 0x0 0x82010000 0x0 0x0 0x0 0x400000>;
+			interrupt-controller;
+			#interrupt-cells = <2>;
+			#address-cells = <3>;
+			#size-cells = <2>;
+
+			#include "rp1-common.dtsi"
+		};
+	};
 };
 
 &rp1_eth {
-- 
2.35.3


