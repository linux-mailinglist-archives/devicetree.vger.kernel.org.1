Return-Path: <devicetree+bounces-250241-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EAF1CE7295
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 16:05:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2420A3004BA0
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 15:04:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 601433164B8;
	Mon, 29 Dec 2025 15:04:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="aA9KBn8e"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A01B6312836
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 15:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767020695; cv=none; b=IIniSxNFi2IQjQd7yQj89/ouEPDgexUL+sdP0ddfU2QXxOSsi0lHQY7x/P8Nd+cyVX/s7CtBIgvBhzkydJkJhGLMs954awoi8fexIeW2LSf/hzw/jE6wE02/Xc2OBopzrTWkVQGTnWAjEH898NNbj4wgQM4SefZcfpgkX9DS1mc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767020695; c=relaxed/simple;
	bh=rUsF8k3Hffx7f9L8YJrFlHMprC15qfDI5GkdFPK2rMA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=tnB8D8nEYw0p//r58rnnYzqkkrpr2XzeHSkyQIfds+CnvK34DtSN6G17trX5pNtIy9zHPgeQqXHf4+yLO4Vi5r0y0cTjWdxhYkTVLhcJLBoWOZlJgXBlqtfMxLKORHFhzFi9bUbz6msuMOpc+RwK04wDjoeY14BaEjBtHfKbXWM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=aA9KBn8e; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-432755545fcso1731971f8f.1
        for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 07:04:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767020692; x=1767625492; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=wHEN0giZ9ctJ3eXe7pXHVE7NUCY/SFiNC6nnXZg3quQ=;
        b=aA9KBn8eojwMg8AnNBy73yqc+kw3JOPfnI6jpVPbtkQjMb7Kfywjfu7/Ixnmtmq7tI
         hJwTIZ3pervV/EAsIUcNji+B1ozVx+3dvH1P3RYQK7kE0xRm7yxl4zwnOChd7QrbURj5
         baoYFIhWI0OJLSDlJzsMMt/vSy1RNJlTWWB4KZ8O7Pjpmz3PkD5CSB/5aazRDL+rxXbU
         MPdYNsvEGCrUbyIr/cYNrCZ86/tTQBWZyKicxSZDQVPVoYfYXkjXvdOGdi2T/kMf6eQ6
         alaVN+/C3IK7+QGloFBuUsf1h+fvKlKg5WD+ZuoaEOCnpdqygB36Y6Z42WHcPUUlUKmf
         os6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767020692; x=1767625492;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wHEN0giZ9ctJ3eXe7pXHVE7NUCY/SFiNC6nnXZg3quQ=;
        b=i1u7LequlmL0DJc00m0jw03b9/xIdHePuTYFkVxmfChDli4gObz3DD75cwCv4pmi1j
         P87t42kJ669oXheWJzs09DbW4XumAV3E+PDj620UdUxQj210cR/4d6qy2ogjSGTXWhqH
         qV6rG6p0is1HuotqH0cETzJ1p/Inbck4eEKk9LvJqZN4SoYZWVtv8/udNWepuiJn+wy0
         EuC+lyu7ef709VYpvbamGNeQSlKnD2iMDAHb6Vstvxo3fxatAS5xZqnPlycxBV/Qa2DE
         XOuQmbq5dx6cIfYpe3sdwYkIyUZ3KnTAPjPMv6mkLjtiZFcNCy3DFrikMB3OSHMmvGbV
         TzOw==
X-Gm-Message-State: AOJu0YyPLQxrHNmuUd5jWYz0arA0M0uCk2i1ooVxOU7/JqgjPbtd3KFv
	jzERCPfkc8RIk+20F37x+YZLbZlR0hcajURj9IJ0+mZTU/MIhyR56WZuNQdhOCsN
X-Gm-Gg: AY/fxX5eaKLcKuFoCJHLT6R6cF3D/LEFFNRV8XooJFG+Zh3adwxW/b+O767IGKtIgNc
	Zh9AACyohT2EsPKa3UT0W0KwepHHJywHR3jqXidQlAQ1mSRl26CByDPWvv6PsJmtMUlTx/ZVQhR
	xr9MLENvUd1ig06vbcOCwFHv1Ztv7TURZeVOUq1Ec+jUpUk8AHs9LgNZmk3YfN7THa561+aTi6S
	Qq6ISlh05qeTUFvnhKpkSfFgQ52j8Dw7ZCO2WlXD6qNR4zklYcPR5VkWcFPUnNqo69ppPucZ3ut
	35pebqRJFm1F7mLd1Kmo6OWRxCzqwdwI2lYkKOk34hGGKStBwZKx44jDBh1MgIA3vYyrCTJ2wh1
	n3Z6tuP3+SGd697AQKRLZ5E6fuEk1N6HfNEXNfD36ydNx72PXySmu7xKp+5L1MANyNkqBT6gcon
	GMLvgxZ03sK2CQwOBSLHDi0+YYBu4KWMTvT+8oikNgmB5j0ds3KhLKX2KdowWWtsZS4bCwgB902
	L8h+7fwU1JL/RLJFXRx
X-Google-Smtp-Source: AGHT+IFYl+a9l1HFC9fZU6kSuVFpDYvy7t7ogNUxGwrhMkfCrZCdqiRvwnzBMD8/3Q77QJVIhjX1uw==
X-Received: by 2002:a05:6000:26cf:b0:431:a33:d87c with SMTP id ffacd0b85a97d-4324e4bf65fmr42256380f8f.11.1767020691618;
        Mon, 29 Dec 2025 07:04:51 -0800 (PST)
Received: from Lord-Beerus.station (net-5-94-28-220.cust.vodafonedsl.it. [5.94.28.220])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4325d10cc48sm52899902f8f.16.2025.12.29.07.04.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Dec 2025 07:04:51 -0800 (PST)
From: Stefano Radaelli <stefano.radaelli21@gmail.com>
X-Google-Original-From: Stefano Radaelli <stefano.r@variscite.com>
To: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Stefano Radaelli <stefano.r@variscite.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Alexander Stein <alexander.stein@ew.tq-group.com>,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Primoz Fiser <primoz.fiser@norik.com>,
	Yannic Moog <y.moog@phytec.de>,
	Markus Niebel <Markus.Niebel@tq-group.com>,
	Josua Mayer <josua@solid-run.com>,
	Francesco Dolcini <francesco.dolcini@toradex.com>,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v1 0/3] Add support for Variscite DART-MX95 and Sonata board
Date: Mon, 29 Dec 2025 16:04:08 +0100
Message-ID: <20251229150421.57616-1-stefano.r@variscite.com>
X-Mailer: git-send-email 2.47.3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Stefano Radaelli <stefano.r@variscite.com>

This patch series adds support for the Variscite DART-MX95 system on
module and the Sonata carrier board.

The series includes:
- Device tree bindings documentation for both SOM and carrier board
- SOM device tree with on-module peripherals
- Sonata carrier board device tree with board-specific features

The implementation follows the standard SOM + carrier board pattern
where the SOM dtsi contains only peripherals mounted on the module,
while carrier-specific interfaces are enabled in the board dts.

Stefano Radaelli (3):
  dt-bindings: arm: fsl: add Variscite DART-MX95 Boards
  arm64: dts: freescale: Add support for Variscite DART-MX95
  arm64: dts: imx95-var-dart: Add support for Variscite Sonata board

 .../devicetree/bindings/arm/fsl.yaml          |   6 +
 arch/arm64/boot/dts/freescale/Makefile        |   1 +
 .../dts/freescale/imx95-var-dart-sonata.dts   | 588 ++++++++++++++++++
 .../boot/dts/freescale/imx95-var-dart.dtsi    | 462 ++++++++++++++
 4 files changed, 1057 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx95-var-dart-sonata.dts
 create mode 100644 arch/arm64/boot/dts/freescale/imx95-var-dart.dtsi


base-commit: 40fbbd64bba6c6e7a72885d2f59b6a3be9991eeb
-- 
2.47.3


