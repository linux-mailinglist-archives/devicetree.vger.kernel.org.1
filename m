Return-Path: <devicetree+bounces-251254-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id BD4E9CF08CD
	for <lists+devicetree@lfdr.de>; Sun, 04 Jan 2026 03:38:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C2D8A3008D79
	for <lists+devicetree@lfdr.de>; Sun,  4 Jan 2026 02:38:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B45629992A;
	Sun,  4 Jan 2026 02:38:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=airkyi.com header.i=@airkyi.com header.b="XiSlwM3F"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbg154.qq.com (smtpbg154.qq.com [15.184.224.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 953643A1E70;
	Sun,  4 Jan 2026 02:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=15.184.224.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767494319; cv=none; b=PgnzGIbo0WmzE2CWrJiCNP/fORH/XD5fH7QcLteTB3cGc+hkERATb1Qykfi31dQY9cQBjPuMbpITs33xf26tvlfedyk7iK4PE9mxLSuigfj1A81bo7sX4XCTsHoyEay6btLRDmGVlF/uRJntuITnguYotLbLZPqQT22Sqp8vrxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767494319; c=relaxed/simple;
	bh=b7t+IIOkJ5yxvNVA6BoMf9T3flVws06w9FcJ/qzy3KE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=E9hpXEeT/geLBQghpKrI+AZgIplGOYiJwhO9j/tGMdpH2uagw65XSP3KECxko0p0qCby68LjmosIERcTcNzGtGOKJ3RoHaqV+C7XgJBpO0fxR83Zi0uu/PRrNNGNFZCjLVSJoMKKiYiUQALDNlwAKaP6XTdixGXpn0KiBoo6WNA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=airkyi.com; spf=pass smtp.mailfrom=airkyi.com; dkim=pass (1024-bit key) header.d=airkyi.com header.i=@airkyi.com header.b=XiSlwM3F; arc=none smtp.client-ip=15.184.224.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=airkyi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=airkyi.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=airkyi.com;
	s=altu2504; t=1767494242;
	bh=TNDZLWKhrHJbwF/L2WBt8vwEwWwKgWB+TaD3IW0Xxj0=;
	h=From:To:Subject:Date:Message-Id;
	b=XiSlwM3FVSC1U/iPZcM5xUrKlu8CJqni3KS05ziFp0jc7a2AGqZuKsoyM6aIg68O6
	 U5qMN2+l8mBewGAcBqSsmc7F/4kuBGxztggkMbqmJDSERgMR7VHaoh1mqs4uhHueBb
	 3Fsnrc6C6uZIRylRD9kwVgGmGF3r9kuDlImNlPos=
X-QQ-mid: zesmtpsz2t1767494235td39373c4
X-QQ-Originating-IP: BaSWeEwo/TkAf5is9miro6TBD6fknxA8mfPjOfcMmzQ=
Received: from DESKTOP-8BT1A2O.localdomain ( [58.22.7.114])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Sun, 04 Jan 2026 10:37:12 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 16547497180258447957
EX-QQ-RecipientCnt: 22
From: Chaoyi Chen <kernel@airkyi.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Quentin Schulz <quentin.schulz@cherry.de>,
	Chaoyi Chen <chaoyi.chen@rock-chips.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	John Clark <inindev@gmail.com>,
	FUKAUMI Naoki <naoki@radxa.com>,
	Jimmy Hon <honyuenkwun@gmail.com>,
	Dragan Simic <dsimic@manjaro.org>,
	Michael Riesch <michael.riesch@collabora.com>,
	Peter Robinson <pbrobinson@gmail.com>,
	Alexey Charkov <alchark@gmail.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Andy Yan <andy.yan@rock-chips.com>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: arm: rockchip: Add rk3576 evb2 board
Date: Sun,  4 Jan 2026 10:37:02 +0800
Message-Id: <20260104023703.118-2-kernel@airkyi.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20260104023703.118-1-kernel@airkyi.com>
References: <20260104023703.118-1-kernel@airkyi.com>
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpsz:airkyi.com:qybglogicsvrgz:qybglogicsvrgz6b-0
X-QQ-XMAILINFO: NCtt2ALvHOv3QZeVyegWhrUERdDvfxlnohqEaZcCChyYC5NyBdTWLBuq
	9Jqua0mlYafonPL4kdpKk3Me+k1XU9keCZDMnJfQnBtP+4dVz/dYRkyYLFR5slw4raJkA/q
	+AmCpn2QqEVuD9eegBTlki0+huDSXDE5Wxvzgs1Jvhb5Qr3KktUp9+lLKGTgwuTeVvUKy0S
	8YP3wwWcPgO2A9PUjt1P9DDQNDrCwYozRBAf+gLknPzLhr6KPXHTXszDSl1+ZHJfWqA/8Tu
	8Fh2/0gtlYSmy8sZZIjtIz9Nx2Vapo3pdLKWzA34cT164qtjQ60+Or/jHB0tZGNOjvwAjp1
	nBRPhpqU6pTpkWn75VO5SWaf2UZJLSAfIuePpVqBs+MOAg6XFsDXGg6ZtnyyeljDHt7z+oo
	Tlf/XWUIp223MJ52ub2sJ+eFMiiKyxqNfybpZ5BF+7RPxORDuaB7W6LFTx2XQYV1W1J9YRu
	PpEggBH7tYqIRmxOylTSoDvkY77jyM1GS2ofHLBogIzZ82Q4PLB8ReRC+jBNcpxwCdPA0gX
	bpGCkI5EPzOGSzbY5+K2IuUs4ppQ4tDHGyO6DlzTSiaZRue+/FY9FfZtmST5WV8x70LG7Oo
	1pTU6u8vca3/fj3omyO3++vW7YJynlhg/TJps19kmbSoH5NyuB9apuOZ/T8fh43D4pw5MTe
	u3dv9AEW3lvrWHaJSm+lSEYaOXfqbcsZlXFVQXnc7gdUP7ffiJ2kKgCoZrcuXgCfhI+/d43
	5R25IhotDdsPVtLxxvDietsLbURpBUa0P/qV85QVaXUNDqKSSdi5FPnILTRPoHKo0gzSfHS
	sTRBWYGzUxMb8du4fRv9ByHr9yDAp1X08o67xuA5yJ34MZrMOlqkVMNlUjpJ6tHlD3PoSla
	hjVA6Aj/15sqCk3ff1mOWaHfqklm3yCISTUSZCGqJS5AWH+5xQbwDcuUxPez59UZ/RE8bxZ
	3Wz5UrmoIPw6NCMrBfPFIfmChmlEJ/3tvS82kpeABOlFwdy/GLQbw7TeMRYGCeBSE2fU=
X-QQ-XMRINFO: Nq+8W0+stu50tPAe92KXseR0ZZmBTk3gLg==
X-QQ-RECHKSPAM: 0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

From: Chaoyi Chen <chaoyi.chen@rock-chips.com>

Add devicetree binding for the rk3576 evb2 board.

Signed-off-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 6aceaa8acbb2..59ed57082003 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -1136,7 +1136,9 @@ properties:
 
       - description: Rockchip RK3576 Evaluation board
         items:
-          - const: rockchip,rk3576-evb1-v10
+          - enum:
+              - rockchip,rk3576-evb1-v10
+              - rockchip,rk3576-evb2-v10
           - const: rockchip,rk3576
 
       - description: Rockchip RK3588 Evaluation board
-- 
2.51.1


