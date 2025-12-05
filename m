Return-Path: <devicetree+bounces-244648-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 61FBDCA7857
	for <lists+devicetree@lfdr.de>; Fri, 05 Dec 2025 13:09:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0F5EF3091CE8
	for <lists+devicetree@lfdr.de>; Fri,  5 Dec 2025 12:08:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8FB1328627;
	Fri,  5 Dec 2025 12:08:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 487E92E88BD
	for <devicetree@vger.kernel.org>; Fri,  5 Dec 2025 12:08:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764936523; cv=none; b=MOUAF4d3l2k3aG+3BDuVHQa6kHP2RwJIWEj5wmPgVImxv1LlSj3VZgQbJ6PSfCstpHA9br4YVowwvE1+g+iDPsSzmD+1CPmN43JI/bRc7HFiH8zxfRPa/RMv1vBhwD2G5QZ4+p9JTEfooBmt7EYWkFXj52MfsP10OkdCAzy/zr0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764936523; c=relaxed/simple;
	bh=AkphStGF/OxnGzx0ohEPPZ4GOu7jItVaBDOf+c6gk1c=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Ov8DGqCxeXP8n9X5HQlSuSGNCTaCj+EiFYeSSrmQmv9MSLerkh/Wr4LDnZuzRhGf5fWV7lbLXQn7+EA8mCOd+SMwL3L8h2/SEqC9FLawKbOq2hmp6RZmirNPz6UAyUBBO8q9DCqh45QzT4Ky4LT4MqTuVzRcKaW3p2dmbfZHdQI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 5B5C7DSI023400;
	Fri, 5 Dec 2025 21:07:17 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        quentin.schulz@cherry.de, jonas@kwiboo.se, kever.yang@rock-chips.com,
        inindev@gmail.com, michael.opdenacker@rootcommit.com,
        honyuenkwun@gmail.com, dsimic@manjaro.org, andrew@lunn.ch,
        pbrobinson@gmail.com, joseph.kogut@gmail.com, dmitriy@filchenko.org,
        shawn.lin@rock-chips.com, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v6 1/3] dt-bindings: arm: rockchip: Add Radxa CM5 IO board
Date: Fri,  5 Dec 2025 12:07:01 +0000
Message-ID: <20251205120703.14721-2-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251205120703.14721-1-naoki@radxa.com>
References: <20251205120703.14721-1-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Joseph Kogut <joseph.kogut@gmail.com>

Add device tree binding for the Radxa CM5 IO board.

This board is based on the rk3588s.

Signed-off-by: Joseph Kogut <joseph.kogut@gmail.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index d496421dbd87..79e99694577e 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -907,6 +907,13 @@ properties:
           - const: radxa,cm3
           - const: rockchip,rk3566
 
+      - description: Radxa Compute Module 5 (CM5)
+        items:
+          - enum:
+              - radxa,cm5-io
+          - const: radxa,cm5
+          - const: rockchip,rk3588s
+
       - description: Radxa CM3 Industrial
         items:
           - enum:
-- 
2.43.0


