Return-Path: <devicetree+bounces-50341-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 674F687B12E
	for <lists+devicetree@lfdr.de>; Wed, 13 Mar 2024 20:10:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9665A1C267C2
	for <lists+devicetree@lfdr.de>; Wed, 13 Mar 2024 19:10:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3082B482D4;
	Wed, 13 Mar 2024 18:30:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tW3sGCtL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42DD242075
	for <devicetree@vger.kernel.org>; Wed, 13 Mar 2024 18:30:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710354617; cv=none; b=nlBfvXjyLvETzdoGXPZc/zTPrsSAU9Qrte2JNadUWADuiWBXZpwPjQLbkVS0+DuRnP5DdZLEE7bcUhfTfJcVgZ4j2Peb1WROJ7wZmdXgGr81Jpmn264GiMUb3ClQhWkHb5AjpH5Myhm1PgGPq7O2L+gR2oFjb3e9BOftlWVG4oQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710354617; c=relaxed/simple;
	bh=adezsuJQ0tiXIsQhUQ0BUSOjyhcWthQ99+43KQlZ59k=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=khFnvPU49c5y3JefewyVvxC0SJJUO3iU0i/3AG2Yeo9SJKIY8KZUdqspDKkNIWrMoHpG0gqaatxIa1wb6St4rQ62U7Hv3ci5pl65X135Xc/VxyAVFm1VMdO1Hz4dUW3BiFmDGc0Dd565u8E22NtdLz+QP5xJkdDEnYyE7zPrfzk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tW3sGCtL; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-33e9990da78so89222f8f.0
        for <devicetree@vger.kernel.org>; Wed, 13 Mar 2024 11:30:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710354613; x=1710959413; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=D+YQyG2zsvENkMDftJEvk2k0MZixWY69KUiTMLKqt8Q=;
        b=tW3sGCtL/cKYpwLU7KlOzrkoTriBtdUPvE0SHb8s1rf2q5X21vM11w6VYyB7NX4ADC
         +R4+EXFg3sQ8zqWAFgNAYR2lX1hDFyYh/H0U5QGXt87qrt4Iy8siUtOMujQ+JmKUM17W
         06pif/i+6ghtErH8rF6B36vk8Cjl2K0fRWTa4lOe+DRd8708AVdWLDgOg2PLHBN2Hl9w
         tVeOuJQrwQ+kGAZ1PVSuPohi8efoVOwy7tCJ6+JgzCeGMVA5YOyIdLp+1bZLqmd6ILJV
         w/WKHdyQrwK8EI6yNsiHj8iQvCi+nJMGFpfepqhv6yNDSscwqO33GoDpkiafsutcND2N
         QoGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710354613; x=1710959413;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=D+YQyG2zsvENkMDftJEvk2k0MZixWY69KUiTMLKqt8Q=;
        b=ZGEuW7sFsaGTREIBjEFp5rGQMYoozJejMedbMao02ye1uA50rfOBWLP/Xq7rtHvgJI
         FXFDOnqL4KWr+7Jx3u0Fd8CX7JgmJrhOmbEq1dkDv0pi4Xdt1hxYxZkfDC16wbaeVM8F
         Mca7EyrGvm2Rj4/foi+WiebQ4cntY97QzuajknNA73IT5UcHYn2GMpak8b+LcdbZR7pt
         y2NMGn4qs7onTp/6OCb2F/3OWP3Dsh26YLlJLodMapEq0hjlg2mzvx6C2Gl1bKPsvxvJ
         y3l7E5n7dEnFc8KQ+R67OCY8PQ3itxOoh6glPFuZ5hLSQRzFA/CQ7aeGRVuRckYa6Ps9
         jS9Q==
X-Forwarded-Encrypted: i=1; AJvYcCVYmAEXLcNma+vpHqKnVdpat3BT62s4g8kQe+ItiPwe0YRLh9vcEoiszFcWx1tQ5vXGn2bjwIlQ33MZV+oMm4oPYCOWVfymBPkZ4g==
X-Gm-Message-State: AOJu0YyeSJ+khmHqKMvvO0WYZADgXl52vmPsQEXEJ2nXowfF0C60r1pN
	06XwbTk06zpTQgphSrRumSJNyDKdkoEF1kdLWvlP453nSHDwfN6vRKK2EicLmOg=
X-Google-Smtp-Source: AGHT+IG3NI5xqTndsapPiz9fpR7KcgYAfZjx9c+jyeD5aTMqTN/5WCuui4maeigx7MwH2EF6Y7BnZQ==
X-Received: by 2002:adf:f14d:0:b0:33e:737c:792a with SMTP id y13-20020adff14d000000b0033e737c792amr1944983wro.68.1710354613662;
        Wed, 13 Mar 2024 11:30:13 -0700 (PDT)
Received: from krzk-bin.. ([178.197.222.97])
        by smtp.gmail.com with ESMTPSA id s13-20020a5d6a8d000000b0033d202abf01sm12174034wru.28.2024.03.13.11.30.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Mar 2024 11:30:13 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] ARM: dts: samsung: exynos5800-peach-pi: switch to undeprecated DP HPD GPIOs
Date: Wed, 13 Mar 2024 19:30:11 +0100
Message-Id: <20240313183011.14253-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

'samsung,hpd-gpio' property is deprecated and uses also deprecated
'gpio' suffix which is not matched by dtbs_check:

  exynos5800-peach-pi.dtb: dp-controller@145b0000: 'samsung,hpd-gpio' does not match any of the regexes: 'pinctrl-[0-9]+'

Switch to hpd-gpios property.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/samsung/exynos5800-peach-pi.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/samsung/exynos5800-peach-pi.dts b/arch/arm/boot/dts/samsung/exynos5800-peach-pi.dts
index 9bbbdce9103a..bb019868b996 100644
--- a/arch/arm/boot/dts/samsung/exynos5800-peach-pi.dts
+++ b/arch/arm/boot/dts/samsung/exynos5800-peach-pi.dts
@@ -185,7 +185,7 @@ &dp {
 	samsung,color-depth = <1>;
 	samsung,link-rate = <0x0a>;
 	samsung,lane-count = <2>;
-	samsung,hpd-gpio = <&gpx2 6 GPIO_ACTIVE_HIGH>;
+	hpd-gpios = <&gpx2 6 GPIO_ACTIVE_HIGH>;
 
 	ports {
 		port {
-- 
2.34.1


