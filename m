Return-Path: <devicetree+bounces-116145-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A9E6D9B1EF5
	for <lists+devicetree@lfdr.de>; Sun, 27 Oct 2024 15:46:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6651D281C78
	for <lists+devicetree@lfdr.de>; Sun, 27 Oct 2024 14:46:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D427E168497;
	Sun, 27 Oct 2024 14:46:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="0qC7t+3Z"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f174.google.com (mail-pg1-f174.google.com [209.85.215.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4C971552F6
	for <devicetree@vger.kernel.org>; Sun, 27 Oct 2024 14:45:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730040361; cv=none; b=H6Kbz3fUc1e8hYyRbGCkJjKr6r4ymeG47LfdmOEsXIlcF87JO8PPWdYno1BPuknGIUHefxzf7TuamE4dJO2IakLD7gwFMxT8feD2fwDVN3CeVv7XxFZ2rFSqQ2b6qVYgp9LUykS9E1/p7xRLC5tpoDguD42DmlbSq1eG5t1+i0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730040361; c=relaxed/simple;
	bh=tUanrKhwXFYt9MSIAQPw+2GxwKgx0rYaAo6GfuhRWKU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=EsOy7Rgp+ivE4FiunH4a3YNZxiJlQtJtESCdsJ6j5jtI87Otl0Of+c2IWx2H9dMtPq6odNkqTY6RTtjmKiPIO9oALwEPczT2eOXFeZYxOtUpVL4g/zAsfqC92xvKPICEShMS0Af+EAEu6lN6xsqvR89Cb8OTzDATVlhbc4XFaWM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=0qC7t+3Z; arc=none smtp.client-ip=209.85.215.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pg1-f174.google.com with SMTP id 41be03b00d2f7-7cd8803fe0aso2379781a12.0
        for <devicetree@vger.kernel.org>; Sun, 27 Oct 2024 07:45:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1730040359; x=1730645159; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xWEEDIuoc+ubQpnTY3Wis5Eq7A0dylpkEwbr0VsXG/k=;
        b=0qC7t+3ZD4hZpvhAIq4zNxSFBYSukRlvxDsY1J6uScPr6Td9HRQzKCJmsqy132vxKG
         OFtRKQqK3kJMoFwzaqUkkv6NEINJaVF+s8uFkmNtDqcS6EaF6ksFv8acl2dRtI6k7FjP
         jOf3jzCOErh6RyM+G8U8VshOEzSurLl8czMnBIvegslOUIcD8soYHyq8/jfSd3SgIFCq
         CtPnGI2d9/TmZ055vwd5rfcxczWeXFesvO62EGKqA0eE7hFsqcjdf/jVNJdSpPcVmDds
         4bYGLXd8aM8tBwDKHsR/ZHSf9dLzHe8jZnsyWJpVfWkQEcgymC7uQKpANK9JI09qZzdG
         nztw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730040359; x=1730645159;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xWEEDIuoc+ubQpnTY3Wis5Eq7A0dylpkEwbr0VsXG/k=;
        b=p2Di49a7pTf02NoV0CJMJXFw1Vyua67kGRoOPLLcMrw5eW+VdKuom/EHgMPdxbpYg2
         9QtWSUmseoMRf4cgcmnCvWiBvlRKOADdA0q6t+dagtfhGTT8VILg+MeRnvIgQ5ovdjx3
         f57DmHF2zs268PikdTKjsk3Gk3gPHYINEnMNzqPDDqfz+TSGgEku+cTDiZEuguU+aiNd
         h/4oAK4aHyeA0yjAPuefPM4VOogLnQJYgLnqZH8msJPvTxfr2bJao6jqbMuNDs5yfERD
         V7e8cTbcqlfMnIgtyfSyzTo4oI595OjKAl/RId9MEPTmu+bM+ZfO+YhXrk4XpWHTODK+
         9VkQ==
X-Forwarded-Encrypted: i=1; AJvYcCVdO06weyxzNmSq7m35iN64DpTAOIxygcOpoPgAnrRmMajbCaxM73+TeXihKCuPRoB/uJQUdDI1Ul2z@vger.kernel.org
X-Gm-Message-State: AOJu0YxmxxK3sNaUBuxssQp7R54DYsF0HozEVgGGJ3E9AV+6gzFFr43S
	/d3xweSCdB4Kb3b8quaAPV+rTmSsBVRVG2WW1SCHEn1k+MLfJZqIge2OT0cZzvg=
X-Google-Smtp-Source: AGHT+IH9/LAPD9XkxqAgDEzE/OAVQvWb8BYcvTb5Lysws0ZyjzOdHM8FJiGWnGHE78Q99U2WeQiUiQ==
X-Received: by 2002:a05:6a20:4499:b0:1d9:1f51:faeb with SMTP id adf61e73a8af0-1d9a85349ecmr7492678637.39.1730040358888;
        Sun, 27 Oct 2024 07:45:58 -0700 (PDT)
Received: from localhost.localdomain ([2a11:3:200::401b])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-72057a0cb06sm4065110b3a.115.2024.10.27.07.45.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 27 Oct 2024 07:45:58 -0700 (PDT)
From: Guodong Xu <guodong@riscstar.com>
To: Conor Dooley <conor@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Emil Renner Berthing <kernel@esmil.dk>,
	rafal@milecki.pl,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Heiko Stuebner <heiko.stuebner@cherry.de>,
	Michael Zhu <michael.zhu@starfivetech.com>,
	Drew Fustini <drew@beagleboard.org>,
	Alexandru Stan <ams@frame.work>,
	Daniel Schaefer <dhs@frame.work>,
	Sandie Cao <sandie.cao@deepcomputing.io>,
	Yuning Liang <yuning.liang@deepcomputing.io>,
	Huiming Qiu <huiming.qiu@deepcomputing.io>,
	Alex Elder <elder@riscstar.com>,
	linux@frame.work,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Guodong Xu <guodong@riscstar.com>
Subject: [PATCH v6 1/5] riscv: dts: starfive: jh7110-common: revised device node
Date: Sun, 27 Oct 2024 22:44:44 +0800
Message-Id: <20241027144448.1813611-2-guodong@riscstar.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241027144448.1813611-1-guodong@riscstar.com>
References: <20241027144448.1813611-1-guodong@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Earlier this year a new DTSI file was created to define common
properties for the StarFive VisionFive 2 and Milk-V Mars boards,
both of which use the StarFive JH7110 SoC.  The Pine64 Star64
board has also been added since that time.

Some of the nodes defined in "jh7110-common.dtsi" are enabled in
that file because all of the boards including it "want" them
enabled.

An upcoming patch enables another JH7110 board, but for that
board not all of these common nodes should be enabled.  Prepare
for supporting the new board by avoiding enabling these nodes in
"jh711-common.dtsi", and enable them instead in these files:
   jh7110-milkv-mars.dts
   jh7110-pine64-star64.dts
   jh7110-starfive-visionfive-2.dtsi

Signed-off-by: Alex Elder <elder@riscstar.com>
Signed-off-by: Guodong Xu <guodong@riscstar.com>
---
v6: New patch

 .../boot/dts/starfive/jh7110-common.dtsi      |  5 -----
 .../boot/dts/starfive/jh7110-milkv-mars.dts   | 17 ++++++++++++++++
 .../dts/starfive/jh7110-pine64-star64.dts     | 17 ++++++++++++++++
 .../jh7110-starfive-visionfive-2.dtsi         | 20 +++++++++++++++++++
 4 files changed, 54 insertions(+), 5 deletions(-)

diff --git a/arch/riscv/boot/dts/starfive/jh7110-common.dtsi b/arch/riscv/boot/dts/starfive/jh7110-common.dtsi
index c7771b3b6475..9e77f79ec162 100644
--- a/arch/riscv/boot/dts/starfive/jh7110-common.dtsi
+++ b/arch/riscv/boot/dts/starfive/jh7110-common.dtsi
 .../boot/dts/starfive/jh7110-common.dtsi      |  5 -----
 .../boot/dts/starfive/jh7110-milkv-mars.dts   | 17 ++++++++++++++++
 .../dts/starfive/jh7110-pine64-star64.dts     | 17 ++++++++++++++++
 .../jh7110-starfive-visionfive-2.dtsi         | 20 +++++++++++++++++++
 4 files changed, 54 insertions(+), 5 deletions(-)

diff --git a/arch/riscv/boot/dts/starfive/jh7110-common.dtsi b/arch/riscv/boot/dts/starfive/jh7110-common.dtsi
index c7771b3b6475..9e77f79ec162 100644
--- a/arch/riscv/boot/dts/starfive/jh7110-common.dtsi
+++ b/arch/riscv/boot/dts/starfive/jh7110-common.dtsi
@@ -176,7 +176,6 @@ csi2rx_to_camss: endpoint {
 &gmac0 {
 	phy-handle = <&phy0>;
 	phy-mode = "rgmii-id";
-	status = "okay";
 
 	mdio {
 		#address-cells = <1>;
@@ -196,7 +195,6 @@ &i2c0 {
 	i2c-scl-falling-time-ns = <510>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&i2c0_pins>;
-	status = "okay";
 };
 
 &i2c2 {
@@ -311,7 +309,6 @@ &pcie1 {
 &pwmdac {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pwmdac_pins>;
-	status = "okay";
 };
 
 &qspi {
@@ -350,13 +347,11 @@ uboot@100000 {
 &pwm {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pwm_pins>;
-	status = "okay";
 };
 
 &spi0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&spi0_pins>;
-	status = "okay";
 
 	spi_dev0: spi@0 {
 		compatible = "rohm,dh2228fv";
diff --git a/arch/riscv/boot/dts/starfive/jh7110-milkv-mars.dts b/arch/riscv/boot/dts/starfive/jh7110-milkv-mars.dts
index 5cb9e99e1dac..66ad3eb2fd66 100644
--- a/arch/riscv/boot/dts/starfive/jh7110-milkv-mars.dts
+++ b/arch/riscv/boot/dts/starfive/jh7110-milkv-mars.dts
@@ -15,6 +15,11 @@ &gmac0 {
 	starfive,tx-use-rgmii-clk;
 	assigned-clocks = <&aoncrg JH7110_AONCLK_GMAC0_TX>;
 	assigned-clock-parents = <&aoncrg JH7110_AONCLK_GMAC0_RMII_RTX>;
+	status = "okay";
+};
+
+&i2c0 {
+	status = "okay";
 };
 
 &pcie0 {
@@ -35,3 +40,15 @@ &phy0 {
 	rx-internal-delay-ps = <1500>;
 	tx-internal-delay-ps = <1500>;
 };
+
+&pwm {
+	status = "okay";
+};
+
+&pwmdac {
+	status = "okay";
+};
+
+&spi0 {
+	status = "okay";
+};
diff --git a/arch/riscv/boot/dts/starfive/jh7110-pine64-star64.dts b/arch/riscv/boot/dts/starfive/jh7110-pine64-star64.dts
index b720cdd15ed6..dbc8612b8464 100644
--- a/arch/riscv/boot/dts/starfive/jh7110-pine64-star64.dts
+++ b/arch/riscv/boot/dts/starfive/jh7110-pine64-star64.dts
@@ -18,6 +18,7 @@ &gmac0 {
 	starfive,tx-use-rgmii-clk;
 	assigned-clocks = <&aoncrg JH7110_AONCLK_GMAC0_TX>;
 	assigned-clock-parents = <&aoncrg JH7110_AONCLK_GMAC0_RMII_RTX>;
+	status = "okay";
 };
 
 &gmac1 {
@@ -39,6 +40,10 @@ phy1: ethernet-phy@1 {
 	};
 };
 
+&i2c0 {
+	status = "okay";
+};
+
 &pcie1 {
 	status = "okay";
 };
@@ -63,3 +68,15 @@ &phy1 {
 	motorcomm,tx-clk-10-inverted;
 	motorcomm,tx-clk-100-inverted;
 };
+
+&pwm {
+	status = "okay";
+};
+
+&pwmdac {
+	status = "okay";
+};
+
+&spi0 {
+	status = "okay";
+};
diff --git a/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2.dtsi b/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2.dtsi
index 18f38fc790a4..ef93a394bb2f 100644
--- a/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2.dtsi
+++ b/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2.dtsi
@@ -13,6 +13,10 @@ aliases {
 	};
 };
 
+&gmac0 {
+	status = "okay";
+};
+
 &gmac1 {
 	phy-handle = <&phy1>;
 	phy-mode = "rgmii-id";
@@ -29,6 +33,10 @@ phy1: ethernet-phy@1 {
 	};
 };
 
+&i2c0 {
+	status = "okay";
+};
+
 &mmc0 {
 	non-removable;
 };
@@ -40,3 +48,15 @@ &pcie0 {
 &pcie1 {
 	status = "okay";
 };
+
+&pwm {
+	status = "okay";
+};
+
+&pwmdac {
+	status = "okay";
+};
+
+&spi0 {
+	status = "okay";
+};
-- 
2.34.1


