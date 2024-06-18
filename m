Return-Path: <devicetree+bounces-76797-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B83D890C075
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 02:39:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E8836283722
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 00:39:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 87A87F4F1;
	Tue, 18 Jun 2024 00:37:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pdJxhlTh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f48.google.com (mail-oa1-f48.google.com [209.85.160.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCD11EEAB
	for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 00:37:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718671066; cv=none; b=Zc++aDiLo24p4lYPHqo0IOKnVqEU/UAu80NWosVUimDJF191dfgspv6NsbUYI7s9uFOA3Wt0Zp3rcXTsQwS7+f2sLDtiDsuaKIljEmSB9sTlFuOaRexV4ha5AW/MZaVghOxhIsP7IWtp8ObpMoPOTn+zkzu/UGsha7rE+C0ly7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718671066; c=relaxed/simple;
	bh=4jvhi48JvvP8rNBKeGvDsq6pfyedazl0s0KNnT0r+90=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=FN4Sg0hYtxYABwRk+y7FAZGXQnLZTAwFPwfOtnngqDWGqUAcUQC1m2WKiuIBs0jJaDW79DNrMjshqGNzmN2hcPNw8k/oJopQ7MdcLybK71jD742kG9+JukUk/TWDMX4Kt+yHEdPAwSPDUsvgW6UuRFu20DaIJSEjZ8ntekK8KLE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=pdJxhlTh; arc=none smtp.client-ip=209.85.160.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oa1-f48.google.com with SMTP id 586e51a60fabf-24542b8607fso2591081fac.1
        for <devicetree@vger.kernel.org>; Mon, 17 Jun 2024 17:37:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718671064; x=1719275864; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=tJ9dFj/nuDozXVyK3hNWcLVDpuzjEVXmNkuXi4rgInU=;
        b=pdJxhlThiYZ86jBh5pUCSzWXpinIwAIMkJdgRNN6PUgx9Oj6HtEzybKywwMotekrWc
         ujRVzoH7qj10LYpjk7y2JaRkaJRp/qa1cslVUM2jBvHO+X6cw+irztST0VCEKkN/aGSb
         oYW+KueAmLHphni7Yt5D14QiquyF2H/x08VSoONf8rUo3RzAImYxHnkTTfZWXnrfTFgC
         Od72Is8JOSo9AIQFmPNLqwq1trgWuP3R9Zj5umxx38OhegDE1hDZ5VavuIoEOKzTh0FK
         lfCKEDfD9kf2N5ZOJaSZHwPH+JIc/9AedyIX/HDPfYrLIIQKdAP/DAMO3xfOz6SWIv0F
         Xbbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718671064; x=1719275864;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tJ9dFj/nuDozXVyK3hNWcLVDpuzjEVXmNkuXi4rgInU=;
        b=fme7ipi9qGq/SBL3eqAK/5bM7bCjFm5aFGR30Y+oGv7j7nP/tIKJgjM8AVyGSX633i
         MvfF8bPaLKouq4K+bbZoVjacRDDZ8onAjBWAV4g/AgNQzPd5wQoZU5f39nviFxWanDLj
         Veh57TUONrHZk2Wg3c46u9cIhbD1YN72rixgYrVm+17WShhM9Vv9etNJ6POo7LEnSkda
         G7Vp+RSOSinwHGZD0YxzZiKqlrudFynbyOBaMGYOqoZd8Vnv9I9P4wT2QCsB6jMOnXyO
         6A7sxrvB3/SclX3EPMh5Fl1/T9K++DubC/wtaTmfTL/OfPbHqDEYPaQGTGsvCBoGwAwg
         85og==
X-Forwarded-Encrypted: i=1; AJvYcCXF499+NphkPXKCapbcJRYe+765eNBS+X6pY7ZLsynj+vH2bv1RwkrZWHr8Ch6kt4iUEl5qnIJmMQxD4eZKpl65HnXch/3gw7YQpg==
X-Gm-Message-State: AOJu0Yx+wsFzrBM7aRiC8jvq+ps3tHlS9LSpnbgxORnUu5u0vwKvGpyT
	Y7nt7bXveGptUa0iP5iMTx6M2rVCRthJbyEU+NQpqSQVqHgv34o1Y6MWQBgXMIiTT0appMeix9c
	iw5M=
X-Google-Smtp-Source: AGHT+IGmDkEHWFbVOSVHrdqw/KQ9HDkYmOLjdE78AYml6rLtXM9nPkxgB4EdXv3a7VRep/PomFnNIQ==
X-Received: by 2002:a05:6870:4728:b0:24f:d9de:3bed with SMTP id 586e51a60fabf-25842b793famr12435193fac.41.1718671063791;
        Mon, 17 Jun 2024 17:37:43 -0700 (PDT)
Received: from localhost ([136.62.192.75])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2569934d02dsm2879063fac.48.2024.06.17.17.37.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Jun 2024 17:37:43 -0700 (PDT)
From: Sam Protsenko <semen.protsenko@linaro.org>
To: =?UTF-8?q?=C5=81ukasz=20Stelmach?= <l.stelmach@samsung.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Olivia Mackall <olivia@selenic.com>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	linux-samsung-soc@vger.kernel.org,
	linux-crypto@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/7] hwrng: exynos: Add support for Exynos850
Date: Mon, 17 Jun 2024 19:37:36 -0500
Message-Id: <20240618003743.2975-1-semen.protsenko@linaro.org>
X-Mailer: git-send-email 2.39.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Exynos850 has True Random Number Generator (TRNG) block which is very
similar to Exynos5250 for which the driver already exists
(exynos-trng.c). There are two differences though:
  1. Additional SSS PCLK clock has to be enabled to make TRNG registers
     accessible.
  2. All SSS registers (including TRNG area) are protected with
     TrustZone and can only be accessed from EL3 monitor. So the
     corresponding SMC calls have to be used instead to interact with
     TRNG block.

This patch series enables TRNG support on Exynos850 SoC. It was tested
on the E850-96 board running Debian rootfs like this:

    8<-------------------------------------------------------------->8
    # cat /sys/devices/virtual/misc/hw_random/rng_current
    exyswd_rng

    # dd if=/dev/hwrng bs=100000 count=1 > /dev/null
    ...
    122KB/s

    # apt install rng-tools5
    # rngtest -c 1000 < /dev/hwrng
    ...
    rngtest: starting FIPS tests...
    rngtest: bits received from input: 20000032
    rngtest: FIPS 140-2 successes: 1000
    rngtest: FIPS 140-2 failures: 0
    rngtest: FIPS 140-2(2001-10-10) Monobit: 0
    rngtest: FIPS 140-2(2001-10-10) Poker: 0
    rngtest: FIPS 140-2(2001-10-10) Runs: 0
    rngtest: FIPS 140-2(2001-10-10) Long run: 0
    rngtest: FIPS 140-2(2001-10-10) Continuous run: 0
    rngtest: input channel speed: (min=941.855; avg=965.515;
             max=968.236)Kibits/s
    rngtest: FIPS tests speed: (min=49.542; avg=52.886;
             max=53.577)Mibits/s
    rngtest: Program run time: 20590194 microseconds
    8<-------------------------------------------------------------->8

Sam Protsenko (7):
  dt-bindings: rng: Rename exynos5250-trng to exynos-trng
  dt-bindings: rng: Add Exynos850 support to exynos-trng
  hwrng: exynos: Improve coding style
  hwrng: exynos: Implement bus clock control
  hwrng: exynos: Add SMC based TRNG operation
  hwrng: exynos: Enable Exynos850 support
  arm64: dts: exynos850: Enable TRNG

 .../bindings/rng/samsung,exynos-trng.yaml     |  85 +++++++
 .../bindings/rng/samsung,exynos5250-trng.yaml |  44 ----
 MAINTAINERS                                   |   2 +-
 arch/arm64/boot/dts/exynos/exynos850.dtsi     |   8 +
 drivers/char/hw_random/exynos-trng.c          | 216 ++++++++++++++----
 5 files changed, 266 insertions(+), 89 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/rng/samsung,exynos-trng.yaml
 delete mode 100644 Documentation/devicetree/bindings/rng/samsung,exynos5250-trng.yaml

-- 
2.39.2


