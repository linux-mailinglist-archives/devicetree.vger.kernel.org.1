Return-Path: <devicetree+bounces-12293-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B7357D8CBB
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 03:14:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 963DF1C20FA7
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 01:14:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD5BE1FD5;
	Fri, 27 Oct 2023 01:14:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TXwpwCwC"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF6DE1FD3
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 01:14:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EF0D9C433B8;
	Fri, 27 Oct 2023 01:14:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698369262;
	bh=So2KlXhUCikU8X/BCxDXuE+mxqgiy0lZILYQ1AcKJwI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=TXwpwCwCg5chBKG53rOTjIIc97vMY8OKGqO9g1zv9PjuCVS1NeO6plcZukUkYO4oX
	 HkxALLwtKYfi1LzcF6aFqCmGOBUpwyyst38WFDCPtHLKsEWhQJZuGriLMLVSJMU00T
	 UAy+ne3S+1Q/F22VYfMscqRMEyyAKDhRQd+y9qOKXsKMJtxwme9sQVqmV1H1pW0M40
	 tHY2tMd2ioQryR2o0QyW4j2LN8xYNHVlJIohvjtgWMHXU3fus1daoDFAZaxbp7WIzj
	 eIkqoSazf/iJJYs2R0SpC4W38C8PPySxiytJWyQ4G84KEGSLzIWPqATe/jZQsmpBnN
	 dQp/ffzkeu0lw==
Received: by mercury (Postfix, from userid 1000)
	id 47EC0106057E; Fri, 27 Oct 2023 03:14:18 +0200 (CEST)
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
Subject: [PATCH v3 3/4] media: MAINTAINERS: Add GalaxyCore in camera sensor section
Date: Fri, 27 Oct 2023 03:12:03 +0200
Message-ID: <20231027011417.2174658-4-sre@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231027011417.2174658-1-sre@kernel.org>
References: <20231027011417.2174658-1-sre@kernel.org>
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


