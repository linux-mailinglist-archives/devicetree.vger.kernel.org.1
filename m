Return-Path: <devicetree+bounces-256864-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A0B1D3A842
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 13:14:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B64763134C99
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 12:09:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1012235C191;
	Mon, 19 Jan 2026 12:09:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="RZb3CUCH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 578F8359F8C
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 12:09:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768824545; cv=none; b=ediK9i82eyDHf/52yjjFRFFRTqooedn0Byvgrl1o5RCj0dJLtq04ijvoAAqEGM4+Tq45yuS/j1HMuRagK41O5mdwPAzNQ/5FxGTjnBG1e4tRvWzUKnM9l+lipbh8TU5dEXuLdKVY924zqBKnBxDkPpd4Q0IjybXTUSA6pq4ogrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768824545; c=relaxed/simple;
	bh=glFQ4Oo7aFXvg4qCxUzDyhw63Eric2ZNI22jQtPmJhg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=RYnZAyCZf4rPiJq25E9jkrx9u9zUt8ZDMSkFTOCTNRXokeIqQfUt+wb8fMhzGs8hbyF+ayUA5OO3wdQcWYSW3CUzx0d0+/75y89NmeedIPAvKJfOrsarVlE1dx3XcN6UScMzS/jZsuVnIewRDSFHq6uM2VsHkXIoeM4DcUtUOMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=RZb3CUCH; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-432d2c7a8b9so3691414f8f.2
        for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 04:09:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1768824538; x=1769429338; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Lathu7eoQ9hnN88L9AXE9/ZDnozq7El9GXLKl/+ubdI=;
        b=RZb3CUCHS8XY/w6prvniPZsJeLa0F3ecDqlXKS5V18u1ARwlecbTcvfkMSSNc4zo2e
         UufpYWCk8WYq83Icb5O9z6Ilv47FMH77Q+RTgM6IusnK+ht1cE+t7wwyS07BtmIMQNEY
         zI+xu/b3CCv8fxsv9Z3+vLTeBwyKifeuKRg+4pct0sYuqz2X4NTmsPhitNF82Kg1auTn
         zbQZC1CBLDmCSrh9hR0uhM9xC2D/0whgDNNNeDOz7NOf+FCh1Nai1DFMHvbQ7dJem49c
         kdswX6eFkJ6Ek5/OZ9Vi1JYIQlkgLIgTaY5ktp53Rx7wdG+TdEXrHFmml+idHlmiyUnQ
         yk4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768824538; x=1769429338;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Lathu7eoQ9hnN88L9AXE9/ZDnozq7El9GXLKl/+ubdI=;
        b=OKEHGQLFl4LaZv/KpM/j19d/8jn/yTHFNNBKkcSTpC02nBrHjYoanOZ/1e6jllBbHI
         nIqLea7uDk8owHaPj1MA6apPFy6HcXOo7F/VUMXCt9SuPPf8QurfPGya0eCDplaPhFsD
         SfKwG17aQq8kJt6xyq+oVZAMWQN2254xdh86jltk46Xwv49YBpkhuNTQgBNWnij1IB7t
         kZuMOQCUDN+N1JDV+9UzjHZnuSiaqcZm4k04IHlESsbDgzUyHxEntirpIDfJNDCITmKm
         kaD/j4C1Fj1+eAz41OeuSL8OjLZp3GGlujj8oNGMjltdn2M7bjkyjLpERrItjNV/Njip
         28VA==
X-Forwarded-Encrypted: i=1; AJvYcCW79ZuVHdTGVQM7CPUOyjv7y4QyXC+3fFiR0lwy1960LZ5s1aR2cx6F7JHkzRlZwXoZ5/lOEIrZHxZX@vger.kernel.org
X-Gm-Message-State: AOJu0Yw6jumPmlLP91F199jcGvEiJekbabmjrBHqFannBpRtaBPDnKOI
	51DDFWuDanJHe5HF3clV+AE18tyxWeuZZqFXwJrCMPhu9MDVpvzRFbnsjHN6Xn+ZB6I=
X-Gm-Gg: AZuq6aL8nnMd/D40M/SWyrlt2IG30ECprtDPdc+QLfTgUwpFUCwPhk3qD85o1KeJNSU
	qF0YM+5vt/qtsp73cCeEf6DzOT3GilzzSIWFWm2ah+RuzYWwn+nl+AX6K+dHJG3nq3Eq90mamvh
	SnChgW8e7U4or+kGU7ceAVsHm+alqfWglIrB7l8toAlUJuDwWBxKIHAztS0zWj4YHenrtV+ZC9H
	y3+tR764h+a8lCDM46KNN/q4HZ+69xTjEr0Lz9bFMh2MHf1xDYWQinj4vZic6AuJuAItehUAhop
	PIMdW28J6n9XEYBGPZOmv24rJSfEJ9sHRPbi1OueNbDZL7z5qBW7KNDuD/fz0Bwu/BABL58EcJ0
	GN6TySp8AdCyfRYqVvCaywMwKrFzkfEYHe/pHOoKIiUGOE4T0cJ6s4hfxBJPwyWRkEfC6FjXVPu
	uiBvhte08xRUCkRGq/Qcx3K+XT/GEwMDH9Y65OqkqaUIQqAK0DNKONXOxKHrVqhOfMLHUY3g==
X-Received: by 2002:a05:6000:144b:b0:431:8f8:7f2f with SMTP id ffacd0b85a97d-4356a07743emr11227404f8f.34.1768824538122;
        Mon, 19 Jan 2026 04:08:58 -0800 (PST)
Received: from ta2.c.googlers.com (164.102.240.35.bc.googleusercontent.com. [35.240.102.164])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4356997e664sm20698421f8f.30.2026.01.19.04.08.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Jan 2026 04:08:57 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
Date: Mon, 19 Jan 2026 12:08:53 +0000
Subject: [PATCH v2 7/7] arm64: defconfig: enable Exynos ACPM thermal
 support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260119-acpm-tmu-v2-7-e02a834f04c6@linaro.org>
References: <20260119-acpm-tmu-v2-0-e02a834f04c6@linaro.org>
In-Reply-To: <20260119-acpm-tmu-v2-0-e02a834f04c6@linaro.org>
To: "Rafael J. Wysocki" <rafael@kernel.org>, 
 Daniel Lezcano <daniel.lezcano@linaro.org>, Zhang Rui <rui.zhang@intel.com>, 
 Lukasz Luba <lukasz.luba@arm.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 Bartlomiej Zolnierkiewicz <bzolnier@gmail.com>, Kees Cook <kees@kernel.org>, 
 "Gustavo A. R. Silva" <gustavoars@kernel.org>, 
 Peter Griffin <peter.griffin@linaro.org>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: willmcvicker@google.com, jyescas@google.com, shin.son@samsung.com, 
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-pm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-hardening@vger.kernel.org, 
 Tudor Ambarus <tudor.ambarus@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768824532; l=868;
 i=tudor.ambarus@linaro.org; s=20241212; h=from:subject:message-id;
 bh=glFQ4Oo7aFXvg4qCxUzDyhw63Eric2ZNI22jQtPmJhg=;
 b=jGWmIQ3VJe/OIr58mGBQinzVZCX659HJK8MtuuaHM01fhgkcacEuB8bWVtLq4hLL7aAt8CY7o
 ND/UZrRnDGbDYAMpf2MIYS7MwKUlOKLihzJnMnIfQ6vWHwzkx5s2HTQ
X-Developer-Key: i=tudor.ambarus@linaro.org; a=ed25519;
 pk=uQzE0NXo3dIjeowMTOPCpIiPHEz12IA/MbyzrZVh9WI=

Enable the Exynos ACPM thermal driver (CONFIG_EXYNOS_ACPM_THERMAL)
to allow temperature monitoring and thermal management on Samsung
Exynos SoCs that use the Alive Clock and Power Manager (ACPM)
protocol.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 45288ec9eaf7365427d98195c48e2f8065a8bb1b..68fefe4bf49501500362fcb0b490a684ea469b26 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -752,6 +752,7 @@ CONFIG_BCM2711_THERMAL=m
 CONFIG_BCM2835_THERMAL=m
 CONFIG_BRCMSTB_THERMAL=m
 CONFIG_EXYNOS_THERMAL=y
+CONFIG_EXYNOS_ACPM_THERMAL=m
 CONFIG_TEGRA_SOCTHERM=m
 CONFIG_TEGRA_BPMP_THERMAL=m
 CONFIG_GENERIC_ADC_THERMAL=m

-- 
2.52.0.457.g6b5491de43-goog


