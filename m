Return-Path: <devicetree+bounces-133443-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 86A159FA91E
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 02:54:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 59E21188543F
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 01:54:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C6BB1799F;
	Mon, 23 Dec 2024 01:54:23 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB3A816419
	for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 01:54:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734918863; cv=none; b=ne7Dq7erLw4eVcchPSxv78meuoAQTJHr0dWWV7HA//MKzM6ParVjBX1Z3l6hja+BFP5vnnC1Cxeom4oOSJDttY5HSa/5Ji/fJbPFFE815O8UsisUH9opS8Buzpl4RB4q5X3+yTb9Bc41ca/0a123p/2XxHf2Gu0NRUHvnJs3NBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734918863; c=relaxed/simple;
	bh=9YghIYsl4LVI41JvDM/GWu5WNE96IF5EcMJUQnws3RI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=l/qOBLiBMKDo+FeHzOVTm9zjp6VNd8QVs38tkdAQNkiW5UMqFaf9IOoDtArJjvJC/utqzZ5swFxjk73oWiuKX0t5KBIty3rWU5ubCzbeQY5zuJ9whWZpv31/h8TwzFXVfimdiCANkwoQ7nGfutxeLfzsdl5TA1rcyjkIOtZ5Ocw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4BN1rORg024581;
	Mon, 23 Dec 2024 10:53:27 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, jonas@kwiboo.se, macromorgan@hotmail.com,
        andyshrk@163.com, dmt.yashin@gmail.com, liujianfeng1994@gmail.com,
        tim@feathertop.org, marcin.juszkiewicz@linaro.org,
        michael.riesch@wolfvision.net, alchark@gmail.com, jbx6244@gmail.com,
        kever.yang@rock-chips.com, jing@jing.rocks, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v2 1/2] dt-bindings: arm: rockchip: Add Radxa E52C
Date: Mon, 23 Dec 2024 01:53:17 +0000
Message-ID: <20241223015318.1999-2-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241223015318.1999-1-naoki@radxa.com>
References: <20241223015318.1999-1-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add devicetree binding for the Radxa E52C.

Radxa E52C is a compact network computer based on the Rockchip RK3582
SoC.

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
Changes in v2:
- Add "rockchip,rk3588s"
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 753199a12923..2152d170524a 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -812,6 +812,12 @@ properties:
           - const: radxa,e20c
           - const: rockchip,rk3528
 
+      - description: Radxa E52C
+        items:
+          - const: radxa,e52c
+          - const: rockchip,rk3582
+          - const: rockchip,rk3588s
+
       - description: Radxa Rock
         items:
           - const: radxa,rock
-- 
2.43.0


