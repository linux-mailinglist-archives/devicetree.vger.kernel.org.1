Return-Path: <devicetree+bounces-36233-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F709840414
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 12:47:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D241B1C21FD3
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 11:47:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2FECF5C608;
	Mon, 29 Jan 2024 11:47:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BC515FEE5
	for <devicetree@vger.kernel.org>; Mon, 29 Jan 2024 11:46:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706528821; cv=none; b=fAQ9PCBprJHaiR52vW3v3tAlM4OkWteeV7Ovn0zAOuNeVPAXpMT4kqyjhcjmezl4gL3XaRAlzWbyzjgCEJg/jGsGnc76wxr4Z6MTk346rUwi9Szh3rlYIEtTVXOQuSXRBJVZ6O4FVUAtRfBSZe5vZ3TUCY5ZBKRGtDtb4vrOEMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706528821; c=relaxed/simple;
	bh=nsZ+fmh82O2ks56JrvTP2KqeLFDdhVzgvMzmiqGIGuQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=rdUkif0miQBvCOcjox+J2ABpGkracm7fZbh6K9Is7U2fAIl2xtpW70mLz1KNCth0HNILKBHZD/qIgWpBmHqwj0Bo/KTRcLmwdAFkeEs5aC5ZGFuAMzgHAiuGaoGtwLBzexOMaz4BNpo40wrAD7Bzc3X8Hc9tmxILFZ4lFBrVuU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1rUQ6H-0007AJ-UJ; Mon, 29 Jan 2024 12:46:53 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1rUQ6G-0039yH-9z; Mon, 29 Jan 2024 12:46:52 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ukl@pengutronix.de>)
	id 1rUQ6G-00AsMQ-0i;
	Mon, 29 Jan 2024 12:46:52 +0100
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>
Cc: =?UTF-8?q?Leonard=20G=C3=B6hrs?= <l.goehrs@pengutronix.de>,
	devicetree@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-kernel@lists.infradead.org,
	kernel@pengutronix.de
Subject: [PATCH] ARM: dts: stm32: lxa-tac: reduce RGMII interface drive strength
Date: Mon, 29 Jan 2024 12:46:49 +0100
Message-ID: <20240129114649.2458468-2-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=978; i=u.kleine-koenig@pengutronix.de; h=from:subject; bh=w+TUJeocBu4MMweRw8tgYLEmSQuNkXHs+pH1aqUe1wQ=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBlt5ApRWpQOr/HHLFho90eiPiFHmcdiFtup9Fto Zjfr+PQQX2JATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZbeQKQAKCRCPgPtYfRL+ TtrUCACPEt3J6ytRV2Ghf98LrqiuTr7dzOZ8ewYTkSVm4W71RPtEJ9aUtBuaYc+l5QkvyJdSSin 2h05pGiRPFROrYBEZulTdOH1ptW2wmWX6myUubT9dhCFm7ESv0FDAJv4W1ZR7cSWalS4j00umPL LSSM+noHFkfj7TmOW5HY1Uxr66IwZZrrYrgTQoWgGWrwT1hanEL44aamLxJWPAFz+MgK8Aypdhe C58PQS8TCkO1CC0e3jhpP0w2RAcjFNsaDwRpNIZOPITXgIn/G5vEBkjt8okOM+ZTjudf/A3wPxo B/f7TrxUzr0AMWGS/sP2HsB9H+i3g/6G7IvhonZEdWmSKAy1
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

From: Leonard Göhrs <l.goehrs@pengutronix.de>

This results in an improvement of EMI performance by reducing the
125MHz emission and its harmonics caused by the RGMII clock line.

Signed-off-by: Leonard Göhrs <l.goehrs@pengutronix.de>
Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
---
 arch/arm/boot/dts/st/stm32mp15xc-lxa-tac.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/boot/dts/st/stm32mp15xc-lxa-tac.dtsi b/arch/arm/boot/dts/st/stm32mp15xc-lxa-tac.dtsi
index 7e835a7cf64a..cfaf8adde319 100644
--- a/arch/arm/boot/dts/st/stm32mp15xc-lxa-tac.dtsi
+++ b/arch/arm/boot/dts/st/stm32mp15xc-lxa-tac.dtsi
@@ -471,6 +471,10 @@ switch: switch@0 {
 		interrupt-parent = <&gpioa>;
 		interrupts = <6 IRQ_TYPE_EDGE_RISING>;
 
+		/* Reduce RGMII EMI emissions by reducing drive strength */
+		microchip,hi-drive-strength-microamp = <2000>;
+		microchip,lo-drive-strength-microamp = <8000>;
+
 		ports {
 			#address-cells = <1>;
 			#size-cells = <0>;
-- 
2.43.0


