Return-Path: <devicetree+bounces-133985-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E3F7B9FC718
	for <lists+devicetree@lfdr.de>; Thu, 26 Dec 2024 02:00:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 76CAE1881F41
	for <lists+devicetree@lfdr.de>; Thu, 26 Dec 2024 01:00:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 59B993D66;
	Thu, 26 Dec 2024 01:00:12 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20D9B4683
	for <devicetree@vger.kernel.org>; Thu, 26 Dec 2024 01:00:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735174812; cv=none; b=KMeXnb5ZmEcGKT+eGe1Ntg3DnZ6ek57n6BKJNb0XgryxmjBcev4uBsLAOgSPEx9Jq74IvVNdGMIzhZ726UsYPsZAOM8+YmAZJMbThn6iSNRoojMqUGZ66uaSQ3yqFcxyy5jSqQsR/M7laVzGIBCTG5YObIJk0iE91VlRXvs8fc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735174812; c=relaxed/simple;
	bh=Ju1CUXLmfTdP8rDj6HIef9Lspyou6qWYw8EkLmk3Wnw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=mYAvefanJYMXx4pXn41hFw4i4cTRla7C4EH60CK6DqYpMiTF62pCMbxQMdi+qQ7Sr6v7lJ+Qv5vy1qxARPYRivAR0SUMsog1geshpeMuhz937HWzgqL+Qj7l1DY+VYrhKVBSp8h25iqCMLw0wTx1T03gpkydxCIsXFipcDkoCYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4BQ0x56G003966;
	Thu, 26 Dec 2024 09:59:10 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, jonas@kwiboo.se, macromorgan@hotmail.com,
        liujianfeng1994@gmail.com, dmt.yashin@gmail.com, tim@feathertop.org,
        marcin.juszkiewicz@linaro.org, michael.riesch@wolfvision.net,
        sebastian.reichel@collabora.com, alchark@gmail.com, inindev@gmail.com,
        jbx6244@gmail.com, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v2 1/2] dt-bindings: arm: rockchip: Add Radxa ROCK 5B+
Date: Thu, 26 Dec 2024 00:58:43 +0000
Message-ID: <20241226005845.46473-2-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241226005845.46473-1-naoki@radxa.com>
References: <20241226005845.46473-1-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add devicetree binding for the Radxa ROCK 5B+.

The Radxa ROCK 5B+ is an upgraded version of the ROCK 5B based on the
Rockchip RK3588 SoC.

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
Changes in v2:
- None
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 753199a12923..df959dbfa9eb 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -895,6 +895,11 @@ properties:
           - const: radxa,rock-5b
           - const: rockchip,rk3588
 
+      - description: Radxa ROCK 5B+
+        items:
+          - const: radxa,rock-5b-plus
+          - const: rockchip,rk3588
+
       - description: Radxa ROCK 5C
         items:
           - const: radxa,rock-5c
-- 
2.43.0


