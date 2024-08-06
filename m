Return-Path: <devicetree+bounces-91310-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B39F948E54
	for <lists+devicetree@lfdr.de>; Tue,  6 Aug 2024 14:05:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4BB601C20E3A
	for <lists+devicetree@lfdr.de>; Tue,  6 Aug 2024 12:05:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 22CB11C4606;
	Tue,  6 Aug 2024 12:05:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F9621C3F18
	for <devicetree@vger.kernel.org>; Tue,  6 Aug 2024 12:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722945935; cv=none; b=i11lZEdutbhM3yvN5UwzF0ArErfP1rL8+RY9hlNgsw7/FnWb8CXFNAtZzktOWox1O414H50wJwUzp/b27BdBeJUNSyZewxlzDrG2B17MK8Fwj1R/Gxw/6WcXXTCMAmKaMHc9yPwhFArK4sjnwAj8djctLo9HATl73CvNO1cb5t0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722945935; c=relaxed/simple;
	bh=hVpDtj+lPPdKKOrlvXKADc0PEn5BwfZtJkF2447W06s=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=eJrXi3zAZNYJ6Qu3tTBb6Oar3uhYvaDHT6qycy0d7hRzinyn6pvstGlWWbLhUjcGZTFXqWjG5dtSjRbO/rlVY/g6+3i+y8KbLGmEwSuK2wfSzY4K5OQdFp68sZZT7rfAUKicSpA39NUdHS4cIMgkiiphjE3EJi61ab19e02rem0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1sbIwK-0000ep-97; Tue, 06 Aug 2024 14:05:20 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1sbIwJ-004x2i-B1; Tue, 06 Aug 2024 14:05:19 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1sbIwJ-001hoH-0r;
	Tue, 06 Aug 2024 14:05:19 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Oleksij Rempel <o.rempel@pengutronix.de>,
	kernel@pengutronix.de,
	linux-kernel@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	netdev@vger.kernel.org
Subject: [PATCH v1] arm: dts: st: stm32mp151a-prtt1l: Fix QSPI configuration
Date: Tue,  6 Aug 2024 14:05:17 +0200
Message-Id: <20240806120517.406714-1-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.39.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ore@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

Rename 'pins1' to 'pins' in the qspi_bk1_pins_a node to correct the
subnode name. The previous name caused the configuration to be
applied to the wrong subnode, resulting in QSPI not working properly.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/boot/dts/st/stm32mp151a-prtt1l.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/st/stm32mp151a-prtt1l.dtsi b/arch/arm/boot/dts/st/stm32mp151a-prtt1l.dtsi
index 3938d357e198f..4db684478c320 100644
--- a/arch/arm/boot/dts/st/stm32mp151a-prtt1l.dtsi
+++ b/arch/arm/boot/dts/st/stm32mp151a-prtt1l.dtsi
@@ -123,7 +123,7 @@ flash@0 {
 };
 
 &qspi_bk1_pins_a {
-	pins1 {
+	pins {
 		bias-pull-up;
 		drive-push-pull;
 		slew-rate = <1>;
-- 
2.39.2


