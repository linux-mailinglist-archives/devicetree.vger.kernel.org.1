Return-Path: <devicetree+bounces-59377-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 467488A5034
	for <lists+devicetree@lfdr.de>; Mon, 15 Apr 2024 15:03:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C512328A138
	for <lists+devicetree@lfdr.de>; Mon, 15 Apr 2024 13:03:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C895A130E48;
	Mon, 15 Apr 2024 12:50:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="tY2xkpNI"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BCD8130AC3
	for <devicetree@vger.kernel.org>; Mon, 15 Apr 2024 12:50:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.123
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713185449; cv=none; b=DJtQtZjQfNwGh0GBx7UlqR0MRhHHwY1BPPM8QXlqd4TX6uHaQ7nDnOZ5GI2xOYkSrfN+5miG8Wh0RUGHZIyhj7RHMSrffaiYQy/J6+Pgria1Yf3xm2SkpiyfNSE6pNJw4FvdHy2RgbyuD2R3fpF/cZQKtT6O3OJTD5rGWDvEwlE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713185449; c=relaxed/simple;
	bh=jm3Ue9Nbd4Ke4ovJH14S8X19gT0B/9VD6SAIXhnTMl8=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=iArax42KPUGNvtMUX4tmz9IlzoxD3TTCntgDBvDwULy08O0vIT+v1ItvDPMIdcBVCzBawCUss+eqG0IWC23pDG/NgWNZo2rKl7k4U5i7Rj4V6ENmzI/RpQ5MbTHmod+RS2SOxbMZRQwpIKMFUuWKBFc0SlujTVcMpHP+PGkPb3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=tY2xkpNI; arc=none smtp.client-ip=185.125.188.123
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com [209.85.218.72])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 17A0A41233
	for <devicetree@vger.kernel.org>; Mon, 15 Apr 2024 12:50:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1713185442;
	bh=/+lz4gvRbuYKUPO9p5AcEAQ4a8bxIR1nS1c0YAZAbpc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version;
	b=tY2xkpNIobvMcJ94DfZUAC2CpOUnvVEi+blDoN8EexvSqKzOFAXYIqKNWeQa+N2j1
	 HZLX/WkI9N6oBJ6jzs8jJgEDvij6CzSwHk2S+C0uKK3K8K0Jq1DdfsmHLUGkjOU/el
	 OPMxnRMflifMgcUiDMkgFW3x9C01x+jlnWlGSwVuqxAF3/43O/EhlbQUpxHU+nH4Oz
	 5cfxYzFvjYWH9mcoeMZcxEXnCUEmUR384an3rfwz9Fiyvlfb8zGkylIONEY+0Gque1
	 c0C6wPXOHu+U41JHdD7HZXfbjvimRs2P7l6hBAbOFxsa4tO6rzihGBHXtpA39vjMIr
	 OVMA0irUWE1wQ==
Received: by mail-ej1-f72.google.com with SMTP id a640c23a62f3a-a46938e24dbso53768166b.0
        for <devicetree@vger.kernel.org>; Mon, 15 Apr 2024 05:50:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713185438; x=1713790238;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/+lz4gvRbuYKUPO9p5AcEAQ4a8bxIR1nS1c0YAZAbpc=;
        b=pYuB3+sNx9On4TLLTiD3fjIqx5DucBYSSsh1bkz/Mpr8pXCoFkBttM0ddbiNV8Skfz
         1WbNi/XoKRcmfkA4kO98O8UhYnJP//CjaDmMXALmmjgDe0d5JuN0YFllT3Z+gdpKywuJ
         WlVEKjqvT/Q9B6rLm1V6v8z1mS/U5ICp17+16Tk9Clw1li1yRDLN1GI8Z6/aNp1oksUH
         T2+/kRK4VxN2YoozRIq8weYva7Euub04Tf5Qk/e8tZr+OOg3QPGktp5azUfoIHPaX5i6
         ixq7cJ+ZLRcoJcLUUUypI3yGN1y4hL3Yisk5XEAE/0X/J6+A2bZYOcVSQmvWSpbz1wMB
         LNww==
X-Forwarded-Encrypted: i=1; AJvYcCXcxZ8Qjy+tPY9En9Mc7xX7PUgBk7dkOH8yl7/L4lXXFgLzoVdlVzevQZBJ4u5GOhnjse/85pkQDBjh5MUg//IV1lFspFi6cQ8Lng==
X-Gm-Message-State: AOJu0Ywp2/Fc1XDzNv4mbtIm2c0pFqFJO2nzDDaOdq2+hCxxh+RAld8v
	mq7dH76OyO/Lpn1KKcXO+QhyPUVB8akhh6b0P9gzgVyJn5+VuAuejjvgv8naFGKJ6qJOtvThkpn
	l5oNlc4PFv9vbDJXDe12tUk7/CT43CIJ9FpyeGL6vyS2w0r/aOET8q8nbokGB4WCzXT0k4OeItc
	A=
X-Received: by 2002:a17:906:6d0e:b0:a52:561c:ca87 with SMTP id m14-20020a1709066d0e00b00a52561cca87mr2392081ejr.1.1713185437909;
        Mon, 15 Apr 2024 05:50:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHZfcd/TjRul4GHXkO5qH5k2zYzb1Tgdzi4hxLh3ejZJdiWBUESLY7cEG1prI/RLPSXTbTpRg==
X-Received: by 2002:a17:906:6d0e:b0:a52:561c:ca87 with SMTP id m14-20020a1709066d0e00b00a52561cca87mr2392062ejr.1.1713185437542;
        Mon, 15 Apr 2024 05:50:37 -0700 (PDT)
Received: from bojack.fritz.box (197-53-142-46.pool.kielnet.net. [46.142.53.197])
        by smtp.gmail.com with ESMTPSA id bz2-20020a1709070aa200b00a51a9eccf2asm5455573ejc.125.2024.04.15.05.50.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Apr 2024 05:50:36 -0700 (PDT)
From: Hannah Peuckmann <hannah.peuckmann@canonical.com>
To: linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Emil Renner Berthing <kernel@esmil.dk>,
	Conor Dooley <conor@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Walker Chen <walker.chen@starfivetech.com>,
	Hal Feng <hal.feng@starfivetech.com>,
	Xingyu Wu <xingyu.wu@starfivetech.com>
Subject: [PATCH v1 2/2] riscv: dts: starfive: visionfive 2: Remove non-existing I2S hardware
Date: Mon, 15 Apr 2024 14:50:33 +0200
Message-Id: <20240415125033.86909-3-hannah.peuckmann@canonical.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20240415125033.86909-1-hannah.peuckmann@canonical.com>
References: <20240415125033.86909-1-hannah.peuckmann@canonical.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This partially reverts
commit 92cfc35838b2 ("riscv: dts: starfive: Add the nodes and pins of I2Srx/I2Stx0/I2Stx1")

This added device tree nodes for I2S hardware that is not actually on the
VisionFive 2 board, but connected on the 40pin header. Many different extension
boards could be added on those pins, so this should be handled by overlays
instead.
This also conflicts with the TDM node which also attempts to grab GPIO 44:

  starfive-jh7110-sys-pinctrl 13040000.pinctrl: pin GPIO44 already requested by 10090000.tdm; cannot claim for 120c0000.i2s

Fixes: 92cfc35838b2 ("riscv: dts: starfive: Add the nodes and pins of I2Srx/I2Stx0/I2Stx1")
Signed-off-by: Hannah Peuckmann <hannah.peuckmann@canonical.com>
---
 .../jh7110-starfive-visionfive-2.dtsi         | 58 -------------------
 1 file changed, 58 deletions(-)

diff --git a/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2.dtsi b/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2.dtsi
index d89eef6e2633..2b3e952513e4 100644
--- a/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2.dtsi
+++ b/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2.dtsi
@@ -279,24 +279,6 @@ &i2c6 {
 	status = "okay";
 };
 
-&i2srx {
-	pinctrl-names = "default";
-	pinctrl-0 = <&i2srx_pins>;
-	status = "okay";
-};
-
-&i2stx0 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&mclk_ext_pins>;
-	status = "okay";
-};
-
-&i2stx1 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&i2stx1_pins>;
-	status = "okay";
-};
-
 &mmc0 {
 	max-frequency = <100000000>;
 	assigned-clocks = <&syscrg JH7110_SYSCLK_SDIO0_SDCARD>;
@@ -447,46 +429,6 @@ GPOEN_SYS_I2C6_DATA,
 		};
 	};
 
-	i2srx_pins: i2srx-0 {
-		clk-sd-pins {
-			pinmux = <GPIOMUX(38, GPOUT_LOW,
-					      GPOEN_DISABLE,
-					      GPI_SYS_I2SRX_BCLK)>,
-				 <GPIOMUX(63, GPOUT_LOW,
-					      GPOEN_DISABLE,
-					      GPI_SYS_I2SRX_LRCK)>,
-				 <GPIOMUX(38, GPOUT_LOW,
-					      GPOEN_DISABLE,
-					      GPI_SYS_I2STX1_BCLK)>,
-				 <GPIOMUX(63, GPOUT_LOW,
-					      GPOEN_DISABLE,
-					      GPI_SYS_I2STX1_LRCK)>,
-				 <GPIOMUX(61, GPOUT_LOW,
-					      GPOEN_DISABLE,
-					      GPI_SYS_I2SRX_SDIN0)>;
-			input-enable;
-		};
-	};
-
-	i2stx1_pins: i2stx1-0 {
-		sd-pins {
-			pinmux = <GPIOMUX(44, GPOUT_SYS_I2STX1_SDO0,
-					      GPOEN_ENABLE,
-					      GPI_NONE)>;
-			bias-disable;
-			input-disable;
-		};
-	};
-
-	mclk_ext_pins: mclk-ext-0 {
-		mclk-ext-pins {
-			pinmux = <GPIOMUX(4, GPOUT_LOW,
-					     GPOEN_DISABLE,
-					     GPI_SYS_MCLK_EXT)>;
-			input-enable;
-		};
-	};
-
 	mmc0_pins: mmc0-0 {
 		 rst-pins {
 			pinmux = <GPIOMUX(62, GPOUT_SYS_SDIO0_RST,
-- 
2.40.1


