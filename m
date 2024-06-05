Return-Path: <devicetree+bounces-72951-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 41A318FD796
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 22:35:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EC5E6285F1F
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 20:35:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D37F15F30D;
	Wed,  5 Jun 2024 20:35:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="B2+wIEQ7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f179.google.com (mail-oi1-f179.google.com [209.85.167.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B20113D262
	for <devicetree@vger.kernel.org>; Wed,  5 Jun 2024 20:35:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717619722; cv=none; b=naGZYwmCZeTLEFCW3qZFjZrqLKKLusDcUQJLhJvJ6covhUEVlWM7JZUgq9tyivkm5t+kN9OgMdXWjFcy4O/EhyQhWZAirt/K/JX0/xI1gGbV3pXpBpzsdB7vufQ2f0/8uPEbcnUgu60yV1OcwvcPdsBvCL/Vic33g1v/FqNUXjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717619722; c=relaxed/simple;
	bh=A8Z51WtEhjIdfd88NhvVep8DkTcf2oWydKIzJrAqSCw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=nMuKYOCqnf1fu7JH2cKX1PW5uRJTlePKNNRLYSqjrN5VrOgeWQHAdsksXDd/iiDD/GG7p0ycstkoJdOuLi+GXl7ImFgNJVikfhN59Y88oX6UufzOxixpmN2+HRfjThg9R+nEerpyQ7HWRvDQ5/ckoYmGxm/F7JLOCyyDDaDWv/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=B2+wIEQ7; arc=none smtp.client-ip=209.85.167.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f179.google.com with SMTP id 5614622812f47-3d1ffaf6091so95524b6e.3
        for <devicetree@vger.kernel.org>; Wed, 05 Jun 2024 13:35:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1717619718; x=1718224518; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=1vJjuSTFz/Nsj8mn2a+s4dFUk/0rqc2v8wfC3wlpVhk=;
        b=B2+wIEQ7TlFGM5ZSRr5bkpq2V7KHSbEh3K28Sk8RdyTGkHMf/5mVwMYLLtTwjbi4ld
         EDX1HacPMLvlyEIUz6Y1vaEiHr0cOCdBWNVveyNG1D0iLhdQ/+iEfbc8kfNcYa2g554x
         iTVGVtYVeLu+xENyE8iRCfNByZ8Z7HAu7h9OOuyRL8u2QtFH/lCia9ApoYTINtfpghtP
         Ays9yBgvXwbuRi/LQD9Al9UexrQZlzaKzEUsxtHleZyjaYYzOZQvPHv52a5LpBE5u4BY
         ZJoN6iHZP/zwhqalyDFbCFSeAyFmHFp1eJvMI57UsdACh3eoaxik3sYOuKiePp6PiRTs
         OC5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717619718; x=1718224518;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1vJjuSTFz/Nsj8mn2a+s4dFUk/0rqc2v8wfC3wlpVhk=;
        b=sC91ZimH6xFpsysXTCkljB0hem77XE2AQbSE4ChOZhwqthaEFBGjMCBdfXm44oREjA
         n1xuBJucEfRkcn8IeuEXTVUDsHp2MgSDmXSccy22uSu1TVF3+hVpKn1yVleGZZy0KVZi
         lZwXLnNKRIgMcdT7Z63CWiZ+ts4ZEajzSTTr8aSbYLvjXf/K+qzl1lBThc/6mbA4nWgZ
         2ZPhxXKZLoeeH0MWOwbjF5T8kCkFyGDonSxbn54gOTxyz540qnjAYHJyRcddtKIUIl6K
         z0iuXMiRJLDbtDrcZyQQISXiD7rRLxff+tIP5wJbcAs9MrHPWKR8Tn7jmxfQr18qhye/
         25Vw==
X-Forwarded-Encrypted: i=1; AJvYcCXPhVNlHFxzxLG0ygXRbv0x8OApxqvkpfy2znLRl8NKLExbGR9hO6GSZ5FMXaGSpoLkUIPPjngJFQcA4fSUwH/aqHLHRCuWX+q63Q==
X-Gm-Message-State: AOJu0YxpDfpTr6PD5rozNE2vN1xICNNRKu27mfxdmJT1c0oejz3/Eski
	QCACDjctaIyLt0ax8tXlVsH+W5v100rdWuC6t1hvxTVMe41pbrcyQmrzWPDsTbA=
X-Google-Smtp-Source: AGHT+IG/Q5dm0XunXk8ISugNOrCX4l8Ka3GNq1v/BqR0c3/G2Yi18em/EdrAh0PsFwlWy9/2BwQrlw==
X-Received: by 2002:aca:2104:0:b0:3c9:c2bc:6939 with SMTP id 5614622812f47-3d2044e7d00mr3533666b6e.57.1717619716846;
        Wed, 05 Jun 2024 13:35:16 -0700 (PDT)
Received: from localhost.localdomain (d24-150-219-207.home.cgocable.net. [24.150.219.207])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6afc72485f8sm25359866d6.5.2024.06.05.13.35.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Jun 2024 13:35:16 -0700 (PDT)
From: Trevor Gamblin <tgamblin@baylibre.com>
To: linux-pwm@vger.kernel.org
Cc: linux-kernel@vger.kernel.org,
	ukleinek@baylibre.com,
	ukleinek@kernel.org,
	michael.hennerich@analog.com,
	nuno.sa@analog.com,
	tgamblin@baylibre.com,
	dlechner@baylibre.com,
	devicetree@vger.kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Subject: [RESEND][PATCH 0/2 v6] pwm: add axi-pwm-gen driver
Date: Wed,  5 Jun 2024 16:35:04 -0400
Message-ID: <20240605203507.1934434-1-tgamblin@baylibre.com>
X-Mailer: git-send-email 2.45.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Resending due to missing real name in "From:" line.

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
(https://analogdevicesinc.github.io/hdl/library/axi_pwm_gen/index.html),
the driver was changed to support only the v2 IP after squashing those
additions. As a result, the overall driver is simpler as it no longer
uses an axi_pwm_variant struct. Support for v1 IP can be added back
later in the event that it is required.

---
v6 changes:
* Address feedback for driver in v5:
  * Add link to public device documentation in pwm-axi-pwmgen.c
  * Remove unnecessary line split in axi_pwmgen_setup
  * Remove unnecessary call to devm_add_action_or_reset() in
    axi_pwmgen_probe
* Update documentation link in driver and binding commit messages

Link to v5: https://lore.kernel.org/linux-pwm/20240424125850.4189116-1-tgamblin@baylibre.com/

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

Link to v4: https://lore.kernel.org/linux-pwm/20240301173343.1086332-1-tgamblin@baylibre.com/

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
 drivers/pwm/pwm-axi-pwmgen.c                  | 241 ++++++++++++++++++
 5 files changed, 312 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pwm/adi,axi-pwmgen.yaml
 create mode 100644 drivers/pwm/pwm-axi-pwmgen.c

-- 
2.45.1


