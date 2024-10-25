Return-Path: <devicetree+bounces-115808-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 272B79B0B82
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 19:28:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8A4AB28624A
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 17:27:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 700922308A8;
	Fri, 25 Oct 2024 17:16:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="Gx05/4Ot"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46FD622CC41
	for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 17:16:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729876602; cv=none; b=QHForRjGz8hBZBi/SYVowWYuBuv/ctI1ZLp1+2pSdaStkcvgKxWBjGOvGWMoK8Ad7nFCIkoTgqnGK/d6nH/kc/9M1swut164aUjXBHpmI12iGCr5eIay/hta1YqawZuLSaKC6kHI5dL3g+fGiNik/17zfRowCM5UqlL4O1d9qmE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729876602; c=relaxed/simple;
	bh=YzyDLNl8va/xJl47EHT+vId7czfsGNnbHYHobDKQTlg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=li3GiBhBFf4k/L0oiQaUh0IziOIe5+Oa8aKdEVMUjCKZ/BOePUCAtpIvorh8JEiy+6wOKTAyBOcIOk7EMAcrJFJHO51h+cCLommNkXypZjdti8TE6zsRmP9lIMsyUXRaQ5tOnpMP7eryrTxPg0IC/ulnPoB3imOkTvsKZtuvvDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=Gx05/4Ot; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-37d3e8d923fso1438125f8f.0
        for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 10:16:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1729876596; x=1730481396; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SOV7jAWhbFwwjw/OJ7O7LtE/DWvJ9qhDH2QMAsU+FWw=;
        b=Gx05/4OtPlxFfZSmKt5wry6KA1iBI3l2cM58HJsFS0sukwTmrSbjdiR6BRbnpnuM2Y
         VjLk5MbiZ/ITHNJDC2ezGMsCqCHORpMAiUGUx7bOQhTY7Oa+/7UGZpJQ7lbXUH2JOfvF
         ycTW+8iwckQCqtTbdCLp7P4ogreh1MH7IcFTqA/wQLMmNDgbU3r29A2dq1RuPZ1CCqzj
         qxe9jAlSU2JNraQPIh5aQ1CUOGWtGxqZr1KyjEtvTeRKN4d/ThyTkjypysckrC+SnZ2E
         cW/YNjThFtZnFftpG1D5DnftzxJP5RJFDAeh12k9CEVd+V3LsolACACs3O4xIqIMSIa/
         bbVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729876596; x=1730481396;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SOV7jAWhbFwwjw/OJ7O7LtE/DWvJ9qhDH2QMAsU+FWw=;
        b=RzhDFXyGuywkr8aUb+qqqoYc0yiOJMWbatQy/2xOYzVIpWDTLxlKIK6T39J7Dt1MHK
         qaYXMUiYEn0Vznf+ugpyYPJVeQIhY0xQe2mIfwgaKXBpZcSu2Z2I5DQ44xORsUteqbjD
         /iI8/wnbc8NhKIDOQH4u7S2J9FpbDn8HsOdKZjy6agGPZEILveuKj7VfXdDwcoYnURhl
         JZxZ2hK0CDJ1k/s8EwrD3kYRZLkWAMaiI7p2ZRLJlIVmEWgqNAmyYWsy4FH4H6lxM7RG
         4rEMsy3zPOWB9THqoIiJcklrPF/Gnbbb7j1IgLjZzbolYCnanRkkFHfYz8Fnhezc6sHK
         5SSQ==
X-Forwarded-Encrypted: i=1; AJvYcCU4sTtFgj6KAFmKPo+CqzB17wCOYbSMtEyqQvuiSrgCMD0SEw/RVTReFANLSkQgorLWY613imDRTJvv@vger.kernel.org
X-Gm-Message-State: AOJu0Yyt1tE1A9iBO+7Z3eGHf54Vp3ZaO0JATPzoNI+yXkOlA5bMBjhI
	N9ljDYKjcVZeZOgkzD0Prp+8UN+2f9v1VfDIQNOa4gssNRCiWAmPw0fuePXsvSk=
X-Google-Smtp-Source: AGHT+IHM4SY0KfVAQSpJ1+ccDJ+C4lsK7yh/l9hYanouQQltriHwErlFPV65caR05fmBTRpW7n50vQ==
X-Received: by 2002:a05:6000:e42:b0:37c:cec2:23c6 with SMTP id ffacd0b85a97d-38061208e5dmr101866f8f.57.1729876596081;
        Fri, 25 Oct 2024 10:16:36 -0700 (PDT)
Received: from [127.0.1.1] ([2a00:1098:3142:e::8])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-38058b91f50sm2013649f8f.94.2024.10.25.10.16.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Oct 2024 10:16:35 -0700 (PDT)
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Fri, 25 Oct 2024 18:16:07 +0100
Subject: [PATCH v2 36/36] arm64: dts: broadcom: Add DT for D-step version
 of BCM2712
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241025-drm-vc4-2712-support-v2-36-35efa83c8fc0@raspberrypi.com>
References: <20241025-drm-vc4-2712-support-v2-0-35efa83c8fc0@raspberrypi.com>
In-Reply-To: <20241025-drm-vc4-2712-support-v2-0-35efa83c8fc0@raspberrypi.com>
To: Maxime Ripard <mripard@kernel.org>, 
 =?utf-8?q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>, 
 Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
 Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Florian Fainelli <florian.fainelli@broadcom.com>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, 
 Javier Martinez Canillas <javierm@redhat.com>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org, 
 Dave Stevenson <dave.stevenson@raspberrypi.com>
X-Mailer: b4 0.14.1

The D-Step has some minor variations in the hardware, so needs
matching changes to DT.

Add a new DTS file that modifies the existing (C-step) devicetree.

Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
---
 arch/arm64/boot/dts/broadcom/Makefile              |  1 +
 arch/arm64/boot/dts/broadcom/bcm2712-d-rpi-5-b.dts | 37 ++++++++++++++++++++++
 2 files changed, 38 insertions(+)

diff --git a/arch/arm64/boot/dts/broadcom/Makefile b/arch/arm64/boot/dts/broadcom/Makefile
index 92565e9781ad..3d0efb93b06d 100644
--- a/arch/arm64/boot/dts/broadcom/Makefile
+++ b/arch/arm64/boot/dts/broadcom/Makefile
@@ -7,6 +7,7 @@ dtb-$(CONFIG_ARCH_BCM2835) += bcm2711-rpi-400.dtb \
 			      bcm2711-rpi-4-b.dtb \
 			      bcm2711-rpi-cm4-io.dtb \
 			      bcm2712-rpi-5-b.dtb \
+			      bcm2712-d-rpi-5-b.dtb \
 			      bcm2837-rpi-3-a-plus.dtb \
 			      bcm2837-rpi-3-b.dtb \
 			      bcm2837-rpi-3-b-plus.dtb \
diff --git a/arch/arm64/boot/dts/broadcom/bcm2712-d-rpi-5-b.dts b/arch/arm64/boot/dts/broadcom/bcm2712-d-rpi-5-b.dts
new file mode 100644
index 000000000000..7de24d60bcd1
--- /dev/null
+++ b/arch/arm64/boot/dts/broadcom/bcm2712-d-rpi-5-b.dts
@@ -0,0 +1,37 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+/dts-v1/;
+
+#include "bcm2712-rpi-5-b.dts"
+
+&gio_aon {
+	brcm,gpio-bank-widths = <15 6>;
+
+	gpio-line-names =
+		"RP1_SDA", // AON_GPIO_00
+		"RP1_SCL", // AON_GPIO_01
+		"RP1_RUN", // AON_GPIO_02
+		"SD_IOVDD_SEL", // AON_GPIO_03
+		"SD_PWR_ON", // AON_GPIO_04
+		"SD_CDET_N", // AON_GPIO_05
+		"SD_FLG_N", // AON_GPIO_06
+		"", // AON_GPIO_07
+		"2712_WAKE", // AON_GPIO_08
+		"2712_STAT_LED", // AON_GPIO_09
+		"", // AON_GPIO_10
+		"", // AON_GPIO_11
+		"PMIC_INT", // AON_GPIO_12
+		"UART_TX_FS", // AON_GPIO_13
+		"UART_RX_FS", // AON_GPIO_14
+		"", // AON_GPIO_15
+		"", // AON_GPIO_16
+
+		// Pad bank0 out to 32 entries
+		"", "", "", "", "", "", "", "", "", "", "", "", "", "", "",
+
+		"HDMI0_SCL", // AON_SGPIO_00
+		"HDMI0_SDA", // AON_SGPIO_01
+		"HDMI1_SCL", // AON_SGPIO_02
+		"HDMI1_SDA", // AON_SGPIO_03
+		"PMIC_SCL", // AON_SGPIO_04
+		"PMIC_SDA"; // AON_SGPIO_05
+};

-- 
2.34.1


