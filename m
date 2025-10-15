Return-Path: <devicetree+bounces-227319-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 874FABE0822
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 21:45:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id CB4FB505FD1
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 19:45:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3398230EF72;
	Wed, 15 Oct 2025 19:44:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="SokA4+KQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 386603081CA
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 19:44:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760557475; cv=none; b=qTWAuKWwISYjGie7XUk0h+AHsSS6JSirKlRqmtLi46PMCY3D79qsAJzhp9niUSTxPrwxszYAum3+v7qeX4N9gbOAQOqvRXcSfCSnBBTk5nEUw4GRBMKMisIx4RiMWrl3Czd5gdiU9xi590kz1E3ugjujOgtTP7H8uqdaETgdL+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760557475; c=relaxed/simple;
	bh=aHgWnJercmO9bga0xfuGF1dB69CEj2xx22/xhOVmZyc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=lrIxrEFPlcyERSxNWx3AqmEy83BjME2US237+dwBVP/ngDo3zrIGAmbmoy7P2NDhE6xplU+AcvYiFyJjZtGsSVQaJ63Qjo7+CqIn/lWuyqgtmGfCaertgEFbrEBlzzisF+Y4lkkkSp63Gt2QLEXEr6C5+WOxi+ICrlorKis+lT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=SokA4+KQ; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-47103531eeeso1312625e9.1
        for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 12:44:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760557470; x=1761162270; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ELtEzvOlSfZDw0eOq11pNQXYa7FR/HwnD4pYyXNkdPc=;
        b=SokA4+KQ7FZ7j/VRyZDa5D2oYmR78LTGo+gGseQsIvyEByDxWHhmzJLq3egpHwMuL4
         DIGGvBMwEODVpMOwQeoxj817mmUTKhWk48E9cGP82RlcN2sFOmx2Qd8wxnFkQe/GQaE3
         W6YmIWZjynPHMIIeRQh+VqQUk0k8qFBT666y3WT6AnGhe67RkSOyN4LNGOTzkhHmKDoJ
         hltmFhj5UWqlzVrPNhlbcVLsfMLF52NBFeBLb9PER67XNcXJBADv4NautoDECsWtTBMg
         02EhbPnuytaSfbptmhy2/Ub1bPCzlTQpo9J8554hv86hSuHuW9BRg6kwGDol9koS+56N
         sCIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760557470; x=1761162270;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ELtEzvOlSfZDw0eOq11pNQXYa7FR/HwnD4pYyXNkdPc=;
        b=ETjbQl6a3+0hXmX4owkvIT6Ix00vSYzeudeADfdHRxp0fxUioNSR1B4ml31Aqcsd8+
         Fzutbvi1P0HudtLO42KAN3ksgtbsgC8TXFjGoX2Va7OdDyBIExXnPnaP0AgmE8AUtyQe
         G8LqyOWY4izdrm1udQ+cqOFzRkF9EN+IQoKLYwnKicXCLiCTU9Ad1goMDor6DUEyNP/4
         wc0VxS3cnKFBrU+KOEjEpLz4OpSfx3tuZNmOp9ZtJ8uHPDEw7ElyLrcYUTSc0XClkM27
         ZZ8S7ZXNY/s6klLphfVmIrNeF52Tr68oYkF42IqgQ6g+8cPwRgBrhU57UQrVdFz0Yu1D
         7BDA==
X-Forwarded-Encrypted: i=1; AJvYcCXR6Y6kz1ekhiGrHX0jg6eM6HbnZOyqKIyBEq/Cq4ZPm1tGW9xu3GDx4jsvvJ14IZUIt01bW5Rp8s9d@vger.kernel.org
X-Gm-Message-State: AOJu0YwKwp5Nbixy+JrgNt09Xl7qphYadkV2IAkIlsaqfL0bLlqxRPEf
	R66JxndSKJGOF+7mLp/opu9cbUbnlxtez23gRLfZe1mkZpmPWpAfhywW
X-Gm-Gg: ASbGncusmV2hWi1mOGrveNuchQVz90Ht1rrMu+GBeA9Mf+jWZM50OeZduAYyVr3vcS1
	LY33krUSPzW6UWLRAv2ytvsXgvH54Xbl5CMqnrioU9K7vKpnp0b9fXlRdVYIagKOiOXhmO7BIzQ
	rwSF3sM03oTAW0CgDfm22TwBgQ5MZ3dW+iuofM5xg3zo/s2bBRhU2p7TRBLTZ0WaQtzQaMbY8f5
	Kn7MUSTyBKzhPmt6BIByGUiOpw7cT2gkDoixfhPCrCXqzV1UX5dlp15+7++3ba75qeNPVuhpWtZ
	QcK6iu7C5uitApznKUGyw49hfb8X1HcwG8wUSJ0E901T7AxgNIDRwTCr0vHSYMJbsxZeCGAONZE
	NhtOA0NZXh2mjb+xHtnCn9bTlNEAEAyGudo90OvyJBkDFocMEWwe9sFMjfAPc60crFzwc119RaZ
	MS1syMjs+qgTJZcB2G5rfMTh+zu4XVoJcNzDROiXtPYv6w84hmHTcJejyRAmc=
X-Google-Smtp-Source: AGHT+IFbf0eUde26C18IKkxKsSuO4ez+ACLVAfcQWNKtZdV+pfDbLyO4Q66LjTmLj7Si6IpG35m9uA==
X-Received: by 2002:a05:600c:1987:b0:46e:4a2b:d35b with SMTP id 5b1f17b1804b1-46fa9b10892mr124486945e9.6.1760557470408;
        Wed, 15 Oct 2025 12:44:30 -0700 (PDT)
Received: from d25728c254ff.v.cablecom.net (84-74-0-139.dclient.hispeed.ch. [84.74.0.139])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-426ce5825aasm30291626f8f.14.2025.10.15.12.44.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Oct 2025 12:44:30 -0700 (PDT)
From: Lothar Rubusch <l.rubusch@gmail.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	dinguyen@kernel.org,
	martin.petersen@oracle.com,
	pabeni@redhat.com,
	rostedt@goodmis.org,
	bhelgaas@google.com,
	l.rubusch@gmail.com
Cc: arnd@arndb.de,
	matthew.gerlach@altera.com,
	tien.fong.chee@altera.com,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v6 03/11] ARM: dts: socfpga: add Enclustra Mercury SA1
Date: Wed, 15 Oct 2025 19:44:08 +0000
Message-Id: <20251015194416.33502-4-l.rubusch@gmail.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20251015194416.33502-1-l.rubusch@gmail.com>
References: <20251015194416.33502-1-l.rubusch@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Introduce support for Enclustra's Mercury SA1 SoM based on Intel Cyclone5
technology as a .dtsi file.

Signed-off-by: Andreas Buerkler <andreas.buerkler@enclustra.com>
Signed-off-by: Lothar Rubusch <l.rubusch@gmail.com>
---
 .../socfpga/socfpga_cyclone5_mercury_sa1.dtsi | 143 ++++++++++++++++++
 1 file changed, 143 insertions(+)
 create mode 100644 arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa1.dtsi

diff --git a/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa1.dtsi b/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa1.dtsi
new file mode 100644
index 000000000000..49944f9632f9
--- /dev/null
+++ b/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa1.dtsi
@@ -0,0 +1,143 @@
+// SPDX-License-Identifier: GPL-2.0+ OR MIT
+/*
+ * Copyright (C) 2024 Enclustra GmbH - https://www.enclustra.com
+ */
+
+#include "socfpga_cyclone5.dtsi"
+
+/ {
+	model = "Enclustra Mercury SA1";
+	compatible = "altr,socfpga-cyclone5", "altr,socfpga";
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+
+	aliases {
+		ethernet0 = &gmac1;
+	};
+
+	/* Adjusted the i2c labels to use generic base-board dtsi files for
+	 * Enclustra Arria10 and Cyclone5 SoMs.
+	 *
+	 * The set of i2c0 and i2c1 labels defined in socfpga_cyclone5.dtsi and in
+	 * socfpga_arria10.dtsi do not allow for using the same base-board .dtsi
+	 * fragments. Thus define generic labels here to match the correct i2c
+	 * bus in a generic base-board .dtsi file.
+	 */
+	soc {
+		i2c_encl: i2c@ffc04000 {
+		};
+		i2c_encl_fpga: i2c@ffc05000 {
+		};
+	};
+
+	memory {
+		name = "memory";
+		device_type = "memory";
+		reg = <0x0 0x40000000>; /* 1GB */
+	};
+};
+
+&osc1 {
+	clock-frequency = <50000000>;
+};
+
+&i2c_encl {
+	i2c-sda-hold-time-ns = <300>;
+	clock-frequency = <100000>;
+	status = "okay";
+
+	isl12020: rtc@6f {
+		compatible = "isil,isl12022";
+		reg = <0x6f>;
+	};
+};
+
+&i2c_encl_fpga {
+	i2c-sda-hold-time-ns = <300>;
+	status = "disabled";
+};
+
+&uart0 {
+	clock-frequency = <100000000>;
+};
+
+&mmc0 {
+	status = "okay";
+	/delete-property/ cap-mmc-highspeed;
+	/delete-property/ cap-sd-highspeed;
+};
+
+&qspi {
+	status = "okay";
+
+	flash0: flash@0 {
+		u-boot,dm-pre-reloc;
+		#address-cells = <1>;
+		#size-cells = <1>;
+		compatible = "jedec,spi-nor";
+		reg = <0>;
+
+		spi-rx-bus-width = <4>;
+		spi-tx-bus-width = <4>;
+		spi-max-frequency = <10000000>;
+
+		cdns,read-delay = <4>;
+		cdns,tshsl-ns = <50>;
+		cdns,tsd2d-ns = <50>;
+		cdns,tchsh-ns = <4>;
+		cdns,tslch-ns = <4>;
+
+		partition@raw {
+			label = "Flash Raw";
+			reg = <0x0 0x4000000>;
+		};
+	};
+};
+
+&gpio0 {
+	status = "okay";
+};
+
+&gpio1 {
+	status = "okay";
+};
+
+&gmac1 {
+	status = "okay";
+	/delete-property/ mac-address;
+	phy-mode = "rgmii-id";
+	phy-handle = <&phy3>;
+
+	mdio0 {
+		#address-cells = <1>;
+		#size-cells = <0>;
+		compatible = "snps,dwmac-mdio";
+
+		phy3: ethernet-phy@3 {
+			reg = <3>;
+
+			/* Add 2ns RX clock delay (1.2ns + 0.78ns)*/
+			rxc-skew-ps = <1680>;
+			rxd0-skew-ps = <420>;
+			rxd1-skew-ps = <420>;
+			rxd2-skew-ps = <420>;
+			rxd3-skew-ps = <420>;
+			rxdv-skew-ps = <420>;
+
+			/* Add 1.38ns TX clock delay (0.96ns + 0.42ns)*/
+			txc-skew-ps = <1860>;
+			txd0-skew-ps = <0>;
+			txd1-skew-ps = <0>;
+			txd2-skew-ps = <0>;
+			txd3-skew-ps = <0>;
+			txen-skew-ps = <0>;
+		};
+	};
+};
+
+&usb1 {
+	status = "okay";
+	dr_mode = "host";
+};
-- 
2.39.5


