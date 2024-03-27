Return-Path: <devicetree+bounces-54011-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1505E88F301
	for <lists+devicetree@lfdr.de>; Thu, 28 Mar 2024 00:23:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 468201C2E2AC
	for <lists+devicetree@lfdr.de>; Wed, 27 Mar 2024 23:23:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 358A9154BF9;
	Wed, 27 Mar 2024 23:22:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=luigi311.com header.i=@luigi311.com header.b="nzfzHTnG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-108-mta65.mxroute.com (mail-108-mta65.mxroute.com [136.175.108.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83277155A21
	for <devicetree@vger.kernel.org>; Wed, 27 Mar 2024 23:22:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=136.175.108.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711581772; cv=none; b=Zyl7DmLoXO3gzfUfM5SuXN9bVDrRm1ahqmledea7YD0a3gkaKuB9jmT9WuTUQC2UZpmAynBi+CuVkqEW5Bf4UPf55rlaZuMjJ88TCG3NK7fhR6xv7FWpzqsC1R/CfNHaeGFvN37jkUnxxZaWiiIJQKqlxtrHrYK7AB+iHyojnc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711581772; c=relaxed/simple;
	bh=B4s2yCDpIKOW86tAjjQ6L/UaYF/IQ6mt7oWrgOD4HUs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ZacKTZGrbsoaA4+fRRPXzk8ub/R+zOE/pyY8a4JBGgylAJxPjvNUaSvfllA4Nfs2kg5Ovkmdr6TwRkhkrrd3MuUW+Cvj77SS6h3FbNQcbeIi58qPT7j65PcTFGLQzet2WT0FuzkNxNFPXPW7k5/XZnIWthEkteTuySAVpQOJDIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=luigi311.com; spf=pass smtp.mailfrom=luigi311.com; dkim=pass (2048-bit key) header.d=luigi311.com header.i=@luigi311.com header.b=nzfzHTnG; arc=none smtp.client-ip=136.175.108.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=luigi311.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=luigi311.com
Received: from filter006.mxroute.com ([136.175.111.2] filter006.mxroute.com)
 (Authenticated sender: mN4UYu2MZsgR)
 by mail-108-mta65.mxroute.com (ZoneMTA) with ESMTPSA id 18e82343dda0003bea.00e
 for <devicetree@vger.kernel.org>
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384);
 Wed, 27 Mar 2024 23:17:25 +0000
X-Zone-Loop: cb5907bea586490499cdc4e6241007fd5838ea99b606
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=luigi311.com; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=8bhqgLzRjHq8zDgKCYHR1LOSNnMHG3H17WmIQSeJXnE=; b=nzfzHTnGwT7apjCKgZJQPReuZE
	nxKFY0VjZI7M5lx4Qw43V+zEhgWz2pYpNQbZdgc7Rl9CoT8UCzLFa1jCESGpMA/0EmH0mV/rrAt2/
	0FpChHxYkictCF4ll7KTeOfILvl1hmvhOxxVTrOLmqjqKGIaU67ci5s4u+CVzOw5YgSTe5ciTd5Qs
	3KFmi15SrfMJ7tZzDbyKLa6VHXHVB/XXwcZNG823zDZO1ypEwHIRAuOClD74C5JxvuvgGyx4tggBP
	/FpK5uS/4IDov8faNXw0vq9xiDP68kpTTBDn0zw+KpTaJHLyK0w2sxzkBhuEK7ZN3AkBpPY+enDqz
	pQz26EOw==;
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
	linux-kernel@vger.kernel.org
Subject: [PATCH 04/23] media: i2c: imx258: Remove redundant I2C writes.
Date: Wed, 27 Mar 2024 17:16:50 -0600
Message-ID: <20240327231710.53188-5-git@luigi311.com>
In-Reply-To: <20240327231710.53188-1-git@luigi311.com>
References: <20240327231710.53188-1-git@luigi311.com>
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
2.42.0


