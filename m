Return-Path: <devicetree+bounces-241690-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BFB98C8119C
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 15:43:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B65113A3FB1
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 14:42:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28513313E2F;
	Mon, 24 Nov 2025 14:41:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="1ootpoAE"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-02.galae.net (smtpout-02.galae.net [185.246.84.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F215E281341
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 14:41:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.84.56
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763995289; cv=none; b=jINDTIxS+23TwN+o0HVxNMiaScK+NevM4DrJCyMwC84mgjBX3SRFhCqRKdjFc8uTNGYTeL+SVEZnDRIQquE/WEdVNIYKMPZTdSMCDBTN+L+7T/jq5ijrGfPKbJ/F3rOaTBMCgw+zLOhfwPzv6U7ZIiQFzyXNAs8tJAH+V0+iT5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763995289; c=relaxed/simple;
	bh=u7WHbCq+A9ZPz9uty8ilGxI8CD4zGA5iY19dCDG1ULY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=YxxAqrroCcp03RGpy744XZ7wBFdrKlyYECkjRFXiuAP1U8yqFKFRWNgrlAV7zCmomB8B+EdBjLiKhJWlqH+SouCcPDqOFQBBaLWLdPdbyUGg2xSFWgcfE5aeqwjv/960F+R/dIe9cqtKPG/aipbzF28aVgVF+FJJ4ViwAp3qV84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=1ootpoAE; arc=none smtp.client-ip=185.246.84.56
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id 909811A1D20;
	Mon, 24 Nov 2025 14:41:25 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 5DCF9606FC;
	Mon, 24 Nov 2025 14:41:25 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 7B94B10371DB1;
	Mon, 24 Nov 2025 15:41:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1763995284; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=n9ugHQUamTXVnl8BX59S+YCRTdmSd34Rjsc+/50EYuQ=;
	b=1ootpoAEXCHq3W9o+Jefg/3B2wqRPAlTFEXq1Vaj8EbaKYt+cmvYcFyeU1Vt8wrhlQILGw
	7M6L9fFmK2PBTwj/JJBSWx0wfv8leqDzyuuFFs38VvS8U5Z4JTrKcHWMBNpzzSXnHNvSKx
	Krjp7rzb160j5LuMaoRLf/6bRaDp8r6CVi+w6aBgibPMEmRfsBFzvEbYtQ054OvCSnlYer
	UZYlLk9VlrNuRpKBalEm4CYPllCrTtSnFiT/wKSKejxc8t1PKOKrqzuLhjzN+j6XVagfEn
	x6EcLXEvZZfbxNArhnsNL6EsOqXbr3NZbTrIc8Ym/lcZnY2dJDA3dkNGq9alRQ==
From: =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>
Date: Mon, 24 Nov 2025 15:41:06 +0100
Subject: [PATCH v4 5/7] reset: eyeq: drop device_set_of_node_from_dev()
 done by parent
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20251124-macb-phy-v4-5-955c625a81a7@bootlin.com>
References: <20251124-macb-phy-v4-0-955c625a81a7@bootlin.com>
In-Reply-To: <20251124-macb-phy-v4-0-955c625a81a7@bootlin.com>
To: Vladimir Kondratiev <vladimir.kondratiev@mobileye.com>, 
 =?utf-8?q?Gr=C3=A9gory_Clement?= <gregory.clement@bootlin.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>
Cc: linux-mips@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-clk@vger.kernel.org, 
 =?utf-8?q?Beno=C3=AEt_Monin?= <benoit.monin@bootlin.com>, 
 Maxime Chevallier <maxime.chevallier@bootlin.com>, 
 Tawfik Bayouk <tawfik.bayouk@mobileye.com>, 
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>, 
 Jerome Brunet <jbrunet@baylibre.com>
X-Mailer: b4 0.14.3
X-Last-TLS-Session-Version: TLSv1.3

Our parent driver (clk-eyeq) now does the
	device_set_of_node_from_dev(dev, dev->parent)
call through the newly introduced devm_auxiliary_device_create() helper.

Doing it again in the reset-eyeq probe would be redundant.
Drop both the WARN_ON() and the device_set_of_node_from_dev() call.
Also fix the following comment that talks about "our newfound OF node".

Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>
Acked-by: Philipp Zabel <p.zabel@pengutronix.de>
Signed-off-by: Théo Lebrun <theo.lebrun@bootlin.com>
---
 drivers/reset/reset-eyeq.c | 24 ++----------------------
 1 file changed, 2 insertions(+), 22 deletions(-)

diff --git a/drivers/reset/reset-eyeq.c b/drivers/reset/reset-eyeq.c
index 2d3998368a1c..8018fa895427 100644
--- a/drivers/reset/reset-eyeq.c
+++ b/drivers/reset/reset-eyeq.c
@@ -410,13 +410,6 @@ static int eqr_of_xlate_twocells(struct reset_controller_dev *rcdev,
 	return eqr_of_xlate_internal(rcdev, reset_spec->args[0], reset_spec->args[1]);
 }
 
-static void eqr_of_node_put(void *_dev)
-{
-	struct device *dev = _dev;
-
-	of_node_put(dev->of_node);
-}
-
 static int eqr_probe(struct auxiliary_device *adev,
 		     const struct auxiliary_device_id *id)
 {
@@ -427,21 +420,8 @@ static int eqr_probe(struct auxiliary_device *adev,
 	int ret;
 
 	/*
-	 * We are an auxiliary device of clk-eyeq. We do not have an OF node by
-	 * default; let's reuse our parent's OF node.
-	 */
-	WARN_ON(dev->of_node);
-	device_set_of_node_from_dev(dev, dev->parent);
-	if (!dev->of_node)
-		return -ENODEV;
-
-	ret = devm_add_action_or_reset(dev, eqr_of_node_put, dev);
-	if (ret)
-		return ret;
-
-	/*
-	 * Using our newfound OF node, we can get match data. We cannot use
-	 * device_get_match_data() because it does not match reused OF nodes.
+	 * Get match data. We cannot use device_get_match_data() because it does
+	 * not accept reused OF nodes; see device_set_of_node_from_dev().
 	 */
 	match = of_match_node(dev->driver->of_match_table, dev->of_node);
 	if (!match || !match->data)

-- 
2.51.2


