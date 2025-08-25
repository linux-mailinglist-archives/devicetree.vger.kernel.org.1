Return-Path: <devicetree+bounces-209099-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0215BB3488E
	for <lists+devicetree@lfdr.de>; Mon, 25 Aug 2025 19:22:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 96A847B4DF6
	for <lists+devicetree@lfdr.de>; Mon, 25 Aug 2025 17:20:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A9BC930748E;
	Mon, 25 Aug 2025 17:21:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="o/CPxvI8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f179.google.com (mail-il1-f179.google.com [209.85.166.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC95B305E27
	for <devicetree@vger.kernel.org>; Mon, 25 Aug 2025 17:21:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756142474; cv=none; b=Nq0mAaKWrBEw4JolZlAX+8FZGbG21x45s5BhQv6uIO6A9dWb+/YLiWN+yiRdEoqlOmbYPMcDpuozP0ZSdTyg1HNSIIQ3xDqJdjIDt6FRib/rmo9MpgIivmGquHWvBg7YuU+YswWBmf7yW+M18mqV54Xq7kEb5SaROXZVqRibNmY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756142474; c=relaxed/simple;
	bh=tqj+GYK1EDpUdWJT2hsmEmFYHp02iQVqmo4nfSM4fUw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=UphbLBdo5Mo8yqOhDSdEafq+dbhnZ+4Qxut7duKWm9QDtcxXH8hDA9MUtm40R/j30rDG+H9Rbbzh79/vOwLcdxfKjKzzbxdC4JvY9ACU9lBfHjOY8Ewmj5agmROHZtH1J8lfsEsWwuh8+LUGUvrBlMDuCb7HsbVvz4BFu+oVbTk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=o/CPxvI8; arc=none smtp.client-ip=209.85.166.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-il1-f179.google.com with SMTP id e9e14a558f8ab-3ea8b3a64c7so11348455ab.0
        for <devicetree@vger.kernel.org>; Mon, 25 Aug 2025 10:21:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1756142472; x=1756747272; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vaImj7HPDviB5XgBqpwJeOy4vyIIfyH+4F3V+wrd8Lk=;
        b=o/CPxvI8uZV1TryKV6Zx3kIuTVYeVy8w2/TybQXcWZXu6lBDOvp8E0OCIr3pZa4dRC
         Q+HYU21parYD92RQoTsYRivMDGuF2x2H8vJ4t3LFZuMgZT9/6hdCm9ROjcAyO0XzlD/S
         b5c8RD0jxr3nHqXB/eK4Gih/e68TXFDj4wHEiXZ4MMNt7VHlLd0M1ysffUixR0q83ZZ/
         ADP9TbCPcTUNLY795D+hM0w/uVJD/zpJ8TLmr2WDNYr0YM0hOOGKiOKbkiMtADrOEHpZ
         Bc5L4AYPlSto8rlhhdI5R3Uc8H/Jm2rnyacOwsVj5gqxdn1zdP+u67VSBhrq2Vtp6w42
         zHCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756142472; x=1756747272;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vaImj7HPDviB5XgBqpwJeOy4vyIIfyH+4F3V+wrd8Lk=;
        b=HXDjo9pbV+Kah4Mci3E8e4b16nX/DnK3S7ogPKCFzyIZ0/ck4dp6I0LgV4oMdFEaNo
         dZ+XqqODVUfiH6d7rMZ5QMc5fQdpPd9ATk3oMQcbdD43OzSxxlRNnZqbtVfw4mD/qbCf
         1ApjFfdp0g6V6ZEq7wtkcaujRcWy+qfo0m5uCoYg8yTTSVpjEZxykzKczklgFKDLKqnE
         0CT1MB4pxl7nEUKIexUc+73eVinx5HvhsQfhpK8cQF2Vx30x1Buin9juQ8TFzKApy2O1
         0sSgM0gOumJM8o3w0qYLFRhDwccuz3CTzarumR72hfhegGJ8/6Apqy44/byRQ8YbuPn2
         DnWw==
X-Forwarded-Encrypted: i=1; AJvYcCXP/x5t/zCOgBUQT33MqANY0EOZOkgoNHGIOCZ63hYibb4lZi8/C6wwUWvNSAPmCvpP7X3RX4mRDhwZ@vger.kernel.org
X-Gm-Message-State: AOJu0YyGXEzXhUf4Ik+0yjQFGDve0CNYu4hy1XgEPV3E4np6mVyDqsk+
	zPBpFD6dPV6NdEktYq/cA9YZujMJzRpwV5/oezUybNOOKqfro1F2t3sxagcVcrq/4wY=
X-Gm-Gg: ASbGnctMmsYOXc8QWoXI2GT1wLzNGqtIiaPd9qG1YsjWM8MBLFvpRPWVKdy2OUGa7Nw
	u1mkbL4EvljgbNtsXOqwrI5wBM/Za4x8ECNEfyM9C/DCRyoZATIu6nH41iYhmKkA+/zKE76Hmx1
	REcb8P0o0bVEgADwOvJLWQRhx/p5V0npJxg0hEfKSc6s8XfrudhCHWtKdYmlHrwu1ccl3+DAAp2
	xToGQ4F97XbXd5fVP7JV61d5ePQaA3PkSOwgBs55ga9b9ONDlI21TKbZh7RHadeg2mlCCfnbSdT
	iV2fAs/j3L13aJA9MuEz/roPFuvL/8LaapKjm8fVZzd/4Y6wd88LS6UUhHbqOeC+qsqPHSNnd7A
	qFD4XWca11nqrc0By0u0sS1wWH1BJVgxdIxMFOO3FfW6WeXeCYpslRaXpdNVQBd8VBQ==
X-Google-Smtp-Source: AGHT+IGMjww54FRdV9usG2bAND6j/10A3PtBf2JERSU5gXA+1FH5dtg3t7ajGlDWVwIXh5UXyCucrg==
X-Received: by 2002:a92:c269:0:b0:3ed:fe91:7306 with SMTP id e9e14a558f8ab-3edfe91737dmr19680085ab.23.1756142471734;
        Mon, 25 Aug 2025 10:21:11 -0700 (PDT)
Received: from zippy.localdomain (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id ca18e2360f4ac-886e60c4737sm76275439f.26.2025.08.25.10.21.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Aug 2025 10:21:11 -0700 (PDT)
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
Subject: [PATCH v13 5/7] riscv: dts: spacemit: enable the i2c8 adapter
Date: Mon, 25 Aug 2025 12:20:54 -0500
Message-ID: <20250825172057.163883-6-elder@riscstar.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250825172057.163883-1-elder@riscstar.com>
References: <20250825172057.163883-1-elder@riscstar.com>
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
index 6c68b2e54675e..cd9b91c3358e4 100644
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


