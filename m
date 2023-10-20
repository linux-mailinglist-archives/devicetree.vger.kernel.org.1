Return-Path: <devicetree+bounces-10390-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D92E87D1027
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 15:00:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5C2A5B21362
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 13:00:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B5991A736;
	Fri, 20 Oct 2023 13:00:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b="XCTUke/R"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 943171A729
	for <devicetree@vger.kernel.org>; Fri, 20 Oct 2023 13:00:29 +0000 (UTC)
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0BA5DD57;
	Fri, 20 Oct 2023 06:00:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1697806827; x=1729342827;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=A4GXrDNHTGMFmp07G5G0Ww5OP+EEWgvQMbcH27cLW/c=;
  b=XCTUke/RSjZOstVAUSJXKxEkzAhIqwLExZWJWZHb2KxuTtBwHMY/65M0
   A2JAhOLII8iVOvzSKtlw+jEpbOTalpxsm58UKMhdNgA9pRbf1FVQ+IEux
   VH0h3yUDGPGG/6o6K55jmFa1DKoBJ2u9QYqU9lIte/wWWsa1SOuKoNQ9q
   F/C0bfvfPUp02SeQYdQUNFFQd9P735Fln+EnISd7bmKc9XWKZncfZqFs1
   e3JS/NhrEZQQI7E1vMvylIFNzTfLbengvWHxJjLC0cLaPLP6UOZ4UuuH1
   ld5txTmZb5ds4BqkminGXjRuLqIDgCoAhGsIj5S8hH1lDXHP70Ehh0lyM
   g==;
X-IronPort-AV: E=Sophos;i="6.03,238,1694728800"; 
   d="scan'208";a="33575469"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 20 Oct 2023 15:00:22 +0200
Received: from steina-w.tq-net.de (steina-w.tq-net.de [10.123.53.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id C8D77280084;
	Fri, 20 Oct 2023 15:00:21 +0200 (CEST)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Abel Vesa <abelvesa@kernel.org>,
	Peng Fan <peng.fan@nxp.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Marek Vasut <marex@denx.de>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	NXP Linux Team <linux-imx@nxp.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux@ew.tq-group.com,
	linux-clk@vger.kernel.org,
	linux-pm@vger.kernel.org
Subject: [PATCH 1/5] soc: imx: imx93-blk-ctrl: Scan subnodes and bind drivers to them
Date: Fri, 20 Oct 2023 15:00:14 +0200
Message-Id: <20231020130019.665853-2-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231020130019.665853-1-alexander.stein@ew.tq-group.com>
References: <20231020130019.665853-1-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This particular block can have DT subnodes describing the LVDS LDB
bridge. Instead of misusing simple-bus to scan for those nodes, do
the scan within the driver.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 drivers/pmdomain/imx/imx93-blk-ctrl.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/pmdomain/imx/imx93-blk-ctrl.c b/drivers/pmdomain/imx/imx93-blk-ctrl.c
index 40bd90f8b977..dbce40297078 100644
--- a/drivers/pmdomain/imx/imx93-blk-ctrl.c
+++ b/drivers/pmdomain/imx/imx93-blk-ctrl.c
@@ -7,6 +7,7 @@
 #include <linux/device.h>
 #include <linux/module.h>
 #include <linux/of.h>
+#include <linux/of_platform.h>
 #include <linux/platform_device.h>
 #include <linux/pm_domain.h>
 #include <linux/pm_runtime.h>
@@ -297,8 +298,14 @@ static int imx93_blk_ctrl_probe(struct platform_device *pdev)
 
 	dev_set_drvdata(dev, bc);
 
+	ret = devm_of_platform_populate(dev);
+	if (ret)
+		goto cleanup_provider;
+
 	return 0;
 
+cleanup_provider:
+	of_genpd_del_provider(dev->of_node);
 cleanup_pds:
 	for (i--; i >= 0; i--)
 		pm_genpd_remove(&bc->domains[i].genpd);
-- 
2.34.1


