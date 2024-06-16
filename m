Return-Path: <devicetree+bounces-76259-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A184990A08C
	for <lists+devicetree@lfdr.de>; Mon, 17 Jun 2024 00:42:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0DCB9B21573
	for <lists+devicetree@lfdr.de>; Sun, 16 Jun 2024 22:42:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C81A86A03F;
	Sun, 16 Jun 2024 22:42:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6034761FE4
	for <devicetree@vger.kernel.org>; Sun, 16 Jun 2024 22:42:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718577758; cv=none; b=RK8pAwpcLT64NJLxHS49RfrYEkUqf6vJljKV+c1Vk4kZ9e74b+NWVHCteu2/bHMIcEj6cpKXADgzMq/7dAmcTPSabatCfNHIbBmlOOiL9l8XVMFgtcU+7WPm+QEdq9tuWvpiycYMbckV/QlFlQwHZvA2FhQ692MWVK/5Qs/6gBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718577758; c=relaxed/simple;
	bh=05fYT570T3QbWYBi+8JmAlXRbGsPGrcg2JzKwQkepzc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Rp12f/Guz6vqjMGNwjkdw6CNsRDRp5B5xMLSQymdtpyiJD35bsbzGYzohkfQrAmOlKdXpJ5qzVvF+B81Y3Z3U6rTrsLgb6XP+YnsDb8ZNilPY0Uful1dcsfQxvGsvyPsXChmNtY4hl2jiA9lHn3ysLsiyUCYS9Mx+hqIaX3YYlE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A9C4F1480;
	Sun, 16 Jun 2024 15:43:01 -0700 (PDT)
Received: from localhost.localdomain (usa-sjc-mx-foss1.foss.arm.com [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DED753F73B;
	Sun, 16 Jun 2024 15:42:34 -0700 (PDT)
From: Andre Przywara <andre.przywara@arm.com>
To: Joerg Roedel <joro@8bytes.org>,
	Will Deacon <will@kernel.org>,
	Robin Murphy <robin.murphy@arm.com>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Rob Herring <robh@kernel.org>
Cc: Chris Morgan <macromorgan@hotmail.com>,
	Ryan Walklin <ryan@testtoast.com>,
	Philippe Simons <simons.philippe@gmail.com>,
	iommu@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-sunxi@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 3/5] dt-bindings: iommu: add new compatible strings
Date: Sun, 16 Jun 2024 23:40:54 +0100
Message-Id: <20240616224056.29159-4-andre.przywara@arm.com>
X-Mailer: git-send-email 2.39.4
In-Reply-To: <20240616224056.29159-1-andre.przywara@arm.com>
References: <20240616224056.29159-1-andre.przywara@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The Allwinner H616 and A523 contain IOMMU IP very similar to the H6, but
use a different reset value for the bypass register, which makes them
strictly speaking incompatible.

Add a new compatible string for the H616, and a version for the A523,
falling back to the H616.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../bindings/iommu/allwinner,sun50i-h6-iommu.yaml          | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/iommu/allwinner,sun50i-h6-iommu.yaml b/Documentation/devicetree/bindings/iommu/allwinner,sun50i-h6-iommu.yaml
index e20016f120175..a8409db4a3e3d 100644
--- a/Documentation/devicetree/bindings/iommu/allwinner,sun50i-h6-iommu.yaml
+++ b/Documentation/devicetree/bindings/iommu/allwinner,sun50i-h6-iommu.yaml
@@ -17,7 +17,12 @@ properties:
       The content of the cell is the master ID.
 
   compatible:
-    const: allwinner,sun50i-h6-iommu
+    oneOf:
+      - const: allwinner,sun50i-h6-iommu
+      - const: allwinner,sun50i-h616-iommu
+      - items:
+          - const: allwinner,sun55i-a523-iommu
+          - const: allwinner,sun50i-h616-iommu
 
   reg:
     maxItems: 1
-- 
2.39.4


