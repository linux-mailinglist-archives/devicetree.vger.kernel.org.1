Return-Path: <devicetree+bounces-59179-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BDB18A453C
	for <lists+devicetree@lfdr.de>; Sun, 14 Apr 2024 22:41:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7D4201C20E03
	for <lists+devicetree@lfdr.de>; Sun, 14 Apr 2024 20:41:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6DB36137912;
	Sun, 14 Apr 2024 20:40:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=luigi311.com header.i=@luigi311.com header.b="jGzfHCb2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-108-mta82.mxroute.com (mail-108-mta82.mxroute.com [136.175.108.82])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA7C1137905
	for <devicetree@vger.kernel.org>; Sun, 14 Apr 2024 20:40:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=136.175.108.82
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713127237; cv=none; b=JFi5I4dkLiCm7VvxElKKb63oNvBpJFaWAL39IaAej7iHrmBkHTaFakuo9QjUf/hMop2P+Uum+RR6shrm4TO/sKKxffk4L0HMh2uoe3WgUhILu4SiMPl4Yx6AlqOZVrj4/Fnid7Yb1XLcx5YWOpa+Fb6tiuYcqreM+gNJi9AyVgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713127237; c=relaxed/simple;
	bh=g6reCIRH0/JcMBOnGIeqjTP1oTROyutPaPbhmdHf1Dg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=BEm7KrganjdA/HQ3beNm1qbUyFqToy9tPVFhf2c/v3jWZ+X5UkXLKV/NEAb2bhSstMr5e1kQwrQ844C+vbg+976600a0PYOUYGdH7zWSO+OoTpgh+vJ05lWH9rCfBXkebcfyqM5TFcUW34TBTlRlaTqGF2UJubimoL/VuKVQMks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=luigi311.com; spf=pass smtp.mailfrom=luigi311.com; dkim=pass (2048-bit key) header.d=luigi311.com header.i=@luigi311.com header.b=jGzfHCb2; arc=none smtp.client-ip=136.175.108.82
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=luigi311.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=luigi311.com
Received: from filter006.mxroute.com ([136.175.111.2] filter006.mxroute.com)
 (Authenticated sender: mN4UYu2MZsgR)
 by mail-108-mta82.mxroute.com (ZoneMTA) with ESMTPSA id 18ede5245850003bea.00f
 for <devicetree@vger.kernel.org>
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384);
 Sun, 14 Apr 2024 20:35:17 +0000
X-Zone-Loop: 264a3b9d02f74bf91e91d2e1f7307517b9ff742d689c
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=luigi311.com; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=DCgAgHlEMGBMjcN16C1bbheZthQRfCGTfl1ll6guAKc=; b=jGzfHCb2Gxx+SYTDmCcwvkYkwW
	95xJLK3AyV6eWOafIpUxG8243dqBAoBJ7Ri+vFlveBn0Paq4DZcS78+cPwd0JTnbyhx46NsYrQ6ok
	/9yYQX91caNjPuyszl27D+Ife5VsS25GkrIFZXWf2X7Rz8R5FoqaU0lHs6WGYk8hIKs6Cze6AJ2XJ
	wkX2HAuhtARFR44+7Fqy1Jo4jnot6YTh/57hsIV5AYfEpcBZneEGzC+EM5D7cC+UnYTj9U5Q/ECkX
	Hm3ABoLaJH6ljsCnJ317nVGKe6Vod8wbSPDS4be7iGw4Qq6xMlb8K6IxN+4+PTRDKr9R2cnphjOUY
	6IP8+CWQ==;
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
Subject: [PATCH v4 03/25] media: i2c: imx258: Disable digital cropping on binned modes
Date: Sun, 14 Apr 2024 14:34:41 -0600
Message-ID: <20240414203503.18402-4-git@luigi311.com>
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

The binned modes set DIG_CROP_X_OFFSET and DIG_CROP_IMAGE_WIDTH
to less than the full image, even though the image being captured
is meant to be a scaled version of the full array size.

Reduce X_OFFSET to 0, and increase IMAGE_WIDTH to the full array.

Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
Signed-off-by: Luis Garcia <git@luigi311.com>
Reviewed-by: Pavel Machek <pavel@ucw.cz>
---
 drivers/media/i2c/imx258.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/media/i2c/imx258.c b/drivers/media/i2c/imx258.c
index 4a7048d834c6..0ae4371940ca 100644
--- a/drivers/media/i2c/imx258.c
+++ b/drivers/media/i2c/imx258.c
@@ -340,11 +340,11 @@ static const struct imx258_reg mode_2104_1560_regs[] = {
 	{ 0x0404, 0x00 },
 	{ 0x0405, 0x20 },
 	{ 0x0408, 0x00 },
-	{ 0x0409, 0x02 },
+	{ 0x0409, 0x00 },
 	{ 0x040A, 0x00 },
 	{ 0x040B, 0x00 },
 	{ 0x040C, 0x10 },
-	{ 0x040D, 0x6A },
+	{ 0x040D, 0x70 },
 	{ 0x040E, 0x06 },
 	{ 0x040F, 0x18 },
 	{ 0x3038, 0x00 },
@@ -459,11 +459,11 @@ static const struct imx258_reg mode_1048_780_regs[] = {
 	{ 0x0404, 0x00 },
 	{ 0x0405, 0x40 },
 	{ 0x0408, 0x00 },
-	{ 0x0409, 0x06 },
+	{ 0x0409, 0x00 },
 	{ 0x040A, 0x00 },
 	{ 0x040B, 0x00 },
 	{ 0x040C, 0x10 },
-	{ 0x040D, 0x64 },
+	{ 0x040D, 0x70 },
 	{ 0x040E, 0x03 },
 	{ 0x040F, 0x0C },
 	{ 0x3038, 0x00 },
-- 
2.44.0


