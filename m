Return-Path: <devicetree+bounces-15939-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AB6C7EC52C
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 15:28:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5CC421C2074A
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 14:28:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 48AC62D792;
	Wed, 15 Nov 2023 14:28:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="os8cyFDN"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 090B1E542
	for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 14:28:39 +0000 (UTC)
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 04E6A11C
	for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 06:28:38 -0800 (PST)
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-9d10f94f70bso994676766b.3
        for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 06:28:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1700058516; x=1700663316; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=D1bYEl09IoLqZ4ey+eADiyqvL5SUtiEl1aW7JJS482k=;
        b=os8cyFDNBB2SLocU2l3XP9mO+eKkeEtTmr6pM7D4Mlrh+xVuXzA6GeMEOq2Sd4OfQ+
         KfGcvfOWkZZmSqGXlCCoawZxv6XY25yalS/O/u4y8W6wNyZuyzJLr43D7iBwvEp6SPc1
         RDz2ahDNjLv4xn66kpnLIvbs0UxzyzdGhhxYYbDf7BeEmJYg7iabiFK3TNqE/t/tWnSR
         zuKbOL390S3hL2TzHIM0BaWuajFaWLy+fymao0tdUlAZqXzULy/F2DRQFrr8Pn5F0Nft
         UWSootp/IrgOLotOHWQTIG3KzDTAowtxzaSGiZo1caymqCTEMGjoOTo4elq2yP1w2KMd
         o/RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700058516; x=1700663316;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=D1bYEl09IoLqZ4ey+eADiyqvL5SUtiEl1aW7JJS482k=;
        b=hXg7FrQQGsVteU7qgtsmMDylL2hnO8+qz/CAeHHq2IzqNYoKccO+gGoJpD1qw4C/cd
         Ma45WqAcA/MwT3deFKpOmesAjmSsQ6lbvnnadVSkycjxyEejofcb7O0vSt6tC799tBG4
         Ko3HCKEmSEBWQfC3OY/eaUc6d9ShMCWAoQI6LPn5zs2e40YQT6PsBQGj1/GOBSy/qJof
         CvWQWotkWW30ChzyJUpFvtTaBpQVOr/LSFbWnKWoJ/J00fM+OTH4CmA1qxXMqao/alFV
         GGSqmVWuVjYCY/UQbINCRBOkMF343btnpujqRpCitfJNBfmPu8myUkd2pLw+7BQ87aUi
         5xMQ==
X-Gm-Message-State: AOJu0Yyy+A+LPUlbNKBtwbUygUeVjmFCXHj0YhMEFlqozMvEmuhxmBbI
	6nhCzq3fQdjVsQCh5jyeLFrixJIlwwH/qmm3XI4=
X-Google-Smtp-Source: AGHT+IGr51Xp9J2M/QL2HgUJoT05UgyIsuf5IK5LOC5/gt3gQmAyfU3KI/4Vncq8iuWLEctadZ1uLg==
X-Received: by 2002:a17:906:4b47:b0:9be:e278:4d45 with SMTP id j7-20020a1709064b4700b009bee2784d45mr9348004ejv.15.1700058516380;
        Wed, 15 Nov 2023 06:28:36 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.119])
        by smtp.gmail.com with ESMTPSA id i11-20020a170906264b00b0099bd5d28dc4sm7186394ejc.195.2023.11.15.06.28.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Nov 2023 06:28:35 -0800 (PST)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: tglx@linutronix.de,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	prabhakar.mahadev-lad.rj@bp.renesas.com
Cc: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v2 0/9] irqchip/renesas-rzg2l: add support for RZ/G3S SoC
Date: Wed, 15 Nov 2023 16:27:40 +0200
Message-Id: <20231115142749.853106-1-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Hi,

Series adds support for IA55 available on RZ/G3S SoC.
Patches are split as follows:
- 1/9 updates documentation
- 2/9 adds IA55 clock
- 3-5/9 minor cleanups to align with the suggestions at [1] and
  coding style recommendations
- 6/9 implement restriction described in HW manual for ISCR register
- 7/9 add a macro to retrieve TITSR base address based on it's index
- 8/9 add suspend to RAM support
- 9/9 adds IA55 device tree node

Thank you,
Claudiu Beznea

[1] https://www.kernel.org/doc/html/latest/process/maintainer-tip.html#struct-declarations-and-initializers

Changes in v2:
- collected Conor's tag
- updated commit description according to code review comments
- added patches 4, 5 according to review recommendations
- updated patch 7/9 to retrieve only TITSR base address; dropped the rest
  of the changes for the moment
- in patch 8/9 use local variable in suspend/resume functions for controller's
  base address, indent initialized structures members to tabs, updated
  private driver data structure name
- patch 3/7 from v1 was replaced by patch 7/9 in v2
- patch 5/7 from v1 was renamed "Add support for suspend to RAM"
- cleanup patches were kept at the beginning of the series and features at the end

Claudiu Beznea (9):
  dt-bindings: interrupt-controller: renesas,rzg2l-irqc: Document RZ/G3S
  clk: renesas: r9a08g045: Add IA55 pclk and its reset
  irqchip/renesas-rzg2l: Use tabs instead of spaces
  irqchip/renesas-rzg2l: Align struct member names to tabs
  irqchip/renesas-rzg2l: Document structure members
  irqchip/renesas-rzg2l: Implement restriction when writing ISCR
    register
  irqchip/renesas-rzg2l: Add macro to retrieve TITSR register offset
    based on register index
  irqchip/renesas-rzg2l: Add support for suspend to RAM
  arm64: dts: renesas: r9108g045: Add IA55 interrupt controller node

 .../renesas,rzg2l-irqc.yaml                   |   5 +-
 arch/arm64/boot/dts/renesas/r9a08g045.dtsi    |  68 +++++++++++
 drivers/clk/renesas/r9a08g045-cpg.c           |   3 +
 drivers/irqchip/irq-renesas-rzg2l.c           | 110 +++++++++++++-----
 4 files changed, 156 insertions(+), 30 deletions(-)

-- 
2.39.2


