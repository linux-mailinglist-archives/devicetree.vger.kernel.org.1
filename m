Return-Path: <devicetree+bounces-16716-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A120A7EF6E8
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 18:20:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4B9D41F22903
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 17:20:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C21DF43163;
	Fri, 17 Nov 2023 17:20:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pt6wObhf"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A417D43147
	for <devicetree@vger.kernel.org>; Fri, 17 Nov 2023 17:20:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2965FC433C7;
	Fri, 17 Nov 2023 17:20:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700241616;
	bh=pT4H+8f476H52UEU9hpQ7SOhDZTw4TDB9JYhp+a1A9g=;
	h=From:To:Cc:Subject:Date:From;
	b=pt6wObhfMTV/kYZU1DOo+p424g21J9U41kwCZ4eeImde232ZgsYOb9j0+iH0xjpuL
	 +rXv9GDzaa+SBNQ8w3AAXFOkmktloa16H/d11M3QC2WJvJntWJ69YnHpcIsuUUDdZA
	 ehxkQmGcW6Zu6aaBACwac6DzcDdKyNUbvYn0sSDtCBddnAqYVB0aOi64eZICmHgHvL
	 r+iAjvijI8vo6oeKL0QB18Cu0dQqcGSU3QwuF8NFSPhTCIdnz2jc+Y5wzCQKEdrYEF
	 z23y0y0/9TaUMmVMVX7NcrDqK8SeawO8rNLH9C7szdjrpEN4pyqT8uKZMaxCgKMk7e
	 YrWm0qq1NVThQ==
Received: from johan by xi.lan with local (Exim 4.96.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1r42Vv-0005My-2e;
	Fri, 17 Nov 2023 18:20:19 +0100
From: Johan Hovold <johan+linaro@kernel.org>
To: Rob Herring <robh+dt@kernel.org>
Cc: Frank Rowand <frowand.list@gmail.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH] of: fix recursion typo in kernel doc
Date: Fri, 17 Nov 2023 18:16:28 +0100
Message-ID: <20231117171628.20139-1-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.41.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Fix a typo in the kernel doc for the of_platform_depopulate() functions,
which remove children "recursively".

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/of/platform.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/of/platform.c b/drivers/of/platform.c
index 126d265aa7d8..2293059758d1 100644
--- a/drivers/of/platform.c
+++ b/drivers/of/platform.c
@@ -668,7 +668,7 @@ EXPORT_SYMBOL_GPL(of_platform_device_destroy);
  * @parent: device which children will be removed
  *
  * Complementary to of_platform_populate(), this function removes children
- * of the given device (and, recurrently, their children) that have been
+ * of the given device (and, recursively, their children) that have been
  * created from their respective device tree nodes (and only those,
  * leaving others - eg. manually created - unharmed).
  */
@@ -737,7 +737,7 @@ static int devm_of_platform_match(struct device *dev, void *res, void *data)
  * @dev: device that requested to depopulate from device tree data
  *
  * Complementary to devm_of_platform_populate(), this function removes children
- * of the given device (and, recurrently, their children) that have been
+ * of the given device (and, recursively, their children) that have been
  * created from their respective device tree nodes (and only those,
  * leaving others - eg. manually created - unharmed).
  */
-- 
2.41.0


