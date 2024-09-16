Return-Path: <devicetree+bounces-103332-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 86EF797A653
	for <lists+devicetree@lfdr.de>; Mon, 16 Sep 2024 18:58:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AA86D1C21B39
	for <lists+devicetree@lfdr.de>; Mon, 16 Sep 2024 16:58:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB88215C146;
	Mon, 16 Sep 2024 16:58:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tBOCr5Of"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDE9115A86D
	for <devicetree@vger.kernel.org>; Mon, 16 Sep 2024 16:58:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726505912; cv=none; b=rfmMH/exebxX4BL986a4dIm43u1W11MrbrdkBWOLnvsoJYOVnltbQH3Pgs81h+Ihh3DI9DJVJ6tTaxQp7EdfaE3jsa7dEEO1LaH9XV6oEJDw5/S7P6uuVXqp46ubA2fX7R95CqSEEItjGYaWLUFwkNHZ2dx4Eda0JJzjDAL5SZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726505912; c=relaxed/simple;
	bh=JUGwCQgDc1XQaJ20BNUbmsAs/IyKe+i8y/P3i/N6YLI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=rpOIZR9Z45LQSrdm7qmat4w2ShlYdjFbeRLmUsBq80otNuSw1TW6PH7kvaDAuTDWzvNnErwrUQbD8Tj/7w5VBYLd75aE8yAR5kmRJgGFI6wkPJloHVw+a+2njYiCpLMSRwoA51WiyEFVbZqxaemKWQi77A/VnTCK5WhDItwcf+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tBOCr5Of; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-a8d6ac24a3bso861897866b.1
        for <devicetree@vger.kernel.org>; Mon, 16 Sep 2024 09:58:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1726505909; x=1727110709; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=POee83DySvDnOivfI8SVt6siVzJDLaBFoZypeDiY6xs=;
        b=tBOCr5Of0nHWV7PJmzmHsQohEQbA8EBHueB5Bg7Ln6hOWZRpe0OOvGNB6252gZ8Ieu
         aVw2HlfNhlnA1ZkStKPQu3amrhxNyRCKFXUTnrKjX7xXHkWUPQ/yAIvHJVlSq2spNfuW
         9WrGCkba0DIEi/J0IJhzX5ct88PxXZFRKKiONC/l9qQm2qX5S7LwjGd2ZTqg/gWxy1nm
         zkuhLH6kJoXzZaJ55C3NlJBSXVplyZv/Nowd0e4lsbEm9v8OpSng0c2yk2jQw8cXSxXh
         6F4rsuAfJp7mCG8a6qJQhobHoNZ+1BtLtk3HQkzEkjmUnef6oT2iq3J/tc9qwMjTRWgj
         1u+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726505909; x=1727110709;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=POee83DySvDnOivfI8SVt6siVzJDLaBFoZypeDiY6xs=;
        b=jdatiaPmnFqIZj/FI6rwtZXqS5e4+gtQpua0br4QAx+d24lNGumQywVvY83klSHLI/
         3zMhg7d5g/spjk5m+OBkM8h2UzpfcmwToJ9FP+8c15/Yx90OkELtK5N+qN7K4B3rUaDF
         i35UvaGKCcEPiRiufQ1GurJkP2TmBYwm9rMQuUUQ+vIL0GcNn/sb3QURsEaWe6iWmmDN
         ukqhRfaFAZ8GI1l1k7Xn7RNZwfKzgxlaKRvaCkcxb3S0JdwSLf/78QyTjTYvwfXx+Zsj
         GKiHtYEc9A8DHPb7+wZscREfienXEeKwlD9YQOJ3MMfNkvPgLtlXfYtOr83BeB0ynDEB
         DkJg==
X-Forwarded-Encrypted: i=1; AJvYcCVg6hlrt/CtpiCDWtQHnzo880S6vaOmVPiz6O1KoDneGnzuTbx9u/zI8qXMwCoba75VDcrDQeJWu+76@vger.kernel.org
X-Gm-Message-State: AOJu0Yzn0xMJ67TzuJdSdSLdHYXALJOgKAAA6V/4Q7CrXjCwllXDdW/p
	MwsXatCP0tVYoYw/yNetWxLBF/2z+BemawKvrrfVuVM4rUd+DydO23uykpfG0fQ=
X-Google-Smtp-Source: AGHT+IG4lR4FfFrt1+aMIT+Isdeh2RHT8IgEpUYl774+4W1+M8HEGgjX7tXlhYp0yOF9k9KIgJQKQA==
X-Received: by 2002:a17:907:72d1:b0:a8d:6372:2d38 with SMTP id a640c23a62f3a-a8ffabc1d72mr2373277566b.18.1726505908867;
        Mon, 16 Sep 2024 09:58:28 -0700 (PDT)
Received: from puffmais.c.googlers.com (30.171.91.34.bc.googleusercontent.com. [34.91.171.30])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a90979ceb67sm32992966b.219.2024.09.16.09.58.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Sep 2024 09:58:28 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Mon, 16 Sep 2024 17:58:27 +0100
Subject: [PATCH 2/3] arm64: dts: exynos: gs101-oriole: enable max20339 OVP
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20240916-max20339-dts-v1-2-2f7ed7c24e83@linaro.org>
References: <20240916-max20339-dts-v1-0-2f7ed7c24e83@linaro.org>
In-Reply-To: <20240916-max20339-dts-v1-0-2f7ed7c24e83@linaro.org>
To: Catalin Marinas <catalin.marinas@arm.com>, 
 Will Deacon <will@kernel.org>, Peter Griffin <peter.griffin@linaro.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>
Cc: Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.13.0

Enable the Maxim max20339 OVP with load switches.

This is the first device behind the USB plug and can gate all incoming
power as well as protecting the input path from overvoltages.

Its load switches are used for wireless charging and for OTG.

Regulator and GPIO line names have been chosen to match the schematic.

Note that its interrupt line is connected to a Maxim max77759 and
supplies are connected to a PMIC and to a boost regulator controlled by
that PMIC, none of which we have drivers or DTS entries for at this
stage, so those parts have been left out.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 arch/arm64/boot/dts/exynos/google/gs101-oriole.dts | 51 ++++++++++++++++++++++
 1 file changed, 51 insertions(+)

diff --git a/arch/arm64/boot/dts/exynos/google/gs101-oriole.dts b/arch/arm64/boot/dts/exynos/google/gs101-oriole.dts
index 387fb779bd29..a3276aa91091 100644
--- a/arch/arm64/boot/dts/exynos/google/gs101-oriole.dts
+++ b/arch/arm64/boot/dts/exynos/google/gs101-oriole.dts
@@ -68,6 +68,12 @@ ufs_0_fixed_vcc_reg: regulator-1 {
 		regulator-boot-on;
 		enable-active-high;
 	};
+
+	/* This represents Vbus coming from the USB Type-C connector */
+	reg_src_ppvar_usbc_vbus: regulator-src-ppvar-usbc-vbus {
+		compatible = "regulator-fixed";
+		regulator-name = "src_ppvar_usbc_vbus";
+	};
 };
 
 &ext_24_5m {
@@ -90,6 +96,51 @@ eeprom: eeprom@50 {
 &hsi2c_12 {
 	status = "okay";
 	/* TODO: add the devices once drivers exist */
+
+	ovp: ovp@35 {
+		compatible = "maxim,max20339";
+		reg = <0x35>;
+		/* TODO: add interrupt once driver for max77759-gpio exists */
+		/* TODO: Update this once PMIC is implemented (PP1800_L2M_ALIVE) */
+		dig-supply = <&reg_placeholder>;
+
+		insw-supply = <&reg_src_ppvar_usbc_vbus>;
+		/* TODO: update this once boost regulator exists */
+		lsw1-supply = <&reg_placeholder>;
+		lsw2-supply = <&reg_placeholder>;
+
+		gpio {
+			gpio-controller;
+			#gpio-cells = <2>;
+			/*
+			 * "Human-readable name [SIGNAL_LABEL]" where the
+			 * latter comes from the schematic
+			 */
+			gpio-line-names = "Vin valid [SRC_PPVAR_USBC_VBUS]";
+		};
+
+		regulators {
+			insw_reg: insw {
+				regulator-name = "PPVAR_VBUS_OVP";
+				regulator-active-discharge = <0>;
+				regulator-min-microvolt = <5850000>;
+				regulator-max-microvolt = <14500000>;
+				regulator-ov-protection-microvolt = <14500000>;
+			};
+			lsw1_reg: lsw1 {
+				regulator-name = "PPVAR_VBUS_OVP_LSW1";
+				regulator-oc-protection-microamp = <1460000>;
+				regulator-ov-protection-microvolt = <1>;
+				shunt-resistor-micro-ohms = <120000000>;
+			};
+			lsw2_reg: lsw2 {
+				regulator-name = "PPVAR_QI_VOUT_TX";
+				regulator-oc-protection-microamp = <1230000>;
+				regulator-ov-protection-microvolt = <1>;
+				shunt-resistor-micro-ohms = <143000000>;
+			};
+		};
+	};
 };
 
 &pinctrl_far_alive {

-- 
2.46.0.662.g92d0881bb0-goog


