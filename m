Return-Path: <devicetree+bounces-4172-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F28457B1771
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 11:35:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 87076B20585
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 09:35:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EEA04341AF;
	Thu, 28 Sep 2023 09:35:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DD6731A83
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 09:35:46 +0000 (UTC)
Received: from xavier.telenet-ops.be (xavier.telenet-ops.be [IPv6:2a02:1800:120:4::f00:14])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 643EA95
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 02:35:43 -0700 (PDT)
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed40:e207:8adb:af22:7f1e])
	by xavier.telenet-ops.be with bizsmtp
	id rMbg2A00T3w8i7m01MbgCV; Thu, 28 Sep 2023 11:35:40 +0200
Received: from rox.of.borg ([192.168.97.57])
	by ramsan.of.borg with esmtp (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1qlnQR-004mDj-Og;
	Thu, 28 Sep 2023 11:35:40 +0200
Received: from geert by rox.of.borg with local (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1qlnQq-001DIH-7f;
	Thu, 28 Sep 2023 11:35:40 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Rob Herring <robh+dt@kernel.org>,
	Frank Rowand <frowand.list@gmail.com>
Cc: devicetree@vger.kernel.org,
	Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH] of: overlay: Reorder struct fragment fields kerneldoc
Date: Thu, 28 Sep 2023 11:35:39 +0200
Message-Id: <cfa36d2bb95e3c399c415dbf58057302c70ef375.1695893695.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00,
	HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,
	SPF_NONE autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

The fields of the fragment structure were reordered, but the kerneldoc
was not updated.

Fixes: 81225ea682f45629 ("of: overlay: reorder fields in struct fragment")
Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
 drivers/of/overlay.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/of/overlay.c b/drivers/of/overlay.c
index dfb6fb962fc705ee..a9a292d6d59b263e 100644
--- a/drivers/of/overlay.c
+++ b/drivers/of/overlay.c
@@ -45,8 +45,8 @@ struct target {
 
 /**
  * struct fragment - info about fragment nodes in overlay expanded device tree
- * @target:	target of the overlay operation
  * @overlay:	pointer to the __overlay__ node
+ * @target:	target of the overlay operation
  */
 struct fragment {
 	struct device_node *overlay;
-- 
2.34.1


