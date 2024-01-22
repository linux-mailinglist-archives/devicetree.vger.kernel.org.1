Return-Path: <devicetree+bounces-33951-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D04008376D5
	for <lists+devicetree@lfdr.de>; Mon, 22 Jan 2024 23:59:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2F6F3B2282B
	for <lists+devicetree@lfdr.de>; Mon, 22 Jan 2024 22:59:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 979CC4A99D;
	Mon, 22 Jan 2024 22:57:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WQhmuVoa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9DCA47A4B
	for <devicetree@vger.kernel.org>; Mon, 22 Jan 2024 22:57:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705964258; cv=none; b=D/OFY3IFqNJTyt/rk9sFiqDi43ghi2QionPJww6jZDv6zbCVA5IoRnL0LROcfoOO3rOVkiAi/DtYpm2HDjhGLpVQeNtDEJJi3RDDrXH/4ElGjwGGReeS2svv8rjwDYmp07hr+xLpFJroJhcRqg7szYkxfERW0uDuhD0Ck5iwZ3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705964258; c=relaxed/simple;
	bh=ZgVtAIKrhtdCLGsKgWlIaERKd0KusdG4ZWad/DmmfvI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=diNgID8nVusf05LRkgXpVHXOI2mj+O8gUZzDGZnq1pQrmYJ2BtXkG1FY1+lfVQv3iexkSKdvKdCdCTX+/XoBBsKgxxGkzpjDOkQVSANg9hHCM+9/oth2vyd1MEHpAxt9E6F1QRXeHj5B/6mJCsuc5lmUCIVeRAg5/PxWcuJ5ppE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=WQhmuVoa; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-40e880121efso41001125e9.3
        for <devicetree@vger.kernel.org>; Mon, 22 Jan 2024 14:57:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705964255; x=1706569055; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7y+1O2dDRcam6iTMZXdaVDgBYCAnl5nZ5iJ12xvO9iQ=;
        b=WQhmuVoarWFIGtqtGwscjgHLusKzOTmo7CZPnJ3x6zaPkP+FRhKGGgvnR5v6gc9crx
         ZlVGVQ1k72+2OqS5KNyXOS3mhKQdTeUGTWgeT1KEnGud12Gr9TE0kQhJ6Ou5h+VJRt84
         odcjzIkD4qenZk+nNiVFtlXMaGDHdJgi0VWk7McGLgoTNtZPzjjjyvL6kD43rAjV54Ro
         KyYYk50UdefbRF856JC5c2qnLORX1hqHoDoMUlhZ9zykgCDS5u77P49k3xSX/k3diMq0
         JO+gJzS3KOnSjf8rnFh5CEHiG1S8zbUp7TkPbg40x+PN0CPyNqW3ZD/moSmqddDoB/1H
         g1Bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705964255; x=1706569055;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7y+1O2dDRcam6iTMZXdaVDgBYCAnl5nZ5iJ12xvO9iQ=;
        b=EcMABMw3ZJ0CGnAuRnm6e0KMzFlYE+qRYQo+bxW7VF0DQicEwrgYPxVkQsFJws8jZ5
         En/n98bA8V5WPBkNGyNRZaeYOH7d/L9FoJ1g0EUAwQqBE3ZbyOUeA0KOD98j8iv6Hm1q
         1b+F08/vACqqFOdXzeoe0NE3thp7tm/sxI1CBf7CW1aNtMkUFnCHj802ZIqqkIViCFmd
         Uqn5S6bJ575ZU93iNulI9bSZDF8754Cf19iQgH/ffi6gh4utFZSlk5ZgYNHCImIprPdk
         A1b/MS30YL7k3N2z1Y3o5v0vbcNxItHIlxl383zlQisyPPKpEUGDCd+bkjuom64qffRG
         rmOA==
X-Gm-Message-State: AOJu0YwijyU3LsQ+J9/fB6AG43vENva/ss6bIQCChkVRiDKi6iQ8Jnah
	xkx9maMqpUq0C7FQSaoomyVSTRyEuf7q0a2TLlWDy9ON8jB90gGBciLAlQcpnQQ=
X-Google-Smtp-Source: AGHT+IHqRrOEHIHhSifFZN302yhKTakQXstI0NxfnOUmXlruuoJ4Ui4e3EJWHkPdJKGLM3ndNTcg/w==
X-Received: by 2002:a05:600c:5107:b0:40e:4782:fea7 with SMTP id o7-20020a05600c510700b0040e4782fea7mr2785067wms.180.1705964255173;
        Mon, 22 Jan 2024 14:57:35 -0800 (PST)
Received: from gpeter-l.lan (host-92-18-76-30.as13285.net. [92.18.76.30])
        by smtp.gmail.com with ESMTPSA id fa26-20020a05600c519a00b0040e89ff10f5sm19776847wmb.1.2024.01.22.14.57.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jan 2024 14:57:34 -0800 (PST)
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
Subject: [PATCH 6/9] arm64: dts: exynos850: remove deprecated samsung,syscon-phandle
Date: Mon, 22 Jan 2024 22:57:07 +0000
Message-ID: <20240122225710.1952066-7-peter.griffin@linaro.org>
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
to access PMU registers and is deprecated.

Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
---
 arch/arm64/boot/dts/exynos/exynos850.dtsi | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm64/boot/dts/exynos/exynos850.dtsi b/arch/arm64/boot/dts/exynos/exynos850.dtsi
index da3f4a791e68..6d4789c77a1c 100644
--- a/arch/arm64/boot/dts/exynos/exynos850.dtsi
+++ b/arch/arm64/boot/dts/exynos/exynos850.dtsi
@@ -216,7 +216,6 @@ watchdog_cl0: watchdog@10050000 {
 			interrupts = <GIC_SPI 228 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cmu_peri CLK_GOUT_WDT0_PCLK>, <&oscclk>;
 			clock-names = "watchdog", "watchdog_src";
-			samsung,syscon-phandle = <&pmu_system_controller>;
 			samsung,cluster-index = <0>;
 			status = "disabled";
 		};
@@ -227,7 +226,6 @@ watchdog_cl1: watchdog@10060000 {
 			interrupts = <GIC_SPI 229 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cmu_peri CLK_GOUT_WDT1_PCLK>, <&oscclk>;
 			clock-names = "watchdog", "watchdog_src";
-			samsung,syscon-phandle = <&pmu_system_controller>;
 			samsung,cluster-index = <1>;
 			status = "disabled";
 		};
-- 
2.43.0.429.g432eaa2c6b-goog


