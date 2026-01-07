Return-Path: <devicetree+bounces-252332-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F972CFD925
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 13:11:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 621113057128
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 12:06:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6CB4430EF7F;
	Wed,  7 Jan 2026 12:06:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="Gwf3bGle"
X-Original-To: devicetree@vger.kernel.org
Received: from out-189.mta0.migadu.com (out-189.mta0.migadu.com [91.218.175.189])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7458E30C62C
	for <devicetree@vger.kernel.org>; Wed,  7 Jan 2026 12:06:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.189
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767787562; cv=none; b=d/97T0IV9EFoZrYcuZF/vgweh+GCTfe8NpMWIw3tGSJUQc/vqbNICHMvBjsiJf7FIM3O6nwr9rtKrK/yxn+7/boe+ur9cunjCv6WPsNtiZ9bd2q41SYjMKWD1zE3otktHP6o8KW7MI//uWG7/Sm+RNe7AAhelD5wPlHhHSuKPuE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767787562; c=relaxed/simple;
	bh=nVRiEQf0Hh/YzDLl2mmNv+fKT8Qk/IAVG8tDqFYpKSs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=DVU7nmL0dfDVX3pGu+tBCA2YlPn1VSehrmzk33A5s12XcJRun6uO2KOxmhHXOB2/MmVrSr7DNJK0gQFpTqLtoL9hTYepvoQABrivPTqzMoW9uNcRWjjoqKMAOYy97ZIDoGFa0AIcLLnS54I1LRFuDsQtwFQpq8US/YZYcAkI4MY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=Gwf3bGle; arc=none smtp.client-ip=91.218.175.189
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.dev
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1767787558;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=mq9uhddNWpxDAmVHij7TLry3eiH2O8cUCAEcdtnNtMo=;
	b=Gwf3bGlewiuQh2xLdaaS/qsu6JoSDtLugf8ufN80Wz/crPRYKJGF3pw7hY3jMAY44aDvBN
	U3D3x+ZB6GxcURMmwBMsbJc5JGjNOARpKv4AVxG5OAHKCHOHF9VoFrn9/5Z770MmY392gl
	FW++DsRvud8K7zZYSBSon+4KnW1KiKs=
From: Ze Huang <huang.ze@linux.dev>
Date: Wed, 07 Jan 2026 20:05:32 +0800
Subject: [PATCH v2 3/3] riscv: dts: spacemit: Enable USB3.0 on BananaPi-F3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260107-k1-usb3dts-v2-v2-3-e659b0f8fe1a@linux.dev>
References: <20260107-k1-usb3dts-v2-v2-0-e659b0f8fe1a@linux.dev>
In-Reply-To: <20260107-k1-usb3dts-v2-v2-0-e659b0f8fe1a@linux.dev>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Alexandre Ghiti <alex@ghiti.fr>, Yixun Lan <dlan@gentoo.org>
Cc: devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
 spacemit@lists.linux.dev, linux-kernel@vger.kernel.org, 
 Ze Huang <huang.ze@linux.dev>, Aurelien Jarno <aurelien@aurel32.net>
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767787540; l=2157;
 i=huang.ze@linux.dev; s=20250705; h=from:subject:message-id;
 bh=nVRiEQf0Hh/YzDLl2mmNv+fKT8Qk/IAVG8tDqFYpKSs=;
 b=MReNNYtvWmEVP8eQa2CesjnaU8ruj/M4WdplYWUic5GhkraYuN276YmGEmGqv6IqPxfq+/whB
 Y5YM5We/Vo6DMoxfmZ1VEbmJ9O4ffxJSVpJEAb6obLa+wj1VyDxEqic
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
 arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts | 48 +++++++++++++++++++++++++
 1 file changed, 48 insertions(+)

diff --git a/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts b/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
index 3f10efd925dc..013df91c6a4c 100644
--- a/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
+++ b/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
@@ -59,6 +59,26 @@ reg_vcc_4v: vcc-4v {
 		regulator-always-on;
 		vin-supply = <&reg_dc_in>;
 	};
+
+	usb3_vbus: regulator-vbus-5v {
+		compatible = "regulator-fixed";
+		regulator-name = "USB30_VBUS";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		regulator-always-on;
+		gpio = <&gpio K1_GPIO(97) GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+	};
+
+	usb3_vhub: regulator-vhub-5v {
+		compatible = "regulator-fixed";
+		regulator-name = "USB30_VHUB";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		regulator-always-on;
+		gpio = <&gpio K1_GPIO(123) GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+	};
 };
 
 &combo_phy {
@@ -67,6 +87,34 @@ &combo_phy {
 	status = "okay";
 };
 
+&usbphy2 {
+	status = "okay";
+};
+
+&usb_dwc3 {
+	dr_mode = "host";
+	vbus-supply = <&usb3_vbus>;
+	#address-cells = <1>;
+	#size-cells = <0>;
+	status = "okay";
+
+	hub_2_0: hub@1 {
+		compatible = "usb2109,2817";
+		reg = <0x1>;
+		vdd-supply = <&usb3_vhub>;
+		peer-hub = <&hub_3_0>;
+		reset-gpios = <&gpio K1_GPIO(124) GPIO_ACTIVE_LOW>;
+	};
+
+	hub_3_0: hub@2 {
+		compatible = "usb2109,817";
+		reg = <0x2>;
+		vdd-supply = <&usb3_vhub>;
+		peer-hub = <&hub_2_0>;
+		reset-gpios = <&gpio K1_GPIO(124) GPIO_ACTIVE_LOW>;
+	};
+};
+
 &emmc {
 	bus-width = <8>;
 	mmc-hs400-1_8v;

-- 
2.52.0


