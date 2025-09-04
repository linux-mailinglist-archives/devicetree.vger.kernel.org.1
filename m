Return-Path: <devicetree+bounces-212989-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C009FB445B5
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 20:47:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8CD32564CFB
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 18:47:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B473F2459F8;
	Thu,  4 Sep 2025 18:47:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=mleia.com header.i=@mleia.com header.b="suWSrYSH";
	dkim=pass (2048-bit key) header.d=mleia.com header.i=@mleia.com header.b="suWSrYSH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.mleia.com (mleia.com [178.79.152.223])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 006EF1E3DFE
	for <devicetree@vger.kernel.org>; Thu,  4 Sep 2025 18:47:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.79.152.223
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757011624; cv=none; b=Id/iQeMmhtjDfCaCxPyVcFQ4frQK0ya3q0rBZP+nJTWxTcMtvVBD5wZsVB64Fh7tdxJBZuv3XJCLkYzwBjfIpewjJwbrbZyKHBAGqINuh1yWJqrIz5TcGc6XP14dtBzwk5t44PQNxTCzr3eXWm7YdC61eCzw7oOQFETNW3EnTHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757011624; c=relaxed/simple;
	bh=YiGVn3w0LfGLriTAXP5UMOVqbkvD2m9utV1JR1OxSc0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=us0FuqvIppedNwF2odqqLGUD7Dh8j8nYzuYx//ACoZituSG+0GOB/RjBeBFdTvq5QecHTfmYshF34XYPp5he7Ivb9faPg1ggJamfCF/QuXvl1ckPtnWBs50PJlY3vFi5dDXN3W02BUfh0yHEdtOdu2dIKp6RjiZGbI6QUCmzqhA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=mleia.com; spf=none smtp.mailfrom=mleia.com; dkim=pass (2048-bit key) header.d=mleia.com header.i=@mleia.com header.b=suWSrYSH; dkim=pass (2048-bit key) header.d=mleia.com header.i=@mleia.com header.b=suWSrYSH; arc=none smtp.client-ip=178.79.152.223
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=mleia.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=mleia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mleia.com; s=mail;
	t=1757011620; bh=YiGVn3w0LfGLriTAXP5UMOVqbkvD2m9utV1JR1OxSc0=;
	h=From:To:Cc:Subject:Date:From;
	b=suWSrYSH8k4qbnpLOjF4z08h9l28GZ3NVbspayGxRjJbcEelMsrPKztxxYuqsmK6s
	 GOq/u2Us5AOEU6iF9kHjN4+r98hdz0Ru1RTyrBbZ4E/DrGoEXs9rSly60DkUx6JuKW
	 y4g5pkv68TRq0wHER400JXLpVg1BzjUqXF/CiiyxMgtPdc0pjiBf5SUMoR3M5/BuLL
	 U+G/b5JXas+ollKwfRu3hgqeRovPHuqg8qcQTCtnOMvUtJXeY9HUEGVnrez55c8oVe
	 93/eg+c6zOv3+AMt0mWIdL1aOjjg307XTSnWx1eeCZYJHWDsCXX+94UKI2wS2p+kvU
	 Z+iXawk2fvoRQ==
Received: from mail.mleia.com (localhost [127.0.0.1])
	by mail.mleia.com (Postfix) with ESMTP id B85913D20F4;
	Thu,  4 Sep 2025 18:47:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mleia.com; s=mail;
	t=1757011620; bh=YiGVn3w0LfGLriTAXP5UMOVqbkvD2m9utV1JR1OxSc0=;
	h=From:To:Cc:Subject:Date:From;
	b=suWSrYSH8k4qbnpLOjF4z08h9l28GZ3NVbspayGxRjJbcEelMsrPKztxxYuqsmK6s
	 GOq/u2Us5AOEU6iF9kHjN4+r98hdz0Ru1RTyrBbZ4E/DrGoEXs9rSly60DkUx6JuKW
	 y4g5pkv68TRq0wHER400JXLpVg1BzjUqXF/CiiyxMgtPdc0pjiBf5SUMoR3M5/BuLL
	 U+G/b5JXas+ollKwfRu3hgqeRovPHuqg8qcQTCtnOMvUtJXeY9HUEGVnrez55c8oVe
	 93/eg+c6zOv3+AMt0mWIdL1aOjjg307XTSnWx1eeCZYJHWDsCXX+94UKI2wS2p+kvU
	 Z+iXawk2fvoRQ==
From: Vladimir Zapolskiy <vz@mleia.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Piotr Wojtaszczyk <piotr.wojtaszczyk@timesys.com>,
	Frank Li <Frank.Li@nxp.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/7] ARM: dts: lpc32xx: a number of dt binding clean-ups
Date: Thu,  4 Sep 2025 21:46:40 +0300
Message-ID: <20250904184647.397104-1-vz@mleia.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-49551924 
X-CRM114-CacheID: sfid-20250904_184700_773569_F3F9FDEB 
X-CRM114-Status: UNSURE (   5.75  )
X-CRM114-Notice: Please train this message. 

The short series contains a number of trivial clean-ups in a shared
lpc32xx.dtsi file utilized by all NXP LPC32xx powered boards.

Vladimir Zapolskiy (7):
  dt-bindings: arm: nxp: lpc: Assign myself as maintainer of NXP LPC32xx platforms
  ARM: dts: lpc32xx: Set motor PWM #pwm-cells property value to 3 cells
  ARM: dts: lpc32xx: Correct motor PWM device tree node name
  ARM: dts: lpc32xx: Correct SD/MMC controller device node name
  ARM: dts: lpc32xx: Specify a precise version of the SD/MMC controller IP
  ARM: dts: lpc32xx: Specify #dma-cells property of PL080 DMA controller
  ARM: dts: lpc32xx: Correct PL080 DMA controller device node name

 .../devicetree/bindings/arm/nxp/lpc32xx.yaml          |  2 +-
 arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi                | 11 ++++++-----
 2 files changed, 7 insertions(+), 6 deletions(-)

-- 
2.49.0


