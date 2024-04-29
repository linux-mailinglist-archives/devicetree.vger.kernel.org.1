Return-Path: <devicetree+bounces-63726-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6584D8B631D
	for <lists+devicetree@lfdr.de>; Mon, 29 Apr 2024 22:04:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1D864282926
	for <lists+devicetree@lfdr.de>; Mon, 29 Apr 2024 20:04:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 552C4141981;
	Mon, 29 Apr 2024 20:04:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fLjdDryL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A643D1411C9
	for <devicetree@vger.kernel.org>; Mon, 29 Apr 2024 20:04:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714421086; cv=none; b=lzs6nAztAxcDbTn0W8XIhvIdv+Pl5TrvWpGohA1hrYigS6g7f6vhC0MVxL/3wTPKMrmbGLhq3Eadv3PBhnDuAe21hrVLtdNH+1rY8erjFOZr3j62ti6Udw9Jic7oXwsVzZqLRVgmWlim2sgXDQO40iKGcK0GQEFf/LrH7W1RVVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714421086; c=relaxed/simple;
	bh=7Fu6Jlbw13SdHa0XnGxn0I2O9i5djBz4seEVD8va7pU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=EBCrnhJBrNBzyS8vjD9oo1Mlh3sIQiuZIbuAprHhFyducnyrxbN1yySVz8YHsOSLDJKgfa7XkQTT22RP40TZKOsniHjORYYDBHLKsoL9iHzhY+OMy+6+k4L6fGFUNP+hU0NemTh4LDR961J3EwVFwOMuUh52fURUDewt5JsJdVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=fLjdDryL; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-a58a36008ceso579759666b.0
        for <devicetree@vger.kernel.org>; Mon, 29 Apr 2024 13:04:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714421083; x=1715025883; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kTIyqFBJPzda0VZW9GqKLhD9vkmHPScIkEvgRsFUKyQ=;
        b=fLjdDryLJC5BSNtMI+aETY+xlgYaPErhHhIyVx0C2no4cyXMw1gKTvdaltuj2YxrhX
         WJtAbo6H4S4+p1MDJIa56SHDOxDl9LOFWuK4dHAo4Y2d9F10f87mvo0jPIWTn4OJQgPq
         Bq4VomiBAEOa1Pt4fGclFUb6IkeOdEXrMTTVXPrxretdAyv+f+QPD7m1kYR6jf6PiHpq
         rjIcs17bR50Jb4jDKQtsKzJ6fH7NgVC7Z9ye0ym1cUZUFjy0gzAjdYQPs6KuNH8DRJvG
         HGBt/XJpT0UKMk1zfg+23Zx39/pV1xeX3Ey3appTBi90fIQcslgeh9gA66W0GOQpD2d+
         zvog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714421083; x=1715025883;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kTIyqFBJPzda0VZW9GqKLhD9vkmHPScIkEvgRsFUKyQ=;
        b=N30McWkFbwRGZ0m1t4zeT4SdmG7eKajNUrNM2vPx4GvNUnkU5XNsg1p8BMe5n+lTsL
         Z7xOxzHXTgrHqrWtxYBA5fZ1cU8B6adNzTmhHXu0bp5AeTMdUqZ+XZoBV1sSCO2KTx5s
         OhuM/RrG9ZFflLdYbZ5kElNHO3+9gPNIv8PYjj/eooIpSDZmsjU19ZZr9YoVhDE/kh3Y
         NmFT65LcgZP0RqNKH/Q04qfyr62136dBOekrzUhTZfSNKKeQD38WN3V/kL6NqcmmZ8Kg
         mfh4zQwR1ezBeZqqdqKeuXGmW/kpNTa0O9c8lgOVm1jSL2w9p+jflV2MsvVtuJPa0Y/c
         PH8Q==
X-Forwarded-Encrypted: i=1; AJvYcCXgbD1y7VaA6oJimGklGspIt1E07Z3W4n5MwToiEBDoQVzZ52HBv8W7GL6fuwfq+N3aU59MhjpQ/GIyDU7jpcztoUJGW4Tfbs3A3A==
X-Gm-Message-State: AOJu0Yx0wl9XGxvC0fNggymYS7qwdzEe+Vz7hFSNH4Yn/GzjXmkWcQEH
	octdhpkux54pf5SfRYLA6OTo9URZ8N2d5gS3qGwd6DP75OfMJLIDrR+E3Ay5t30EFyXKIRdKylJ
	hscw=
X-Google-Smtp-Source: AGHT+IFrVmD0xJ3K/FTc8IS9J3OWcv2cL/oVB/L45gv/sPVgmJu3g8vcefS7dlTqaz4W8wKmofNoqQ==
X-Received: by 2002:a17:906:5811:b0:a55:b12c:6589 with SMTP id m17-20020a170906581100b00a55b12c6589mr7274277ejq.36.1714421083177;
        Mon, 29 Apr 2024 13:04:43 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id ld4-20020a170906f94400b00a5906d14c31sm1140887ejb.64.2024.04.29.13.04.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Apr 2024 13:04:42 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Mon, 29 Apr 2024 21:04:41 +0100
Subject: [PATCH 4/4] arm64: dts: exynos: gs101: specify placeholder clocks
 for remaining pinctrl
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20240429-samsung-pinctrl-busclock-dts-v1-4-5e935179f3ca@linaro.org>
References: <20240429-samsung-pinctrl-busclock-dts-v1-0-5e935179f3ca@linaro.org>
In-Reply-To: <20240429-samsung-pinctrl-busclock-dts-v1-0-5e935179f3ca@linaro.org>
To: Peter Griffin <peter.griffin@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>
Cc: Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, 
 Sam Protsenko <semen.protsenko@linaro.org>, kernel-team@android.com, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.12.4

The pinctrl instances hsi1, gsactrl, and gsacore need a clock for
register access to work.

Since we haven't implemented the relevant CMUs for the clocks required
by these instances just add placeholder clocks for now so as to make the
DT pass the validation checks.
Once the clocks are implmented in the gs101 clock driver, these should
be updated then.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 arch/arm64/boot/dts/exynos/google/gs101.dtsi | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/arch/arm64/boot/dts/exynos/google/gs101.dtsi b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
index f8fcbbb06e7b..6db2c9bbb371 100644
--- a/arch/arm64/boot/dts/exynos/google/gs101.dtsi
+++ b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
@@ -180,6 +180,14 @@ HERA_CPU_SLEEP: cpu-hera-sleep {
 		};
 	};
 
+	/* TODO: Remove this once all pinctrl clocks are implemented  */
+	clk_placeholder: clock-placeholder {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <0>;
+		clock-output-names = "placeholder_clk";
+	};
+
 	/* ect node is required to be present by bootloader */
 	ect {
 	};
@@ -1309,6 +1317,9 @@ usbdrd31_dwc3: usb@0 {
 		pinctrl_hsi1: pinctrl@11840000 {
 			compatible = "google,gs101-pinctrl";
 			reg = <0x11840000 0x00001000>;
+			/* TODO: update once support for this CMU exists */
+			clocks = <&clk_placeholder>;
+			clock-names = "pclk";
 			interrupts = <GIC_SPI 471 IRQ_TYPE_LEVEL_HIGH 0>;
 		};
 
@@ -1380,11 +1391,17 @@ wakeup-interrupt-controller {
 		pinctrl_gsactrl: pinctrl@17940000 {
 			compatible = "google,gs101-pinctrl";
 			reg = <0x17940000 0x00001000>;
+			/* TODO: update once support for this CMU exists */
+			clocks = <&clk_placeholder>;
+			clock-names = "pclk";
 		};
 
 		pinctrl_gsacore: pinctrl@17a80000 {
 			compatible = "google,gs101-pinctrl";
 			reg = <0x17a80000 0x00001000>;
+			/* TODO: update once support for this CMU exists */
+			clocks = <&clk_placeholder>;
+			clock-names = "pclk";
 		};
 
 		cmu_top: clock-controller@1e080000 {

-- 
2.44.0.769.g3c40516874-goog


