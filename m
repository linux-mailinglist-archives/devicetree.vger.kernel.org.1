Return-Path: <devicetree+bounces-133522-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 77F9D9FAD89
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 12:12:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 551EA1885410
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 11:12:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9410019FA7C;
	Mon, 23 Dec 2024 11:12:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="Z3kbr2wM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m12747.qiye.163.com (mail-m12747.qiye.163.com [115.236.127.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04D2D19D09F;
	Mon, 23 Dec 2024 11:12:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=115.236.127.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734952331; cv=none; b=HnE3ag6XNxI7fWLbn2ebOx4HSAwxBVOdnmEwxFyBMcw1qMPbAg6Wx5imLOkVyeTeIIB5OdVz/zbj1TWZwHSHd9q/6ltVGOfyk1v4PK15jp/FaDNOlkRhxmk5dtXj52aPsKWfUgJqwntdEoPcFUUIyFd6lurPi5tr9JEo7+B0jTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734952331; c=relaxed/simple;
	bh=PgRx9ViMBeKTDmIJEYPhfsSHcTe7EY9zStc26s5V9DQ=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=CShaj20ZlVSIx35iNXCjeorWutJKkd89VYhVfukS2IGrwDTIdZTGgNu6148XeukIw2bIcd7F82FT83AmlyT+ebWKvXFqvO6U2tS7eax3TVUIk2ehhYO3ybctvmJGdixkKEXRc9ROsPgyAky57MvlMWOKOdc/NuOFHyURjg2H5W8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=Z3kbr2wM; arc=none smtp.client-ip=115.236.127.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 68ea0154;
	Mon, 23 Dec 2024 19:06:48 +0800 (GMT+08:00)
From: Kever Yang <kever.yang@rock-chips.com>
To: heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org,
	Kever Yang <kever.yang@rock-chips.com>,
	Conor Dooley <conor.dooley@microchip.com>,
	devicetree@vger.kernel.org,
	Conor Dooley <conor+dt@kernel.org>,
	Chris Morgan <macromorgan@hotmail.com>,
	Rob Herring <robh@kernel.org>,
	Dragan Simic <dsimic@manjaro.org>,
	Jonas Karlman <jonas@kwiboo.se>,
	linux-kernel@vger.kernel.org,
	Tim Lunn <tim@feathertop.org>,
	linux-arm-kernel@lists.infradead.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Andy Yan <andyshrk@163.com>
Subject: [PATCH v3 6/7] dt-bindings: arm: rockchip: Add rk3576 evb1 board
Date: Mon, 23 Dec 2024 19:06:36 +0800
Message-Id: <20241223110637.3697974-7-kever.yang@rock-chips.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20241223110637.3697974-1-kever.yang@rock-chips.com>
References: <20241223110637.3697974-1-kever.yang@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGRgdQlYaS04fTU0ZQk1JGkxWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a93f332ba8a03afkunm68ea0154
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6P1E6PRw6CDITGAE8Tkg5GRZM
	TBwKFE9VSlVKTEhPQk5JS0tCTEtNVTMWGhIXVRAeDR4JVQIaFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFKS0lNNwY+
DKIM-Signature:a=rsa-sha256;
	b=Z3kbr2wMQXMIL7OkHtXpMOL3nuYhzTIKIoQIVW2h9/zV9GBGB7ISZhNfDGoo5E3oZJ7DsqvdFAOCNgPT2tMVWOn09OqNGL/FHamxln6KeJ03UCqszvsSU8D0ix3t85EuqkX7M1/Y7JYfZtT2ywRjAV82m5dF9pn4R+yJPg40gdY=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=Zkc3irzQ/Hpe11hDqkj7k4cl0yFcqllzKQIrqjPfCQQ=;
	h=date:mime-version:subject:message-id:from;

Add device tree documentation for rk3576-evb1-v10.

Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---

Changes in v3: None
Changes in v2:
- collect acked-by tag

 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 01439d7bbde9..1bd1b609fcff 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -1016,6 +1016,11 @@ properties:
           - const: rockchip,rk3568-evb1-v10
           - const: rockchip,rk3568
 
+      - description: Rockchip RK3576 Evaluation board
+        items:
+          - const: rockchip,rk3576-evb1-v10
+          - const: rockchip,rk3576
+
       - description: Rockchip RK3588 Evaluation board
         items:
           - const: rockchip,rk3588-evb1-v10
-- 
2.25.1


