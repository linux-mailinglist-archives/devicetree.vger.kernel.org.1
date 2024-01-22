Return-Path: <devicetree+bounces-33950-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C8E28376D1
	for <lists+devicetree@lfdr.de>; Mon, 22 Jan 2024 23:58:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 077C11F250A2
	for <lists+devicetree@lfdr.de>; Mon, 22 Jan 2024 22:58:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BFA1B495C1;
	Mon, 22 Jan 2024 22:57:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="uQYLpdmd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F1EF4878C
	for <devicetree@vger.kernel.org>; Mon, 22 Jan 2024 22:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705964256; cv=none; b=G3qynoOqUT1s/6E5CmiL5YeI2CTLXBnZ5m0atVQfmor8UDicO9EXFgvP1d025okNA7z+9k3YZt3oTvGRZZjJUNJ4zj0ZqdcS1jt8CzT6M78sR7fGCOsjWz5ij7Mw4L4r329KUkdnEMq2aQMVr2xySh7OkllsvgGXhCLsguw+Mmw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705964256; c=relaxed/simple;
	bh=NU25j/nRSRJjYdR9Xkbm95iBy1+9quhbyDaHdu07SNc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=aVmLOWb19eLCderdUdjcxwvpaXfPvtSwXHPmeFfJq+Y1bDncws1SWJ9Ka8FSYuJeC+4rUODDwN+NBDphSrBqpjUxl51/x9mViDaeDlY4EJHO7sGcuZ4mEY1b+2Bjw0CVALLzHtogIuKFRZYkwVB+ddEZpdqIXkaitOV0ksLztXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=uQYLpdmd; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-40eb99a72dcso220755e9.1
        for <devicetree@vger.kernel.org>; Mon, 22 Jan 2024 14:57:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705964253; x=1706569053; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pJbJnRKpWToFu2q+V6O7FlsxtcgPK6P8cGRt1rv+n50=;
        b=uQYLpdmdMVOzzWipAtTQ459d+DbOM3ZuixH/tzo2gFJ4sj15tsIs6nlNHNcL5A7//7
         yaxdYwtGdqQzmYqFqDZk9/h8y35ZiYcqFeeW0g8sQ2Aa3tYNaZBxOUYIAu4kpVZg9rga
         r33t3Cd7Yd1QoYs8tagh1vrX20KOYBzTs5kvW8X0RYV4jE2M+KPrSzIBLRy0/d3mHZeR
         GQ7ifuTLDJEWD8JW1/tTBdkriGHkBCpQ6qjbRrociOQjnYqB6t2cLiJpeH8v+BeW9OwD
         JRQPBBHa6pg2vcMa9IFaSyq25bbHpU1DgLlE5ikapiIA2htHyNi6lYf/CAmqCA/CdY5d
         R8AQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705964253; x=1706569053;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pJbJnRKpWToFu2q+V6O7FlsxtcgPK6P8cGRt1rv+n50=;
        b=WQCp6yNrPJETAMgEjkPIpxHo19E6pAJEZ75jiqccTG/NyBJpoHxFw9czgZD+QR6kmi
         zLPrBtwmyrFDr2Laxp/rmX4YwKirb8q1VbX/OEkNucGp8BW1DTDESXfHyt0QIUA/Vxkk
         3qnwfTPEBW0KCRcYFZIBXC3BPyIYVvtxUo5n8hbmSR96HpsKFaqE2tEB+vKsRSNT7ln0
         wH5VSHMkub3YWn4+JgF1QC+r82Vgmf7haIu4XxHpAJJvTPSOo+Ko8muN0p7Xw9yBSOdQ
         P8lsU9cph3W7LNqe7eNPozC5c/qn8N7SCWjcvuHBRNwoGM5wJ+NcJ7E0Xm+aA32KQ+UB
         6Hsw==
X-Gm-Message-State: AOJu0YwRamOxeZqG3Z8AR+S7djAV6iwI5JEiWo7b1fKHZJGE+CSJWnbk
	o3zcQ0ViO/oqk9FR9qO4UslO9tjXjAx+9PLKcm1utmE/rl+gNl+vsXkonjvap4I=
X-Google-Smtp-Source: AGHT+IG/jFOxju1LtglICeFEljCYH82Da8abwgt9uhjEC3EDk+nmoQu4sACeu8Vd9SIMCqy6XTt4bg==
X-Received: by 2002:a05:600c:ace:b0:40e:46b2:24da with SMTP id c14-20020a05600c0ace00b0040e46b224damr2627569wmr.71.1705964253325;
        Mon, 22 Jan 2024 14:57:33 -0800 (PST)
Received: from gpeter-l.lan (host-92-18-76-30.as13285.net. [92.18.76.30])
        by smtp.gmail.com with ESMTPSA id fa26-20020a05600c519a00b0040e89ff10f5sm19776847wmb.1.2024.01.22.14.57.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jan 2024 14:57:32 -0800 (PST)
From: Peter Griffin <peter.griffin@linaro.org>
To: arnd@arndb.de,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	linux@roeck-us.net,
	wim@linux-watchdog.org,
	conor+dt@kernel.org,
	alim.akhtar@samsung.com,
	jaewon02.kim@samsung.com,
	chanho61.park@samsung.com,
	semen.protsenko@linaro.org
Cc: kernel-team@android.com,
	peter.griffin@linaro.org,
	tudor.ambarus@linaro.org,
	andre.draszik@linaro.org,
	saravanak@google.com,
	willmcvicker@google.com,
	linux-fsd@tesla.com,
	linux-watchdog@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org
Subject: [PATCH 5/9] arm64: dts: exynosautov9: remove deprecated samsung,syscon-phandle
Date: Mon, 22 Jan 2024 22:57:06 +0000
Message-ID: <20240122225710.1952066-6-peter.griffin@linaro.org>
X-Mailer: git-send-email 2.43.0.429.g432eaa2c6b-goog
In-Reply-To: <20240122225710.1952066-1-peter.griffin@linaro.org>
References: <20240122225710.1952066-1-peter.griffin@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

samsung,syscon-phandle is no longer used by the Samsung watchdog driver
to access PMU registers.

Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
---
 arch/arm64/boot/dts/exynos/exynosautov9.dtsi | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm64/boot/dts/exynos/exynosautov9.dtsi b/arch/arm64/boot/dts/exynos/exynosautov9.dtsi
index c871a2f49fda..94c8d68fe92c 100644
--- a/arch/arm64/boot/dts/exynos/exynosautov9.dtsi
+++ b/arch/arm64/boot/dts/exynos/exynosautov9.dtsi
@@ -1551,7 +1551,6 @@ watchdog_cl0: watchdog@10050000 {
 			interrupts = <GIC_SPI 476 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cmu_peris CLK_GOUT_WDT_CLUSTER0>, <&xtcxo>;
 			clock-names = "watchdog", "watchdog_src";
-			samsung,syscon-phandle = <&pmu_system_controller>;
 			samsung,cluster-index = <0>;
 		};
 
@@ -1561,7 +1560,6 @@ watchdog_cl1: watchdog@10060000 {
 			interrupts = <GIC_SPI 475 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cmu_peris CLK_GOUT_WDT_CLUSTER1>, <&xtcxo>;
 			clock-names = "watchdog", "watchdog_src";
-			samsung,syscon-phandle = <&pmu_system_controller>;
 			samsung,cluster-index = <1>;
 		};
 
-- 
2.43.0.429.g432eaa2c6b-goog


