Return-Path: <devicetree+bounces-178422-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F07F6ABBC3D
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 13:21:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 918A43BA6BA
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 11:20:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED810272E51;
	Mon, 19 May 2025 11:21:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="jy60X/F4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 945CF1D5CE8
	for <devicetree@vger.kernel.org>; Mon, 19 May 2025 11:21:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747653674; cv=none; b=q73t5ddW++LO9/YFOFIOA5JtJFDMWOLaaYCqr/6AH4lDmgsW2shTbIIFPH9aKbCchMuu1fy99KTGJzdquZySUSUjEXha0nYxx7RvvW5Afe27ChD35rOMBE6E0x+lw6Z26Kqt+mfawGl5ZwM4McckI3gL0+qvz1Iea0AHBoSbkbQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747653674; c=relaxed/simple;
	bh=2w0eJAglbqmxjX84enmhQtj5crEK+/37sxtpVctlvsA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=NPSOfQXHg8wcCH0K+MfYS3SYgINpfo0a1BOynQpEg0VE8PkzvEd2bJ2+iCztUPLOZpv+7effRXCy+YnRdEOndppKIPD0+St1E40LzGRuHYYym+jNShSOkL5zYpS8AFeCvaPTh/n7eruVc3Is6kj7F5MtcV712x/cqoTGxKEOiZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=jy60X/F4; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:mime-version:content-transfer-encoding; s=k1; bh=ZEsqiemneZI+AU
	3cTt3mng1ZVDC1GiTfBQhHVwejIXM=; b=jy60X/F4hCCcdr5dQIh2u4zmxgLQkF
	VEp32TNN/A0oPxvDiS6RjY/IfB72VQUg+T7elrMH5q2BP+ONQMlsubgV3Aicurkl
	ntDy1NI/rgJc0iA8jl2OlT/H9fEG1MwTJ47Xhzavk6FBsHMTVp2ttrfpEbpTNOLO
	J6oEadiUhd00CMzOkubw2WFflrhfzc/vmJGzGXI3+rMLCBsdUpfD/Q4FvAV/K18Z
	BP92IaiBPj14fG9QZVsHdnmds4Gl0M/Dbe+90XKUSiNQtCA7KeTr3t4xgJBLqd5A
	cN2MWupH42fMb5gRM54wV9NC1M6Efp8GRSAiZpJ5LYeH4JcOnRnyeaxQ==
Received: (qmail 2456768 invoked from network); 19 May 2025 13:21:09 +0200
Received: by mail.zeus03.de with UTF8SMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 19 May 2025 13:21:09 +0200
X-UD-Smtp-Session: l3s3148p1@1hMnVHs1VMJZz6+V
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-arm-kernel@lists.infradead.org
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Andrew Lunn <andrew@lunn.ch>,
	Claudiu Beznea <claudiu.beznea@tuxon.dev>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	Gregory Clement <gregory.clement@bootlin.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Nicolas Ferre <nicolas.ferre@microchip.com>,
	Rob Herring <robh@kernel.org>,
	Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Subject: [PATCH 0/4] ARM: dts: use recent scl/sda gpio bindings
Date: Mon, 19 May 2025 13:21:02 +0200
Message-ID: <20250519112107.2980-1-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.47.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Some ARM boards still use the deprecated 'gpios' property to describe a
GPIO based I2C bus. Let them use the proper '{scl|sda}-gpios' property.

Based on linux-next as of 20250516. No dependencies. I suggest that
patches go via their subsystem trees.

Tested on Calao USB boards using AT91 chipsets.

Wolfram Sang (4):
  ARM: dts: cirrus: ep7211: use recent scl/sda gpio bindings
  ARM: dts: marvell: kirkwood: use recent scl/sda gpio bindings
  ARM: dts: microchip: use recent scl/sda gpio bindings
  ARM: dts: stm32: use recent scl/sda gpio bindings

 arch/arm/boot/dts/cirrus/ep7211-edb7211.dts       |  4 ++--
 arch/arm/boot/dts/marvell/kirkwood-km_common.dtsi |  4 ++--
 arch/arm/boot/dts/microchip/at91rm9200.dtsi       |  5 ++---
 arch/arm/boot/dts/microchip/at91sam9260.dtsi      |  5 ++---
 arch/arm/boot/dts/microchip/at91sam9261.dtsi      |  4 ++--
 arch/arm/boot/dts/microchip/at91sam9263.dtsi      |  5 ++---
 arch/arm/boot/dts/microchip/at91sam9g45.dtsi      |  5 ++---
 arch/arm/boot/dts/microchip/at91sam9n12.dtsi      |  5 ++---
 arch/arm/boot/dts/microchip/at91sam9rl.dtsi       |  8 ++++----
 arch/arm/boot/dts/microchip/at91sam9x5.dtsi       | 15 ++++++---------
 arch/arm/boot/dts/st/ste-nomadik-s8815.dts        |  4 ++--
 11 files changed, 28 insertions(+), 36 deletions(-)

-- 
2.47.2


