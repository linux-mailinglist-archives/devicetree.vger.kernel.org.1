Return-Path: <devicetree+bounces-56548-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0856B899A72
	for <lists+devicetree@lfdr.de>; Fri,  5 Apr 2024 12:14:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B20CC1F23905
	for <lists+devicetree@lfdr.de>; Fri,  5 Apr 2024 10:14:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07AB616190D;
	Fri,  5 Apr 2024 10:14:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B717161908
	for <devicetree@vger.kernel.org>; Fri,  5 Apr 2024 10:14:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712312077; cv=none; b=KMBC9AN/7DUbupVaLwNJn3s0LUAaejzy81wo1CIaOZFMkZUDECVD7OQy98lqqvoybiAsrj+pPii72HGtPpw/SvMOdut8oV54bGNB0GxgVjgQ9sZG+66yJGLWiJN6HapgiL8/OGyMmOshnguWoqQHRBNTaQoBg/leuSzAJNPd9Y4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712312077; c=relaxed/simple;
	bh=2rxJg2JlSNZF2ePdRUEAVz3UWhl5tHwW+kjdYRFWPj8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=fnpf3qtifzAH8HylU+jk+n3nh4wUEv+C+8ltPQeJpPF5CE4ojzMCQpW6nuo05eAa/wW8NV0ffVzemPrSbLRqVncU7Z9ozqn1lcxNazlNlhxWONlVKwplIH7LcxII+V7NYsWQgYLcrp+p3uUMNkKc2J3jiJStVUotWu/nHepKGWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rsgaY-0008Kx-R9; Fri, 05 Apr 2024 12:14:26 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rsgaY-00AY5E-3M; Fri, 05 Apr 2024 12:14:26 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rsgaY-00AhER-04;
	Fri, 05 Apr 2024 12:14:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 05 Apr 2024 12:14:25 +0200
Subject: [PATCH v2 1/2] dt-bindings: arm: rockchip: Add Protonic MECSBC
 board
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240405-protonic-mecsbc-v2-1-0a6fedc78b9f@pengutronix.de>
References: <20240405-protonic-mecsbc-v2-0-0a6fedc78b9f@pengutronix.de>
In-Reply-To: <20240405-protonic-mecsbc-v2-0-0a6fedc78b9f@pengutronix.de>
To: Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 David Jander <david@protonic.nl>, Sascha Hauer <s.hauer@pengutronix.de>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1712312066; l=1025;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=2rxJg2JlSNZF2ePdRUEAVz3UWhl5tHwW+kjdYRFWPj8=;
 b=YRAKEkJphpk14MXc5Ov7W2z/J3TbQkMN1yS4Rgiy3eOEdNDF+mn+NeYe1Q5m985ca5MdldKKA
 +qS8TYfnswHD7Jae4grX7P6/VJrLNiKA4r3HxytQfcnFNmY+gIqKDsf
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: s.hauer@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

MECSBC is a single board computer for blood analysis machines from
RR-Mechatronics, designed and manufactured by Protonic Holland, based on
the Rockchip RK3568 SoC.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index fcf7316ecd74c..4847fe072d550 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -700,6 +700,11 @@ properties:
               - powkiddy,x55
           - const: rockchip,rk3566
 
+      - description: Protonic MECSBC board
+        items:
+          - const: prt,mecsbc
+          - const: rockchip,rk3568
+
       - description: QNAP TS-433-4G 4-Bay NAS
         items:
           - const: qnap,ts433

-- 
2.39.2


