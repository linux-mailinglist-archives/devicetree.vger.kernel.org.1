Return-Path: <devicetree+bounces-79008-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AE300913DFB
	for <lists+devicetree@lfdr.de>; Sun, 23 Jun 2024 22:15:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 68A43281904
	for <lists+devicetree@lfdr.de>; Sun, 23 Jun 2024 20:15:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E5E91849E1;
	Sun, 23 Jun 2024 20:15:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E676F184132
	for <devicetree@vger.kernel.org>; Sun, 23 Jun 2024 20:15:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719173713; cv=none; b=MW3eooO3MQYR28r7uW2p5AUoTARSXL8wgn+Bgxb12z8HBzMpnsRdD8d1tfozjW5kRKKkkXSEMpx3HVGOMrQp31NA3pGZ2BmRZFQIM7xEOGUA+t4DYw1a0vp9JF6AYkMwiWMn8F4kggg6bIAfsQDt0dV0kHl3S6tf6oLQitTkH4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719173713; c=relaxed/simple;
	bh=8RXNJkyzlXIxvXmI21V4qJHZAP5nv1fs2xbJtR7mYVI=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=cwLLGCNETiQwLmlW8KPuaQpIbtU4xs9S8J6A5r/Omrh70g0s3QjmwTJR45aKagUVdsXy7CNuiz4fbOX54atFwOo/iAOfBjcbuGUaiy2R+IAzGTVQZHC1nQtHukzt8R7ZDhd73JIVFYB9f5+K0lThB6X05XPgitP8Z/MMWcoGRI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 45NKEMob007026;
	Mon, 24 Jun 2024 05:14:22 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v3 1/3] dt-bindings: arm: rockchip: Add Radxa ROCK Pi E v3.0
Date: Mon, 24 Jun 2024 05:14:13 +0900
Message-ID: <20240623201415.3205-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add devicetree binding for the Radxa ROCK Pi E v3.0 board.

Radxa ROCK Pi E v3.0 is a single-board computer based on the Rockchip
RK3328 SoC with a compact form factor.

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>

Changes in v3:
- none
Changes in v2:
- none
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index eca0a42eb384..53ca61c47b76 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -779,6 +779,11 @@ properties:
           - const: radxa,rockpi-e
           - const: rockchip,rk3328
 
+      - description: Radxa ROCK Pi E v3.0
+        items:
+          - const: radxa,rockpi-e-v3
+          - const: rockchip,rk3328
+
       - description: Radxa ROCK Pi N8
         items:
           - const: radxa,rockpi-n8
-- 
2.43.0


