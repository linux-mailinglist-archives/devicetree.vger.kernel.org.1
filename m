Return-Path: <devicetree+bounces-139588-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 98621A16463
	for <lists+devicetree@lfdr.de>; Sun, 19 Jan 2025 23:57:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B70AD3A4219
	for <lists+devicetree@lfdr.de>; Sun, 19 Jan 2025 22:57:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07FB11DFE14;
	Sun, 19 Jan 2025 22:57:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="YKPcMmIS"
X-Original-To: devicetree@vger.kernel.org
Received: from relay5-d.mail.gandi.net (relay5-d.mail.gandi.net [217.70.183.197])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C90611DFD80;
	Sun, 19 Jan 2025 22:57:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.70.183.197
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737327426; cv=none; b=HbA938qWd29UieSBrd2PlIK06pHcrLQ1IrXA8jsthRiXiPpKSXvWtUUP5kcBJHXiiG81DUtNjpfxo+4xyUutfTitQYs9XPI4dAzkr/BlbXpXmHU5X2+Yno5YPkHlX4aVURklSzWs4Yp8J65SwfgpwY38hu9Maa7J+GettdINvao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737327426; c=relaxed/simple;
	bh=FTlFHu4Ch9a58ygW9hXtWFQaX9Y+dzUSxzWtBGK6kHc=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=nix+TAfnD2ueydhFz1zvvbyA2ImJmougZzFtefI1fomEohTtYrp40l75vdsETTeXaCmRDgpFPvHSbEtBP4wdoV2S0reOLFQNqMGFr/+/AyitKonVHw7uJcSiBvciEKaqo/CUCfSaWmsC28EBTH4StKWrWcf3xFvfqn3mPjU7rnU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=YKPcMmIS; arc=none smtp.client-ip=217.70.183.197
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id 9326A1C0002;
	Sun, 19 Jan 2025 22:57:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1737327422;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=QZu5jeody6oxpz4x8MYrbb46BHii47kNRlyxqpDsps4=;
	b=YKPcMmIS4RHbLrv+EC1jcqqGgBR5ymzURQAjmsaV6LUXiR2bm3WR1mxBEWF8fZaswSEzXC
	6dXtlQAqLxZ5cXf163spiLGsUPPOLP/RTUsDKit6TSOxZQxEMGaG49sL291c/V3nXcjHhV
	Uzttb1W7DH8z0j6zHXQPKsN/vOByXOHsJw2P4kHCcnhIxNYSaQbrqxWvMFv/3goJxF3RHp
	5eTsekIVU9eDRMFTp9oiUPJjvGqu84UfcKH/wHOK2KE0xMa4ha0fofYHUnuebPjlILYuTY
	ZQU9TSEKm68hF+amDZXkdGlcFz2gasgKCb1FkQSf6TANrUaxN0CMnW9mcXgfvw==
From: Olivier Benjamin <olivier.benjamin@bootlin.com>
Subject: [PATCH 0/2] Describe the cameras in the PinePhone Pro dts
Date: Sun, 19 Jan 2025 23:56:58 +0100
Message-Id: <20250119-camera-v1-0-320be4f0dc2b@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIADqDjWcC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1MDQ0NL3eTE3NSiRF1jIwPjRLNEQ4NUgzQloOKCotS0zAqwQdGxtbUAatz
 Wf1gAAAA=
X-Change-ID: 20250119-camera-3203a6a10e0f
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Olivier Benjamin <olivier.benjamin@bootlin.com>, 
 Dragan Simic <dsimic@manjaro.org>, Ondrej Jirman <megi@xff.cz>
X-Mailer: b4 0.14.2
X-GND-Sasl: olivier.benjamin@bootlin.com

This series adds support for the Pine64 PinePhone Pro's rear and front
cameras in Device Tree.
This is based on some of Ondrej Jirman's patches hosted in his tree at
https://codeberg.org/megi/linux, but I have also fully reviewed and
re-written the code from the RK3399 datasheet, the PinePhone Pro
schematic, and the IMX258-0AQH5 software reference manual.

I have tested these changes on my PinePhone Pro and am able to take
photos from both cameras using libcamera's cam.

Signed-off-by: Olivier Benjamin <olivier.benjamin@bootlin.com>
---
Olivier Benjamin (2):
      arm64: dts: PinePhone Pro: describe I2c Bus 1 and IMX258 world camera
      arm64: dts: PinePhone Pro: describe the OV8858 user camera

 .../boot/dts/rockchip/rk3399-pinephone-pro.dts     | 138 +++++++++++++++++++++
 1 file changed, 138 insertions(+)
---
-- 
Olivier Benjamin <olivier.benjamin@bootlin.com>


