Return-Path: <devicetree+bounces-15166-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D0A07E8BB5
	for <lists+devicetree@lfdr.de>; Sat, 11 Nov 2023 17:42:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7D1871C20840
	for <lists+devicetree@lfdr.de>; Sat, 11 Nov 2023 16:42:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 56C121B283;
	Sat, 11 Nov 2023 16:42:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hWqmg3GO"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A39431B299
	for <devicetree@vger.kernel.org>; Sat, 11 Nov 2023 16:42:43 +0000 (UTC)
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2EB954228
	for <devicetree@vger.kernel.org>; Sat, 11 Nov 2023 08:42:42 -0800 (PST)
Received: by mail-ed1-x533.google.com with SMTP id 4fb4d7f45d1cf-53f9af41444so5125355a12.1
        for <devicetree@vger.kernel.org>; Sat, 11 Nov 2023 08:42:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699720960; x=1700325760; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+Mk3Wy2SuYkImZWPXHt6qqgECjvIgKtTdRVHxjkc3s0=;
        b=hWqmg3GOPLD2UtABdtyZw22Ejardbgdwbiajzxzj0a6wj/sj9TFxveq55ggBWYaJIo
         sR1kwITMhdgv0f4hddZVFMiFNz5rm+AuYiAHtCm+24RwKwzOWwhVJKxQHVs2lcUbThHM
         94CHXKYTXR9N3z8ox6MsupxklpL3tudjnZLuVLmMLHYXIeYRuQF162YfS8cqvBm5SbSG
         TuYQqqosqxHL68NzLJ3LiD/dEDxPEYLa4buFnZxyBwa/eiw/9thjI0EWdIC81JnlG802
         kbxj3W0S0XaHetjjJDDHTiS3Zh4ZdXqbYzeY0X0p8/O/MjZIUges2NbsT3gzJifFeMGh
         0xuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699720960; x=1700325760;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+Mk3Wy2SuYkImZWPXHt6qqgECjvIgKtTdRVHxjkc3s0=;
        b=PZKyATx9Q/li1ZAFCkgYyS1L1qyWBhK8OvMvDDTD6BESjjVxLEH4IHGDeezN0yB1FL
         VR9e0pTvvhywnECgmk5YSveon5F963A9m13t1iMmeNhIIUnb40yqGPs7njVzcJcn9Ke7
         wuW/b2A1w4VogvwYGbPusS6r8g83BWrHgCF7QJ3VpY677ZkKqRxUzXzRxlHxn48VbME5
         6EFLoTalNDynWtEQyhDiPsojmTnX4lNhZ1/GP1Hpjwiw8YgfsLQ3y9S8YHH4iuyW7oXh
         U9HHyKgdfAH29YIgS8+X/K4dEDa+LC9lyfYaNEmSVmSxD70pjnosflwMXoRIxhK7zkpa
         73Dw==
X-Gm-Message-State: AOJu0Yx/pIWiHajLzQYCkQ2l7JIbT3ITg7YTiAys+3GzWt3WaivnZzuj
	nVc96yQlv/gN92R8lQFPvO4xmg==
X-Google-Smtp-Source: AGHT+IGLT9FdCNCGVJ2KjdPrarNpwkIwb7a8z+WpS9aOBLwDqoCwqI1BlnBg4yBrMgsaA/BtSyrfuA==
X-Received: by 2002:aa7:c788:0:b0:543:8391:a19a with SMTP id n8-20020aa7c788000000b005438391a19amr1351243eds.40.1699720960674;
        Sat, 11 Nov 2023 08:42:40 -0800 (PST)
Received: from krzk-bin.. ([178.197.218.126])
        by smtp.gmail.com with ESMTPSA id k25-20020aa7c059000000b0053dd8898f75sm1161917edo.81.2023.11.11.08.42.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Nov 2023 08:42:40 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [RFT PATCH 6/6] arm64: dts: qcom: sm6375-pdx225: add fixed touchscreen AVDD regulator
Date: Sat, 11 Nov 2023 17:42:29 +0100
Message-Id: <20231111164229.63803-6-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231111164229.63803-1-krzysztof.kozlowski@linaro.org>
References: <20231111164229.63803-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The Samsung S6SY761 touchscreen bindings expect AVDD regulator which is
missing in the Sony Xperia PDX225 DTS.  There is however pinctrl setting
for in the touchscreen device node with similar name: "avdd", so assume
author wanted to control a fixed regulator with a GPIO.

This fixes dtbs_check warning:

  sm6375-sony-xperia-murray-pdx225.dtb: touchscreen@48: 'avdd-supply' is a required property

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Not tested on HW.

Bindings for touchscreen:
https://lore.kernel.org/linux-devicetree/20231111-mothball-diploma-c034c0622bc6@squawk/T/#t
---
 .../dts/qcom/sm6375-sony-xperia-murray-pdx225.dts  | 14 ++++++++++++--
 1 file changed, 12 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm6375-sony-xperia-murray-pdx225.dts b/arch/arm64/boot/dts/qcom/sm6375-sony-xperia-murray-pdx225.dts
index 0ce4fa8de8b0..cca2c2eb88ad 100644
--- a/arch/arm64/boot/dts/qcom/sm6375-sony-xperia-murray-pdx225.dts
+++ b/arch/arm64/boot/dts/qcom/sm6375-sony-xperia-murray-pdx225.dts
@@ -80,6 +80,15 @@ ramoops@ffc40000 {
 		};
 	};
 
+	touch_avdd: touch-avdd-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "touch_avdd";
+		gpio = <&tlmm 59 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&ts_avdd_default>;
+		enable-active-high;
+	};
+
 	vph_pwr: vph-pwr-regulator {
 		compatible = "regulator-fixed";
 		regulator-name = "vph_pwr";
@@ -136,9 +145,10 @@ touchscreen@48 {
 		interrupts = <22 0x2008>;
 
 		vdd-supply = <&pm6125_l13>;
+		avdd-supply = <&touch_avdd>;
 
 		pinctrl-names = "default";
-		pinctrl-0 = <&ts_int_default &ts_avdd_default>;
+		pinctrl-0 = <&ts_int_default>;
 	};
 };
 
@@ -417,7 +427,7 @@ ts_avdd_default: ts-avdd-default-state {
 		pins = "gpio59";
 		function = "gpio";
 		drive-strength = <8>;
-		output-high;
+		output-low;
 	};
 };
 
-- 
2.34.1


