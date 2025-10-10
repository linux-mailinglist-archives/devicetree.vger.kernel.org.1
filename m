Return-Path: <devicetree+bounces-225428-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id C87D5BCDE76
	for <lists+devicetree@lfdr.de>; Fri, 10 Oct 2025 17:56:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id C6F8D4E140C
	for <lists+devicetree@lfdr.de>; Fri, 10 Oct 2025 15:56:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 44A922EDD76;
	Fri, 10 Oct 2025 15:56:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OUZh9YSE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5601327877F
	for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 15:56:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760111792; cv=none; b=d/0XUM4VkeAHb+NXG0IT5YNiF4dJGQXycPr5TK96mnEzmZLAebDQG7EijS4fFOtCbPC0FgXBdvqjl+dbvbge+ZzlT2PQXhoZHg11jKS4zAAdnKIhMPk0p2gNyDyDCIftuYxnVqZEw+Zccryb2nmho8+YiCi7JY4WjyhxtqEiGEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760111792; c=relaxed/simple;
	bh=qy58+hYfxQW2mQ5sz6S6JQNjtjzjW3pl/fdczNT6W+c=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=NFN8WlQ9pgcF+jHSG3oTqMWSaoQCz+/rTspn3YSAo5StUyNqWDFYckfQ/flK/iq97JvB020EF6FpJHjROCtL5L3+IA8GnY+zCyRgVRUG+siZoVS1H0iIV10us6Yr4flHQVg2N+BDDVED+YZ1Snba/TGfmiRHukjyWNnKiorND5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=OUZh9YSE; arc=none smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-63994113841so3926990a12.3
        for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 08:56:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760111789; x=1760716589; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=5ZoRFa4EgNbo9YHpT/rgkVAy6RF2nhrPvBGmNOSTvII=;
        b=OUZh9YSEqwPb6zNfLojcw+4urecEii+dnSI4Hm1nUOo2OU/9VY3GUy2hEDase9DnoJ
         ryGFcI4Yom2LUHLmcEQGhNPyh/GU7tOkJ47UT5VM6AkY6fLNwJYwtDoRtk5urFVsBM7B
         41fdr0+xYkp+AqWU4RDR3MZGDAxjyv7JVbGBZiamhNWZl59fgprXnuo2aEYe3Nlok7SR
         LVYBcoUuZ+Pat/boIaedK+tfDRkkMOa6CMI95BFZJeEvJlGUnY2cxnb0LSr5U229Yaqt
         yTGTRoAFRxMF7gLSY3w+qvNI3rJf0DKWHoOhvOkA2ndLNNuOke9qs/aYRNibuHACp4Lo
         zJaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760111789; x=1760716589;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5ZoRFa4EgNbo9YHpT/rgkVAy6RF2nhrPvBGmNOSTvII=;
        b=bZ4njHK9hQOx0eboXtEcYDe2h0Z8DUJyAUIXM8jSqVUD7XnUt6dbAgr66JtYRK+eIQ
         plf4aveVhh3kzFyNJeZILiPXL5PYb7gkn65NtaEnsQvFezEfEzvlTt2Z2/Yl5vegU++h
         z5blR4KjtHH2ZsBM1Jvdy9zXOkLOWoGsNPO9tkasZKiR+ZtYoUTPyqpKEK5sEj4Qw2Kt
         HgaPk+HMm3m4QaQspFpA58RWVJ9AS9JojoSjVGjWFpmezWLSmCaMhXgMKpFJuGu/42Pp
         M6O4NypWfv5FMcTWXrUq17vweyyzOt68LTwoVmrY/C6/n7c+wLiaqT1y6BEZzfUj6zPp
         FRfA==
X-Forwarded-Encrypted: i=1; AJvYcCUNl9COmQCwCQ1FvNrN+Cqs35fC1PeicQY4uMefnyfXNBGFbBzBKtJVjh+KP4+9Hna/EgCtE8+vPbnc@vger.kernel.org
X-Gm-Message-State: AOJu0YzrYBuN2DJUsm2B3Fjh8wOeB8ey9pyksngs1jmkw/hA3+ucxezd
	sVlr45VpsX0AJ3ON82gCKLNc1CnYkl/TI64bHBRN6cpJvJJZ+Uhx/1DuMDeZCP/7p0o=
X-Gm-Gg: ASbGncvzn1h1GwVC0tDQbI+FtW92RCQS/PvjeRjkrgcrkE8q8lmKFOve3+Q9mKvMrsJ
	OpEptbnDj19qY10+scMV+oTv9UAL7W553rexaYGe7HoRnFG88GSzsqfT/4g6DXxokelTEWvCSyU
	nweDhaQUHwbOUALgbtPPX8x0lNbBX6oulYQEOFMY7ShWak3uV8Ra6Fotvmgdg6k9ctpQfodPzrI
	w273ZWgL9ZjAeINawJcixM5M3x/b0oqR+HFEGrOl78lTlXRNLYPE1/1djv9HP8UoUMkesS3ovWr
	dJW6bndnWxTXBnPwWYW5sPyMftEw3+tIy75FH8ifhhetprgZzEvKebB0dy9RDR4nZ44wFs5M1Vd
	Gbkw0Xj2tNmErDnBqre/0VyJnu5izeUVdE/uqtzR29XXK7fANwp2Z53qvlfICJTN0Ma919R02rU
	YOY2j5A/gQhcHRFAqtykOxj15iXNIuZArTBFQ=
X-Google-Smtp-Source: AGHT+IFPrLD0cpURVx9vlEq9MIRSEh4Uvrp2QcOigo0VAcKE9vYjUK34xwAVj5/gi01gKaUb5M2abg==
X-Received: by 2002:a17:906:4789:b0:b41:c892:2c67 with SMTP id a640c23a62f3a-b50abfc861amr1291709266b.45.1760111788585;
        Fri, 10 Oct 2025 08:56:28 -0700 (PDT)
Received: from puffmais2.c.googlers.com (224.138.204.35.bc.googleusercontent.com. [35.204.138.224])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b55d5cacba7sm261285866b.5.2025.10.10.08.56.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Oct 2025 08:56:28 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Fri, 10 Oct 2025 16:56:26 +0100
Subject: [PATCH] arm64: dts: exynos: gs101-pixel-common: add node for
 s2mpg10 / clock
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20251010-s2mpg10-clk-v1-1-dafb5d179395@linaro.org>
X-B4-Tracking: v=1; b=H4sIAKks6WgC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1NDA0MD3WKj3IJ0IJ2ck62bnJRkkZxkYGaQbGimBNRRUJSallkBNi06trY
 WAJcH5UZdAAAA
X-Change-ID: 20251010-s2mpg10-clk-cbb8cb060c16
To: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>
Cc: Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.14.2

On Pixel 6 (and Pro), a Samsung S2MPG10 is used as main PMIC, which
contains the following functional blocks:
    * common / speedy interface
    * regulators
    * 3 clock outputs
    * RTC
    * power meters

This change adds a node for the clock outputs which are used as inputs
as follows:
* RTC clock for AP
* GNSS receiver, WLAN, Bluetooth
* vibrator, modem

The names have been chosen to match the schematic.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
Note: This depends on the samsung,s2mpg10-clk binding which was
only recently merged into Linus' tree via the clock tree.
---
 arch/arm64/boot/dts/exynos/google/gs101-pixel-common.dtsi | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/exynos/google/gs101-pixel-common.dtsi b/arch/arm64/boot/dts/exynos/google/gs101-pixel-common.dtsi
index 84ff3e047d3b31b5f96d4d6c78ec933bb05f3e6b..93892adaa679439bd87b0630cf9416b05c9d4536 100644
--- a/arch/arm64/boot/dts/exynos/google/gs101-pixel-common.dtsi
+++ b/arch/arm64/boot/dts/exynos/google/gs101-pixel-common.dtsi
@@ -109,6 +109,13 @@ pmic {
 		system-power-controller;
 		wakeup-source;
 
+		clocks {
+			compatible = "samsung,s2mpg10-clk";
+			#clock-cells = <1>;
+			clock-output-names = "rtc32k_ap", "peri32k1",
+					     "peri32k2";
+		};
+
 		regulators {
 		};
 	};

---
base-commit: 2b763d4652393c90eaa771a5164502ec9dd965ae
change-id: 20251010-s2mpg10-clk-cbb8cb060c16

Best regards,
-- 
André Draszik <andre.draszik@linaro.org>


