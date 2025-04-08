Return-Path: <devicetree+bounces-164553-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 21717A816E0
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 22:30:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 55F9517ECB2
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 20:30:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C31E253F34;
	Tue,  8 Apr 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=dolcini.it header.i=@dolcini.it header.b="t7SyU3X2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail11.truemail.it (mail11.truemail.it [217.194.8.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3254252904;
	Tue,  8 Apr 2025 20:29:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.194.8.81
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744144192; cv=none; b=gaYhC6qWGA48jKGmqOrbcP48f1sZ80vpKwm8craiG6VCxSPgWNc5mP5cdku5C08Xi2B+KMB26jrXNXa4quzU7CNBYqKhrBCEXdGA3pYwoTFXgjpJQbtqO9jfcZ2NfiGDzB50XqfjEslnOAmy79+t7qQfbSv+Neh1FduQAmCBrFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744144192; c=relaxed/simple;
	bh=54VEIX8YXb44soM0bHT+D9LXY4nN7F9PzvlAZuUTazo=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=Eh83zxsmnjfIvEtkiuTFj5IRme1byvdSXyumCyAsinr9w+MWVktRL5mNeX5m0b0oTqPsv/IoOwuiwFJ5RgyzCP1lkj3H838ZhxyGJpMITs3DXO/MskHhlHnDpUqVZKK56mtIZPxn9n40bhJDklDGIOlM/W0mBcSdtp70DccbiMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dolcini.it; spf=pass smtp.mailfrom=dolcini.it; dkim=pass (2048-bit key) header.d=dolcini.it header.i=@dolcini.it header.b=t7SyU3X2; arc=none smtp.client-ip=217.194.8.81
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dolcini.it
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=dolcini.it
Received: from francesco-nb.pivistrello.it (93-49-2-63.ip317.fastwebnet.it [93.49.2.63])
	by mail11.truemail.it (Postfix) with ESMTPA id 2122A1F9EA;
	Tue,  8 Apr 2025 22:29:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dolcini.it;
	s=default; t=1744144188;
	bh=WSce9rbjfCgPkO0DucOcYT6D40ag2I1PC2CdQxIDyyc=; h=From:To:Subject;
	b=t7SyU3X2J7mg9BFXd6hZWr6fMCTnxKNQMjaesJPA/Xn3owhuPT+nUy8nOS+Jufc+y
	 8MXi9S1B42cF89u9noqb9i3v887rIksxX3L+EfhFxaHEqjxBtpAPFiYpMgd8AvHkIM
	 bPcmCIW/nGlZU7vIkiTs3x6UZcxDGo0xKxk+r2JwZHvVmRk8Bwd7Eudg4I81Z1HcYI
	 PqLBVOlBMSO7d9TgowgGNUpFNPSCosdNTtuwEBJjuQTcYNASRCftPCe01MsLgzZdW1
	 9VUDNWDdDaN3dP1XECXaxGEwkQyi0oHdnUF3sPo1QuYZPeUjRGO4gqLzcaCUxcAyM1
	 uKbKAaslLeW9Q==
From: Francesco Dolcini <francesco@dolcini.it>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Cc: Francesco Dolcini <francesco.dolcini@toradex.com>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 0/2] arm64: dts: freescale: imx8m[mp]-verdin: Add EEPROM compatible fallback
Date: Tue,  8 Apr 2025 22:29:37 +0200
Message-Id: <20250408202939.6887-1-francesco@dolcini.it>
X-Mailer: git-send-email 2.39.5
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Francesco Dolcini <francesco.dolcini@toradex.com>

According to the AT24 EEPROM bindings the compatible string should
contain first the actual manufacturer, and second the corresponding
atmel model.

Add the atmel compatible fallback accordingly.

Francesco Dolcini (2):
  arm64: dts: freescale: imx8mp-verdin: Add EEPROM compatible fallback
  arm64: dts: freescale: imx8mm-verdin: Add EEPROM compatible fallback

 arch/arm64/boot/dts/freescale/imx8mm-verdin.dtsi | 6 +++---
 arch/arm64/boot/dts/freescale/imx8mp-verdin.dtsi | 6 +++---
 2 files changed, 6 insertions(+), 6 deletions(-)

-- 
2.39.5


