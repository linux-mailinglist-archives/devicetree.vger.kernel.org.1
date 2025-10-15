Return-Path: <devicetree+bounces-227320-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id C9927BE0825
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 21:46:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 22CC7506F48
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 19:45:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7976230F54F;
	Wed, 15 Oct 2025 19:44:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JtewNKi5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49F1C30E0F8
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 19:44:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760557476; cv=none; b=MpCvdaGuHqQA5ANEP04W1aZbVfoipgkPeRQfMNrWovpSEgnR1asc2E7XuvVej0h7iC7xAspVvgavnnBO1a2ZX8vf1NAazwGdIckNtgq4qXFiO7q6xY/IjH0hbOu0fxP8cns/j2ytS80KLC94oLLO/VYP70cx4YnH8LDNnaIybC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760557476; c=relaxed/simple;
	bh=chBM4fI89RfRSTQyy77w7NKm+uci1RTfTRMtapqT118=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=aWW/Vc/MYfy4fDvshnUgLlpSRJ0TRL7gwDCDMJPiTV9awKp+qucyLl84ff99rvE6KSNxy/R8LRBFZMKQr3ufUfpJ3JQTZWZqnoXtJexdO0Jm/ho5/RFMRvbogHsLbQJXWtET0gfhHt0bxT5DIBN8D005EZqgHABu/UiQp+SgH1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=JtewNKi5; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-46e2cfbf764so7584025e9.1
        for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 12:44:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760557473; x=1761162273; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kYhsBfZhMWFr6Wa+dWD+zvDolXEh8h6k/0rm68kc4+o=;
        b=JtewNKi5pm3DLOZecuj65K+JR+7OJuaovZh1xysD8EGL3541Id3xMtrfYC9OLebyQ0
         dWqk0AwTuMp9d6bcGfwDYVmLGpUjpmOFnWT8edsDVdyonT/t4XT+Tm4XMxKJt9mDj3ra
         ZHzKNYDCHctlLob4AWBLzrVoRYpdYdl8sKpErVkTnaLHuUJISgOxMhT1kB3/bSID89kP
         mSh+UHehtl568afAHf7lzLRIrlCkqux1B7AWQuVzTPIde9X0535M0edRT2dC2tSu/g+Q
         65SskM4fW7sNKQCELIPA9PLuF0VFfl0cjw6VJXBoumsrkXeoqxqsZTnNiY07M8FK7X9V
         a9+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760557473; x=1761162273;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kYhsBfZhMWFr6Wa+dWD+zvDolXEh8h6k/0rm68kc4+o=;
        b=wlaAhh5DadbbbOsivXUjtkD7UU4odQjjm8rjFNwm5UmM4X2v1idvbQTPWwDikyuXZv
         JRODoozhHlxusunIVfS4ujqj3kalchg1vpmYIu2IGexlby/goGDdex+0bsjMJH3siQf5
         L8vsp+LIuqZuaBZLodgNzGf2oy7/0er07Tl+9pq4wddFTrXhvRMYgW2eF1avJY2MjtrI
         oq6H5COkEGMFcYXYadECjxGJnvBRjfhem2MOH5svN3MyY2m3XLFcr8ZOC9OS191AXS2K
         +nkcsyJAaQcnmZJ0La+9dLvgzHuDfR4McPWHwdPPzveKMLlC8YaaPU+o6JCRJnwHf0Dm
         FnLw==
X-Forwarded-Encrypted: i=1; AJvYcCUYudsa5/aW0hHbBKXXRKVJzDZO0Z/hJ9qaTbidPoxxXq8y87mbcaqYRf9Sqz+RzoaxPCKLXUbE/qDB@vger.kernel.org
X-Gm-Message-State: AOJu0Yyn+q7+V+W4fZ5ILLZu1nSKMdpFcsT0tJa9HiTXur6xfmJ5aNPR
	rjuEjK+CTZuOPPgZuZ1sl6Bkl1nm59T01bXmWq9T5ZbHsR/2jzJksjk0
X-Gm-Gg: ASbGnctmd2Fnch3lylKBrNmNFkd7ayHz9/3fcU+ir/SETeVWSXcqaemdZiS1EYzSamT
	OwY/1Xx7kZwRwSCn3ZMNbtXq3+jCIjRYTSSegqfGC2ovNlZUJ3knLE2V0n3elv9j8BEY/aEzTB9
	oh4O3Kw13CgJ8Af9NWlI0nsANlPEdIklIJW+KxOgeYQ7SxTaBclXv7D0x9ugBrmuPSVGD0ef7hO
	mTvnGiI1k7UoceaeMUi/bjUNz2AR+4VLOBnNX6YGygenNLrx8+cuLR0qB5fUy0oeGoUOq6ihgbv
	uRLPst+wporbjx2fS0yTggMQjjKh1qZ7i3AkaZe8JPq+KGLuqMTGpQ4fjf8W3QxptqYqx8IWBSh
	tExDBDWuOOR45Ke2kIgWrjClGaZGudkp5XLLmNePR9aOJjSk+m2ISkvmFGRNAnQQZVw/qBC7yIc
	Oz2JLhdQNEGgl5XQ==
X-Google-Smtp-Source: AGHT+IE9o6ih1WaoYxcBVSpUQsmuM6I7z91oW/rfjBQllreCcL1uXDIReKS5ubpY9Tx3W7Sn/2wcYw==
X-Received: by 2002:a05:600c:470d:b0:45f:2c33:2731 with SMTP id 5b1f17b1804b1-470fc9efdc7mr18575795e9.2.1760557472735;
        Wed, 15 Oct 2025 12:44:32 -0700 (PDT)
Received: from d25728c254ff.v.cablecom.net (84-74-0-139.dclient.hispeed.ch. [84.74.0.139])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-426ce5825aasm30291626f8f.14.2025.10.15.12.44.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Oct 2025 12:44:32 -0700 (PDT)
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
Subject: [PATCH v6 05/11] ARM: dts: socfpga: add Enclustra Mercury+ SA2
Date: Wed, 15 Oct 2025 19:44:10 +0000
Message-Id: <20251015194416.33502-6-l.rubusch@gmail.com>
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

Introduce Enclustra's Mercury+ SA2 SoM based on Intel Cyclone5
technology as a .dtsi file.

Signed-off-by: Andreas Buerkler <andreas.buerkler@enclustra.com>
Signed-off-by: Lothar Rubusch <l.rubusch@gmail.com>
---
 .../socfpga/socfpga_cyclone5_mercury_sa2.dtsi | 146 ++++++++++++++++++
 1 file changed, 146 insertions(+)
 create mode 100644 arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa2.dtsi

diff --git a/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa2.dtsi b/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa2.dtsi
new file mode 100644
index 000000000000..0b28964e0378
--- /dev/null
+++ b/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa2.dtsi
@@ -0,0 +1,146 @@
+// SPDX-License-Identifier: GPL-2.0+ OR MIT
+/*
+ * Copyright (C) 2024 Enclustra GmbH - https://www.enclustra.com
+ */
+
+#include "socfpga_cyclone5.dtsi"
+
+/ {
+	model = "Enclustra Mercury+ SA2";
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
+		reg = <0x0 0x80000000>; /* 2GB */
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
+
+	atsha204a: crypto@64 {
+		compatible = "atmel,atsha204a";
+		reg = <0x64>;
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


