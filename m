Return-Path: <devicetree+bounces-190373-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3963FAEB8FA
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 15:30:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B434C5648E9
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 13:29:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F62C2DCBEE;
	Fri, 27 Jun 2025 13:29:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mHWPnCeU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 085A22DAFB0
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 13:29:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751030978; cv=none; b=s2hYRnuK5vQV/1nbPu7d50I7VcxEHg6XYsBuMuz/bMZGiU6DnhhE6usPxcUxNY7+eGVDBncqy8nJFk3M3tKCCCj15oR+Y6RV2mqic1pnyJH9QUIJQ1yHhwLBIpAnvWNqWKDsgIMqP+bOxSd80H8snX/4LMr1PQ0iaPA/sshV5ws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751030978; c=relaxed/simple;
	bh=c52L8F3youBOHwKUZLMi0OEdi/l/vlphIPQtPA1vy1Y=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=TdjwlMDxt5Hd4+daKZj03D7769Q2NOdbdjxsyQiy83v6o7NEBeK6zA5Evbl2Uj4XkfhHopQo/7XLuWLVVehmcghe4HK+jh9ih3bF1dbIWrHU19rHrbgGzCTIGft2XJVh1Tkx3Wz6HRKARa28l9bLFfxq4KWProXG7lauvnLIUso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mHWPnCeU; arc=none smtp.client-ip=209.85.208.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-60c5b7cae8bso3390027a12.1
        for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 06:29:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1751030974; x=1751635774; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Kq5LNL/kSi3uBykeBQ3vsMgUAnWMOb379Wxg3VYtEFQ=;
        b=mHWPnCeUqMgyeOscdwSspLDqet4Yy81Mi5GNtQqjcLMKGfB+uxLJONy0IdvS1Awp9g
         mdJt3/gyA2z6uG5VhlXMjGFYfaZsRXdi3JsvEFTbSpdW6FCmscFgHgWuwuomSTRNbecw
         AuoJjvGDIRGZr4f78tmSr3ciX6E/9tU+zi/59NSoDB3Fjr5RGXzNm7VW+h1zQm4ZgwnU
         Zewo09HqT6nFfzUdNrsP/ojXo+5j+IMCUbR9Y9YN5PUeBIdeJJM+cVQqf1lnN8yldu2C
         QDqRraeowF3hJvvqDNXrgN3cO0af7aNXYj2T2TGX5lU5/VtB7fKr554PImsBnE2ogY4t
         xjGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751030974; x=1751635774;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Kq5LNL/kSi3uBykeBQ3vsMgUAnWMOb379Wxg3VYtEFQ=;
        b=FnWp/XUM/Yt54Q05Us47WOw/bOyg6ODwJltiHwpsIAJ+FpL8AtcRj/+vnSdiPr+RbL
         L/+xT+3EeOBHMEBgMTR7N2EPM0atvTojEsWKSdVhgrcZochm+8Ugfx+/EjRkMn6SNSRf
         oamWaVnAxW7yMjfPsl+Fx3HiG0aEz7QKKj+b2VYGJb+n/yE24s6UXBNHDoF08rajoVj7
         rLquJuEGrGMJbacTb32NFU+0YNyMKv5E7XSHGjIFob9B9Qm2Lq/RDZCY15pW1+BA3k9j
         19p+dCUw4ZoEdNCgAwN+SlGaJWMSoVgNqFmrJ+Ds42tBzUIck4iWq6B5MzcDa4ZoMDd9
         UI0Q==
X-Forwarded-Encrypted: i=1; AJvYcCUDvgL4Szc/hS9GWkz7J5uVJ45Bw4Nflll4tUf+dvJmFl3OQJXJuNgLEP3MW+KOOhYT5a3ezwqFw+Mp@vger.kernel.org
X-Gm-Message-State: AOJu0YxJypHdaorRo2a+lkc3/E+X3Tk1bjJhEwVT8A/QAvO/fRZmUsfG
	rzrCkR8YjtYc/Kty7GE6QnfP7D5RON76eC7AC+77C80d6MpCf+i1KneEuthvC5gN1Pc=
X-Gm-Gg: ASbGncsutAo9tluHfJsU+FZCzy7soD69sHmcVfLGRDX1CaUHrIbLlgvx912WEyY63VL
	uPkxF1FdFKy3HtQgLReTxhLlK33Zlar44/wPtayFVRJwZCb19y63lgm+boq2wXd5OE1yKOMT2Cl
	5//Wd35EJJrRLw8yjM5HwwqtMxQo3A4bAgNNfcs0zmrA0IenixMvfNZgmdXqe5OPfakUzvgpLIL
	wc5kBlZyv3kcGOkGbxltx8C6rv4sWLC7+Cc8vyHx8VIlvxkPktQqgdW88KiQSf4VA966AQjkBUC
	v94DaBELp6LwiI7sPlr3fbRg9xrqB/8y6IVeWUBo1A4G8y/zIrW0B2hMixKszHugIrwaOzhZa3/
	MMf0boQV0xy0kt29mH079lrK+XyTE20SH7w9OTG1lyTBsmg==
X-Google-Smtp-Source: AGHT+IGd2c4uK8qXV/NnRe/7QQfP8S5dEOVPWCDF2KTWWSLjQcHtuBqYQ3SI9sPGJlwdlQ6x9htklg==
X-Received: by 2002:a05:6402:2101:b0:607:116e:108d with SMTP id 4fb4d7f45d1cf-60c88e72f3bmr2327472a12.21.1751030974100;
        Fri, 27 Jun 2025 06:29:34 -0700 (PDT)
Received: from puffmais.c.googlers.com (140.20.91.34.bc.googleusercontent.com. [34.91.20.140])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-60c82908297sm1462702a12.26.2025.06.27.06.29.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Jun 2025 06:29:33 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Fri, 27 Jun 2025 14:29:32 +0100
Subject: [PATCH 3/3] arm64: dts: exynos: gs101: switch to gs101 specific
 reboot
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250627-gs101-reboot3-v1-3-c3ae49657b1f@linaro.org>
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

gs101 (Google Pixel 6 and Pixel 6 Pro) supports cold- and warm-reboot.
Cold-reset is useful because it is more secure, e.g. wiping all RAM
contents, while the warm-reboot allows RAM contents to be retained
across the reboot, e.g. to collect potential crash information.

Add the required DT changes to switch to the gs101-specific reboot
method, which knows how to issue either reset as requested by the OS.

The PMIC plays a role in this as well, so mark it as
'system-power-controller', which in this case ensures that the device
will wake up again after a cold-reboot, ensuring the full power-cycle
is successful.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 arch/arm64/boot/dts/exynos/google/gs101-pixel-common.dtsi | 1 +
 arch/arm64/boot/dts/exynos/google/gs101.dtsi              | 5 +----
 2 files changed, 2 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/exynos/google/gs101-pixel-common.dtsi b/arch/arm64/boot/dts/exynos/google/gs101-pixel-common.dtsi
index c1b51f4cfb8c174852b44690f84ed1aa0b4057c2..84ff3e047d3b31b5f96d4d6c78ec933bb05f3e6b 100644
--- a/arch/arm64/boot/dts/exynos/google/gs101-pixel-common.dtsi
+++ b/arch/arm64/boot/dts/exynos/google/gs101-pixel-common.dtsi
@@ -106,6 +106,7 @@ pmic {
 		interrupts-extended = <&gpa0 6 IRQ_TYPE_LEVEL_LOW>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int>;
+		system-power-controller;
 		wakeup-source;
 
 		regulators {
diff --git a/arch/arm64/boot/dts/exynos/google/gs101.dtsi b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
index 7fc3d803de39e654c1e8102b5e0f68995c3ab8e2..79a15fe7d336af3dcd9104d286bea525bb73e9e9 100644
--- a/arch/arm64/boot/dts/exynos/google/gs101.dtsi
+++ b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
@@ -1418,10 +1418,7 @@ poweroff: syscon-poweroff {
 			};
 
 			reboot: syscon-reboot {
-				compatible = "syscon-reboot";
-				offset = <0x3a00>; /* SYSTEM_CONFIGURATION */
-				mask = <0x2>; /* SWRESET_SYSTEM */
-				value = <0x2>; /* reset value */
+				compatible = "google,gs101-reboot";
 			};
 
 			reboot-mode {

-- 
2.50.0.727.gbf7dc18ff4-goog


