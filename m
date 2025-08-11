Return-Path: <devicetree+bounces-203368-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DD82DB20D65
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 17:19:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 95B061907BAB
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 15:19:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 477742E0B77;
	Mon, 11 Aug 2025 15:18:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="N4MZSGjr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54F592DFF13
	for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 15:18:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754925495; cv=none; b=pps09OxBbty0UWZvEVJ5GdS6fHeefJeXDc7i892t1Y7b6Jg0s5u369Iq4haSMcUL9ufmk++wYLT69bMD3/EBbKmDHgP5NnnmH5PLzfmPkn9rAGrtRGxtBqA/dP7Ty+GVupIS4GOG7sb6FuHXdMglyfjYkxnSvtfuBiYVC9iZV4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754925495; c=relaxed/simple;
	bh=CtH8XQtPGXolbBZdVmqnACGN9ZTA/rgd8EyPJEQl8lM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=kohhohEwVvjmlK26kBjgdMQiTB9n+YeWIZlGUjf4bd5RFnDlmWFp/WerriYN9dd55X23w+HjcgAwW/MoSR+VTG+dTlPrizqeQ++ZGB//Z/bdrfq8jRzCzcEBw7S4MGQ3OHKVdIygSiK4VJwEsqatxjG1YrtOqZBo/eAgolzEP5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=N4MZSGjr; arc=none smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-617b36cc489so8678359a12.0
        for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 08:18:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1754925491; x=1755530291; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fng68D5ON4MtHXF/Xvnv7dtbGS53hmAqmZqCopjU5kA=;
        b=N4MZSGjrTHK1RyGCBMZEtLB+TkRTLLTvEuDZ75qEdazrdweMnCKR8CPiv8esZvZjmk
         4zP7hbEluUgfCcEjSg6lZoxaN8ZQxfaNKxMDQgGXw0pdDwxe3q1BGlDwNkx17JHQ3WAy
         6pm7gxigwRaDt0JAI3gcndlpQrQ7qvo64D4bHylJcFlncG5lXCQtChA2/BcDu1TqMbpt
         QqzDikoA3aBMFUIx9Wk5HKv6J0U+4/+LUZGiZAPuoZxbivzavar7MQZwQDW/pH0cqfK0
         OtJciwIOQC/mq8gPqK7x8AaIRhiEkV2AiNSWzhjmD4jzayYVaOUrysGHN6aUN8n9omGb
         i9Hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754925491; x=1755530291;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fng68D5ON4MtHXF/Xvnv7dtbGS53hmAqmZqCopjU5kA=;
        b=gUSfCSnubuq1WnZC4UlDkgjw38amDLPgMffmQ/1jenf8HjH2j3tvsKC+Ll540gLLgO
         JvtmRtAR92atr6FMTIuTXq9aCW84f2pYwpPhS3Fu2/4K7quYqeQCQppBhuHtFmCUHHWv
         oTBUWUKzxAkjqQMuOM/RNuBXMyedd9W9HMaizVqaAQdvJ2agqF2+2P7GR6nkr1SgR/1H
         4dOSCNLpDs/b6fng27Mc9YcNYd75ePhjcAT164p83Qxn4odF9RfXzstgquqchPiGbZqx
         +y3q1UhN853hWsDWI07IXYsJNa46NSWCHwcOTt2/hye72jlq6fuDlwdFNCpYomhlSr2h
         0l9A==
X-Forwarded-Encrypted: i=1; AJvYcCVXQQAIOZFRuFN1plLCsODaBLc4OeeFh9VKD+aiLwFdm8tudFHdRl0hcQ5QB+i1g0bHmhWjDrnUpq35@vger.kernel.org
X-Gm-Message-State: AOJu0YwkwxW7zYWJPmz612VuT1zv2AE1Ybn5hKFIYSZ3gYi1lRE6RbLq
	2WH4jihiWNguugJ2nD2iztYOAvB6XrUDRrnSjRP2EjgV0p9N3et7oL018Jmaw1jNlZI=
X-Gm-Gg: ASbGncuHBDxiJur75UtGlIWSmZMy4JwVVFASboAr8lcNIr+QLCGKzQZrRy3XrfsdCHY
	hr35i9jR0MQuYN4jtqi1mdtZfjPj0hCuwAsLTKiRzd/aWFTbrfbFW0hbIi8cSt4lhw0YctOYNXZ
	KbWuNN40eOfeLoAwDXg7gQyh71D9/tcM97A55vNUcaqUygRTk0lRyYoBjPb2eX9rot4HxHTNs9O
	iZldveibndRpZCdW2xVl3nPqlGa8py+ybr25mvD66V+I/8DL6JnImnLPuTkEYB2XBduPFiHop80
	GBcOatQkaj6NbTs74xU6d8lcxgk7rx4lVNt+Wk2B/MBUXHj5rLtqF9Ugh+e++CTqTy3PFoGQIHe
	4aFZL6NnBd/PQIWBypiRiYZmf1IjDjc3i9Mkx90LdCHFZjnPvFiZ6b2gG7/Fw1gP3LQ==
X-Google-Smtp-Source: AGHT+IH258sr5DlmoIs2dXrt8URBUrKXF/WgpLPedlCY2bJF2kB5AZhyPhcJHZNSotah9gafIa5oGA==
X-Received: by 2002:a17:906:3687:b0:afa:97:55e9 with SMTP id a640c23a62f3a-afa00975734mr328441966b.36.1754925491486;
        Mon, 11 Aug 2025 08:18:11 -0700 (PDT)
Received: from localhost (host-79-44-170-80.retail.telecomitalia.it. [79.44.170.80])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af91a21ac0asm2033507666b.99.2025.08.11.08.18.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Aug 2025 08:18:11 -0700 (PDT)
From: Andrea della Porta <andrea.porta@suse.com>
To: linus.walleij@linaro.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	florian.fainelli@broadcom.com,
	wahrenst@gmx.net,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	iivanov@suse.de,
	svarbanov@suse.de,
	mbrugger@suse.com,
	Jonathan Bell <jonathan@raspberrypi.com>,
	Phil Elwell <phil@raspberrypi.com>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Al Cooper <alcooperx@gmail.com>,
	linux-mmc@vger.kernel.org,
	Jiri Slaby <jirislaby@kernel.org>,
	linux-serial@vger.kernel.org
Cc: Andrea della Porta <andrea.porta@suse.com>
Subject: [PATCH 6/6] arm64: dts: broadcom: bcm2712: Add UARTA controller node
Date: Mon, 11 Aug 2025 17:19:50 +0200
Message-ID: <c61b830b6f8f691aec9607b4707d3146bbd2ee84.1754924348.git.andrea.porta@suse.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <cover.1754924348.git.andrea.porta@suse.com>
References: <cover.1754924348.git.andrea.porta@suse.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: "Ivan T. Ivanov" <iivanov@suse.de>

On RPi5 device Bluetooth chips is connected to UARTA
port. Add Bluetooth chips and related pin definitions.

With this and firmware already provided by distributions,
at least on openSUSE Tumbleweed, this is sufficient to make
Bluetooth operational on RPi5 \o/.

Signed-off-by: Ivan T. Ivanov <iivanov@suse.de>
Signed-off-by: Andrea della Porta <andrea.porta@suse.com>
---
 .../dts/broadcom/bcm2712-rpi-5-b-ovl-rp1.dts  | 42 +++++++++++++++++++
 arch/arm64/boot/dts/broadcom/bcm2712.dtsi     | 10 +++++
 2 files changed, 52 insertions(+)

diff --git a/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-ovl-rp1.dts b/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-ovl-rp1.dts
index 411b58c1dddf..04738bf281eb 100644
--- a/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-ovl-rp1.dts
+++ b/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-ovl-rp1.dts
@@ -81,6 +81,11 @@ wl_on_reg: wl-on-reg {
 };
 
 &pinctrl {
+	bt_shutdown_default: bt-shutdown-default-state {
+		function = "gpio";
+		pins = "gpio29";
+	};
+
 	emmc_sd_default: emmc-sd-default-state {
 		pins = "emmc_cmd", "emmc_dat0", "emmc_dat1", "emmc_dat2", "emmc_dat3";
 		bias-pull-up;
@@ -110,6 +115,29 @@ dat-pins {
 		};
 	};
 
+	uarta_24_default: uarta-24-default-state {
+		rts-pins {
+			function = "uart0";
+			pins = "gpio24";
+			bias-disable;
+		};
+		cts-pins {
+			function = "uart0";
+			pins = "gpio25";
+			bias-pull-up;
+		};
+		txd-pins {
+			function = "uart0";
+			pins = "gpio26";
+			bias-disable;
+		};
+		rxd-pins {
+			function = "uart0";
+			pins = "gpio27";
+			bias-pull-up;
+		};
+	};
+
 	wl_on_default: wl-on-default-state {
 		function = "gpio";
 		pins = "gpio28";
@@ -188,6 +216,20 @@ power: power {
 	};
 };
 
+/* uarta communicates with the BT module */
+&uarta {
+	uart-has-rtscts;
+	pinctrl-0 = <&uarta_24_default &bt_shutdown_default>;
+	pinctrl-names = "default";
+	status = "okay";
+
+	bluetooth: bluetooth {
+		compatible = "brcm,bcm43438-bt";
+		max-speed = <3000000>;
+		shutdown-gpios = <&gio 29 GPIO_ACTIVE_HIGH>;
+	};
+};
+
 &hvs {
 	clocks = <&firmware_clocks 4>, <&firmware_clocks 16>;
 	clock-names = "core", "disp";
diff --git a/arch/arm64/boot/dts/broadcom/bcm2712.dtsi b/arch/arm64/boot/dts/broadcom/bcm2712.dtsi
index 871537366e96..1ed26a211ed5 100644
--- a/arch/arm64/boot/dts/broadcom/bcm2712.dtsi
+++ b/arch/arm64/boot/dts/broadcom/bcm2712.dtsi
@@ -260,6 +260,16 @@ gio: gpio@7d508500 {
 			brcm,gpio-bank-widths = <32 22>;
 		};
 
+		uarta: serial@7d50c000 {
+			compatible = "brcm,bcm7271-uart";
+			reg = <0x7d50c000 0x20>;
+			reg-names = "uart";
+			clock-frequency = <96000000>;
+			interrupts = <GIC_SPI 276 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "uart";
+			status = "disabled";
+		};
+
 		pinctrl_aon: pinctrl@7d510700 {
 			compatible = "brcm,bcm2712c0-aon-pinctrl";
 			reg = <0x7d510700 0x20>;
-- 
2.35.3


