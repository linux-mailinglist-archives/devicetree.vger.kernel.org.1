Return-Path: <devicetree+bounces-264361-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eE9XDvAWi2ljPgAAu9opvQ
	(envelope-from <devicetree+bounces-264361-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 12:30:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BA06311A21D
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 12:30:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1BF53303A262
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 11:30:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CCC852DAFC2;
	Tue, 10 Feb 2026 11:30:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NLGOPVKj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f65.google.com (mail-ed1-f65.google.com [209.85.208.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B9EA1EB9E3
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 11:30:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770723052; cv=none; b=e6wDeRdcrW3A7f+hWY46YsgQgeumDS6QDcCXafBOKUBEKaF46AkPZwR2FkoyPotDlwOjE5Hjk6axbYupqLxAn5dk9tHyjvDTSZXBYZiZaj5wMDwAlgpfAtWCxRdQj4pvJqlrlQF21dNOFii1/CGp+xCy3kgC1ioKsh6sf0b38F0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770723052; c=relaxed/simple;
	bh=NGorGne5j2JezpHvosdEQzlEl9QvtWLxFrF0NCtw9pc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=O4bRpoPCSsoYIh244jOd9LR2hTwbWIKgzJolZogDfy4LeT7pL4B3YM5NQ5UKN3YXGS57AK6kWL55aO446EeHzvmaJUAAoGmR+P7Fb88UQF49S9IUvzWOV/BcfXc0QkhKNjlSOX1vcZ3dLMT/WA7L0Z5/GkKZDeza+O0SFs9tXG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=NLGOPVKj; arc=none smtp.client-ip=209.85.208.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f65.google.com with SMTP id 4fb4d7f45d1cf-65a1974d3dfso538328a12.3
        for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 03:30:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1770723048; x=1771327848; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=+5jgSn0iShD50NXkXtsIFhCoJl3UocaN2X43X5IPKtc=;
        b=NLGOPVKjmWIMA61oQCSUyebLaGeyQ3nroiEYr0a2OorBupRr5Gekh05gu2e7TDoNz4
         swRh8PBWtHBXrzsd5pdjH5C2TJrQjz4lZ7h2NZOxZVOtaJOqJqQs27YFvemvlOeYlzgz
         +04Yc+5WVJ6PMkHQKqyGj6tAyRHo4mI9Wb9op3cvsFHCJVXkErcKmZxqcEnevvpMNI+r
         m3PMeIJKWeeXFkHWFoN67woIm4xjSdjIHvPkdNKsaGljaCaBCDKpVQDxHJXye1OCXqZH
         NhrVgTLSJPcg9zNIwDd7UQu3II/Ihwlrjq6fFqRW/lNvYdt/C7hnEx8wyR8r7E+ljxiR
         XDVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770723048; x=1771327848;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+5jgSn0iShD50NXkXtsIFhCoJl3UocaN2X43X5IPKtc=;
        b=sgZoJuQDkp8kH0bOt0KTFwc/C0tl2oDGENf16DJOo3Qq87vhSIj2Jr0KrWjFgzxnhn
         kjlUULOvqh6/DjGzMqAf4lwrU30D2zJU0DQip3o9hZVb8lLjjU4qK6Fv3Bcf2oHkvQpA
         lirwFhB1I8+GgYiowJehrsKcr2MGhe30flsRddLZbCqi0BT0YPOiv1vEufbWk6IVNxrX
         W4ZgatRwnQ9+uBUp8cu/pOSUJm1N6e6oobwk3Mn28IHq9l/gQAuXmSlo6dUgdVWLGpMg
         lLEMNSXCF4P29pSrX7lvUbYZlhdLGpl4RSE6+dUu0/EFKqWLsazDinQugYfv3wo2/B2J
         /Haw==
X-Forwarded-Encrypted: i=1; AJvYcCXAc9OV+B078JkYKU7MY/s+eDbFvVEpQi6gOFSZrKjMq/vUMb7gQ0U3XiQrnmb51eFfshJ434iu9DCB@vger.kernel.org
X-Gm-Message-State: AOJu0Ywbje1wALJZEOcG6o3oSxL9Bu8/Q5apJnhXaH9xy6B460z3RPuj
	Lynabt6O3SImWPtTrCPgNXqOF6AS/rsqyJqGicAE8U5N69LUHbS82PRETdsstPswgFk=
X-Gm-Gg: AZuq6aLuTCFrf/L4GxSzODvd5mAi8e5S257L3zJzkER9I1+qrEKk5IMpJkKLTfU19X5
	BDvPZjPecOWjlPJ0J0uo5Icb3crj3gw2Ry7pqGlgdpRltNj9COlL45LhdCGpEzczQaNzPbkwbsX
	AFdALj7NTZWoggvNgnzGr/Ht6OhiSViAtEITcKKtV+aV0lHXGqg9qR2tA9XfVorlabQHhGwLnHe
	JCtj4OWraeN08Xt44Dnx+QQ53bVSlT9AmQbD6LAZcPxhEBTyKjbpbbVvVOjJl//bCB2YY31N5RJ
	xVwcDzP5QkUJikaaRelwuyvYNcJFqEsLzNA+twYa2xbefajSQbC2TrvQi3IuCTXDEW59ttyDkvJ
	Go/QdzvIya4cnMV0VsdCLI5nZIaRhl5yjTGedcSJbEUhJ9r0YAr4p9jpC6qVfFgKdrS/5tlNX1f
	PXkEQfd44gPsOsksXgqH+O6fklOiCO/q2rWeY29rYxVWVojw6c1XxOYVFPxyo7vWMAKTG0p5pAf
	lZ4Ahv5TDh6XZncwQ==
X-Received: by 2002:a17:907:9454:b0:b80:5ae7:5d94 with SMTP id a640c23a62f3a-b8f5438275cmr98464566b.7.1770723046858;
        Tue, 10 Feb 2026 03:30:46 -0800 (PST)
Received: from puffmais2.c.googlers.com (244.175.141.34.bc.googleusercontent.com. [34.141.175.244])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8edae3bc1esm511361966b.63.2026.02.10.03.30.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Feb 2026 03:30:46 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Tue, 10 Feb 2026 11:30:43 +0000
Subject: [PATCH v2] arm64: dts: exynos: gs101-pixel: add all S2MPG1x
 regulators
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260210-s2mpg1x-regulators-dts-v2-1-68783c9e0a32@linaro.org>
X-B4-Tracking: v=1; b=H4sIAOIWi2kC/3WNyw6CMBBFf4V0bU2n4IuV/2FYFDstTZDiDBAM4
 d+tuHDl8tzknrMIRgrIoswWQTgFDrFLoHeZuDem8yiDTSy00gd1VLlk/eg9zJLQj60ZIrG0A0u
 Dpqgt5ta5i0jnntCFeRPfqi8TPsfkH35jEzgJXlt8gs+6dQDgb2cCCfKszEmhK3SNcG1DZyjuI
 3lRrev6BmI8z1/SAAAA
X-Change-ID: 20250603-s2mpg1x-regulators-dts-aea4bde3dff9
To: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>
Cc: Juan Yescas <jyescas@google.com>, kernel-team@android.com, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.14.2
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-264361-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[linaro.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andre.draszik@linaro.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,linaro.org:mid,linaro.org:dkim,linaro.org:email]
X-Rspamd-Queue-Id: BA06311A21D
X-Rspamd-Action: no action

Most rails are the same between Pixel 6 and Pro, with the following
differences:
    * only Pro has UWB
    * Pro uses l2m, not l14m, for TCXO
    * Pro uses bucka, not l31m, for NFC

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
Changes in v2:
- add comments for board-specific and unused rails (Krzysztof)
- link simple-framebuffer to display regulators
- Link to v1: https://lore.kernel.org/r/20251113-s2mpg1x-regulators-dts-v1-1-80a70ef42be1@linaro.org
---
Please note that this patch depends on the bindings updates for S2MPG1x
from
https://lore.kernel.org/all/20260122-s2mpg1x-regulators-v7-0-3b1f9831fffd@linaro.org/
for validation to succeed. Almost all of them are in linux-next, but
patch 1 from that series is still to be applied.

I've left out conversion of placeholder regulators for now, because
some more testing is required for such changes.
---
 arch/arm64/boot/dts/exynos/google/gs101-oriole.dts |  22 +
 .../boot/dts/exynos/google/gs101-pixel-common.dtsi | 510 ++++++++++++++++++++-
 arch/arm64/boot/dts/exynos/google/gs101-raven.dts  |  18 +
 3 files changed, 549 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/exynos/google/gs101-oriole.dts b/arch/arm64/boot/dts/exynos/google/gs101-oriole.dts
index 8df42bedbc036b5e97f6238d64820370043ffef2..36721adcaa239da20d63173bdeab67f4381f3c91 100644
--- a/arch/arm64/boot/dts/exynos/google/gs101-oriole.dts
+++ b/arch/arm64/boot/dts/exynos/google/gs101-oriole.dts
@@ -8,6 +8,7 @@
 
 /dts-v1/;
 
+#include <dt-bindings/regulator/samsung,s2mpg10-regulator.h>
 #include "gs101-pixel-common.dtsi"
 
 / {
@@ -15,6 +16,27 @@ / {
 	compatible = "google,gs101-oriole", "google,gs101";
 };
 
+&acpm_ipc {
+	pmic-1 {
+		regulators {
+			ldo14m {
+				/* PLL */
+				regulator-name = "avdd18_tcxo";
+				regulator-min-microvolt = <1600000>;
+				regulator-max-microvolt = <1950000>;
+				regulator-always-on;
+				samsung,ext-control = <S2MPG10_EXTCTRL_TCXO_ON>;
+			};
+
+			ldo31m {
+				regulator-name = "nfc";
+				regulator-min-microvolt = <1600000>;
+				regulator-max-microvolt = <1950000>;
+			};
+		};
+	};
+};
+
 &cont_splash_mem {
 	reg = <0x0 0xfac00000 (1080 * 2400 * 4)>;
 	status = "okay";
diff --git a/arch/arm64/boot/dts/exynos/google/gs101-pixel-common.dtsi b/arch/arm64/boot/dts/exynos/google/gs101-pixel-common.dtsi
index 93892adaa679439bd87b0630cf9416b05c9d4536..3a14610a6e69136f1b989cafea6a78668dab25a8 100644
--- a/arch/arm64/boot/dts/exynos/google/gs101-pixel-common.dtsi
+++ b/arch/arm64/boot/dts/exynos/google/gs101-pixel-common.dtsi
@@ -10,6 +10,7 @@
 
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/input/input.h>
+#include <dt-bindings/regulator/samsung,s2mpg10-regulator.h>
 #include <dt-bindings/usb/pd.h>
 #include "gs101-pinctrl.h"
 #include "gs101.dtsi"
@@ -28,6 +29,8 @@ chosen {
 		framebuffer0: framebuffer-0 {
 			compatible = "simple-framebuffer";
 			memory-region = <&cont_splash_mem>;
+			vci-supply = <&s2mpg10_ldo22m>;
+			vddi-supply = <&s2mpg11_bucka>;
 			/* format properties to be added by actual board */
 			status = "disabled";
 		};
@@ -101,7 +104,7 @@ cont_splash_mem: splash@fac00000 {
 };
 
 &acpm_ipc {
-	pmic {
+	pmic-1 {
 		compatible = "samsung,s2mpg10-pmic";
 		interrupts-extended = <&gpa0 6 IRQ_TYPE_LEVEL_LOW>;
 		pinctrl-names = "default";
@@ -109,6 +112,22 @@ pmic {
 		system-power-controller;
 		wakeup-source;
 
+		vinl1m-supply = <&s2mpg11_buck3s>;
+		vinl2m-supply = <&s2mpg11_buck3s>;
+		vinl3m-supply = <&s2mpg10_buck8m>;
+		vinl4m-supply = <&s2mpg10_buck9m>;
+		vinl5m-supply = <&s2mpg10_buck9m>;
+		vinl6m-supply = <&s2mpg10_buck9m>;
+		vinl7m-supply = <&s2mpg11_buck6s>;
+		vinl8m-supply = <&s2mpg11_buck6s>;
+		vinl9m-supply = <&s2mpg11_buck7s>;
+		vinl10m-supply = <&s2mpg11_buck7s>;
+		vinl11m-supply = <&s2mpg11_buck7s>;
+		vinl12m-supply = <&s2mpg11_bucka>;
+		vinl13m-supply = <&s2mpg11_bucka>;
+		vinl14m-supply = <&s2mpg11_buckboost>;
+		vinl15m-supply = <&s2mpg11_buckboost>;
+
 		clocks {
 			compatible = "samsung,s2mpg10-clk";
 			#clock-cells = <1>;
@@ -117,6 +136,489 @@ clocks {
 		};
 
 		regulators {
+			buck1m {
+				regulator-name = "vdd_mif";
+				regulator-min-microvolt = <450000>;
+				regulator-max-microvolt = <1300000>;
+				regulator-ramp-delay = <6250>;
+				regulator-always-on;
+				samsung,ext-control = <S2MPG10_EXTCTRL_PWREN_MIF>;
+			};
+
+			buck2m {
+				regulator-name = "vdd_cpucl2";
+				regulator-min-microvolt = <450000>;
+				regulator-max-microvolt = <1300000>;
+				regulator-ramp-delay = <12500>;
+				regulator-always-on;
+				samsung,ext-control = <S2MPG10_EXTCTRL_CPUCL2_EN2>;
+			};
+
+			buck3m {
+				regulator-name = "vdd_cpucl1";
+				regulator-min-microvolt = <450000>;
+				regulator-max-microvolt = <1300000>;
+				regulator-ramp-delay = <12500>;
+				regulator-always-on;
+				samsung,ext-control = <S2MPG10_EXTCTRL_CPUCL1_EN2>;
+			};
+
+			buck4m {
+				regulator-name = "vdd_cpucl0";
+				regulator-min-microvolt = <450000>;
+				regulator-max-microvolt = <1300000>;
+				regulator-ramp-delay = <12500>;
+				regulator-always-on;
+				samsung,ext-control = <S2MPG10_EXTCTRL_PWREN>;
+			};
+
+			buck5m {
+				regulator-name = "vdd_int";
+				regulator-min-microvolt = <450000>;
+				regulator-max-microvolt = <1300000>;
+				regulator-ramp-delay = <12500>;
+				regulator-always-on;
+				samsung,ext-control = <S2MPG10_EXTCTRL_PWREN_MIF>;
+			};
+
+			buck6m {
+				regulator-name = "vdd_cpucl2_m";
+				regulator-min-microvolt = <450000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-ramp-delay = <12500>;
+				regulator-always-on;
+				samsung,ext-control = <S2MPG10_EXTCTRL_CPUCL2_EN2>;
+			};
+
+			buck7m {
+				/* GPU */
+				regulator-name = "vdd_int_m";
+				regulator-min-microvolt = <450000>;
+				regulator-max-microvolt = <1300000>;
+				regulator-ramp-delay = <6250>;
+				regulator-always-on;
+				samsung,ext-control = <S2MPG10_EXTCTRL_PWREN_MIF>;
+			};
+
+			s2mpg10_buck8m: buck8m {
+				regulator-name = "lldo2";
+				regulator-min-microvolt = <450000>;
+				regulator-max-microvolt = <1300000>;
+				regulator-ramp-delay = <6250>;
+			};
+
+			s2mpg10_buck9m: buck9m {
+				regulator-name = "lldo3";
+				regulator-min-microvolt = <450000>;
+				regulator-max-microvolt = <1300000>;
+				regulator-ramp-delay = <6250>;
+			};
+
+			buck10m {
+				regulator-name = "vdd_tpu";
+				regulator-min-microvolt = <450000>;
+				regulator-max-microvolt = <1300000>;
+				regulator-ramp-delay = <12500>;
+				regulator-always-on;
+				samsung,ext-control = <S2MPG10_EXTCTRL_TPU_EN>;
+			};
+
+			ldo1m {
+				/* ALIVE, AOC PLL */
+				regulator-name = "vdd_l1m_alive";
+				regulator-min-microvolt = <700000>;
+				regulator-max-microvolt = <1300000>;
+				regulator-ramp-delay = <6250>;
+				regulator-always-on;
+			};
+
+			ldo2m {
+				/* lots, DDR */
+				regulator-name = "vdd_l2m_alive";
+				regulator-min-microvolt = <1600000>;
+				regulator-max-microvolt = <1950000>;
+				regulator-always-on;
+			};
+
+			ldo3m {
+				/* AVDD: MIPI CSI & DSI, PLL: CPUCL SHARED TPU UFS */
+				regulator-name = "ldo3m";
+				regulator-min-microvolt = <725000>;
+				regulator-max-microvolt = <1300000>;
+				regulator-always-on;
+				samsung,ext-control = <S2MPG10_EXTCTRL_PWREN_MIF>;
+			};
+
+			ldo4m {
+				/* AVDD: MIPI CSI & DSI, UFS, OTP, TS_SUB, TS_TOP, XOTP */
+				regulator-name = "ldo4m";
+				regulator-min-microvolt = <1600000>;
+				regulator-max-microvolt = <1950000>;
+				regulator-always-on;
+				samsung,ext-control = <S2MPG10_EXTCTRL_PWREN_MIF>;
+			};
+
+			ldo5m {
+				/* VDD: ADD, AVDD: TCXO & TCXO_FAR */
+				regulator-name = "avdd075_tcxo";
+				regulator-min-microvolt = <725000>;
+				regulator-max-microvolt = <1300000>;
+				regulator-always-on;
+				samsung,ext-control = <S2MPG10_EXTCTRL_TCXO_ON>;
+			};
+
+			ldo6m {
+				/* PLL CPUCL & MIFx, UFS clk, MIPI DSI */
+				regulator-name = "vdd_pll";
+				regulator-min-microvolt = <725000>;
+				regulator-max-microvolt = <1300000>;
+				regulator-always-on;
+				samsung,ext-control = <S2MPG10_EXTCTRL_PWREN_MIF>;
+			};
+
+			ldo7m {
+				/* IO (HSI (USB)) */
+				regulator-name = "vdd_hsi";
+				regulator-min-microvolt = <450000>;
+				regulator-max-microvolt = <950000>;
+				regulator-ramp-delay = <6250>;
+				/*
+				 * TODO: link to HSI power domain, without this,
+				 * Linux hangs during USB access.
+				 */
+				regulator-always-on;
+			};
+
+			ldo8m {
+				regulator-name = "vdd085_usb";
+				regulator-min-microvolt = <725000>;
+				regulator-max-microvolt = <1300000>;
+				regulator-always-on;
+			};
+
+			ldo9m {
+				regulator-name = "vdd18_usb";
+				regulator-min-microvolt = <1600000>;
+				regulator-max-microvolt = <1950000>;
+				regulator-always-on;
+			};
+
+			ldo10m {
+				regulator-name = "vdd33_usb";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3350000>;
+				regulator-always-on;
+			};
+
+			ldo11m {
+				regulator-name = "vdd_cpucl1_m";
+				regulator-min-microvolt = <700000>;
+				regulator-max-microvolt = <1300000>;
+				regulator-ramp-delay = <6250>;
+				regulator-always-on;
+				samsung,ext-control = <S2MPG10_EXTCTRL_CPUCL1_EN2>;
+			};
+
+			ldo12m {
+				regulator-name = "vdd_cpucl0_m";
+				regulator-min-microvolt = <700000>;
+				regulator-max-microvolt = <1300000>;
+				regulator-ramp-delay = <6250>;
+				regulator-always-on;
+				samsung,ext-control = <S2MPG10_EXTCTRL_PWREN>;
+			};
+
+			ldo13m {
+				regulator-name = "vdd_tpu_m";
+				regulator-min-microvolt = <450000>;
+				regulator-max-microvolt = <950000>;
+				regulator-ramp-delay = <12500>;
+				regulator-always-on;
+				samsung,ext-control = <S2MPG10_EXTCTRL_TPU_EN>;
+			};
+
+			/* ldo14m is board specific */
+
+			ldo15m {
+				regulator-name = "vdd_slc_m";
+				regulator-min-microvolt = <450000>;
+				regulator-max-microvolt = <950000>;
+				regulator-ramp-delay = <12500>;
+				regulator-always-on;
+			};
+
+			ldo16m {
+				regulator-name = "vdd085_pcie0";
+				regulator-min-microvolt = <725000>;
+				regulator-max-microvolt = <1300000>;
+			};
+
+			ldo17m {
+				regulator-name = "vdd085_pcie1";
+				regulator-min-microvolt = <725000>;
+				regulator-max-microvolt = <1300000>;
+			};
+
+			ldo18m {
+				regulator-name = "vdd18_pcie0";
+				regulator-min-microvolt = <1600000>;
+				regulator-max-microvolt = <1950000>;
+			};
+
+			ldo19m {
+				regulator-name = "vdd18_pcie1";
+				regulator-min-microvolt = <1600000>;
+				regulator-max-microvolt = <1950000>;
+			};
+
+			ldo20m {
+				/* DMIC, memory power */
+				regulator-name = "vddq_aoc_pdm";
+				regulator-min-microvolt = <1600000>;
+				regulator-max-microvolt = <1950000>;
+				regulator-always-on;
+				samsung,ext-control = <S2MPG10_EXTCTRL_LDO20M_EN2>;
+			};
+
+			ldo21m {
+				/* Dauntless  */
+				regulator-name = "vdd_dtls";
+				regulator-min-microvolt = <2500000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-always-on;
+			};
+
+			s2mpg10_ldo22m: ldo22m {
+				/* display */
+				regulator-name = "vci_disp";
+				regulator-min-microvolt = <3025000>;
+				regulator-max-microvolt = <3025000>;
+			};
+
+			/* ldo23m & ldo24m are unused */
+
+			ldo25m {
+				/* touch */
+				regulator-name = "dvdd_tsp";
+				regulator-min-microvolt = <1600000>;
+				regulator-max-microvolt = <1950000>;
+			};
+
+			ldo26m {
+				/* touch */
+				regulator-name = "avdd_ts";
+				regulator-min-microvolt = <2500000>;
+				regulator-max-microvolt = <3300000>;
+			};
+
+			ldo27m {
+				/* under-display fingerprint scanner */
+				regulator-name = "avdd_udfps";
+				regulator-min-microvolt = <2500000>;
+				regulator-max-microvolt = <3300000>;
+			};
+
+			/*
+			 *ldo28m .. ldo30m are unused, ldo31m is board specific
+			 */
+		};
+	};
+
+	pmic-2 {
+		compatible = "samsung,s2mpg11-pmic";
+		interrupts-extended = <&gpa0 7 IRQ_TYPE_LEVEL_LOW>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&sub_pmic_int>;
+		wakeup-source;
+
+		vinl1s-supply = <&s2mpg10_buck8m>;
+		vinl2s-supply = <&s2mpg11_buck6s>;
+		vinl3s-supply = <&s2mpg11_buck7s>;
+		vinl4s-supply = <&s2mpg11_buck7s>;
+		vinl5s-supply = <&s2mpg11_buckboost>;
+		vinl6s-supply = <&s2mpg11_buckboost>;
+		vinbd-supply = <&s2mpg11_buckboost>;
+
+		regulators {
+			buck1s {
+				/* multimedia */
+				regulator-name = "vdd_cam";
+				regulator-min-microvolt = <450000>;
+				regulator-max-microvolt = <1300000>;
+				regulator-ramp-delay = <12500>;
+				regulator-always-on;
+				samsung,ext-control = <S2MPG11_EXTCTRL_PWREN_MIF>;
+			};
+
+			buck2s {
+				regulator-name = "vdd_g3d";
+				regulator-min-microvolt = <450000>;
+				regulator-max-microvolt = <1300000>;
+				regulator-ramp-delay = <12500>;
+				regulator-always-on;
+				samsung,ext-control = <S2MPG11_EXTCTRL_G3D_EN>;
+			};
+
+			s2mpg11_buck3s: buck3s {
+				regulator-name = "lldo1";
+				regulator-min-microvolt = <450000>;
+				regulator-max-microvolt = <1300000>;
+				regulator-ramp-delay = <6250>;
+			};
+
+			buck4s {
+				/* DDR */
+				regulator-name = "vdd2h_mem";
+				regulator-min-microvolt = <450000>;
+				regulator-max-microvolt = <1300000>;
+				regulator-ramp-delay = <6250>;
+				regulator-always-on;
+			};
+
+			buck5s {
+				/* DDR */
+				regulator-name = "vddq_mem";
+				regulator-min-microvolt = <400000>;
+				regulator-max-microvolt = <1300000>;
+				regulator-ramp-delay = <6250>;
+				regulator-always-on;
+				samsung,ext-control = <S2MPG11_EXTCTRL_PWREN_MIF>;
+			};
+
+			s2mpg11_buck6s: buck6s {
+				regulator-name = "lldo4";
+				regulator-min-microvolt = <1000000>;
+				regulator-max-microvolt = <1500000>;
+				regulator-ramp-delay = <6250>;
+			};
+
+			s2mpg11_buck7s: buck7s {
+				regulator-name = "mldo";
+				regulator-min-microvolt = <1500000>;
+				regulator-max-microvolt = <2200000>;
+				regulator-ramp-delay = <6250>;
+			};
+
+			buck8s {
+				regulator-name = "vdd_g3d_l2";
+				regulator-min-microvolt = <450000>;
+				regulator-max-microvolt = <1300000>;
+				regulator-ramp-delay = <12500>;
+				regulator-always-on;
+				samsung,ext-control = <S2MPG11_EXTCTRL_G3D_EN>;
+			};
+
+			buck9s {
+				regulator-name = "vdd_aoc";
+				regulator-min-microvolt = <450000>;
+				regulator-max-microvolt = <1300000>;
+				regulator-ramp-delay = <12500>;
+				regulator-always-on;
+			};
+
+			buck10s {
+				/* DDR */
+				regulator-name = "vdd2l_mem";
+				regulator-min-microvolt = <450000>;
+				regulator-max-microvolt = <1300000>;
+				regulator-ramp-delay = <6250>;
+				regulator-always-on;
+			};
+
+			buckd {
+				regulator-name = "vcc_ufs";
+				regulator-min-microvolt = <2400000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-ramp-delay = <6250>;
+				regulator-always-on;
+				samsung,ext-control = <S2MPG11_EXTCTRL_UFS_EN>;
+			};
+
+			s2mpg11_bucka: bucka {
+				/* lots, IO */
+				regulator-name = "bucka";
+				regulator-min-microvolt = <1700000>;
+				regulator-max-microvolt = <2100000>;
+				regulator-ramp-delay = <6250>;
+				regulator-always-on;
+			};
+
+			s2mpg11_buckboost: buckboost {
+				regulator-name = "buckboost";
+				regulator-min-microvolt = <3000000>;
+				regulator-max-microvolt = <3600000>;
+			};
+
+			ldo1s {
+				regulator-name = "vdd_g3d_m";
+				regulator-min-microvolt = <450000>;
+				regulator-max-microvolt = <950000>;
+				regulator-ramp-delay = <6250>;
+				regulator-always-on;
+				samsung,ext-control = <S2MPG11_EXTCTRL_G3D_EN>;
+			};
+
+			ldo2s {
+				regulator-name = "vdd_aoc_ret";
+				regulator-min-microvolt = <450000>;
+				regulator-max-microvolt = <950000>;
+				regulator-ramp-delay = <12500>;
+				regulator-always-on;
+			};
+
+			/* ldo3s & ldo5s are unused, ldo4s is board specific */
+
+			ldo6s {
+				/* sensors */
+				regulator-name = "vdd_prox";
+				regulator-min-microvolt = <2500000>;
+				regulator-max-microvolt = <3300000>;
+			};
+
+			ldo7s {
+				/* sensors */
+				regulator-name = "vdd_sensors";
+				regulator-min-microvolt = <1600000>;
+				regulator-max-microvolt = <1950000>;
+			};
+
+			ldo8s {
+				regulator-name = "vccq_ufs";
+				regulator-min-microvolt = <1130400>;
+				regulator-max-microvolt = <1281200>;
+				regulator-always-on;
+				samsung,ext-control = <S2MPG11_EXTCTRL_UFS_EN>;
+			};
+
+			ldo9s {
+				regulator-name = "vdd_gnss";
+				regulator-min-microvolt = <725000>;
+				regulator-max-microvolt = <1300000>;
+			};
+
+			ldo10s {
+				regulator-name = "vdd_gnss_rf";
+				regulator-min-microvolt = <1600000>;
+				regulator-max-microvolt = <1950000>;
+			};
+
+			ldo11s {
+				regulator-name = "vdd_gnss_aux";
+				regulator-min-microvolt = <1600000>;
+				regulator-max-microvolt = <1950000>;
+			};
+
+			/* ldo12s is unused */
+
+			ldo13s {
+				regulator-name = "vddq_mmc";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3350000>;
+				regulator-always-on;
+				samsung,ext-control = <S2MPG11_EXTCTRL_LDO13S_EN>;
+			};
+
+			/* ldo14s is board specific, ldo15s is unused */
 		};
 	};
 };
@@ -317,6 +819,12 @@ pmic_int: pmic-int-pins {
 		samsung,pin-pud = <GS101_PIN_PULL_NONE>;
 	};
 
+	sub_pmic_int: sub-pmic-int-pins {
+		samsung,pins = "gpa0-7";
+		samsung,pin-function = <GS101_PIN_FUNC_EINT>;
+		samsung,pin-pud = <GS101_PIN_PULL_NONE>;
+	};
+
 	key_power: key-power-pins {
 		samsung,pins = "gpa10-1";
 		samsung,pin-function = <GS101_PIN_FUNC_EINT>;
diff --git a/arch/arm64/boot/dts/exynos/google/gs101-raven.dts b/arch/arm64/boot/dts/exynos/google/gs101-raven.dts
index 1e7e6b34b8649bc700a745c579a0268f0f6a9524..a422542715f27c8ea7a624f749b6d92e1bcb3429 100644
--- a/arch/arm64/boot/dts/exynos/google/gs101-raven.dts
+++ b/arch/arm64/boot/dts/exynos/google/gs101-raven.dts
@@ -15,6 +15,24 @@ / {
 	compatible = "google,gs101-raven", "google,gs101";
 };
 
+&acpm_ipc {
+	pmic-2 {
+		regulators {
+			ldo4s {
+				regulator-name = "vdd2_uwb";
+				regulator-min-microvolt = <2500000>;
+				regulator-max-microvolt = <3300000>;
+			};
+
+			ldo14s {
+				regulator-name = "vdd3_uwb";
+				regulator-min-microvolt = <1600000>;
+				regulator-max-microvolt = <1950000>;
+			};
+		};
+	};
+};
+
 &cont_splash_mem {
 	reg = <0x0 0xfac00000 (1440 * 3120 * 4)>;
 	status = "okay";

---
base-commit: 9845cf73f7db6094c0d8419d6adb848028f4a921
change-id: 20250603-s2mpg1x-regulators-dts-aea4bde3dff9

Best regards,
-- 
André Draszik <andre.draszik@linaro.org>


