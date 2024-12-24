Return-Path: <devicetree+bounces-133887-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 42E699FC27F
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 22:10:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A61061883718
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 21:10:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 74FF618FDD0;
	Tue, 24 Dec 2024 21:10:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25BF418DF86
	for <devicetree@vger.kernel.org>; Tue, 24 Dec 2024 21:10:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735074610; cv=none; b=rlNsdMmOGKpF6ODWCa6uPUL3nCjNblmsZs0S81c7oLbbbdYDuab3xZ9o5F2EgRNNSb296ZcIkfMfEE7SjXqa7+IBNNFI+ppwVqNei9GTF71GPxudLOmsZWBeWp/hKVi1uHpuwjydCez+fciSOn6JJwypggBAuG+b2GNO00lblxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735074610; c=relaxed/simple;
	bh=qDlzClnoHk65szKo89trLsRIFMyv4R/Iv6KJDeNXV04=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=GOG19m9bt+W/tA283Oolbor4SnUsz6ju29N9zGDSDsEj2KB7OF4s0qAHTOIqgQkTmeBuhYGxMMsozaYriAJY1usfjIZi3UAFimLSyLA4S1qUV61qSuwJe04Ec2RhksFVdm+hM1LyxrMf158+KZLDxxmcTywn+mExJv82IWwwAaA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4BOL9KQC031471;
	Wed, 25 Dec 2024 06:09:23 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, jonas@kwiboo.se, macromorgan@hotmail.com,
        liujianfeng1994@gmail.com, dmt.yashin@gmail.com, tim@feathertop.org,
        marcin.juszkiewicz@linaro.org, michael.riesch@wolfvision.net,
        sebastian.reichel@collabora.com, alchark@gmail.com, inindev@gmail.com,
        kever.yang@rock-chips.com, cristian.ciocaltea@collabora.com,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 1/3] dt-bindings: arm: rockchip: Add Radxa ROCK 5B+
Date: Tue, 24 Dec 2024 21:09:10 +0000
Message-ID: <20241224210912.2121-2-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241224210912.2121-1-naoki@radxa.com>
References: <20241224210912.2121-1-naoki@radxa.com>
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


