Return-Path: <devicetree+bounces-34672-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 977A283A7F5
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 12:34:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4E44C2949A7
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 11:34:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E2542C684;
	Wed, 24 Jan 2024 11:33:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="BSLl9L/z"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF0C020B27
	for <devicetree@vger.kernel.org>; Wed, 24 Jan 2024 11:33:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706096029; cv=none; b=K1uv7E7UQ9/N6WRlpct2LvO6kHt6ITNeo/PgfFC7V2bQM2TpeOgwU0xrhgGBwEw7fSSpNJsDAcOQNkI7PymB+oVCgOka5lzRLtIDDMURYBSBXXNE54gxJx4F8BIjl1zvEFznsEaf1V6zmkjMlhnsg+s0Sl3bpvxsfKJNe7BwqtI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706096029; c=relaxed/simple;
	bh=CyTXYUtTKxxBmAel2fReqcCiLMsMdlaJ1P/5hvL+5P8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=CLvOxxKjeEyZ0z2gA/pLXAW+7MSsqtHt+sIdF5INasCme917Al5k7ovb3pfy816npw39mb1jJRej/i+nRxICIQyIsHniVoG3Mq/SZ7CsxCDktHRxW7GSPGVY08jG/q1rr16pb6UUf0W9gQzCYSFhyWlc9v7ofacobRTKODTl+2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=BSLl9L/z; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-40eacb4bfa0so33772515e9.1
        for <devicetree@vger.kernel.org>; Wed, 24 Jan 2024 03:33:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1706096026; x=1706700826; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OkfxdmU0fSILmYYOdSztVqfWXPtR0jIGfNt18pCRO9s=;
        b=BSLl9L/znBPxSkCEoceKSjCe6ddSiafUKv4dYoF0Ax5YrjjDsQJw4unGsB4rjfAlGs
         E+ONdhLCSge3YZ55lmd2kR0ArsyKU2Zn+d9uj2+cUa94BAkM7KzkIWQoN6sK/hGfZVJu
         vv9BYTkPfFUcrN7xRVE1l/k2nDjz+4N64AvJA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706096026; x=1706700826;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OkfxdmU0fSILmYYOdSztVqfWXPtR0jIGfNt18pCRO9s=;
        b=KGerSXqcHf9rak2ENPUYHY4V/4+i+LOdYQwNvbqvhR7uhdYQu3vX1thxzQBsKFVRGi
         1H66zEXWZ5EPm83KkByPAFH0tFOqNJT/i3oRZ/6ArXWd+Ca5sySa3wn+jm33z7GohgRV
         EyX9eM6TpYdNNI2uiYSBguC+rB/XhguVWA7CvYyOJg+O2JEDo7OW9y+JG50szLVeKeoh
         UlcSpxOnb+KbKX6FUnnlda5+PLn+rnn1SBz6DZhB7tmcDuxBGWpxlWgK5C1DZyeZmxVj
         zKvrYjiqGM9Vb6Hlq6W3v9Re1dnp0FN7ia2J2RUlqAiwag5QwlYvfKjTkRwGHFSlfH6i
         2ykg==
X-Gm-Message-State: AOJu0YzFA+GHFrgSYm5CSKZgFN1tHjcGP67282sBVLsdD+1L/pQp9g2h
	7IpT8aTZeDKThQtzzdJmim4/u9ScUQtAYpD8BK3QIOwbMaPba9R/fFPS+KbJY34=
X-Google-Smtp-Source: AGHT+IGr/ZW6/8dj9YoCm1u2xarpFK1RUZV23e2EH6+HlGuITJNl1wXSobD3EeAEcvmo6EUmNmsCSQ==
X-Received: by 2002:a7b:c4c7:0:b0:40e:47df:3d18 with SMTP id g7-20020a7bc4c7000000b0040e47df3d18mr930101wmk.79.1706096026021;
        Wed, 24 Jan 2024 03:33:46 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.. (mob-5-90-60-192.net.vodafone.it. [5.90.60.192])
        by smtp.gmail.com with ESMTPSA id i18-20020adffdd2000000b003393249d5dbsm8447950wrs.4.2024.01.24.03.33.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jan 2024 03:33:45 -0800 (PST)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Lee Jones <lee@kernel.org>,
	Raphael Gallais-Pou <raphael.gallais-pou@foss.st.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH v9 3/5] ARM: dts: stm32: rename mmc_vcard to vcc-3v3 on stm32f769-disco
Date: Wed, 24 Jan 2024 12:33:12 +0100
Message-ID: <20240124113336.658198-4-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240124113336.658198-1-dario.binacchi@amarulasolutions.com>
References: <20240124113336.658198-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

In the schematics of document UM2033, the power supply for the micro SD
card is the same 3v3 voltage that is used to power other devices on the
board. By generalizing the name of the voltage regulator, it can be
referenced by other nodes in the device tree without creating
misunderstandings.

This patch is preparatory for future developments.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
Reviewed-by: Raphael Gallais-Pou <raphael.gallais-pou@foss.st.com>

---

Changes in v9:
- Rename vcc_3v3 to to vcc-3v3

Changes in v8:
- Add Reviewed-by tag of Raphael Gallais-Pou

 arch/arm/boot/dts/st/stm32f769-disco.dts | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/st/stm32f769-disco.dts b/arch/arm/boot/dts/st/stm32f769-disco.dts
index 5d12ae25b327..660f85984164 100644
--- a/arch/arm/boot/dts/st/stm32f769-disco.dts
+++ b/arch/arm/boot/dts/st/stm32f769-disco.dts
@@ -92,9 +92,9 @@ usbotg_hs_phy: usb-phy {
 		clock-names = "main_clk";
 	};
 
-	mmc_vcard: mmc_vcard {
+	vcc_3v3: vcc-3v3 {
 		compatible = "regulator-fixed";
-		regulator-name = "mmc_vcard";
+		regulator-name = "vcc_3v3";
 		regulator-min-microvolt = <3300000>;
 		regulator-max-microvolt = <3300000>;
 	};
@@ -128,7 +128,7 @@ &rtc {
 
 &sdio2 {
 	status = "okay";
-	vmmc-supply = <&mmc_vcard>;
+	vmmc-supply = <&vcc_3v3>;
 	cd-gpios = <&gpioi 15 GPIO_ACTIVE_LOW>;
 	broken-cd;
 	pinctrl-names = "default", "opendrain", "sleep";
-- 
2.43.0


