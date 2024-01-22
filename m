Return-Path: <devicetree+bounces-33949-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D1028376CA
	for <lists+devicetree@lfdr.de>; Mon, 22 Jan 2024 23:58:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A6E811F25215
	for <lists+devicetree@lfdr.de>; Mon, 22 Jan 2024 22:58:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F1A15405C0;
	Mon, 22 Jan 2024 22:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mcmFjQTl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DA91381DC
	for <devicetree@vger.kernel.org>; Mon, 22 Jan 2024 22:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705964254; cv=none; b=Ed4zAZ23i0BJp79F+xwC2m9MM67c37Mwvrvj9usiNY8aZhXqhrMZrglU3x4g5lk38miP0lBK3zPzU4CJVdUTrv+VamsBTG5trL3cBWfzzMFe0ZMSvHL807u92fjRNgz4S5Sz9B6xm31tmCsx88SLe46jzSVt404rz46j9FPKdbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705964254; c=relaxed/simple;
	bh=BoHzIuF9/gjqWNPMlzNp4FmNG1UNGUTagv+K3rRO0Hs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Ycq87wvIKir4pJeQ3uEdayOqWj2QA/yu3xnZtU6XGID33nAicODHDUTvUjNaZ0TbmHlvRz05KiOjsaaW63aqkcT0xZv/MBfKYxjBZ/M/Nod7yo5HJ4SNtfIfvXjPsBbvmPlFeGxfsx1SpjoznNAGQda48KJui7F+NlJBjAIeBHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mcmFjQTl; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-40eb0836f8dso10014865e9.2
        for <devicetree@vger.kernel.org>; Mon, 22 Jan 2024 14:57:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705964251; x=1706569051; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=y4bTzUw+MKMULDVrOGqPlspEn1WsvCRNgroEJ1fsBHQ=;
        b=mcmFjQTlw5O3sD4pXK8wVxzni0TDCUA8+MWev8ndkjg4jzx6W5Cptz/p2dQUnBvg3i
         q1tDBpRcYP7XeKkuR2itCEICt7WTXgJQSwgtgFLZs656hVK5GmA9IIp5aVj2F0Tah6uB
         Ou9efJEBz/GvO6t2nUnNX0BfPCjJUtbAId+6Wfw9/c9rqJ5KViEsAemrqDJetfLqs6v4
         5Z1FLep+pbSo4wuFN0A6IIeNS/HVYCBAnPrvEmQ2Fe/fI0NMPt+fLC6Lf0I7qvM/ErF8
         05VWBqdMYJ83d4NBmXeOBfgc2rhqas5rbCpB5EZH/zTGIjkvZj/7mTius1P6J/abPYGR
         6tqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705964251; x=1706569051;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=y4bTzUw+MKMULDVrOGqPlspEn1WsvCRNgroEJ1fsBHQ=;
        b=RTbZQXNNHHL7KrqjoX6/Xxsi/ZAOWEkYJ4QAOjdwryLH6a23P7vmEFJb8P9YwsEqVD
         dDaj62Zt0OKhSDT1D1/yW/ld039J7gi4ZEAXxSxSoVg6PkJ573vHFPEIMrzptycmNKCN
         7nSOdhHxz/bUZDPMp+KBhb1JHmEiI33kTidZJOb2QqewfUQoHj5clIPD70vBRbhokITP
         mFEYOW7gS8O7mP1WrLKulDwyQHV4szsRapXtzSHaWpe4XY8SU0GougA+k4pObN00N/k2
         4X8beV5fVOc2JAi7zWceI/+Caax7et3rhcfxettyN0ZS+Ge+Uhroqe8FjKbga9UW91AY
         3NVQ==
X-Gm-Message-State: AOJu0Yxe6vIs3+JUu0OWnZF2VfpKo6ciCyav3leBRth38hLBgPqwkXYU
	Mhrn6hoiVtnCkenGI6Q7eSWgyT89EG6Jd9BodeS4J/enXn9cKhnpx+eNisEqD2k=
X-Google-Smtp-Source: AGHT+IETd2PX8JmJBxIqCh7S7rWJGs2+2BZQchWv4xtVboyS/6Q+VsUVSnmnkjvLrWfcHXbLQv6r8g==
X-Received: by 2002:a7b:cd0e:0:b0:40d:3dd7:46f8 with SMTP id f14-20020a7bcd0e000000b0040d3dd746f8mr2773352wmj.127.1705964251630;
        Mon, 22 Jan 2024 14:57:31 -0800 (PST)
Received: from gpeter-l.lan (host-92-18-76-30.as13285.net. [92.18.76.30])
        by smtp.gmail.com with ESMTPSA id fa26-20020a05600c519a00b0040e89ff10f5sm19776847wmb.1.2024.01.22.14.57.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jan 2024 14:57:30 -0800 (PST)
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
Subject: [PATCH 4/9] arm64: dts: fsd: remove deprecated samsung,syscon-phandle
Date: Mon, 22 Jan 2024 22:57:05 +0000
Message-ID: <20240122225710.1952066-5-peter.griffin@linaro.org>
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
 arch/arm64/boot/dts/tesla/fsd.dtsi | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/arch/arm64/boot/dts/tesla/fsd.dtsi b/arch/arm64/boot/dts/tesla/fsd.dtsi
index aaffb50b8b60..9b55e44c1db0 100644
--- a/arch/arm64/boot/dts/tesla/fsd.dtsi
+++ b/arch/arm64/boot/dts/tesla/fsd.dtsi
@@ -625,7 +625,6 @@ watchdog_0: watchdog@100a0000 {
 			compatible = "tesla,fsd-wdt", "samsung,exynos7-wdt";
 			reg = <0x0 0x100a0000 0x0 0x100>;
 			interrupts = <GIC_SPI 471 IRQ_TYPE_LEVEL_HIGH>;
-			samsung,syscon-phandle = <&pmu_system_controller>;
 			clocks = <&fin_pll>;
 			clock-names = "watchdog";
 		};
@@ -634,7 +633,6 @@ watchdog_1: watchdog@100b0000 {
 			compatible = "tesla,fsd-wdt", "samsung,exynos7-wdt";
 			reg = <0x0 0x100b0000 0x0 0x100>;
 			interrupts = <GIC_SPI 472 IRQ_TYPE_LEVEL_HIGH>;
-			samsung,syscon-phandle = <&pmu_system_controller>;
 			clocks = <&fin_pll>;
 			clock-names = "watchdog";
 		};
@@ -643,7 +641,6 @@ watchdog_2: watchdog@100c0000 {
 			compatible = "tesla,fsd-wdt", "samsung,exynos7-wdt";
 			reg = <0x0 0x100c0000 0x0 0x100>;
 			interrupts = <GIC_SPI 473 IRQ_TYPE_LEVEL_HIGH>;
-			samsung,syscon-phandle = <&pmu_system_controller>;
 			clocks = <&fin_pll>;
 			clock-names = "watchdog";
 		};
-- 
2.43.0.429.g432eaa2c6b-goog


