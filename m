Return-Path: <devicetree+bounces-48253-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id AD68A8711DD
	for <lists+devicetree@lfdr.de>; Tue,  5 Mar 2024 01:42:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DEEA11C21D4B
	for <lists+devicetree@lfdr.de>; Tue,  5 Mar 2024 00:42:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 72AC04C96;
	Tue,  5 Mar 2024 00:42:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="H4gLIVVy"
X-Original-To: devicetree@vger.kernel.org
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC3713212
	for <devicetree@vger.kernel.org>; Tue,  5 Mar 2024 00:42:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.167.242.64
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709599346; cv=none; b=BzM7LjIwWMFFwtYQn+EY3YAuilyd+FyltyQ00gSceLaDuQMzSQs0ubY2926VNMbjvkBywJ3C2S8qU7x1uP5XCI7VvtyoXEr17EAYOnJ9IhmGhkXyHOhhFBT7N/fv0aLnTupqws1oZMmIejm9Vx/xV3+GI9iUW6jObBXDM4h0C90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709599346; c=relaxed/simple;
	bh=SpYsDCtP7YdhZK7gbzK+8qJSoRE/9XwJStgdqoNhJks=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ciMiRt6JnBqqV6jh0/PkHK910E+mvuThiM/yZNasoLDI9xJzYfN1pbpbNW2vFFLi5WTTg/CpvxDr9VaHwrj7KJBWG5KJDNaqZBNtgO/105XQXI+iISkCjXLe+r55UCGhLQl5//vp6pGFQmUGA+O2U0XrEYRYsuN9loV0iQf9jfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com; spf=pass smtp.mailfrom=ideasonboard.com; dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b=H4gLIVVy; arc=none smtp.client-ip=213.167.242.64
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ideasonboard.com
Received: from pendragon.ideasonboard.com (89-27-53-110.bb.dnainternet.fi [89.27.53.110])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 7E1261571;
	Tue,  5 Mar 2024 01:42:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1709599326;
	bh=SpYsDCtP7YdhZK7gbzK+8qJSoRE/9XwJStgdqoNhJks=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=H4gLIVVyt3eEYUWsc4w6Ea7SBkmCwbufCAtzsqClq6tsvKEz9XR4na2aXUrPfpGgw
	 qlij97O9FOSlt3JHdb7hlcpELBFOOfOSZUD3WQqzqpCI+DvtozNhE+0y8W7T5JP+/4
	 D2tAugQ40it7dXqLMvGsWTT0TB8sADWqx3TE+ukU=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Cc: Valentin Raevsky <valentin@compulab.co.il>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>
Subject: [PATCH 1/4] dt-bindings: arm: fsl: Add Compulab SB-UCM-iMX8MPLUS carrier board
Date: Tue,  5 Mar 2024 02:42:18 +0200
Message-ID: <20240305004222.622-2-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240305004222.622-1-laurent.pinchart@ideasonboard.com>
References: <20240305004222.622-1-laurent.pinchart@ideasonboard.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The SB-UCM-iMX8MPLUS is a reference carrier board from Compulab based on
the UCM-iMX8MPLUS SoM. Add corresponding DT compatible strings.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 228dcc5c7d6f..790de9e5fd73 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -1068,6 +1068,12 @@ properties:
           - const: avnet,sm2s-imx8mp              # SM2S-IMX8PLUS SoM
           - const: fsl,imx8mp
 
+      - description: Compulab reference carrier board based on the UCM-iMX8MPLUS SoM
+        items:
+          - const: compulab,sb-ucm-imx8mp
+          - const: compulab,ucm-imx8mp
+          - const: fsl,imx8mp
+
       - description: i.MX8MP DHCOM based Boards
         items:
           - enum:
-- 
Regards,

Laurent Pinchart


