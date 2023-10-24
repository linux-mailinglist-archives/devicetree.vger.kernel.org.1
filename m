Return-Path: <devicetree+bounces-11114-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id CC1EF7D4473
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 03:04:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7F8A51F22347
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 01:04:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 33369442F;
	Tue, 24 Oct 2023 01:04:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eijedFgU"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1563B4C8B
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 01:04:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6B423C433CC;
	Tue, 24 Oct 2023 01:04:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698109442;
	bh=So2KlXhUCikU8X/BCxDXuE+mxqgiy0lZILYQ1AcKJwI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=eijedFgUlWc5TZaHc3Dt6uhcA9LAK4wzsPN1l7EqGtp2BB1q2FD0rI4/goioLtUTB
	 jSfjL9ToLgeh4jH/znKsIUuo5RDYYsGwX7UnANDgg+6JGsEbWdodce6QaBPXR18Y1e
	 AX44nw4+oBJYSb0cybkZ5oanmBh2jBIUIMNRs8Zy3f8dpJoTY/1HwLuiAVNCU6TjZ9
	 xzwMfDSaQBTAm7jvYtDRQA7zPqilVSD/pXCJdjLslAMs9hpHcQ4v++oo8rU2ps9nBK
	 DkwGBZKPC7V4elnsNdUBjt3SNIpNnE8WcZ/lRgw7mBCIonbLIHQzHGFo77jTCYGVjC
	 OcEhFk77YwWLg==
Received: by mercury (Postfix, from userid 1000)
	id B05AD106057D; Tue, 24 Oct 2023 03:03:59 +0200 (CEST)
From: Sebastian Reichel <sre@kernel.org>
To: Sebastian Reichel <sre@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Jacopo Mondi <jacopo.mondi@ideasonboard.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-media@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 3/4] media: MAINTAINERS: Add GalaxyCore in camera sensor section
Date: Tue, 24 Oct 2023 02:59:52 +0200
Message-ID: <20231024010355.1877523-4-sre@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231024010355.1877523-1-sre@kernel.org>
References: <20231024010355.1877523-1-sre@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

"gc" prefixed i2c media drivers are most likely GalaxyCore camera
sensor drivers, so add it to the list.

Signed-off-by: Sebastian Reichel <sre@kernel.org>
---
 MAINTAINERS | 1 +
 1 file changed, 1 insertion(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 2894f0777537..5f64cd42ff37 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -22553,6 +22553,7 @@ S:	Maintained
 F:	Documentation/driver-api/media/camera-sensor.rst
 F:	Documentation/driver-api/media/tx-rx.rst
 F:	drivers/media/i2c/ar*
+F:	drivers/media/i2c/gc*
 F:	drivers/media/i2c/hi*
 F:	drivers/media/i2c/imx*
 F:	drivers/media/i2c/mt*
-- 
2.42.0


