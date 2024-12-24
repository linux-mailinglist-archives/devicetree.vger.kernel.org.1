Return-Path: <devicetree+bounces-133782-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id BB0799FBBEE
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 11:09:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EADDE16430E
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 09:58:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F2C951B652C;
	Tue, 24 Dec 2024 09:58:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="Ol9pehjQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m19731111.qiye.163.com (mail-m19731111.qiye.163.com [220.197.31.111])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 645BE183CD1;
	Tue, 24 Dec 2024 09:58:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.31.111
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735034289; cv=none; b=fsk9uirWkyBT0Bv1KunrkRccvOLxudu5UELSU5M/v6CbUbujPL1hOz0EiLYG4jIKY7ae1FkBwUfe7MObCReAuN76g+NEmTZYhiQ5HJ1AaFooggiDuH7W7wgpcXuAd1mo5o0gWwaqb8ojp2Nkec8AMA8nbxJY5oooRGwtr7KYTlA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735034289; c=relaxed/simple;
	bh=KwvzXGmqe6Sg9ZryIYMTzbVbvSxsESSXgTgXtOFe7g0=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=anc40Bn/3xn7mkzwy4O4bpqaaDR+gtYVCE9+6UfLjoCwJCkan0yJpvHCjkoZSUnsRvsf7MFnGkKthR8aY/iG67ez7OoAP6Zu7AxDj9EMdZgeZRi732Ds3108fNfGaQDt3uw+G5UwL4LYYj6UUifhtrpxI0beVqBEoW7Rh0mRdsU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=Ol9pehjQ; arc=none smtp.client-ip=220.197.31.111
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 6aaa2d19;
	Tue, 24 Dec 2024 17:42:41 +0800 (GMT+08:00)
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
Subject: [PATCH 1/2] dt-bindings: phy: rockchip,inno-usb2phy: add rk3562
Date: Tue, 24 Dec 2024 17:42:39 +0800
Message-Id: <20241224094240.3817261-1-kever.yang@rock-chips.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQ0gZH1ZJTU9PSh1CTBoeTUxWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a93f80c153603afkunm6aaa2d19
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Nyo6Ezo*CzIINkozPCpCExFD
	TioaCilVSlVKTEhOS0hISE1IS0hPVTMWGhIXVRAeDR4JVQIaFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFKSExPNwY+
DKIM-Signature:a=rsa-sha256;
	b=Ol9pehjQY5ZO9Hb1Je/xHCCbv7adtbAUQlDUYe3f6o3uNDmh5K/jYQYjz90jmlmCwAw7yYd1fVmnEDOR1QpalOlEJaB+H0JTrcKVXgEhmF6VA4hEzU8xYzjjvBG9uX2dGJlPS/VqytqcTOATwsYjqqSCFMV2Z8E+x6rgriHJ5CE=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=l4sS4jdc6mI0+Llv9QtpAg8NbLOEBMveI73kPmorKsY=;
	h=date:mime-version:subject:message-id:from;

Add compatible for the USB2 phy in the Rockchip RK3562 SoC.

Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
---

 .../devicetree/bindings/phy/rockchip,inno-usb2phy.yaml         | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/rockchip,inno-usb2phy.yaml b/Documentation/devicetree/bindings/phy/rockchip,inno-usb2phy.yaml
index 6a7ef556414c..367297f6f8b5 100644
--- a/Documentation/devicetree/bindings/phy/rockchip,inno-usb2phy.yaml
+++ b/Documentation/devicetree/bindings/phy/rockchip,inno-usb2phy.yaml
@@ -19,6 +19,7 @@ properties:
       - rockchip,rk3328-usb2phy
       - rockchip,rk3366-usb2phy
       - rockchip,rk3399-usb2phy
+      - rockchip,rk3562-usb2phy
       - rockchip,rk3568-usb2phy
       - rockchip,rk3576-usb2phy
       - rockchip,rk3588-usb2phy
@@ -150,7 +151,6 @@ allOf:
             enum:
               - rockchip,rk3568-usb2phy
               - rockchip,rk3588-usb2phy
-
     then:
       properties:
         host-port:
@@ -190,6 +190,7 @@ allOf:
               - rockchip,rk3328-usb2phy
               - rockchip,rk3366-usb2phy
               - rockchip,rk3399-usb2phy
+              - rockchip,rk3562-usb2phy
               - rockchip,rk3568-usb2phy
               - rockchip,rk3588-usb2phy
               - rockchip,rv1108-usb2phy
-- 
2.25.1


