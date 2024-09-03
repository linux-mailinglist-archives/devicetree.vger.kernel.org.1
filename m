Return-Path: <devicetree+bounces-99376-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C1B3969939
	for <lists+devicetree@lfdr.de>; Tue,  3 Sep 2024 11:37:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 816001C2188B
	for <lists+devicetree@lfdr.de>; Tue,  3 Sep 2024 09:37:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 50FAB1C62A5;
	Tue,  3 Sep 2024 09:36:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="3SA3FyRP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C7D31B9838
	for <devicetree@vger.kernel.org>; Tue,  3 Sep 2024 09:36:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725356204; cv=none; b=ddZ478C9pG9v3XiiYUkOmDPICjAZGIAQCGbjE7K3/jhetnW7Of7PYPmNtGy95sLBV05z2f2tRViyBV6oNZoFm7qzN2xJwac4a+S7u+CHeWTfjIWHa5lJEa575Pu26UIYsLVTcN8LqU2UrrIc1bWMzo0Z18098cp+9smx9ZL0Op4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725356204; c=relaxed/simple;
	bh=togQe/GGq6SziZ6T0fB/y/Kop1Ebns5gKjzqMfo6/x0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Z8MSBixtosuEsqcaHQ25c0LUKgdCABLHOm7IhkYaG4Yupf+ROt55uKrzGp4mmbNTse1Fa5Em1r1wETP78AdxFfurP1WZ9ljKEY5efg9uEoxuIwIsBECFfpcG3/dD40H4ZGraRYQj0eIpBtBkPOO2Dj1hG9EgABwc8X/vPvvdHyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=3SA3FyRP; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-374c5bab490so1308153f8f.1
        for <devicetree@vger.kernel.org>; Tue, 03 Sep 2024 02:36:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1725356201; x=1725961001; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SYq6vD5N4uatwT7apnc7QKBLGGoT0UMnQ2xnutkqvDU=;
        b=3SA3FyRPk65aXPzq+btZ6wdGOxbvQwhdRwcZFTy0bsBeVKrCs1mypMn7yLKtasVy8Q
         ZPdwLC5yr7ywwrotjyYvCwlT43Xh4auIx3JH0BnJHaGBukRDPAP8Rki3n5x0ahkVrfM2
         wDyStOE/sYFHSbp7mtYkLmE1kdOBgYBBSrO9eJHSH53K/m5kWzBFDLr6hcbRleVcYPPW
         lk7ogX55Upll8bwt3Si/Y8GHZ8vWnN7C4PvDY70bZqDIIYl5oGN8zsWIG981maS8emQy
         3NIwYspouBiswKeqbLGP394GHPmRteOnAomR6eGlfdywTyyD767nyWs5rkbaMz0MhM5B
         4Udw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725356201; x=1725961001;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SYq6vD5N4uatwT7apnc7QKBLGGoT0UMnQ2xnutkqvDU=;
        b=MPUa7qeNvw3Q0oU328y8srA6bS4HuHytpqAu0FzpIq+ATXYp/pR/4BB1BarEU0E8jX
         +WNWpAWzHmcNesQq383xq5OuVmJCs4+B8TCOJN7wWsycdNJKQKSx2U4nyM8oged+YbrQ
         6KBvLuIWukr2KTpsjPoXXW/U3ImfBHMeEnrCL72PMkYYp2AdilysTtcYsJw8NXpRlrPt
         xuKVJVwoaOI8tJrGP/aa6ZWYg7NI91k6g+IxexID7kYek+LNb+kDVm/QgL6SAHoBcJWL
         vOS6Rv1awi10BkaygQ0MiipdK545THV6zMCGRsEFg40/hrWXt5ki8faGP2CN7rZlAqCi
         QJrQ==
X-Forwarded-Encrypted: i=1; AJvYcCUhx7lQtKoTUFGiRrmcFzXgZBBhWvuaCYs3L7/dZQyLGPeevFTbHx5qYZ0mofmnE2T9Z4zCNN/hwqrz@vger.kernel.org
X-Gm-Message-State: AOJu0YxPaQmXg+JEuUdxsMuvQocQMmURqs6ksKlE99baXRQxp0HlN+H4
	EAPBIfs5P/shBGfVMqvyJzORJqMsSiwjcg1YN5voUXA+6vc/di3vO4IhogJgDSc=
X-Google-Smtp-Source: AGHT+IFBqUWAg139WelJyM5R44QX5Qh0Z/xq+H7PA7Cur/H88ost1X+Rjoch/L1MyvyD7ispzQel/A==
X-Received: by 2002:a5d:6d06:0:b0:374:d24f:7a24 with SMTP id ffacd0b85a97d-374d24f7ae3mr2757756f8f.24.1725356200649;
        Tue, 03 Sep 2024 02:36:40 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:dc:7e00:e61d:37d0:a59f:d06f])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-376914bfca1sm790793f8f.18.2024.09.03.02.36.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Sep 2024 02:36:40 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: [PATCH v2 2/3] arm64: dts: qcom: sc8280xp-crd: enable bluetooth
Date: Tue,  3 Sep 2024 11:36:27 +0200
Message-ID: <20240903093629.16242-3-brgl@bgdev.pl>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240903093629.16242-1-brgl@bgdev.pl>
References: <20240903093629.16242-1-brgl@bgdev.pl>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

Add the bluetooth node for sc8280xp-crd and make it consume the outputs
from the PMU as per the new DT bindings contract.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc8280xp-crd.dts | 59 ++++++++++++++++++++++-
 1 file changed, 58 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sc8280xp-crd.dts b/arch/arm64/boot/dts/qcom/sc8280xp-crd.dts
index ec6bed8395b1..eac3a6ce0b65 100644
--- a/arch/arm64/boot/dts/qcom/sc8280xp-crd.dts
+++ b/arch/arm64/boot/dts/qcom/sc8280xp-crd.dts
@@ -20,6 +20,7 @@ aliases {
 		i2c4 = &i2c4;
 		i2c21 = &i2c21;
 		serial0 = &uart17;
+		serial1 = &uart2;
 	};
 
 	backlight: backlight {
@@ -275,7 +276,7 @@ usb1_sbu_mux: endpoint {
 	wcn6855-pmu {
 		compatible = "qcom,wcn6855-pmu";
 
-		pinctrl-0 = <&wlan_en>;
+		pinctrl-0 = <&bt_en>, <&wlan_en>;
 		pinctrl-names = "default";
 
 		wlan-enable-gpios = <&tlmm 134 GPIO_ACTIVE_HIGH>;
@@ -746,6 +747,27 @@ &sdc2 {
 	status = "okay";
 };
 
+&uart2 {
+	pinctrl-0 = <&uart2_default>;
+	pinctrl-names = "default";
+
+	status = "okay";
+
+	bluetooth {
+		compatible = "qcom,wcn6855-bt";
+
+		vddrfacmn-supply = <&vreg_pmu_rfa_cmn_0p8>;
+		vddaon-supply = <&vreg_pmu_aon_0p8>;
+		vddwlcx-supply = <&vreg_pmu_wlcx_0p8>;
+		vddwlmx-supply = <&vreg_pmu_wlmx_0p8>;
+		vddbtcmx-supply = <&vreg_pmu_btcmx_0p8>;
+		vddrfa0p8-supply = <&vreg_pmu_rfa_0p8>;
+		vddrfa1p2-supply = <&vreg_pmu_rfa_1p2>;
+		vddrfa1p8-supply = <&vreg_pmu_rfa_1p7>;
+	};
+};
+
+
 &uart17 {
 	compatible = "qcom,geni-debug-uart";
 
@@ -891,6 +913,13 @@ hastings_reg_en: hastings-reg-en-state {
 &tlmm {
 	gpio-reserved-ranges = <74 6>, <83 4>, <125 2>, <128 2>, <154 7>;
 
+	bt_en: bt-en-state {
+		pins = "gpio133";
+		function = "gpio";
+		drive-strength = <16>;
+		bias-disable;
+	};
+
 	edp_reg_en: edp-reg-en-state {
 		pins = "gpio25";
 		function = "gpio";
@@ -1090,6 +1119,34 @@ reset-n-pins {
 		};
 	};
 
+	uart2_default: uart2-default-state {
+		cts-pins {
+			pins = "gpio121";
+			function = "qup2";
+			bias-bus-hold;
+		};
+
+		rts-pins {
+			pins = "gpio122";
+			function = "qup2";
+			drive-strength = <2>;
+			bias-disable;
+		};
+
+		rx-pins {
+			pins = "gpio124";
+			function = "qup2";
+			bias-pull-up;
+		};
+
+		tx-pins {
+			pins = "gpio123";
+			function = "qup2";
+			drive-strength = <2>;
+			bias-disable;
+		};
+	};
+
 	usb0_sbu_default: usb0-sbu-state {
 		oe-n-pins {
 			pins = "gpio101";
-- 
2.43.0


