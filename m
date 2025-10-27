Return-Path: <devicetree+bounces-231483-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CCEAC0D888
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 13:31:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 59777188C196
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 12:29:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A956B30CD87;
	Mon, 27 Oct 2025 12:27:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B882301702
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 12:27:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761568059; cv=none; b=bw0MY//ERRGBhsjJmWdNJi7e39dgCMtRs8Knba0MzFpWUT6dQrdAycGR+xkWe4GUemvCHhHriRJPkY61wIqWxcnUduTLTiHhcbCz5YhJZCUo/lFXSuccx5m9Op1YZJj8tSy4XAE9UDBvlQUHWU01V2+Gnjx7FrQwixrvWrIwI/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761568059; c=relaxed/simple;
	bh=rXE077BqYynmmeCdNV5b070jlcDqZc9XfT2O2tnzHy8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=LB2AsJkh1qndjEhmrbSD/pcgC5qEizKkyDB6zlCgZv/rDw1qAiMx8RuQgwCTtJ8sEQeg+06Cpe/n45Xu3p/F+lFlOcnZhne9g30VAPDtuaG68HUy//kiDZl4Xa+Z61gfzRhygNiyzg7WUgHb2xiIjqr2TdtVnWSuaIGydVD+RYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 59RCQuqa031809;
	Mon, 27 Oct 2025 21:27:01 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, jonas@kwiboo.se,
        dsimic@manjaro.org, amadeus@jmu.edu.cn, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 3/5] dt-bindings: arm: rockchip: Fix description for Radxa CM3I
Date: Mon, 27 Oct 2025 12:26:39 +0000
Message-ID: <20251027122641.39396-4-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251027122641.39396-1-naoki@radxa.com>
References: <20251027122641.39396-1-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

"CM3I" is the preferred name.

Fixes: ae9fbe0b1f965 ("dt-bindings: arm: rockchip: add Radxa CM3I E25")
Link: https://dl.radxa.com/cm3i/docs/hw/radxa_cm3i_product_brief.pdf
Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 15153e08d3881..70be7966f4d3e 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -895,7 +895,7 @@ properties:
           - const: radxa,cm3
           - const: rockchip,rk3566
 
-      - description: Radxa CM3 Industrial
+      - description: Radxa CM3I
         items:
           - enum:
               - radxa,e25
-- 
2.43.0


