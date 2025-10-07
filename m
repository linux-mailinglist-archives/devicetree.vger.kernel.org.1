Return-Path: <devicetree+bounces-224086-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C0775BC0AB4
	for <lists+devicetree@lfdr.de>; Tue, 07 Oct 2025 10:37:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 63CEB19A07C7
	for <lists+devicetree@lfdr.de>; Tue,  7 Oct 2025 08:37:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 171C42E040A;
	Tue,  7 Oct 2025 08:33:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 862A02DF150
	for <devicetree@vger.kernel.org>; Tue,  7 Oct 2025 08:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759826005; cv=none; b=GO3r+/Oq7sTogk+OypWiFKthbAK0spsvMZ6mEp163bIwVSJM0s+sVz+iyrpkkCDQ4MJMiqbfIRCl0T23tWR1A/maYWoRnri6WS8L+6EGEDrz0heePncds2lzr7OIRVRAut4fVeHpsMcZED6c6mXKBZ/VmepXuCmSh9/U+BM9DGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759826005; c=relaxed/simple;
	bh=JpuQxkq+iv5i1oG7v6T5NETWFMRdyuJ9nOjLXemVtDA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=YpVN6ohNM7BYsW6X4RN75NSXZa62VEzvgRAPBEX4QkuYdt73XOX/VAraG0BHN+jukpVoG7BUgcgh5Gp/iUEvdwYdq+oy78Tl0dNDXMwm54EEv4P3tCLR72JEZ1C7wwC+KQJaOSyyD9EJbmGWAXjsqw3AxV2Ej4R3rbkx+mPr4Wo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=peter.mobile.pengutronix.de)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.pueschel@pengutronix.de>)
	id 1v637y-0002Hb-Eu; Tue, 07 Oct 2025 10:32:58 +0200
From: =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
Date: Tue, 07 Oct 2025 10:32:06 +0200
Subject: [PATCH 13/16] media: dt-bindings: media: rockchip-rga: add
 rockchip,rk3588-rga3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20251007-spu-rga3-v1-13-36ad85570402@pengutronix.de>
References: <20251007-spu-rga3-v1-0-36ad85570402@pengutronix.de>
In-Reply-To: <20251007-spu-rga3-v1-0-36ad85570402@pengutronix.de>
To: Jacob Chen <jacob-chen@iotwrt.com>, 
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, kernel@pengutronix.de, 
 =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
X-Mailer: b4 0.14.2
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: s.pueschel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

Add a new compatible for the rk3588 Rockchip SoC, which features an
RGA3, which is described in the TRM Part2.

Signed-off-by: Sven Püschel <s.pueschel@pengutronix.de>
---
 Documentation/devicetree/bindings/media/rockchip-rga.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/media/rockchip-rga.yaml b/Documentation/devicetree/bindings/media/rockchip-rga.yaml
index ac17cda65191be047fc61d0c806f806c6af07c7b..11e86333c56aab55d9358dc88e45e7c1ebfaae9e 100644
--- a/Documentation/devicetree/bindings/media/rockchip-rga.yaml
+++ b/Documentation/devicetree/bindings/media/rockchip-rga.yaml
@@ -20,6 +20,7 @@ properties:
     oneOf:
       - const: rockchip,rk3288-rga
       - const: rockchip,rk3399-rga
+      - const: rockchip,rk3588-rga3
       - items:
           - enum:
               - rockchip,rk3228-rga

-- 
2.51.0


