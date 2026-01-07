Return-Path: <devicetree+bounces-252309-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E1CACFD669
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 12:31:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0C3A7301339D
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 11:29:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D217730F808;
	Wed,  7 Jan 2026 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=orlitzky.com header.i=@orlitzky.com header.b="C5daeKu4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail2.viabit.com (mail2.viabit.com [65.246.80.16])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DACE30F545
	for <devicetree@vger.kernel.org>; Wed,  7 Jan 2026 11:29:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=65.246.80.16
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767785393; cv=none; b=HqTyP7RGHLkJ5wFx5/Aq5nGoMVaDeThKgIDPDIwfLZmGnJ7tUZXRS6PqfKESBeaXx8fVu1YFZnQj8w67mg+OAlF9BHCF1zcxBsj+z21Y8bWIq/wtmJSkV9Oi606BU/5LWGaQTeRDceTIznrNERUiN4c3TFBU5WxFqhj7ZHE5vLM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767785393; c=relaxed/simple;
	bh=OPuueHmMVj3SNcW4TnjonoWNxcWCK8kzhB9Rxd5LFmE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=M+C5G+2hqRfwWXV4MpMH7SNed0RJerQ4CgQ5Ol0LDiCY4AMGN9lcbB5DKE6etv9fHOvFn+vHcdFGGUSPAqJDCZ7o42pvdb9tdN/+CHMT99/NkgtM38DV/3IrNODY8DsOI9O4K2xrFkltBhIoZ1+x4zGOdfCoTQL0LGN9YhM1qO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=orlitzky.com; spf=pass smtp.mailfrom=orlitzky.com; dkim=pass (1024-bit key) header.d=orlitzky.com header.i=@orlitzky.com header.b=C5daeKu4; arc=none smtp.client-ip=65.246.80.16
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=orlitzky.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=orlitzky.com
Received: from mertle.michael.orlitzky.com (vpn1.metro-data.com [65.213.236.242])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mail2.viabit.com (Postfix) with ESMTPSA id 4dmQml20MPz3wgB;
	Wed, 07 Jan 2026 06:29:43 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=orlitzky.com; s=mail2;
	t=1767785384; bh=OPuueHmMVj3SNcW4TnjonoWNxcWCK8kzhB9Rxd5LFmE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=C5daeKu4Hu/tLjIVGWDyiuNDK2ZpoVmp/x2f4NVmBcoeVzgD6oXsxzmWgDCS4wOAl
	 N9TzPa5c/+SzrD5rRhO6Blh5sJ+KQU5e9heRHvmmHwckwxceMExnlmmx4vtBVmYakg
	 1J1GiCiGf1vLKAK4ngWwuHksJlOiSX9rFj5aBPnw=
From: Michael Orlitzky <michael@orlitzky.com>
To: unicorn_wang@outlook.com,
	inochiama@gmail.com
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	pjw@kernel.org,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	devicetree@vger.kernel.org,
	sophgo@lists.linux.dev,
	linux-riscv@lists.infradead.org
Subject: [PATCH v2 1/1] riscv: dts: sophgo: enable hardware clock (RTC) on the Milk-V Pioneer
Date: Wed,  7 Jan 2026 06:29:22 -0500
Message-ID: <20260107112922.20013-2-michael@orlitzky.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260107112922.20013-1-michael@orlitzky.com>
References: <20260107112922.20013-1-michael@orlitzky.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

These boards have a working hardware clock if you put a CR-1220
battery in them. We enable it using information from a 6.1.x vendor
kernel.

Reviewed-by: Chen Wang <unicorn_wang@outlook.com>
Signed-off-by: Michael Orlitzky <michael@orlitzky.com>
---
 .../boot/dts/sophgo/sg2042-milkv-pioneer.dts  | 21 +++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/arch/riscv/boot/dts/sophgo/sg2042-milkv-pioneer.dts b/arch/riscv/boot/dts/sophgo/sg2042-milkv-pioneer.dts
index 54d8386bf9c0..ecf8c1e29079 100644
--- a/arch/riscv/boot/dts/sophgo/sg2042-milkv-pioneer.dts
+++ b/arch/riscv/boot/dts/sophgo/sg2042-milkv-pioneer.dts
@@ -52,6 +52,17 @@ &emmc {
 	status = "okay";
 };
 
+&i2c0 {
+	pinctrl-0 = <&i2c0_cfg>;
+	pinctrl-names = "default";
+	status = "okay";
+
+	rtc: rtc@68 {
+		compatible = "dallas,ds1307";
+		reg = <0x68>;
+	};
+};
+
 &i2c1 {
 	pinctrl-0 = <&i2c1_cfg>;
 	pinctrl-names = "default";
@@ -89,6 +100,16 @@ sdhci-emmc-rst-pwr-pins {
 		};
 	};
 
+	i2c0_cfg: i2c0-cfg {
+		i2c0-pins {
+			pinmux = <PINMUX(PIN_IIC0_SDA, 0)>,
+				 <PINMUX(PIN_IIC0_SCL, 0)>;
+			bias-pull-up;
+			drive-strength-microamp = <26800>;
+			input-schmitt-enable;
+		};
+	};
+
 	i2c1_cfg: i2c1-cfg {
 		i2c1-pins {
 			pinmux = <PINMUX(PIN_IIC1_SDA, 0)>,
-- 
2.52.0


