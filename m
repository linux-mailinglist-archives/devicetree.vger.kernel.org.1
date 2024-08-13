Return-Path: <devicetree+bounces-93410-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 60355950CD5
	for <lists+devicetree@lfdr.de>; Tue, 13 Aug 2024 21:07:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D1A331F248C4
	for <lists+devicetree@lfdr.de>; Tue, 13 Aug 2024 19:07:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30CFD1A4F32;
	Tue, 13 Aug 2024 19:06:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="Aex+Uuzm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 644B21A4F03
	for <devicetree@vger.kernel.org>; Tue, 13 Aug 2024 19:06:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723576010; cv=none; b=oos3nYM8JFRleyZOhtZI5I9W15OUPIxMIhgerbgEkgu2QuRZOHdABOlVMyNvHysRj0gXgRLMYCktUeaj4makMGsPIgJpAWgLClze6MjUmN/ASCJ1lnuTDINwwJHcbSsm4PAOEhl+uU7R1zdzdSbPEzEcO2Ihd/2/rpDQeqk/e4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723576010; c=relaxed/simple;
	bh=gtgHTM1UFxXrz9L4YtJBp3T3xUlW0gwlZPb2v+0ZPoM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=DD3lquksXckpEMQfMRbelrulQqLMsk17GKYxSCNOvCFSKwQRZEBOu6WFhvnb38CTHxHpdAlhmQZ6UuHEpgqiLhHZeesJY0HY34HLNL7d5wvcjSEHpkBuo0rVa4voC5O8/myB+DE3f1ISNWPVpBweC43jdXZKskbyMcS1o6RrLiQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=Aex+Uuzm; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-3683f56b9bdso3859209f8f.1
        for <devicetree@vger.kernel.org>; Tue, 13 Aug 2024 12:06:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1723576007; x=1724180807; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qyC5WYmPikp2EDuYrl/4Ll75exF20mPZuNB2+scoNMA=;
        b=Aex+UuzmwVOCCZ3LN9hJHk0Etb8mPZmFmniGGSffe2tT88m/J0DN0Rh3vV/vDBeiff
         4Zha7qM/S0zCFwTD6omfPezKpUKu5sQaGD4o7pHsrw2CsLFFeJsT5PjkmtWighryj1fS
         EHt0vvDblHyjCur9+UglJ5ymbjp8CdhbsWJ3bWxR6aIpEHLlMWtRHtuuF6173QqMAgl/
         N36NBt4t3Qox6DIkUqX9ridAO/t2qWUWZHZkvibkGpmLAxR+UTk2B2J/PwVdL64yXBH0
         gLRd16WBXOzVBjklK2toXj+u4Fysq/qyPRuPsD/swm+/JjQ43oh8xvnAQGictmzHXEht
         Hkmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723576007; x=1724180807;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qyC5WYmPikp2EDuYrl/4Ll75exF20mPZuNB2+scoNMA=;
        b=JHoOvaddjPqVV69TZwskSrG3WM2B4+vfLqC0LLzCWQ8R5aCGpJucA3knvf+0t6otqx
         NlUDMhkbjX7bccnxqcvgsdJQABjaNpv5JxvwqfLhqN9EJvckqMd+df08VCkCivG4rQWg
         opmZuc32nHifWyNbmeQimDY928oIjlBTZc/aIVdLKcEm99bv7wt5LTjreSFGdyEDneBs
         7SpzWDUpbiGEpVCQ8P0DEwYDLy5SdQpylgzz5RkWn3g1nl6gbsAJSM0NaCQpsPojf4bz
         giKN75SKuisi6cJigkxAWMH/6kteIPnX/52qKbUN8FcHS9P0u5Rz6CWYx7yUelIqd8U6
         PiHQ==
X-Forwarded-Encrypted: i=1; AJvYcCUkOc2p8RMi2BXXH4mq6x7TBoAZ5xHW466N5OT7xSFdvZNV8tVjbcJu1AWNMgBKEREhXnZnqpGWr8cFPthmd2sJQWufZQ38X+83Aw==
X-Gm-Message-State: AOJu0Yxmmcj+YskFlYR9HoyyZHCnWdAQtjHtaa/NvDa8cDGyRUDtWQI4
	uKmGSkVhIALFkeZ3RNtCixpeDgkExoj0frDxVuRTpmvWhIeaLKXVWibzgs6tWoZ58kEIwlflVj2
	RZew=
X-Google-Smtp-Source: AGHT+IGzXg3WdIQJuxglC6GveKMWthtuWY220LgDgDf+hmPjQ/gE3oB1s6MU25/YGuAQ8xF6PgHT2w==
X-Received: by 2002:a05:6000:b44:b0:368:334d:aad4 with SMTP id ffacd0b85a97d-371777696d6mr352147f8f.4.1723576006613;
        Tue, 13 Aug 2024 12:06:46 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:dc:7e00:3979:ff54:1b42:968a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-36e4c93708asm11119358f8f.29.2024.08.13.12.06.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Aug 2024 12:06:45 -0700 (PDT)
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
Subject: [PATCH 2/3] arm64: dts: qcom: sc8280xp-crd: enable bluetooth
Date: Tue, 13 Aug 2024 21:06:37 +0200
Message-ID: <20240813190639.154983-3-brgl@bgdev.pl>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240813190639.154983-1-brgl@bgdev.pl>
References: <20240813190639.154983-1-brgl@bgdev.pl>
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
index 57efeefbc89e..7bd7cd310bf0 100644
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
@@ -748,6 +749,27 @@ &sdc2 {
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
 
@@ -893,6 +915,13 @@ hastings_reg_en: hastings-reg-en-state {
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
@@ -1093,6 +1122,34 @@ reset-n-pins {
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


