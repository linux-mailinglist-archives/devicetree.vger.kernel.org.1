Return-Path: <devicetree+bounces-164743-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 56DE5A82365
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 13:21:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 748D317E48E
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 11:21:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C1402566C5;
	Wed,  9 Apr 2025 11:21:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60B5F2561D6
	for <devicetree@vger.kernel.org>; Wed,  9 Apr 2025 11:21:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744197669; cv=none; b=uOSi1hC+X5tvQ2elBveqqAHT6r206G+mLqurZ3uuUBGjPVve6xZH08iL6E5ScGHOrvViXs2q9hzIjyhQnkSVHgfDzvMbrf07AJ5qdxF+JgS/1A9hvCxZMZ/n608I3UDx8UOJMoAQwdLi16kWz0bVzGuDZj4rjJY7vWu4RmQgNes=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744197669; c=relaxed/simple;
	bh=N2EUklR/z9JFHYu0b2d1/TXgABpe7LjJhfgZXh/GMyc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=nqo04YwC98zrRWj8BpOMZ6DOXEfnCc5rip/o5BS1pJMq/SH/DxMC7XPX2mPzy1oOcIiWw4MXfvr4RjQoxQfeTXi8uKLJo3zb1msTOeXMLYTCDBWizRQ+dGW4ff1RL+HMX3FmBjWGFsXR0RYSnMXqdnH2NZh3l/pR7VXwghfDiTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u2TUH-0007PA-9L; Wed, 09 Apr 2025 13:20:57 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u2TUH-0045qa-03;
	Wed, 09 Apr 2025 13:20:57 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u2TUG-00GOXj-2t;
	Wed, 09 Apr 2025 13:20:56 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 09 Apr 2025 13:20:57 +0200
Subject: [PATCH v2 1/3] clk: make determine_rate optional for non
 reparenting clocks
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250409-clk-cdce6214-v2-1-40b25b722ecb@pengutronix.de>
References: <20250409-clk-cdce6214-v2-0-40b25b722ecb@pengutronix.de>
In-Reply-To: <20250409-clk-cdce6214-v2-0-40b25b722ecb@pengutronix.de>
To: Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, kernel@pengutronix.de, 
 =?utf-8?q?Alvin_=C5=A0ipraga?= <alsi@bang-olufsen.dk>, 
 Sascha Hauer <s.hauer@pengutronix.de>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1744197656; l=1101;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=N2EUklR/z9JFHYu0b2d1/TXgABpe7LjJhfgZXh/GMyc=;
 b=hIBP+UScoMBWRCYLEk9HHnzdRJ9YbISosu3Wrjch0RkiSrY9ouWGybhCXVBPE9wUgKxj14gSc
 1o7hjNQV8NQCVPSfk+L2ypoSpKszI/h7ShOkIRy6rGfUS+tQD0hZXAe
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: s.hauer@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

With 326cc42f9fdc ("clk: Forbid to register a mux without determine_rate")
it became mandatory to provide a determine_rate hook once a set_parent
hook is provided. The determine_rate hook is only needed though when the
clock reparents to set its rate. Clocks which do not reparent during
set_rate do not need a determine_rate hook, so make the hook optional
for clocks with the CLK_SET_RATE_NO_REPARENT flag.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/clk.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
index 0565c87656cf5..07ae3652df6c1 100644
--- a/drivers/clk/clk.c
+++ b/drivers/clk/clk.c
@@ -3937,7 +3937,8 @@ static int __clk_core_init(struct clk_core *core)
 		goto out;
 	}
 
-	if (core->ops->set_parent && !core->ops->determine_rate) {
+	if (!(core->flags & CLK_SET_RATE_NO_REPARENT) &&
+	    core->ops->set_parent && !core->ops->determine_rate) {
 		pr_err("%s: %s must implement .set_parent & .determine_rate\n",
 			__func__, core->name);
 		ret = -EINVAL;

-- 
2.39.5


