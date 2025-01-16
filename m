Return-Path: <devicetree+bounces-138957-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 08FD9A135F8
	for <lists+devicetree@lfdr.de>; Thu, 16 Jan 2025 10:00:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 31479167816
	for <lists+devicetree@lfdr.de>; Thu, 16 Jan 2025 09:00:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B0CA91D90D7;
	Thu, 16 Jan 2025 09:00:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fcQQEb8h"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCA961D8E12
	for <devicetree@vger.kernel.org>; Thu, 16 Jan 2025 09:00:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737018037; cv=none; b=sqh7som2C2TrAO2S0pMGB97m/pCTHYUSIsBzHsLmluwPRzpFcFj/3ODtAFjDmk3Kb9CbK+t5qDIppeYhygeuSstKPA29LViylUTWxz8C+l2qczam8XluIslD3BWjWRZDW+XXEUOhBcVSI7fOVB0l7n12TEl3skcXm9yi5bLJsMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737018037; c=relaxed/simple;
	bh=QYRgIBSeVmtCyuswWsaavDXxZdyGMrfAkCb8VWXRNGU=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=dOwoGZesalicrYirpKRoUxIMi15ImvoHtzQ/KYAMNFipsC0egWVaF1Ys5UMfUJam3v4bYIW9Les8ZfyWYZPWS/aJj9t7FI3c2D35VVIeRdSseZhg6eISO6SO8MfPpK9DTGPKOXQYbv3mO3WEgniZDF0lALMwUL9V6U+LJETOLFQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=fcQQEb8h; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-43637977fa4so384775e9.3
        for <devicetree@vger.kernel.org>; Thu, 16 Jan 2025 01:00:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737018034; x=1737622834; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=fAYBfOUg54M5t/+kaqNBofxYRILpFjbjDYCFpBhx0oA=;
        b=fcQQEb8hDicAnFMtxOEKPRdwavmEUQupwWSfccI+UymaVIEdQGwDyNaNRLVFWeuQhR
         7sm0+d/a87Z6VHbgvsnz2TST5+TYZixBYUHdYxstEhcx4qELrsmS7GpdwI0FRGxACsfl
         /0DtVPt3dAbW6JOXgBeBlH5j0xPMg/ynFQktovqu0KMrrdud/OO62e0qfo9nl8SI1Btr
         xZ0ytMmZ6SJDBTFc0zJABqMA6ymDGQaycJGwOp54tku/PlP8T9G07BA0lf4sT3QCYEM9
         MQmpc7tBl6ds9eYUnN6Ilox6Jaeym9mZW+lOmTfI82K0UM+bRQ8DnD8lhFx+eL6nENlO
         DSpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737018034; x=1737622834;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fAYBfOUg54M5t/+kaqNBofxYRILpFjbjDYCFpBhx0oA=;
        b=rsI6f/s6qNIFIeIbguEGiAt3cVlSJP2hyeTAQfyuWdMfB8l31ATHZ8O3KVK6YQLenz
         7QP8dKFFu/OpmLYU0Yr1oNhxarrn+7Ki6jn9uMr6luQQTBDIIM5fSK85vcVvyQ5491hy
         0i6gXnxiSdrACfGaO1Zd9Ks2+aGMVMhn4zI/yfm1GnVxpXut9CEVRJKEcXwo6tcJAj6f
         RyN/S0c2RewYVDNOABSx6bL/MHuP7kvJPf2kOIr2TMc/VGx42O25tTyDVLytKmfbzflF
         zSmdLo2+kiWJzw46YTHflfA5sVHSwITPltAm87z7gcdHyZ8LQVK/1/AyVuHK2/z66Kak
         0G5g==
X-Forwarded-Encrypted: i=1; AJvYcCXSVavytMGyBZcdNlUmTo26V+FJlxD8aHtI9zwKBaLHQQVX9LKCjY8oqhDu5yzdSDBPdL/3CDZjhsNW@vger.kernel.org
X-Gm-Message-State: AOJu0Yxwc+7NlrZEk6kTiAn/J+ywkGY30jf6jLpM9BPs72aXe1YQyukJ
	mMQg00DvSB9ePgsOAZfXNEFBP7xkY2ADerVVP9FRtzWa3mDsVHsq3YyN4LXijzU=
X-Gm-Gg: ASbGnculgPStipRdD9Rvg70ekxG7cg3bKit8/qNRKQZQwkh545rJqFKUrWslk3dgsVY
	KqPfJrjVwzRGUDoLY8AR6kHe0+5Ibwd5CrjcawxDP84Fw6YIdczFXdBKpnvXSNtKkawLuwUSfEu
	MGPKRiHhCrro8GZIuJrcBER8nbnejTz14/6zjgC/4OUnKLHPu4XDfFDSOIYfPyFuUH1cmYChrsN
	Tyy0pz13v38y2v6s5y6pndBYNHHchaAqqGDADUs3+7Q1+NS4VpbGyFQKkDy/Ka/DKXEP3o=
X-Google-Smtp-Source: AGHT+IHoE3dr5+IW22/U86RkgkX8O1rrKesuiTRisleXCYyZZhvGeHAZRVoyTntXQXFe+8mX6d1bUw==
X-Received: by 2002:a05:600c:1d07:b0:434:f335:aa0d with SMTP id 5b1f17b1804b1-436e26924e8mr129454305e9.2.1737018034322;
        Thu, 16 Jan 2025 01:00:34 -0800 (PST)
Received: from krzk-bin.. ([178.197.223.165])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-437c7525ee9sm51180405e9.32.2025.01.16.01.00.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Jan 2025 01:00:33 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: David Lechner <david@lechnology.com>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] ARM: dts: ti: davinci: Align GPIO hog name with bindings
Date: Thu, 16 Jan 2025 10:00:30 +0100
Message-ID: <20250116090030.87452-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Bindings expect GPIO hog names to end with 'hog' suffix, so correct it
to fix dtbs_check warnings like:

  da850-lego-ev3.dtb: batt_volt_en: $nodename:0: 'batt_volt_en' does not match '^.+-hog(-[0-9]+)?$'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/ti/davinci/da850-lego-ev3.dts | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boot/dts/ti/davinci/da850-lego-ev3.dts b/arch/arm/boot/dts/ti/davinci/da850-lego-ev3.dts
index 4df10379ff22..173401c58d53 100644
--- a/arch/arm/boot/dts/ti/davinci/da850-lego-ev3.dts
+++ b/arch/arm/boot/dts/ti/davinci/da850-lego-ev3.dts
@@ -412,14 +412,14 @@ &gpio {
 	status = "okay";
 
 	/* Don't pull down battery voltage adc io channel */
-	batt_volt_en {
+	batt-volt-en-hog {
 		gpio-hog;
 		gpios = <6 GPIO_ACTIVE_HIGH>;
 		output-high;
 	};
 
 	/* Don't impede Bluetooth clock signal */
-	bt_clock_en {
+	bt-clock-en-hog {
 		gpio-hog;
 		gpios = <5 GPIO_ACTIVE_HIGH>;
 		input;
@@ -433,19 +433,19 @@ bt_clock_en {
 	 * anything, but they are present in the source code from LEGO.
 	 */
 
-	bt_pic_en {
+	bt-pic-en-hog {
 		gpio-hog;
 		gpios = <51 GPIO_ACTIVE_HIGH>;
 		output-low;
 	};
 
-	bt_pic_rst {
+	bt-pic-rst-hog {
 		gpio-hog;
 		gpios = <78 GPIO_ACTIVE_HIGH>;
 		output-high;
 	};
 
-	bt_pic_cts {
+	bt-pic-cts-hog {
 		gpio-hog;
 		gpios = <87 GPIO_ACTIVE_HIGH>;
 		input;
-- 
2.43.0


