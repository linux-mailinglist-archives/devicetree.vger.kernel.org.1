Return-Path: <devicetree+bounces-71654-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C8A3D8D77DA
	for <lists+devicetree@lfdr.de>; Sun,  2 Jun 2024 22:20:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 69C291F21DA2
	for <lists+devicetree@lfdr.de>; Sun,  2 Jun 2024 20:20:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F00F77115;
	Sun,  2 Jun 2024 20:19:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=luigi311.com header.i=@luigi311.com header.b="BwA9PPuR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-108-mta14.mxroute.com (mail-108-mta14.mxroute.com [136.175.108.14])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFDD06FE16
	for <devicetree@vger.kernel.org>; Sun,  2 Jun 2024 20:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=136.175.108.14
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717359565; cv=none; b=Z4T7AI781+/a/Vsb/Z9+VEkIZBwpOMll7d+ZTlbRmiZD1HjNJyc8WlvOREKmsBjCkoe3KiE+ZVx09QAA5CgysFCopc3vpML5YR68zwkRlnwyTezuS8P+ShZPsfKhjwgk0MdIeu4IqqbzySALy13Y8J3FPpE19odI4p3cuk4ucCM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717359565; c=relaxed/simple;
	bh=pWHVLRfYub4vLHZQ82uqXL9w4o6X1xxrAcCbjuVxJt8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=E8pwMlzeqPK40n/N8UJWq56ptk0HRQs5YHCNaMR+EezpY8xTBZWBVoUYvTlgdIN4YFz0YjcF775ZLdDmmTNU3emLZTXvjmaOrs1Gk3YYshKJcKA8kmEd70Dp+95lKSM1OU80/hj4NHHYygis9Z5vKzJJltNty3t2f5s+rL+qWng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=luigi311.com; spf=pass smtp.mailfrom=luigi311.com; dkim=pass (2048-bit key) header.d=luigi311.com header.i=@luigi311.com header.b=BwA9PPuR; arc=none smtp.client-ip=136.175.108.14
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=luigi311.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=luigi311.com
Received: from filter006.mxroute.com ([136.175.111.3] filter006.mxroute.com)
 (Authenticated sender: mN4UYu2MZsgR)
 by mail-108-mta14.mxroute.com (ZoneMTA) with ESMTPSA id 18fda966845000e2b6.00f
 for <devicetree@vger.kernel.org>
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384);
 Sun, 02 Jun 2024 20:14:01 +0000
X-Zone-Loop: c994fef082aed66fda66ab65da4e2866b7920b81717a
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=luigi311.com; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=cGenqqyPt/Fp5kIA6u0AGK6xiTKXiqyafdjUpgpFSv0=; b=BwA9PPuRMb1ER7LUAlxNZSnpPK
	yHUt4kBJ36mX+jJtAxXO0qh8FySnsDydayabotG3SFwotIiTpSDdZRJIw5M3iMWLP8Uk4xlCOnqrn
	BbQXPVd6motXl6IhZM7wSGbbZ8yP6+dalcjIl7rV6eLbhiH+vGilXBhTMxW+KM3yYJ5Y0Y/peOsPh
	4eAQHgGjfI+AhFAZU9zxku6l1fahOkkhoj9FsjFLNiICYrgL/x77+axiVpT64cd9SDkPIuDFXIQzK
	6/g/pTQszXjt3obAG31lyu1P9CUwR8cOP+sFB7I2QJTUu79TLLwGVj4/AtVHj57spN8yoIq5M/4Sb
	4uWwiOoA==;
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
Subject: [PATCH v6 04/23] media: i2c: imx258: Remove redundant I2C writes.
Date: Sun,  2 Jun 2024 14:13:26 -0600
Message-ID: <20240602201345.328737-5-git@luigi311.com>
In-Reply-To: <20240602201345.328737-1-git@luigi311.com>
References: <20240602201345.328737-1-git@luigi311.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authenticated-Id: personal@luigi311.com

From: Dave Stevenson <dave.stevenson@raspberrypi.com>

Registers 0x0202 and 0x0203 are written via the control handler
for V4L2_CID_EXPOSURE, so are not needed from the mode lists.

Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
Reviewed-by: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
Signed-off-by: Luis Garcia <git@luigi311.com>
Reviewed-by: Pavel Machek <pavel@ucw.cz>
---
 drivers/media/i2c/imx258.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/media/i2c/imx258.c b/drivers/media/i2c/imx258.c
index 0ae4371940ca..df7ed4716762 100644
--- a/drivers/media/i2c/imx258.c
+++ b/drivers/media/i2c/imx258.c
@@ -237,8 +237,6 @@ static const struct imx258_reg mode_4208x3120_regs[] = {
 	{ 0x034E, 0x0C },
 	{ 0x034F, 0x30 },
 	{ 0x0350, 0x01 },
-	{ 0x0202, 0x0C },
-	{ 0x0203, 0x46 },
 	{ 0x0204, 0x00 },
 	{ 0x0205, 0x00 },
 	{ 0x020E, 0x01 },
@@ -356,8 +354,6 @@ static const struct imx258_reg mode_2104_1560_regs[] = {
 	{ 0x034E, 0x06 },
 	{ 0x034F, 0x18 },
 	{ 0x0350, 0x01 },
-	{ 0x0202, 0x06 },
-	{ 0x0203, 0x2E },
 	{ 0x0204, 0x00 },
 	{ 0x0205, 0x00 },
 	{ 0x020E, 0x01 },
@@ -475,8 +471,6 @@ static const struct imx258_reg mode_1048_780_regs[] = {
 	{ 0x034E, 0x03 },
 	{ 0x034F, 0x0C },
 	{ 0x0350, 0x01 },
-	{ 0x0202, 0x03 },
-	{ 0x0203, 0x42 },
 	{ 0x0204, 0x00 },
 	{ 0x0205, 0x00 },
 	{ 0x020E, 0x01 },
-- 
2.44.0


