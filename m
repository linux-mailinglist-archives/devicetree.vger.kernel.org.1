Return-Path: <devicetree+bounces-54002-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DA2788F2BA
	for <lists+devicetree@lfdr.de>; Thu, 28 Mar 2024 00:18:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E66192941C6
	for <lists+devicetree@lfdr.de>; Wed, 27 Mar 2024 23:18:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 06FCC1552FC;
	Wed, 27 Mar 2024 23:18:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=luigi311.com header.i=@luigi311.com header.b="dLhz1N/8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-108-mta69.mxroute.com (mail-108-mta69.mxroute.com [136.175.108.69])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43E741553A0
	for <devicetree@vger.kernel.org>; Wed, 27 Mar 2024 23:18:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=136.175.108.69
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711581496; cv=none; b=DQt3AfoQ+SR+ksbITl9VeHjoVQLVGMyRa60q6F22m+1065gpZbMhgFYQjBdKppl9IEvh725FngV0uhHHJLZ1fJyk40GCGMnYnfINKX3z0SO2ho3bpQi4+VqfW83dUKhP1OXW3Thfd12xYzc7U/0go6N6TEE4Mpq+VEKqSwi/4Zs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711581496; c=relaxed/simple;
	bh=x58t6k8EokPq4aAnaC2oATm/gQ5TdBN5BQeF0p+fL0M=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=U9w8Va1ZiCbEHRSE2tNFgGr2nCm9R1e4Ficdy/GOCdTLbKt2wOdXFt9NKptILCDbDhiN37Wf9VGVpenql1bO8JftHXk9d6fsk4BfS78Jc2NOudMW5WIneuA1vP3dxSMuW5a9QBGYxGsX+U8WXjHEgga7WHus+oMgvUt91Rsk/Ak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=luigi311.com; spf=pass smtp.mailfrom=luigi311.com; dkim=pass (2048-bit key) header.d=luigi311.com header.i=@luigi311.com header.b=dLhz1N/8; arc=none smtp.client-ip=136.175.108.69
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=luigi311.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=luigi311.com
Received: from filter006.mxroute.com ([136.175.111.2] filter006.mxroute.com)
 (Authenticated sender: mN4UYu2MZsgR)
 by mail-108-mta69.mxroute.com (ZoneMTA) with ESMTPSA id 18e8234abc60003bea.00e
 for <devicetree@vger.kernel.org>
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384);
 Wed, 27 Mar 2024 23:17:53 +0000
X-Zone-Loop: 7b08a6fa44061cc54c47ae91f13b9f1bc8adea920b49
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=luigi311.com; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=UNQcRvC+BTJmcFMUv7/581GlzybaY7yH1KloLiIT/SI=; b=dLhz1N/8XTD0i1MlofJeNmVnd9
	KNK0xCCp/l+iZzxi0rYKrbFjimMoRnkkze42ULyiXwsQaivKWjnVPo/aY+g2TXhKbYDvpmQK91rJZ
	QgVVze3hO+RXJIv2dxPal421YStiXvBnnNHFf3oi+nArsRoxo8S9VUaoe/CCF8c0mpt8hs9ClNP3H
	VJYeVDiw7Si5GzR9tTHr2tYsz7nYmdzE9+BsTRsf1gd6bsPAw4pt8aav1Vw0X9MwTA+cfmY8qmJxt
	TEEkKQGeYM5wkg3Adq30woS3FPIGOSxl8LO450RCfdmQDQYP1w8/m6vyh0R3Rc2DZbU80ScFOJ17o
	UGSrKYBQ==;
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
	Luigi311 <git@luigi311.com>
Subject: [PATCH 18/23] dt-bindings: media: imx258: Add alternate compatible strings
Date: Wed, 27 Mar 2024 17:17:04 -0600
Message-ID: <20240327231710.53188-19-git@luigi311.com>
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

There are a number of variants of the imx258 modules that can not
be differentiated at runtime, so add compatible strings for them.

Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
Signed-off-by: Luigi311 <git@luigi311.com>
---
 .../devicetree/bindings/media/i2c/sony,imx258.yaml          | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/media/i2c/sony,imx258.yaml b/Documentation/devicetree/bindings/media/i2c/sony,imx258.yaml
index bee61a443b23..c7856de15ba3 100644
--- a/Documentation/devicetree/bindings/media/i2c/sony,imx258.yaml
+++ b/Documentation/devicetree/bindings/media/i2c/sony,imx258.yaml
@@ -14,10 +14,14 @@ description: |-
   type stacked image sensor with a square pixel array of size 4208 x 3120. It
   is programmable through I2C interface.  Image data is sent through MIPI
   CSI-2.
+  There are a number of variants of the sensor which cannot be detected at
+  runtime, so multiple compatible strings are required to differentiate these.
 
 properties:
   compatible:
-    const: sony,imx258
+    - enum:
+        - sony,imx258
+        - sony,imx258-pdaf
 
   assigned-clocks: true
   assigned-clock-parents: true
-- 
2.42.0


