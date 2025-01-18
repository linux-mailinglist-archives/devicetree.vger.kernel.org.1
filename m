Return-Path: <devicetree+bounces-139418-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 46E76A15C57
	for <lists+devicetree@lfdr.de>; Sat, 18 Jan 2025 11:22:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id ED4161889BA6
	for <lists+devicetree@lfdr.de>; Sat, 18 Jan 2025 10:22:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE84B18BBB9;
	Sat, 18 Jan 2025 10:22:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="QFIYVtwt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1079F175D5D;
	Sat, 18 Jan 2025 10:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737195755; cv=none; b=mSd/zsaFuKQAsxaia7Wd4X9RdYEhmVdRx1J6WPGK1V5ofkM2xAdtfSxhQR0YOE2vCaN+TEI5pi7qMAOU6CglgaIpF8VDxzQaSYcxAXGLOZeRz8u8s5s6sUm7JH37qM7VRWtRNDZ1+QN02qMxnOKiJMimD7Zjs8fGNKQ3Uc5ch3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737195755; c=relaxed/simple;
	bh=0kpmyPDKuYP8/NggsKLM73O6OPX421GcTtnh5Splohc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=bgCtg505gazNgKXvJD0zTZwWNvqigJaWxxH+AKgIo7sHLFKLTCl7Y/aUGYnQY8vj7uuJosV95ayDcjd+7RKMl45dc9pT7dQFs6vi2pKXMPEu5WayPW3Q7hUyxpU27yrzsUqwfZXLHTOe4lprN1i1fqNeYzjkjg3J7k0MJsrHeQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=QFIYVtwt; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-43618283dedso28443975e9.3;
        Sat, 18 Jan 2025 02:22:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1737195752; x=1737800552; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eiAkN9lM6+KhhfeepI/5N0TsoSs8qSwlei2DZBWENpE=;
        b=QFIYVtwttoJX2raFQOFjuoxhHw7tp2PCJN1Olw2oQUhjMGJ+4O2Id6ccArycXarlzV
         XiNTpKEjLt+qoKzvGCXBg+vmAPG7IW30MZ1MM4LmLskhc4Srj3Oy8NMokt7Ls1Z2N/zd
         w1hW/EIhPH/UqPe2FUX2kcYwJn0+8oOUKvCr2YjkGqt8ztSkoKLn0T4KEUWNBLra5vLR
         /iVMlx9MpfP0Fv4z+bMcEb6QeRgzee4QtrBNXJvzUd9w8m17Aram7ol8qcJqQLq+wr86
         4QemauRLe1lDmc9L64e8w4ETJ2/VwU/I14R2VC0He5fnzCMJKBEMnEqKN3fsAm0iuezG
         QBMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737195752; x=1737800552;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eiAkN9lM6+KhhfeepI/5N0TsoSs8qSwlei2DZBWENpE=;
        b=PWbkbjHFUtQng6yzuADin26Rqo9rLCwV3RpQAKxjogiQ+EOUOZZVzwL/YOd5iWdfRP
         drZIfgEU3O3FZHgoUNjgrtOd8xaR0LhrNiH1jbKhzGGUEWFPiz1wcUSn9HuYooe0hp/n
         AyfhkrzTMibP3Pdwc6zzkFNzn1TacngqgUMSYezUUFBGGJijTmPXXkjqnZz+utjGd/Rz
         IrFNO5S4SHt24ARvBDRlTfLrn7T6Ap3VDn+NLcMu+DgjcQfAVRlbfJ6JDteFAo48P89V
         8SgwF9iPOKprlPGHPEfYZWAzZS4rj+JSveXJv2nsuV2XLKEBibbcpikGgY7sbUarU46J
         cUOg==
X-Forwarded-Encrypted: i=1; AJvYcCUBD56dKiHqIGF1lpl4PC6262GYWlGT3uOrwn1D4fLhEDksrJO7ZnCjSNkFnM2vLBn2LMFNMypUoLN7kDi0@vger.kernel.org, AJvYcCWh/xBMeMNSLTwBy0m077IpS62cZ5/sE+mw6bgbXP8+clMkm7CKwiW3BIQAnFBG+FBJ1z/VJlB/7hu0@vger.kernel.org
X-Gm-Message-State: AOJu0YzK3xyJ+LxQ22oZ75gxhacUEHq9aGW+1cOMKXxgBIO+lHgHi5cP
	uWw6rLc9QztlDmikaleeyBANAwT5G2Z6V9ik6U6+HdlyqQb+tAxQ
X-Gm-Gg: ASbGnct2T58lTx2CyyfrFHeBf0FaLHF4lfD56a79ctac5x8Swbzk7+9dpCccoU5YRwv
	cHXdmfDPIpRcKGdybzCiRUDPBDLQeYSGq46/+RYaD7JSGyDxyKe/1R9/IJ+lIqoGG/7ZOOhiF4o
	Vbi15G4rjaksaeM01TPVlDMa1hjM8lebhKhBMotVNLw1eofwyTqid79F+pqr5pXwlcaJ4LODQyE
	ReKidVxbqgyGvu31Ic8SEwWbyckWf0/3bODeCkj0yrh2EPvaILnR+k1hQInnIY2KvV2l9pgeAU0
	jQck+taODcrHSiPXGGNYOCLckYcuKcTH0d+MxPGxwnaqfz2c3vpGv0tv
X-Google-Smtp-Source: AGHT+IEg75B51PBOkr41mFVL8S0eZZqlWUj0q/2aF0Yoeffu4iW9O1RDKnjkpOJD7XMKrnqAu7NcQg==
X-Received: by 2002:a05:600c:1c9d:b0:434:ffd7:6fd2 with SMTP id 5b1f17b1804b1-438913ca1ccmr55465325e9.7.1737195752087;
        Sat, 18 Jan 2025 02:22:32 -0800 (PST)
Received: from localhost.localdomain (146.10-240-81.adsl-dyn.isp.belgacom.be. [81.240.10.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-438904625f5sm64954515e9.28.2025.01.18.02.22.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Jan 2025 02:22:31 -0800 (PST)
From: Philippe Simons <simons.philippe@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS),
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/Allwinner sunXi SoC support),
	linux-sunxi@lists.linux.dev (open list:ARM/Allwinner sunXi SoC support),
	linux-kernel@vger.kernel.org (open list)
Cc: Philippe Simons <simons.philippe@gmail.com>
Subject: [RFC PATCH 3/3] arm64: dts: allwinner: h700: Enable USB OTG
Date: Sat, 18 Jan 2025 11:22:06 +0100
Message-ID: <20250118102207.9339-3-simons.philippe@gmail.com>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20250118102207.9339-1-simons.philippe@gmail.com>
References: <20250118102207.9339-1-simons.philippe@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

RG35XX have a GPIO controlled regulator for phy0 vbus, add it.
Enable HCI0s controllers and otg for dr_mode.
Add phy0 properties to descrive id_det, external vbus, and internal vbus

Signed-off-by: Philippe Simons <simons.philippe@gmail.com>
---
 .../sun50i-h700-anbernic-rg35xx-2024.dts      | 25 +++++++++++++++++--
 1 file changed, 23 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-2024.dts b/arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-2024.dts
index 80ccab7b5..5a6ae42de 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-2024.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-2024.dts
@@ -175,6 +175,16 @@ reg_vcc5v: regulator-vcc5v { /* USB-C power input */
 		regulator-min-microvolt = <5000000>;
 		regulator-max-microvolt = <5000000>;
 	};
+
+	reg_usb0_vbus: regulator-usb0-vbus {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&pio 8 16 GPIO_ACTIVE_HIGH>; /* PI16 */
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		regulator-name = "usb0-vbus";
+		vin-supply = <&reg_boost>;
+	};
 };
 
 &cpu0 {
@@ -337,12 +347,23 @@ &uart0 {
 	status = "okay";
 };
 
-/* the AXP717 has USB type-C role switch functionality, not yet described by the binding */
+/* the AXP717 has USB type-C role switch functionality */
 &usbotg {
-	dr_mode = "peripheral";   /* USB type-C receptable */
+	dr_mode = "otg";   /* USB type-C receptable */
+	status = "okay";
+};
+
+&ehci0 {
+	status = "okay";
+};
+
+&ohci0 {
 	status = "okay";
 };
 
 &usbphy {
+	usb0_id_det-gpios = <&pio 8 4 (GPIO_ACTIVE_LOW | GPIO_PULL_UP)>; /* PI4 */
+	usb0_vbus_power-supply = <&usb_power>;
+	usb0_vbus-supply = <&reg_usb0_vbus>;
 	status = "okay";
 };
-- 
2.47.1


