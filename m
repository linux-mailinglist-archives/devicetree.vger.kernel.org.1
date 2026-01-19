Return-Path: <devicetree+bounces-257053-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DAEAD3B5EC
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 19:36:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 14B90306088D
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 18:36:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D0CC36E496;
	Mon, 19 Jan 2026 18:36:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gfQRfLp/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E27F38A9C2
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 18:36:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768847777; cv=none; b=k23PqglKsRGwyWvSLg6mZGSrdt5FLhUKxEPYyKxNvmWeHKbobzYjJtwcfM3ei/H+otG9RgvVMECkm+oO/DDD2dCEcJlqt8SYYVdqjlJgnGXbdY84nF7MeR91RH3n+dnbahp8UVjcESXbajklJTsZcG0lxOQS4HX+ZXmMX9FxUQc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768847777; c=relaxed/simple;
	bh=BIRqmq2QxCTn8l7SXziTd6BUFkmIfu8BsaiokwOLfS0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=VuG2frfgRmCzq+raDykvArGg3tVKLgj+Gz4oACS0unfM3mBV+TkOszBPABrx9gqGOma3rkPxhc6W+78whxFnEi/SnUD6OtFPMu/48Kez/u+V50aF8yNIk5tT1trwXgA+hmM2Y2e0c0Vkyv5NW6sn7UGRhB65oaRFj7+w9l2AFP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gfQRfLp/; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-47ee937ecf2so33103195e9.0
        for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 10:36:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768847774; x=1769452574; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=55lyyZqMdMa9O5mc9RnR0TLqDLX220EotOz5fNdnf3I=;
        b=gfQRfLp/0tFaDTT6tDhKEEAnK6t8PpXFV5OQFhm9jwafQ4eYL4kFJf6IIOguMpUu4f
         HlGLc8RcDTf5jYLcwa538K+McWBv9iBfzevOTVyVskX03mPnP6bsCTsgko2eMDpeGqs4
         Wcw/ugjhYwhhtF8eHFAQZ+W0RVE6kCKuMCsAbeIzrCyBvajX6Gc66CUVv7bpMVN6T5Ie
         6L5WT59wnCZW5EegDxDBciyrRPvWf7S3/Bwv/vQJNLMOz3FHPqdfmpHanuto8mxjdYbA
         Y1J9kcTbl9dAFq3ZOzY2Ahh92lUlOTHSgZvJiRIaZXC2h6zOJnNchhFfDCn1xDqnmAIP
         +HwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768847774; x=1769452574;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=55lyyZqMdMa9O5mc9RnR0TLqDLX220EotOz5fNdnf3I=;
        b=ntG7YM6shH9Z9mVeRXWTRncQ7vP85ZTLezDIEUohfOYTf6oMHh/61LQXXPDZsoXE3u
         Q0RWRVqpzQYvne5IgjgpRcqXE3x5s5soFdNIIRU7MpWCXuAtF+UdrEyj2tCkyfFLrUPE
         Uqvocm/VRZsbCvgtUt7QEEoFfX6+7wr900zlLbvmiXmgpa+A7JMAXDmBRLvmaqAZJfBt
         OlA1VU8iE7p7y6ZXOeKpkuGG/L4lJ79pYLfj2lN+JAh0eTN9XEqxYP8Kj4mDUZHhgeDD
         3w8NWp0wrGUDQDrrRNVP86vDFbJe7fuepXV2/RZ9YO+WN4hooQcFaApAYdEluzZm8Tvg
         dkVw==
X-Gm-Message-State: AOJu0Yy03tawjOidrGOilH07Oay+KiU2FPhOtvrZvH9F2MgJpuH+vc9Z
	u86U5NI0SbXeLYjSs1cGR//r3fNXMJPVE6IIIc9qJZBpXFcW2mHpbTFjLcHzsw==
X-Gm-Gg: AY/fxX5zqvOQ9SGzv0rUnfqU5akWP/ELj3ARivjv0Ow07Ijnnf8q0pEN1B/2y6HCrzW
	nBgLNkN23KoTUhVJ4mX9T+ualnxc9ZRmw8pnpXu+3uA19FI3KvpaPZeeXVMy4B8Jf5timXXu+Jx
	NnDpS34w0ojTQKsOx2IvEx3AIhlgMX7xk4Bqu+1awc48lcsENWThoAzTcYq6phnsa4e1DSxTPpv
	2Rz4u8ydvgXHoT+ZoMkwAwAXw1PuGujED9D2PZU8hLs2QJVpWTcs2p0N5HRn+nG3LkLIUvbcpw8
	FMCeQ6qCRljuQBees6suWeCUfZuASGPLtR+ZfolJi8is7Ddz4x8u6+gy73OXFOy2XC7+dh6H3EC
	TReoDlGlpYvCm+fqmJRvtBriE0nlxtGJTEpc182cWil0R/uJzPiq5HAWOgPXr8fu/5D2t/93lTp
	Znx1KJiRziCpBiAW6j6usyV6nk5ACg3I8R21st9+t34gXXvGX6AOfa2UhkQnLiK33uyB9XvQSkX
	f/JVgmFoRG/puHI4YFXlNNITQ==
X-Received: by 2002:a05:600c:6812:b0:47d:403a:277 with SMTP id 5b1f17b1804b1-4801e5301fcmr175456075e9.4.1768847773622;
        Mon, 19 Jan 2026 10:36:13 -0800 (PST)
Received: from Lord-Beerus.station (net-93-151-204-73.cust.vodafonedsl.it. [93.151.204.73])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4801e8c9cbcsm203965015e9.12.2026.01.19.10.36.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Jan 2026 10:36:13 -0800 (PST)
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
	Yannic Moog <y.moog@phytec.de>,
	Primoz Fiser <primoz.fiser@norik.com>,
	Markus Niebel <Markus.Niebel@tq-group.com>,
	Josua Mayer <josua@solid-run.com>,
	Francesco Dolcini <francesco.dolcini@toradex.com>,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v5 0/3] Add support for Variscite DART-MX95 and Sonata board
Date: Mon, 19 Jan 2026 19:35:52 +0100
Message-ID: <20260119183604.88192-1-stefano.r@variscite.com>
X-Mailer: git-send-email 2.47.3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This patch series adds support for the Variscite DART-MX95 system on
module and the Sonata carrier board.

The series includes:
- Device tree bindings documentation for both SOM and carrier board
- SOM device tree with on-module peripherals
- Sonata carrier board device tree with board-specific features

The implementation follows the standard SOM + carrier board pattern
where the SOM dtsi contains only peripherals mounted on the module,
while carrier-specific interfaces are enabled in the board dts.

v5:
- Fix newlines and nodes order
v4:
- Fix typo in spacing
- Remove vpu and cm7 reserved memory
- Add GPIO_OPEN_DRAIN to i2c gpios
- Move pinmux to eof
v3:
- Fix specific node names with generic ones
- Remove fixed-link property for SFP
- Audio regulator cleanup
v2:
- Add SFP cage node for enetc_port2 following sff,sfp.yaml binding

Stefano Radaelli (3):
  dt-bindings: arm: fsl: add Variscite DART-MX95 Boards
  arm64: dts: freescale: Add support for Variscite DART-MX95
  arm64: dts: imx95-var-dart: Add support for Variscite Sonata board

 .../devicetree/bindings/arm/fsl.yaml          |   6 +
 arch/arm64/boot/dts/freescale/Makefile        |   1 +
 .../dts/freescale/imx95-var-dart-sonata.dts   | 591 ++++++++++++++++++
 .../boot/dts/freescale/imx95-var-dart.dtsi    | 425 +++++++++++++
 4 files changed, 1023 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx95-var-dart-sonata.dts
 create mode 100644 arch/arm64/boot/dts/freescale/imx95-var-dart.dtsi


base-commit: 40fbbd64bba6c6e7a72885d2f59b6a3be9991eeb
-- 
2.47.3


