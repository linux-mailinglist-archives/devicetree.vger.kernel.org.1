Return-Path: <devicetree+bounces-162426-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E6761A78561
	for <lists+devicetree@lfdr.de>; Wed,  2 Apr 2025 01:56:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BC94F7A4321
	for <lists+devicetree@lfdr.de>; Tue,  1 Apr 2025 23:55:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9DEB121C160;
	Tue,  1 Apr 2025 23:56:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=wkennington-com.20230601.gappssmtp.com header.i=@wkennington-com.20230601.gappssmtp.com header.b="DIP2NIJw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E45021B905
	for <devicetree@vger.kernel.org>; Tue,  1 Apr 2025 23:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743551797; cv=none; b=Lytm1j8xge7jMFwXl16etNSzPEjD9LqGZ2kaLzvKLrV6KxdpMhS4zV8NfTM7/UOeoGBKrSYUrlCRHG5e+MLOeXBMiMjvXTa0DxKScMIy6vPDdCH7J3rXUJMASUL0QlItnu2Te2XZpj9ECc8FvZZ6B5XCGmXFNGdxll6fbtt9+NU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743551797; c=relaxed/simple;
	bh=/oLB4lfTgEqsm45al5pc3NIWRfW5hWKG0WWTFCddDho=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=LIxQhw32EJRBn8dt3mbAA+hn8Na93Jfuo/ZXN59Qc98lMFgsevV1ZecRpZs3PVFSpmXRj1zbiBn4tdsvKQBP8zFDLTHFVu2OhtD9Er5BiUCBG1UICCqNnN3MB5gFgNsVJj1/5DAeffxyQXXaqF0EhjvZPBenwhU6y7dRliZRFBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=wkennington.com; spf=none smtp.mailfrom=wkennington.com; dkim=pass (2048-bit key) header.d=wkennington-com.20230601.gappssmtp.com header.i=@wkennington-com.20230601.gappssmtp.com header.b=DIP2NIJw; arc=none smtp.client-ip=209.85.214.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=wkennington.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=wkennington.com
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-2255003f4c6so111745205ad.0
        for <devicetree@vger.kernel.org>; Tue, 01 Apr 2025 16:56:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=wkennington-com.20230601.gappssmtp.com; s=20230601; t=1743551794; x=1744156594; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:reply-to:message-id:date
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=b6ihHnN8ilmRZM8hNAaeCWLomeBOtyWBXorZNgeS24M=;
        b=DIP2NIJwv7+ufEqpvnAlpksAqCUtbwOxe4qZyDmZlwRvo5uoKLDxS6jtqc3KpATcke
         zmIaMXdYYZAR3UTHHUKfFoq0UI9ldLRvXPvHQeoS55pod0uNVKi7JslSSS3/K9PWVj50
         xX57jsFHSb2/obx663FahJBoi5o4m5pxw55H3lNgXYLOTFqEHRq9SMl5rdvYLcxWU18o
         ATd7Ufoi09x/w0ZcwC4nGfRyAysG6JOOVka5Re3M46s5jsnP/irycK09sFQURaN+ui5X
         u7AI3wSMhLKx2NY/HZeEYueMsobKGt5k009ScA57y+B9Wpx8808iBB3ZWdxkUN0WZeob
         FlVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743551794; x=1744156594;
        h=content-transfer-encoding:mime-version:reply-to:message-id:date
         :subject:cc:to:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=b6ihHnN8ilmRZM8hNAaeCWLomeBOtyWBXorZNgeS24M=;
        b=IW5DxylefGiOS2+4bf7BB2uCGGyzWr/d025ZstdkDBgtJbVBjr1styku1Mh7rJJKIS
         2tFtghOo1jJ8LfYju5RK8C+Wgol61dN+0yAw/WSzOGWeIR8Kctfehvxh5AackV3N63XO
         UxYKPxsaL6ctmrT7gmTlFz09Ugh8zKz7DCEdf9xQmQTy1nEFNW23LOZJn/WnCglgW0zQ
         67bV/+kI34+3a6cvZYW6cnetMX7sK5uIodYZO/x18vsd3zLLDCqOy6VK3vOmKWCr6JkA
         c8xlM5O/cTwaNOSOZ+TYy9oEw4myUMumXaBpAc6b63ORWRNOh3CFrT2/qX/ob2eX+951
         8+MQ==
X-Gm-Message-State: AOJu0YwRJHvyNJ7iynVjoLoeHUszTZLjWZ8nwq6/EsVe8DkO7/K/zkxk
	OfjntfF0U6o7wtjCSQGhuvgNKe/c/1KG2b6LGY9RH3xkLcJbE4KOhBDjZMPJ47I=
X-Gm-Gg: ASbGnctEv7bmwSz6QzZIYIP+YWT3Du2aAOSWAhX5LZbF5tOX8M9W163nvvDeC/1ZKAA
	lLrVCg4vaEEmIfea9+oOyAdSgmGGrDyXhR6/+ctuPpkYQZPNfPiZxP/+AMx1L5NsitQEbEXkEps
	d5zcRGnOVG0dUZ1nSfVmUNPYkp5AMenaBy7Awq3SzdPgfb2106+6qW14qGEJVIDtG3m5LW1XJpx
	CLXcsQm7rsxaO/o2Dgn3abl4io3AweM78kkj8L7MSJAJieOxHEjJEfdUGECOmxqg7mEbWXiRNcg
	A1ErduUKy3la9t1kKxFl3/38kCixvXZSu62kMaWQEQx+0tgombYoM0JmZEnBV5TdofmJjiOY/jf
	TmJKn/9aNTU3D15IZTnC+3ZscH9jEp5U=
X-Google-Smtp-Source: AGHT+IFylzDbhBQ/sL2ExeIt5kLtcQJnLm0bfmikXo5VViRiVMSH4IaRuk3kFMVNKPfBS80Y7hZfgQ==
X-Received: by 2002:a05:6a00:1486:b0:736:6ecd:8e32 with SMTP id d2e1a72fcca58-739b611955fmr5416229b3a.21.1743551794244;
        Tue, 01 Apr 2025 16:56:34 -0700 (PDT)
Received: from wak-linux.svl.corp.google.com ([2a00:79e0:2e5b:9:895:611e:1a61:85c1])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-73970def428sm9646836b3a.32.2025.04.01.16.56.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Apr 2025 16:56:33 -0700 (PDT)
From: "William A. Kennington III" <william@wkennington.com>
To: Tomer Maimon <tmaimon77@gmail.com>,
	Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	openbmc@lists.ozlabs.org,
	"William A. Kennington III" <william@wkennington.com>
Subject: [PATCH v2] ARM: dts: nuvoton: Add UDC nodes
Date: Tue,  1 Apr 2025 16:56:30 -0700
Message-ID: <20250401235630.3220150-1-william@wkennington.com>
X-Mailer: git-send-email 2.49.0.472.ge94155a9ec-goog
Reply-To: 20240925093956.2449119-1-william@wkennington.com
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The driver support was already added but we are missing the nodes in our
common devicetree.

Signed-off-by: William A. Kennington III <william@wkennington.com>
---
V1 -> V2: Fix udc -> udc nodenames, fix reg values for npcm750

 .../dts/nuvoton/nuvoton-common-npcm7xx.dtsi   | 71 +++++++++++++++++++
 .../arm/boot/dts/nuvoton/nuvoton-npcm750.dtsi | 65 +++++++++++++++++
 2 files changed, 136 insertions(+)

diff --git a/arch/arm/boot/dts/nuvoton/nuvoton-common-npcm7xx.dtsi b/arch/arm/boot/dts/nuvoton/nuvoton-common-npcm7xx.dtsi
index 5a466e97955a..e337f40ae0f2 100644
--- a/arch/arm/boot/dts/nuvoton/nuvoton-common-npcm7xx.dtsi
+++ b/arch/arm/boot/dts/nuvoton/nuvoton-common-npcm7xx.dtsi
@@ -99,6 +99,11 @@ rst: rst@801000 {
 		};
 	};
 
+	udc0_phy: usb-phy {
+		compatible = "usb-nop-xceiv";
+		#phy-cells = <0>;
+	};
+
 	ahb {
 		#address-cells = <1>;
 		#size-cells = <1>;
@@ -193,6 +198,72 @@ fiux: spi@fb001000 {
 			status = "disabled";
 		};
 
+		udc5: usb@f0835000 {
+			compatible = "nuvoton,npcm750-udc";
+			reg = <0xf0835000 0x1000
+			       0xfffd2800 0x800>;
+			interrupts = <GIC_SPI 56 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clk NPCM7XX_CLK_SU>;
+			clock-names = "clk_usb_bridge";
+			phys = <&udc0_phy>;
+			phy_type = "utmi_wide";
+			dr_mode = "peripheral";
+			status = "disabled";
+		};
+
+		udc6: usb@f0836000 {
+			compatible = "nuvoton,npcm750-udc";
+			reg = <0xf0836000 0x1000
+			       0xfffd3000 0x800>;
+			interrupts = <GIC_SPI 57 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clk NPCM7XX_CLK_SU>;
+			clock-names = "clk_usb_bridge";
+			phys = <&udc0_phy>;
+			phy_type = "utmi_wide";
+			dr_mode = "peripheral";
+			status = "disabled";
+		};
+
+		udc7: usb@f0837000 {
+			compatible = "nuvoton,npcm750-udc";
+			reg = <0xf0837000 0x1000
+			       0xfffd3800 0x800>;
+			interrupts = <GIC_SPI 58 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clk NPCM7XX_CLK_SU>;
+			clock-names = "clk_usb_bridge";
+			phys = <&udc0_phy>;
+			phy_type = "utmi_wide";
+			dr_mode = "peripheral";
+			status = "disabled";
+		};
+
+		udc8: usb@f0838000 {
+			compatible = "nuvoton,npcm750-udc";
+			reg = <0xf0838000 0x1000
+			       0xfffd4000 0x800>;
+			interrupts = <GIC_SPI 59 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clk NPCM7XX_CLK_SU>;
+			clock-names = "clk_usb_bridge";
+			phys = <&udc0_phy>;
+			phy_type = "utmi_wide";
+			dr_mode = "peripheral";
+			status = "disabled";
+		};
+
+		udc9: usb@f0839000 {
+			compatible = "nuvoton,npcm750-udc";
+			reg = <0xf0839000 0x1000
+			       0xfffd4800 0x800>;
+			interrupts = <GIC_SPI 60 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clk NPCM7XX_CLK_SU>;
+			clock-names = "clk_usb_bridge";
+			nuvoton,sysgcr = <&gcr>;
+			phys = <&udc0_phy>;
+			phy_type = "utmi_wide";
+			dr_mode = "peripheral";
+			status = "disabled";
+		};
+
 		apb {
 			#address-cells = <1>;
 			#size-cells = <1>;
diff --git a/arch/arm/boot/dts/nuvoton/nuvoton-npcm750.dtsi b/arch/arm/boot/dts/nuvoton/nuvoton-npcm750.dtsi
index 30eed40b89b5..f42ad259636c 100644
--- a/arch/arm/boot/dts/nuvoton/nuvoton-npcm750.dtsi
+++ b/arch/arm/boot/dts/nuvoton/nuvoton-npcm750.dtsi
@@ -58,5 +58,70 @@ gmac1: eth@f0804000 {
 					&rg2mdio_pins>;
 			status = "disabled";
 		};
+
+		udc0: usb@f0830000 {
+			compatible = "nuvoton,npcm750-udc";
+			reg = <0xf0830000 0x1000
+			       0xfffd0000 0x800>;
+			interrupts = <GIC_SPI 51 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clk NPCM7XX_CLK_SU>;
+			clock-names = "clk_usb_bridge";
+			phys = <&udc0_phy>;
+			phy_type = "utmi_wide";
+			dr_mode = "peripheral";
+			status = "disabled";
+		};
+
+		udc1: usb@f0831000 {
+			compatible = "nuvoton,npcm750-udc";
+			reg = <0xf0831000 0x1000
+			       0xfffd0800 0x800>;
+			interrupts = <GIC_SPI 52 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clk NPCM7XX_CLK_SU>;
+			clock-names = "clk_usb_bridge";
+			phys = <&udc0_phy>;
+			phy_type = "utmi_wide";
+			dr_mode = "peripheral";
+			status = "disabled";
+		};
+
+		udc2: usb@f0832000 {
+			compatible = "nuvoton,npcm750-udc";
+			reg = <0xf0832000 0x1000
+			       0xfffd1000 0x800>;
+			interrupts = <GIC_SPI 53 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clk NPCM7XX_CLK_SU>;
+			clock-names = "clk_usb_bridge";
+			phys = <&udc0_phy>;
+			phy_type = "utmi_wide";
+			dr_mode = "peripheral";
+			status = "disabled";
+		};
+
+		udc3: usb@f0833000 {
+			compatible = "nuvoton,npcm750-udc";
+			reg = <0xf0833000 0x1000
+			       0xfffd1800 0x800>;
+			interrupts = <GIC_SPI 54 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clk NPCM7XX_CLK_SU>;
+			clock-names = "clk_usb_bridge";
+			phys = <&udc0_phy>;
+			phy_type = "utmi_wide";
+			dr_mode = "peripheral";
+			status = "disabled";
+		};
+
+		udc4: usb@f0834000 {
+			compatible = "nuvoton,npcm750-udc";
+			reg = <0xf0834000 0x1000
+			       0xfffd2000 0x800>;
+			interrupts = <GIC_SPI 55 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clk NPCM7XX_CLK_SU>;
+			clock-names = "clk_usb_bridge";
+			phys = <&udc0_phy>;
+			phy_type = "utmi_wide";
+			dr_mode = "peripheral";
+			status = "disabled";
+		};
 	};
 };
-- 
2.49.0.472.ge94155a9ec-goog


