Return-Path: <devicetree+bounces-133017-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 96E199F9005
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 11:17:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 58FA2188FACA
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 10:16:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 58F581C4A26;
	Fri, 20 Dec 2024 10:16:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="GLDmHoq2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m12781.qiye.163.com (mail-m12781.qiye.163.com [115.236.127.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 191EB134AB;
	Fri, 20 Dec 2024 10:16:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=115.236.127.81
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734689774; cv=none; b=K6+jQKFlNxoV0Z4ODulEoakMF6djbxA7bxmgB+v+PmVm91fG6IcGVIvuUtVXMoy0JVY9bCmnvG6/CX7ICGBziGDcxnclbBJLNHafRAFSPNKadhT4A9k60mEJdGn3y4DQkvM/aMk4aL3TsqzfNBSXH5r2bZjSkWMVoH2CKZRlvuc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734689774; c=relaxed/simple;
	bh=whygw9Tv2T/c7ZsMYgrVuen4LxNb3bDp2VYo9ZTPnOk=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=AcbhgaUEZTEL3UR2BkP0+TDTetX8gRBWKeNqLj/ijvOckWbsFPH27rfJTDSiBrJrctCgT9UdjtXCIfJi8wGo/wJyodZkKw2dxSMm/MaApGueIwraQ5q4fuP3MY/V/4YSzssl/Detyr4AccHNCWm5A+xfE6j9sR4TayyjM90rP+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=GLDmHoq2; arc=none smtp.client-ip=115.236.127.81
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 655ee928;
	Fri, 20 Dec 2024 18:16:02 +0800 (GMT+08:00)
From: Kever Yang <kever.yang@rock-chips.com>
To: heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org,
	Kever Yang <kever.yang@rock-chips.com>,
	Conor Dooley <conor.dooley@microchip.com>,
	devicetree@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>,
	Chris Morgan <macromorgan@hotmail.com>,
	Rob Herring <robh@kernel.org>,
	Dmitry Yashin <dmt.yashin@gmail.com>,
	Dragan Simic <dsimic@manjaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-kernel@vger.kernel.org,
	Tim Lunn <tim@feathertop.org>,
	linux-arm-kernel@lists.infradead.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Andy Yan <andyshrk@163.com>
Subject: [PATCH v2 6/7] dt-bindings: arm: rockchip: Add rk3576 evb1 board
Date: Fri, 20 Dec 2024 18:15:50 +0800
Message-Id: <20241220101551.3505917-7-kever.yang@rock-chips.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20241220101551.3505917-1-kever.yang@rock-chips.com>
References: <20241220101551.3505917-1-kever.yang@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQhhLTFZOSRhOH05MSxhNGklWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a93e3912c4803afkunm655ee928
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Nxg6DBw*KjISCAhKMDw4Mj0x
	KhQwCxhVSlVKTEhPTUNCTE1IQ01CVTMWGhIXVRAeDR4JVQIaFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFKS0tONwY+
DKIM-Signature:a=rsa-sha256;
	b=GLDmHoq2/uuAvUm+eMezXCJLZFmnD4tMkrORT+Ety9+5TOaD7CEjzil2pW4nEojrQaxwtxGe43VTpahC9LuwsKcLp8xhzB0To4/hUvebT99De6Oozc8k23Aqm4OTbC7cFPeXEU7KYtc4nSYORuTeDefpwSeIM5XzKaGTksLHM6M=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=c9v/G/FdQXUQUDpsFAAijoy+xRQ9Tm3+wV3VCxxiSK4=;
	h=date:mime-version:subject:message-id:from;

Add device tree documentation for rk3576-evb1-v10.

Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---

Changes in v2:
- collect acked-by tag

 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 45ee4bf7c80c..b2681a45867b 100644
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


