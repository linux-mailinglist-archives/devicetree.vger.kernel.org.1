Return-Path: <devicetree+bounces-239417-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 74C16C64A16
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 15:24:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id F16C236054E
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 14:22:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ECC14334C26;
	Mon, 17 Nov 2025 14:21:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fe2WSCuq"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C49D7334C1A;
	Mon, 17 Nov 2025 14:21:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763389300; cv=none; b=QibSdfXEkAE8NJRKRtY656qTRd3jGYwAhtDm3HcfuGjz1Tc+bBuPXBOdmaduPV2LxcROLVZfK7fOtCEFz6touAQmrh7uTeJ16wtYi9gVyXT5NebssI9Ziw7dDW9AWCoTMcxEVOgX5Y8xK1lYutnp7GlWzsMITewP49RAafoXxm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763389300; c=relaxed/simple;
	bh=E5fXTu2ulGjFwJu91VzOdzL+58gav1X0Zx4tNynBJCE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=QTNd9CF8Yji6xh+lYIVwjXXBU4/y2tRPnFsfdhbQQ7MmSDhH2t4JOFhI+b4c8e6mecvMM1oh3UFIh1AXpAzbDU/tTxOexUp1wpBv1D2nvKrD4QyGHbi7fbilXfWywqX3OwEgG3kFp75ZFd/KuHIecX79b8riXf7votFIOWIMHG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fe2WSCuq; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 689EDC4CEFB;
	Mon, 17 Nov 2025 14:21:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763389300;
	bh=E5fXTu2ulGjFwJu91VzOdzL+58gav1X0Zx4tNynBJCE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Fe2WSCuqOTlP1MOTMRlS8hJ1LNSjzLqDQaSXo6fJNnQsDiTnKtEGqkQw4zTY3r3h1
	 QPJ34LBLKQ5DATG9u7Lpd5ud7HUa4E+T7vO/v3CoMjGMHWO0J/6zyMs42q41L5JAPR
	 Znxg/KNpW/f+dKJtYbo9g7cCB1SStcjzvTxrl3GoPA8hMyB4BL1FqV5T9ZYeLr5Yk8
	 nAfGhLkjIeULhZEdFhs+KGz5VwQ2lHgKUFH2GBKN/qC+hA31d91lA7p0fG+IV5twCW
	 d2Lozg8aO//XxI/etMFS6ckytkFh4r+j311PVRU/g3FdafYkCpoDPRU3tIb7pB1ArE
	 VKv+4v2HYw/1w==
From: Conor Dooley <conor@kernel.org>
To: linux-kernel@vger.kernel.org
Cc: conor@kernel.org,
	Conor Dooley <conor.dooley@microchip.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Daire McNamara <daire.mcnamara@microchip.com>,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	Pierre-Henry Moussay <pierre-henry.moussay@microchip.com>
Subject: [PATCH v1 3/3] soc: microchip: mpfs-sys-controller: add support for pic64gx
Date: Mon, 17 Nov 2025 14:21:22 +0000
Message-ID: <20251117-partner-anymore-0fe4b6c47557@spud>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251117-mashing-cursor-6e965a77ce6a@spud>
References: <20251117-mashing-cursor-6e965a77ce6a@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=3690; i=conor.dooley@microchip.com; h=from:subject:message-id; bh=NAXbPWlJ0Ex76wD57WQaysCf0x3fTMwkfqbrXzFauUE=; b=kA0DAAoWeLQxh6CCYtIByyZiAGkbL16j45NncLpOgSyJ7o5yeehEnO8TOZkGZPsz2QPX1l9Kb oh1BAAWCgAdFiEEYduOhBqv/ES4Q4zteLQxh6CCYtIFAmkbL14ACgkQeLQxh6CCYtL2xQEA1AK5 shW6IJISM8RTiB+waAO+OXRdTii3dy7Dux1D/QEBAJw3v03Ddoxxtrq9DywZ+IZ70/Gw5n72FSz M6eUpZoUM
X-Developer-Key: i=conor.dooley@microchip.com; a=openpgp; fpr=F9ECA03CF54F12CD01F1655722E2C55B37CF380C
Content-Transfer-Encoding: 8bit

From: Pierre-Henry Moussay <pierre-henry.moussay@microchip.com>

pic64gx is not compatible with mpfs because due to the lack of FPGA
functionality some features are disabled. Notably, anything to do with
FPGA fabric contents is not supported.

Signed-off-by: Pierre-Henry Moussay <pierre-henry.moussay@microchip.com>
Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
---
 drivers/soc/microchip/mpfs-sys-controller.c | 74 +++++++++++++++------
 1 file changed, 54 insertions(+), 20 deletions(-)

diff --git a/drivers/soc/microchip/mpfs-sys-controller.c b/drivers/soc/microchip/mpfs-sys-controller.c
index 30bc45d17d34..02ab0875c911 100644
--- a/drivers/soc/microchip/mpfs-sys-controller.c
+++ b/drivers/soc/microchip/mpfs-sys-controller.c
@@ -36,6 +36,11 @@ struct mpfs_sys_controller {
 	struct kref consumers;
 };
 
+struct mpfs_syscon_config {
+	unsigned int nb_subdevs;
+	struct platform_device *subdevs;
+};
+
 int mpfs_blocking_transaction(struct mpfs_sys_controller *sys_controller, struct mpfs_mss_msg *msg)
 {
 	unsigned long timeout = msecs_to_jiffies(MPFS_SYS_CTRL_TIMEOUT_MS);
@@ -110,25 +115,11 @@ struct mtd_info *mpfs_sys_controller_get_flash(struct mpfs_sys_controller *mpfs_
 }
 EXPORT_SYMBOL(mpfs_sys_controller_get_flash);
 
-static struct platform_device subdevs[] = {
-	{
-		.name		= "mpfs-rng",
-		.id		= -1,
-	},
-	{
-		.name		= "mpfs-generic-service",
-		.id		= -1,
-	},
-	{
-		.name		= "mpfs-auto-update",
-		.id		= -1,
-	},
-};
-
 static int mpfs_sys_controller_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
 	struct mpfs_sys_controller *sys_controller;
+	struct mpfs_syscon_config *of_data;
 	struct device_node *np;
 	int i, ret;
 
@@ -164,11 +155,17 @@ static int mpfs_sys_controller_probe(struct platform_device *pdev)
 
 	platform_set_drvdata(pdev, sys_controller);
 
+	of_data = (struct mpfs_syscon_config *) device_get_match_data(dev);
+	if (!of_data) {
+		dev_err(dev, "Error getting match data\n");
+		return -EINVAL;
+	}
 
-	for (i = 0; i < ARRAY_SIZE(subdevs); i++) {
-		subdevs[i].dev.parent = dev;
-		if (platform_device_register(&subdevs[i]))
-			dev_warn(dev, "Error registering sub device %s\n", subdevs[i].name);
+	for (i = 0; i < of_data->nb_subdevs; i++) {
+		of_data->subdevs[i].dev.parent = dev;
+		if (platform_device_register(&of_data->subdevs[i]))
+			dev_warn(dev, "Error registering sub device %s\n",
+				 of_data->subdevs[i].name);
 	}
 
 	dev_info(&pdev->dev, "Registered MPFS system controller\n");
@@ -183,8 +180,45 @@ static void mpfs_sys_controller_remove(struct platform_device *pdev)
 	mpfs_sys_controller_put(sys_controller);
 }
 
+static struct platform_device mpfs_subdevs[] = {
+	{
+		.name		= "mpfs-rng",
+		.id		= -1,
+	},
+	{
+		.name		= "mpfs-generic-service",
+		.id		= -1,
+	},
+	{
+		.name		= "mpfs-auto-update",
+		.id		= -1,
+	},
+};
+
+static struct platform_device pic64gx_subdevs[] = {
+	{
+		.name		= "mpfs-rng",
+		.id		= -1,
+	},
+	{
+		.name		= "mpfs-generic-service",
+		.id		= -1,
+	},
+};
+
+static const struct mpfs_syscon_config mpfs_config = {
+	.nb_subdevs = ARRAY_SIZE(mpfs_subdevs),
+	.subdevs = mpfs_subdevs,
+};
+
+static const struct mpfs_syscon_config pic64gx_config = {
+	.nb_subdevs = ARRAY_SIZE(pic64gx_subdevs),
+	.subdevs = pic64gx_subdevs,
+};
+
 static const struct of_device_id mpfs_sys_controller_of_match[] = {
-	{.compatible = "microchip,mpfs-sys-controller", },
+	{.compatible = "microchip,mpfs-sys-controller", .data = &mpfs_config},
+	{.compatible = "microchip,pic64gx-sys-controller", .data = &pic64gx_config},
 	{},
 };
 MODULE_DEVICE_TABLE(of, mpfs_sys_controller_of_match);
-- 
2.51.0


