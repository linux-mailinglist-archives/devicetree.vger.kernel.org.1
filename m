Return-Path: <devicetree+bounces-57041-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6349089B7D0
	for <lists+devicetree@lfdr.de>; Mon,  8 Apr 2024 08:45:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5EAB01C21732
	for <lists+devicetree@lfdr.de>; Mon,  8 Apr 2024 06:45:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 98AFB1D558;
	Mon,  8 Apr 2024 06:44:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E7A612B75
	for <devicetree@vger.kernel.org>; Mon,  8 Apr 2024 06:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712558696; cv=none; b=CToOrhv7PtYJ8/WE1hOGYiszDbGxvaTgh+Ll+Kb7EMBVCF62jf39GhxCzIVk+QwavP/bNn9THHT30tIr/6BBthseCKJVkDOFAt5QrqUXVHTayltOHcluEPOfcT8D0ui1j5jqKILyWu9TvC1DUt3ABldo4Y9Tg/AGHxSuv9gE51Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712558696; c=relaxed/simple;
	bh=xcu2JJeUBxhfJ2Cc+vMD1v0kZJu2HM1hHarpo5Jxx7k=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=iI1JxZ5VDVHSx1yW3n8w1OOyQ79hUjSWwHPQggD3pYG3hMX+Ysb5Oirqt0W6ZqBD+jkvV38ITH1xW4hUT2MSixWrlOYRQGPx604g5ZNZQeHlIdkWMmJWQZzHvjnb36h0mcCh19GIF0pX5cou0re50haosT5tnQgGVSZAWchzsdw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rtikC-0008Fs-QO; Mon, 08 Apr 2024 08:44:40 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rtik9-00B3lF-N6; Mon, 08 Apr 2024 08:44:37 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rtik9-00EdB4-22;
	Mon, 08 Apr 2024 08:44:37 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 08 Apr 2024 08:44:10 +0200
Subject: [PATCH] dt-bindings: net: rockchip-dwmac: use rgmii-id in example
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240408-rockchip-dwmac-rgmii-id-binding-v1-1-3886d1a8bd54@pengutronix.de>
X-B4-Tracking: v=1; b=H4sIADqSE2YC/x2NwQqDMBAFf0X27EKUGGx/pXiIyRofxSgbaAXx3
 xt6HBhmLiqikELP5iKVDwr2XKFrGwqrz0kYsTL1prfGmpF1D++w4uD43XxgTRtQHZ6RI3Ji1zn
 nFzc8RjtQrRwqC87/4TXd9w816dqvcQAAAA==
To: "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, 
 Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 David Wu <david.wu@rock-chips.com>
Cc: netdev@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Andrew Lunn <andrew@lunn.ch>, 
 Sascha Hauer <s.hauer@pengutronix.de>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1712558677; l=1265;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=xcu2JJeUBxhfJ2Cc+vMD1v0kZJu2HM1hHarpo5Jxx7k=;
 b=jRDgsC+uUqYxVFiGlrM8R8L11V8C7WJF68mlTmsMeRmDf4vl4YqM+bKeqYcS7YiwmvyTokY51
 XTH7+rpgZeWBf4+LCXJQYOuBNQY6QZwVoTCo1wPn09IRhSwQMT03UZL
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: s.hauer@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

The dwmac supports specifying the RGMII clock delays, but it is
recommended to use rgmii-id and to specify the delays in the phy node
instead [1].

Change the example accordingly to no longer promote this undesired
setting.

[1] https://lore.kernel.org/all/1a0de7b4-f0f7-4080-ae48-f5ffa9e76be3@lunn.ch/

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Documentation/devicetree/bindings/net/rockchip-dwmac.yaml | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml b/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
index 70bbc4220e2ac..6bbe96e352509 100644
--- a/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
+++ b/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
@@ -137,8 +137,6 @@ examples:
         assigned-clock-parents = <&ext_gmac>;
 
         rockchip,grf = <&grf>;
-        phy-mode = "rgmii";
+        phy-mode = "rgmii-id";
         clock_in_out = "input";
-        tx_delay = <0x30>;
-        rx_delay = <0x10>;
     };

---
base-commit: 39cd87c4eb2b893354f3b850f916353f2658ae6f
change-id: 20240408-rockchip-dwmac-rgmii-id-binding-6166af659845

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>


