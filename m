Return-Path: <devicetree+bounces-54008-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4384888F2F7
	for <lists+devicetree@lfdr.de>; Thu, 28 Mar 2024 00:22:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F2C3629D3B8
	for <lists+devicetree@lfdr.de>; Wed, 27 Mar 2024 23:22:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1380E154BF9;
	Wed, 27 Mar 2024 23:22:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=luigi311.com header.i=@luigi311.com header.b="XuedZhcO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-108-mta105.mxroute.com (mail-108-mta105.mxroute.com [136.175.108.105])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 582D1154BEF
	for <devicetree@vger.kernel.org>; Wed, 27 Mar 2024 23:22:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=136.175.108.105
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711581752; cv=none; b=Joc/wFoCrvkmiAoGJwgW+Ssml9rdUTfSZy5Evpafj5qpIuRLGbr38NbyGSr8iOXgP/zVPbni3GJpunj2MLDjAgmM51GnsTYBwb7G8v5b11QFyq0w0rIKaJq5YeCSNzwHzcoTXIuLGGt4tnuqmKiVXhz3Tmhr4s5tZhMgVUaRECc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711581752; c=relaxed/simple;
	bh=AdHweroZnT+pHzZ/vSg+ukBfbmEglEx27aSOBLZQSiA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=S8wy2Va3MywoIphtPcvdDreCeQgmWWU7Ws9RlL94p86dC65k2vWlbMnkcSc5HVd3o0pUFXyYuhl4zeFzkNKdzqohFfnXo+XTTPSwxm18rkDPvVvCRe+S6h8j7Rf+YssNnmGOKDIDaLAdjdvOnuEBb0q0YjyGbpDIkCmsTScCKDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=luigi311.com; spf=pass smtp.mailfrom=luigi311.com; dkim=pass (2048-bit key) header.d=luigi311.com header.i=@luigi311.com header.b=XuedZhcO; arc=none smtp.client-ip=136.175.108.105
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=luigi311.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=luigi311.com
Received: from filter006.mxroute.com ([136.175.111.2] filter006.mxroute.com)
 (Authenticated sender: mN4UYu2MZsgR)
 by mail-108-mta105.mxroute.com (ZoneMTA) with ESMTPSA id 18e82342a660003bea.00e
 for <devicetree@vger.kernel.org>
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384);
 Wed, 27 Mar 2024 23:17:20 +0000
X-Zone-Loop: fd2ebef451678a12dbb2b6c07bf6ebb9414701d4eab2
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=luigi311.com; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=oPBK+fqL/hsM837Y3buk53bLBMvRdlTlsTvv2J3d9qk=; b=XuedZhcOk3oxws/6gsMm1d6NPc
	CUNpuVFVG+a888XylOiGJqtT0HeZPaGljb9MbfFDV+Qqb8yDOxK/FIDTjskVaK52+g1Vynhc8sKcg
	daKoLdGV9tTJDnKcnxnBxXKKW5lUqlcLcuCoIIy/xz2017e0+uw+ySDR4VEgxjmiheLlNllk1PXPH
	Cj6FTLD6mSBjs8PAzafDzUEijaGhkRBhdyWfiQwXlPevVAhk+lJX1GfZQw4Cg18/viTViCA9dDl0o
	S8DJ0vmgh6gmR96gnOU9sphI2wvl44xE9XCKmiUmWcGXminJkyZ7zy4WsGv2msV5Ik3LqZgfqj5Hl
	8K7EVUGg==;
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
Subject: [PATCH 01/23] media: i2c: imx258: Remove unused defines
Date: Wed, 27 Mar 2024 17:16:47 -0600
Message-ID: <20240327231710.53188-2-git@luigi311.com>
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

The IMX258_FLL_* defines are unused. Remove them.

Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
Reviewed-by: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
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
2.42.0


