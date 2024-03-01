Return-Path: <devicetree+bounces-47769-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 79A2A86E760
	for <lists+devicetree@lfdr.de>; Fri,  1 Mar 2024 18:35:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2A50528FF17
	for <lists+devicetree@lfdr.de>; Fri,  1 Mar 2024 17:35:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C87EF282E3;
	Fri,  1 Mar 2024 17:33:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="ay3h0ZBm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f47.google.com (mail-oo1-f47.google.com [209.85.161.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9676327459
	for <devicetree@vger.kernel.org>; Fri,  1 Mar 2024 17:33:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709314431; cv=none; b=egtnkr0q/M2H26pTSFeE2B+MuYWiouYj83ivP/ib/Dr/ok9oleGR+zOj6pIE8CTLvUOPSEFC4LtmffXyr6yX9HNtHm508sG7LbKHYAZl/TT0g+AJ9emdIec3N3l9c8n6J0MsfaKXTcrKG+X3CsECM+kvqwCehoYx7r91AW6eB1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709314431; c=relaxed/simple;
	bh=TCSXMg81EsOE/fbyZwViVsT5K6QOfN37XAWM9EXzavc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=einoz8dC0bUjHIpmQJWB1RRurG96MSVk+7jLnaQM4QxwLxS9e5X838S5VjHy2ljoKLHRE4ZF+z2SFYlhBy8uu5/NrSFtJjvoIsRQagPxzY9u40oZq1fQPj6d73Su81QJLmexdlrlpWKCDjpztPthgYpw3UCqF5o5VU8t9HxO6WE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=ay3h0ZBm; arc=none smtp.client-ip=209.85.161.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oo1-f47.google.com with SMTP id 006d021491bc7-5a0d96012d0so1171128eaf.3
        for <devicetree@vger.kernel.org>; Fri, 01 Mar 2024 09:33:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1709314427; x=1709919227; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=xImxJWc7Iog9OBF/0ks2T7kTvBm8QFAslDMxg3rdGPY=;
        b=ay3h0ZBmVuRkGAoh2VyfAUd0ZhymQ7vgPYPcUM5Lhl/88nCG7pGWEDu5idilOve55f
         PrHsq2VrVdklHKaNu4IQrwOGmxVmrVToejea8/bYe5Wp7Ij+njH2xscsEpOEfrQWp+by
         AzRI3YLBBfKzv8TelPmIYbIZQB/XY0TVCS59up2quYyRE/r68Pp+W105zK74+Ex+grvH
         6LZ5JIEVQuJ+rNZ8o5dxnbNTAjmuui683ZaXEYKM6vqyEGdqrqdU4JQNbl8RMcjel0kK
         sZ7GDocVOi4s2jWVS2BPTGWJ41g4l3V7HPZRtybklizUDaXaMuG++kMcCQK418di92OI
         uqkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709314427; x=1709919227;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xImxJWc7Iog9OBF/0ks2T7kTvBm8QFAslDMxg3rdGPY=;
        b=fzL6U/XUbLx5jVFZ4drRX5ZOfPftsNJWm7zHEiGvu+aSq5q8uKhCbxGzF4Dz8XLMgv
         Z8hManefFwxAyfFEFTrIEpQHqBMv+S8jcIIIV/RjNyxr6IK63bDIApqX5PmfeXYSsYy5
         ZoUekpZtwW0uAhNUbQeaGNqMK6hDzzEis34i4uM1zHPxR5FPZDn+mX7bHzovdLE5rSFS
         Fo7S7kLkMPP9sqe/vfbbw076vJlOI3vygInZctoZzVPnJ6dvf1WTuyKmMa1Zp4M8gOAH
         70tbUCKqKbT/dS8V85Rnl7+KAnVwERZa1cxlhWXoTD+OeXunif3wFaJOJeII/EL9BBOt
         B9rw==
X-Forwarded-Encrypted: i=1; AJvYcCWTO3eDERfIQdkKznXmeNOnHOZ2kAAbPuDB5jUK65pX4HyUO/oKGkukYubz06k8/t+0VirG53TgVahvvy1Ew4nZvnjh/JZXCPOi5g==
X-Gm-Message-State: AOJu0Yy8Rstuim10mAdahIJ0B3uWOcR8nBUIBGbaTA5Kt55+51tzJrvY
	4iGjnpb8r1zfFJix8cs0oGIOxx/UTR9FfY3yXdXkJKY2n/mCy2wja/HqdVWaaUM=
X-Google-Smtp-Source: AGHT+IEaS7QiqN3fYN6eqlEpEHexB1BrGI/DGifcbsfq0aYXNTMbYdF9ufVL3gHeLbRiAI+Dvz03rA==
X-Received: by 2002:a05:6358:7e99:b0:17b:7738:de5a with SMTP id o25-20020a0563587e9900b0017b7738de5amr2678947rwn.2.1709314427513;
        Fri, 01 Mar 2024 09:33:47 -0800 (PST)
Received: from workbox.oryx-coho.ts.net (d24-150-219-207.home.cgocable.net. [24.150.219.207])
        by smtp.gmail.com with ESMTPSA id t14-20020ac86a0e000000b0042e6b901ebesm1885433qtr.40.2024.03.01.09.33.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Mar 2024 09:33:47 -0800 (PST)
From: Trevor Gamblin <tgamblin@baylibre.com>
To: linux-pwm@vger.kernel.org
Cc: linux-kernel@vger.kernel.org,
	u.kleine-koenig@pengutronix.de,
	michael.hennerich@analog.com,
	nuno.sa@analog.com,
	devicetree@vger.kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	tgamblin@baylibre.com,
	dlechner@baylibre.com
Subject: [PATCH 0/2 v4] pwm: add axi-pwm-gen driver
Date: Fri,  1 Mar 2024 12:33:40 -0500
Message-ID: <20240301173343.1086332-1-tgamblin@baylibre.com>
X-Mailer: git-send-email 2.43.2
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

---
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
 drivers/pwm/pwm-axi-pwmgen.c                  | 244 ++++++++++++++++++
 5 files changed, 315 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pwm/adi,axi-pwmgen.yaml
 create mode 100644 drivers/pwm/pwm-axi-pwmgen.c

-- 
2.43.2


