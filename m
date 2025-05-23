Return-Path: <devicetree+bounces-180094-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E6BFAC296D
	for <lists+devicetree@lfdr.de>; Fri, 23 May 2025 20:17:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9466F9E8296
	for <lists+devicetree@lfdr.de>; Fri, 23 May 2025 18:17:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A7D1E298C1C;
	Fri, 23 May 2025 18:17:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2064429827B
	for <devicetree@vger.kernel.org>; Fri, 23 May 2025 18:17:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748024261; cv=none; b=Ei2DE3tTgA6qBL7P508EI9CvpLj0Pn3W+dbAhrJTWaB5KfmcFF82W1F0VbtRyTdcL2poaS0Xy13kEtXfyerl4I+LyNDLSEPd0UF02Z5rrrY6p/+vwQM1R9fxH1UFXaosXLwu0dcq0q6YzSrNt2QMOAgEJyBkAj0sX+E3gQC9EQc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748024261; c=relaxed/simple;
	bh=QqM9V5tgDfeZTroF9cmXre8nqsRXKlQobOkW6D+1iso=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=rZ8J+x6BLw0XDGzGcomwuR/o7zCTtfQdpzQljve6Y3WQObSxhhmpzML+fJZiCyKT4MK/cCYel3lUJRth8RzM8QBLU7XzNoTe0C6o2eY6X0GIHmaT5ID5F8R/iUv8BGGFl21ykPqHxZsBBvoHwaK0L2RjkL2ULfHm/Zs5KOa7sf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1uIWxU-0003Td-OG; Fri, 23 May 2025 20:17:28 +0200
From: Fabian Pflug <f.pflug@pengutronix.de>
Date: Fri, 23 May 2025 20:16:49 +0200
Subject: [PATCH 2/2] dt-bindings: arm: fsl: add i.MX93 11x11 FRDM board
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250523-fpg-nxp-imx93-frdm-v1-2-546b2d342855@pengutronix.de>
References: <20250523-fpg-nxp-imx93-frdm-v1-0-546b2d342855@pengutronix.de>
In-Reply-To: <20250523-fpg-nxp-imx93-frdm-v1-0-546b2d342855@pengutronix.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
 Fabian Pflug <f.pflug@pengutronix.de>
X-Mailer: b4 0.14.2
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::5c
X-SA-Exim-Mail-From: f.pflug@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

Add DT compatible string for NXP i.MX93 11x11 FRDM board.

Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 1b90870958a22e49355dd1f932bf3d84cd864b5f..948b87150be813d24fce795b737723c20f512ec1 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -1344,6 +1344,7 @@ properties:
           - enum:
               - fsl,imx93-9x9-qsb         # i.MX93 9x9 QSB Board
               - fsl,imx93-11x11-evk       # i.MX93 11x11 EVK Board
+              - fsl,imx93-11x11-frdm      # i.MX93 11x11 FRDM Board
               - fsl,imx93-14x14-evk       # i.MX93 14x14 EVK Board
           - const: fsl,imx93
 

-- 
2.39.5


