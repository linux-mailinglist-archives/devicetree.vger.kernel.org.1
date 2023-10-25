Return-Path: <devicetree+bounces-11743-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CB1FB7D67D1
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 12:05:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 838F72813A4
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 10:05:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 81065241F4;
	Wed, 25 Oct 2023 10:05:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EE6C12B80
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 10:05:27 +0000 (UTC)
Received: from xavier.telenet-ops.be (xavier.telenet-ops.be [IPv6:2a02:1800:120:4::f00:14])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D3B1DDD
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 03:05:22 -0700 (PDT)
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed40:7faa:e55:54a:cff])
	by xavier.telenet-ops.be with bizsmtp
	id 2A5N2B00H5Uc89d01A5Nh7; Wed, 25 Oct 2023 12:05:22 +0200
Received: from rox.of.borg ([192.168.97.57])
	by ramsan.of.borg with esmtp (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1qvalH-007TAZ-FQ;
	Wed, 25 Oct 2023 12:05:22 +0200
Received: from geert by rox.of.borg with local (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1qvalO-00BwAp-B6;
	Wed, 25 Oct 2023 12:05:22 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Rob Herring <robh+dt@kernel.org>,
	Frank Rowand <frowand.list@gmail.com>
Cc: devicetree@vger.kernel.org,
	Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH] of: overlay: unittest: overlay_bad_unresolved: Spelling s/ok/okay/
Date: Wed, 25 Oct 2023 12:05:21 +0200
Message-Id: <923f4f605b86f23d001c6efc9c2237ab449d447d.1698228277.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

While "ok" is recognized, the proper status value for an operational
device is "okay".

Fixes: eb38b9529aefa344 ("of: overlay: unittest: Add test for unresolved symbol")
Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
 drivers/of/unittest-data/overlay_bad_unresolved.dtso | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/of/unittest-data/overlay_bad_unresolved.dtso b/drivers/of/unittest-data/overlay_bad_unresolved.dtso
index 3b75a53ae8a492bd..f34d8780d42d229f 100644
--- a/drivers/of/unittest-data/overlay_bad_unresolved.dtso
+++ b/drivers/of/unittest-data/overlay_bad_unresolved.dtso
@@ -3,5 +3,5 @@
 /plugin/;
 
 &this_label_does_not_exist {
-	status = "ok";
+	status = "okay";
 };
-- 
2.34.1


