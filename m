Return-Path: <devicetree+bounces-59178-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 315E98A4538
	for <lists+devicetree@lfdr.de>; Sun, 14 Apr 2024 22:40:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BD40AB209FC
	for <lists+devicetree@lfdr.de>; Sun, 14 Apr 2024 20:40:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F069313775A;
	Sun, 14 Apr 2024 20:40:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=luigi311.com header.i=@luigi311.com header.b="KCbKvaV+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-108-mta226.mxroute.com (mail-108-mta226.mxroute.com [136.175.108.226])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 606D6137751
	for <devicetree@vger.kernel.org>; Sun, 14 Apr 2024 20:40:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=136.175.108.226
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713127232; cv=none; b=fb9ZLtWqxEgKMWzqxg2Q76RgzhNB6K5lOOVWZ5JqmrO0r/T2KmEwtzOgJLyhUc9N4Pa9aa67MRkDFb4K0tqBybwDRE6s8FQyMjEz+H3kX5oBiBYH95LCHBlTHLR2qXm4pgFyA9I9e6bGKRQkdolLFbXC96hn1cjlKj5Uc2+8IRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713127232; c=relaxed/simple;
	bh=+sFbuAZg5yu7TysrDNdaOxjpNwDMCdp+9SgLS1wKCEQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Vl3bVswaDNLWedfynijnaBvCJaspxb5R7vA9o448ZUjvAVkAWjPhr8aOS34V2N3XvNhEhQxN4COlbFyRwRtRLFTMvDAUuUDz61TBdiiNe2QRPU7AJ8LoaT6s82kFo++Wvus/C1dBcgi46yJyZOcKb6BKyHOmgmHqmBxcg1fTy3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=luigi311.com; spf=pass smtp.mailfrom=luigi311.com; dkim=pass (2048-bit key) header.d=luigi311.com header.i=@luigi311.com header.b=KCbKvaV+; arc=none smtp.client-ip=136.175.108.226
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=luigi311.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=luigi311.com
Received: from filter006.mxroute.com ([136.175.111.2] filter006.mxroute.com)
 (Authenticated sender: mN4UYu2MZsgR)
 by mail-108-mta226.mxroute.com (ZoneMTA) with ESMTPSA id 18ede5236dc0003bea.00f
 for <devicetree@vger.kernel.org>
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384);
 Sun, 14 Apr 2024 20:35:13 +0000
X-Zone-Loop: a2ccf96b4004edae1ac9fa73d8e186cba6a1b380038e
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=luigi311.com; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=tNSp6sgHgm0/xBY9U4t7Qdk6wqjer/597ZfqTYMH0pE=; b=KCbKvaV+XOtXf5R/VBfGX7mLMV
	A849Gl6TQSYL1JQRfGMZaHyiT7OltujdP70ZBmU/ZIWjG0J7WJNedgXvz8P2D5TrPHdEtNVn5mhS1
	riXhB8JAXzwS0NlZajK/+Y2XD7UCgbfr37rox8qv42PiFX+MhlKaoJIMiklU3STndBjuy5W5F1CG6
	aKO3+TLTngrToBkejFc0IW3vfFSyFEqcZy4j6edQbrSChc+lBbUekwkOHwU9iN9pfMsGcFt0Sb1OL
	Qn1GJrtDcqKljLi1/2pWCHijOnheMh2l2WzcmCMuKNJylWECsCw2PkmdrOzbw/NNNFykjovGcuvXL
	xu9+0ikg==;
From: git@luigi311.com
To: linux-media@vger.kernel.org
Cc: dave.stevenson@raspberrypi.com,
	jacopo.mondi@ideasonboard.com,
	mchehab@kernel.org,
	robh@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	shawnguo@kernel.org,
	s.hauer@pengutronix.de,
	kernel@pengutronix.de,
	festevam@gmail.com,
	sakari.ailus@linux.intel.com,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	pavel@ucw.cz,
	phone-devel@vger.kernel.org,
	Luis Garcia <git@luigi311.com>
Subject: [PATCH v4 01/25] media: i2c: imx258: Remove unused defines
Date: Sun, 14 Apr 2024 14:34:39 -0600
Message-ID: <20240414203503.18402-2-git@luigi311.com>
In-Reply-To: <20240414203503.18402-1-git@luigi311.com>
References: <20240414203503.18402-1-git@luigi311.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authenticated-Id: personal@luigi311.com

From: Dave Stevenson <dave.stevenson@raspberrypi.com>

The IMX258_FLL_* defines are unused. Remove them.

Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
Reviewed-by: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
Signed-off-by: Luis Garcia <git@luigi311.com>
Reviewed-by: Pavel Machek <pavel@ucw.cz>
---
 drivers/media/i2c/imx258.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/media/i2c/imx258.c b/drivers/media/i2c/imx258.c
index a577afb530b7..2dbafd21dd70 100644
--- a/drivers/media/i2c/imx258.c
+++ b/drivers/media/i2c/imx258.c
@@ -29,12 +29,6 @@
 #define IMX258_VTS_30FPS_VGA		0x034c
 #define IMX258_VTS_MAX			0xffff
 
-/*Frame Length Line*/
-#define IMX258_FLL_MIN			0x08a6
-#define IMX258_FLL_MAX			0xffff
-#define IMX258_FLL_STEP			1
-#define IMX258_FLL_DEFAULT		0x0c98
-
 /* HBLANK control - read only */
 #define IMX258_PPL_DEFAULT		5352
 
-- 
2.44.0


