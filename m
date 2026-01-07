Return-Path: <devicetree+bounces-252174-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id ABB86CFBF6A
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 05:30:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 76E3330042BE
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 04:30:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 18681247280;
	Wed,  7 Jan 2026 04:30:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="B4fjOTG4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com [209.85.219.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F0A2259CB2
	for <devicetree@vger.kernel.org>; Wed,  7 Jan 2026 04:30:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767760237; cv=none; b=R3MH0jVQwgkAZVFbSMS/2+TuM8daquAGphM7ctwW0RuMef+szqEBYK/cvdiNW8MEfxyl8RK8VBneZyd01Dfoha80rXno9rjrp4ACHTooc3VyVB7PInFct32yfw/jDiEGvsMjdlEHyB2WZTk3zbPaBnQkTD5dkzUy7uTxs6vR0bU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767760237; c=relaxed/simple;
	bh=tpKwT8BRmh+4TfFD5KNeHQ94D71yYWXSxwOTFbPdyGw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=lyW5munR2OIw4tO/u3UaVFSelswbwVlisFrAM9Npr6i1w1RV4QVlTD4OYVWMIsqUW3JCF61ClR5d1GL+KL7dkf9ax4vRmg1W85gj1/d2fcvEbZI90126Yl6DS0zzS9zPIIzhkFOcThdQjOzSqBe7VT1aAauarnzqdZbstASSXRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=B4fjOTG4; arc=none smtp.client-ip=209.85.219.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f49.google.com with SMTP id 6a1803df08f44-88a2ad13c24so14726246d6.1
        for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 20:30:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767760234; x=1768365034; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7t6ijxVnxYYl+Qkqm4DID3uci/fVGDoUjERuFcxrn4c=;
        b=B4fjOTG4mOvAhBOfr0wWH4se+wTU+6IcVJHIAo95btzjvkgt5/USUPVJe8LywjASu+
         ZeWF9bkkUZvFB+RKNNuGjUoUd0IUEsPEmUAcdcDKxqG6Rpodn7V3EoIp6lLXKI0THB45
         wfC20cNZVZS5GUz+3vV8D2ZX5VzjBYodLHDZWfFivsZDCeX/YnDhOnR9ulnTGr0FxqTF
         BwVtg9W6zxkoEa0wRwUcOQdYUfEW9Ac15uC4cInLD4Y8BkbopobRKseHXYZ95yhvE0qW
         v+MgWwrZVqJ+1ovxdM22dVaXoydKwUHLZ0VBCDCf6EhkB0IXneedaQhqbfyx7vRwCRoI
         kpIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767760234; x=1768365034;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=7t6ijxVnxYYl+Qkqm4DID3uci/fVGDoUjERuFcxrn4c=;
        b=X+kPNh5kxdd2EehRaKqgqsNR1qVkSY4jWFPjI7vsbogYU5nKvOA3gRB4UxvBXNccJ6
         XwhUmf/j/2fw34zVruNI03a8eOVbXIw81YselRwCdFY2Fw27cy/ViPQgcsZ89LFO+P1Z
         o60Zw/l8ZjyMh+FHeDTQF2FLJ7NAPaqf3UrokByLaXKXcyv0zgQbbs6TggP49CsnAiPB
         Mqez5QGkpe0476pG+UDSk/vwApA8IyZ8Y9tTyJPB6uzlcKX1UFNSBucNZs6Lpf9rMoDp
         1kEZzDVWHWmS7DlE+iH04/Ix73fVeu4ZUC98Qj34R0zKU0VxIdHqZ/pbKJzcTjR0smja
         baHA==
X-Forwarded-Encrypted: i=1; AJvYcCU7eUi4qjHIfqoPJEold56M8SxseJwZEkFILos18mk5T39pKGnRr1XOdbKFCpVhzu5FBI4wkcmhTrim@vger.kernel.org
X-Gm-Message-State: AOJu0YzMFZSMLdVZxZ8PBYgbxZEYXpYuW8D7WBsy5e6Or70kB8WSBt+4
	2USULsi9uur+28ZjZMzgknkrYzPrFIa21LkTS+KnrFwmV1AHleliLF/f
X-Gm-Gg: AY/fxX75xqchVUJudLt2uVFAlBr/gUE+zeM/vNvsmwhTzGVU/dMhAzOi+WgQeFQIJO4
	GqAEGZWVst8QorTeBJpjGLYjvdI1bEBmNKrlJvnviCJ+bV6/ZHaTziIX9dDUusLYptwozNqgamL
	LKjcBgWZSnLwaPAkGFIABhRdJLkStxtoVHAMFBuXxJulJ1pk/1hq5zgnq7kjcYpXmYha3XTQyZZ
	pLhKz0ZDwYzvk0S62D1A1tweqhW2jbAfR4VtuhY94xbeCEf11aZ0RaEQ6ElbdGHXEiAYAZhp4l0
	yY8b1/Eum66lY/hMv9+EWad5fvbS7T8BIjtr0K4bjtIT1AqMujrnmrHmBND/QmTPA01FibRSfva
	bJ+VgM9MmJUfeBDv5WonAdst+HYTzmS91mgoC51rZNOA+Gh5ur96CTGT3VfnuJMoC40zYmLHAaN
	/0rV8oEyxl5N4CrwryVovb2XdeTYIZEsZCG+n3PNj1IAKp46HUdvGb34xMohg9aHweTjN2O0OzL
	D4=
X-Google-Smtp-Source: AGHT+IFl+7lp7gXI2x/Wcl/yop0i6XbQOu37mNnFxGVaw+VUl/pbW+ltRx+mYf0geBGnFrjp0xheOw==
X-Received: by 2002:a05:6214:598e:b0:888:8557:69e6 with SMTP id 6a1803df08f44-8908427568fmr16304366d6.47.1767760234146;
        Tue, 06 Jan 2026 20:30:34 -0800 (PST)
Received: from localhost (bras-base-toroon21-grc-75-184-144-58-243.dsl.bell.ca. [184.144.58.243])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-890772346f8sm26755086d6.35.2026.01.06.20.30.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jan 2026 20:30:33 -0800 (PST)
From: Richard Acayan <mailingradian@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Tianshu Qiu <tian.shu.qiu@intel.com>,
	linux-media@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-msm@vger.kernel.org
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Robert Mader <robert.mader@collabora.com>,
	Bryan O'Donoghue <bod@kernel.org>,
	Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
	David Heidelberg <david@ixit.cz>,
	phone-devel@vger.kernel.org,
	Richard Acayan <mailingradian@gmail.com>
Subject: [PATCH v6 5/5] arm64: dts: qcom: sdm670-google-sargo: add imx355 front camera
Date: Tue,  6 Jan 2026 23:30:44 -0500
Message-ID: <20260107043044.92485-6-mailingradian@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260107043044.92485-1-mailingradian@gmail.com>
References: <20260107043044.92485-1-mailingradian@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The Sony IMX355 is the front camera on the Pixel 3a, mounted in portrait
mode. It is connected to CSIPHY1 and CCI I2C1, and uses MCLK2. Add
support for it.

Co-developed-by: Robert Mader <robert.mader@collabora.com>
Signed-off-by: Robert Mader <robert.mader@collabora.com>
Signed-off-by: Richard Acayan <mailingradian@gmail.com>
---
 .../boot/dts/qcom/sdm670-google-sargo.dts     | 104 ++++++++++++++++++
 1 file changed, 104 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sdm670-google-sargo.dts b/arch/arm64/boot/dts/qcom/sdm670-google-sargo.dts
index ed55646ca419..ec447fe3959a 100644
--- a/arch/arm64/boot/dts/qcom/sdm670-google-sargo.dts
+++ b/arch/arm64/boot/dts/qcom/sdm670-google-sargo.dts
@@ -172,6 +172,34 @@ vreg_s2b_1p05: vreg-s2b-regulator {
 		regulator-min-microvolt = <1050000>;
 		regulator-max-microvolt = <1050000>;
 	};
+
+	cam_front_ldo: cam-front-ldo-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "cam_front_ldo";
+		regulator-min-microvolt = <1352000>;
+		regulator-max-microvolt = <1352000>;
+		regulator-enable-ramp-delay = <135>;
+
+		gpios = <&pm660l_gpios 4 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+
+		pinctrl-0 = <&cam_front_ldo_pin>;
+		pinctrl-names = "default";
+	};
+
+	cam_vio_ldo: cam-vio-ldo-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "cam_vio_ldo";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		regulator-enable-ramp-delay = <233>;
+
+		gpios = <&pm660_gpios 13 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+
+		pinctrl-0 = <&cam_vio_pin>;
+		pinctrl-names = "default";
+	};
 };
 
 &apps_rsc {
@@ -392,6 +420,61 @@ vreg_bob: bob {
 	};
 };
 
+&camss {
+	vdda-phy-supply = <&vreg_l1a_1p225>;
+	vdda-pll-supply = <&vreg_s6a_0p87>;
+
+	status = "okay";
+};
+
+&camss_port1 {
+	camss_endpoint1: endpoint {
+		clock-lanes = <7>;
+		data-lanes = <0 1 2 3>;
+		remote-endpoint = <&cam_front_endpoint>;
+	};
+};
+
+&cci {
+	pinctrl-0 = <&cci1_default>;
+	pinctrl-1 = <&cci1_sleep>;
+	pinctrl-names = "default", "sleep";
+
+	status = "okay";
+};
+
+&cci_i2c1 {
+	camera@1a {
+		compatible = "sony,imx355";
+		reg = <0x1a>;
+
+		clocks = <&camcc CAM_CC_MCLK2_CLK>;
+
+		assigned-clocks = <&camcc CAM_CC_MCLK2_CLK>;
+		assigned-clock-rates = <19200000>;
+
+		reset-gpios = <&tlmm 9 GPIO_ACTIVE_LOW>;
+
+		avdd-supply = <&cam_front_ldo>;
+		dvdd-supply = <&cam_front_ldo>;
+		dovdd-supply = <&cam_vio_ldo>;
+
+		pinctrl-0 = <&cam_front_default &cam_mclk2_default>;
+		pinctrl-names = "default";
+
+		rotation = <270>;
+		orientation = <0>;
+
+		port {
+			cam_front_endpoint: endpoint {
+				data-lanes = <1 2 3 4>;
+				link-frequencies = /bits/ 64 <360000000>;
+				remote-endpoint = <&camss_endpoint1>;
+			};
+		};
+	};
+};
+
 &gcc {
 	protected-clocks = <GCC_QSPI_CORE_CLK>,
 			   <GCC_QSPI_CORE_CLK_SRC>,
@@ -490,6 +573,14 @@ &pm660_charger {
 	status = "okay";
 };
 
+&pm660_gpios {
+	cam_vio_pin: cam-vio-state {
+		pins = "gpio13";
+		function = "normal";
+		power-source = <0>;
+	};
+};
+
 &pm660_rradc {
 	status = "okay";
 };
@@ -508,6 +599,12 @@ led-0 {
 };
 
 &pm660l_gpios {
+	cam_front_ldo_pin: cam-front-state {
+		pins = "gpio4";
+		function = "normal";
+		power-source = <0>;
+	};
+
 	vol_up_pin: vol-up-state {
 		pins = "gpio7";
 		function = "normal";
@@ -547,6 +644,13 @@ &sdhc_1 {
 &tlmm {
 	gpio-reserved-ranges = <0 4>, <81 4>;
 
+	cam_front_default: cam-front-default-state {
+		pins = "gpio9";
+		function = "gpio";
+		drive-strength = <2>;
+		bias-disable;
+	};
+
 	panel_default: panel-default-state {
 		te-pins {
 			pins = "gpio10";
-- 
2.52.0


