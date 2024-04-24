Return-Path: <devicetree+bounces-62286-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 547028B0A38
	for <lists+devicetree@lfdr.de>; Wed, 24 Apr 2024 14:59:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 78FB01C24757
	for <lists+devicetree@lfdr.de>; Wed, 24 Apr 2024 12:59:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF33215B14E;
	Wed, 24 Apr 2024 12:58:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="ODrtC3jq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com [209.85.160.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26A4015A4AA
	for <devicetree@vger.kernel.org>; Wed, 24 Apr 2024 12:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713963536; cv=none; b=GS5qiagGjEVFElMRDNZJvNYBkx4xJdHI8EPZfomz+M1N3xZ5EqOQYYcPAbRTJ3I5q5DZvMVKlWNiJ5f7sxgVWdIfSFUpIAwDCDOVQetDjVBDdXhdaCBY/sFQlo3CjvFRX+OiJQtCfelPRBN4SbcoLYhjyMplMwUVxGFfL2fiVvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713963536; c=relaxed/simple;
	bh=eZWwx1HleA2H2KsYpp8/b1FXrqygcSKWHtLnmkvXx/A=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=BVSIuXadY866LZengKt/fib0h5RKBTbgZD6ry/XsH/AGkhuiLwRkI4e6afd3UZStLfOU32fYqyz2BQ4EpUxLJdmZAGKAFvP1S7bZU3IMC3ZXfkE38wsyEvXLr0zDosaBF3zFKY9JeMSpxBjDpYCljkeoKSyouGglwCKU1tOm1L0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=ODrtC3jq; arc=none smtp.client-ip=209.85.160.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-qt1-f169.google.com with SMTP id d75a77b69052e-4376157292fso37680781cf.0
        for <devicetree@vger.kernel.org>; Wed, 24 Apr 2024 05:58:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1713963533; x=1714568333; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=e7+ZLqU/gDelabgH8W2uB3IIPL7uflMtAzBDAnbqEuU=;
        b=ODrtC3jqDEfH6piTXTRLlOqnHfPZOulvU72FlZ6EuhxYMoj9W0PqlW+5gMcUYa4iht
         W/HGgmuoWy+RPBRcRFT25/vwjXDBHx/ytYUsMeBBsLwCQ7E45l2eZSAV4WXpWuvaH0mk
         tjeMnMba3f4V0Lx8sVXJzxHgJtAqTp8SuPXE7lBnrb8MjaQFCL+v2LgTbcCI8G1NEzfi
         WH6aC0OSKDzv4mfRVZzQ4MZhf2ksJPwELqZjlXntZ/LhXL83IylhYByULoRGmivq1wjw
         T+f2xxLXSPnIYAGcvFzsYr9tUtjy8PlNTLW/LQadjLO6ONGCQpL6o9B26eiMk7LKwbQF
         4gcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713963533; x=1714568333;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=e7+ZLqU/gDelabgH8W2uB3IIPL7uflMtAzBDAnbqEuU=;
        b=qOrJI9KaXTBGVH949wFhqHWr2BTP2Ovx+sNEpcOXQGaLUxRQWHJ3YlsRCxC+R+f3zb
         89CHBz7ckBe+TDeWZQPr3HWbZ5HXyNbeJwzxRtK0Wg8Lgn0tujCiMoDKqQieUxijPtQ6
         JwEB7Xa6+Bfdp0chLPsktL/c1UQuJog3zkM4hxDoxG9tiFbrs8WRAkEodaIoOEqIUmmY
         K3ljH9MjYHno0POxPNH64ooyY1gIvrA1BOMm/UUPqvREwLY35nWGEJNvSWeS4uz9vUMO
         giRmwWW4gGQhDKp3JQfTCGPWjCOhgrLaqOBlpjZDp4Hot0bPuX+YP7M2EytiLsKkw7cq
         XWTA==
X-Forwarded-Encrypted: i=1; AJvYcCVFpNUW1YcfVSvYt8J7wnT5a9Mh/4RT4waap101870sT1vWyodW7Ln3IKuvAXJlOji9nrGPix9YutYbzcIsUt5BLDFzvilKP1LBCg==
X-Gm-Message-State: AOJu0YyustnzoEGP7SsRrrpb4skRMYF6w9OvWNoXQnZLGvRerrhsC1RD
	qSZomjoe6uTR3Lec5QgPB8WoQ82aTqkk8RflYZAMl5rC6ohkwigrIddDVnNoVyI=
X-Google-Smtp-Source: AGHT+IHvgjS1Qvogko3W0bvij7ZgjvSiRdOb5hKLjbpJWwlNsurq5a0q6joSqs0ySinlM+vkb3pvpA==
X-Received: by 2002:a05:622a:510:b0:437:4dcb:ed0 with SMTP id l16-20020a05622a051000b004374dcb0ed0mr2358337qtx.57.1713963532988;
        Wed, 24 Apr 2024 05:58:52 -0700 (PDT)
Received: from megalith.oryx-coho.ts.net (d24-150-219-207.home.cgocable.net. [24.150.219.207])
        by smtp.gmail.com with ESMTPSA id ki16-20020a05622a771000b00439c3072d24sm2399995qtb.15.2024.04.24.05.58.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Apr 2024 05:58:52 -0700 (PDT)
From: Trevor Gamblin <tgamblin@baylibre.com>
To: linux-pwm@vger.kernel.org
Cc: linux-kernel@vger.kernel.org,
	u.kleine-koenig@pengutronix.de,
	michael.hennerich@analog.com,
	nuno.sa@analog.com,
	tgamblin@baylibre.com,
	dlechner@baylibre.com,
	devicetree@vger.kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Subject: [PATCH 0/2 v5] pwm: add axi-pwm-gen driver
Date: Wed, 24 Apr 2024 08:58:46 -0400
Message-ID: <20240424125850.4189116-1-tgamblin@baylibre.com>
X-Mailer: git-send-email 2.44.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This series adds support for the AXI PWM GEN subsystem found on FPGA IP
cores. It can be used to generate configurable PWM outputs, and includes
options for external synchronization and clock signals.  The work is
being done on behalf of, and therefore lists maintainers from Analog
Devices, Inc.

The series has been tested on actual hardware using an EVAL-AD7985FMCZ
evaluation board. An oscilloscope was used to validate that the
generated PWM signal matched the requested one.

There was previously a follow-up series
(https://lore.kernel.org/linux-pwm/20240314204722.1291993-1-tgamblin@baylibre.com/)
that enabled support for two different versions of the AXI PWM GEN IP.
Since issues were identified with the v1 IP functionality and v2's
regmap is the one listed on the device wiki
(https://wiki.analog.com/resources/fpga/docs/axi_pwm_gen), the driver
was changed to support only the v2 IP after squashing those additions.
As a result, the overall driver is simpler as it no longer uses an
axi_pwm_variant struct. Support for v1 IP can be added back later in the
event that it is required.

---
v5 changes:
* Address feedback for driver in v4:
  * Clarify device behavior in frontmatter
  * Include register name in bitfield definitions
  * Use devm_clk_rate_exclusive_get() and handle error
* Squash v2 IP patches into series from: https://lore.kernel.org/linux-pwm/20240314204722.1291993-1-tgamblin@baylibre.com/
* Refactor driver code to support only v2 IP
  * Issues were identified with v1 IP implementation, so only v2 will be
    supported
  * Remove axi_pwm_variant struct and usage
  * Version check in axi_pwmgen_setup() left as-is to limit usage to
  * only v2 IP
* Adjust dt bindings to use adi,axi-pwmgen-2.00.a

v4 changes:
* Address feedback for driver in v3:
  * Update to use devm_pwmchip_alloc() function
  * Simplify use of dev symbol in axi_pwmgen_probe
  * Remove unnecessary axi_pwmgen_from_chip function and use
    pwmchip_get_drvdata directly

Link to v3: https://lore.kernel.org/linux-pwm/20240131214042.1335251-1-tgamblin@baylibre.com/

v3 changes:
* Address feedback for driver in v2:
  * Remove unnecessary blank line in axi_pwmgen_apply
  * Use macros already defined in <linux/fpga/adi-axi-common.h> for
    version checking

Link to v2: https://lore.kernel.org/linux-pwm/20240123220515.279439-1-tgamblin@baylibre.com/

v2 changes:
* Address feedback for driver and device tree in v1:
  * Use more reasonable Kconfig approach
  * Use common prefixes for all functions
  * Rename axi_pwmgen struct to axi_pwmgen_ddata
  * Change use of "pwm" to "ddata"
  * Set and check state->polarity
  * Multiply safely with mul_u64_u64_div_u64()
  * Improve handling of max and zero periods
  * Error if clk_rate_hz > NSEC_PER_SEC
  * Add "Limitations" section at top of pwm-axi-pwmgen.c
  * Don't disable outputs by default
  * Remove unnecessary macros for period, duty, offset
  * Fix axi_pwmgen_ddata alignment
  * Don't artificially limit npwm to four
  * Use clk_rate_exclusive_get(), balance with clk_rate_exclusive_put()
  * Cache clk rate in axi_pwmgen_ddata
  * Don't assign pwm->chip.base, do assign pwm->chip.atomic
  * Relocate "unevaluatedProperties" in device tree binding
* Remove redundant calls to clk_get_rate
* Test contents of AXI_PWMGEN_REG_CORE_MAGIC instead of
  arbitrary AXI_PWMGEN_TEST_DATA in AXI_PWMGEN_REG_SCRATCHPAD
* Remove redundant clk struct from axi_pwmgen_ddata
* Add self as module author
* Add major version check for IP core

Link to v1: https://lore.kernel.org/linux-pwm/20240115201222.1423626-1-tgamblin@baylibre.com/

Drew Fustini (2):
  dt-bindings: pwm: Add AXI PWM generator
  pwm: Add driver for AXI PWM generator

 .../bindings/pwm/adi,axi-pwmgen.yaml          |  48 ++++
 MAINTAINERS                                   |   9 +
 drivers/pwm/Kconfig                           |  13 +
 drivers/pwm/Makefile                          |   1 +
 drivers/pwm/pwm-axi-pwmgen.c                  | 248 ++++++++++++++++++
 5 files changed, 319 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pwm/adi,axi-pwmgen.yaml
 create mode 100644 drivers/pwm/pwm-axi-pwmgen.c

-- 
2.44.0


