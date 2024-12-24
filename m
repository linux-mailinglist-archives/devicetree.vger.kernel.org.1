Return-Path: <devicetree+bounces-133812-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A73879FBC5D
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 11:32:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D3DF61888EE7
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 10:23:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 147651DE3B6;
	Tue, 24 Dec 2024 10:17:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="F4cd1Z2b"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m11875.qiye.163.com (mail-m11875.qiye.163.com [115.236.118.75])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C2501BC062;
	Tue, 24 Dec 2024 10:17:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=115.236.118.75
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735035476; cv=none; b=aJDNRejyRAtoT3ERjTeZwWI00wZuk7mgfjo1iJLRXCrvJ16r2Vz0ybJiUCljuEwnlkoC5UDZ0VnulR/5zwObN0fHphWn4ivtOin28ofEUj9EVZRDFXouzulFPNdZi5G0n5GecsoMAE39IY/dT8JyZkvcqPqdKQDyCNDVDFSkx3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735035476; c=relaxed/simple;
	bh=dWbiN01nVtNdaBqaMYz4bHXyZcU7gO/mbakUdy9dPNY=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=B/Sc2ke++pNSslFxu9OgkF3ir09lB/ZjhfrO286nNKgSRBM4zcaW44om4MQY3hX0sEeZQpfgjG+c2Wt2BzOVXBbA2ENEoj6kwqnvflBPBRFKFi6uojy7+vxieck/8pDdsE+B/C6Mh8RwtMZrjD7556aVVk+GI6GduGJCHy/NMYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=F4cd1Z2b; arc=none smtp.client-ip=115.236.118.75
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 6aaa2caf;
	Tue, 24 Dec 2024 17:42:19 +0800 (GMT+08:00)
From: Kever Yang <kever.yang@rock-chips.com>
To: heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org,
	Kever Yang <kever.yang@rock-chips.com>,
	devicetree@vger.kernel.org,
	Conor Dooley <conor+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-phy@lists.infradead.org,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/2] dt-bindings: phy: rockchip: Add rk3562 naneng-combophy compatible
Date: Tue, 24 Dec 2024 17:42:15 +0800
Message-Id: <20241224094217.3817100-1-kever.yang@rock-chips.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQx5MHVYfHh1NSRodTEsdQxhWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a93f80bbe9603afkunm6aaa2caf
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PRw6MTo5ITIVHEodSygaEyEU
	GT4KCw9VSlVKTEhOS0hISE9LTENIVTMWGhIXVRAeDR4JVQIaFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFDSE03Bg++
DKIM-Signature:a=rsa-sha256;
	b=F4cd1Z2bBJy6zzqojWQ913x+ta9QjmyGxWhPWeTqUhY/mI+ZBT6XFkSjOxr2FBKhOL4QHnBn8NAAwyc9NmsIaYyj33yD5PSco30yqEJP057TUqQVEfhrXhBOiyeulZTizwrmyHD79k/kasDBoccCnyf3aRLWOylD8d/1vZVCo7U=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=dHzeIUe7fozDj8cUe5wnNwhlFJjGkU1QFipvtmXGK6U=;
	h=date:mime-version:subject:message-id:from;

rk3562 use the same Naneng Combo Phy driver as rk3568.

Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
---

 .../devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml     | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml b/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
index 1b3de6678c08..888e6b2aac5a 100644
--- a/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
+++ b/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
@@ -12,6 +12,7 @@ maintainers:
 properties:
   compatible:
     enum:
+      - rockchip,rk3562-naneng-combphy
       - rockchip,rk3568-naneng-combphy
       - rockchip,rk3576-naneng-combphy
       - rockchip,rk3588-naneng-combphy
-- 
2.25.1


