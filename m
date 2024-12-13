Return-Path: <devicetree+bounces-130963-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A5F089F1935
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 23:37:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4A71A1639A7
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 22:37:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B9C8E1A4F21;
	Fri, 13 Dec 2024 22:37:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="Rb7f27+R"
X-Original-To: devicetree@vger.kernel.org
Received: from mx.denx.de (mx.denx.de [89.58.32.78])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D417719993D
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 22:37:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=89.58.32.78
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734129438; cv=none; b=Ak7LAEbJgpRoyLRFbYUf89cyhxDCSuyGhix2LOp/P2q9e/NnJaMDxLN0CQaBL163a7uyI9ztAiCsXbf3ZaeDAkut+xGmt64dMSotrzDfF6u6mtVtEjgy2H3tu1PnpxTIDq53mevfhrKEGGwWnqunTwAEIizfKCUeDNZmY3NRFto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734129438; c=relaxed/simple;
	bh=d8SodzPodAzPEDdytC9yX/b+8ORWR0ZtQaoREfQynoo=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=gxTUOn1/h3flJwQRPhzGy9rJIv/xI1nOxErW7ObxJhUQ6SLpR6hUsxenE0ZG8mgQHn4eBnrVwENIj1a7ZoLC91rgmnO4ylKzWKgAo6Qdbxsc8IeAlEqfRAXU8H7g0nSq5H9IrRX7czJgAYtxTOxoIkZ4ueCpSiTNK3FHcnKZdW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de; spf=pass smtp.mailfrom=denx.de; dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b=Rb7f27+R; arc=none smtp.client-ip=89.58.32.78
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=denx.de
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id E0AD110485891;
	Fri, 13 Dec 2024 23:37:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de; s=mx-20241105;
	t=1734129432;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=ZTTvubC9ezmn65kgU3YCWlLh+bLdIMOBAokRNNoYPpA=;
	b=Rb7f27+RBEpv00UPjXw0WVxPdixnIjWaCRPeutLicsMfP5pAMZY0XuYfpYsXnqsEXzkwAu
	5MS+0HtKRdWc2W01N/cNSFY4Mt0UlmZGYQMvoLM6/AAIMHdvjBDuHQmqzYUxWvJYF+I9iT
	UlsLj0sxp/ttfdKwueOuSyPE2FNWr/Tijjjmdy/QPGV0hZAKYl5E+lU1vBbx2b9mzgGYz2
	PWCh6MMsDlsu26tzVLs0Ta2hODRg0YJr4h2Vmn6wwf1ovgUn6FabfRyH3pZ7iT6/dNJjsQ
	e8cjSweahT7BefefgAdG+4IEcfmi5z7yW7pasrpbzeOpqQwm4bxgk6aQVQ+IiA==
From: Marek Vasut <marex@denx.de>
To: linux-arm-kernel@lists.infradead.org
Cc: Marek Vasut <marex@denx.de>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Christoph Niedermaier <cniedermaier@dh-electronics.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org,
	kernel@dh-electronics.com,
	linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH] ARM: dts: stm32: Swap USART3 and UART8 alias on STM32MP15xx DHCOM SoM
Date: Fri, 13 Dec 2024 23:36:25 +0100
Message-ID: <20241213223658.99802-1-marex@denx.de>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.3

Swap USART3 and UART8 aliases on STM32MP15xx DHCOM SoM,
make sure UART8 is listed first, USART3 second, because
the UART8 is labeled as UART2 on the SoM pinout, while
USART3 is labeled as UART3 on the SoM pinout.

Fixes: 34e0c7847dcf ("ARM: dts: stm32: Add DH Electronics DHCOM STM32MP1 SoM and PDK2 board")
Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>
Cc: Christoph Niedermaier <cniedermaier@dh-electronics.com>
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
Cc: Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org
Cc: kernel@dh-electronics.com
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-stm32@st-md-mailman.stormreply.com
---
 arch/arm/boot/dts/st/stm32mp15xx-dhcom-som.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/st/stm32mp15xx-dhcom-som.dtsi b/arch/arm/boot/dts/st/stm32mp15xx-dhcom-som.dtsi
index 086d3a60ccce2..142d4a8731f8d 100644
--- a/arch/arm/boot/dts/st/stm32mp15xx-dhcom-som.dtsi
+++ b/arch/arm/boot/dts/st/stm32mp15xx-dhcom-som.dtsi
@@ -15,8 +15,8 @@ aliases {
 		rtc0 = &hwrtc;
 		rtc1 = &rtc;
 		serial0 = &uart4;
-		serial1 = &usart3;
-		serial2 = &uart8;
+		serial1 = &uart8;
+		serial2 = &usart3;
 	};
 
 	chosen {
-- 
2.45.2


