Return-Path: <devicetree+bounces-254992-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C97CD1E349
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 11:48:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 18F1A3004608
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 10:44:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 04393389E1B;
	Wed, 14 Jan 2026 10:43:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="UiX/JPSs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com [209.85.128.68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 810E838E5D6
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 10:43:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.68
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768387427; cv=none; b=Cm9+yopMeN7PBny5d/kSvj0Zz0Pfv0c4DfwtXbrLY8BMRdzEsQkSBVCkVPxUWv5grZcp90cA6G9OD93mrGVoc5Br2Hy0Du2hu08ujY6hDpFUL8lCu66bQ7uugFM4OO68nBDc4Gv0mk1PjsxAQoFdrG4q3iI7XazE3C5lqLv450U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768387427; c=relaxed/simple;
	bh=VYGCJTyLWyZeqxrYJqis+f8MCWkH4xGdHO1FKT2JVf8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=PNxL/XzOE6pf2oUBFshWAg/EsqKrJeerdqAYc/wbz+zobl6EpA4imQ5MUrOP55Z29Y+n7McUxXsUfHPt8RP4N9GzkdU1DX6kvDyeAYJoQPwUJNr7cChXofvBUuM7dceh3772pcY8D9mrKCXffE7r4n/YjunlKzi1M6mF8loWWsQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=UiX/JPSs; arc=none smtp.client-ip=209.85.128.68
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f68.google.com with SMTP id 5b1f17b1804b1-47d182a8c6cso50078165e9.1
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 02:43:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1768387421; x=1768992221; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SlByN8C1Eu2c9UjKXvt2bF4y//Mr04/U71i3Y158psI=;
        b=UiX/JPSsvWxzamq08XT8IiH6rv7X8eDKI//3h+ELwPV8z1mr8sSt0pf+S2Ob6j04Ha
         Qb+P2D8G4Cw+P3XFb6DoK//YfXqYUuQrg5js2s00aDc8PeWoUHZBuOT/vnDQw6efpT4o
         Sv74w58qy6IQABSg75sl6SEtpYUm8WcfOG4RALKa6iBdJJ9GXFGp6qQSHT0mcpDgLcuL
         CKRKNyIbXXbeWlVrIWbucfELJLhP/N+a3NBVG44DGWog9pNnFnzhtL1VOXkGy4rgA9K7
         CYThHKa0CoQZcgjKNtDbRH1YjEqlUlBTU24AfTnf+mPL9JjmHe6GGUWlM446Cl7KLF/Z
         X4gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768387421; x=1768992221;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=SlByN8C1Eu2c9UjKXvt2bF4y//Mr04/U71i3Y158psI=;
        b=LT9lFIex/N2l1X+IiIqenvZi61w8X+2GqMmRvgmOeZWeiEr9g6AYcSUq22Ksl1uuCA
         Lca+cfH60NyzIrkluJoFdExNC8svrjzg7QbnyL1bwdK4G/Z4b8CqbUjpSg60PS1xzdFO
         /REuPEmBOMzEqXj0s6bF02XmkVJWnStuRvPEGB/LHnHHGsabIYWP/W2D2P5Q4PGYAIzW
         VpOS1zscudCwmoy4eS7s/fEtxjrtaUIwsjwTk8c6knxSXB2XE4UzdYvW/u5kn6rzic2q
         Tv6HCD81isShTQRuFMaAZ9r0jJH5PwrMAGcK34R7TfWClyQd5xI//QdKLmKneHRRrwiY
         1rUg==
X-Gm-Message-State: AOJu0YwBwh3sSQ6V8rYcNFJAjPmoxjCSjmXb44/nQ+gx/bPz2QpxA1u4
	DKHrjAOQbUrc1LON63uYnTT3/9Y2SdmKHTquj9WUBNgn5QXvJnm0IsXVXg3ja+k+Tt0=
X-Gm-Gg: AY/fxX579FKQigvZsFk41X1xC2HvDUW3M/y/75XusRGSPRWT5tCEEt4sXp4+UE3EBij
	z1j4bi6MCFBIdNRr7Cf9wlEM+CEakwvVLd4IEHeQWI6zh2WiEy1FmVVm84ru9j8U5wEPcTb2s4+
	OVg4/RK9QbQSRylgpI8+IiJz8nS6OkjgwLDiHFS45pl2mVVWTH0HPKWZ1WkVqBdydSLDw27+9sD
	1G8x1FfgP2uOKVzv6MTxWMpzV/5e6gNMj3gYWxxVEbAIwExj26n2KJaUtzPpr/fjmocpgzXbWLM
	Tsiad4y+hTFezMCr1Bvt8QpI7KSv4xyP1na7H4RuTiSUdXXEoodwlVAnb4LP9Lce1oc1k/YHLI9
	rbJCot0DuQ1CoY2nTjreLEJHxoXpJ1U2TxE1n09AbKTE++baKdSW/M4WPVL2wHMIBuRYBxp6rPd
	opubHXoPtgxQ==
X-Received: by 2002:a05:600c:45c8:b0:477:9a28:b0a4 with SMTP id 5b1f17b1804b1-47ee3071491mr26145085e9.0.1768387420967;
        Wed, 14 Jan 2026 02:43:40 -0800 (PST)
Received: from localhost ([2a01:e0a:3c5:5fb1:f2cc:bd72:2de3:86cd])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-47ee5613cfbsm21953065e9.0.2026.01.14.02.43.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 02:43:40 -0800 (PST)
From: Jerome Brunet <jbrunet@baylibre.com>
Date: Wed, 14 Jan 2026 11:43:11 +0100
Subject: [PATCH v3 1/2] arm64: dts: amlogic: s4: assign mmc b clock to
 24MHz
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260114-amlogic-s4-mmc-fixup-v3-1-a4d3e136b3f2@baylibre.com>
References: <20260114-amlogic-s4-mmc-fixup-v3-0-a4d3e136b3f2@baylibre.com>
In-Reply-To: <20260114-amlogic-s4-mmc-fixup-v3-0-a4d3e136b3f2@baylibre.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Kevin Hilman <khilman@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Xianwei Zhao <xianwei.zhao@amlogic.com>, Nick Xie <nick@khadas.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Jerome Brunet <jbrunet@baylibre.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1456; i=jbrunet@baylibre.com;
 h=from:subject:message-id; bh=VYGCJTyLWyZeqxrYJqis+f8MCWkH4xGdHO1FKT2JVf8=;
 b=owEBbQKS/ZANAwAKAeb8Dxw38tqFAcsmYgBpZ3NXDe1yYrYJvm7ef+o0HbQsBE36HBFvgGEFi
 3gDd6HBfxOJAjMEAAEKAB0WIQT04VmuGPP1bV8btxvm/A8cN/LahQUCaWdzVwAKCRDm/A8cN/La
 hcFYD/9Q8GfbO+oTJmQEoIph6QdmzFBAunlGYVNjY3ojIk+xGMpx4K8lcWBjqy1KR2o+tv4/0XB
 mOkxCqoU73aajqQG1Gtu/YjfrPOiz7CJX5LMd37ftHULi1G7bXOAqZ0ctJro+v71iLcAEOM5I74
 9Dn5u9+06E5fXfkVjEcyhPsx8wnkQxeeyY9lA1nV+qNH0qd1KSeqq5x/4vWdbmYPX6FQojk4cPP
 /DS7poKOJnn37qdQTGs0FPwzeoWq4R/w+WrgcmVWSFjigeMfdqQy6RiA1IFWZp5zG/M255ngOpo
 m5/JWAK4GOdNrCDZveD6tgTh/3wnGJa3c4esNQHRQwa/XlEO+pJlbSnSRZsJ5+QVdeg1padx9I8
 0FrGIODF2UxvRAeVcIwVgJ5iXE2XKI9VY5i0HELTE5mnenUeXL6u5+tKVHz+8HgYxyKKpYWPJtP
 TLMCwoKFRs3jA2Le/KPc/zHL5qdm/DKJxpetbX/F1lnaN5yHBnk2c4twSz8HgRhjxm0CJQeP/tm
 5k/RpETe/LiozsreIgoOgVyKy/i6EWPEspD7Y3YmtK1hSniiSp3aJVfMKcBDH5NZ4ON/Qb21RhT
 43LnwBcgOL61sSI7h8gOCcno/p18o6a+uqjLV9bBmCdM0wZRrNTko7tYefxSI+4/65EjsVWK9i7
 NhG7oRZ0RIkfLBw==
X-Developer-Key: i=jbrunet@baylibre.com; a=openpgp;
 fpr=F29F26CF27BAE1A9719AE6BDC3C92AAF3E60AED9

The amlogic MMC driver operate with the assumption that MMC clock
is configured to provide 24MHz. It uses this path for low
rates such as 400kHz.

This assumption did hold true until but it now, but it is apparently
not the case with s4. The clock has been reported to provide 1GHz
instead. This is most likely due to how the bootloader is using the MMC
clock on this platform.

Regardless of why the MMC clock rate is 1GHz, if the MMC driver expects
24MHz, the clock should be properly assigned, so assign it.

Reported-by: Nick Xie <nick@khadas.com>
Closes: https://lore.kernel.org/linux-amlogic/20260113011931.40424-1-nick@khadas.com/
Fixes: 3ab9d54b5d84 ("arm64: dts: amlogic: enable some device nodes for S4")
Tested-by: Nick Xie <nick@khadas.com>
Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-s4.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-s4.dtsi b/arch/arm64/boot/dts/amlogic/meson-s4.dtsi
index 9d99ed2994df..f314f07062ab 100644
--- a/arch/arm64/boot/dts/amlogic/meson-s4.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-s4.dtsi
@@ -838,6 +838,9 @@ sd: mmc@fe08a000 {
 			clock-names = "core", "clkin0", "clkin1";
 			resets = <&reset RESET_SD_EMMC_B>;
 			status = "disabled";
+
+			assigned-clocks = <&clkc_periphs CLKID_SD_EMMC_B>;
+			assigned-clock-rates = <24000000>;
 		};
 
 		emmc: mmc@fe08c000 {

-- 
2.47.3


