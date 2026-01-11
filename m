Return-Path: <devicetree+bounces-253525-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C2A8D0E1AD
	for <lists+devicetree@lfdr.de>; Sun, 11 Jan 2026 07:42:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 653DC3011FBD
	for <lists+devicetree@lfdr.de>; Sun, 11 Jan 2026 06:41:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E1DC31F419F;
	Sun, 11 Jan 2026 06:41:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="DWpZXBqr"
X-Original-To: devicetree@vger.kernel.org
Received: from out-185.mta0.migadu.com (out-185.mta0.migadu.com [91.218.175.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C19821CC55
	for <devicetree@vger.kernel.org>; Sun, 11 Jan 2026 06:41:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.185
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768113702; cv=none; b=UJxBCCKKhiD3jJUnpAiQqdbqWYIHojXkHwIQLi47RurDHSshS/ouXrVOttcCpAB5GZs+l12ZGvLW3aLpvrdBqJf8g+6r2Oknfq34WVnHMbk7ViD/WdbaGwGLo3os/q33w83tHCFKwE3Dh6S7y+EblEQqmSfejbFZheECShIKlcA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768113702; c=relaxed/simple;
	bh=OV3HDtkXKdNdbyJh/87CD3+Y37+Ppb3KYEbRVI7Yw3g=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=cNfHgo8rD6kOupboCK+aiTmpa+wi/vO8kCC2NhCT1DWeJghLVXx16E07bNRTQrYkAJEVQcSbjSjKc/c2eOg/tzn1HCkUKH+cLZAdxQMLo7FuFTP//x6RZ61A1oOoXP978yfTGphtAmN/bJnkHFuDzkjjakfVx40njoVS0+VGVaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=DWpZXBqr; arc=none smtp.client-ip=91.218.175.185
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.dev
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1768113699;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=YsfMkNLcCSESV8XTR6/jGWPS+9Mk6DJvmsfeb5LRsCE=;
	b=DWpZXBqrlpzInYX1mFIk3Dr9LS9kCGf5XIAaK7NPVvd85q2tWA0xSijDfqjO2P1kzktmQg
	VwBlv42q1kEiNZGJphD7exVB+lyfRq4lKJh2JYG8RvqpYguhvOAR5kiohNUAQu4iluou5a
	P9H7UClYyiBlbnSwk+9SYe3u/iRtdw0=
From: Ze Huang <huang.ze@linux.dev>
Date: Sun, 11 Jan 2026 14:41:04 +0800
Subject: [PATCH v3 3/3] riscv: dts: spacemit: Enable USB3.0 on BananaPi-F3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260111-k1-usb3dts-v2-v3-3-f5ebd546e904@linux.dev>
References: <20260111-k1-usb3dts-v2-v3-0-f5ebd546e904@linux.dev>
In-Reply-To: <20260111-k1-usb3dts-v2-v3-0-f5ebd546e904@linux.dev>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Alexandre Ghiti <alex@ghiti.fr>, Yixun Lan <dlan@gentoo.org>
Cc: devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
 spacemit@lists.linux.dev, linux-kernel@vger.kernel.org, 
 Ze Huang <huang.ze@linux.dev>, Aurelien Jarno <aurelien@aurel32.net>
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768113671; l=2061;
 i=huang.ze@linux.dev; s=20250705; h=from:subject:message-id;
 bh=OV3HDtkXKdNdbyJh/87CD3+Y37+Ppb3KYEbRVI7Yw3g=;
 b=7QmwbNwz411D6nDMUFDI2mnhaVs4CUMxhZAKO5UA9BbYQyRBTEXKxEAfL9vCH/BJ3wO7C+zpU
 ff5orXGkRvbArelOjDwlkCHJ2BAN2GMdASK9l3ULe9qSoIYQe0e9jQQ
X-Developer-Key: i=huang.ze@linux.dev; a=ed25519;
 pk=Kzc4PMu5PTo8eZZQ5xmTNL9jeXcQ9Wml0cs+vlQpBkg=
X-Migadu-Flow: FLOW_OUT

Enable the DWC3 USB 3.0 controller and its associated usbphy2 on the
Banana Pi F3 board.

The board utilizes a VLI VL817 hub, which requires two separate power
supplies: one VBUS and one for hub itself. Add two GPIO-controlled
fixed-regulators to manage this.

Tested-by: Aurelien Jarno <aurelien@aurel32.net>
Signed-off-by: Ze Huang <huang.ze@linux.dev>
---
 arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts | 46 +++++++++++++++++++++++++
 1 file changed, 46 insertions(+)

diff --git a/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts b/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
index 3f10efd925dc..5971605754b3 100644
--- a/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
+++ b/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
@@ -59,6 +59,25 @@ reg_vcc_4v: vcc-4v {
 		regulator-always-on;
 		vin-supply = <&reg_dc_in>;
 	};
+
+	usb3-vbus-5v {
+		compatible = "regulator-fixed";
+		regulator-name = "USB30_VBUS";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		regulator-always-on;
+		gpio = <&gpio K1_GPIO(97) GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+	};
+
+	usb3_hub_5v: usb3-hub-5v {
+		compatible = "regulator-fixed";
+		regulator-name = "USB30_HUB";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		gpio = <&gpio K1_GPIO(123) GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+	};
 };
 
 &combo_phy {
@@ -313,3 +332,30 @@ &uart0 {
 	pinctrl-0 = <&uart0_2_cfg>;
 	status = "okay";
 };
+
+&usbphy2 {
+	status = "okay";
+};
+
+&usb_dwc3 {
+	dr_mode = "host";
+	#address-cells = <1>;
+	#size-cells = <0>;
+	status = "okay";
+
+	hub_2_0: hub@1 {
+		compatible = "usb2109,2817";
+		reg = <0x1>;
+		vdd-supply = <&usb3_hub_5v>;
+		peer-hub = <&hub_3_0>;
+		reset-gpios = <&gpio K1_GPIO(124) GPIO_ACTIVE_LOW>;
+	};
+
+	hub_3_0: hub@2 {
+		compatible = "usb2109,817";
+		reg = <0x2>;
+		vdd-supply = <&usb3_hub_5v>;
+		peer-hub = <&hub_2_0>;
+		reset-gpios = <&gpio K1_GPIO(124) GPIO_ACTIVE_LOW>;
+	};
+};

-- 
2.52.0


