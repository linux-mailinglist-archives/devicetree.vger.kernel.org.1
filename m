Return-Path: <devicetree+bounces-228371-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 81A82BECF24
	for <lists+devicetree@lfdr.de>; Sat, 18 Oct 2025 14:12:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id DF4CD4E8459
	for <lists+devicetree@lfdr.de>; Sat, 18 Oct 2025 12:12:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 595612D8DA8;
	Sat, 18 Oct 2025 12:12:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="D/aMgol/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64BB72D480E
	for <devicetree@vger.kernel.org>; Sat, 18 Oct 2025 12:12:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760789526; cv=none; b=PVUVmNxqorEPR1Rj3ZcAwSzONNO+Ys/gEwmkgkNRblT/FiKwo/I4SyXAzEWKeX+srrlXKeA/TY+zW7yuXZjlmsCCHm+N8KC8UR1ocIGkNqFZVlZVdS7LUNFH4f0s2ojLrkG6TZux7W6PM8fQTqsk1ghaO0S8VxD67OfXv2eEiWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760789526; c=relaxed/simple;
	bh=aHgWnJercmO9bga0xfuGF1dB69CEj2xx22/xhOVmZyc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=hAUh8ROzO/syUfTmups8p9ekgf5S2q5NJxWNL4vnyE3NosxeTjKKlDdbBlCZDT/KlWe7Ft8IBVrkbQLxskbebh96/Te93eoLbrfXNgYYwYf23oiFleqhwNzGM7SP5n29tlqSaoL2NKDS9D4ND4+MFbPVhA08NxBLkULVC3gc9i8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=D/aMgol/; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-426da8090b0so274754f8f.1
        for <devicetree@vger.kernel.org>; Sat, 18 Oct 2025 05:12:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760789523; x=1761394323; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ELtEzvOlSfZDw0eOq11pNQXYa7FR/HwnD4pYyXNkdPc=;
        b=D/aMgol/0/tY9SkQ2Qn64SkYKCcb7H9VTxL89L/aObgynEl8praK3gTZjnyu9Ibp5G
         IhEWiJMOizm3G4ZLkh5aHRQzreHqZAuMf1Y2sKYAI8A+jfYtysPAQKbRoelp5BP3angu
         RAg1Bir5sRwPrq8MK428nBoKn673qev9VXqHNwl9X0e7eAiN+zJhIM8QRJv3XiFVESAt
         qmT2HsmlNACDhoz7DGYh1Uya+e62VwYv/Aq6Bet8vdZNkiUYQCXPrDWlU8a4EpzJ4Pzf
         X3KMUnS5zOmFF64Mqe3wUhauKYuwPX8/3M2psF5e2neHkwU9PmP2Oywkoo8goMqOWKmx
         ECCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760789523; x=1761394323;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ELtEzvOlSfZDw0eOq11pNQXYa7FR/HwnD4pYyXNkdPc=;
        b=I+11reCJQjPr4DIUcUJj9Fns824lm1DShpg/uDYbY6tenZVjyyRpCXhUH+7VNRiz0I
         zDjYjGXuQX5AWSNq6Y51zB/VCT27IssMOPdKcyfcO11hR5ziuOcwlJHzljgEtcy5RLjK
         7Mw/dlzrGI+8jz3xGX+F4HE2mOq7iMYwiNI6jyrdsm+GvXfvk6sdoqubA5S/46ciylJy
         5gnyyaOG9sHn/AktodsON7YoCQtQ8XDfdt3TcM/xNeGjkJJwoNH7Awybyg+lprs/K0Z/
         dNX0FUOJiMbdv5cNZYd26OXLtzhiVUk2K6tL0HnGvHGpPIONugq4UWdVqz4DV22lscXN
         7ZWg==
X-Forwarded-Encrypted: i=1; AJvYcCVYc8WagXR0KHpi25yArs3datVWfM40gkB3zbJleAS8Lgw2GN42xC4CQkusq3BabrQTJU1ive0rx1Bf@vger.kernel.org
X-Gm-Message-State: AOJu0YxpX3aMt5/nlIogRsyuE+2Kvsh/WzqIvEKFbBKhypTwnmnV5nkK
	CHljhEuGWZPLOfAUdi3WwF0OywlJ8GP/l1I5Fk5r7ed4RicnSRIrrPGh
X-Gm-Gg: ASbGncvWyeOnmjV5BfYBC2XlnL35R7ymGc52sOmwE0wkorSuWc4EqYGBsWoPO/uAKsH
	/zrCxFfIiM4dSGzSbQb4YI1N3cfD52su9uLYg/ruGTsgRm1IRFp19GONm7yYXvaqvEX3FfPb7p0
	jXzRGylsUQpG4BNr//pqWQR9GOdOA9gcRkDLxYACBwrYMHhdYTRL6gHnrBHB70Qt9VUbjMoxYZd
	rsoQT8Jif4hQTgZ41DSFSXcWHE06qQJtRzdJCz0nrQruxSR8eFZW1SBi1wAJ1XmG7T+h/xP/Ycy
	JP4TzLcFW8kyJVaUM5nfOEUA8WTvYMB0tW5qPvz6OiOyoSb4+K/SI1vpv7GGcz6XTR7HKf0hFQB
	Tvv5WPYgioOUhYiZ/tZ6uGKzw9DEawzXwesB3LkPakHYa3uelLuUI75bV75xpKtZCuYxQHmis1/
	Nuj5Y94vCwGRyKxGJw0MoasHZv+lvLaBwGKPzHoNXBwEOXWaSOxjk=
X-Google-Smtp-Source: AGHT+IFl2OlXHNJD+/6uPUbGL6WK8Fw8/JAYpjr+wCqhqtW+uDjAB+CPzFy2bZugCBb4WuxUe/AXOw==
X-Received: by 2002:a05:6000:26d1:b0:426:a87f:e8fc with SMTP id ffacd0b85a97d-42704caa860mr2705575f8f.0.1760789522527;
        Sat, 18 Oct 2025 05:12:02 -0700 (PDT)
Received: from localhost.localdomain (84-74-0-139.dclient.hispeed.ch. [84.74.0.139])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-427ea5a0f19sm4763812f8f.9.2025.10.18.05.12.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Oct 2025 05:12:02 -0700 (PDT)
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
Subject: [PATCH v7 03/11] ARM: dts: socfpga: add Enclustra Mercury SA1
Date: Sat, 18 Oct 2025 12:11:47 +0000
Message-Id: <20251018121155.7743-4-l.rubusch@gmail.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20251018121155.7743-1-l.rubusch@gmail.com>
References: <20251018121155.7743-1-l.rubusch@gmail.com>
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


