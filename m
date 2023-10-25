Return-Path: <devicetree+bounces-12001-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CF6EC7D763A
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 23:03:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8947A281D99
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 21:03:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5775330FA3;
	Wed, 25 Oct 2023 21:03:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="hEJ4dRV/"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C98C30D06
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 21:03:39 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BEDFC12F
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 14:03:38 -0700 (PDT)
Received: from pendragon.ideasonboard.com (213-243-189-158.bb.dnainternet.fi [213.243.189.158])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id DB9C5BEB;
	Wed, 25 Oct 2023 23:03:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1698267805;
	bh=c901VyStTudJd1nWoCUth7e6LhwpbFhTjIO8xOGrrGs=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=hEJ4dRV/h8VOc0j/TKtqyW88HV78H1Sj9QYmnAOjoLdrNoDWbOTJ5Gx8CE54TUG/f
	 n+n+6+7psi4mdhLbHKZwaK1RMr258BPbwhbSnAS2N1lvtWbYIG16gmWkS13bi7Rvn2
	 p/+TLNv6n1tukmhxfrJ/2uoZREsNAExC8Ms+Odjo=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-mediatek@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Paul Elder <paul.elder@ideasonboard.com>,
	Fabien Parent <fabien.parent@linaro.org>,
	Alexandre Mergnat <amergnat@baylibre.com>,
	Julien Stephan <jstephan@baylibre.com>,
	Suhrid Subramaniam <suhrid.subramaniam@mediatek.com>,
	Ted Larson <ted@ologicinc.com>
Subject: [PATCH v2 1/3] dt-bindings: vendor-prefixes: Add prefix for OLogic, Inc.
Date: Thu, 26 Oct 2023 00:03:40 +0300
Message-ID: <20231025210342.30995-2-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231025210342.30995-1-laurent.pinchart@ideasonboard.com>
References: <20231025210342.30995-1-laurent.pinchart@ideasonboard.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add a DT vendor prefix for OLogic, Inc. OLogic is a hardware and system
design company that manufactures, among other things, development boards
with MediaTek SoCs.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Alexandre Mergnat <amergnat@baylibre.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 573578db9509..247b724bc01f 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -981,6 +981,8 @@ patternProperties:
     description: Oki Electric Industry Co., Ltd.
   "^olimex,.*":
     description: OLIMEX Ltd.
+  "^ologic,.*":
+    description: OLogic, Inc.
   "^olpc,.*":
     description: One Laptop Per Child
   "^oneplus,.*":
-- 
Regards,

Laurent Pinchart


