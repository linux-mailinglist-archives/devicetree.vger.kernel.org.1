Return-Path: <devicetree+bounces-235027-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D741C33FA7
	for <lists+devicetree@lfdr.de>; Wed, 05 Nov 2025 06:18:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 250F64E0743
	for <lists+devicetree@lfdr.de>; Wed,  5 Nov 2025 05:18:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A3A3230BD5;
	Wed,  5 Nov 2025 05:18:40 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF3051C3BE0
	for <devicetree@vger.kernel.org>; Wed,  5 Nov 2025 05:18:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762319920; cv=none; b=aNXpHZ0r5UvyeVlfCKtvhEVsb4Qe2T4Wq/EqqdvhdL96972NaRgBAKq3ZN6ylJ89Pt3SguAtmenrfNyhybGCAuPO7B8F4AQQU8uJ+ybOI2ZI443BP1Paa0oqU7SZnCXOA/z0+Jw14BbavIzhS5vYsz9DF+KNVsu6u1gu6ONSIFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762319920; c=relaxed/simple;
	bh=njg3HimkANPc4Tk8L7aGCD6wlyB7Xs5iWETL/sG+Lho=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Kby87MQryE/hCUWkJoLQOjIuRHi+eTl+rSm9C7NEVkcidbpQxPKA2K/QYGEAF2vl3KRAJepocDek0DOGMYIOnbXvYebPc2S52rPHIorpfdfgWaAS/TwA++l9fheNtw6bSq6xudGwCZCiBCgNAypgsC033ywtBHoN4neCUkNyl5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 5A55DfSs031533;
	Wed, 5 Nov 2025 14:13:48 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: joseph.kogut@gmail.com, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, jonas@kwiboo.se, kever.yang@rock-chips.com,
        i@next.chainsx.cn, honyuenkwun@gmail.com, quentin.schulz@cherry.de,
        dsimic@manjaro.org, pbrobinson@gmail.com, amadeus@jmu.edu.cn,
        jbx6244@gmail.com, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v6 1/3] dt-bindings: arm: rockchip: Add Radxa CM5 IO Board
Date: Wed,  5 Nov 2025 05:13:33 +0000
Message-ID: <20251105051335.17652-2-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251105051335.17652-1-naoki@radxa.com>
References: <20251105051335.17652-1-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add device tree binding documentation for the Radxa CM5 IO Board.

Link: https://dl.radxa.com/cm5/radxa_cm5_product_brief.pdf
Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
Signed-off-by: Joseph Kogut <joseph.kogut@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index ba61ea7436132..1829daad88ab5 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -902,6 +902,13 @@ properties:
           - const: radxa,cm3i
           - const: rockchip,rk3568
 
+      - description: Radxa CM5
+        items:
+          - enum:
+              - radxa,cm5-io
+          - const: radxa,cm5
+          - const: rockchip,rk3588s
+
       - description: Radxa E20C
         items:
           - const: radxa,e20c
-- 
2.43.0


