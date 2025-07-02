Return-Path: <devicetree+bounces-192331-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id ABF4DAF6432
	for <lists+devicetree@lfdr.de>; Wed,  2 Jul 2025 23:38:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2A39B4E38B1
	for <lists+devicetree@lfdr.de>; Wed,  2 Jul 2025 21:37:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4FD5C2F6FB0;
	Wed,  2 Jul 2025 21:37:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="v9+Ypaw9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f46.google.com (mail-qv1-f46.google.com [209.85.219.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 426DB23E235
	for <devicetree@vger.kernel.org>; Wed,  2 Jul 2025 21:37:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751492236; cv=none; b=PqhKu2R0C4oou+hPzS941aXbA8xvLWVO0R+1qrdkP9AWrvenHGWm6lDKj1h+Q6jE0qT7delTPYUgWbe9ifvKXTbpGcLGrXxx4EfyAB2NPuiGuHHXaXv8PbIMueskYPHntdKlcYRrRjiruvZ2KYUdQo1GYqDkDG1DguFjF8a0Mic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751492236; c=relaxed/simple;
	bh=PfwZzjjqJBdpG245rW9fZ43Yt8RFpe6Kf9hR0M/wvXw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Ih88aBxjcBHeKZ5s7/4MEwR9hQn5GayRKTLPIqm3WaT3Ef6PNhoF6Fp8G0BQl6ZMQ45/+szocnRXw2gIsH5wlKhEe2LZ0rEvyKD0BYA7P2UGMfi2p8bL2HHfrh4zCK8vzET5W79S2GSroYvk79BcvFClqo41AzRT9Z7AZ1hWfaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=v9+Ypaw9; arc=none smtp.client-ip=209.85.219.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-qv1-f46.google.com with SMTP id 6a1803df08f44-6faf66905adso38483126d6.2
        for <devicetree@vger.kernel.org>; Wed, 02 Jul 2025 14:37:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1751492233; x=1752097033; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NWnze/SjFdW+lfNDCsnEitBUx1r5ZcEMc14OReZ/axQ=;
        b=v9+Ypaw9mMGk4nIM6Nv3+BpHuaH2qsLJK+R47iw5xF0QNkvlchrBpMqyGBVanxu0YA
         kXFktlQj6IwwP95VB096KOraeWA1qXQrq3z18Dwae90wcnp09ib83B5i8j9kTLnY1cQS
         mW/gVMvLKHTaX/7YAJ+oqwUfOsA0RbHvAvOkbWanXpJDg7yQRsfYyxLKH3CYaxnVJWNK
         lBOmCvR3vEBJG3SR3fpQzvdplu/gPaB4byk8zxOnFHKTkzvLu7vfjFw4mjJ7nAdZSjYm
         Zk8kEWZMRFKCC+9bc7qbrsaNCMHo8Gs+pXkbTgO0uFRGNzy5TNp6alTEmiZt1p0iLXzi
         Nauw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751492233; x=1752097033;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NWnze/SjFdW+lfNDCsnEitBUx1r5ZcEMc14OReZ/axQ=;
        b=JrQ4NIrZ+69mOOF1eOB01mHbRlrv3sFqznIFC4FkB13cfViePAS6HMzG0aDmjMmMr2
         yO9ATFEMTjl39XhWsn3OBVoG2PaRER9DJhH1CC/p6o3KntdFL1un+7hbJvOJl1h7EfWg
         DQDMyzD86GKC443jGsaOqcU0Z4QFvW34xSjz9TxwNcu8Rcis1Hdv1bR9wQiIIXTB0UdA
         ZJpdKNYCHf6Kn4afwpHcLgYdR/xBIsgOIP7gA9GuEI74xUnP1KXuEGveDBuISlMYhRk9
         8elE9UGnktzkEb+F09mHO2s8X7tiTnMjW6SfNny9/7RlvZLB75LEbOH01pfMZUhks6Yn
         4Ovw==
X-Forwarded-Encrypted: i=1; AJvYcCUjI0cZnNGjeZCJuTqIi/DtSOta+WpplAXihpA31H91IYSK/dtoxTscr6M8ZJqIzRXYH9ZjJKXZ+LvY@vger.kernel.org
X-Gm-Message-State: AOJu0YwUtP+v/K+Z9Q52txarmIOjd1qzaF11qYYr+z+bhZ67w5wu2stu
	8aq60GYa6KK2g3AmkjdMZ+wfk+Ffr02t966hg/yU7TsV1Q7+ovX7imvFwyXqoV0MJiQ=
X-Gm-Gg: ASbGncuImP5WUIVydPywGTyBxHqzCC7xdk7TuXnmlWZHAfCEVf88gmGrrUOGPnA+cjY
	a8bvZ8yGnPYfKHpPFzOGBVyWB9ltPEied1nVLCLiv/B364M9wmJ5ix2RkaI3+dx8aVzmYTbXSk9
	e8E7GStRaF/GwogSUAAZhKFSBqUgHlHPpmm2klMo61nNbVzENyBofMiksHUZGvx2AS/OA5AWR7+
	hYh7jssgG2DZhSBMP//GtMdFUc62ESrJsZZtkKLKbx2gNhH3rxty1JNFD5fQLQVpmyfH3cIM4f5
	WsXK8jGPFvvGx7lacowzeQDi8HlzxRtbkEcDuPpT2vZDmKKDaNJOLbZUTFBITR1Ox03w9BEBmML
	Db6C8IIHAKTx3rxCcHAL2K+7MUephil1tPPk=
X-Google-Smtp-Source: AGHT+IEga/TTtKtehHBWPm0Nxknr/ZXL6aD2Mo+XTk+ksBSlzPaf8YwrBU7H07nYGA5bKsy1lKh2ew==
X-Received: by 2002:ad4:596d:0:b0:6fb:6732:a2c6 with SMTP id 6a1803df08f44-702b17d9115mr52706366d6.12.1751492233254;
        Wed, 02 Jul 2025 14:37:13 -0700 (PDT)
Received: from localhost.localdomain (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6fd771bc01bsm105691746d6.40.2025.07.02.14.37.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Jul 2025 14:37:12 -0700 (PDT)
From: Alex Elder <elder@riscstar.com>
To: lee@kernel.org,
	lgirdwood@gmail.com,
	broonie@kernel.org,
	alexandre.belloni@bootlin.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: mat.jonczyk@o2.pl,
	dlan@gentoo.org,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	troymitchell988@gmail.com,
	guodong@riscstar.com,
	linux-rtc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: [PATCH v7 6/8] riscv: dts: spacemit: enable the i2c8 adapter
Date: Wed,  2 Jul 2025 16:36:55 -0500
Message-ID: <20250702213658.545163-7-elder@riscstar.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250702213658.545163-1-elder@riscstar.com>
References: <20250702213658.545163-1-elder@riscstar.com>
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


