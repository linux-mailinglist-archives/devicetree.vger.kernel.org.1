Return-Path: <devicetree+bounces-256889-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7377FD3AAA0
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 14:45:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 34FB33065E0F
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 13:44:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C229636C0AC;
	Mon, 19 Jan 2026 13:44:55 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E9FE35BDC3
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 13:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768830295; cv=none; b=bTJtbRGEHKsQkpl/W8pmqdEPbGf7Tp667Co2t9+FABBW5MZQ8vbCyyu86btj6HgY5hfnONk9Gu7Hg/twM273b/bJDt2fofYoIB2Zel4du6j2Ymwd1j53zV2oGnme1TSxYr6PDFCQCjg32oMKWMC1SlIMDDG3VVlV7qB1bCtJ+3I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768830295; c=relaxed/simple;
	bh=rlI2yVfUhfadGb4hfoJmssOfe4+FxvbRPjAO2Aaa60g=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=aA8hKIdA07Ql3URITJV/BS1jWiX6EFdHAXeDw+oT3pDQ+mtlwTxSCHrVT9LIyHD6WDzV+goahpLdYdm0mGABDPdqevdW0aTdnpZLfpQ8T2eaCmsIrYQ+dC831c3xse8VxhV726OzkpgBIWi7sWhk6Oln4m0f3DrzZZFkIuy/74c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1vhpYk-0006Dl-Fj; Mon, 19 Jan 2026 14:44:46 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Mon, 19 Jan 2026 14:44:42 +0100
Subject: [PATCH v2 1/2] dt-bindings: display: simple: add EDT ET057023UDBA
 panel
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260119-v6-18-topic-panel-simple-et057023udba-v2-1-3c73f0c9d87a@pengutronix.de>
References: <20260119-v6-18-topic-panel-simple-et057023udba-v2-0-3c73f0c9d87a@pengutronix.de>
In-Reply-To: <20260119-v6-18-topic-panel-simple-et057023udba-v2-0-3c73f0c9d87a@pengutronix.de>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Jessica Zhang <jessica.zhang@oss.qualcomm.com>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Thierry Reding <thierry.reding@gmail.com>, Sam Ravnborg <sam@ravnborg.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, kernel@pengutronix.de, 
 Marco Felsch <m.felsch@pengutronix.de>
X-Mailer: b4 0.14.2
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::28
X-SA-Exim-Mail-From: m.felsch@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

Add EDT ET057023UDBA 5.7" 24-bit 640x480 DPI panel.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 Documentation/devicetree/bindings/display/panel/panel-simple.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
index 2017428d8828e554f26f7c5d585f55a51b74a2ca..56d2a8a98a86d9354e7e27cfc962c61bc8a436d6 100644
--- a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
+++ b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
@@ -103,6 +103,8 @@ properties:
       - dlc,dlc1010gig
         # Emerging Display Technology Corp. 3.5" QVGA TFT LCD panel
       - edt,et035012dm6
+        # Emerging Display Technology Corp. 5.7" 24-bit VGA TFT LCD panel
+      - edt,et057023udba
         # Emerging Display Technology Corp. 5.7" VGA TFT LCD panel
       - edt,et057090dhu
       - edt,et070080dh6

-- 
2.47.3


