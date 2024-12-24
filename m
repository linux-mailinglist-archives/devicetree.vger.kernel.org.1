Return-Path: <devicetree+bounces-133774-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 219E99FBBD1
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 11:02:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6F712188AD5E
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 09:55:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 318C61D61BB;
	Tue, 24 Dec 2024 09:49:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="V4EpYXmG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m49239.qiye.163.com (mail-m49239.qiye.163.com [45.254.49.239])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E36A91CEE82;
	Tue, 24 Dec 2024 09:49:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.254.49.239
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735033795; cv=none; b=k+7qTb0yqaMCQRFXW7uL/ntK83K4ngP3Ws7gzwL641xtfZ+ldS7PjtO6avPKQKNHVL0UUD24t8rV2SUiKokI8Yj0X5i7h13jkKUOm+NnvKWImWp1O3abQTZA9PvWwaNWpsD7sVLXHMBkLJSxL+Gf6A/VsnYXBFexKZ8fscvwuMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735033795; c=relaxed/simple;
	bh=/3PB4YY83BzB8Vujvtm79iFjM/5EPVPMSaYKjX6/0tM=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=TCtAEZzcBqnFka2fvLnaZ9lBgC+VbSU1oTGDvFkN7cFN40HmWsRiGG7ue2R2cmO3Jnxpi1rnZvTyT+I2icOavO7d+ooNh2DeaB5CJFBV/6wNgBe+Q8TQD4cpgLTY7SLjvxq36VDsRn0HJ5ux6A3JG/TZRs7r1MMQwRr0Y75wcSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=V4EpYXmG; arc=none smtp.client-ip=45.254.49.239
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 6aad4f7a;
	Tue, 24 Dec 2024 17:49:43 +0800 (GMT+08:00)
From: Kever Yang <kever.yang@rock-chips.com>
To: heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org,
	Kever Yang <kever.yang@rock-chips.com>,
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
Subject: [PATCH v2 14/17] dt-bindings: arm: rockchip: Add rk3562 evb2 board
Date: Tue, 24 Dec 2024 17:49:17 +0800
Message-Id: <20241224094920.3821861-15-kever.yang@rock-chips.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20241224094920.3821861-1-kever.yang@rock-chips.com>
References: <20241224094920.3821861-1-kever.yang@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQk5JS1YeQh0aGkhJSEMZS0JWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a93f812852303afkunm6aad4f7a
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Njo6Pio4HjINOkoNPEpKLCEJ
	MAgwCUtVSlVKTEhOS0hITENOS01CVTMWGhIXVRAeDR4JVQIaFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFCTEg3Bg++
DKIM-Signature:a=rsa-sha256;
	b=V4EpYXmG4grMHKIU83NHoDgupDZeUsyUQF0dsblajsus9+ifKLnWJxj3m4W3GMVC9s9L+1LZl+bQqXkPFuZBVh/Dc9XSnxqV4WkaYp6qAPsMpeqp222wXfHCNF/Tcp9gGz2IoKkIly2XAMbjGeCSn9hPQwvg5S/VLlAxJbSHLCU=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=Oq00+y/kuWMjOL0bTcvLlpDd0OK7vNwa3VWp6ptm2Lk=;
	h=date:mime-version:subject:message-id:from;

Add device tree documentation for rk3562-evb2-v10.

Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
---

Changes in v2:
- Update in sort order

 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 1bd1b609fcff..0d182360f165 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -1006,6 +1006,11 @@ properties:
           - const: rockchip,rk3399-sapphire-excavator
           - const: rockchip,rk3399
 
+      - description: Rockchip RK3562 Evaluation board 2
+        items:
+          - const: rockchip,rk3562-evb2-v10
+          - const: rockchip,rk3562
+
       - description: Rockchip RK3566 BOX Evaluation Demo board
         items:
           - const: rockchip,rk3566-box-demo
-- 
2.25.1


