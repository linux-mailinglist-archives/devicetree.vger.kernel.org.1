Return-Path: <devicetree+bounces-12002-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 1480A7D763C
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 23:03:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A9712B21245
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 21:03:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E7A131A97;
	Wed, 25 Oct 2023 21:03:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="eDnaHf/i"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A72EB3158F
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 21:03:42 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 638BE133
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 14:03:41 -0700 (PDT)
Received: from pendragon.ideasonboard.com (213-243-189-158.bb.dnainternet.fi [213.243.189.158])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 391051010;
	Wed, 25 Oct 2023 23:03:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1698267806;
	bh=/b8vjeg16N6sTnaDqZ5QDVr3cUbrSUJbXeISJbDnREI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=eDnaHf/iliqhFkq0/qGdpM19hHP+HEOjztzg0VeonUv6ClYUwAdtRwxO72HoBQBhy
	 2rujEl85xBQN8cEoO8dWH+XJMr8tk3dCrk6MU3WSi257WV+7HIkIzB17R6DbJ/yr8X
	 ePFUWlTLFJq/NpuozuGEhVP67VsAk2YDKJTPqbQs=
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
Subject: [PATCH v2 2/3] dt-bindings: arm64: dts: mediatek: Add ologic,pumpkin-i350 board
Date: Thu, 26 Oct 2023 00:03:41 +0300
Message-ID: <20231025210342.30995-3-laurent.pinchart@ideasonboard.com>
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

Add a compatible string for the Pumpkin i350 board, an MT8365-based
board developed by OLogic.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Alexandre Mergnat <amergnat@baylibre.com>
---
 Documentation/devicetree/bindings/arm/mediatek.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
index ae12b1cab9fb..dc34e62c6756 100644
--- a/Documentation/devicetree/bindings/arm/mediatek.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
@@ -247,6 +247,7 @@ properties:
       - items:
           - enum:
               - mediatek,mt8365-evk
+              - ologic,pumpkin-i350
           - const: mediatek,mt8365
       - items:
           - enum:
-- 
Regards,

Laurent Pinchart


