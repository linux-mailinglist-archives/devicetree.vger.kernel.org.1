Return-Path: <devicetree+bounces-219975-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EBC8B904F5
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 13:11:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1A7993BA5D9
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 11:11:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4AF6E28850E;
	Mon, 22 Sep 2025 11:11:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9528827F72C
	for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 11:11:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758539473; cv=none; b=BIHfiojRvF3geohZujNCgzQ8kDQcXgZSBz64Jdg95FuybbAVKhONTRH0WPImbT3d/WrNRbC0FxFEnY0dSSVbmG4ocEFUq5k1OR3UMF6jP904pCEBUgMAJa8Kc2Xmen7/QOUIZhxIZD2P+z82woJrVwGhrvgc9TBZiIqSJJ9n83M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758539473; c=relaxed/simple;
	bh=Uo9nCKnhrCEWJtFJDVa1RPwlQawqN+Vhk/e/1vP62XM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=bCJ0YplQHWWdlQ1LPaJozVPCTKx9aA02mCifRXqTX8Xy1MmG8x4NP8CIGkEWT3+1yMiYQgJz9NQ/WAYqZL5/N9Roi+qGH1qHhzpSR7u7kPTW9cDSDwSw1D5tSTORPaaMlQ0yZTcYzKo4nmZo1mXZo6akan+BQM+WjdVz/gUNWzc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1v0eRl-0002HM-Uk; Mon, 22 Sep 2025 13:11:06 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon, 22 Sep 2025 13:10:52 +0200
Subject: [PATCH v2 1/5] dt-bindings: vendor-prefixes: Add JuTouch
 Technology Co, Ltd
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250922-v6-17-topic-imx8mp-skov-dts-jutouch-10inch-v2-1-abbb759cf8ef@pengutronix.de>
References: <20250922-v6-17-topic-imx8mp-skov-dts-jutouch-10inch-v2-0-abbb759cf8ef@pengutronix.de>
In-Reply-To: <20250922-v6-17-topic-imx8mp-skov-dts-jutouch-10inch-v2-0-abbb759cf8ef@pengutronix.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Jessica Zhang <jessica.zhang@oss.qualcomm.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Thierry Reding <thierry.reding@gmail.com>, Sam Ravnborg <sam@ravnborg.org>, 
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 dri-devel@lists.freedesktop.org, imx@lists.linux.dev, 
 linux-arm-kernel@lists.infradead.org, 
 Steffen Trumtrar <s.trumtrar@pengutronix.de>
X-Mailer: b4 0.14.2
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: s.trumtrar@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

JuTouch is a chinese touch screen supplier dedicated to manufacturing
high-end touch display products for the global industrial market.
(www.jutouch.com)

Add a vendor prefix for it.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Acked-by: Rob Herring (Arm) <robh@kernel.org>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 77160cd47f54079a39f35b570d69f7c4c2274724..074e2ce9025dfa5ff76f7df3a743c2dd2f9ccd93 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -799,6 +799,8 @@ patternProperties:
     description: JOZ BV
   "^jty,.*":
     description: JTY
+  "^jutouch,.*":
+    description: JuTouch Technology Co., Ltd.
   "^kam,.*":
     description: Kamstrup A/S
   "^karo,.*":

-- 
2.49.0


