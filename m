Return-Path: <devicetree+bounces-209632-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 416F4B382A6
	for <lists+devicetree@lfdr.de>; Wed, 27 Aug 2025 14:42:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4DDD11B647DE
	for <lists+devicetree@lfdr.de>; Wed, 27 Aug 2025 12:43:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 34267350829;
	Wed, 27 Aug 2025 12:42:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="r6hBbi7r"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 859B5340DBE
	for <devicetree@vger.kernel.org>; Wed, 27 Aug 2025 12:42:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756298540; cv=none; b=KfCRn7G1ZtIJQ/+FAlz8yXDeMIaXplF/1gRg8dubNDBdwDJLKU2/Ke4vdSyr9rm8y9RqEwL8BRjF0/Lk9cLIYxpTjMuvNIZ+gX14Vk2X193W7s6cbIiUx2cvtOVxYtQCY7f+hyPxSEYtWkMawbc+Cq/n/tDH8Pp70tyudmNxE0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756298540; c=relaxed/simple;
	bh=IapQAGw++5352d3xzeDl5P6o6TxheEyCzjaqOyMO4SQ=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=ctPSDH0A3NDLgfsmxA1a52EjkevV1lRl6zVyT8GkenRtEab4S+bOihXiWDYs8lluul9nq3AZ8saNGsaOu3CdB6YkS4G6tjwQf2cEaxjVRroVpOxcKvdNuKcaGk4C5LijfQWY823tEia23eihjfm/kasuC2lBKg1zpqp6CAXEEFQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=r6hBbi7r; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-45a1b066b5eso36622675e9.1
        for <devicetree@vger.kernel.org>; Wed, 27 Aug 2025 05:42:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756298536; x=1756903336; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=qCX9OHIqw+xdYsktQQqiE2IMYgIse2ihYLYopEmEHJc=;
        b=r6hBbi7r5F47ja19Uhl3YPNqRuAWl3wMKjOnsPAnwylLMs1AZSJxB5I9YzuXnIfpW1
         IdHOzJ3XIybYux5xcCgH4wgvsBS4LEIrFOHBQG+sBHKPyEOU0Dz5vF7riFMevtjmK0hW
         9KYY9PrRVi1j46XVCTMajZ61ig8SxLjGFvAnguCm2wyDmaxV5oL0s5fTYZfbbsu5S0uu
         syIGUznrAEPrQ2l/3oAESEb22QD2GlCsDD/ZpN4loNCuR/wuq9+EpY2Akh/ZL6hFBb2G
         0JRtVGU/drCpOCMixJXhzEs29/pJRAVtIDARl2I6uAqiQkGM/8UVotojgeLN21MWFNPO
         gWow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756298536; x=1756903336;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qCX9OHIqw+xdYsktQQqiE2IMYgIse2ihYLYopEmEHJc=;
        b=I1qM0vf2HmvHKwuiNNKY+fnicTmx32ayt+Lm2CFBcbVB8Lg++M+3IGvay+PPRo3tg8
         S2sS76mtJkzm/NLeCFCTeJBn1OYh7yGBFTWa1HMQG8f/m8+/JBTbjkjmdB8M5obtVURL
         S4Ym30VJJjdkWTCRt7JgkjKFYgEVkXGH/a1ZUPhjMyK1k+eT1xATxEE0WUrOBYx2YlMN
         21bXOyq0UukuA0Cbn3H6NblXh4/Rrw3c0ZmqZldO6xS5bD4ykenH0AHyLU4UmIdsPL5v
         Az+zWv0OcDu0oVe3FKEjGmCv+gqLuGGWjUXIALC1FZJPsj75qbRKFv4t0xYfJBTG1h53
         kd6w==
X-Forwarded-Encrypted: i=1; AJvYcCWNK64SAzIJk1ndCsr7p/+2zWz4V57bOwPR5gdXJetctRJWH2D4O5TUYRz/J/g0XzpBrL0/QIXZbxfy@vger.kernel.org
X-Gm-Message-State: AOJu0YxXR0oxfQyGYVLQapslPNGWY4HD8T9uVSoWF0v90+OQmLoWLjMK
	MRcZAPYN74ESClrVtAO2gaIqloDWPxNA8odbqCFwIU4di2EXn+cEiM62pCiHzGKvpCs=
X-Gm-Gg: ASbGncs98GRqROJcKFygaktBK6KDjNrTr/rokWzsgUEVOofbUIBXnCk+c/afOOB77VT
	qvURR6IlEHNtfnNLzMXJWL2yFgKOFg3ZqJ/Sy7OSQkwgNLppVq3zMI4S/bs6ZG7OkAWyFJV2QYF
	iSBDQ6bwDGI3GJdCOWI85L3WTNY1ChcfowaoR3mCUADKUi2NDap4QehBwX72cGA1RIZzz0/MynU
	E4dD6uwcsz2wpJnGTOo7Nk4mRuCTuP6eEWtlhwfuqT3j/OkPicebUeetuyokK89ckzwqEP2YTFs
	Q27eKde1ap8zMvRP2CNnqJzV6wyo8cjqsSlyv1aLOeb0AHTECWrIKYFYK7+4TvRV7IGJmKRvx0G
	FJ5Lze3lOGlJiXZeYdQHskgUQ4onzuKoLYVo58F0TY6nIXOvuAoGE9bY2wAfr0qql21NWUHBTdE
	cZRw==
X-Google-Smtp-Source: AGHT+IHt37j6LI8uNP0iBAJah2pqyimZMIMU1zgKSqocNIoMlPlz3HIKdSdVZSOFodLiybkW1k8Tbw==
X-Received: by 2002:a5d:5885:0:b0:3ca:43ce:8a72 with SMTP id ffacd0b85a97d-3ca43ce8f6amr6069633f8f.1.1756298535966;
        Wed, 27 Aug 2025 05:42:15 -0700 (PDT)
Received: from ta2.c.googlers.com (219.43.233.35.bc.googleusercontent.com. [35.233.43.219])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3cbab3ead0dsm6439420f8f.29.2025.08.27.05.42.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Aug 2025 05:42:15 -0700 (PDT)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
Subject: [PATCH v2 0/5] exynos-acpm: add DVFS protocol and clock driver
Date: Wed, 27 Aug 2025 12:42:10 +0000
Message-Id: <20250827-acpm-clk-v2-0-de5c86b49b64@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIACL9rmgC/23MQQ7CIBCF4as0sxYDWAt15T1MFxTGdmKFBgzRN
 Nxd7Nrl//LybZAwEia4NBtEzJQo+Bry0ICdjZ+QkasNkssz16Jnxq5PZpcHk9pJozTyE1dQ72v
 EO7136jbUnim9Qvzscha/9Q+SBeOsG0fXq1a1nRLXhbyJ4RjiBEMp5Qs65JL7oQAAAA==
X-Change-ID: 20250819-acpm-clk-28d2a78e0307
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Peter Griffin <peter.griffin@linaro.org>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-clk@vger.kernel.org, willmcvicker@google.com, kernel-team@android.com, 
 Tudor Ambarus <tudor.ambarus@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1756298535; l=2851;
 i=tudor.ambarus@linaro.org; s=20241212; h=from:subject:message-id;
 bh=IapQAGw++5352d3xzeDl5P6o6TxheEyCzjaqOyMO4SQ=;
 b=O9xpUqQDN1LzCYV4GZ9rTx2Jek/bWnSZPIckwh8LaFDZ+hx8nuCwS2i9XjAkNMvh7TBz2VJGu
 4heJcreMWsKDOjMvCIPXZyNGqcFmMnKD8stlhDXXNdELEPn0qjS+XyD
X-Developer-Key: i=tudor.ambarus@linaro.org; a=ed25519;
 pk=uQzE0NXo3dIjeowMTOPCpIiPHEz12IA/MbyzrZVh9WI=

The Alive CLock and Power Manager (ACPM) firmware exposes clocks that
are variable and index based. These clocks don't provide an entire range
of values between the limits but only discrete points within the range.
The firmware also manages the voltage scaling appropriately with the
clock scaling. Make the ACPM node a clock provider.

Add support for the ACPM DVFS protocol. It translates clock frequency
requests to messages that can be interpreted by the ACPM firmware.
Add an ACPM clock driver to model the clocks exposed by the ACPM firmware.

All patches can go through the samsung tree.

Thanks,
ta

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
Changes in v2:
- dt-bindings: clocks are not longer a child of ACPM protocol. Instead
  make Alive Clock and Power Manager (ACPM) node a clock provider.
  Update commit message.
- firmware: exynos-acpm: register by hand the ACPM clocks dev (new
  patch)
- firmware: exynos-acpm: use defines intead of enum
- acpm-clk:
  - switch to determine_rate
  - drop __init, __refdata, __initconst, this is a module, we need those
    methods and data, after boot as well.
  - fix the assumption that the clocks are defined by ID in ascending order.
    There's still an assumption that the clk_id < nr_clks, but this is
    now covered by a sanity check in the clock driver.
- arm64: defconfig: enable Exynos ACPM clocks (add patch together with
  this patch set) 
- Link to v1: https://lore.kernel.org/r/20250819-acpm-clk-v1-0-6bbd97474671@linaro.org

---
Tudor Ambarus (5):
      dt-bindings: firmware: google,gs101-acpm-ipc: add #clock-cells
      firmware: exynos-acpm: add DVFS protocol
      clk: samsung: add Exynos ACPM clock driver
      firmware: exynos-acpm: register ACPM clocks dev
      arm64: defconfig: enable Exynos ACPM clocks

 .../bindings/firmware/google,gs101-acpm-ipc.yaml   |  11 ++
 arch/arm64/configs/defconfig                       |   1 +
 drivers/clk/samsung/Kconfig                        |  10 ++
 drivers/clk/samsung/Makefile                       |   1 +
 drivers/clk/samsung/clk-acpm.c                     | 148 +++++++++++++++++++++
 drivers/firmware/samsung/Makefile                  |   4 +-
 drivers/firmware/samsung/exynos-acpm-dvfs.c        |  83 ++++++++++++
 drivers/firmware/samsung/exynos-acpm-dvfs.h        |  21 +++
 drivers/firmware/samsung/exynos-acpm.c             |  69 +++++++++-
 include/dt-bindings/clock/google,gs101.h           |  15 +++
 .../linux/firmware/samsung/exynos-acpm-protocol.h  |  10 ++
 include/linux/platform_data/clk-acpm.h             |  24 ++++
 12 files changed, 395 insertions(+), 2 deletions(-)
---
base-commit: c17b750b3ad9f45f2b6f7e6f7f4679844244f0b9
change-id: 20250819-acpm-clk-28d2a78e0307

Best regards,
-- 
Tudor Ambarus <tudor.ambarus@linaro.org>


