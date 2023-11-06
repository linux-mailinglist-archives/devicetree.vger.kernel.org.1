Return-Path: <devicetree+bounces-14137-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ECC07E22B5
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 14:03:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6E12C1C20AFC
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 13:03:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E9F8F1F951;
	Mon,  6 Nov 2023 13:03:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="UzH0yQLu"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E4CF1A592
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 13:03:46 +0000 (UTC)
Received: from relay7-d.mail.gandi.net (relay7-d.mail.gandi.net [217.70.183.200])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 86BEED69;
	Mon,  6 Nov 2023 05:03:42 -0800 (PST)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 1E70920007;
	Mon,  6 Nov 2023 13:03:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1699275820;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=xD40N7eJ3/Dqdh5WzUsiLDNx7xfNROKgwraBAawW/VQ=;
	b=UzH0yQLur7WI23QH023Au1eyFD/dSV/E1KDZOWw96lzrJF+FxuQo/KhNyUCc6IxMmpI1ms
	OaF9IYuyBk1aDG5meyXJ1REJzJI6Ab3aYkw9USIBFT7EVnTWzJPv/bEQriNA6vaHC1LfOC
	q+aeD/KzxulJbRqbW8hpJR9IBadzTs0SwDj4o5YEfuJvtdRW9ehy0hXw9HYNj6PliNVBYA
	4QkCoXLVzYxMnwHPhRlRHrvjD7F4b/+r31KPkwEcnmSqkbIDpydC7S92ktw82ipycCuCG5
	uCdDGFdbanGe+P5Em9i1vrg6ruMsjP9D79hXbxWai+V/ibNrDPd8kfUkzt7vpA==
From: Luca Ceresoli <luca.ceresoli@bootlin.com>
Date: Mon, 06 Nov 2023 14:03:24 +0100
Subject: [PATCH] of: overlay: enable of_overlay_fdt_apply() kerneldoc
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231106-of_overlay_fdt_apply-kerneldoc-v1-1-9a2d132bc6c1@bootlin.com>
X-B4-Tracking: v=1; b=H4sIABvkSGUC/x3N0QqEIBBA0V+JeU7IrFj6lQhxddwdVlTGiI3o3
 5Mez8u9JxRkwgJzcwLjToVSrJBtA/Zr4gcFuWrou15J2U0ieZ125GAO7d2mTc7hED/kiMElK8b
 JvAdp7Us5BTWSGT39n8GyXtcN5o4JfnAAAAA=
To: Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>
Cc: Geert Uytterhoeven <geert+renesas@glider.be>, 
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Luca Ceresoli <luca.ceresoli@bootlin.com>
X-Mailer: b4 0.12.3
X-GND-Sasl: luca.ceresoli@bootlin.com

of_overlay_fdt_apply() already has a kerneldoc-formatted documentation,
except it is nor marked as such. Adding the second asterisk is enough for
the documentation to take it into account correctly.

Signed-off-by: Luca Ceresoli <luca.ceresoli@bootlin.com>
---
 drivers/of/overlay.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/of/overlay.c b/drivers/of/overlay.c
index a9a292d6d59b..2ae7e9d24a64 100644
--- a/drivers/of/overlay.c
+++ b/drivers/of/overlay.c
@@ -964,7 +964,7 @@ static int of_overlay_apply(struct overlay_changeset *ovcs,
 	return ret;
 }
 
-/*
+/**
  * of_overlay_fdt_apply() - Create and apply an overlay changeset
  * @overlay_fdt:	pointer to overlay FDT
  * @overlay_fdt_size:	number of bytes in @overlay_fdt

---
base-commit: d2f51b3516dade79269ff45eae2a7668ae711b25
change-id: 20231106-of_overlay_fdt_apply-kerneldoc-56ab41cc83d3

Best regards,
-- 
Luca Ceresoli <luca.ceresoli@bootlin.com>


