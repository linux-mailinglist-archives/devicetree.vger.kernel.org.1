Return-Path: <devicetree+bounces-204045-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 81C1DB23E66
	for <lists+devicetree@lfdr.de>; Wed, 13 Aug 2025 04:46:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A14521B63334
	for <lists+devicetree@lfdr.de>; Wed, 13 Aug 2025 02:46:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 210AB20F087;
	Wed, 13 Aug 2025 02:45:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="IXtbbbnv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f41.google.com (mail-io1-f41.google.com [209.85.166.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 062FE204592
	for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 02:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755053126; cv=none; b=rSWQmgxwIrZENjtBtneUkrW97K5+P3RugHblNnIHLZuiu93Fz7pJFLVUiWcg+wcgL1HVMrbmK21rHZ6aETo3CQnzbWlrXzipkcox1rNxBEiMqSWGBbBxln54OaDAF33Pvp0FtCAQuq3nKOBoL15ALs7Y2NNQqS8jT9Aejj8VaR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755053126; c=relaxed/simple;
	bh=ooFOOV2isYxwgZ2SmK13jgjsTx8sBuH2wENU5XY8MgA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=lCi5wR0C+IU/Nh0LTri2hT9a96TZ0AlD0+YVd426uV0AhFo0sKqudYvlZg+Plex8cjmdPEUsEAOkjAxZsZdXe/aY9xo7I8nhyRb3Q/1S/8MLUVnkd6gp6yJE/ElT0yGMcQZQg2g16QIWfIjjGRaQ+sof4BucFf3peKLRrW5LNyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=IXtbbbnv; arc=none smtp.client-ip=209.85.166.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-io1-f41.google.com with SMTP id ca18e2360f4ac-8818a5ba63fso180666839f.2
        for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 19:45:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1755053123; x=1755657923; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=A4wudv5OTn00PNZ8isBITe1KCx3hdy2uajB+8N6UIZI=;
        b=IXtbbbnvveJf1MZUCiB+41pGDx1lnkcx8N6SbOGJNl+xw4zoKizkUB1bG0r2+6QREA
         ESsgVd2lFPse45nQLHbEuVRLxPVtExph//lDjdCWfIcC8L8kNNlTstw89pVLXBRxlczw
         UBLunpjrliCirFI9vjDml52HakFP8QNGv/AuMITgfkX41/MtSJAeYGVAxzeXUx96xY9V
         5ZrCeGjqEkfsFtdVigOZp8aWKH5+vkiGsxCLJ5HjeZE9GaZzei3SA6l+3fgxbZHou9X4
         cB8dNrQFEOCE3QxFiQHFe01IZxb+pX6XiH+QNjJZZRDpu42kx0JNhmbgkxIUo+VGMyp0
         AORA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755053123; x=1755657923;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=A4wudv5OTn00PNZ8isBITe1KCx3hdy2uajB+8N6UIZI=;
        b=uureogQeHo9unYDlTY2TVx2kP3lGAn9karAmhI3sckDeEgAMEHnC09PaD4SGjK1uMG
         pUT8yeCl5+PF0RR+uxqQMd11WbMqxD9lOcUi8qarC/TvI+7yQ7EnP1ZLZ46O1UlDiAtS
         6N82auLZ5f1bYKNpUxTy8A6miUtD6HNl80QL4XLQ5TT6jkh7p+8d5VtR/Gxr9LnufNKP
         ipWK2jaLX4j5HVgXhPu7LdX7twD7rxHk8BobA+2himh1rVktY/UiSKaSU/tS24+psMjq
         GshOwIE2UwJhfeL3/uODRC9B9bRB2JeuoDfo8MAk6lOxfP0PzhRQsOpMlBR1mdVDynqP
         LbVA==
X-Forwarded-Encrypted: i=1; AJvYcCVJokxP9skNkxJLDGN5o1Z2P8R6pGhvFnYTBK2zCEwVvJ6kRjflNOVKw733gdIgxZfAULT7eV5WlJIB@vger.kernel.org
X-Gm-Message-State: AOJu0YwES+MhslxL4CYHkKnNvnCJ/AvCT0YqDD70KetYboUaOI+Mmjld
	Pg6P8KCiHeSXQwGqY9ECbE+QPFdbTZ7RtPX2ZI1jHoylgHPqGh03wJrvh2DJ3zEP1Os=
X-Gm-Gg: ASbGncupFTMEy7Rqd2wjhJ7ACK157ZihIydqUg2ccTBIK2iekDoJljuPd02Qv4j61xc
	r6rdUNbszJYLJUmyc7OyaaNGIWGyYhg11pOyTsZuwAm5iIJ8hkEDQvWk45+NZTUcQLFFWMkWxql
	cfda42anmunynW/mUx2s8jMqERYtt5AokuvTOoxzIo2HhyuzAIbnca2ySeyt5xyu1nU8zmeHRuS
	FidYXDMNWpQFmZcMjLOnzGNvc213NMB1iunPfz0YN3oSWgmF/D5Z3AoQz1MbYOtsggibtwZuY18
	QfvAnwOo2E/bXA/f4QqQwBBMsRx1bQ3/jpf0XHJuyeb8FjHmgLk6V86+2R68jG3/yIdsVk9WgjG
	swtX0ueztkq32HzB2Dg/ik6ORbkTJE41eX3KuK8pKhALmYmvAA2pGS2iKMjs+6/12og==
X-Google-Smtp-Source: AGHT+IHNbGkypv04NReHT7LS3KpLc44/pbzlP8yxnO8gc+9CBy6bawzkc+ztCNL8hpgqnMvaPSvV6A==
X-Received: by 2002:a05:6e02:154d:b0:3e5:5357:6df3 with SMTP id e9e14a558f8ab-3e56738b0e7mr29089105ab.8.1755053123016;
        Tue, 12 Aug 2025 19:45:23 -0700 (PDT)
Received: from zippy.localdomain (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-50ae9bcfbf6sm3430829173.54.2025.08.12.19.45.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Aug 2025 19:45:22 -0700 (PDT)
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
	linux.amoon@gmail.com,
	troymitchell988@gmail.com,
	guodong@riscstar.com,
	linux-rtc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: [PATCH v12 5/7] riscv: dts: spacemit: enable the i2c8 adapter
Date: Tue, 12 Aug 2025 21:45:06 -0500
Message-ID: <20250813024509.2325988-6-elder@riscstar.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250813024509.2325988-1-elder@riscstar.com>
References: <20250813024509.2325988-1-elder@riscstar.com>
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
 arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts | 12 ++++++++++++
 arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi    |  7 +++++++
 arch/riscv/boot/dts/spacemit/k1.dtsi            | 13 +++++++++++++
 3 files changed, 32 insertions(+)

diff --git a/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts b/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
index fe22c747c5012..ae9409fe398b2 100644
--- a/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
+++ b/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
@@ -40,6 +40,18 @@ &emmc {
 	status = "okay";
 };
 
+&i2c8 {
+	pinctrl-0 = <&i2c8_cfg>;
+	pinctrl-names = "default";
+	status = "okay";
+
+	pmic@41 {
+		compatible = "spacemit,p1";
+		reg = <0x41>;
+		interrupts = <64>;
+	};
+};
+
 &uart0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&uart0_2_cfg>;
diff --git a/arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi b/arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi
index 3810557374228..96d7a46d4bf77 100644
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
index abde8bb07c95c..580f77b5e838a 100644
--- a/arch/riscv/boot/dts/spacemit/k1.dtsi
+++ b/arch/riscv/boot/dts/spacemit/k1.dtsi
@@ -459,6 +459,19 @@ pwm7: pwm@d401bc00 {
 			status = "disabled";
 		};
 
+		i2c8: i2c@d401d800 {
+			compatible = "spacemit,k1-i2c";
+			reg = <0x0 0xd401d800 0x0 0x38>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			clocks = <&syscon_apbc CLK_TWSI8>,
+				 <&syscon_apbc CLK_TWSI8_BUS>;
+			clock-names = "func", "bus";
+			clock-frequency = <400000>;
+			interrupts = <19>;
+			status = "disabled";
+		};
+
 		pinctrl: pinctrl@d401e000 {
 			compatible = "spacemit,k1-pinctrl";
 			reg = <0x0 0xd401e000 0x0 0x400>;
-- 
2.48.1


