Return-Path: <devicetree+bounces-207290-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 02C39B2F03F
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 09:56:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E6D791C81B7D
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 07:56:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 020232E92D1;
	Thu, 21 Aug 2025 07:56:06 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 798742D4B4E
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 07:56:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755762965; cv=none; b=csrzsN/kXDtZDQ5HI2QVYJQyiYnMOeK4WN0NRPpif/aR8XvJRxvg0PmbgIQf6F8S23Bhb3iMJpyQiNeIj32vfPws9hSjhsxcK9oRcO8G+/xERbFN0oCCd9fd9GJSqB8AM/L68aUaZz1ZUR8m+TDL/6fa1e5TA0yIHA3/UfGuuC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755762965; c=relaxed/simple;
	bh=U5M3s7w92sAkBLri624LlPYbw02CxF1sSk+TM56xNhI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=QjmJQgYUj/utXDj6ZduWccMUqFlNJNWUb00bxMxI0AWd20T1zGh66m0aNM0JHHtPuh/kr53fA3arCSuFtzKtHWnZ5u3nLN53Zglzsr6prEP0Ufj2JQo9v4Beo6FagaOT+p7dRGtWxP0zU2zIX61s05Gr9iL2OfTNgA83QCohM5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1up09B-00073K-0O; Thu, 21 Aug 2025 09:55:45 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Thu, 21 Aug 2025 09:55:31 +0200
Subject: [PATCH 4/5] dt-bindings: arm: fsl: add compatible for Skov i.MX8MP
 variant
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250821-v6-17-topic-imx8mp-skov-dts-jutouch-10inch-v1-4-b492ef807d12@pengutronix.de>
References: <20250821-v6-17-topic-imx8mp-skov-dts-jutouch-10inch-v1-0-b492ef807d12@pengutronix.de>
In-Reply-To: <20250821-v6-17-topic-imx8mp-skov-dts-jutouch-10inch-v1-0-b492ef807d12@pengutronix.de>
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

In preparation for adding a new device tree variant with a different
panel, describe the DT compatible in the binding.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index a3e9f9e0735a8808721ebba713f14818ee49172a..95078d1a70b07e9c0d298f18ce4eaba3aebd4591 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -1111,6 +1111,7 @@ properties:
               - skov,imx8mp-skov-revb-lt6 # SKOV i.MX8MP climate control with 7” panel
               - skov,imx8mp-skov-revb-mi1010ait-1cp1 # SKOV i.MX8MP climate control with 10.1" panel
               - skov,imx8mp-skov-revc-bd500 # SKOV i.MX8MP climate control with LED frontplate
+              - skov,imx8mp-skov-revc-jutouch-jt101tm023 # SKOV i.MX8MP climate control with 10" JuTouch panel
               - skov,imx8mp-skov-revc-tian-g07017 # SKOV i.MX8MP climate control with 7" panel
               - ysoft,imx8mp-iota2-lumpy  # Y Soft i.MX8MP IOTA2 Lumpy Board
           - const: fsl,imx8mp

-- 
2.49.0


