Return-Path: <devicetree+bounces-250076-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 95A9BCE628C
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 08:39:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5F9CA3002600
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 07:39:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 01EA6259CB2;
	Mon, 29 Dec 2025 07:39:54 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D536F26A0B9
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 07:39:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766993993; cv=none; b=u3ZUvRFbu/lehUJFr2wZpH8uvWBtq634iMZLgdFDrCedm1FvtaSaQQ4JvV4Im7rT9+aZI1YFj+X+p8w4Lt6JzNAcBhWM4LaesY09aVyyMoDjvfn/Jojky5kLI8yAcSlZsmfphX9Qxe/o3MetdnUYhL/ImryeHSmS6lM+DdkMO0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766993993; c=relaxed/simple;
	bh=CdkDFqEdlwzvVdphJe1igq4YKidcrJvWuXWzz4Md75M=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=cNtMrcMehQi10+gSjmLB+QB7ngEZdDbla+aK4DpVEN7vsTZFGHEuRS/EO54cdDOWyp9aIYoywZJNT7iKKeNZ+IKLJJfmWYAzixSzjxp05gNVBy5yaz6KG5c15AeqpkZf4grFfXE+AUFP3xIoR6+FXZWJ9BuPD4WxBjjc0G5RBn8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 5BT7cluQ012783;
	Mon, 29 Dec 2025 16:38:47 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        catalin.marinas@arm.com, will@kernel.org, kever.yang@rock-chips.com,
        jonas@kwiboo.se, michael.opdenacker@rootcommit.com,
        honyuenkwun@gmail.com, quentin.schulz@cherry.de, dsimic@manjaro.org,
        alchark@gmail.com, pbrobinson@gmail.com, ziyao@disroot.org,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [RFC PATCH 1/3] dt-bindings: arm: rockchip: Add Radxa CM3J on RPi CM4 IO Board
Date: Mon, 29 Dec 2025 07:38:38 +0000
Message-ID: <20251229073840.25516-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The Radxa CM3J is a feature rich industrial compute module developed
by Radxa, based on the Rockchip RK3568 SoC. [1]

Add devicetree binding documentation for the Radxa CM3J on RPi CM4 IO
Board.

[1] https://dl.radxa.com/cm3j/docs/hw/radxa_cm3j_product_brief_Revision_1.0.pdf

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 59a7aed538b4..d344a284e538 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -914,6 +914,13 @@ properties:
           - const: radxa,cm3i
           - const: rockchip,rk3568
 
+      - description: Radxa CM3J
+        items:
+          - enum:
+              - radxa,cm3j-rpi-cm4
+          - const: radxa,cm3j
+          - const: rockchip,rk3568
+
       - description: Radxa CM5
         items:
           - enum:
-- 
2.43.0


