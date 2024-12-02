Return-Path: <devicetree+bounces-126211-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EA2E79E08C2
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 17:37:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AFB14280ED7
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 16:37:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C93F21DDC00;
	Mon,  2 Dec 2024 16:35:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 367911DCB09
	for <devicetree@vger.kernel.org>; Mon,  2 Dec 2024 16:35:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733157346; cv=none; b=MjCL9DZIglaXA3jsSHtr9p6AhtMuSIMaEZ2VrSBY5S5fEoAv2dNstiYcqfPenkNugGMnusIWC/DFZvfbN+xpBBjEcgZZ9MY9qE0YzoXyzj1fhGfBmz2tj8Ux/UDaVDlroxjUkJ3BJksU0YXvXKTSg6KSfDmfDSW5aK43nPo2imc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733157346; c=relaxed/simple;
	bh=lTe9FWRo2ZCa3rPujY1of3rChZ8Z3D7OPHWZ5cq3rFA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Rml18XXYPbLIBxuvnq9/HbOSJxXWZxn7s92UnVTp+SgMfWPHLsyWaQhzCENNp9+pyIinkLjEV3UfRStNK+uQGzJzSMQaduQgEqTmZJBiJAmfNTeAIinm+bF+M5N7hQ8XKJa77+dsi4F+2AEQcieALh/sICmEBwXuRHfFCAlECjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1tI9Od-0004Mi-7e; Mon, 02 Dec 2024 17:35:39 +0100
From: Jonas Rebmann <jre@pengutronix.de>
Date: Mon, 02 Dec 2024 17:35:21 +0100
Subject: [PATCH 2/3] dt-bindings: mtd: mchp48l640 add mb85rs128ty
 compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241202-mb85rs128ty-v1-2-a660b6490dc8@pengutronix.de>
References: <20241202-mb85rs128ty-v1-0-a660b6490dc8@pengutronix.de>
In-Reply-To: <20241202-mb85rs128ty-v1-0-a660b6490dc8@pengutronix.de>
To: Miquel Raynal <miquel.raynal@bootlin.com>, 
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Schocher <hs@denx.de>
Cc: linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, David Jander <david@protonic.nl>, 
 kernel@pengutronix.de, Jonas Rebmann <jre@pengutronix.de>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=781; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=lTe9FWRo2ZCa3rPujY1of3rChZ8Z3D7OPHWZ5cq3rFA=;
 b=owGbwMvMwCF2ZcYT3onnbjcwnlZLYkj3fXgzSD2bc0Le6u+xjdkL6qItJ8mGnmTa9Kr7kHBmy
 +WzW3OsOkpZGMQ4GGTFFFli1eQUhIz9r5tV2sXCzGFlAhnCwMUpABOZI8/wm2VW8rpy7rNWX88X
 /58hLXvK47ZymHpleFZbdnv1o68dhxn+e9UfYOjxjdh68vaBU69fX2btl95QcUFa6cdD5WXCCpx
 1fAA=
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::ac
X-SA-Exim-Mail-From: jre@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

Add a compatible string to support Fujitsu MB85RS128TY.

Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
 Documentation/devicetree/bindings/mtd/microchip,mchp48l640.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/mtd/microchip,mchp48l640.yaml b/Documentation/devicetree/bindings/mtd/microchip,mchp48l640.yaml
index 0ff32bd00bf6aee279fa78c624d8d47c6162f7f1..973f06b665dbbcb9ea1090418eb18fbe2285acef 100644
--- a/Documentation/devicetree/bindings/mtd/microchip,mchp48l640.yaml
+++ b/Documentation/devicetree/bindings/mtd/microchip,mchp48l640.yaml
@@ -18,6 +18,7 @@ properties:
   compatible:
     items:
       - const: microchip,48l640
+      - const: fujitsu,mb85rs128ty
 
   reg:
     maxItems: 1

-- 
2.39.5


