Return-Path: <devicetree+bounces-199878-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 52454B12AA5
	for <lists+devicetree@lfdr.de>; Sat, 26 Jul 2025 15:11:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2925C547CE9
	for <lists+devicetree@lfdr.de>; Sat, 26 Jul 2025 13:11:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD6D82512D7;
	Sat, 26 Jul 2025 13:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="JIOQ7IRw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f53.google.com (mail-io1-f53.google.com [209.85.166.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C58ED24DD17
	for <devicetree@vger.kernel.org>; Sat, 26 Jul 2025 13:10:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753535423; cv=none; b=s7EmDNRX7QdP/JnzEevoZ+AeNpA96qLT8q446QKulh/EOlQl0QNLkQ/cQ3ZzjZ680edYtz/dOPQp50o5Yg0+Dix+5wjlAkDp+JTcWBT3ig+/RJUByW7vQ1KA6WsEKySFAJ1b4xBVKkGZfqlHL7YIoy9wZsCv/oboq+kg3He2o9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753535423; c=relaxed/simple;
	bh=QGEqlYXIwxO55BW2Qob9nSxq1Am14CofBss2UkP4kt8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=kLcy9f0iJ3wu1Y94SszNouGtLfGp5RA7bBAtoXNyzgVMba/mb3XMj2xebEs5bZ0TpYxcvA8tcFLDFgMTtygqXhEA8mKyPKcz8uc27vrIh6BSv5TerF5LzzGdQ2ryI5bWP0qqcKPTi2aRY9j25NnOFwwHwkq0/YA/RqiotJpOxaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=JIOQ7IRw; arc=none smtp.client-ip=209.85.166.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-io1-f53.google.com with SMTP id ca18e2360f4ac-87c46159b24so110267639f.0
        for <devicetree@vger.kernel.org>; Sat, 26 Jul 2025 06:10:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1753535421; x=1754140221; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XO2Fy/81E/WhCOJwM6NoWD+/CZxHHhnDjYEWoZW3i/Q=;
        b=JIOQ7IRwyNJEEjhAmPLgId0f3Nos6RsX+ImH021+Z/COXGH3A/yZwYFLxr7G0+ljZS
         UOq+iB4kOJGr8o0i6MO4+69M0DQivMpUKOuThAS4W4foFf41M3uC/o/whKs4CUnKob7p
         Dd1qQXqCwSZppG/rxr4GgQxJE3mtIBMhZZ2aPPqWqQ9qLD7rH0j9rQiaxpmtyAlw8hZU
         qtF02SoOs4yBN2fR9hgMqLkksQbXcU0MrBPNL9V8NlXe56V+CX4UaG9uZkbCvtWhFetF
         oprWL1W4hiag6Wa6Ddg8Q7JUzQBGXcR9TeEK3Lb/tuTVUPDvXpT3vliOXCCF9zOpXvPt
         bvzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753535421; x=1754140221;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XO2Fy/81E/WhCOJwM6NoWD+/CZxHHhnDjYEWoZW3i/Q=;
        b=SuRTCX8cT32uLJ5WKKhUea4W0enQS5Qfhjn5wdFG5Cu9r9Jt8hKA0D6PUeo5dtUJrq
         OgDbeECG4yj42OttDIkL7yUuFMjIMkiG6bhlvPsm2UbYQde3qAZy7gZ/xqUkToaYjcyc
         2LPA7vI8MG+HTYAB9yQsLzhgLZm31WXjLjfTT2pFBhe/e5ewZ8liEI4JFQPZqIP5WzpG
         OwDs3FA39ALfXl9kRi1jD0YLbHh0nhQt3zvkt+eNBNaIcaYm9aAu0LGYq/S84xrRTRd4
         BnVyNOKcNC+WyV9a836Wc6jb+H8BbjhZ9B0cLiC3gfjp5/0yI4oiC9Y+NsYLwvN9vnYB
         /OUw==
X-Forwarded-Encrypted: i=1; AJvYcCX1vh/d6oVJjUJkqfDYeKIn0s51W1bqYE7HVcz8Tq3KqPn57pFEoQ6br4r0F45VYL2XuVdAe+QkaJ7P@vger.kernel.org
X-Gm-Message-State: AOJu0YyJglUCCCwfeaiH2ysUEbj2hRUe27tMKcC/GZ6If9/OU/ExvOt4
	9fx2obvPjTYS+zILc2oPBseSSHhBH7pULfha3RSAtzUFOeC5nl5UHuDNtgflycMNMb4=
X-Gm-Gg: ASbGnctwcYMh3XoliPPqB2iqt555vH283ZOVA/+CIFZFhA0vRkykTOe8c2LcyAxzxjP
	DMZtbQedRtRUWVUbhUTSQ4ep3ZUiaNPDCp+0W1UagBohvpxANJfNb2xtCnfnPqvKRZaXXa8Fkex
	McElqm+aPGIT9iQhlU03GXPqxrrRRv4Z4D13Z/5+M90F6lIs3XMI5ql/iCRxQm2cudjGcuCb0CT
	GMbUQpZK9qezSZdhiHnfBYiAp6b5BSUbXSWni+v96NZ9E2rQdXOJ+wbYKtO5bzYMSaP8Uy9bWe0
	aXDAl4UsZXF49a159w/RBepR381yOaLEXXRR0hVMwrr9AgXjUC/TG+2QECtFzVjC6ZWyw7BcibG
	pJ8ev7ZbP6DfohdHlAltXJSwEHfmUmZRoOmhzzkFQStB6xQhqJ3muWEOy2eVqycQpcw==
X-Google-Smtp-Source: AGHT+IFowWZBk8AVURVAXWPSaWfOPiE/GFgKH2Cki+djIREns99xE2XqEQbxbnTzUozYyQveuIR00w==
X-Received: by 2002:a05:6602:2dd0:b0:86d:60:702f with SMTP id ca18e2360f4ac-87fff9442fcmr893288639f.0.1753535420282;
        Sat, 26 Jul 2025 06:10:20 -0700 (PDT)
Received: from zippy.localdomain (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id ca18e2360f4ac-880f7a4ee9fsm49551439f.33.2025.07.26.06.10.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 26 Jul 2025 06:10:19 -0700 (PDT)
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
Subject: [PATCH v10 6/8] riscv: dts: spacemit: enable the i2c8 adapter
Date: Sat, 26 Jul 2025 08:10:00 -0500
Message-ID: <20250726131003.3137282-7-elder@riscstar.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250726131003.3137282-1-elder@riscstar.com>
References: <20250726131003.3137282-1-elder@riscstar.com>
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
v10: - Move a few things around as suggested by Yixun Lan

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


