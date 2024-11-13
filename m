Return-Path: <devicetree+bounces-121512-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B33BF9C716D
	for <lists+devicetree@lfdr.de>; Wed, 13 Nov 2024 14:52:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BE054B26829
	for <lists+devicetree@lfdr.de>; Wed, 13 Nov 2024 13:35:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A59631F471C;
	Wed, 13 Nov 2024 13:35:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="IU5KkCUM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3D701DF969
	for <devicetree@vger.kernel.org>; Wed, 13 Nov 2024 13:35:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731504949; cv=none; b=uct4XTww+/wY1ab1Zkw0kZZRsjOeBxjSdwV3OUI6hUe6CApl+QZ081EgJt4Sz+FKII73ipxMcVJtZ6fDosuONfAbdTf14z9n6ABQu6zbbn/yvkPbWDJaetla0+P85sjP1n8evXao+HfjGyMFqFYXnOBock+2qjNx0NhFIQwqrLE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731504949; c=relaxed/simple;
	bh=GSEp7+P2oIqPBwNKWA7wsOuoELp7wiwa4zBQQsvE8bk=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=qCOTAPDBfgwWMwKW8P/c5eYkZdFQeFRQvRWEvjsCtaQyhxSaPUMUrNvUHejI3ILYskG87tZK6SI2gT39aWHsCJveqVOryq/HwDwqNWx3ikqHWYTshrdsy1+HBk4UNjqovO0YyNCOnv9dr7PUuqO03hfvvuRPAgl6XI0HOAiVdeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=IU5KkCUM; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-4315e9e9642so58172505e9.0
        for <devicetree@vger.kernel.org>; Wed, 13 Nov 2024 05:35:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1731504945; x=1732109745; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=38RdVR6XfzT/acxg3Evn3RfNKko9KLfNmwUZPEhGtkk=;
        b=IU5KkCUM3WqNbX7To4Q96Sp4+eJeVH2kQonJr+7fE+ooSNooBahYg9NfSafeVJd3fJ
         Q9khrr8V2nNSAhthcXmPztX31iEQesx8qji9+fjGec9QLThZBeR1EfDRdtTWO3qr3vkC
         iXrFZGziUDxIyqB8tsiKjHFNqi8NSxjCn/hdwc9MrNYsyYxMrehDTKV4H5Au7u/JepJ3
         jLP0feYRaSHeAjXEuDT0/96xJiBsqYuj/f8EfSWLHeFY1n4NhJ2dHaSIslea0vwU0obY
         FT2Uwj9MIacowyxM+kzXkQePJOECH2+mDzBwKDQZfBFH5ue1fSWyY+dXp7qRRXuWqz3W
         wFtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731504945; x=1732109745;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=38RdVR6XfzT/acxg3Evn3RfNKko9KLfNmwUZPEhGtkk=;
        b=lZSojFVJR7dFyWHR/R9zhuzY9V2dr8yMIV+cAPQlap3ZuR4Oa4Zs3fCKj/R79oHfPU
         N+D8J+kDJ/f18IhyXR6C3l9rcBiHkDgNAwSq7ZMcJ2mVzPpRsnvO3Sn/ASoMAX1zyzm/
         21YsuOiemehy91e8gZoqgH/9WbaaIvFyadfj7QBnmUtwq6FPEBe3HKdhJIKeAV2bMgQN
         KwOWxKF34ZA0fxvubUx+mYeUq0v0bucrvIfKn07wLZj2CxMMUL1JohrGqt2xwI5q8Evd
         /fFNiOkU5PrZc/PzbMrvlAC2engCrDpTVRBV/Rl3DAgtT765DV7NRJyb1+WNXC7yDUVk
         7K3A==
X-Forwarded-Encrypted: i=1; AJvYcCVk9pEvHIXhO3d3GD4o3rVvrAQgevDda75RHMu8UCXk7cd9ce3j0LHS578tPDKd3yEzWECRfbdmdtRQ@vger.kernel.org
X-Gm-Message-State: AOJu0YxomF4qo4yFZ5u/zkn+E2Zq99pVw+GDMlQ7FtUiJpv5Ye41FCJ9
	dMXDdXGasuP/cC7pO/KCzMuY+QcEewxKVVBaSOvLuE5SnRGkPThC75mJZf1UZt8=
X-Google-Smtp-Source: AGHT+IH6BtO8t01xxiyIYhMvt7Hd4pkTdgZmTb7yTwf7/RBE8w+RkZLnSNs8EBeBk/+f7GQjKwBbng==
X-Received: by 2002:a05:600c:1f1b:b0:431:60ac:9b0c with SMTP id 5b1f17b1804b1-432d4ad33demr24573945e9.20.1731504944871;
        Wed, 13 Nov 2024 05:35:44 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.28])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-432d54e2f2esm25664165e9.1.2024.11.13.05.35.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Nov 2024 05:35:44 -0800 (PST)
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
	perex@perex.cz,
	tiwai@suse.com,
	p.zabel@pengutronix.de
Cc: linux-renesas-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-sound@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	claudiu.beznea@tuxon.dev,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v3 00/25] Add audio support for the Renesas RZ/G3S SoC
Date: Wed, 13 Nov 2024 15:35:15 +0200
Message-Id: <20241113133540.2005850-1-claudiu.beznea.uj@bp.renesas.com>
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
-    01/25 - add clock, reset and power domain support
- 02-04/25 - update versaclock3 clock generator driver to support the
             5L35023 hardware variant; versaclock3 provides clocks for
             the audio devices (SSIF, DA7212 codec)
-    05/25 - add pin control support for audio
- 06-20/25 - add SSIF support for the RZ/G3S SoC; fixes and cleanups
             were also included
- 21-25/25 - add device tree support

Merge strategy, if any:
- clock patches (01-04/25) can go through the Renesas tree
- pinctrl patch (05/25) can go though the Renesas tree
- audio patches (06-20/25) can go through the audio tree
- device tree patches (21-25/25) can go through the Renesas tree

Thank you,
Claudiu Beznea

Changes in v3:
- use renesas instead of sh in audio patches title
- use proper fixes tag for patch
  "ASoC: renesas: rz-ssi: Terminate all the DMA transactions"
- collected tags

Changes in v2:
- fixed typos pointed out in the review process
- dropped da7213 patches already applied
- dropped patch "ASoC: sh: rz-ssi: Use a proper bitmask for clear bits"
  as requested in the review process


Claudiu Beznea (25):
  clk: renesas: r9a08g045-cpg: Add clocks, resets and power domains
    support for SSI
  clk: versaclock3: Prepare for the addition of 5L35023 device
  dt-bindings: clock: versaclock3: Document 5L35023 Versa3 clock
    generator
  clk: versaclock3: Add support for the 5L35023 variant
  pinctrl: renesas: rzg2l: Add audio clock pins
  ASoC: renesas: rz-ssi: Terminate all the DMA transactions
  ASoC: renesas: rz-ssi: Use only the proper amount of dividers
  ASoC: renesas: rz-ssi: Fix typo on SSI_RATES macro comment
  ASoC: renesas: rz-ssi: Remove pdev member of struct rz_ssi_priv
  ASoC: renesas: rz-ssi: Remove the rz_ssi_get_dai() function
  ASoC: renesas: rz-ssi: Remove the first argument of
    rz_ssi_stream_is_play()
  ASoC: renesas: rz-ssi: Use readl_poll_timeout_atomic()
  ASoC: renesas: rz-ssi: Use temporary variable for struct device
  ASoC: renesas: rz-ssi: Use goto label names that specify their actions
  ASoC: renesas: rz-ssi: Rely on the ASoC subsystem to runtime
    resume/suspend the SSI
  ASoC: renesas: rz-ssi: Enable runtime PM autosuspend support
  ASoC: renesas: rz-ssi: Add runtime PM support
  ASoC: renesas: rz-ssi: Issue software reset in hw_params API
  ASoC: renesas: rz-ssi: Add suspend to RAM support
  ASoC: dt-bindings: renesas,rz-ssi: Document the Renesas RZ/G3S SoC
  arm64: dts: renesas: r9a08g045: Add SSI nodes
  arm64: dts: renesas: rzg3s-smarc-som: Add versa3 clock generator node
  arm64: dts: renesas: Add da7212 audio codec node
  arm64: dts: renesas: rzg3s-smarc: Enable SSI3
  arm64: dts: renesas: rzg3s-smarc: Add sound card

 .../bindings/clock/renesas,5p35023.yaml       |   1 +
 .../bindings/sound/renesas,rz-ssi.yaml        |   1 +
 arch/arm64/boot/dts/renesas/r9a08g045.dtsi    |  96 ++++++++
 .../boot/dts/renesas/rzg3s-smarc-som.dtsi     |  47 +++-
 arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi  |  66 +++++
 drivers/clk/clk-versaclock3.c                 |  67 ++++--
 drivers/clk/renesas/r9a08g045-cpg.c           |  20 ++
 drivers/pinctrl/renesas/pinctrl-rzg2l.c       |   2 +
 sound/soc/renesas/rz-ssi.c                    | 226 +++++++++++-------
 9 files changed, 415 insertions(+), 111 deletions(-)

-- 
2.39.2


