Return-Path: <devicetree+bounces-200571-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E4E40B15331
	for <lists+devicetree@lfdr.de>; Tue, 29 Jul 2025 20:58:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8FC1216D618
	for <lists+devicetree@lfdr.de>; Tue, 29 Jul 2025 18:58:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB93824728D;
	Tue, 29 Jul 2025 18:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="O0JDMme3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02C561F4CB6
	for <devicetree@vger.kernel.org>; Tue, 29 Jul 2025 18:58:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753815514; cv=none; b=GicoDEF7I8r3vKc3+uK70DRLTho/7ifS0DIPGlC1H19qCcpm07ZKCXG971hBChlXCgLDZ9uOzNIsTz2aQJBZR/SRx99zVQamiTqspwP1sXpl48zqB2h6SYubbmj4uwSNp/gk1WQ1nwxou1WlzEuNLVVIi90QtOnv8fIEDYl8kUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753815514; c=relaxed/simple;
	bh=padKMHqaBdUCNVgjs5EVlo3evaR4MHbLDig2yQT3Fag=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=I9wpeU28gB1aYeTDPYVb539qXot/yYh29Hfj2zPBLBT2QAY87fbf6pq6gQBmmcyB4efwsYHTSbXRNaqXU2wbIn1f+qv38JY4CRvkyHgBNpDTxsT2WDeaTtJqWwJEvwR5GsQ/Kp2Dj/cMQdkX4kOlaiy7GiAMJvgmrVMWuKJk0xA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=O0JDMme3; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-4561ca74829so61449595e9.0
        for <devicetree@vger.kernel.org>; Tue, 29 Jul 2025 11:58:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1753815511; x=1754420311; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=dlG7PNdMEgQfJKLs4yxVqtBUK7MC8lUUbumEET1hUqc=;
        b=O0JDMme3luLzJT4WmT6Oh6bziPevRbYq9XlSC6QBXdaXIQFjkDPMh2PmoP4RkpMwYD
         n1UUZXb5JZAZ1hcS4MuSgP+wm2uU8HoNYYMNWMuvJ3BV+45KHJD4GDxIhMhMci1BL39o
         zZ5s7u4nkfCVOthOkK/nljbN2YG/lmGLsz9lvlSgKqHoMNK7KtJcU92FEEwi0LHeFPrs
         I/2s1Mlp0I2ArCdkoepc9y2P1zu7Rzta2VYiMJNpL0YU4jajKxpNordFHWGQjkDyYjbT
         Oo2h5MynLDZ1hB7efyWGO12ZY6slVvXfo/jjqeUGtmWkbEpTb2h6XvLGPzJEjAUhL7Nd
         uMjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753815511; x=1754420311;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dlG7PNdMEgQfJKLs4yxVqtBUK7MC8lUUbumEET1hUqc=;
        b=rPvqqH/b+biCHmaQvyUf4ZF5EdzrkszcGDqCTWBJEZugnu2WBWdeFfIIA/jBT1rdC7
         MruuyomhTSNOsqBaSVYlNPQSWNRK8xJ3XkQLj3/KNlnniVABkwJ0UVnjmsiY4R3pDMzO
         abUAy7ETgQYOanV55ysJ9ZU3USk0H/rvSgDSKDtBsJPkI0NGjfKKXU7y+EbO04T1Nqsf
         ygAGj7AlyEuQO3M8CYlSHtmdQQ03NQn5tblRa+a83tyWw275TfmwQ+u9hKoRZkHteEiL
         CWcyspC05Muh3MxS7g6hGcSo9lpWrP5HKQSpcSD9oeuN+tqBHdSbwZKgRIdQP9GQONRu
         fY9A==
X-Forwarded-Encrypted: i=1; AJvYcCUkcJmQbUACOimG+DSWRG46vicNY/5mhIojE8ZJoL/tYQ67kArAEYmc9JCkQWlVPVOH4fUT1LhQDRbO@vger.kernel.org
X-Gm-Message-State: AOJu0Yz7MMF0tN1CMX0ieYQf5BhJGYmOLTks0jvhvM3U568ZqotABmCG
	ZpleK/CsMPJrEBnOf2WoTvpIdPTXwG9FIbDC5h13FWLadkgLAPE+o8sk
X-Gm-Gg: ASbGncss4nViigpuvcHQYhBp2LNbZi7aJWCA+a7YCuLo3EFf668kAkAVglQf6Rg56uF
	xeeL0JfNBNphfZlMii3jZLvlSdNoiJF09duJicN0a+KwskJAv+g4yxQ55y36zUeZL8uKFjiNqd7
	Gty+fnqim0XXj4kRxiH7u2XOJzFDrnzPfrtgV0bUF2qLV9bpbNJeuJ7Qg4nthrI55GhjpXkGVL9
	hO3FcsX5Y13hareHY7NhybrXkQUoloYQ3tA2T7+RBezwK82ejEhTxrSBgzyzLV8je9HTB07ygOQ
	O7EwUPHEI94PQdxaPVR2g4Ik9fJFcr2XtfH2LFrAuIFANXdAtJ9scvU1iv2+iqwRVR9xfhAUZwX
	nFgChSOErC3T6KSWxMmX8uLX5qEhBWiF3ZodPOTR8c8BTS8TLVYJuCSahddvjVdN5ccMkmEVArL
	Pdssn7GW+X/QSQnHWUDtj9c+VkD6niK2WiqddgEk2vLQ/+AWfI0voHFvj7bQ==
X-Google-Smtp-Source: AGHT+IFVG8MCSeJi/dYjm7QHZUG4zDJVV2W82Q1iLkHB7zROK/tyX/U1h+UQx958znyjGSXuSvF1YQ==
X-Received: by 2002:a05:6000:1a88:b0:3b7:8832:fdcc with SMTP id ffacd0b85a97d-3b7950093b6mr668686f8f.38.1753815510813;
        Tue, 29 Jul 2025 11:58:30 -0700 (PDT)
Received: from cypher.home.roving-it.com (2.c.4.1.7.3.6.4.2.a.a.3.0.f.c.2.1.8.6.2.1.1.b.f.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:fb11:2681:2cf0:3aa2:4637:14c2])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-3b794a9d6a1sm880387f8f.16.2025.07.29.11.58.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Jul 2025 11:58:30 -0700 (PDT)
From: Peter Robinson <pbrobinson@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Dragan Simic <dsimic@manjaro.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Cc: Peter Robinson <pbrobinson@gmail.com>
Subject: [PATCH] arm64: dts: rockchip: Pinebook Pro: Update WiFi
Date: Tue, 29 Jul 2025 19:58:17 +0100
Message-ID: <20250729185827.144547-1-pbrobinson@gmail.com>
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
 .../boot/dts/rockchip/rk3399-pinebook-pro.dts | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
index 5a8551d9ffe47..05c48cb09df6f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
@@ -19,6 +19,7 @@ / {
 	chassis-type = "laptop";
 
 	aliases {
+		ethernet0 = &brcmf;
 		mmc0 = &sdio0;
 		mmc1 = &sdmmc;
 		mmc2 = &sdhci;
@@ -883,6 +884,12 @@ vcc5v0_host_en_pin: vcc5v0-host-en-pin {
 		};
 	};
 
+	wifi {
+		wifi_host_wake_l: wifi-host-wake-l {
+			rockchip,pins = <0 RK_PA3 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	wireless-bluetooth {
 		bt_wake_pin: bt-wake-pin {
 			rockchip,pins = <2 RK_PD3 RK_FUNC_GPIO &pcfg_pull_none>;
@@ -940,7 +947,19 @@ &sdio0 {
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
+		interrupt-parent = <&gpio0>;
+		interrupts = <RK_PA3 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "host-wake";
+		pinctrl-names = "default";
+		pinctrl-0 = <&wifi_host_wake_l>;
+	};
 };
 
 &sdhci {
-- 
2.50.1


