Return-Path: <devicetree+bounces-187566-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CC89AE07E1
	for <lists+devicetree@lfdr.de>; Thu, 19 Jun 2025 15:53:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BF3283AD797
	for <lists+devicetree@lfdr.de>; Thu, 19 Jun 2025 13:53:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D43828C021;
	Thu, 19 Jun 2025 13:52:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="dCAvpyf9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f182.google.com (mail-il1-f182.google.com [209.85.166.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F1C228B7E1
	for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 13:52:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750341124; cv=none; b=bdAfOHW0zXraXeGrJog2uK7SPVtC27j1OEQ0aHx6mIB2A+F862KzZpoU9aiK2FyBdQoJjd3Ty2l0jqqBZeqmKV8jpz2nmqgzfoQoxnPiA/vko7QpNRNxT3UVd46tQcUvC2BYLACn4Sb6jo3P6G8+oXm/vo2jc5/6qoERFjWfjRU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750341124; c=relaxed/simple;
	bh=PfwZzjjqJBdpG245rW9fZ43Yt8RFpe6Kf9hR0M/wvXw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=bNkv1d6q7gUx2gotPF5KmIQfvF+HvteZ94Ag0+SqA1IZRUVwv8G3WDwtAYjsMJFzq2HdoT0pGMh+SifT9yxbIJ09+IbDAdNxUPO7huoEzRUc82nFNTsG9lfVkMyS9CJ/IiDFTNLxohQiyyo0Qyo0Oa6O7Cdj6/95WXYZ3XONvCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=dCAvpyf9; arc=none smtp.client-ip=209.85.166.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-il1-f182.google.com with SMTP id e9e14a558f8ab-3ddcf0edef6so3310895ab.0
        for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 06:52:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1750341121; x=1750945921; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NWnze/SjFdW+lfNDCsnEitBUx1r5ZcEMc14OReZ/axQ=;
        b=dCAvpyf9Z0VOPh8ylz0gxA/Ry4F/iakNbUZlBTD30BgGjdsZZ1C9PZe4S2wocvsBdM
         E/hATG0spFH0cIx8NEBrW2ghqL1l5Rj6aqzjBLKGy9Z+vFSjbMUirk1HbYRmD1f44Pjj
         Y+63OPoSWo2vvEK8vc1v5EaDcjlv494rfuCwrXRxsLpETjIUhQm5LeragzeklcDlEZed
         759Xmj1KEXYiPhG1fSB2mVdI7cAwtDQ3v+7G6ATrC4Uk72WqqmZZjEzHdEQMULi6tDcE
         E8L2Q5lgtNDvL6NhHF/sx6SgE21joXlzwJ/DrxXjH8Xy/9c6H6sHPDsG54DJWLx+PB71
         zhEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750341121; x=1750945921;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NWnze/SjFdW+lfNDCsnEitBUx1r5ZcEMc14OReZ/axQ=;
        b=kpeLabqk3PI6dU2VUyRJ4SCUrfekrQapLRNR6XA/UzV/8X+89WLxN6f8Isai2wdrO1
         dVmQLtr7kM4Px3fY4sf7AqvzfbLA/668sTe4FvYsJdPa5SToKqpuehSb4TCQVfOSZyXj
         JztsMwGdPBcWLjJdSJjoPLHCNYhyzvnxWcxKTDSVJanF/mdBDhNXQ1SZxoRqNrzYYNFP
         5pCIm0DmjSiBCVsFhvBqr3WTukQGciJbdZGfssxajDusHI0PC8CF+JwdF7DGyIFD2RJG
         WivIVZoneC8oYktsXvkRyf+HqNOEzKsYPOm+5Qtj36wq5WahnjqgH6Vp7Yg3LxCDP0Vu
         sdcw==
X-Forwarded-Encrypted: i=1; AJvYcCUJ0tVLceFsp4k65biSP3Uket+GdBnUuPrK8LZcu2Yo3/rUF5UzmGOiCSc3AX203M6/8h/wuzRoGsIe@vger.kernel.org
X-Gm-Message-State: AOJu0YwnDWiVVi46XVhtLj3vn6D4Wd3/NXMXrXP/wVgnqvdy+LM1eLW9
	cH1+3yexTxo2ISrgV3IsxroP522sJSTPHvMjpfb+j6RJw4CbwqQZV6/ajUpnyUx58z8=
X-Gm-Gg: ASbGncuVnxunpAQM4QfUsEjfD8n2O8ZatGTsXGWs1FlW+olRPEkXkMV6TgBmCJXmzp2
	8j3mH2LJ5nTYwbxs+H8J6IzK5t9DsUBbY8Rbs68FTmW7k3ipGJSu/gYwoKMUxiVav48/SZ2ZJ/o
	aA87Dg8h5MkREFVAs9s3GGC2S3aUes/AOfqvSQsremlW4eLu6kzafu7XWyZmP4hnZTFjQgWuI/L
	PyaVmobq8x5NVZ5LTQPKtgCZJF208Wudum1pIRqZM35Kr1PCyAuWUVqQRfPoTaFiRk17nCKdmRg
	Q8ZXpE4NIXFR4g2YfMaZm5wQ3alEvMDk7dEks6Cz7f5wa7wBk7Vvz+aQUvIIrJVYui10U10vxe/
	pnSNiQImvZUhrDEA47zws3EUSSNCTuOE=
X-Google-Smtp-Source: AGHT+IHj8sY+G51cZweLxsNTuI+RcoQ3J14uLhguTkGCZ/n1ocvbZQ66NvjsIqkyJEywVvtJQ7ynrg==
X-Received: by 2002:a05:6e02:260e:b0:3dd:d18a:2d71 with SMTP id e9e14a558f8ab-3de07c4c33cmr286057795ab.2.1750341120674;
        Thu, 19 Jun 2025 06:52:00 -0700 (PDT)
Received: from presto.localdomain (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id e9e14a558f8ab-3de01a453b4sm38246015ab.47.2025.06.19.06.51.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Jun 2025 06:52:00 -0700 (PDT)
From: Alex Elder <elder@riscstar.com>
To: lee@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	broonie@kernel.org,
	lgirdwood@gmail.com
Cc: wangruikang@iscas.ac.cn,
	dlan@gentoo.org,
	troymitchell988@gmail.com,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	devicetree@vger.kernel.org,
	spacemit@lists.linux.dev,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 4/6] riscv: dts: spacemit: enable the i2c8 adapter
Date: Thu, 19 Jun 2025 08:51:48 -0500
Message-ID: <20250619135151.3206258-5-elder@riscstar.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250619135151.3206258-1-elder@riscstar.com>
References: <20250619135151.3206258-1-elder@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Define properties for the I2C adapter that provides access to the
SpacemiT P1 PMIC.  Enable this adapter on the Banana Pi BPI-F3.

Signed-off-by: Alex Elder <elder@riscstar.com>
---
 arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts | 15 +++++++++++++++
 arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi    |  7 +++++++
 arch/riscv/boot/dts/spacemit/k1.dtsi            | 11 +++++++++++
 3 files changed, 33 insertions(+)

diff --git a/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts b/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
index fe22c747c5012..7c9f91c88e01a 100644
--- a/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
+++ b/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
@@ -40,6 +40,21 @@ &emmc {
 	status = "okay";
 };
 
+&i2c8 {
+	pinctrl-0 = <&i2c8_cfg>;
+	pinctrl-names = "default";
+	#address-cells = <1>;
+	#size-cells = <0>;
+	status = "okay";
+
+	pmic@41 {
+		compatible = "spacemit,p1";
+		reg = <0x41>;
+		interrupts = <64>;
+		status = "okay";
+	};
+};
+
 &uart0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&uart0_2_cfg>;
diff --git a/arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi b/arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi
index 283663647a86f..9d6d4503fe751 100644
--- a/arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi
+++ b/arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi
@@ -11,6 +11,13 @@
 #define K1_GPIO(x)	(x / 32) (x % 32)
 
 &pinctrl {
+	i2c8_cfg: i2c8-cfg {
+		i2c8-0-pins {
+			pinmux = <K1_PADCONF(93, 0)>,	/* PWR_SCL */
+				 <K1_PADCONF(94, 0)>;	/* PWR_SDA */
+		};
+	};
+
 	uart0_2_cfg: uart0-2-cfg {
 		uart0-2-pins {
 			pinmux = <K1_PADCONF(68, 2)>,
diff --git a/arch/riscv/boot/dts/spacemit/k1.dtsi b/arch/riscv/boot/dts/spacemit/k1.dtsi
index 14097f1f6f447..a85239e8e430b 100644
--- a/arch/riscv/boot/dts/spacemit/k1.dtsi
+++ b/arch/riscv/boot/dts/spacemit/k1.dtsi
@@ -483,6 +483,17 @@ gpio: gpio@d4019000 {
 				      <&pinctrl 3 0 96 32>;
 		};
 
+		i2c8: i2c@d401d800 {
+			compatible = "spacemit,k1-i2c";
+			reg = <0x0 0xd401d800 0x0 0x38>;
+			interrupts = <19>;
+			clocks = <&syscon_apbc CLK_TWSI8>,
+				 <&syscon_apbc CLK_TWSI8_BUS>;
+			clock-names = "func", "bus";
+			clock-frequency = <400000>;
+			status = "disabled";
+		};
+
 		pinctrl: pinctrl@d401e000 {
 			compatible = "spacemit,k1-pinctrl";
 			reg = <0x0 0xd401e000 0x0 0x400>;
-- 
2.45.2


