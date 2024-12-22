Return-Path: <devicetree+bounces-133296-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 84D7B9FA39B
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 04:05:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EFC40166A0E
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 03:05:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4DDDA2A1AA;
	Sun, 22 Dec 2024 03:05:36 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F7CA4C76
	for <devicetree@vger.kernel.org>; Sun, 22 Dec 2024 03:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734836736; cv=none; b=P/dMvjDJsAfL8aL4emfo78ZJIJRUj/iOhy5XgVJP3ASmAeSQWvsOxbMoJLIhdjNKOoj85ZdL26ZUBBIrlXWAI3brFtNBpyH6+pV8QvAFH6XDoASumsFGn7R7UuzVtcgb4LwjMgHdLg8qRWNVNBnOaA+oawCTOQ7XJzP/lwjrJyk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734836736; c=relaxed/simple;
	bh=Ke8N7fPnzHdDjqmNQ4uXLovJaEFIWjCotymaTJzl6BU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=PWnlFRGCaPjrI5Y5VLY/LWfMca66/v9n8WoYdye90vxHVhxnXRV6gM9ZJisJ0+N+QNw+igxmtWDaXFZY/1Bjb6NHKl6lSjhVFyKkLNhvuoEp/++a6QhRqldAyoHLvr/1b7EHPz3K+kJZ9kdOgolfj7INcV7XS/S9tvNKBaZCYK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4BM342BT020894;
	Sun, 22 Dec 2024 12:04:07 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, maz@kernel.org,
        tglx@linutronix.de, jonas@kwiboo.se, macromorgan@hotmail.com,
        andyshrk@163.com, liujianfeng1994@gmail.com, dmt.yashin@gmail.com,
        dsimic@manjaro.org, tim@feathertop.org, marcin.juszkiewicz@linaro.org,
        michael.riesch@wolfvision.net, alchark@gmail.com,
        sebastian.reichel@collabora.com, jbx6244@gmail.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 2/3] dt-bindings: arm: rockchip: Add Radxa E52C
Date: Sun, 22 Dec 2024 03:03:54 +0000
Message-ID: <20241222030355.2246-3-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241222030355.2246-1-naoki@radxa.com>
References: <20241222030355.2246-1-naoki@radxa.com>
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
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 753199a12923..0f0c049a2e90 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -812,6 +812,11 @@ properties:
           - const: radxa,e20c
           - const: rockchip,rk3528
 
+      - description: Radxa E52C
+        items:
+          - const: radxa,e52c
+          - const: rockchip,rk3582
+
       - description: Radxa Rock
         items:
           - const: radxa,rock
-- 
2.43.0


