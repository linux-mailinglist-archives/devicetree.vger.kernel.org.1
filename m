Return-Path: <devicetree+bounces-54016-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6571D88F30E
	for <lists+devicetree@lfdr.de>; Thu, 28 Mar 2024 00:24:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BF19629DA14
	for <lists+devicetree@lfdr.de>; Wed, 27 Mar 2024 23:24:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E6E61553BE;
	Wed, 27 Mar 2024 23:23:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=luigi311.com header.i=@luigi311.com header.b="ZQHpV/jM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-108-mta26.mxroute.com (mail-108-mta26.mxroute.com [136.175.108.26])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9368155391
	for <devicetree@vger.kernel.org>; Wed, 27 Mar 2024 23:23:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=136.175.108.26
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711581802; cv=none; b=PCoWlRow5KA4yyJ2LitX6f7xsp5HPxFcooR8MZyedGzKUisz1IUBFA3kAySvQaFVUyJ1Q4CV1HzjwpeGZzUqbtqSTp011ArUY/HE8dqp5ulbJtfdByoe5RS4iCcdeWJMXG9ubEGj5rcVFvZ5WTulhrBqjY/PBnod+csSr+XNtY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711581802; c=relaxed/simple;
	bh=KK5+U8lMkgK4gNO+TSSYed7H1+sDini9KcsqYjmCbcM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=OdeZZgEJNaatq5M3zbi+FxwYzmksU8Mp/Qvqjdt7S0Hcg8RqrvB9CujKpdFn4me7C2RatKjUXYU8ofIg8TkE5y2aVLcDDu/Dmh6klLdXLfaMJwOPcei5p1cYD0U7HVUhUHeHSVWjil7nbbvNs3Q3Sd7RngJeYiowyXqUMn+QbmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=luigi311.com; spf=pass smtp.mailfrom=luigi311.com; dkim=pass (2048-bit key) header.d=luigi311.com header.i=@luigi311.com header.b=ZQHpV/jM; arc=none smtp.client-ip=136.175.108.26
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=luigi311.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=luigi311.com
Received: from filter006.mxroute.com ([136.175.111.2] filter006.mxroute.com)
 (Authenticated sender: mN4UYu2MZsgR)
 by mail-108-mta26.mxroute.com (ZoneMTA) with ESMTPSA id 18e82349f110003bea.00f
 for <devicetree@vger.kernel.org>
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384);
 Wed, 27 Mar 2024 23:17:50 +0000
X-Zone-Loop: b578b55051401e154d8651e02ff5ce1b2cb4a2034bc0
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=luigi311.com; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=HHelyH8dUAACB6PBOj0zLfLWRDzbJsLmhryy/cNSXnk=; b=ZQHpV/jMB5FDL9PLkOb7BMtUAZ
	X0tnG1+Rw9WM12WQdPZNnLw0+yCORvlej5sozcE1R/MRuIKFrhNVMVjjPNupsycNLClL3wrMjue6q
	UtU2WMtA0YjPtUUZdCCFxyZOQ6e3R60zXorQAY2sj1NyFXZbDQM+Lk62n5XIO8xn8sqznQ3DNcpTA
	TbCJYT8Xl0aQmmVVs6IIo09cJyUitO3o/qe+fQtlQp1js7vmdoYE1Od01e6FYAgTxJLcQbMsrfVOh
	TfnzWKgseMlyfFh094dwdOw/a54tajIITvQslJUmUerAofOWpDHPgP8m9u3IuUOjg60ZE3IOV5tNi
	xFAO/6Vg==;
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
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH 17/23] dt-bindings: media: imx258: Rename to include vendor prefix
Date: Wed, 27 Mar 2024 17:17:03 -0600
Message-ID: <20240327231710.53188-18-git@luigi311.com>
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

imx258.yaml doesn't include the vendor prefix of sony, so
rename to add it.
Update the id entry and MAINTAINERS to match.

Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
 .../bindings/media/i2c/{imx258.yaml => sony,imx258.yaml}        | 2 +-
 MAINTAINERS                                                     | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)
 rename Documentation/devicetree/bindings/media/i2c/{imx258.yaml => sony,imx258.yaml} (97%)

diff --git a/Documentation/devicetree/bindings/media/i2c/imx258.yaml b/Documentation/devicetree/bindings/media/i2c/sony,imx258.yaml
similarity index 97%
rename from Documentation/devicetree/bindings/media/i2c/imx258.yaml
rename to Documentation/devicetree/bindings/media/i2c/sony,imx258.yaml
index 80d24220baa0..bee61a443b23 100644
--- a/Documentation/devicetree/bindings/media/i2c/imx258.yaml
+++ b/Documentation/devicetree/bindings/media/i2c/sony,imx258.yaml
@@ -1,7 +1,7 @@
 # SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
 %YAML 1.2
 ---
-$id: http://devicetree.org/schemas/media/i2c/imx258.yaml#
+$id: http://devicetree.org/schemas/media/i2c/sony,imx258.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
 title: Sony IMX258 13 Mpixel CMOS Digital Image Sensor
diff --git a/MAINTAINERS b/MAINTAINERS
index aa3b947fb080..1f17f6734bf5 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -20464,7 +20464,7 @@ M:	Sakari Ailus <sakari.ailus@linux.intel.com>
 L:	linux-media@vger.kernel.org
 S:	Maintained
 T:	git git://linuxtv.org/media_tree.git
-F:	Documentation/devicetree/bindings/media/i2c/imx258.yaml
+F:	Documentation/devicetree/bindings/media/i2c/sony,imx258.yaml
 F:	drivers/media/i2c/imx258.c
 
 SONY IMX274 SENSOR DRIVER
-- 
2.42.0


