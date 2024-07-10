Return-Path: <devicetree+bounces-84570-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F96492CCBD
	for <lists+devicetree@lfdr.de>; Wed, 10 Jul 2024 10:18:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CCDDB281AB4
	for <lists+devicetree@lfdr.de>; Wed, 10 Jul 2024 08:18:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 316DE85626;
	Wed, 10 Jul 2024 08:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vX80bix+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84E9284E18
	for <devicetree@vger.kernel.org>; Wed, 10 Jul 2024 08:18:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720599513; cv=none; b=NvfJGDz352j31AUkkUCgYMZFCsjrJGL5p2nqK9qKI0qXGK7QK2vUjR3cU0FTn1IFr4OmhmHY89gpwWjMEZeMqNYeHqk0fARa+U7BDRGPwBGYxRoJyWEOpHsn4VGlqs3vW0tMlRleO4WPkncePYxCSVa7u3cYzuv6bmCI6uV46VI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720599513; c=relaxed/simple;
	bh=9m1cbq5+8fHq5QuRWShEEghuif5svrqXetyTg1PqpTw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=kkKrKaVl91CyeCMdiWIAMVmqUUcMuouTb27PtiAtaclQ+/4lY3JWu/91LKpl3pfUBeaEYtBW1kgOtQvvH4uKawVSr3n5/23Fw31zRzVM22IrEYA0SotpLEOZdWIbJ3yYEGAVA6tmRLk/fGpwZ5d18sCzPHwYcOYTxTPpkpw/LfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vX80bix+; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-4266dc7591fso17711375e9.0
        for <devicetree@vger.kernel.org>; Wed, 10 Jul 2024 01:18:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1720599509; x=1721204309; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=bwAYm3giDAIxDvJE+ZVtguYZXVFd6y+Ue9mW9JsRY5Y=;
        b=vX80bix+Dgbkr/EHFarXPmcmehnEqAgRcqedtSL9s1Ths2Ze7gTdiGRc8RaWC6jElA
         kqphoe6cbF2F0CrlAmhagskhMd/BGjR11e2jKrtgotFyzzYH5Ls3GIgInRWMYSru7lyv
         61GxbCrOj6vv7q99YI5qu1dltvCevNmj8M0secbXQT4tiitg7T1S6lwCODEg9wW4stAd
         MIK1/9y54yVFr9BDawrFI4J98gBmnPL7iDlSADjc3PPGBsJ4bI2uBF5M+wjrH6aRjZOd
         czoCyUgZrP6E0Wn/6uuQRIDfUqXNodD2ZWTwZ9Hg5G34MlYTqERBws9Km8Sdr4PQBEW2
         ZqOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720599509; x=1721204309;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bwAYm3giDAIxDvJE+ZVtguYZXVFd6y+Ue9mW9JsRY5Y=;
        b=CxBphPkAm+MaGzyiyVm5JAVRYtHo/zvUC2gaVvZlr9IvgObP4KLuTYwpekYMprGCId
         SBu2R+my5iean4VpOaqDgnw/vO6/SQnhvdipaTMRAy/7FI8de+k+UPQm/PVXGWcMCBUR
         2mMS/ski7R0uFx8n5xMKXXE8oSV2w+sIRfzrl+sa6PE9q+Mcm2mVKdOQBIAQBQWMB0XT
         r/xhfMZjHvHEV0gIrKOmqQ1dlN1WXj2sY6lZ3alLCbBE/syJq4KRz7XEt9qPQh40jz4B
         nD+vAxQWJHdnp2Eh4ROBX8V0dZXQoyvqMScGqhttD+oivJM4eVky8uPTPVHNRDTRN+x4
         qraQ==
X-Forwarded-Encrypted: i=1; AJvYcCWeWBbavSIWB9irYmCvNZiWM0H12+EIjkk8tN0ZUB2WgbIo2stpaS740grBIHDbAJhFgBNjJe/i0KWHSDZr2aMLgmPHP3PjQYTcyA==
X-Gm-Message-State: AOJu0YxGocIvLdsmXdT60vJyHDu15wr07ZIeVD0KjaXF/f/sfsJE9BTE
	Hgt2cxwMzKfLeZKFpclOwRQF1JqvCndDDS8Q3t3SuQwRiJid3faZoSMZJFQxA+c=
X-Google-Smtp-Source: AGHT+IHpF1MhI7/EXpOqXVUyQNe6vrR4Kn5NV63JCW0Z9wBg7sQ08z+KHfUxlkbSCr3uHNLxH/tesw==
X-Received: by 2002:a05:600c:2247:b0:426:5dc8:6a6a with SMTP id 5b1f17b1804b1-426707d7fd6mr32852885e9.21.1720599508759;
        Wed, 10 Jul 2024 01:18:28 -0700 (PDT)
Received: from [127.0.0.2] ([2a02:2454:ff1f:b240:97f4:d77f:bb51:56c5])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4266f7362d9sm69818915e9.30.2024.07.10.01.18.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Jul 2024 01:18:28 -0700 (PDT)
From: Stephan Gerhold <stephan.gerhold@linaro.org>
Date: Wed, 10 Jul 2024 10:18:20 +0200
Subject: [PATCH] arm64: dts: qcom: x1e80100-crd: Add LID switch
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240710-x1e80100-crd-lid-v1-1-0156e8a62af6@linaro.org>
X-B4-Tracking: v=1; b=H4sIAMtDjmYC/x3MQQqAIBBA0avErBsYNSi7SrQwHWsgKhRCiO6et
 HyL/x/InIQzjM0DiW/Jch4Vqm3Ab+5YGSVUgybdUa8Ii+KBFBH6FHCXgJ2xJgZeXLQaanYljlL
 +5TS/7wcMvHvKYgAAAA==
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>, Johan Hovold <johan@kernel.org>
X-Mailer: b4 0.13.0

Add gpio-keys for exposing the LID switch state, similar to
sc8280xp-lenovo-thinkpad-x13s.dts. Only the GPIO number is different.

Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e80100-crd.dts | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100-crd.dts b/arch/arm64/boot/dts/qcom/x1e80100-crd.dts
index 6152bcd0bc1f..889253ff5408 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100-crd.dts
+++ b/arch/arm64/boot/dts/qcom/x1e80100-crd.dts
@@ -6,6 +6,8 @@
 /dts-v1/;
 
 #include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/gpio-keys.h>
+#include <dt-bindings/input/input.h>
 #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
 
 #include "x1e80100.dtsi"
@@ -49,6 +51,21 @@ chosen {
 		stdout-path = "serial0:115200n8";
 	};
 
+	gpio-keys {
+		compatible = "gpio-keys";
+
+		pinctrl-0 = <&hall_int_n_default>;
+		pinctrl-names = "default";
+
+		switch-lid {
+			gpios = <&tlmm 92 GPIO_ACTIVE_LOW>;
+			linux,input-type = <EV_SW>;
+			linux,code = <SW_LID>;
+			wakeup-source;
+			wakeup-event-action = <EV_ACT_DEASSERTED>;
+		};
+	};
+
 	pmic-glink {
 		compatible = "qcom,x1e80100-pmic-glink",
 			     "qcom,sm8550-pmic-glink",
@@ -918,6 +935,12 @@ edp_reg_en: edp-reg-en-state {
 		bias-disable;
 	};
 
+	hall_int_n_default: hall-int-n-state {
+		pins = "gpio92";
+		function = "gpio";
+		bias-disable;
+	};
+
 	kybd_default: kybd-default-state {
 		pins = "gpio67";
 		function = "gpio";

---
base-commit: 6fd4da15c334831a865d4700ceb3ff5a917163e3
change-id: 20240710-x1e80100-crd-lid-4393fdebaf92

Best regards,
-- 
Stephan Gerhold <stephan.gerhold@linaro.org>


