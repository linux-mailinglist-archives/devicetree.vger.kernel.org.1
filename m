Return-Path: <devicetree+bounces-164340-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CC2A1A8048C
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 14:09:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6696546257F
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 12:03:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 65AD826A0C1;
	Tue,  8 Apr 2025 12:01:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F38926A08E
	for <devicetree@vger.kernel.org>; Tue,  8 Apr 2025 12:00:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744113661; cv=none; b=ZLLWCwX83iHQU5zuj6LT+J+CIckMRjmVTZafyJPp1XPvHkPUAWHxKBbQFySoQKg+NzoLoVY6DDIflp/ptSnK2A1Xqehl99TsrVSaYaWtE1ukkL7+u93MYxG5NqroNk/f9fot0GWBwZ4xdUOXPVmqKjqR14Ny26nDnNwoFX1tpvA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744113661; c=relaxed/simple;
	bh=WCYcLaPyaKFiwHds0BySkvFmWYNWbayrnTdk6SHycB0=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=EY+cYmkUVuQgiB+t/8qTKb9JD2+qP9F4EKxoo936MTvDZWqNZ2/axY/STV1D2fXVL5TAnXYgkY5HeDmweR1FRguBTPRC+HfUrG29QotQcZhHImfSYKY/DCf2BjoamMxizL6+P4fP4c6HdPEC7dXrHxx3oDXDiHuayS9xbT28ViI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u27d0-0000jo-Eg; Tue, 08 Apr 2025 14:00:30 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u27d0-003vPz-09;
	Tue, 08 Apr 2025 14:00:30 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u27cz-00GJS1-33;
	Tue, 08 Apr 2025 14:00:29 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH 0/3] clk: add support for TI CDCE6214
Date: Tue, 08 Apr 2025 14:00:21 +0200
Message-Id: <20250408-clk-cdce6214-v1-0-bd4e7092a91f@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIANUP9WcC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1MDEwML3eScbN3klORUMyNDE12DZHMTAxPjlGQjM3MloJaCotS0zAqwcdG
 xtbUAAE0jal4AAAA=
To: Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, kernel@pengutronix.de, 
 =?utf-8?q?Alvin_=C5=A0ipraga?= <alsi@bang-olufsen.dk>, 
 Sascha Hauer <s.hauer@pengutronix.de>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1744113629; l=1148;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=WCYcLaPyaKFiwHds0BySkvFmWYNWbayrnTdk6SHycB0=;
 b=Zje8+eOrxhjpIVlEv8nwHadcM1kKFZpWgwF1ZgMzi44aVx7s92t0kJTdrNW4Ggoz87xV8Gs4H
 7HMHsL1bGXPBgEf02f3UHwouEccVPEZOfh8a1yax5zBfVFQMsvJxr4C
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: s.hauer@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

The CDCE6214 is a Ultra-Low Power Clock Generator With One PLL, Four
Differential Outputs, Two Inputs, and Internal EEPROM.

This series adds a common clk framework driver for this chip along with
the dt-bindings document and a small fix needed for the common clk
framework.

Sascha

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Sascha Hauer (3):
      clk: make determine_rate optional for non reparenting clocks
      clk: add TI CDCE6214 clock driver
      dt-bindings: clock: add TI CDCE6214 binding

 .../devicetree/bindings/clock/ti,cdce6214.yaml     |  157 +++
 drivers/clk/Kconfig                                |    7 +
 drivers/clk/Makefile                               |    1 +
 drivers/clk/clk-cdce6214.c                         | 1105 ++++++++++++++++++++
 drivers/clk/clk.c                                  |    3 +-
 include/dt-bindings/clock/ti,cdce6214.h            |   24 +
 6 files changed, 1296 insertions(+), 1 deletion(-)
---
base-commit: 0af2f6be1b4281385b618cb86ad946eded089ac8
change-id: 20250408-clk-cdce6214-0c74043dc267

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>


