Return-Path: <devicetree+bounces-35721-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A2C583E822
	for <lists+devicetree@lfdr.de>; Sat, 27 Jan 2024 01:19:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A6EA51C20D42
	for <lists+devicetree@lfdr.de>; Sat, 27 Jan 2024 00:19:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A8D94A5E;
	Sat, 27 Jan 2024 00:19:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ufpaebyR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFBC0395
	for <devicetree@vger.kernel.org>; Sat, 27 Jan 2024 00:19:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706314784; cv=none; b=Jde7fjTN0Mw4Y/RoiZt8pchkGT6X3FgK5YsRE7l81cs6VDc1nAE3Aq6giWBqyRkQiAEtwZz4OSrIPKDCx257pnFydLmzhq/sfrzGUkLv6fm08WqZDsfSpE+/Eidcdi88xkUl3otlQ1naxnUNPoX5IoTrlL201tGVWhmMxijGF/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706314784; c=relaxed/simple;
	bh=x3DKShgBTOnrD8k+DrfvWaZBjQtkKSeAaHSrqpEEAOU=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=lGSkXCvEFPtdoBfLt8+QSqsjLeH4EW0ckHrFHJTvcVTIpvGoFdn3XUVfvpIz8BHYWDbpeR5ogJzK4VxD9UVUoK6pYdoqPd3D/ucGMtjMX4btGFWNY/PUzc2zGsEvMUDFn3K5RxWN/WCbvMlLdv7SXYOUskrNXYkuEazNugkbUHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ufpaebyR; arc=none smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-55a356f8440so1219786a12.2
        for <devicetree@vger.kernel.org>; Fri, 26 Jan 2024 16:19:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706314780; x=1706919580; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=4NX+mrlfMcpXdEDiR+mehIQoYvG9eewn+lTUjYvS9+o=;
        b=ufpaebyRXxHnBDoLinCWECkSwNsBVdpY7zoV2WeSwCUbFO9jEWyLPnVabyjooMR3PH
         8A3mIBKnw7Wx9RkZUe63uyx56t/AVSE2k1hv/gGYeLRbNpnGdL+VTYmTvgXAGrud4IoH
         QBrSX3G+mTk7iL8eleC7LVO5/hVOiCBzPKRCOX9vhHQEmq38pdlHDvN2ukJ6h63pjJ5i
         m03IpulnBW1kHI9IGYmnWzU0P5b06Ocb+ZtyQEA1XQ3vRz4oReZLvQg7pTsb33nHjO+r
         a9sojCATH0yNnC/na3oUHnGC8A/heCHhQrNoGT4haAiAUGul0JFxfxqIvO8WejLoqyQ2
         CPPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706314780; x=1706919580;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4NX+mrlfMcpXdEDiR+mehIQoYvG9eewn+lTUjYvS9+o=;
        b=wYnvIB1buzjOxbVQAUi9mA+sCx/OWhFx/NCuBJXXOBDcJB2oRfgjpJABStgQRJ6jI+
         +yEXajNt64UhJ5epDV1weSERnZd+y/qQKclaPI+Ej+IP627YEefuYtqsDDRalerHwCHM
         R8Ym98TRI0U7bVQ59uHRI8zi4WWBvpBj+m4A/ktJ2ubwMMS6tvXIR1TqP8BppzmdfIyR
         go0RzvsLhat9hsrrRYluBs/DOu5Mn4t3lM1GpslwcMOXBTtqtNnkQLimax2B81GfEqf8
         vhEW6pC+7U8Zlkoql4wGMPDxjVG7lCkawii1InvoMzfrsh/qML0/tJzdZOiepxnqNdLc
         fV7w==
X-Gm-Message-State: AOJu0YyN9HbYqXSvIGopXq3TH6ztBc2sMoF0PvJGmZCw6XrHUon4ug4B
	BHApucxU61XajMmWEGIdEVHbfyN8FmK4xANFMG5LKYHVySbn5KZi9wu+SGtFxg8=
X-Google-Smtp-Source: AGHT+IEMjmzKAppDcHhedNZpL1Hc8FOnCZRGGgWeBOK37pKFPvJCHdt0r1ZPs3ZBW26CtJokNiEfgA==
X-Received: by 2002:a17:906:faca:b0:a31:6be0:b9f with SMTP id lu10-20020a170906faca00b00a316be00b9fmr480472ejb.74.1706314779677;
        Fri, 26 Jan 2024 16:19:39 -0800 (PST)
Received: from puffmais.c.googlers.com.com (229.112.91.34.bc.googleusercontent.com. [34.91.112.229])
        by smtp.gmail.com with ESMTPSA id x16-20020a170906135000b00a339d705a10sm1141359ejb.80.2024.01.26.16.19.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Jan 2024 16:19:39 -0800 (PST)
From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <andre.draszik@linaro.org>
To: peter.griffin@linaro.org,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Cc: linux-kernel@vger.kernel.org,
	kernel-team@android.com,
	tudor.ambarus@linaro.org,
	willmcvicker@google.com,
	semen.protsenko@linaro.org,
	alim.akhtar@samsung.com,
	s.nawrocki@samsung.com,
	tomasz.figa@gmail.com,
	cw00.choi@samsung.com,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: gs101 oriole: peripheral block 1 (peric1) and i2c12 support
Date: Sat, 27 Jan 2024 00:19:04 +0000
Message-ID: <20240127001926.495769-1-andre.draszik@linaro.org>
X-Mailer: git-send-email 2.43.0.429.g432eaa2c6b-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi,
   
This patch series implements support for the 2nd connectivity
peripheral block on gs101.
This block contains an additional 6 USI, 1 I3C and 1 PWM
interfaces/busses.

i2cdetect shows all expected devices on the one i2c bus that this patch
series enables.
Everything that's in scope in this series works also without the
clk_ignore_unused kernel command line argument.

While working on this, I noticed the existing peric0 support for gs101
has a couple issues. That explains why there are differences compared 
to it and a separate patch series will be sent to fix up peric0
support.

Cheers,
Andre' 

 .../bindings/clock/google,gs101-clock.yaml    |   9 +-
 .../soc/samsung/samsung,exynos-sysreg.yaml    |   2 + 
 .../boot/dts/exynos/google/gs101-oriole.dts   |   9 + 
 arch/arm64/boot/dts/exynos/google/gs101.dtsi  |  42 ++
 drivers/clk/samsung/clk-gs101.c               | 347 ++++++++++++++++-
 include/dt-bindings/clock/google,gs101.h      |  48 +++


