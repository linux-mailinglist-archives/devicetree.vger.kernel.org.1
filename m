Return-Path: <devicetree+bounces-105548-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 136C6987129
	for <lists+devicetree@lfdr.de>; Thu, 26 Sep 2024 12:20:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4273F1C24893
	for <lists+devicetree@lfdr.de>; Thu, 26 Sep 2024 10:20:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 34C351AC437;
	Thu, 26 Sep 2024 10:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="QCzwRobH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 464A11AC883
	for <devicetree@vger.kernel.org>; Thu, 26 Sep 2024 10:20:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727346023; cv=none; b=SrJRY3mmbg5yvZBv/wP7ARBPhY193vMMIFGjnKoMif7dW63eSIrY+jMsQm8B29D4zABUgkwk1Y1GLhJ4CsISw381iGMZ3gUsT/sOQJXYRBtapVX+eCfbbJ5Vycfk7uM90baXxzLdvtzsdVWh6vDDOFrr9gDbsFjxQLdUjl7WKFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727346023; c=relaxed/simple;
	bh=orRNbU3tZidDdR0hgmg1qm2l7ek95p49PWhgax+fBPY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=fNY7Wxpu/RqgsRrhrq0AVDdDPA0OB0LSYimj0nrHhtG78bLrRqK8aonJB83fpRDZ5SmxGprTdeq3G1VCceka93S/lO3UUjvMdAlVTuefwcbgotR0ZR6HG7Z7SPhdDAltwky81xxtV2NzgyEX6B7twA6oJnj5j4pr7asulzCEpeo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=QCzwRobH; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:in-reply-to:references:mime-version:content-transfer-encoding;
	 s=k1; bh=hlQ8IlIEHSPyfsnSp3ZgppOpQO+bFoPji/T2HQBokNk=; b=QCzwRo
	bHozgmqjJFFBABN4sQzXpHKnp0Y/Um5LE7PY7iZKuCi6Xeg1ntOR+Y++hyw1XpzJ
	rszn/iyRUJL8qpN4XHJT6ZktN3Ut26BYYU/4rZKxwd6oikqhJ7l1HuMNp2QncJIl
	bw/81eEbfiI9gNDfmHWq5/3MFfAWd1oujtcMXZui3QLDJOvSgMehGe9FxtGJmt4p
	bJf2nb8xkwMWRLrAItJRkw1tYweJN2vjZWJdDAsUS6bJI3KyzTur9MAsbjef/cVo
	muc65dd6WV57E1ni0/4XKd1qGjuMD7CUaU5LuyshUcyGv+TG1A2BWIwlAVIwZesI
	sTj5gboOBk0f31Kg==
Received: (qmail 946889 invoked from network); 26 Sep 2024 12:20:19 +0200
Received: by mail.zeus03.de with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 26 Sep 2024 12:20:19 +0200
X-UD-Smtp-Session: l3s3148p1@+fbcFQMjrtQgAwDPXzRXADDuo30Z+IZ9
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-renesas-soc@vger.kernel.org
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH 2/3] ARM: dts: renesas: r7s72100: 'bus-width' is a board property
Date: Thu, 26 Sep 2024 12:20:07 +0200
Message-ID: <20240926102005.15475-7-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240926102005.15475-5-wsa+renesas@sang-engineering.com>
References: <20240926102005.15475-5-wsa+renesas@sang-engineering.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Do not set 'bus-width' in the SoC-include DTSI. It must be set in the
board DTS file. No regressions because MMCIF was not enabled yet for
this SoC.

Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
---
 arch/arm/boot/dts/renesas/r7s72100.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/boot/dts/renesas/r7s72100.dtsi b/arch/arm/boot/dts/renesas/r7s72100.dtsi
index a460a9092c43..27a4121517a7 100644
--- a/arch/arm/boot/dts/renesas/r7s72100.dtsi
+++ b/arch/arm/boot/dts/renesas/r7s72100.dtsi
@@ -333,7 +333,6 @@ mmcif: mmc@e804c800 {
 				     <GIC_SPI 267 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&mstp8_clks R7S72100_CLK_MMCIF>;
 			power-domains = <&cpg_clocks>;
-			bus-width = <8>;
 			status = "disabled";
 		};
 
-- 
2.45.2


