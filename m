Return-Path: <devicetree+bounces-49142-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 592248750F6
	for <lists+devicetree@lfdr.de>; Thu,  7 Mar 2024 14:53:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DE3CAB26C54
	for <lists+devicetree@lfdr.de>; Thu,  7 Mar 2024 13:53:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D5DE012DD95;
	Thu,  7 Mar 2024 13:53:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Ib5cTV4W"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0998B12D768
	for <devicetree@vger.kernel.org>; Thu,  7 Mar 2024 13:53:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709819584; cv=none; b=nwVG9flKjk/Ex5rRQVjZ5BNXK27y7IAclvxHQ/VkUL/+a0J8Rnpfk3ZzOPqNDP2WzDAHu78mqOYQ3YdlmuMQMfrTaU2CuVQ/HNZ3dWAv9KUVwb0loe6WHWPSayBPgJjhdwThkIadkkBWLbs19+WlL9G2GUcdAGVFW0Y6zWbXVnQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709819584; c=relaxed/simple;
	bh=iS/ZnjaK6TRmcPu9aNMP+C8wqkwmDYhlm+2dQy+Pr3c=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=RIj/P13DvzvPAcquCHenacDNqqXmvZUlLbScmaL/5yKn03w2X7FBe0UNtXO3yob84TSwXM1m7GpDbaSk5hEiKf8kcgoBChv8XDBICIpG9xkottfR3GVzNv9foIFftqI/rubaO+jQbtsYGnvv/IKNQHB4Gq4Xgl3Evy14ecgi8LY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Ib5cTV4W; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-412e96284b9so7451005e9.3
        for <devicetree@vger.kernel.org>; Thu, 07 Mar 2024 05:53:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709819581; x=1710424381; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=OFRg8xB5AgYKtJRkOv35muuJJ49OzwPBSX7Kgc4LZhI=;
        b=Ib5cTV4W/J578+YD7JHYv5shZo+gtyE2wHZyMkZDShl1l9YINlBY/kzWgUHTNR1a1h
         OrZ7tDS3PsWct1gaWTDbPLmY2Hgv3gxaNb+FON3gyPj5dIBfUZUY+9UOH/YTw8vxHjMt
         leyFHypkkw11gE8T0fJ+aev65nWg/nn03Yk73r3jEUsVjYXq4UuAleIgLylnZ16M0EeU
         nTTrOXQn4VA/orTFVXLYHfqLjGvQH7roL/RvoXxRdbKcuDb/di62zOfqq64YW9lwokIs
         VK5hyZJ32cdUDE7A6fmfPJAUNpILn5uEon+ny8lT4NoGWYFUADFeTpN1OT1e6X+fEKdb
         2F3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709819581; x=1710424381;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OFRg8xB5AgYKtJRkOv35muuJJ49OzwPBSX7Kgc4LZhI=;
        b=gF9br5Bu23Z2oulDcPJaSs/EEgWKBG3foc0YxHpHeTgNqUx8Wh3nB1yx1+6Bm9kFCH
         0yHt13ODZn7n6DJJ7lllV06wjVGOzEUerrbm7Xmb2fjxBKjgHPhHwkKHVItCRoiYyxT7
         y2TMouesgYggttX1a1mGbKRaeYsQy/0hyyHlcOWF1QSkqPbi7ts54pmlitC/+pEN+6jD
         zhb1dQuIDZezLznbnig5rAc5ZDjZR1TNiAXUJzFMpQTVipf05tv6x9Ipr+hBDZoaVYyj
         xFRxGeXPUzreO8yOEM3tfqHlvRKyvLOXHNeyLEpFRuSW2ukV84OR6hqbEoRo0hCyiFhQ
         l70Q==
X-Forwarded-Encrypted: i=1; AJvYcCUdRIUgjSFUutGFSHCYQRb6bjoXxwvtuk8snwC1aFeycjPxUhrk7HHVfoZT6Qm90Xj944CrsPRadj89xzuIptwr3ucm3gLBJmp0AA==
X-Gm-Message-State: AOJu0YxCvp0lsx9nTjR/31FDozuZNDW7ixeTfhELetIBMYtGm1Y57tM0
	o11VxIKkENcO8QpSWO8C7imUHQetIauQFc9AflCRAbEebyXhgpGMS8qj/JD0QDM=
X-Google-Smtp-Source: AGHT+IF61AYutPgwA+UreNymAxWtde+Fu4g6cP5ZGMQQlNDE95ba8fYYdanfVRTO7jXImAkq32LYRA==
X-Received: by 2002:a05:600c:3596:b0:411:a94a:1ee with SMTP id p22-20020a05600c359600b00411a94a01eemr15040054wmq.21.1709819581260;
        Thu, 07 Mar 2024 05:53:01 -0800 (PST)
Received: from ta2.c.googlers.com.com (110.121.148.146.bc.googleusercontent.com. [146.148.121.110])
        by smtp.gmail.com with ESMTPSA id l8-20020a05600c4f0800b0041312cf472fsm1112390wmq.25.2024.03.07.05.53.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Mar 2024 05:53:00 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
To: peter.griffin@linaro.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Cc: alim.akhtar@samsung.com,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	andre.draszik@linaro.org,
	willmcvicker@google.com,
	kernel-team@android.com,
	Tudor Ambarus <tudor.ambarus@linaro.org>
Subject: [PATCH] arm64: dts: exynos: gs101: move serial_0 pinctrl-0/names to dtsi
Date: Thu,  7 Mar 2024 13:52:48 +0000
Message-ID: <20240307135248.162752-1-tudor.ambarus@linaro.org>
X-Mailer: git-send-email 2.44.0.278.ge034bb2e1d-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The pinctrl nodes are coming from the shared gs101-pinctrl.dtsi,
thus the pinctrl-0/names shall stay in dtsi. Move them.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 arch/arm64/boot/dts/exynos/google/gs101-oriole.dts | 2 --
 arch/arm64/boot/dts/exynos/google/gs101.dtsi       | 2 ++
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/exynos/google/gs101-oriole.dts b/arch/arm64/boot/dts/exynos/google/gs101-oriole.dts
index 6ccade2c8cb4..9dc0f47ef646 100644
--- a/arch/arm64/boot/dts/exynos/google/gs101-oriole.dts
+++ b/arch/arm64/boot/dts/exynos/google/gs101-oriole.dts
@@ -103,8 +103,6 @@ key_power: key-power-pins {
 };
 
 &serial_0 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&uart0_bus>;
 	status = "okay";
 };
 
diff --git a/arch/arm64/boot/dts/exynos/google/gs101.dtsi b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
index 55e6bcb3689e..ee65ed9d2cfc 100644
--- a/arch/arm64/boot/dts/exynos/google/gs101.dtsi
+++ b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
@@ -421,6 +421,8 @@ serial_0: serial@10a00000 {
 				reg = <0x10a00000 0xc0>;
 				interrupts = <GIC_SPI 634
 					      IRQ_TYPE_LEVEL_HIGH 0>;
+				pinctrl-names = "default";
+				pinctrl-0 = <&uart0_bus>;
 				clocks = <&cmu_peric0 CLK_GOUT_PERIC0_PERIC0_TOP1_PCLK_0>,
 					 <&cmu_peric0 CLK_GOUT_PERIC0_PERIC0_TOP1_IPCLK_0>;
 				clock-names = "uart", "clk_uart_baud0";
-- 
2.44.0.278.ge034bb2e1d-goog


