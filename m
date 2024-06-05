Return-Path: <devicetree+bounces-72916-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AA968FD616
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 20:53:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7FC6228663A
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 18:53:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0EA8F13AD12;
	Wed,  5 Jun 2024 18:53:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Pu5B0Ae0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f173.google.com (mail-oi1-f173.google.com [209.85.167.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D59BDF43
	for <devicetree@vger.kernel.org>; Wed,  5 Jun 2024 18:53:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717613628; cv=none; b=MpDfKMqeo4RJSPU8k2tFvCbXgrsFIi9ty+9gcpWbw8kLB/un6h/0hgEOm9WxIXZHm4dsbL0cPY5ABWucseWIaSS2jGOJgC2ogPscmKKZVDlG2Kg9JRoUwDDFRCGbCFdJxP9HI8km+oTEC+iZqR4lU0F+9up7t0Fr7PQ328Ninu8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717613628; c=relaxed/simple;
	bh=m0o4qU4xdSzIZ8XDo1kERZeybM2oCvBTijiRasia6IY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=eJJJ9WLEJsBTQAlISoDoA0SO1HeGSHpbEGUUKYty5Fcx0J2WW+n/4/V9jfAeZiyVzYSuIj5uI5oIWTwHJ0Fvl8nZyTkQJcO77TWTQKhnSsYnEAyuGgz8EfmpfaVbCbeVsr8RyB55znzESfoor/CC8Xn2uoi4+BeKDooDSfDJL9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Pu5B0Ae0; arc=none smtp.client-ip=209.85.167.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oi1-f173.google.com with SMTP id 5614622812f47-3d203b5027dso56669b6e.0
        for <devicetree@vger.kernel.org>; Wed, 05 Jun 2024 11:53:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717613625; x=1718218425; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HVzijw5v1Z5XO8oLrdI75BOMEE1r3cCrfFvzujbNVWo=;
        b=Pu5B0Ae0S0Kc+CMnfxh8ADwgwe8uFtpzNuJ7CThHTupcwsaezsAKM9LdA+UPLGhjA8
         wXCuJ6lZKUxvqyOKxLjxQ5nL052OHN/bBcz4ee55QciXbt9HP9QJAVCZTXDwrIs7sQ4a
         swNm3BRDPFtOD6x3U2Jwyatsnf/ldrGlGM2mhVIKMqJyDj4kHlvR4U2BrWsIMv1Rsfmv
         BRuBzX3M5nV3MBnpb7rEr4fMwN6YXD/Ko4hhbFr05Ga8hvbApoi8HWKyfqVRBryk/yKp
         HVyyYWZXDfq5ZHs+a8Xdnkaw32/i4XNVpQDW7IFrvu6WQe2mA07efxrc74EJxm8Tm46g
         hFvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717613625; x=1718218425;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HVzijw5v1Z5XO8oLrdI75BOMEE1r3cCrfFvzujbNVWo=;
        b=U85l+AhsfXrugKf0v5TiVwT0YDifv8hT2a8efCWlvA/BEYPc/aUnKwjHv/T0ch7XCo
         5o6pYa3H22VxaZJetpTW443VKeDKlCWWm2ODwDG70BYrKmCT4cMGTWjBD39OAMxMhzFk
         x07rovxIggPHOawpjnBzyKNK7haFYpoFO7v7fMZWRtXHuZgyA23Pj1qWnqm93ak6iyS+
         wueC4oETtRAEw7E8VRfxBZjDTPMftOP7/bTnS2gA71Si/UOn1pxH7NY4U0saqV2v+eMZ
         zx/9MPYXGXD34zqSkoQaxiRUmKRDOmPwxpWEucPojd/dFvGB03j7DEOVubObhQEmHzWW
         Ml+Q==
X-Gm-Message-State: AOJu0Yzaj9YkbvqDJBhYQXDzh5ZvUIh1Bjl72TsLBwbvSZ3EI5APIMl6
	CwYL4HqRelPXmYBN42nXYRy9ypHhcIR8XODPwP7c58gp2l2NxIE7
X-Google-Smtp-Source: AGHT+IFMBeInfPFiKR9FlYP1Y+NHRP2CUswLOsLD32j97ZpNCuEuFpS0tGQcOonAcXNvqJm8CtVCBQ==
X-Received: by 2002:a05:6808:4406:b0:3c7:21b4:6e1 with SMTP id 5614622812f47-3d20a798627mr108110b6e.2.1717613625404;
        Wed, 05 Jun 2024 11:53:45 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3d20a7a37a1sm29684b6e.4.2024.06.05.11.53.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Jun 2024 11:53:45 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-sunxi@lists.linux.dev
Cc: devicetree@vger.kernel.org,
	mripard@kernel.org,
	ryan@testtoast.com,
	andre.przywara@arm.com,
	samuel@sholland.org,
	jernej.skrabec@gmail.com,
	wens@csie.org,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 2/2] arm64: dts: allwinner: h700: Add Anbernic RG35XX-SP
Date: Wed,  5 Jun 2024 13:53:39 -0500
Message-Id: <20240605185339.266833-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240605185339.266833-1-macroalpha82@gmail.com>
References: <20240605185339.266833-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

The Anbernic RG35XXSP is almost identical to the RG35XX-Plus, but in a
clamshell form-factor. The key differences between the SP and the Plus
is a lid switch and an RTC on the same i2c bus as the PMIC.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/allwinner/Makefile        |   3 +-
 .../sun50i-h700-anbernic-rg35xx-sp.dts        | 145 ++++++++++++++++++
 2 files changed, 147 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-sp.dts

diff --git a/arch/arm64/boot/dts/allwinner/Makefile b/arch/arm64/boot/dts/allwinner/Makefile
index 0db7b60b49a1..00bed412ee31 100644
--- a/arch/arm64/boot/dts/allwinner/Makefile
+++ b/arch/arm64/boot/dts/allwinner/Makefile
@@ -49,5 +49,6 @@ dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h618-orangepi-zero2w.dtb
 dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h618-orangepi-zero3.dtb
 dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h618-transpeed-8k618-t.dtb
 dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h700-anbernic-rg35xx-2024.dtb
-dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h700-anbernic-rg35xx-plus.dtb
 dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h700-anbernic-rg35xx-h.dtb
+dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h700-anbernic-rg35xx-plus.dtb
+dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h700-anbernic-rg35xx-sp.dtb
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-sp.dts b/arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-sp.dts
new file mode 100644
index 000000000000..a1d16b65ef5d
--- /dev/null
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-sp.dts
@@ -0,0 +1,145 @@
+// SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+/*
+ * Copyright (C) 2024 Ryan Walklin <ryan@testtoast.com>.
+ * Copyright (C) 2024 Chris Morgan <macroalpha82@gmail.com>.
+ */
+
+#include <dt-bindings/input/gpio-keys.h>
+#include "sun50i-h700-anbernic-rg35xx-plus.dts"
+
+/ {
+	model = "Anbernic RG35XX SP";
+	compatible = "anbernic,rg35xx-sp", "allwinner,sun50i-h700";
+
+	gpio-keys-lid {
+		compatible = "gpio-keys";
+
+		lid-switch {
+			label = "Lid Switch";
+			gpios = <&pio 4 7 GPIO_ACTIVE_LOW>; /* PE7 */
+			linux,can-disable;
+			linux,code = <SW_LID>;
+			linux,input-type = <EV_SW>;
+			wakeup-event-action = <EV_ACT_DEASSERTED>;
+			wakeup-source;
+		};
+	};
+};
+
+/delete-node/ &r_rsb;
+
+&r_i2c {
+	pinctrl-0 = <&r_i2c_pins>;
+	pinctrl-names = "default";
+	status = "okay";
+
+	axp717: pmic@34 {
+		compatible = "x-powers,axp717";
+		reg = <0x34>;
+		interrupt-controller;
+		#interrupt-cells = <1>;
+		interrupt-parent = <&nmi_intc>;
+		interrupts = <0 IRQ_TYPE_LEVEL_LOW>;
+
+		vin1-supply = <&reg_vcc5v>;
+		vin2-supply = <&reg_vcc5v>;
+		vin3-supply = <&reg_vcc5v>;
+		vin4-supply = <&reg_vcc5v>;
+
+		regulators {
+			reg_dcdc1: dcdc1 {
+				regulator-always-on;
+				regulator-min-microvolt = <900000>;
+				regulator-max-microvolt = <1100000>;
+				regulator-name = "vdd-cpu";
+			};
+
+			reg_dcdc2: dcdc2 {
+				regulator-always-on;
+				regulator-min-microvolt = <940000>;
+				regulator-max-microvolt = <940000>;
+				regulator-name = "vdd-gpu-sys";
+			};
+
+			reg_dcdc3: dcdc3 {
+				regulator-always-on;
+				regulator-min-microvolt = <1100000>;
+				regulator-max-microvolt = <1100000>;
+				regulator-name = "vdd-dram";
+			};
+
+			reg_aldo1: aldo1 {
+				/* 1.8v - unused */
+			};
+
+			reg_aldo2: aldo2 {
+				/* 1.8v - unused */
+			};
+
+			reg_aldo3: aldo3 {
+				/* 1.8v - unused */
+			};
+
+			reg_aldo4: aldo4 {
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-name = "vcc-pg";
+			};
+
+			reg_bldo1: bldo1 {
+				/* 1.8v - unused */
+			};
+
+			reg_bldo2: bldo2 {
+				regulator-always-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-name = "vcc-pll";
+			};
+
+			reg_bldo3: bldo3 {
+				/* 2.8v - unused */
+			};
+
+			reg_bldo4: bldo4 {
+				/* 1.2v - unused */
+			};
+
+			reg_cldo1: cldo1 {
+				/* 3.3v - audio codec - not yet implemented */
+			};
+
+			reg_cldo2: cldo2 {
+				/* 3.3v - unused */
+			};
+
+			reg_cldo3: cldo3 {
+				regulator-always-on;
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-name = "vcc-io";
+			};
+
+			reg_cldo4: cldo4 {
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-name = "vcc-wifi";
+			};
+
+			reg_boost: boost {
+				regulator-min-microvolt = <5000000>;
+				regulator-max-microvolt = <5200000>;
+				regulator-name = "boost";
+			};
+
+			reg_cpusldo: cpusldo {
+				/* unused */
+			};
+		};
+	};
+
+	rtc_ext: rtc@51 {
+		compatible = "nxp,pcf8563";
+		reg = <0x51>;
+	};
+};
-- 
2.34.1


