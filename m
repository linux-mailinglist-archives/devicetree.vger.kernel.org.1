Return-Path: <devicetree+bounces-61806-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 200A08AE34C
	for <lists+devicetree@lfdr.de>; Tue, 23 Apr 2024 13:03:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 41FCE1C21E54
	for <lists+devicetree@lfdr.de>; Tue, 23 Apr 2024 11:03:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D5CEC67A0D;
	Tue, 23 Apr 2024 11:03:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FcNjoPHN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDAFA76056
	for <devicetree@vger.kernel.org>; Tue, 23 Apr 2024 11:03:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713870198; cv=none; b=XjcEylmIaJqqqaTwuC0Wv0tzkJ2X13J21UeWhDfF6p+WDODetQzKH/GOkslrGxjgq/jeQ6cEuAnJillQSH7AI6jPCDqS9O3SzrxkQabiE3b0MY7Pv7w+kQFo8epLG5jFKAH3a4btvhzfCpvmmiOpQGxQoUE0BlRll4lQH7wQFI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713870198; c=relaxed/simple;
	bh=wYga65vccFQtu60Hsutoq4gCiBsyYjj9DkIadOX4RXg=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Type; b=RwYYNq2DOY5W1+U5D0uDMN9laoLXzUbJL2euVg1oyiX984RTANe82mZxGBEvAaKd8y+P5MGD5OzZNSDSmTjs/L/t1yYw6PG4nxZs1H6QXiRRBVmneIin+W8PErM4DiP40Y2mVl45tBS85fNrMlguAQHfLOBrK2D0b463JlI1bhg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=FcNjoPHN; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-a588405be6cso34310066b.2
        for <devicetree@vger.kernel.org>; Tue, 23 Apr 2024 04:03:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713870195; x=1714474995; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=7r0ATgXSp/oBNR7ifpQh+7u9p7ur9HwBYcIJ309pf8U=;
        b=FcNjoPHNOADiKQkWi6BxJZEmXLA81Rwqtodfb7Dru6uyGVHlzxo7hc8fNtq9GnxXbU
         NUqVFGegtOmanw9BJEJE6iSpEtZmyeHgmBodFqbYhsOFgFVaJsMIs2JHQLYLdipWVE9r
         ENhQBXBG6EBB9v+/t681uCo/hwrdhzSsfeYRcRNbfkA+jO9RMXBIxUYtj4AQRg412BWg
         KIKOVKvS+9s4rOEOEJDLQbHKAfyZ1iEXoFqeTqtGgqAj3C/wEYur+VGNi/7BBCHLE6cI
         fXGMHs+r6emrzM4DIUe5+/G2X7cGlko2ytue5Kl6jzA8dk9PZG4/F/PIS4kQ48WTVH7P
         TM5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713870195; x=1714474995;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7r0ATgXSp/oBNR7ifpQh+7u9p7ur9HwBYcIJ309pf8U=;
        b=fmJ9VAt5uyUDzjfz/aVySgGiI6d/kV9XEcVIzm+vvizawoRi7YIP1ToAnbnmrcAdmf
         wiBTFXOGPTqnXKZRUZYf7wNNe5T31ESfjxM+E5N4XBLPb/0TBjj8IDORjeoz6pNN5FE+
         B+01WyT3vCihxeyGPqro0pOonwkG5iqwPMWF5E/eaahbfxEjAWfoy4d3HSJojz1Vx9xO
         wp0NQ8hIa9md6RVN4N1reBxCEyts/xQpVxPOTaO9PXUzowj77l9GrczKTmOFlVtjP3nZ
         F4wES2bVWHbtI/fRuVy0c3Dca0e+lAkOnwjoJoebD7cgm+Iq0+UXL/IgR8sIoh/PYLAR
         ewMQ==
X-Forwarded-Encrypted: i=1; AJvYcCWweSfp6CvmQkoy6KvTKhSFrVXQCT0bATgQoXviRNu2J8T/hm0d8K6OgMVBCNfZowsyirIb5D9M/z20bGORcIk8nDGryX6UjymA/Q==
X-Gm-Message-State: AOJu0Yz88pfaQk1o9FOqwoLzIJA+AvdqoMZUfHb5x9Znkukzwon7sNEI
	AAndh5BzKbbCSIKk1Wv2jVfUjYlOSQ3qzutrL1SYbRM11ccl1ikT
X-Google-Smtp-Source: AGHT+IF9hX1ykaoqcrwqjAr2Vhai/eCeZvVBsn0U2cmh0mSsKOrt30tJqjg9vRsPa5IxSPO0zaheeQ==
X-Received: by 2002:a17:906:5847:b0:a52:4394:fffa with SMTP id h7-20020a170906584700b00a524394fffamr6816312ejs.12.1713870194876;
        Tue, 23 Apr 2024 04:03:14 -0700 (PDT)
Received: from localhost.lan (031011218106.poznan.vectranet.pl. [31.11.218.106])
        by smtp.gmail.com with ESMTPSA id s17-20020a1709067b9100b00a51bf5932aesm6900880ejo.28.2024.04.23.04.03.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Apr 2024 04:03:14 -0700 (PDT)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: Florian Fainelli <florian.fainelli@broadcom.com>,
	Hauke Mehrtens <hauke@hauke-m.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	bcm-kernel-feedback-list@broadcom.com,
	=?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH 1/2] ARM: dts: BCM5301X: Drop ranges mapping from AXI bus
Date: Tue, 23 Apr 2024 13:02:37 +0200
Message-Id: <20240423110238.32148-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.35.3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Rafał Miłecki <rafal@milecki.pl>

Limiting addresses to 0x18000000 + 0x100000 disallowed describing some
devices (e.g. PCIe controllers).

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 arch/arm/boot/dts/broadcom/bcm-ns.dtsi | 146 ++++++++++++-------------
 1 file changed, 73 insertions(+), 73 deletions(-)

diff --git a/arch/arm/boot/dts/broadcom/bcm-ns.dtsi b/arch/arm/boot/dts/broadcom/bcm-ns.dtsi
index d0d5f7e52a91..7c8ee2df538f 100644
--- a/arch/arm/boot/dts/broadcom/bcm-ns.dtsi
+++ b/arch/arm/boot/dts/broadcom/bcm-ns.dtsi
@@ -95,7 +95,7 @@ L2: cache-controller@22000 {
 	axi@18000000 {
 		compatible = "brcm,bus-axi";
 		reg = <0x18000000 0x1000>;
-		ranges = <0x00000000 0x18000000 0x00100000>;
+		ranges;
 		#address-cells = <1>;
 		#size-cells = <1>;
 
@@ -103,77 +103,77 @@ axi@18000000 {
 		interrupt-map-mask = <0x000fffff 0xffff>;
 		interrupt-map =
 			/* ChipCommon */
-			<0x00000000 0 &gic GIC_SPI 85 IRQ_TYPE_LEVEL_HIGH>,
+			<0x18000000 0 &gic GIC_SPI 85 IRQ_TYPE_LEVEL_HIGH>,
 
 			/* Switch Register Access Block */
-			<0x00007000 0 &gic GIC_SPI 95 IRQ_TYPE_LEVEL_HIGH>,
-			<0x00007000 1 &gic GIC_SPI 96 IRQ_TYPE_LEVEL_HIGH>,
-			<0x00007000 2 &gic GIC_SPI 97 IRQ_TYPE_LEVEL_HIGH>,
-			<0x00007000 3 &gic GIC_SPI 98 IRQ_TYPE_LEVEL_HIGH>,
-			<0x00007000 4 &gic GIC_SPI 99 IRQ_TYPE_LEVEL_HIGH>,
-			<0x00007000 5 &gic GIC_SPI 100 IRQ_TYPE_LEVEL_HIGH>,
-			<0x00007000 6 &gic GIC_SPI 101 IRQ_TYPE_LEVEL_HIGH>,
-			<0x00007000 7 &gic GIC_SPI 102 IRQ_TYPE_LEVEL_HIGH>,
-			<0x00007000 8 &gic GIC_SPI 103 IRQ_TYPE_LEVEL_HIGH>,
-			<0x00007000 9 &gic GIC_SPI 104 IRQ_TYPE_LEVEL_HIGH>,
-			<0x00007000 10 &gic GIC_SPI 105 IRQ_TYPE_LEVEL_HIGH>,
-			<0x00007000 11 &gic GIC_SPI 106 IRQ_TYPE_LEVEL_HIGH>,
-			<0x00007000 12 &gic GIC_SPI 107 IRQ_TYPE_LEVEL_HIGH>,
+			<0x18007000 0 &gic GIC_SPI 95 IRQ_TYPE_LEVEL_HIGH>,
+			<0x18007000 1 &gic GIC_SPI 96 IRQ_TYPE_LEVEL_HIGH>,
+			<0x18007000 2 &gic GIC_SPI 97 IRQ_TYPE_LEVEL_HIGH>,
+			<0x18007000 3 &gic GIC_SPI 98 IRQ_TYPE_LEVEL_HIGH>,
+			<0x18007000 4 &gic GIC_SPI 99 IRQ_TYPE_LEVEL_HIGH>,
+			<0x18007000 5 &gic GIC_SPI 100 IRQ_TYPE_LEVEL_HIGH>,
+			<0x18007000 6 &gic GIC_SPI 101 IRQ_TYPE_LEVEL_HIGH>,
+			<0x18007000 7 &gic GIC_SPI 102 IRQ_TYPE_LEVEL_HIGH>,
+			<0x18007000 8 &gic GIC_SPI 103 IRQ_TYPE_LEVEL_HIGH>,
+			<0x18007000 9 &gic GIC_SPI 104 IRQ_TYPE_LEVEL_HIGH>,
+			<0x18007000 10 &gic GIC_SPI 105 IRQ_TYPE_LEVEL_HIGH>,
+			<0x18007000 11 &gic GIC_SPI 106 IRQ_TYPE_LEVEL_HIGH>,
+			<0x18007000 12 &gic GIC_SPI 107 IRQ_TYPE_LEVEL_HIGH>,
 
 			/* PCIe Controller 0 */
-			<0x00012000 0 &gic GIC_SPI 126 IRQ_TYPE_LEVEL_HIGH>,
-			<0x00012000 1 &gic GIC_SPI 127 IRQ_TYPE_LEVEL_HIGH>,
-			<0x00012000 2 &gic GIC_SPI 128 IRQ_TYPE_LEVEL_HIGH>,
-			<0x00012000 3 &gic GIC_SPI 129 IRQ_TYPE_LEVEL_HIGH>,
-			<0x00012000 4 &gic GIC_SPI 130 IRQ_TYPE_LEVEL_HIGH>,
-			<0x00012000 5 &gic GIC_SPI 131 IRQ_TYPE_LEVEL_HIGH>,
+			<0x18012000 0 &gic GIC_SPI 126 IRQ_TYPE_LEVEL_HIGH>,
+			<0x18012000 1 &gic GIC_SPI 127 IRQ_TYPE_LEVEL_HIGH>,
+			<0x18012000 2 &gic GIC_SPI 128 IRQ_TYPE_LEVEL_HIGH>,
+			<0x18012000 3 &gic GIC_SPI 129 IRQ_TYPE_LEVEL_HIGH>,
+			<0x18012000 4 &gic GIC_SPI 130 IRQ_TYPE_LEVEL_HIGH>,
+			<0x18012000 5 &gic GIC_SPI 131 IRQ_TYPE_LEVEL_HIGH>,
 
 			/* PCIe Controller 1 */
-			<0x00013000 0 &gic GIC_SPI 132 IRQ_TYPE_LEVEL_HIGH>,
-			<0x00013000 1 &gic GIC_SPI 133 IRQ_TYPE_LEVEL_HIGH>,
-			<0x00013000 2 &gic GIC_SPI 134 IRQ_TYPE_LEVEL_HIGH>,
-			<0x00013000 3 &gic GIC_SPI 135 IRQ_TYPE_LEVEL_HIGH>,
-			<0x00013000 4 &gic GIC_SPI 136 IRQ_TYPE_LEVEL_HIGH>,
-			<0x00013000 5 &gic GIC_SPI 137 IRQ_TYPE_LEVEL_HIGH>,
+			<0x18013000 0 &gic GIC_SPI 132 IRQ_TYPE_LEVEL_HIGH>,
+			<0x18013000 1 &gic GIC_SPI 133 IRQ_TYPE_LEVEL_HIGH>,
+			<0x18013000 2 &gic GIC_SPI 134 IRQ_TYPE_LEVEL_HIGH>,
+			<0x18013000 3 &gic GIC_SPI 135 IRQ_TYPE_LEVEL_HIGH>,
+			<0x18013000 4 &gic GIC_SPI 136 IRQ_TYPE_LEVEL_HIGH>,
+			<0x18013000 5 &gic GIC_SPI 137 IRQ_TYPE_LEVEL_HIGH>,
 
 			/* PCIe Controller 2 */
-			<0x00014000 0 &gic GIC_SPI 138 IRQ_TYPE_LEVEL_HIGH>,
-			<0x00014000 1 &gic GIC_SPI 138 IRQ_TYPE_LEVEL_HIGH>,
-			<0x00014000 2 &gic GIC_SPI 140 IRQ_TYPE_LEVEL_HIGH>,
-			<0x00014000 3 &gic GIC_SPI 141 IRQ_TYPE_LEVEL_HIGH>,
-			<0x00014000 4 &gic GIC_SPI 142 IRQ_TYPE_LEVEL_HIGH>,
-			<0x00014000 5 &gic GIC_SPI 143 IRQ_TYPE_LEVEL_HIGH>,
+			<0x18014000 0 &gic GIC_SPI 138 IRQ_TYPE_LEVEL_HIGH>,
+			<0x18014000 1 &gic GIC_SPI 138 IRQ_TYPE_LEVEL_HIGH>,
+			<0x18014000 2 &gic GIC_SPI 140 IRQ_TYPE_LEVEL_HIGH>,
+			<0x18014000 3 &gic GIC_SPI 141 IRQ_TYPE_LEVEL_HIGH>,
+			<0x18014000 4 &gic GIC_SPI 142 IRQ_TYPE_LEVEL_HIGH>,
+			<0x18014000 5 &gic GIC_SPI 143 IRQ_TYPE_LEVEL_HIGH>,
 
 			/* USB 2.0 Controller */
-			<0x00021000 0 &gic GIC_SPI 79 IRQ_TYPE_LEVEL_HIGH>,
+			<0x18021000 0 &gic GIC_SPI 79 IRQ_TYPE_LEVEL_HIGH>,
 
 			/* USB 3.0 Controller */
-			<0x00023000 0 &gic GIC_SPI 80 IRQ_TYPE_LEVEL_HIGH>,
+			<0x18023000 0 &gic GIC_SPI 80 IRQ_TYPE_LEVEL_HIGH>,
 
 			/* Ethernet Controller 0 */
-			<0x00024000 0 &gic GIC_SPI 147 IRQ_TYPE_LEVEL_HIGH>,
+			<0x18024000 0 &gic GIC_SPI 147 IRQ_TYPE_LEVEL_HIGH>,
 
 			/* Ethernet Controller 1 */
-			<0x00025000 0 &gic GIC_SPI 148 IRQ_TYPE_LEVEL_HIGH>,
+			<0x18025000 0 &gic GIC_SPI 148 IRQ_TYPE_LEVEL_HIGH>,
 
 			/* Ethernet Controller 2 */
-			<0x00026000 0 &gic GIC_SPI 149 IRQ_TYPE_LEVEL_HIGH>,
+			<0x18026000 0 &gic GIC_SPI 149 IRQ_TYPE_LEVEL_HIGH>,
 
 			/* Ethernet Controller 3 */
-			<0x00027000 0 &gic GIC_SPI 150 IRQ_TYPE_LEVEL_HIGH>,
+			<0x18027000 0 &gic GIC_SPI 150 IRQ_TYPE_LEVEL_HIGH>,
 
 			/* NAND Controller */
-			<0x00028000 0 &gic GIC_SPI 64 IRQ_TYPE_LEVEL_HIGH>,
-			<0x00028000 1 &gic GIC_SPI 65 IRQ_TYPE_LEVEL_HIGH>,
-			<0x00028000 2 &gic GIC_SPI 66 IRQ_TYPE_LEVEL_HIGH>,
-			<0x00028000 3 &gic GIC_SPI 67 IRQ_TYPE_LEVEL_HIGH>,
-			<0x00028000 4 &gic GIC_SPI 68 IRQ_TYPE_LEVEL_HIGH>,
-			<0x00028000 5 &gic GIC_SPI 69 IRQ_TYPE_LEVEL_HIGH>,
-			<0x00028000 6 &gic GIC_SPI 70 IRQ_TYPE_LEVEL_HIGH>,
-			<0x00028000 7 &gic GIC_SPI 71 IRQ_TYPE_LEVEL_HIGH>;
-
-		chipcommon: chipcommon@0 {
-			reg = <0x00000000 0x1000>;
+			<0x18028000 0 &gic GIC_SPI 64 IRQ_TYPE_LEVEL_HIGH>,
+			<0x18028000 1 &gic GIC_SPI 65 IRQ_TYPE_LEVEL_HIGH>,
+			<0x18028000 2 &gic GIC_SPI 66 IRQ_TYPE_LEVEL_HIGH>,
+			<0x18028000 3 &gic GIC_SPI 67 IRQ_TYPE_LEVEL_HIGH>,
+			<0x18028000 4 &gic GIC_SPI 68 IRQ_TYPE_LEVEL_HIGH>,
+			<0x18028000 5 &gic GIC_SPI 69 IRQ_TYPE_LEVEL_HIGH>,
+			<0x18028000 6 &gic GIC_SPI 70 IRQ_TYPE_LEVEL_HIGH>,
+			<0x18028000 7 &gic GIC_SPI 71 IRQ_TYPE_LEVEL_HIGH>;
+
+		chipcommon: chipcommon@18000000 {
+			reg = <0x18000000 0x1000>;
 
 			gpio-controller;
 			#gpio-cells = <2>;
@@ -181,29 +181,29 @@ chipcommon: chipcommon@0 {
 			#interrupt-cells = <2>;
 		};
 
-		pcie0: pcie@12000 {
-			reg = <0x00012000 0x1000>;
+		pcie0: pcie@18012000 {
+			reg = <0x18012000 0x1000>;
 
 			#address-cells = <3>;
 			#size-cells = <2>;
 		};
 
-		pcie1: pcie@13000 {
-			reg = <0x00013000 0x1000>;
+		pcie1: pcie@18013000 {
+			reg = <0x18013000 0x1000>;
 
 			#address-cells = <3>;
 			#size-cells = <2>;
 		};
 
-		pcie2: pcie@14000 {
-			reg = <0x00014000 0x1000>;
+		pcie2: pcie@18014000 {
+			reg = <0x18014000 0x1000>;
 
 			#address-cells = <3>;
 			#size-cells = <2>;
 		};
 
-		usb2: usb2@21000 {
-			reg = <0x00021000 0x1000>;
+		usb2: usb2@18021000 {
+			reg = <0x18021000 0x1000>;
 
 			#address-cells = <1>;
 			#size-cells = <1>;
@@ -211,9 +211,9 @@ usb2: usb2@21000 {
 
 			interrupt-parent = <&gic>;
 
-			ehci: usb@21000 {
+			ehci: usb@18021000 {
 				compatible = "generic-ehci";
-				reg = <0x00021000 0x1000>;
+				reg = <0x18021000 0x1000>;
 				interrupts = <GIC_SPI 79 IRQ_TYPE_LEVEL_HIGH>;
 				phys = <&usb2_phy>;
 
@@ -231,9 +231,9 @@ ehci_port2: port@2 {
 				};
 			};
 
-			ohci: usb@22000 {
+			ohci: usb@18022000 {
 				compatible = "generic-ohci";
-				reg = <0x00022000 0x1000>;
+				reg = <0x18022000 0x1000>;
 				interrupts = <GIC_SPI 79 IRQ_TYPE_LEVEL_HIGH>;
 
 				#address-cells = <1>;
@@ -251,8 +251,8 @@ ohci_port2: port@2 {
 			};
 		};
 
-		usb3: usb3@23000 {
-			reg = <0x00023000 0x1000>;
+		usb3: usb3@18023000 {
+			reg = <0x18023000 0x1000>;
 
 			#address-cells = <1>;
 			#size-cells = <1>;
@@ -260,9 +260,9 @@ usb3: usb3@23000 {
 
 			interrupt-parent = <&gic>;
 
-			xhci: usb@23000 {
+			xhci: usb@18023000 {
 				compatible = "generic-xhci";
-				reg = <0x00023000 0x1000>;
+				reg = <0x18023000 0x1000>;
 				interrupts = <GIC_SPI 80 IRQ_TYPE_LEVEL_HIGH>;
 				phys = <&usb3_phy>;
 				phy-names = "usb";
@@ -277,8 +277,8 @@ xhci_port1: port@1 {
 			};
 		};
 
-		gmac0: ethernet@24000 {
-			reg = <0x24000 0x800>;
+		gmac0: ethernet@18024000 {
+			reg = <0x18024000 0x800>;
 			phy-mode = "internal";
 
 			fixed-link {
@@ -287,8 +287,8 @@ fixed-link {
 			};
 		};
 
-		gmac1: ethernet@25000 {
-			reg = <0x25000 0x800>;
+		gmac1: ethernet@18025000 {
+			reg = <0x18025000 0x800>;
 			phy-mode = "internal";
 
 			fixed-link {
@@ -297,8 +297,8 @@ fixed-link {
 			};
 		};
 
-		gmac2: ethernet@26000 {
-			reg = <0x26000 0x800>;
+		gmac2: ethernet@18026000 {
+			reg = <0x18026000 0x800>;
 			phy-mode = "internal";
 
 			fixed-link {
@@ -307,7 +307,7 @@ fixed-link {
 			};
 		};
 
-		gmac3: ethernet@27000 {
+		gmac3: ethernet@18027000 {
 			reg = <0x27000 0x800>;
 		};
 	};
-- 
2.35.3


