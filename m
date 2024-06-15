Return-Path: <devicetree+bounces-76063-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E37D7909962
	for <lists+devicetree@lfdr.de>; Sat, 15 Jun 2024 19:49:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 83228283360
	for <lists+devicetree@lfdr.de>; Sat, 15 Jun 2024 17:49:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C85C65338D;
	Sat, 15 Jun 2024 17:49:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gQrcO3lP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8AC6D26AE7
	for <devicetree@vger.kernel.org>; Sat, 15 Jun 2024 17:49:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718473751; cv=none; b=LwTVIcn3CwFA5GPSt4e+ZB/F/pRNhoww677yl/chAE21WXX2kIiHEBK9cxXnxtBie+8ZWD46s6bv6/LAbpWUBhvkAhEcJYwGlPEfLHWktJV/cpGvLqASWE9GDAsYtLVdk4W+kXy9dwoJ5kQgUpOzT/89wXHVuizR7SBE5o84zjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718473751; c=relaxed/simple;
	bh=oGBKPT1M0XiRJNpVabQalPfRMu14bYm1uul2tPOLwKc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=SAWZjPYsUG97RSK1QYaTTGsbdMS4FB/2Yykt0DBQmWAVpQaTEmBLmbsUbU62Yxsy1BC/CG+rlIhIe00GvRwR8BVUch0S0l8QHUR+AmxZZlfu6MtYVKWHbOzweCLvugaFCKFi7798q+4notBDl8976HGMKaLN+/sYhQbDR+Vfymg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=gQrcO3lP; arc=none smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-57cd26347d3so379969a12.1
        for <devicetree@vger.kernel.org>; Sat, 15 Jun 2024 10:49:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718473747; x=1719078547; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=sQTdAZk+xkTaWcpSjHpauNVsk4RuoZYN9xg1Bzump2k=;
        b=gQrcO3lPZ1BSKptChDDOMB4LLap3KNy5uchXwU6iJx7aiuThMLthLDA1oJAcn+uTEd
         XBn26wARdb5U6cnuXTiq28zRGDWpW9B4PAXQOLdyIoWvidy59C0H82RFWk9fT94kJ4nf
         4DGB4/qE8LJZn0Re+Z8+hxIbJcX1z4q7Idfs/pb9N32RhbBIBdoqZ5Cb9ibo2gqVQioX
         HPYPkHXIpoRJyUroB4DwaOhNJb7uyGFqiqiQ5E911dte5aIUsiYpTWNDGUFT7SwwFEvO
         BcARFRcVUQVH+LiWGv8rq01QLYkZR/6OFh9uYieEaLcq5jKnLajrbtO8D4UXUq7dxHIw
         iBvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718473747; x=1719078547;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sQTdAZk+xkTaWcpSjHpauNVsk4RuoZYN9xg1Bzump2k=;
        b=H7AtGQ/3bae1fReRvohRgZXs9A8nBo4LGpyleYPUOl158E39+QrEa+SvEmI3nVKHbF
         7CzGzK3UHHhqE5X9JDWEUukCKtAfVwP6VDR3caYDX0HMwRzacd8wfAC7SYSgGLoUfAT2
         C6Vb8YLnM3fj7oqqEA7lMcsNftdo3Y8yUVox4cFVqLsEXOLvC2++XaRW3abwjxEALPct
         Z9yHq3FfJXDo8Nb9F33kdCgnz0pvp7c5Xa6NzRt2C7VTAd4uCmnt5SOJJ4oksSh/Cukh
         Ri9Ow1HMDwnkXhA3qJooqC7IdaS8+/E6vlQ6ca+DxxwyUUCwSJSZYB9rfRBsflZgwBLX
         UIhQ==
X-Forwarded-Encrypted: i=1; AJvYcCWbWXlnCyZ2dYkJrW4f062GFeGM8OhzOWNMcvubQq0OYHM/UWvTU3Pj1rkbJZxKMRijP6HSuR6Gg281SFnmzR8wtxoqf1RnjqRspw==
X-Gm-Message-State: AOJu0Yzj7qj1DSUuo0cYbOVkfAGha+QorZ4b/raw4zxIqRoy5YM4YV+N
	KkmtNYx5wMxOscrJhKrcXy2weO1sPj/BXh9mugOtIDPk7lCLM0zUmsuXe+p15TE=
X-Google-Smtp-Source: AGHT+IHI9wdR5yttuPe5CPAFwyWHcSWXRKDzT5MKecRnY8k+A4gMwRIgI941SC35XAKMmBHxxAe/6A==
X-Received: by 2002:a50:cd91:0:b0:57c:8c45:74ff with SMTP id 4fb4d7f45d1cf-57cbd8e8182mr2812346a12.41.1718473746710;
        Sat, 15 Jun 2024 10:49:06 -0700 (PDT)
Received: from krzk-bin.. ([78.10.207.147])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-57cb72e992dsm3942946a12.48.2024.06.15.10.49.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 15 Jun 2024 10:49:06 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Tony Lindgren <tony@atomide.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-omap@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	kernel test robot <lkp@intel.com>
Subject: [PATCH] ARM: dts: omap am5729-beagleboneai: drop unneeded ti,enable-id-detection
Date: Sat, 15 Jun 2024 19:49:04 +0200
Message-ID: <20240615174904.39012-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

There is a ti,enable-id-detection property in the Extcon Palmas
(extcon-palmas), but not in the Extcon USB GPIO binding and driver.

Reported-by: kernel test robot <lkp@intel.com>
Closes: https://lore.kernel.org/oe-kbuild-all/202406152004.F2fNnorG-lkp@intel.com/
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/ti/omap/am5729-beagleboneai.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/boot/dts/ti/omap/am5729-beagleboneai.dts b/arch/arm/boot/dts/ti/omap/am5729-beagleboneai.dts
index eb1ec85aba28..e6a18954e449 100644
--- a/arch/arm/boot/dts/ti/omap/am5729-beagleboneai.dts
+++ b/arch/arm/boot/dts/ti/omap/am5729-beagleboneai.dts
@@ -196,7 +196,6 @@ brcmf_pwrseq: brcmf_pwrseq {
 
 	extcon_usb1: extcon_usb1 {
 		compatible = "linux,extcon-usb-gpio";
-		ti,enable-id-detection;
 		id-gpios = <&gpio3 13 GPIO_ACTIVE_HIGH>;
 	};
 };
-- 
2.43.0


