Return-Path: <devicetree+bounces-171307-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B3AFA9E42A
	for <lists+devicetree@lfdr.de>; Sun, 27 Apr 2025 20:21:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 19DEE3B557B
	for <lists+devicetree@lfdr.de>; Sun, 27 Apr 2025 18:21:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1BFDC1DE4CE;
	Sun, 27 Apr 2025 18:21:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="OklvSk8c"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f169.google.com (mail-oi1-f169.google.com [209.85.167.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 842E73594B
	for <devicetree@vger.kernel.org>; Sun, 27 Apr 2025 18:21:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745778082; cv=none; b=B9jFGCJWTCCbwXSWKu57pq6/pEfvSYaE3vdiLaKRmFGezDzfNFy5j7WEffxUwDhzneiWm6CFUn6xWrPcG7+39YL6AJKsQBho0sA65SEEGIZIRo/QZdhv//aW8O8H1MKe23WfCVifRebZpdSkw8Owdjwrn2V4SCwA2Ixe2WGVey4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745778082; c=relaxed/simple;
	bh=YRtbT0JsvJDKEqQWLo5MRAc/KCnrD1BwoHRIsOQpFMo=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=EByTN9mAzw3NOHm7ObPFdxL1Q3Rj5A8IcAilnx5xy5sx6SD8RUjfDkKRTvPXeONVxYoVlOpOb6cX08eP0PBTteucBgYbtVa7cpEpZLPaAXc1KKWBGWZH1V6Jp0j5vG1VGlN6ZdaUNik1y8PPjAPHQd8GPQLb0HvR0y8wFg8bMaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=OklvSk8c; arc=none smtp.client-ip=209.85.167.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oi1-f169.google.com with SMTP id 5614622812f47-3fe83c8cbdbso1298086b6e.3
        for <devicetree@vger.kernel.org>; Sun, 27 Apr 2025 11:21:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1745778079; x=1746382879; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=73fMxQITK2EqY2jmXi3Pm27EorfS7v8vMbAmAANuJFQ=;
        b=OklvSk8cxS3zoJWBD7KofAYIMLaJ8Jd8e6ckJr2T5CDwOG8uehka0yyvr3PqhG2/fO
         CSajdHKEK3Re4/eX9UjpxDe6uhN5f6A5riCuArNF20WP/Ze12MKIXR2OQsOxWK+Sdhbd
         h3PulzUwfufESqqJqFQ27TKXJArDP5L4xQE6L6z7IjPAxfwNDdlxcssjcISFpS73KdRQ
         LY3N96UpVwcMdJFeiYW2bnAxlSOu+l82zCGdeEDQ94cP/Rb6wBKPef8a9Y/3NlSR7PcR
         fo1fpTaJyLBcelQ5dhMdsSe/JW29yeT3G7ONL6JqzWfmC8wcv/lpvwaYG+dUvkahclL+
         uGFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745778079; x=1746382879;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=73fMxQITK2EqY2jmXi3Pm27EorfS7v8vMbAmAANuJFQ=;
        b=tzx/rUGvnWcBM8rEnnFpJDdUlZ38m/nXqET+QmVNWsoYbni3Vwh/ANj0ziELx6ooJ6
         t1CAv0/C1rFvuV+cxxvRjiFCSD+g9ETYUaggEZUzmSXT2L9jAHh2vT8oXoHXlKGAhRcy
         BrG84OenuRy6BEIw5opUaPGO2Ku7KXkncIw5FqTJJJOmKjvS0bY7GmLVr+cWCrWX67eK
         erOIkyAbOlYfga1lrg1BgTuq2+x2c2uRaQbjoxAsCTzVwMOKr4qKDs0vPJBN6BRNe4HM
         KMaAPQZTc7zwGGB1CA64pGcGJ/5zLX+2tcYJYGFFFrAtd4BEDdhScAz5H5HanuPDQeh1
         bhcg==
X-Forwarded-Encrypted: i=1; AJvYcCX2Gl9rGT3xX0uMEOaRCZhaL1/iCX6asGWJ2fKSOpPdpVMYvkuB6aXsL8mheWTAgdpe+VE1c+WKcu8u@vger.kernel.org
X-Gm-Message-State: AOJu0Yx/Ep0fTqEASE9bZ85TrW/VZyzsHg+NRpQXAAqQbd7WV2T5zWa6
	YVLmEaqjUHQgXpTRQ2nnpSYHgnILDRsZDd7XwlzP+hynw7Qk3EXn
X-Gm-Gg: ASbGncsiCovsppSwi1p4oM1sPAmt8oiVULLE6El79txz5HfQ62gYstwU4TFfia8QgGR
	Pb6geRZHr4LhaZBBoHPAM7JoC933N1PPEi5J7OUPZv/io8CUmyPOZQobxgwJvHWEwddbWO+O9d7
	v5PPdGohH6fLgKN3vemYflyi0DoFeERUQrlGXQiSUy536+YYq5RckvQK1kJTDO3L5i4On7if+kt
	MyCojbTgkytlwIp1VYTQ5oLzB6r/Jy5hiNxUc4qXtRKRpsFz96AnHlLupuMcGseIkOlrewuQ2Uw
	iJzYEl/GBHL6sIXDTTUE+JgZNWYBV8Oym9hueLfnljBUh4prWA==
X-Google-Smtp-Source: AGHT+IHfU8D2Q4pN7gREyDUCcPDBeyTCo+tChoH/GincDxT+n1zgrIzH78BXb8X/PXM393z/USMXmQ==
X-Received: by 2002:a05:6808:6b89:b0:402:2a3:57e9 with SMTP id 5614622812f47-40202a35929mr1874134b6e.11.1745778079468;
        Sun, 27 Apr 2025 11:21:19 -0700 (PDT)
Received: from tower.cjhon.com ([2603:8081:ad00:4a:af5b:bac8:c484:5295])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-401ec970d10sm1737859b6e.36.2025.04.27.11.21.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 27 Apr 2025 11:21:18 -0700 (PDT)
From: Jimmy Hon <honyuenkwun@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Johannes Erdfelt <johannes@erdfelt.com>,
	Jianfeng Liu <liujianfeng1994@gmail.com>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jimmy Hon <honyuenkwun@gmail.com>
Subject: [PATCH] arm64: dts: rockchip: Enable bluetooth of AP6611s on OPI5 Max/Ultra
Date: Sun, 27 Apr 2025 13:20:19 -0500
Message-ID: <20250427182019.1862-1-honyuenkwun@gmail.com>
X-Mailer: git-send-email 2.49.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Orange Pi 5 Max and Ultra has onboard AP6611s with Bluetooth 5.3
connected via UART7.

The chip reports as:
[    3.747864] Bluetooth: hci0: BCM: chip id 3
[    3.750021] Bluetooth: hci0: BCM: features 0x0f
[    3.775923] Bluetooth: hci0: SYN43711A0
[    3.775930] Bluetooth: hci0: BCM (001.001.030) build 0000

Signed-off-by: Jimmy Hon <honyuenkwun@gmail.com>
---
 .../rockchip/rk3588-orangepi-5-compact.dtsi   | 36 +++++++++++++++++++
 1 file changed, 36 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-compact.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-compact.dtsi
index f748c6f760d8..ab07a7fd5359 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-compact.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-compact.dtsi
@@ -87,6 +87,20 @@ usb_host_pwren: usb-host-pwren {
 			rockchip,pins = <3 RK_PD5 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
+
+	wireless-bluetooth {
+		bt_reg_on: bt-reg-on {
+			rockchip,pins = <4 RK_PC4 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		bt_wake_host: bt-wake-host {
+			rockchip,pins = <0 RK_PA0 RK_FUNC_GPIO &pcfg_pull_down>;
+		};
+
+		host_wake_bt: host-wake-bt {
+			rockchip,pins = <4 RK_PC5 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
 };
 
 &pwm4 {
@@ -120,6 +134,28 @@ &u2phy1_otg {
 	phy-supply = <&vcc5v0_usb20>;
 };
 
+&uart7 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart7m0_xfer &uart7m0_ctsn &uart7m0_rtsn>;
+	uart-has-rtscts;
+	status = "okay";
+
+	bluetooth {
+                compatible = "brcm,bcm43438-bt";
+                clocks = <&hym8563>;
+                clock-names = "lpo";
+                device-wakeup-gpios = <&gpio4 RK_PC5 GPIO_ACTIVE_HIGH>;
+                interrupt-parent = <&gpio0>;
+                interrupts = <RK_PA0 IRQ_TYPE_EDGE_FALLING>;
+                interrupt-names = "host-wakeup";
+                pinctrl-names = "default";
+                pinctrl-0 = <&bt_reg_on>, <&host_wake_bt>, <&bt_wake_host>;
+                shutdown-gpios = <&gpio4 RK_PC4 GPIO_ACTIVE_HIGH>;
+                vbat-supply = <&vcc_3v3_s3>;
+                vddio-supply = <&vcc_1v8_s3>;
+        };
+};
+
 &usb_host0_xhci {
 	dr_mode = "host";
 };
-- 
2.49.0


