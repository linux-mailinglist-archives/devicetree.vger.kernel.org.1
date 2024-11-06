Return-Path: <devicetree+bounces-119331-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 545789BE038
	for <lists+devicetree@lfdr.de>; Wed,  6 Nov 2024 09:19:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7EC9C1C23180
	for <lists+devicetree@lfdr.de>; Wed,  6 Nov 2024 08:19:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D16BB1D514B;
	Wed,  6 Nov 2024 08:19:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="pb7+cJhV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27E421D2F76
	for <devicetree@vger.kernel.org>; Wed,  6 Nov 2024 08:19:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730881159; cv=none; b=UBp2l1VcZD8Sgmc84ZmNg2p/l3gXbPefI45UEmsdYX6HVSl7cgf8mQoFG87CNEzcOug/KE9kNBmdBD5FLNguzYFvS6HPcRvapp2GhmRkLpP41e0LEkwrkd2OrsKIs/j28uVhbfXGPu1Yqp8IotobpwTmjkPvcn5Z0eVnKWYVqI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730881159; c=relaxed/simple;
	bh=GpBDUTZ3YVREfgsYBDreS3OjzBVkAgTgUgBjQMMYioM=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=Mx1empBqJdGcCACuUOZDHachnrTzEgOdaJnUUXDwlsIl1N7lw+jCN6dsbIekx3RfhBd3oF1TT/Cqx/EOsKsIZV6/wAzTf5024m+LWV4CqUF7U82xVKJpYAG5h4pcQSwaqjwqmHurraWOZc8wVmLwSRCrdbGR3qsP0DC6jJDqDZg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=pb7+cJhV; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-539f58c68c5so11489911e87.3
        for <devicetree@vger.kernel.org>; Wed, 06 Nov 2024 00:19:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1730881155; x=1731485955; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=O0EwWiHqZRcRNhtKVqfQIo8EgL8Jkkj2R1J1tOzysMA=;
        b=pb7+cJhVpqTVTT7LXw0aeKym4KcDoYFZ4QHE2Iig+DmndeE5U5UgPjcTd00LcB7mEO
         2Mpo4hTM6NYtLr02F9fdnDukYc3KLB6LPIU/zvk0dG6k5C4e3FXUBMUFuYMfq3yOSaD8
         aO5Cvd05+6QYPUpi9Fx3zOPonve4Twa92kwLxlbiCAS1VnyR63Tt5v88DZ+Ijalj9/jh
         NHytgoiVCjwYifjclA2E17TJ9wW6yXp+OvMAOcO6rLhwHuHt+okfvw06DjG3aqk+8QyT
         jaoDTVKr24YYZ8zvx92H/Tj2YfHRI25z1H32NClp38I2PDCQJGvOA3c8X0P7IM+MBXkm
         W0Sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730881155; x=1731485955;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=O0EwWiHqZRcRNhtKVqfQIo8EgL8Jkkj2R1J1tOzysMA=;
        b=wubNwRze6QFLIhBBv1+++j28+JZyf4zmdQ4HSVV14Tb5n3Qp4EgdMH7UlB0W3nYaJC
         lVbU/m+Lulx7fxW5upKAsbtbvtUN7T6k32XEiyvLKvEnXleqcOavWkkphhqs4jAKFqI4
         9bf/NXnyDwRZmS+KmgKMiAzHwN2LhQhQVJdL/46kLHnV7ivVrm/MXpwOpEBCQ3uIHovL
         PW9sRp8T7LEeaP8OuRFWoFntmGXmuY5Zplq2ApjXbVswzRDpkaiifJnTXnhlrQQpR5tx
         NhOYHuT0e/Zv5Qs/94Q5CI9NQNtTcTiIl0gNZs3flSu84poV35U1nLsU3IpalxtYQ1W4
         se5Q==
X-Forwarded-Encrypted: i=1; AJvYcCXPJhuiYrEpYiyANkg/D7h7TI+5aoLgL9wD3DRWEtKsafFed92IqzQcGxpGrnGrJmUhHY3+5fW+8mJB@vger.kernel.org
X-Gm-Message-State: AOJu0YwPQOqYscWpi6PnF+MAUtnBZ2Ze8uVz3PqzzDnWCJwBaRFioW4X
	uTpETry7KhUJVuyxvcNWRuezYmbvnN+GEQWZF6vYYtLNTFXWXTITYxcQQNitKTk=
X-Google-Smtp-Source: AGHT+IFtafBLis7fezHXs17e2MYW4DBcU7xNwUH27d76x7GwpqPEQILU3OH71SRjhwJ/jvCHwWZnIw==
X-Received: by 2002:a05:6512:3d0e:b0:53c:74ed:9de with SMTP id 2adb3069b0e04-53d65dc9860mr15311533e87.6.1730881155098;
        Wed, 06 Nov 2024 00:19:15 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.28])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9eb16a2dbcsm241369766b.40.2024.11.06.00.19.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Nov 2024 00:19:14 -0800 (PST)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: geert+renesas@glider.be,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	biju.das.jz@bp.renesas.com,
	prabhakar.mahadev-lad.rj@bp.renesas.com,
	lgirdwood@gmail.com,
	broonie@kernel.org,
	magnus.damm@gmail.com,
	linus.walleij@linaro.org,
	support.opensource@diasemi.com,
	perex@perex.cz,
	tiwai@suse.com,
	p.zabel@pengutronix.de,
	Adam.Thomson.Opensource@diasemi.com
Cc: linux-renesas-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-sound@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH 00/31] Add audio support for the Renesas RZ/G3S SoC
Date: Wed,  6 Nov 2024 10:17:55 +0200
Message-Id: <20241106081826.1211088-1-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Hi,

Series enables the audio support for the Renesas RZ/G3S
SoC along with runtime PM and suspend to RAM.

Patches:
-    01/31 - add clock, reset and power domain support
- 02-04/31 - update versaclock3 clock generator driver to support the
             5L35023 hardware variant; versaclock3 provides clocks for
             the audio devices (SSIF, DA7212 codec)
-    05/31 - add pin control support for audio
- 06-21/31 - add SSIF support for the RZ/G3S SoC; fixes and cleanups
             were also included
- 22-26/31 - updates the da7213 codec driver to support the DA7212
             hardware variant; suspend to RAM code was adjusted
             to cope with the RZ/G3S power saving modes
- 27-31/31 - add device tree support

Merge strategy, if any:
- clock patches (01-04/31) can go through the Renesas tree
- pinctrl patch (05/31) can go though the Renesas tree
- audio patches (06-26/31) can go through audio tree
- device tree patches (27-31/31) can go through Renesas tree

Thank you,
Claudiu Beznea

Claudiu Beznea (29):
  clk: renesas: r9a08g045-cpg: Add clocks, resets and power domains
    support for SSI
  clk: versaclock3: Prepare for the addition of 5L35023 device
  dt-bindings: clock: versaclock3: Document 5L35023 Versa3 clock
    generator
  clk: versaclock3: Add support for the 5L35023 variant
  pinctrl: renesas: rzg2l: Add audio clock pins
  ASoC: sh: rz-ssi: Terminate all the DMA transactions
  ASoC: sh: rz-ssi: Use only the proper amount of dividers
  ASoC: sh: rz-ssi: Fix typo on SSI_RATES macro comment
  ASoC: sh: rz-ssi: Remove pdev member of struct rz_ssi_priv
  ASoC: sh: rz-ssi: Remove the rz_ssi_get_dai() function
  ASoC: sh: rz-ssi: Remove the 2nd argument of rz_ssi_stream_is_play()
  ASoC: sh: rz-ssi: Use a proper bitmask for clear bits
  ASoC: sh: rz-ssi: Use readl_poll_timeout_atomic()
  ASoC: sh: rz-ssi: Use temporary variable for struct device
  ASoC: sh: rz-ssi: Use goto label names that specify their actions
  ASoC: sh: rz-ssi: Rely on the ASoC subsystem to runtime resume/suspend
    the SSI
  ASoC: sh: rz-ssi: Enable runtime PM autosuspend support
  ASoC: sh: rz-ssi: Add runtime PM support
  ASoC: sh: rz-ssi: Issue software reset in hw_params API
  ASoC: sh: rz-ssi: Add suspend to RAM support
  ASoC: dt-bindings: renesas,rz-ssi: Document the Renesas RZ/G3S SoC
  ASoC: da7213: Populate max_register to regmap_config
  ASoC: da7213: Return directly the value of regcache_sync()
  ASoC: da7213: Add suspend to RAM support
  arm64: dts: renesas: r9a08g045: Add SSI nodes
  arm64: dts: renesas: rzg3s-smarc-som: Add versa3 clock generator node
  arm64: dts: renesas: Add da7212 audio codec node
  arm64: dts: renesas: rzg3s-smarc: Enable SSI3
  arm64: dts: renesas: rzg3s-smarc: Add sound card

Hao Bui (2):
  ASoC: da7213: Avoid setting PLL when closing audio stream
  ASoC: da7213: Extend support for the MCK in range [2, 50] MHz

 .../bindings/clock/renesas,5p35023.yaml       |   1 +
 .../bindings/sound/renesas,rz-ssi.yaml        |   1 +
 arch/arm64/boot/dts/renesas/r9a08g045.dtsi    |  96 ++++++++
 .../boot/dts/renesas/rzg3s-smarc-som.dtsi     |  47 +++-
 arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi  |  66 +++++
 drivers/clk/clk-versaclock3.c                 |  67 +++--
 drivers/clk/renesas/r9a08g045-cpg.c           |  20 ++
 drivers/pinctrl/renesas/pinctrl-rzg2l.c       |   2 +
 sound/soc/codecs/da7213.c                     |  27 ++-
 sound/soc/codecs/da7213.h                     |   1 +
 sound/soc/renesas/rz-ssi.c                    | 228 +++++++++++-------
 11 files changed, 437 insertions(+), 119 deletions(-)

-- 
2.39.2


