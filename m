Return-Path: <devicetree+bounces-41405-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F9DA85370A
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 18:17:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3F35EB21A2A
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 17:16:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E2495FDCE;
	Tue, 13 Feb 2024 17:16:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b="jTJGIl2F"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4304E5FDCA
	for <devicetree@vger.kernel.org>; Tue, 13 Feb 2024 17:16:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707844613; cv=none; b=a7j253fQOSow812f4A7+8weWQ4UUwlukRxU/3xRPI/mv8B849si7U3PQhBUUB3N22x6G9pgRmUVKMAOwuc+KFq82wxlAMs981hiLTPrq+tRQcMtDlGCOFnbSbEGqULFcqXdvExgCDKUSWCPaL1UBwaNYazDYlJRT7AjDNOqjgGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707844613; c=relaxed/simple;
	bh=IBi8A/c0Ss8d/slNGipiev7jqI1aUfBXDZZWvsfBKeA=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=LL5HzMjKWtpfor8Agm/sCYNG0pNf2tcqYOcxFjxe/PngnidMD7w7IdplcSzmLxgfdw2eXgiZuwtMV71PRaJ4O2Z+GPlArxzlTUgFPVCDZY0UWQgfY2Qh9NPs4CNEE3cq/WKNr7LDyWIQH+L70KlaS7xad2+Uu7U5Yp2cKuiQLCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr; spf=pass smtp.mailfrom=freebox.fr; dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b=jTJGIl2F; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=freebox.fr
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-411d231ea71so3072885e9.1
        for <devicetree@vger.kernel.org>; Tue, 13 Feb 2024 09:16:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=freebox-fr.20230601.gappssmtp.com; s=20230601; t=1707844609; x=1708449409; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=s6RlH3wZJESaMwkf7v3z2NOiEtaER29lJKbWVlOBM50=;
        b=jTJGIl2FZIeXFt1Tq62oK6xec7i6MjPYHdoytgdqjV8wrRdrcs+sOPquhYVRPoXllL
         3Pjz0Mb9zmLR4e1da5lAmgg27Neh/FMgEBAOGJr0l6bqdEkFIxx4cbHyTDPCnPkfre8S
         Ooe9X1SZGhmvInvsmZKUxqf3FBfC/l/w562dksnd8uQUBVc41y6uDbsCHg453QaQZNAw
         xQT+E/qDS2c8v/RChvc3YGiNe/yOcaq/oQpw+ylpbE0bisew1+deBCWtS/toQZ/y541R
         OE1zNVzSNkC5pbgdSpGIjSW4N4E9RqAGhxxcPL77mO+CdybfFy8lYbxxRYa5XP0RWUkZ
         N89w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707844609; x=1708449409;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=s6RlH3wZJESaMwkf7v3z2NOiEtaER29lJKbWVlOBM50=;
        b=bJdVCxKg4jPjwp9i5VBGkVDfZZp2xrhMtio315Cw7rLeznI3oNDigTAwedl7z3KUUJ
         IvAURlT85h+DGIttWu+6cEuIj9uyj3ghEmOC6kH2/wkhHCBclNrmBsd1cyU7BBzsdAQ1
         ZuDQ2bvicwWuQAXm9tidwK3urlYiTi9EW5tYZwHDfeyuBswBxPaqoecFDtkoRY4tKl6F
         ACswI3agnXgD4nVg1tgk8/oFYEIxikpLXHsMBGWsxXVwjrK0UC5nOTmnPbUAdDDprEhK
         B0chtoOsaS4+qYuKjNtVN3ludTs52sXkLWdV/aLWnGk63FjTRfrMjDsSr9uYBDJ8E+1l
         hUsQ==
X-Forwarded-Encrypted: i=1; AJvYcCVyDJBW1DsKAh1/pfA1Lk0U26/uB0FL1ReOhqAUfiV251LoNxwkMmN/rQJuoeAA1KJpRzWvsC+FTh1qkVW5L0bxUqG7wZtrZCrE2g==
X-Gm-Message-State: AOJu0Yw3HN88eRbb5ITAfa7qN+invFpvkqwh5t21f5DTcDWMOUy4Mget
	eCVHuOLeLNWkaZRE/5WfVFgYJURwKRnTE7jL0gV7BH903ef2McDeRrXkz5L4tC8=
X-Google-Smtp-Source: AGHT+IGBkzqazmXuDW7QopiONN8TxjsMnqDJicaApuScpDpGFK7Oww7xwL14MWpsXZrK+iEmSRCXQg==
X-Received: by 2002:a05:600c:1383:b0:410:adc2:6d1c with SMTP id u3-20020a05600c138300b00410adc26d1cmr262825wmf.12.1707844606230;
        Tue, 13 Feb 2024 09:16:46 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWC2orr4N4ebUitNoPpK94a91+0uiiTbLyOtBGE3I+o7/81cHMERbe/2+UrEpyrBMM8Z64UxdNCvVvzhyOP2aofO3D9bQHsqVuWpjYLEB3KEdtrNmHh0G7I/AoQaisw/14wYpIufpXKw3hMMrGx0p5tv1mnIQFjJRhZdlRlxWH+BRWGCMTYQ/WqaizfV9rN03uoJwijj8UtJ7Z9TyZ7HzYr8Dv3jf3JXD2yPTsLpGumzP166d/74NUO+w4OG++08Ct9exCopO84Rvsuu2KQIlaLAfmuol52UE3daY3gnQuqjys+AV4fOUY3tLB9yisOdXZSJv67/S1vUGOha+xnISZmWpc3TGdMcZjWC/Se2p0EJyQ=
Received: from [192.168.108.81] (freebox.vlq16.iliad.fr. [213.36.7.13])
        by smtp.gmail.com with ESMTPSA id j9-20020a05600c190900b00410c2f39833sm7805785wmq.30.2024.02.13.09.16.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Feb 2024 09:16:46 -0800 (PST)
Message-ID: <79ba726d-d02c-44b9-b6f6-59b17ba9755c@freebox.fr>
Date: Tue, 13 Feb 2024 18:14:55 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [PATCH v3 4/4] arm64: dts: amlogic: add fbx8am DT overlays
Content-Language: en-US
From: Marc Gonzalez <mgonzalez@freebox.fr>
To: AML <linux-amlogic@lists.infradead.org>, DT <devicetree@vger.kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Pierre-Hugues Husson <phhusson@freebox.fr>
References: <07f7a695-18a0-4211-82e9-b1e2c7166969@freebox.fr>
In-Reply-To: <07f7a695-18a0-4211-82e9-b1e2c7166969@freebox.fr>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

From: Pierre-Hugues Husson <phhusson@freebox.fr>

Add support for two variants of the fbx8am board.

Signed-off-by: Pierre-Hugues Husson <phhusson@freebox.fr>
Signed-off-by: Marc Gonzalez <mgonzalez@freebox.fr>
---
 arch/arm64/boot/dts/amlogic/Makefile                       |  6 ++++++
 arch/arm64/boot/dts/amlogic/meson-g12a-fbx8am-brcm.dtso    | 35 ++++++++++++++++++++++++++++++++++
 arch/arm64/boot/dts/amlogic/meson-g12a-fbx8am-realtek.dtso | 25 ++++++++++++++++++++++++
 3 files changed, 66 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/Makefile b/arch/arm64/boot/dts/amlogic/Makefile
index cc8b34bd583d8..1ab160bf928ae 100644
--- a/arch/arm64/boot/dts/amlogic/Makefile
+++ b/arch/arm64/boot/dts/amlogic/Makefile
@@ -8,6 +8,8 @@ dtb-$(CONFIG_ARCH_MESON) += meson-axg-jethome-jethub-j100.dtb
 dtb-$(CONFIG_ARCH_MESON) += meson-axg-jethome-jethub-j110-rev-2.dtb
 dtb-$(CONFIG_ARCH_MESON) += meson-axg-jethome-jethub-j110-rev-3.dtb
 dtb-$(CONFIG_ARCH_MESON) += meson-axg-s400.dtb
+dtb-$(CONFIG_ARCH_MESON) += meson-g12a-fbx8am-brcm.dtb
+dtb-$(CONFIG_ARCH_MESON) += meson-g12a-fbx8am-realtek.dtb
 dtb-$(CONFIG_ARCH_MESON) += meson-g12a-radxa-zero.dtb
 dtb-$(CONFIG_ARCH_MESON) += meson-g12a-sei510.dtb
 dtb-$(CONFIG_ARCH_MESON) += meson-g12a-u200.dtb
@@ -80,3 +82,7 @@ dtb-$(CONFIG_ARCH_MESON) += meson-sm1-odroid-hc4.dtb
 dtb-$(CONFIG_ARCH_MESON) += meson-sm1-sei610.dtb
 dtb-$(CONFIG_ARCH_MESON) += meson-sm1-x96-air-gbit.dtb
 dtb-$(CONFIG_ARCH_MESON) += meson-sm1-x96-air.dtb
+
+# Overlays
+meson-g12a-fbx8am-brcm-dtbs	:= meson-g12a-fbx8am.dtb meson-g12a-fbx8am-brcm.dtbo
+meson-g12a-fbx8am-realtek-dtbs	:= meson-g12a-fbx8am.dtb meson-g12a-fbx8am-realtek.dtbo
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a-fbx8am-brcm.dtso b/arch/arm64/boot/dts/amlogic/meson-g12a-fbx8am-brcm.dtso
new file mode 100644
index 0000000000000..ed79809b15859
--- /dev/null
+++ b/arch/arm64/boot/dts/amlogic/meson-g12a-fbx8am-brcm.dtso
@@ -0,0 +1,35 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+// Copyright (c) 2024 Freebox SAS
+
+/dts-v1/;
+/plugin/;
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/gpio/meson-g12a-gpio.h>
+
+/ {
+	compatible = "freebox,fbx8am-brcm", "freebox,fbx8am", "amlogic,g12a";
+};
+
+&uart_A {
+	bluetooth {
+		compatible = "brcm,bcm43438-bt";
+		shutdown-gpios = <&gpio GPIOX_17 GPIO_ACTIVE_HIGH>;
+		max-speed = <2000000>;
+		clocks = <&wifi32k>;
+		clock-names = "lpo";
+		vbat-supply = <&vddao_3v3>;
+		vddio-supply = <&vddio_ao1v8>;
+	};
+};
+
+&sd_emmc_a {
+	/* Per mmc-controller.yaml */
+	#address-cells = <1>;
+	#size-cells = <0>;
+	/* NB: may be either AP6398S or AP6398SR3 wifi module */
+	brcmf: wifi@1 {
+		reg = <1>;
+		compatible = "brcm,bcm4329-fmac";
+	};
+};
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a-fbx8am-realtek.dtso b/arch/arm64/boot/dts/amlogic/meson-g12a-fbx8am-realtek.dtso
new file mode 100644
index 0000000000000..5da88fb94fb98
--- /dev/null
+++ b/arch/arm64/boot/dts/amlogic/meson-g12a-fbx8am-realtek.dtso
@@ -0,0 +1,25 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+// Copyright (c) 2024 Freebox SAS
+
+/dts-v1/;
+/plugin/;
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/gpio/meson-g12a-gpio.h>
+
+/ {
+	compatible = "freebox,fbx8am-realtek", "freebox,fbx8am", "amlogic,g12a";
+};
+
+&uart_A {
+	bluetooth {
+		compatible = "realtek,rtl8822cs-bt";
+		enable-gpios = <&gpio GPIOX_17 GPIO_ACTIVE_HIGH>;
+		host-wake-gpios = <&gpio GPIOX_19 GPIO_ACTIVE_HIGH>;
+		device-wake-gpios = <&gpio GPIOX_18 GPIO_ACTIVE_HIGH>;
+	};
+};
+
+&sd_emmc_a {
+	/* No explicit compatible for rtl8822cs sdio */
+};
-- 
2.34.1


