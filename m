Return-Path: <devicetree+bounces-229789-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BB00DBFC3EA
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 15:46:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8C909623328
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 13:38:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CEB3A338904;
	Wed, 22 Oct 2025 13:36:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="GPTX2EcV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00B0C26ED35
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 13:36:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761140182; cv=none; b=Uxk90kiMuI08vCDZaDgopfuEn3gPICrvCYauAsxZKjblGgSpkTvhVhkZk92cxSi9D8O6S+zrKskpgoJRL+drSr6Op1ZKPm1etfJdbVtM8PsKIIpuD+fypyS3jLnRf1Z53s9yZqFm+fbqTG4OdSHLMb0jO6qStVLUS6oL6YRO7uk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761140182; c=relaxed/simple;
	bh=iTsJRmqNa3slkYZC0WXqGOX9CSNODhCwke55eAgwU34=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Qy1vvZ2iNuU3nRJHNhyDUEfQ4sLWuwwzfGKlfdGtEKxCEten5EaBvuJPvHvGwNNRuzHLohfOdmqL9E+2Oh+Rxjcyyhv8GIjf3+GdMCM+N18XC7azSrNYn2OWz1AH/IqkSWPdC/Kqcqf+Ow8p5J+W36ImbtUx9AWnqrr3MgLL/UI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=GPTX2EcV; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-4710dc94cf0so1256055e9.1
        for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 06:36:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761140179; x=1761744979; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=dmvGzByM5O4N9sfFvXRYfnFUo6WgQWqvYDajZ7pSaE4=;
        b=GPTX2EcVgBEXqTC+ED58YxPZ8aNhSDo294KIFo5DmIlDwlDBButqKPkvM1x8Q/Z1Hk
         ssHpjZzHXNnVOlbz2bKy9yPi/zLGaJbKxX9veuP/2ew+Db0RUy3te4zN0PuseS8YAmvW
         YdTM1MPz2ksjC5DvFjaZTlmg8QlGOTVpTZAJGWcUQ+1IssxsLo8oUauvQxPlnGeD38nO
         SPWJnUEKKVJ01FGid95HI9BEfbqchhy/heYkENcNeMNrgsRFfGaEyeOvGZfRlZYtF1ia
         cCmOwDnpVOVCnLZSbE1i0ESj32bXxN/3a8a/4YJS0UWFKa9AtxGebtpbRwHIrG/LVx3B
         Pj0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761140179; x=1761744979;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dmvGzByM5O4N9sfFvXRYfnFUo6WgQWqvYDajZ7pSaE4=;
        b=PU/ntNuuEHcmZILnxpHPXxBxGTouJ7BL+bNYa6n0pIkxJ0Cq/6g+zIqt6OVts0dNlo
         wT7KJ6uN8NsPIj4WO1B7ZujxjSASaYXC6UOLuTW5SB6s0u/BLex7EggroJjDvy/iaOKg
         o4SBpsx6z1+l65g3IFNp5a1IkPVXUwbtXq8P3iHoI4q2ktpQkWJeU4sY0Mxz81WRA3Pg
         Fnmr0eAhqM0ElreXW/PMHJacIqLTHiwsk6/nYwyCj7amrIwm5o40Dh9339qRtGgWNyPf
         FqOC15nN81Bj3XGoOM0galDFrlU24Vg9/FIR1C3+ccK8hxUQyK7HGu8hQjomL1tEpcXL
         wnsA==
X-Forwarded-Encrypted: i=1; AJvYcCVwWpL0W9yrzw4D2TRCpaMDiGIiT4Ph+iY50EoA0W9HReV6mWcKkRVmxnKW7fg0mkvNYT6CzJctlZeM@vger.kernel.org
X-Gm-Message-State: AOJu0YxC3vwbpNG7dQjRhHwEoS6edwCeiJ1rgrUQq2j3L4puDkJNHXzk
	ud/RRIaT4+asRLjDG4HZBx84/J9qR43Ug5mKHgE6XzArNB1GuxWHmILyrLlzDPz/6YAZKSuFz1b
	DCo+A
X-Gm-Gg: ASbGncstbJwJGjakmDXqdnOoCvqJtsQXGKZvHev+PAvAAWHzl2JLa+5q6IHvbRnwVS2
	MlLN6lgYWdtEDPY28sZZBUxk+TXKh4XQdAn1HuomKpdIdi2kcJ6Qk3qcDEGYcdu5HvlVrzi+1w4
	bv92GsFNV0u4ldK8NocXCB+25jN+yamQia8K+iAJrQxohA8EyaUsE3P5IDAgfIxoXuNobX98me3
	tmHgnnUbIdsZe6Ps+divgVuQroDOjp/S7fF2Uoa1++qSHP81UJ2z9TqTXkCbuw5zrH8NuF5TAed
	+XpUis1w+F4p8MAZvryWh2W24srxDeX82r3RJHUqbwPNv1JZp1X6+hyPT9Qs+mfVjWKr4keKxSQ
	8+66T2i+EkvOmDPxVbG+sljr/+2hFOt+Xfnl1Wf0+iqqRfr5TCUOgY+jqqEcJPVzshIIWE1IK+b
	+Sp2Cf1F58FWY=
X-Google-Smtp-Source: AGHT+IF11NRjqeuEZAE/OBiadKOc1mEMhPEL48ZpZiu16lUe5zj1hRs6GGA2fA/Q4luhxo1H23TAsw==
X-Received: by 2002:a05:600c:3b0a:b0:46e:3c73:2f9d with SMTP id 5b1f17b1804b1-474943059b7mr31754245e9.6.1761140179357;
        Wed, 22 Oct 2025 06:36:19 -0700 (PDT)
Received: from kuoka.. ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-475c427c3bfsm51915465e9.3.2025.10.22.06.36.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Oct 2025 06:36:18 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Nobuhiro Iwamatsu <nobuhiro.iwamatsu.x90@mail.toshiba>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] arm64: dts: toshiba: tmpv7708: Align node names with DT bindings
Date: Wed, 22 Oct 2025 15:36:17 +0200
Message-ID: <20251022133616.74492-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.48.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

DT bindings expect node names to follow certain pattern, dtbs_check
warnings:

  tmpv7708-rm-mbrc.dtb: pmux@24190000 (toshiba,tmpv7708-pinctrl):
    'pwm_mux' does not match any of the regexes: '-pins$', '^pinctrl-[0-9]+$'
  tmpv7708-rm-mbrc.dtb pmux@24190000 (toshiba,tmpv7708-pinctrl):
    $nodename:0: 'pmux@24190000' does not match '^(pinctrl|pinmux)(@[0-9a-f]+)?$'
  tmpv7708-rm-mbrc.dtb: wdt@28330000 (toshiba,visconti-wdt):
    $nodename:0: 'wdt@28330000' does not match '^(timer|watchdog)(@.*|-([0-9]|[1-9][0-9]+))?$'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/toshiba/tmpv7708.dtsi      | 4 ++--
 arch/arm64/boot/dts/toshiba/tmpv7708_pins.dtsi | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/toshiba/tmpv7708.dtsi b/arch/arm64/boot/dts/toshiba/tmpv7708.dtsi
index 9aa7b1872bd6..88e38d6efcaa 100644
--- a/arch/arm64/boot/dts/toshiba/tmpv7708.dtsi
+++ b/arch/arm64/boot/dts/toshiba/tmpv7708.dtsi
@@ -161,7 +161,7 @@ gic: interrupt-controller@24001000 {
 			      <0 0x24006000 0 0x2000>;
 		};
 
-		pmux: pmux@24190000 {
+		pmux: pinctrl@24190000 {
 			compatible = "toshiba,tmpv7708-pinctrl";
 			reg = <0 0x24190000 0 0x10000>;
 		};
@@ -463,7 +463,7 @@ piether: ethernet@28000000 {
 			status = "disabled";
 		};
 
-		wdt: wdt@28330000 {
+		wdt: watchdog@28330000 {
 			compatible = "toshiba,visconti-wdt";
 			reg = <0 0x28330000 0 0x1000>;
 			clocks = <&pismu TMPV770X_CLK_WDTCLK>;
diff --git a/arch/arm64/boot/dts/toshiba/tmpv7708_pins.dtsi b/arch/arm64/boot/dts/toshiba/tmpv7708_pins.dtsi
index a480c6ba5f5d..5ea835fe08a8 100644
--- a/arch/arm64/boot/dts/toshiba/tmpv7708_pins.dtsi
+++ b/arch/arm64/boot/dts/toshiba/tmpv7708_pins.dtsi
@@ -91,7 +91,7 @@ i2c8_pins: i2c8-pins {
 		bias-pull-up;
 	};
 
-	pwm_mux: pwm_mux {
+	pwm_mux: pwm-pins {
 		function = "pwm";
 	};
 
-- 
2.48.1


