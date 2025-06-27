Return-Path: <devicetree+bounces-190372-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B715AEB8F4
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 15:30:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CBCD45648FD
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 13:29:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C6F3B2DBF6C;
	Fri, 27 Jun 2025 13:29:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="o63VOEKY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91BA02DA75B
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 13:29:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751030977; cv=none; b=iOLdws71lLQbxxLo7Crs3/YMnGDJUMzCxwJfzOuN8JQ7wfKpfJCqz3Q5ZJLLAgamKpGe7tD+DHSsT8pFpBbpPAXpJo+WudC3coI8h1ScBjA/ciTSyrHcBX9SE2UqscU3IImH+nM2P0j9j2tKzrgdkAdFeULXlFKFaqNwZi+fJds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751030977; c=relaxed/simple;
	bh=3Km3fcNcSPZ2Pb31AkgSOmK8Yw3sAe9TSLDvBZGtkMI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Uh6LYlsKkOVgEGLHjLwtP3cW22Fcdr+Ys5rqj0lZ3uVd45E9zUB9IOw6I2atBmLG5PHI1aFK+Sw4UblJUHTJMgCE/pWyBal4hzOBh4MGJ6g0m//FmCdUlpFOkt7Wqe8X36A6alr/6RACu2ldEexyf7AwL8L8iko8Eh5tgP/TL44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=o63VOEKY; arc=none smtp.client-ip=209.85.208.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-607cc1a2bd8so3507615a12.2
        for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 06:29:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1751030973; x=1751635773; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=97dsq8shbijTwl1Kc6C9X7zbEyd2fSdds/39rteFriY=;
        b=o63VOEKYRWpqWTmMxuipc6iLDL7rnLKHXZgNtz7pjFZWNbs3r35I2aZlwspkTgzvM5
         s/7jlLJ1k5PMUHXkdGe633aoJnEP8MF/XGo4pRS0lDcZFqwDpLVSslUfGvMviP0368YJ
         /02aVgQZlPOOr6661zIu8DhMImKic5JtPuMRqi0az8l8ulZuhFf8Y9TZ+2TDkgYCPOB7
         hMyNR+Ajq93ofHNYoD8gBp+KTe26j3hau6hUh3RrK7spnq9py29jIQ6zJsyJJs1tsKgq
         Olb7kcqPDWJRQliMqH7BG+aVdbfdr8bCC6Y1DI4V67bX3897fVenEqca6LThPhE3fffD
         x4Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751030973; x=1751635773;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=97dsq8shbijTwl1Kc6C9X7zbEyd2fSdds/39rteFriY=;
        b=f+dy4hkbz4nh8HM2hqTLf3OkN+wqlhLg9HRTXhB6xboX3yraBJLedJ4m8jk1qIWoGD
         Jmc9ZV2hAdmdHARyRkCHkzJ9/qW9rTE73/V5+msBnE4g/wbOvo/MPxvmfSZ8iMrZPM4d
         L1CEWJRDX3HigOHJ4RSLx8rtZUEOJnivYk0KXfP+PqfVcvVy1Ik7vdl2fCAOIuK8VsFK
         8xoObx94ctyA9thHK5EGz52kvdECxbv+6RtwnTqGwOLsmaFIxvaWlYQqxj+K8BTBnDEd
         qDtciDj16f9dNIrazHYWAOe2jDprQqQn+H9VkM2rJQeEb08wYVcT5fS2Nj1Nb6jbUlbL
         wxpw==
X-Forwarded-Encrypted: i=1; AJvYcCWtVBN03xGODGpuSPL6CuOTzc6P1Ke5n+kWdrycrox5ZtLE3UPcU9h0el4JlEXFgXx+aU7bgn22jCF7@vger.kernel.org
X-Gm-Message-State: AOJu0Yybiv7AqfV+mZZFrhvkBx2aSntoaA+PlC5mT/8cQJfvR/4BD9OD
	EqZYg4ZtZEXhFb1JD88KL8Sd53q9mgnZ1RJrKmZuJncegjrFI1OseeaeyT1i+IIzGfs=
X-Gm-Gg: ASbGnct9vRLJmvCewTFuhOkwlhn/YZIfBr+viQmwgUv6qjeitsrz2zanDYk+I8H3ioK
	Qwjk5cXRLg4r8AiPF+gIQXFN3ESJWirS/F7Decl5w6MuGBqwhVMgff3KnoOEBM97JFIhSCInPro
	+Ij9GCMIW4unWVc6v0pYCfZRRPxDeHu36AHArbYpyOVp9iqkzM4ZiKmFyUsPpfdhQ5/Q2iSXXZm
	kzhk7KNvhtR1xNPqVEAnFX9pWcCYSA8L45ty+FfBLlkqmLFTtItiilisVbKJ4oxJ9Cyj0RaGsrs
	VnfYH9GLBa07gFxvVTMufw7GrS0jjO2+KYL7asSW6cwQY6C+JWIwe66bPjIIeBghVauSO4tlctZ
	9tkmxk6hti9bEKrayveqbbMrpkLZPF2oI4dD1aNClU1w1Qg==
X-Google-Smtp-Source: AGHT+IGBgERbQ8JzXtKIK0Cr/Y2P+P8Vyd6f4ZzXNGWb2nY1h3VKwcv0VnVGjAGel1FVXEgEuaqQWw==
X-Received: by 2002:a05:6402:40cd:b0:607:ec35:eb8e with SMTP id 4fb4d7f45d1cf-60c88e72eaamr2655542a12.20.1751030973492;
        Fri, 27 Jun 2025 06:29:33 -0700 (PDT)
Received: from puffmais.c.googlers.com (140.20.91.34.bc.googleusercontent.com. [34.91.20.140])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-60c82908297sm1462702a12.26.2025.06.27.06.29.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Jun 2025 06:29:32 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Fri, 27 Jun 2025 14:29:31 +0100
Subject: [PATCH 2/3] arm64: dts: exynos: gs101-pixel-common: add main PMIC
 node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250627-gs101-reboot3-v1-2-c3ae49657b1f@linaro.org>
References: <20250627-gs101-reboot3-v1-0-c3ae49657b1f@linaro.org>
In-Reply-To: <20250627-gs101-reboot3-v1-0-c3ae49657b1f@linaro.org>
To: Catalin Marinas <catalin.marinas@arm.com>, 
 Will Deacon <will@kernel.org>, Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>
Cc: Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.14.2

On Pixel 6 (and Pro), a Samsung S2MPG10 is used as main PMIC, which
contains the following functional blocks:
    * common / speedy interface
    * regulators
    * 3 clock outputs
    * RTC
    * power meters
    * GPIO interfaces

This change enables the PMIC itself and the RTC. We're still working on
the remaining parts or waiting for bindings to be merged, hence only a
small subset of the functional is being enabled.

The regulators fall into the same category (still being finalised), but
since the binding requires a 'regulators' node, an empty node is being
added to avoid validation errors at this stage.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 .../boot/dts/exynos/google/gs101-pixel-common.dtsi    | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/arch/arm64/boot/dts/exynos/google/gs101-pixel-common.dtsi b/arch/arm64/boot/dts/exynos/google/gs101-pixel-common.dtsi
index cd8e1b8a10b111190b984e104f749d04514d0449..c1b51f4cfb8c174852b44690f84ed1aa0b4057c2 100644
--- a/arch/arm64/boot/dts/exynos/google/gs101-pixel-common.dtsi
+++ b/arch/arm64/boot/dts/exynos/google/gs101-pixel-common.dtsi
@@ -100,6 +100,19 @@ cont_splash_mem: splash@fac00000 {
 	};
 };
 
+&acpm_ipc {
+	pmic {
+		compatible = "samsung,s2mpg10-pmic";
+		interrupts-extended = <&gpa0 6 IRQ_TYPE_LEVEL_LOW>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pmic_int>;
+		wakeup-source;
+
+		regulators {
+		};
+	};
+};
+
 &ext_24_5m {
 	clock-frequency = <24576000>;
 };
@@ -290,6 +303,12 @@ if_pmic_int: if-pmic-int-pins {
 };
 
 &pinctrl_gpio_alive {
+	pmic_int: pmic-int-pins {
+		samsung,pins = "gpa0-6";
+		samsung,pin-function = <GS101_PIN_FUNC_EINT>;
+		samsung,pin-pud = <GS101_PIN_PULL_NONE>;
+	};
+
 	key_power: key-power-pins {
 		samsung,pins = "gpa10-1";
 		samsung,pin-function = <GS101_PIN_FUNC_EINT>;

-- 
2.50.0.727.gbf7dc18ff4-goog


