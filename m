Return-Path: <devicetree+bounces-10675-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 579607D2778
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 02:26:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7AC101C208CB
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 00:26:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C2750366;
	Mon, 23 Oct 2023 00:25:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fbwCKXch"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9FDC77E
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 00:25:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E951EC433C9;
	Mon, 23 Oct 2023 00:25:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698020757;
	bh=z5zD73CuDLZzR3kACF7pI8WVgaRXLYeaHoxvXa90vx4=;
	h=From:To:Cc:Subject:Date:From;
	b=fbwCKXch6RSXnhgZ2BkSYRqAS7EsoJ9hfKfS72WWw4dBfWI5AIyhBY703BMfWHiZj
	 30uVv5kxUkUzI5Uw5tQedAdDkynmw8zQGDCGE3oyJ4anZLFnXx38jmzeq32LS2Kidr
	 0RgX5U+bkiea/zSfYVTLV4s9TVxR4no6ZWSG9carQFU93RydixPa7/IpF3HhLC2cY2
	 lyWIf9iIwPCdcYe7bvNkCXBz5ZXxWe4YOiPLcBtek+KpyGK7knIC9g/O4dsQgg7E9E
	 GbTMzTW2v4CsyakJQrm7kvSEfsHRbqQ7yb2TWIAlX6myfZZlfub7ec2ObdS8Gw+R/O
	 J8FSJ/zEN8wqA==
Received: by mercury (Postfix, from userid 1000)
	id C5378106050E; Mon, 23 Oct 2023 02:25:53 +0200 (CEST)
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
Subject: [PATCH v1 1/3] dt-bindings: vendor-prefixes: add GalaxyCore
Date: Mon, 23 Oct 2023 02:22:07 +0200
Message-ID: <20231023002547.1754190-1-sre@kernel.org>
X-Mailer: git-send-email 2.42.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

GalaxyCore Shanghai Limited Corporation manufacturers
CMOS Image Sensor and Display Driver IC.

Signed-off-by: Sebastian Reichel <sre@kernel.org>
---
Just included for completion, I expect this to be merged:
https://lore.kernel.org/all/20231011175735.1824782-2-alain.volmat@foss.st.com/
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 573578db9509..8cb49a2e4afa 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -494,6 +494,8 @@ patternProperties:
     description: Fujitsu Ltd.
   "^fxtec,.*":
     description: FX Technology Ltd.
+  "^galaxycore,.*":
+    description: GalaxyCore Shanghai Limited Corporation
   "^gardena,.*":
     description: GARDENA GmbH
   "^gateworks,.*":
-- 
2.42.0


