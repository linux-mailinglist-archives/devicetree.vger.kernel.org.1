Return-Path: <devicetree+bounces-235393-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B212EC37CFC
	for <lists+devicetree@lfdr.de>; Wed, 05 Nov 2025 21:59:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6475F3AAF47
	for <lists+devicetree@lfdr.de>; Wed,  5 Nov 2025 20:59:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 638372D9EFB;
	Wed,  5 Nov 2025 20:59:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="J1FdsVYY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f47.google.com (mail-oo1-f47.google.com [209.85.161.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C24CA2D97BF
	for <devicetree@vger.kernel.org>; Wed,  5 Nov 2025 20:59:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762376387; cv=none; b=WYyGrbbJCEgfJZ547nanmF4U4kDyaz/kjSC2RxtawvdvjNHaPUuyIDH7+xpejcJK4MtEs9JCefpb69YjEzKcnynXOtMWaAzMMv999ltPEt4Il8IyEDHTm17OI2pN/PzxSesPZoVYUWHKHd5i22XWoxLdzp/c2nD98TPBh6Tiylw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762376387; c=relaxed/simple;
	bh=A9ywcSfa02YRfwqyYHd4NzbBAl7sOA8/+L9YDIF9l7g=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=TSfJJomY5MFLZumKwTgA1bX7q34h/JfneUaubkU3gmHFQzuEQpJKBMsuiUhTIOarVw2lovS8/Rlz3FSxPPGlZWih1ID8Q6amary4x/9yCJukZ8uGkmVvzQd9En85RBC9AXoOd84jXKxCHXLrPRDRui5AsYZ8/yGW9r73/G91s9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=J1FdsVYY; arc=none smtp.client-ip=209.85.161.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oo1-f47.google.com with SMTP id 006d021491bc7-656b251d27cso135687eaf.2
        for <devicetree@vger.kernel.org>; Wed, 05 Nov 2025 12:59:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762376385; x=1762981185; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7wNcEUJwSD+iOrBQas9PpJhVaeNyMU2g+TA+o2qPBPg=;
        b=J1FdsVYYUmwjMFjTV1iH9CQAsMAqbwdlsW82+Jb9ALUqyi4iP5uoEiNypZDzTeSuAY
         DtD1UBX/GyZ9ZbFsl5aP2uf8PI9TJTwLFNwYVd9/M69BS/+tB6DpAbCELRpxgqNpFlz7
         gQRPJGhX4KEIBhoJ3NMX7Qcf9N5XryS10mXHd7quMiy99l1mNZmizQqBIhC+N0/ptecg
         xgOQBNL+JcMDQMn8Kl4uevbckivEUMtewR0bqJjr5t5WRWaoZCEfc40E5rS335lrC2eN
         qfOVoiVfgaP7STi9AxHDElRAY1RfFxGn/LsftJLhMLij01sri0zh4DPfTXYx3DHGdUfD
         ac5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762376385; x=1762981185;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7wNcEUJwSD+iOrBQas9PpJhVaeNyMU2g+TA+o2qPBPg=;
        b=J2fNMBeJ6TK5Du+M/JWxVVN9FyGOluUdSEy1YI4KUD9M5vx+5BqyVUPK5s5yCZcHI2
         ty9tbnZxboNlpbXCpVrcXHCGF6gb7ZznRg4eDsD9lCRc7YitiWZiW9r1HH1cMjcSP3sb
         fP2YNZKpTvhQAywfVcjF+yVqQ2xNRcwVjPQPt70n2fsXQUGo1TVjDbfNn4SLmteh2F08
         TQIZBosCexqIL6CPK66zGJwDhZ0ncdaqrFzxoTXetej7y2iE7nLgnhlAgEm/WH8ZnRBj
         YeSwN6fLg+2zcMC7rc9fyUCkGg2rCNK1WLJIxeLIgxav8Huv6ITJssklxvG0/s750+wC
         10mQ==
X-Gm-Message-State: AOJu0Yzr6ejSsx1bD/4IQQYCFbtmMckzu876vaA5KGQ7BbqeDBV0+Aof
	uoqZBxHhlVgsxgIvUxVUfTIpBf7T/gSAGdPY+qnd6rerjuwav5QEJ2xd
X-Gm-Gg: ASbGncvyb2IOs8+IDgFAhSIoN/5DLErKrpXBKapo6FigMHH/ZDD9TM/eJtlU36uGPds
	gCJJtgDVGmGVarb/s6J+XzdLsdcvs2I98bZq+wF0koxMrB1w6x+GPMCzCUmyi5Kvomv6Nh7xrV2
	fi0mXVOEoANwDwFoUzeMoKqMca5+rCSYO2Du61qhTriV/W//JIjX2bY+5YAkE7rOuhu+4UbaIhb
	LA+z43M2pwkXPSJhBC0HGvwQh8xgfsmn4f7bIpbevNxye0qKcJHEH2PgXyofGE6OZwFe5UxIl26
	hVAbukqQO7WRC3SVO5agRtaTX/bwchdXrUtDlfAmtwHwDvQiwhOzoa0wtHo4tJkFhke+TmwgTpa
	cwuFzAzZk9Gld6yDjSe8lH+oUXnffZ/UDAThskPQ2X/FNH6dJMamnpM9lGxhBoZZLWggee85Qcw
	==
X-Google-Smtp-Source: AGHT+IHn7SXqxNTTbdXxRe+rHhYmZqRs/v4Ng2JSdZ/2Ojfv+Jm6HVfnvlwmgduMPx/ntMCFswq0lA==
X-Received: by 2002:a05:6808:4497:b0:44d:c185:f816 with SMTP id 5614622812f47-44fed427e58mr2467732b6e.34.1762376384869;
        Wed, 05 Nov 2025 12:59:44 -0800 (PST)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-656c5713288sm160312eaf.5.2025.11.05.12.59.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Nov 2025 12:59:44 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com,
	damon.ding@rock-chips.com,
	jbx6244@gmail.com,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 2/5] arm64: dts: rockchip: Add Additional pinctrl defs for Indiedroid Nova
Date: Wed,  5 Nov 2025 14:57:05 -0600
Message-ID: <20251105205708.732125-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251105205708.732125-1-macroalpha82@gmail.com>
References: <20251105205708.732125-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

Define the pinctrl nodes for the WiFi interrupts, correct the pinctrl
for the ethernet according to the schematic, and add the clk32k_in
control for the RTC. Add the correct regulator mapping for the PCIE
too.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../dts/rockchip/rk3588s-indiedroid-nova.dts  | 43 ++++++++++++-------
 1 file changed, 28 insertions(+), 15 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
index debab7732b71..f40782b6c7db 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
@@ -406,7 +406,7 @@ rtc_hym8563: rtc@51 {
 		clock-output-names = "hym8563";
 		interrupt-parent = <&gpio0>;
 		interrupts = <RK_PB0 IRQ_TYPE_LEVEL_LOW>;
-		pinctrl-0 = <&hym8563_int>;
+		pinctrl-0 = <&hym8563_int>, <&clk32k_in>;
 		pinctrl-names = "default";
 		wakeup-source;
 	};
@@ -459,8 +459,11 @@ &i2s5_8ch {
 };
 
 &pcie2x1l2 {
-	pinctrl-0 = <&rtl8111_perstb>;
+	pinctrl-0 = <&pcie20x1m0_perstn>, <&pcie20x1m0_clkreqn>,
+		    <&pcie20x1m0_waken>;
 	pinctrl-names = "default";
+	reset-gpios = <&gpio3 RK_PD1 GPIO_ACTIVE_HIGH>;
+	vpcie3v3-supply = <&vcc_3v3_s3>;
 	status = "okay";
 };
 
@@ -486,12 +489,6 @@ bt_wake_host: bt-wake-host {
 		};
 	};
 
-	ethernet-pins {
-		rtl8111_perstb: rtl8111-perstb {
-			rockchip,pins = <3 RK_PD1 RK_FUNC_GPIO &pcfg_pull_up>;
-		};
-	};
-
 	hym8563 {
 
 		hym8563_int: hym8563-int {
@@ -500,13 +497,6 @@ hym8563_int: hym8563-int {
 		};
 	};
 
-	sdio-pwrseq {
-		wifi_enable_h: wifi-enable-h {
-			rockchip,pins =
-				<0 RK_PC7 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-	};
-
 	usb-typec {
 		usbc0_int: usbc0-int {
 			rockchip,pins =
@@ -518,6 +508,18 @@ typec5v_pwren: typec5v-pwren {
 				<4 RK_PA5 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
+
+	wifi {
+		wifi_enable_h: wifi-enable-h {
+			rockchip,pins =
+				<0 RK_PC7 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		wifi_host_wake_irq: wifi-host-wake-irq {
+			rockchip,pins =
+				<0 RK_PA0 RK_FUNC_GPIO &pcfg_pull_down>;
+		};
+	};
 };
 
 &saradc {
@@ -538,6 +540,7 @@ &sdhci {
 };
 
 &sdio {
+	#address-cells = <1>;
 	bus-width = <4>;
 	cap-sd-highspeed;
 	cap-sdio-irq;
@@ -549,9 +552,19 @@ &sdio {
 	no-sd;
 	non-removable;
 	sd-uhs-sdr104;
+	#size-cells = <0>;
 	vmmc-supply = <&vcc_3v3_s3>;
 	vqmmc-supply = <&vcc_1v8_s3>;
 	status = "okay";
+
+	sdio_wifi: wifi@1 {
+		reg = <1>;
+		interrupt-parent = <&gpio0>;
+		interrupts = <RK_PA0 IRQ_TYPE_LEVEL_LOW>;
+		interrupt-names = "host-wake";
+		pinctrl-0 = <&wifi_host_wake_irq>;
+		pinctrl-names = "default";
+	};
 };
 
 &sdmmc {
-- 
2.43.0


