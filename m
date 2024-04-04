Return-Path: <devicetree+bounces-56251-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F40E789833B
	for <lists+devicetree@lfdr.de>; Thu,  4 Apr 2024 10:36:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6B9DDB28434
	for <lists+devicetree@lfdr.de>; Thu,  4 Apr 2024 08:36:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4AA58745D6;
	Thu,  4 Apr 2024 08:35:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C525073527
	for <devicetree@vger.kernel.org>; Thu,  4 Apr 2024 08:35:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712219715; cv=none; b=Vj7fwoXr25hiSKMT6LOEwIpa9KUMbZvAGIRAPxDyZPecyu664t0nMsMoBhKCgQFoA/v2RM699UUGTWXEKlDybD18h5TOuK/lPfW9Q9j/EYmdujA8VpIUB08RajJHiqBNRpN+0QqY6BSDGtFLBHMdZ8KOWuNP4vt/cBrrjv7jMUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712219715; c=relaxed/simple;
	bh=JSqKg5HIq/L6UvGd08iiU9y5eXMN9CyCBrqdtoLG+3c=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=hMpu2r/eubTS3AwbteEinSMhHnuqbNzyvYYPmQgfePBRPVeN8ZlJ4Ptit4iqwwWRAg61pDjIgsD0P8aOSIJapyrIgks/otETvC583wDYl3RgVyEr6zvAk6ucJaftqxBMbaPGkDgcRv6Gk9QAkN/HX63zzpmf9Cp4dtBE8w7XHQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rsIYZ-0004VH-L8; Thu, 04 Apr 2024 10:34:47 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rsIYY-00AKm0-Qq; Thu, 04 Apr 2024 10:34:46 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rsIYY-00Csm2-20;
	Thu, 04 Apr 2024 10:34:46 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH 0/2] Add Protonic MECSBC board support
Date: Thu, 04 Apr 2024 10:34:38 +0200
Message-Id: <20240404-protonic-mecsbc-v1-0-ad5b42ade6c6@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAB5mDmYC/x2MQQqAIBAAvyJ7TjApi74SHWxbaw+paEQg/T2JO
 c1hpkCmxJRhEgUS3Zw5+CptIwAP63eSvFUHrXSnKjKmcAXPKE/CvKI06GxvbDe6dYBaxUSOn/8
 4L+/7AeO+HYdhAAAA
To: Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 David Jander <david@protonic.nl>, Sascha Hauer <s.hauer@pengutronix.de>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1712219686; l=855;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=JSqKg5HIq/L6UvGd08iiU9y5eXMN9CyCBrqdtoLG+3c=;
 b=2yVqqNO33Kr/SSKjM4mMKU5LElrkcytvsIplyh5d764KvVNw3SWpvMxbMR+dzbHFwuqTIMzVq
 RlIPF67MHNDB3opiFO9QWCHS/Ez3mDYy7qdTLCQ43HuQWKKxCDeaXC3
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: s.hauer@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

This series adds support for the Protonic MECSBC. MECSBC is a single
board computer for blood analysis machines from RR-Mechatronics,
designed and manufactured by Protonic Holland, based on the Rockchip
RK3568 SoC.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
David Jander (1):
      arm64: dts: rockchip: add Protonic MECSBC device-tree

Sascha Hauer (1):
      dt-bindings: arm: rockchip: Add Protonic MECSBC board

 .../devicetree/bindings/arm/rockchip.yaml          |   5 +
 arch/arm64/boot/dts/rockchip/Makefile              |   1 +
 arch/arm64/boot/dts/rockchip/rk3568-mecsbc.dts     | 394 +++++++++++++++++++++
 3 files changed, 400 insertions(+)
---
base-commit: 39cd87c4eb2b893354f3b850f916353f2658ae6f
change-id: 20240404-protonic-mecsbc-6cfa56a48fb7

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>


