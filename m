Return-Path: <devicetree+bounces-55973-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F66289738F
	for <lists+devicetree@lfdr.de>; Wed,  3 Apr 2024 17:11:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 394C328E3D0
	for <lists+devicetree@lfdr.de>; Wed,  3 Apr 2024 15:11:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28E9514D6EA;
	Wed,  3 Apr 2024 15:09:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=luigi311.com header.i=@luigi311.com header.b="sLN+JxGH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-108-mta160.mxroute.com (mail-108-mta160.mxroute.com [136.175.108.160])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06C5614B092
	for <devicetree@vger.kernel.org>; Wed,  3 Apr 2024 15:08:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=136.175.108.160
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712156941; cv=none; b=dfVU4BaMIfp3lMre+HZzrl/iu1IhRlKzmg0RtCDmvS5HeqdtcqDuLtKd17NlcVXQp+mTjO6a/DSfnwea/XqhM6gmMpWJ4PPaCIriCRMvddGHUXtljkIG9+Xcanv8AfQrdTMLw5ddObMnReVj+/6deNyHO6sgQLPWEVR+5OdQpdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712156941; c=relaxed/simple;
	bh=l7ZJgU2OQZ8hIYhOK6BqKGPyRov+21qL9H0o+ttP/0I=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=SW714/LKM8nDaFhep/QrG3o84kL4wwZ676kRYk14OXRZR7F+2fZRlVUh8zJTPAKKr7xI1F+CcyKeOwI1OS5RJD8PhtNsQOw50G1/+psPw4g7Zuzffes5f8uHDDV0AMzrvGJZMzLIbv0sPxXOHByDIPcWasLUcB6BmRIv3L9N484=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=luigi311.com; spf=pass smtp.mailfrom=luigi311.com; dkim=pass (2048-bit key) header.d=luigi311.com header.i=@luigi311.com header.b=sLN+JxGH; arc=none smtp.client-ip=136.175.108.160
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=luigi311.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=luigi311.com
Received: from filter006.mxroute.com ([136.175.111.2] filter006.mxroute.com)
 (Authenticated sender: mN4UYu2MZsgR)
 by mail-108-mta160.mxroute.com (ZoneMTA) with ESMTPSA id 18ea4809a4f0003bea.00f
 for <devicetree@vger.kernel.org>
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384);
 Wed, 03 Apr 2024 15:07:55 +0000
X-Zone-Loop: 3857850b56c0c8b6a82957ca4e826f12accb586cc79d
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=luigi311.com; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=tkOp5AZhPgUJMKkKNZfkvyskppT+Gp5qCGVEQtkqhtE=; b=sLN+JxGHH4IkDSuiuiqOtDzN7N
	TN50mgHlg+tyxehFX8J0iU3hBf5dxSsxkKcDN29daJvKZXf7I12Saq/c+pZ+9o0Fahy8fzFD+xEU3
	s+0H99mnZH1xhcSk+P9PFExtqaMA0XoNlAhhg0zSE7Nyq8sYZJeWFBugj19R4Xses59V5Z6bG2nfT
	Ct0DFY2CMkt/DT0Qb72ijCUK57wR+TIUAYgnRHP6QzKI0suB1xMMyEBGo0RXgjySE9PEOo79cToR6
	0d8msq8GRKEpWZLrBSp3UvvAMTo8CBYdB7DApHyXm2Et0a+C+QrdCnoEsHZhX5ZchCDgTG75Fi3dN
	I9xS/EHg==;
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
Subject: [PATCH v3 18/25] dt-bindings: media: imx258: Add alternate compatible strings
Date: Wed,  3 Apr 2024 09:03:47 -0600
Message-ID: <20240403150355.189229-19-git@luigi311.com>
In-Reply-To: <20240403150355.189229-1-git@luigi311.com>
References: <20240403150355.189229-1-git@luigi311.com>
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
be differentiated at runtime, so add compatible strings for the
PDAF variant.

Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
Signed-off-by: Luis Garcia <git@luigi311.com>
---
 .../devicetree/bindings/media/i2c/sony,imx258.yaml       | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/media/i2c/sony,imx258.yaml b/Documentation/devicetree/bindings/media/i2c/sony,imx258.yaml
index bee61a443b23..c978abc0cdb3 100644
--- a/Documentation/devicetree/bindings/media/i2c/sony,imx258.yaml
+++ b/Documentation/devicetree/bindings/media/i2c/sony,imx258.yaml
@@ -13,11 +13,16 @@ description: |-
   IMX258 is a diagonal 5.867mm (Type 1/3.06) 13 Mega-pixel CMOS active pixel
   type stacked image sensor with a square pixel array of size 4208 x 3120. It
   is programmable through I2C interface.  Image data is sent through MIPI
-  CSI-2.
+  CSI-2. The sensor exists in two different models, a standard variant
+  (IMX258) and a variant with phase detection autofocus (IMX258-PDAF).
+  The camera module does not expose the model through registers, so the
+  exact model needs to be specified.
 
 properties:
   compatible:
-    const: sony,imx258
+    enum:
+      - sony,imx258
+      - sony,imx258-pdaf
 
   assigned-clocks: true
   assigned-clock-parents: true
-- 
2.42.0


