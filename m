Return-Path: <devicetree+bounces-40965-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 474BF851C5C
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 19:01:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4E2DFB2B5CA
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 17:58:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 273C545958;
	Mon, 12 Feb 2024 17:55:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b="N+2SqyJI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C0043F9E9
	for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 17:55:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707760508; cv=none; b=aUlBInI+AdL0oQgsKHnKJ7p9IGjXJd0m5Uo+4ER6QJWECpxEJkWDgKpimUsPIC5U3UEJq5jzPf+hlSQwZSDL9pcD/ceEuDZxR/2SM67dMCCR/MRYcu0LqL8Y2ZmaCtFvkeSlC/LOD8l4FQ5EZAJFpYtVsoySz+z1ucO/zLqavTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707760508; c=relaxed/simple;
	bh=PYTqQHAs5im1hxSum6ERuJdRTako0FO4iOUdFSdW2s8=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=bG2GrV3JEPcBogReX0mEnJovrKQkTN7uHw1eHkS7k/S6ySDZK0qqy/VPuV4lzoJ2cFMKhbohtD6WaIpKOz5MSncw5SsOcz5q2ELj2MvVfnD7P4/Wuk1cNpjDvgn3b3212zAqy57SvdBTKNWqqQY9g2SfUJ6Lr99igkHa8nD0ud8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr; spf=pass smtp.mailfrom=freebox.fr; dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b=N+2SqyJI; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=freebox.fr
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-4116650a345so5335885e9.1
        for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 09:55:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=freebox-fr.20230601.gappssmtp.com; s=20230601; t=1707760504; x=1708365304; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=H2zOp39JdTBdqMs5UBO9EPz5yFfp8eAgceufC0MfE6Y=;
        b=N+2SqyJIBgIBYGGNcPk7CEHTwSKaaENLYOlZxOlBeyWDm0WFaPTgYdYnSdeZyS7LHD
         RifEoTIC+hgpyBKPBpw974Em9SZlY2SoWTwIsa3V0P6AGeZZ5FKVdhwTZpj2iBHqad5z
         K4WVsAo1Devt5ljiKIi9vPtnDEQA1sk/8kja/FZoMxlD1a164i1ZU3fEdK0hTiv3A/YL
         CB2cpS4Wn5Bdchg5QPTbOXpGtNJ/w/grrm+injmoZv636kiY3wrSC3wL7exnRTRp9vNw
         dtbr5CEV+D0Dzvnh7TaH2hdLVEDE5SVxQXYaQZIipAn2MlglGTsuCLu0KujV7xf2YBDs
         TKpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707760504; x=1708365304;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=H2zOp39JdTBdqMs5UBO9EPz5yFfp8eAgceufC0MfE6Y=;
        b=IAo3+cjplJvWv3etdFM7AuSvm/zShB3KkDisZk2dRqbbo7l1+OOv4zCtsb2cf0v/G4
         5WY2W1J+iUn/KDE0lt00e4cib9rO2s6xDU4PXqTax8iuxRxLs6wh4yaPd6BiYTgfCGBk
         JiYdxms/lAgUUZspSUT5DV+S9HSwj7vQw3hIk6RzUrGHwmdTy2jO1LzCwkooi583ADcc
         08kjhMQRcFmK2djCw/ln992AMukMcy8InjpqCPvYLwwmsNmHITOMZ+zuBpEK7pH67chz
         6t4lMUI8pYESDOWRKbgFlMERQ0qiJAvcbb4SWCtDK2a7mZmlV3q953wqOqdDHqT9Arfv
         MKgg==
X-Gm-Message-State: AOJu0Yy4/P4HSs6rbqGoZ5EbtoyQ+fqRwMwnZ3G3axgux+Rd8N3Ye0mG
	gU8jot3ul/+Ub9vIZCV7QMUELVbKVCofl5XBvmkoHGhIPEUqzpiU4Lyva4iJBts=
X-Google-Smtp-Source: AGHT+IFcQHkhbij6vz+6yEgCBbgPycZJ0MGVMp8xLQK1W01QI+pymKu0X1w9vlj4UDsihgAwWC0R8g==
X-Received: by 2002:a5d:634e:0:b0:33b:3a90:13ea with SMTP id b14-20020a5d634e000000b0033b3a9013eamr5719024wrw.4.1707760504579;
        Mon, 12 Feb 2024 09:55:04 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUMgnBwLznNVA7Ie3YoygxcsRbmBBl7Yy6HETG0NMCMylb0cp2POpo75roLyUF8lpkMU+wRgVeQoZGg5O3Ifr1m3BY1vUgeMAUTH3oENwOcN1Zw74rynReZf2FkC6tU8AHNyxrMsLyJbXKG0VRLAjxAZDuH6UQ6em/Qn1NtFb3tjKsmFyiil3+iwxTvPIG1R4Aiy95eY+AelDfoYuNyCTn4iJA8je3p8fv+UBsRhzDaVxDw1/nBVwqEYxTSeUKr5+1MA7WV7+oG/b+SY40rNO3GqApGjE2prOn0vdXHO2HId8MWKmvjtw97zV9uWkf/SeuWOrqnTVXn7r37RRyxSmKplaCVutfc9yE9pBCXHDxNSJ8=
Received: from ?IPV6:2a02:8428:2a4:1a01:8c00:686f:ba67:b4c9? ([2a02:8428:2a4:1a01:8c00:686f:ba67:b4c9])
        by smtp.gmail.com with ESMTPSA id z7-20020adfe547000000b0033b55186901sm7380912wrm.94.2024.02.12.09.55.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Feb 2024 09:55:04 -0800 (PST)
Message-ID: <5ac4741d-766d-4b6d-95ac-669474d05e6a@freebox.fr>
Date: Mon, 12 Feb 2024 18:53:01 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [PATCH v2 4/4] arm64: dts: amlogic: add fbx8am DT overlays
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
References: <77edaf7e-aeb5-4fc0-8b69-85dcddfd5a58@freebox.fr>
In-Reply-To: <77edaf7e-aeb5-4fc0-8b69-85dcddfd5a58@freebox.fr>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

From: Pierre-Hugues Husson <phhusson@freebox.fr>

Add support for two variants of the fbx8am board.

Signed-off-by: Pierre-Hugues Husson <phhusson@freebox.fr>
Signed-off-by: Marc Gonzalez <mgonzalez@freebox.fr>
---
  arch/arm64/boot/dts/amlogic/Makefile                       |  7 +++++++
  arch/arm64/boot/dts/amlogic/meson-g12a-fbx8am-brcm.dtso    | 35 ++++++++++++++++++++++++++++++++++
  arch/arm64/boot/dts/amlogic/meson-g12a-fbx8am-realtek.dtso | 25 ++++++++++++++++++++++++
  3 files changed, 67 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/Makefile b/arch/arm64/boot/dts/amlogic/Makefile
index e9baa2cf02273..2fd7c7a18126f 100644
--- a/arch/arm64/boot/dts/amlogic/Makefile
+++ b/arch/arm64/boot/dts/amlogic/Makefile
@@ -81,3 +81,10 @@ dtb-$(CONFIG_ARCH_MESON) += meson-sm1-odroid-hc4.dtb
  dtb-$(CONFIG_ARCH_MESON) += meson-sm1-sei610.dtb
  dtb-$(CONFIG_ARCH_MESON) += meson-sm1-x96-air-gbit.dtb
  dtb-$(CONFIG_ARCH_MESON) += meson-sm1-x96-air.dtb
+
+# Overlays
+dtb-$(CONFIG_ARCH_MESON) += meson-g12a-fbx8am-brcm.dtbo
+dtb-$(CONFIG_ARCH_MESON) += meson-g12a-fbx8am-realtek.dtbo
+
+# Enable support for DT overlays
+DTC_FLAGS_meson-g12a-fbx8am += -@
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

