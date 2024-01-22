Return-Path: <devicetree+bounces-33952-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E5C28376DA
	for <lists+devicetree@lfdr.de>; Mon, 22 Jan 2024 23:59:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BBF0528AF40
	for <lists+devicetree@lfdr.de>; Mon, 22 Jan 2024 22:59:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 508F44B5B6;
	Mon, 22 Jan 2024 22:57:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WOnk8lb+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F4B34A99E
	for <devicetree@vger.kernel.org>; Mon, 22 Jan 2024 22:57:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705964260; cv=none; b=PsGX+/w+bx6dIhSh8+Ih9rqA8zK7NxOLbJrIT73vrz/TRX7e8au2M8Tijh5VysNX5DaTlX3pAluScfmAt2BtbK3SDXLHEpvGHy12lRbfRIf1NBVh5CQt6E3+D8MnTJLslUuTHAnfEMtHnsDXde6NlkwLbgsUzrVQo1IqTusA9h8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705964260; c=relaxed/simple;
	bh=VbkBWnzy+0UFddPvAXBKeoRNgIhOC3IP1F6/lPbA/gA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=rN7nU4e/z9tqAw6Ft7qPccQ5ErdUBeA37FaaDD0qUTGrLQjOUmrT6jlDCMyDWTDfef2Qs+cW0mWr5zQRFyOUiSrlOKLvylsV5WoJf8HarHcR2OWlJcICBIcmFap+5wsGCCqfVG8VJRjbcUvQ5I74B32KDr4b+zNPG9DkY9OnT8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=WOnk8lb+; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-40eb95bd2c6so696355e9.0
        for <devicetree@vger.kernel.org>; Mon, 22 Jan 2024 14:57:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705964257; x=1706569057; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=e6ViflgtGKoar4JoRupvo6UR3+8nq9fr7o9SkHHwUZY=;
        b=WOnk8lb+B85aeoOIuthPlyiCSOwnxdQ5+kTfxa72PIquEmDgDtBSC9UpqWBTxPSTQh
         08j66f9IS8VxIEUXV9Sid87pId/9t2bYJ+kcLZ4uCPJP0vrQYba4wfO9WEgumANLmCUh
         4nB6LqYI0A+WAULwntiyoOmSn9IqRmyQGBk1yjR9hMBKoTUqijiU0CDR5JGMbfxPYHng
         HQSPU+sj+1XfBabLG4FudjAo6xcfSSH2Mxg97OagYwB2bTbdP7ynL6FoYVnVidxFg1R3
         b+P1bH1/82DFIbarP82nDHxXWH5Tp5pUO56fR7rURJt9DW9vLmOktHDYqQTD9jf2T+vL
         0zuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705964257; x=1706569057;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=e6ViflgtGKoar4JoRupvo6UR3+8nq9fr7o9SkHHwUZY=;
        b=lRmsPUZfcpnb2yos5pMZb4ZRw6JF/DGApLle1Gw3UQPb0h8Y6TJyPANnbBGLDu+qhm
         1QbhiZ8Wqun9evrjnZobtHVc5xN0H+465PEHgyjTayYk0I2f3ZuGTBg5bGen9O/xMG8H
         SCRAfIk3K/ztjLw09sxQ7giU+1Eog82SuvCg14ntkm1Dw3/LoZUugM+FUVN4znKN8xXC
         QAU271xd2+egB8FgNAnV+QLDTOX+U/WjS5DF+Ln6s/TL7R01+px6oFsdyEwrVXn4oYN9
         ++H2eskZORztq7X/2Op7aVTODxr1Jv/DwSztm8keSsAOi9cLRow73Unh8YQEiXNa6znL
         +6Ag==
X-Gm-Message-State: AOJu0Yx570SfUs77BpYFjDU4MtZ3Ncpuvq+B2X0PvF5llR0xlpeRrwpt
	nG5V+D7kdZC0oVaZ7NYNHCISgWdrJhSPv1ePfrDDxWZ97ourIcMT5rBDSNybq1w=
X-Google-Smtp-Source: AGHT+IHwPlPcC1gFMy2RUxu4+dzTot/pZ/X/gGnPYFqMXOZZ3nFzZdmylLHz87taKykx7APs0vxeGw==
X-Received: by 2002:a05:600c:358a:b0:40e:93b4:25ef with SMTP id p10-20020a05600c358a00b0040e93b425efmr2798923wmq.26.1705964256708;
        Mon, 22 Jan 2024 14:57:36 -0800 (PST)
Received: from gpeter-l.lan (host-92-18-76-30.as13285.net. [92.18.76.30])
        by smtp.gmail.com with ESMTPSA id fa26-20020a05600c519a00b0040e89ff10f5sm19776847wmb.1.2024.01.22.14.57.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jan 2024 14:57:35 -0800 (PST)
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
Subject: [PATCH 7/9] arm64: dts: exynos7: remove deprecated samsung,syscon-phandle
Date: Mon, 22 Jan 2024 22:57:08 +0000
Message-ID: <20240122225710.1952066-8-peter.griffin@linaro.org>
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
 arch/arm64/boot/dts/exynos/exynos7.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/exynos/exynos7.dtsi b/arch/arm64/boot/dts/exynos/exynos7.dtsi
index 9cb6bd61262e..347c346e3cfb 100644
--- a/arch/arm64/boot/dts/exynos/exynos7.dtsi
+++ b/arch/arm64/boot/dts/exynos/exynos7.dtsi
@@ -555,7 +555,6 @@ watchdog: watchdog@101d0000 {
 			interrupts = <GIC_SPI 110 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&clock_peris PCLK_WDT>;
 			clock-names = "watchdog";
-			samsung,syscon-phandle = <&pmu_system_controller>;
 			status = "disabled";
 		};
 
-- 
2.43.0.429.g432eaa2c6b-goog


