Return-Path: <devicetree+bounces-37655-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F8AE845C9C
	for <lists+devicetree@lfdr.de>; Thu,  1 Feb 2024 17:13:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A120A1F24918
	for <lists+devicetree@lfdr.de>; Thu,  1 Feb 2024 16:13:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B2EF3626CF;
	Thu,  1 Feb 2024 16:13:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="iJzULgG6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB737626B3
	for <devicetree@vger.kernel.org>; Thu,  1 Feb 2024 16:13:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706803993; cv=none; b=dF6qNpQhxT/N83Iuel9YrcG9FIVDgrX6N/ZOWD11KgMcaXPwnU46yG6DdXhT+RBFHFGEELngqPOvvz539+TtFqAS4DBrCRTkp4B307xBrpspz0nyuHvXDjw/eJhLD/jVwiYRtBOCMXj5cPNz7WcYsubXXgSZbQv72sgJZMFkm+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706803993; c=relaxed/simple;
	bh=WH5auU9R1cr8frhvf2kZ6ZXNXFEbl2wGPDo8X8f9u2Q=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=JPdSAanVNak9vuCYbx3PKTweYOMWDRzVlyY0AkSPPOnHe1l7GZF0A11XVoJULABomITcocB2OPiBM8/GDzSdrppblwksN8PEQFxa3b3h+vU/GR0azE3KFq7yXYpcWHreU+XDbyNX8rSJPn7x+hM7j9CiH4bYvbA2JLyaCU/A4mc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=iJzULgG6; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-a354408e6bfso382540966b.1
        for <devicetree@vger.kernel.org>; Thu, 01 Feb 2024 08:13:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706803990; x=1707408790; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=16wU77bSWZ6Y39UK5Jq1tjsKYI5BjqkQENL2knqUcR4=;
        b=iJzULgG6ynBPWzOI6VhT6HjmS4WPC2B6aiGMwTCAsxnSNeAGWL856frUkcZPhRsZaH
         xAPCN8dfvGhOPeu9V9I9555MxRgdHgh8isu8MHRq4dSF6+/rlgX0yLNHaucXOmgZHIhY
         KeidhNUS3B16SaPCksOcgmqrWWvvrdr7BWGSMAtl43Nn+qvNt+2V4YeC2NXN1ar5CYPe
         staNp305/AyED4HOb0yVH4sHY01jSSXvdi4/RDz18QuEgEDbT1ae5xXbeiMxIvCj9RDJ
         kfXw73tvBp6dITDyCFpJLmX76z6Exu9ygrVpZ6uqQ14x5OCkvlvL2HTE0QUXNO7QIz09
         /k1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706803990; x=1707408790;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=16wU77bSWZ6Y39UK5Jq1tjsKYI5BjqkQENL2knqUcR4=;
        b=JKQ5D42gHvePE11rHXWwB1/DH7nEq2lr+9TASQ1kdn5Qc/zcgWGn5L5xuG81Rc6K1g
         00KOnOaj3bWfhGSzcRHDymrjNo5zIsUT1TP/mvi4RL4ecIfu5Dauq3DnLjkV8xv/ES6W
         suPlEDNUSPod7UkXK4OCflUvhP5W4NyI1iyPS7wShTc2uLBjvUzFG9IW1Iv7+YVht3w4
         uIhmkmyZ1oEGYXn2/ZfbA4iRVqH7JD8y6XqSJeIALngiriNEbBKhVDcIeLg0t6eJLzA2
         arFxb5CB3Pnhi/GRmx5y6EuIfsETPTWfo63GtHfe3H70q3Klm1zv9YZC2i5XoJlHWBuC
         YzSg==
X-Gm-Message-State: AOJu0YwyWnmmpu+EAlgD2UIG2xsY+uPb+T3mYYhFHvkn04CCqfVfrWLR
	vtSlpGLwF3U+XRmt8j35C6QWcw1i4fngkdMdAd0xnBswHUYUJTZVdEBYb4mJ7h0=
X-Google-Smtp-Source: AGHT+IEeIBDbn0EIWpBsMX8tjiCa1IMsmeX5CipQewHeBMbEBbGoPp4YhREkB/2UXBykc2NB6O57Eg==
X-Received: by 2002:a17:906:f884:b0:a29:b31d:1dc6 with SMTP id lg4-20020a170906f88400b00a29b31d1dc6mr4912518ejb.6.1706803990092;
        Thu, 01 Feb 2024 08:13:10 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCVc29OD0Ln/nHno3BS8/3q4ZrKJoB7/KlOCR2fvdNEAnzLTFuMB0hEQhrt4jDKnDcKj6+K+rcBj9zqYKNw8M8WlvY6icbNIe+mFkVGAZBryyZIgmIfWwpeUYXq8m4g2cuTjLqEtTGEGznZzNA9Lp2JuYSjpMejNg+iYPygYKGDnaRemUnxGJVPrMupUFZf7AjfqEzM1IuhzQ/QlO6Yv1W7gLuiAoeynvhdNpamXs4Ep+/O6+Ba0wJuzNQhXMyuLkJTuaFhQlfBh4V5NCCVbVyvAAI1LmGbzHbCWFjwzbu27LQUnWB9Hi1/vJD1ujjFGpk6ML1P4frc4Uhr1ZLMjFdQBDXGQBCeIP1RLs5i1JjmkMthhUjpRMedjTHujpwel/5ufQHjjUdF0R4wTHSchOmHH+AKMv3tQ/zGJAQIn5JcRrpPGJ9BVEQjXGhSSrHpNmm2RCcLHPnlgyBXe7HzeIrnztem8+5BXyYa7XR9EdsNJbG7KdG8tlihcA5HwySezUBoTgjLCrlcyoDICsN4fAJCmgwaOZYOLbt0QGFI5GA5M5I9OP3OcgpOZRMseVRONXnhBEgt1nkqktU0NFTR8nzq0BKMJhF+SXFaP470O30V7aL3gYj9oYNwD7BrqYg5c2O4CFGR0XV2yEfPHcU8=
Received: from puffmais.c.googlers.com.com (94.189.141.34.bc.googleusercontent.com. [34.141.189.94])
        by smtp.gmail.com with ESMTPSA id hw18-20020a170907a0d200b00a3600d7c2fbsm3449288ejc.176.2024.02.01.08.13.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Feb 2024 08:13:09 -0800 (PST)
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
Subject: [PATCH v3 0/7] gs101 oriole: peripheral block 1 (peric1) and i2c12 support
Date: Thu,  1 Feb 2024 16:11:36 +0000
Message-ID: <20240201161258.1013664-1-andre.draszik@linaro.org>
X-Mailer: git-send-email 2.43.0.594.gd9cf4e227d-goog
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
to it and a separate patch series has been sent to fix up peric0
support.

Cheers,
Andre'

Changes in v3:
- drop samsung,mode = <USI_V2_NONE> default assignment in patch #6

Changes in v2:
- squash original patches #3+#9 (Krzysztof)
- move original patch #7 to new #4
- squash original patches #4+#8 and make it #5 (Krzysztof)
- add short summary of devices attached to i2c bus 12 & add TODO (Sam & Peter)
- collect Reviewed-by: tags
- I kept Reviewed-by: tags for the squashed patches. Please shout if
  that wasn't expected

 .../bindings/clock/google,gs101-clock.yaml    |   9 +-
 .../soc/samsung/samsung,exynos-sysreg.yaml    |   1 +
 .../boot/dts/exynos/google/gs101-oriole.dts   |  10 +
 arch/arm64/boot/dts/exynos/google/gs101.dtsi  |  40 ++
 drivers/clk/samsung/clk-gs101.c               | 347 ++++++++++++++++-
 include/dt-bindings/clock/google,gs101.h      |  48 +++
 6 files changed, 451 insertions(+), 4 deletions(-)


