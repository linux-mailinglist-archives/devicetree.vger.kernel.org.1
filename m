Return-Path: <devicetree+bounces-200574-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D65EB15345
	for <lists+devicetree@lfdr.de>; Tue, 29 Jul 2025 21:07:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B4BCD1893130
	for <lists+devicetree@lfdr.de>; Tue, 29 Jul 2025 19:07:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 43B2E23BCED;
	Tue, 29 Jul 2025 19:07:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="T7gfrstY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CCEF46447
	for <devicetree@vger.kernel.org>; Tue, 29 Jul 2025 19:07:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753816040; cv=none; b=dvzUjJ8x3ocgRmn13jL/7sQmvD7A7InJdv2ILRx9CphMq7MUotrx4ilIYd3/um5gFJi9LkvT7GZ/Sz3/4QJt2y0o0HDqPYgb+pK2x+qecomWG47tLFuCQfbtIXZQpyWthw+KdHy6UZOGEBew5N3nnYdsS8VU/LQVq6DD3EHXXU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753816040; c=relaxed/simple;
	bh=Ddeb9FHgi0foYjAwEeh5turmJZNaNkBrXn/UjX9lKi8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=PxWZzhLv4oS9sQbj19gZBh6683bxVlf6syrz+HV7lpnVn8YJrrjH0C+47VDZrxirwwpiD/ByxeFqoz9iMagiiauAHy2slMIBdnvZ+8fjsEhXtc8eaLD/p1kQ90RFVBvYiBkwzp/NSF7MbzM5F/rJFdQUR+3QdTIutaE2SnSD/3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=T7gfrstY; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-3b786421e36so60381f8f.3
        for <devicetree@vger.kernel.org>; Tue, 29 Jul 2025 12:07:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1753816037; x=1754420837; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=o/MxRuoyCjAuu+Wx+uvo6WAHep4Y7koyz5dvv/gvsfI=;
        b=T7gfrstYSc0XAVnwBsqwjpu3d49OJMlkGx743rqg2/dT/Y8EQi00M+yCLBk7WqSckg
         n0ipKMTwEzpsm+uYf+ff7EWc6/BoxqzdOvXrJdiWlgM1P5RzfaHQgExWgveKUOF6m/pJ
         PFXN3cC2GQkBCLAwftb6xOULY5aAZTGQ0jspjFJE2EvZ2W9YybVC0/1ZNDfnh47fONIY
         isKnLPL0GuBOqhiT9PY57ijx2R9k2M3TtaWRUkod/mEtecBy7XYnGpm9TUoFGzGCZmkq
         gxhAKeR7XpldfQIknlkxS6anZofN/q9Md4wbKo9EFJX1nMg59kZ+nVLwClKWzCVEeVWl
         oA1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753816037; x=1754420837;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=o/MxRuoyCjAuu+Wx+uvo6WAHep4Y7koyz5dvv/gvsfI=;
        b=veC5yCRiGV+kcDTnXk4sMDn53fNM+Fzp4FFLMvtmsKdDjyAkUXqZHVHqu2xxOZcEJ7
         NlntLPYTDGCop+VXmH5bzwp86FdvPI4zuurK5Dpqgs94+Am3Q8nMLXhVpn6Iiq6ZtOrj
         K7la7ATOkNAXih/0UZqwwmjGozREP/Ql8xBJuMurTW8/tWSjP+m6o5zs2IOo88cjzK5s
         7ubtk3qnInr2UZFKm4kFwpd7P7Xl67Jy5927fCesvIfxYJf+VPEscpduLV/C/Rr59Kw1
         q8gOj5e/OJYvQe8mWsSuArEAwXmeaZMNYqKHvcnQ6aPforp5IvjDdD9AHEWNczEM53g8
         2sog==
X-Forwarded-Encrypted: i=1; AJvYcCU+c5IV1/u9upHfeCR4B90UgxAFiD4KYhbfWZBh473onSzZ1FWvgnuw9AVGZ/KeiyB3qNQ2xcM3kFWG@vger.kernel.org
X-Gm-Message-State: AOJu0Yz2iP8PBi/CsMZavWEvtsnAOBpssShzn9/hXEotQ7EBcKXPjZAG
	oAWBpuhkaE44NgH4RWuXsAAX0zQuXqD25d0poiwlGq+fZJajJssrWgJU
X-Gm-Gg: ASbGncsBZ7oWeD2sbefAJQ60RntQ5EjjRGVi8RSbA1TyJpWuIniBswb9i1YX/r4Toet
	xHZRYb95ker66ifDlkEKxceSv+xhvVtoiEMdUrJxeC1sDtxrBnd3N24dtF/f5L30PMAqW1iBbsM
	0lyBXzYUN7vVPjeovUcQL7UQSIsHHB7S8BRveh60EuWMcRgafUNRPEokwebBr57MAA5d2zuEXZc
	0ZoktCozWXb6kJhRQSSUK/VV3BnhoB3HGHd7BvWH6cIbN8+FV6fP2CCpc1EoqnQkZgNPnijA0mB
	31FE5V8St6gtPjxWnTrvyNTbOgv9WfE5IvU+WsCGmaKqIRfOaZ4BFce4Hj80+HcRbMKZImLOSw0
	+SKNvCQkyfv/iKODHwd1Fe1pvmzE4W39FEnCsPnERAzZC4n98qFsQ/nU1L2N6C8LnVqESpjrWQI
	f3howk9LY3S7Te1AOCqgpmW8rLBk/xocH68y8ksMfZE4Nk2XptYgcBF9dQ7/N2w4KdHi8G
X-Google-Smtp-Source: AGHT+IH6zFByu5WodzMnXJJqavnMrgXchjczYZlogRLJSbiGoSTQBt4t6fb0Oxe0bzUtCS6BUJq3HA==
X-Received: by 2002:a05:6000:288a:b0:3b7:8146:4640 with SMTP id ffacd0b85a97d-3b79503579dmr637352f8f.56.1753816036422;
        Tue, 29 Jul 2025 12:07:16 -0700 (PDT)
Received: from cypher.home.roving-it.com (2.c.4.1.7.3.6.4.2.a.a.3.0.f.c.2.1.8.6.2.1.1.b.f.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:fb11:2681:2cf0:3aa2:4637:14c2])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-4588e5c1ad7sm36470415e9.10.2025.07.29.12.07.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Jul 2025 12:07:16 -0700 (PDT)
From: Peter Robinson <pbrobinson@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Dragan Simic <dsimic@manjaro.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Diederik de Haas <didi.debian@cknow.org>
Cc: Peter Robinson <pbrobinson@gmail.com>
Subject: [PATCH] arm64: dts: rockchip: Pinephone Pro: Update WiFi
Date: Tue, 29 Jul 2025 20:06:47 +0100
Message-ID: <20250729190712.145817-1-pbrobinson@gmail.com>
X-Mailer: git-send-email 2.50.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Update the WiFi configuration to include the wake-up
pin and add an ethernet alias to allow assignment of
a mac-address from the firmware.

Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
---
 .../dts/rockchip/rk3399-pinephone-pro.dts     | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
index 585ef0fd88ef0..05f7b506f3594 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
@@ -21,6 +21,7 @@ / {
 	chassis-type = "handset";
 
 	aliases {
+		ethernet0 = &brcmf;
 		mmc0 = &sdio0;
 		mmc1 = &sdmmc;
 		mmc2 = &sdhci;
@@ -689,6 +690,12 @@ vcc1v8_codec_en: vcc1v8-codec-en {
 		};
 	};
 
+	wifi {
+		wifi_host_wake_l: wifi-host-wake-l {
+			rockchip,pins = <4 RK_PD0 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	wireless-bluetooth {
 		bt_wake_pin: bt-wake-pin {
 			rockchip,pins = <2 RK_PD2 RK_FUNC_GPIO &pcfg_pull_none>;
@@ -715,7 +722,19 @@ &sdio0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&sdio0_bus4 &sdio0_cmd &sdio0_clk>;
 	sd-uhs-sdr104;
+	#address-cells = <1>;
+	#size-cells = <0>;
 	status = "okay";
+
+	brcmf: wifi@1 {
+		reg = <1>;
+		compatible = "brcm,bcm4329-fmac";
+		interrupt-parent = <&gpio4>;
+		interrupts = <RK_PD0 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "host-wake";
+		pinctrl-names = "default";
+		pinctrl-0 = <&wifi_host_wake_l>;
+	};
 };
 
 &pwm0 {
-- 
2.50.1


