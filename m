Return-Path: <devicetree+bounces-135175-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 992809FFFA3
	for <lists+devicetree@lfdr.de>; Thu,  2 Jan 2025 20:47:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8AD7A3A3774
	for <lists+devicetree@lfdr.de>; Thu,  2 Jan 2025 19:47:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 852901BD00A;
	Thu,  2 Jan 2025 19:46:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from freeshell.de (freeshell.de [116.202.128.144])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B5E91B6D10;
	Thu,  2 Jan 2025 19:46:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.202.128.144
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735847184; cv=none; b=Wn/hFQ/V9iSgYMCJXw8ks6TgOscgW/OSH+G2dU4ZtDTOHNAaGrZ+l0GNJPj03nRIx0QYTN8ulgGEuaw8rv5CT8N5SaMGuEwdqmph5QF9m5qbH8EkqjWUYhX0r6hrj+5yTC5KWNFYr2gi+6Ocjqdq5zY9CaEgGuymb/qBUdCoO+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735847184; c=relaxed/simple;
	bh=pOEOea82TopSf3dNQC9jbRfNoNLLR19d66P074GGvD4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=GvV1BBH5Q/gjxZWhlRGM3/EJPLdq+xs6N9gknZ4VvewNq6E1dW5s2pV2tTz7h8HOedDZZxkyMyG/naHqXm4WH1nlmCbaHlwga9sd2WCgWZlJwZi8Hxq1vRxcAnOeDcvDvOnrv22XyCNtLLurSTE+K7DRthTgFFrVU4JhwY6S5m4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=freeshell.de; spf=pass smtp.mailfrom=freeshell.de; arc=none smtp.client-ip=116.202.128.144
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=freeshell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=freeshell.de
Received: from hay.lan. (unknown [IPv6:2605:59c8:31de:bf00:6ecf:39ff:fe00:8375])
	(Authenticated sender: e)
	by freeshell.de (Postfix) with ESMTPSA id CB3CFB4B32DD;
	Thu,  2 Jan 2025 20:46:17 +0100 (CET)
From: E Shattow <e@freeshell.de>
To: Emil Renner Berthing <kernel@esmil.dk>,
	Conor Dooley <conor@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>
Cc: linux-kernel@vger.kernel.org,
	E Shattow <e@freeshell.de>,
	linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH v1 5/5] riscv: dts: starfive: jh7110-common: bootph-pre-ram hinting needed by boot loader
Date: Thu,  2 Jan 2025 11:45:11 -0800
Message-ID: <20250102194530.418127-6-e@freeshell.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250102194530.418127-1-e@freeshell.de>
References: <20250102194530.418127-1-e@freeshell.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

  Add bootph-pre-ram hinting to jh7110-common.dtsi:
  - i2c5_pins and i2c-pins subnode for connection to eeprom
  - eeprom node
  - qspi flash configuration subnode
  - memory node
  - uart0 for serial console

  With this the U-Boot SPL secondary program loader may drop such
  overrides when using dt-rebasing with JH7110 OF_UPSTREAM board targets.

Signed-off-by: E Shattow <e@freeshell.de>
---
 arch/riscv/boot/dts/starfive/jh7110-common.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/riscv/boot/dts/starfive/jh7110-common.dtsi b/arch/riscv/boot/dts/starfive/jh7110-common.dtsi
index ad5cb85ebc59..99de0750d049 100644
--- a/arch/riscv/boot/dts/starfive/jh7110-common.dtsi
+++ b/arch/riscv/boot/dts/starfive/jh7110-common.dtsi
@@ -28,6 +28,7 @@ chosen {
 	memory@40000000 {
 		device_type = "memory";
 		reg = <0x0 0x40000000 0x1 0x0>;
+		bootph-pre-ram;
 	};
 
 	gpio-restart {
@@ -247,6 +248,7 @@ emmc_vdd: aldo4 {
 	};
 
 	eeprom: eeprom@50 {
+		bootph-pre-ram;
 		compatible = "atmel,24c04";
 		reg = <0x50>;
 		pagesize = <16>;
@@ -323,6 +325,7 @@ &qspi {
 	nor_flash: flash@0 {
 		compatible = "jedec,spi-nor";
 		reg = <0>;
+		bootph-pre-ram;
 		cdns,read-delay = <2>;
 		spi-max-frequency = <100000000>;
 		cdns,tshsl-ns = <1>;
@@ -406,6 +409,7 @@ GPOEN_SYS_I2C2_DATA,
 	};
 
 	i2c5_pins: i2c5-0 {
+		bootph-pre-ram;
 		i2c-pins {
 			pinmux = <GPIOMUX(19, GPOUT_LOW,
 					      GPOEN_SYS_I2C5_CLK,
@@ -414,6 +418,7 @@ GPI_SYS_I2C5_CLK)>,
 					      GPOEN_SYS_I2C5_DATA,
 					      GPI_SYS_I2C5_DATA)>;
 			bias-disable; /* external pull-up */
+			bootph-pre-ram;
 			input-enable;
 			input-schmitt-enable;
 		};
@@ -642,6 +647,7 @@ GPOEN_DISABLE,
 };
 
 &uart0 {
+	bootph-pre-ram;
 	clock-frequency = <24000000>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&uart0_pins>;
-- 
2.45.2


