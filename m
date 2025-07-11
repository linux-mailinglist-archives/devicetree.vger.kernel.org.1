Return-Path: <devicetree+bounces-195601-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E2A05B023B6
	for <lists+devicetree@lfdr.de>; Fri, 11 Jul 2025 20:33:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 50E763AADD2
	for <lists+devicetree@lfdr.de>; Fri, 11 Jul 2025 18:33:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC24A2F3657;
	Fri, 11 Jul 2025 18:33:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=hammernet-be.20230601.gappssmtp.com header.i=@hammernet-be.20230601.gappssmtp.com header.b="htD4lNne"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B27DD2F2C6B
	for <devicetree@vger.kernel.org>; Fri, 11 Jul 2025 18:33:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752258809; cv=none; b=k4mdOfX+gbCstuqJnV22Hbm9WXFEer2v4eCB+JjKpZSkeXwlMKThemAzXgXRllh0FnSdLhORgq1h50CxPmQN2rnZxWPNcKma+qrZDl1C2UPKJhkxjQWDWPlNMYQMsvTFKhBJHxI+tzRIYbbjOP3witWDTeF5mWJ2WFLo+0c65Kk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752258809; c=relaxed/simple;
	bh=I2K1uHXw4EQkyH35EpeDjkCvWXqIGNmebVNMyD1Rqwk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ZpkMisrlSluRyM4jNl71l0xSfEQ67p5CxEfzL1vXDUglXkrOlgUifeKNfMrXzcsK5j3Lo6sOJbPnPKm+/d/FTsHFGaLcT5rX8Ywlaex8NCokHKwHMFXM50JbiVBdXt/5Mslkgh1kRASRUjJT9cDCsGDO9q5LMiuv46L+PgjWfig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=hammernet.be; spf=fail smtp.mailfrom=hammernet.be; dkim=pass (2048-bit key) header.d=hammernet-be.20230601.gappssmtp.com header.i=@hammernet-be.20230601.gappssmtp.com header.b=htD4lNne; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=hammernet.be
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=hammernet.be
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-451d7b50815so17617485e9.2
        for <devicetree@vger.kernel.org>; Fri, 11 Jul 2025 11:33:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=hammernet-be.20230601.gappssmtp.com; s=20230601; t=1752258806; x=1752863606; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ajLVmCN8EV1ROtFCYKGnJZHORiVxqh3PONYE32dE2Kw=;
        b=htD4lNneKRZcY8XkTFJQl1OF6NcqrTnRXG1/a/IUu1vCQrEzTjujc5k8ByIZiMZLW3
         u/1sGCHDephw/oNOzKgtO+jJj/AsIR0yD9OuU7CoJENMudqfIzfS0sTKyn4Ent7YjYwn
         nVjct0ug2O5gzjz8lNk6BEot3Aa75iXMAKabP1+2u4mEe3ciTt+sbPEAjcudY5e2ocoO
         I/JlcDj2KL1YtVphx/x9D6LsZ1kzT4eo38bGIK/IiFzpekNBNQpxseas34KfRefnHjRG
         XER2HoOJa8SvzK5TKjvvOjUebNRim5aX7ZdA95rv+VFqTjvKSsQ5LGUGIYuxNYI0hCjW
         7otQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752258806; x=1752863606;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ajLVmCN8EV1ROtFCYKGnJZHORiVxqh3PONYE32dE2Kw=;
        b=UMZTLAU61tXE32DnMWzcUgpAR6ouw/DZ86bhCVybTTLQfcTVdZ87klfVdTC46FFAfz
         AyFMfaHFPd+Q9Lz2wT3/7NoWSEYBi63IKQ8UMzsF3MEEjkACCyYDj9FvYrYwrF0CTHBx
         5AgoqYnQlStqlNUGf3lNVBTWgw+4FnD+MtwFFoVNY6f3TlVu9TpvSeuuzlhAoFlXfhsz
         +h00tZdogHDjosQD/7a/yp0WG2JV5uIs07xrRiYjYKJnIpPRbsuFsrT1L3gE4mnxCbTT
         ZoRCPgxsZl37kf3PDwcxxl5OutK5nXPnRZrtfhKof4HGbBTRJB1zSS2xD1drvhEp/UTH
         wwCQ==
X-Forwarded-Encrypted: i=1; AJvYcCUHK9e5MkA+tuFBUwuiFeZuXTCKQp1e+WD25aFE72DapJA64cMWmVwGsM7DvEQZa59D/7qSbj42bO/v@vger.kernel.org
X-Gm-Message-State: AOJu0Yz2/AUMpalfuyDO8tpBrC74Az3riIpTGXUdYmiv+tPMd48O474M
	Vb0di0xsxplRCj3Gd6+W4TEPM5qqRX++5sY/PylNDKxXYom0Ug4qQ9fDQOWy88Hmm7o=
X-Gm-Gg: ASbGncsbcK1sxGbd6275xcuZPyM4dhviPE737QosG1Mx4krLT5gjY/NCU0FgG/pplGa
	/Lx7UFRnAWKOx/QHV8ZdNgz7Cyk3ulXpcmrgX3zlAsYneWMSaml7ooA2GW2XUPHmAvmcnY1aW3p
	yyhY1fHnwz/lw3uGaLiaGa2UBImdIw8Wj6+INW7VNOBLh0cN+vycCasbEGCgFw9KpBch0vBbOVg
	za/AdUvPzqW1wIgiYmMsBGr9AFU/92Y9doIzAqctu9Nu+YQl7T0AUdKcfgPz9s/1XqztHtjlWff
	Q9pgWlr3R0iYPZTbftPrjtZMkvPWX79+I4ih/iZbFoUlC9AqXphb+BenBk+ZSoCJ25CDN1lJQsh
	VeQwahinEUlq1JLxZY5O7S2ILiIkAQVedQW+h5hdiBzoZo8elNBGUdQn3P+LN
X-Google-Smtp-Source: AGHT+IHoIVVNWSLMADUf1EqgQlVt++Sa+z/qkL2VbBz8sznu1zu8Z81BC5P4gKRYQcV0niTuA1b6wA==
X-Received: by 2002:a05:6000:4108:b0:3a8:38b4:1d55 with SMTP id ffacd0b85a97d-3b5f18dc7dfmr3898978f8f.28.1752258806040;
        Fri, 11 Jul 2025 11:33:26 -0700 (PDT)
Received: from pop-os.telenet.be ([2a02:1807:2a00:3400:bed2:2848:b66c:32d3])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45601053020sm705205e9.36.2025.07.11.11.33.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Jul 2025 11:33:25 -0700 (PDT)
From: Hendrik Hamerlinck <hendrik.hamerlinck@hammernet.be>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	paul.walmsley@sifive.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	dlan@gentoo.org,
	palmer@dabbelt.com
Cc: skhan@linuxfoundation.org,
	linux-kernel-mentees@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Hendrik Hamerlinck <hendrik.hamerlinck@hammernet.be>
Subject: [PATCH 2/2] riscv: dts: spacemit: Add OrangePi RV2 board device tree
Date: Fri, 11 Jul 2025 20:32:45 +0200
Message-ID: <20250711183245.256683-3-hendrik.hamerlinck@hammernet.be>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250711183245.256683-1-hendrik.hamerlinck@hammernet.be>
References: <20250711183245.256683-1-hendrik.hamerlinck@hammernet.be>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add initial device tree support for the OrangePi RV2 board [1], which is
marketed as using the Ky X1 SoC but has been confirmed to be 
identical to the SpacemiT K1 [2].

The device tree is adapted from the OrangePi vendor tree [3], and similar
integration can be found in the Banana Pi kernel tree [4], confirming SoC
compatibility.

This minimal device tree enables booting into a serial console with UART
output and a blinking LED.

Link: http://www.orangepi.org/html/hardWare/computerAndMicrocontrollers/details/Orange-Pi-RV2.html [1]
Link: https://www.spacemit.com/en/key-stone-k1 [2]
Link: https://github.com/BPI-SINOVOIP/pi-linux/blob/linux-6.6.63-k1/arch/riscv/boot/dts/spacemit/k1-x_orangepi-rv2.dts [3]
Link: https://github.com/orangepi-xunlong/linux-orangepi/tree/orange-pi-6.6-ky [4]
Signed-off-by: Hendrik Hamerlinck <hendrik.hamerlinck@hammernet.be>
---
 arch/riscv/boot/dts/spacemit/Makefile         |  1 +
 .../boot/dts/spacemit/k1-orangepi-rv2.dts     | 43 +++++++++++++++++++
 2 files changed, 44 insertions(+)
 create mode 100644 arch/riscv/boot/dts/spacemit/k1-orangepi-rv2.dts

diff --git a/arch/riscv/boot/dts/spacemit/Makefile b/arch/riscv/boot/dts/spacemit/Makefile
index 92e13ce1c16d..152832644870 100644
--- a/arch/riscv/boot/dts/spacemit/Makefile
+++ b/arch/riscv/boot/dts/spacemit/Makefile
@@ -1,3 +1,4 @@
 # SPDX-License-Identifier: GPL-2.0
 dtb-$(CONFIG_ARCH_SPACEMIT) += k1-bananapi-f3.dtb
 dtb-$(CONFIG_ARCH_SPACEMIT) += k1-milkv-jupiter.dtb
+dtb-$(CONFIG_ARCH_SPACEMIT) += k1-orangepi-rv2.dtb
diff --git a/arch/riscv/boot/dts/spacemit/k1-orangepi-rv2.dts b/arch/riscv/boot/dts/spacemit/k1-orangepi-rv2.dts
new file mode 100644
index 000000000000..8313f9589cd2
--- /dev/null
+++ b/arch/riscv/boot/dts/spacemit/k1-orangepi-rv2.dts
@@ -0,0 +1,43 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+/* Copyright (c) 2023 Ky, Inc */
+
+/dts-v1/;
+
+#include "k1.dtsi"
+#include "k1-pinctrl.dtsi"
+
+/ {
+	model = "OrangePi RV2";
+	compatible = "xunlong,orangepi-rv2", "spacemit,k1";
+
+	memory@0 {
+		device_type = "memory";
+		reg = <0x0 0x00000000 0x0 0x80000000>;
+	};
+
+	memory@100000000 {
+		device_type = "memory";
+		reg = <0x1 0x00000000 0x0 0x80000000>;
+	};
+
+	chosen {
+		stdout-path = "serial0";
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		led1 {
+			label = "sys-led";
+			gpios = <&gpio K1_GPIO(96) GPIO_ACTIVE_LOW>;
+			linux,default-trigger = "heartbeat";
+			default-state = "on";
+		};
+	};
+};
+
+&uart0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart0_2_cfg>;
+	status = "okay";
+};
-- 
2.43.0


