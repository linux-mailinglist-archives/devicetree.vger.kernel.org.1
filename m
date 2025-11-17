Return-Path: <devicetree+bounces-239415-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 99179C649EF
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 15:21:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4E2743A6AD4
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 14:21:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2DA5C333755;
	Mon, 17 Nov 2025 14:21:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mj79QdGc"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03D7233373D;
	Mon, 17 Nov 2025 14:21:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763389296; cv=none; b=NFVDyNUF2tra7eOSk+sEMqqJdmHQxN4oS+0wC3oiJ/N9M6K109d8FByNRXuB0GopFx/04W0aKBs2/5+Xt9d6vvpFRvxqAVmv/pW7kce+YsfxP2pQKp9tHYanebORg9n+cbABb4cSO3w82jYdyljuNn3Kf9uvVPKTK6DgUuWUgqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763389296; c=relaxed/simple;
	bh=VMkhzVdFF718xxI3R8myeRKPldhaPCNukn2Dr7NViNk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=LHZ90r+dJlkij3qvGcxrWzVakz8onpKefANsazSB4ox2y5iSeTkXy7+qghSMDX4Bf/WB2xPyw/pL+zs52aW6TPtRMmRNhyMm37GML7r25FnrTWlS86N0WsiCFy7LwYh4YSm60BBuO1C+bZHIKsjE8gub35FJ9pDK8YMxykQIoMM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mj79QdGc; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C8D5FC4CEF1;
	Mon, 17 Nov 2025 14:21:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763389295;
	bh=VMkhzVdFF718xxI3R8myeRKPldhaPCNukn2Dr7NViNk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Mj79QdGcCMslu9I0Lj53jxL8YNXYsTHzsbexR+87t9n4CoRE1NqjvYXIaKKfhrA6Q
	 mLr6oPtrV+PELHftah0sUEaq8QC8fwwqSiLtXX492jp/kTjkabwMEjDZwNAvuhtVgI
	 An11iV1m/4FqyCdkw86872P8gpxFCU6VCLjJ4jhiHlHWO3QYKFEmDPWN+fL33swTAo
	 D9+EL91KIzHBoDTfaqMKU3E2DL8uwqkAuy8C4ajhDsOhcHkrwILm+q+ykL26sZXxKJ
	 KZOUR93TrFe50u7k7fGweKzyXNuOcVrRw5mcyp4LvW5t73cEYZYLR4bDTu9hxL6mwQ
	 AG8JQO1ElMZXg==
From: Conor Dooley <conor@kernel.org>
To: linux-kernel@vger.kernel.org
Cc: conor@kernel.org,
	Conor Dooley <conor.dooley@microchip.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Daire McNamara <daire.mcnamara@microchip.com>,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org
Subject: [PATCH v1 1/3] dt-bindings: soc: microchip: add compatible for the mss-top-sysreg on pic64gx
Date: Mon, 17 Nov 2025 14:21:20 +0000
Message-ID: <20251117-reversion-distaste-986c81a33f20@spud>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251117-mashing-cursor-6e965a77ce6a@spud>
References: <20251117-mashing-cursor-6e965a77ce6a@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1213; i=conor.dooley@microchip.com; h=from:subject:message-id; bh=9r0jELMzsNrhXXub+HN5urN9Eek071kdQwUXmSVqQ60=; b=owGbwMvMwCVWscWwfUFT0iXG02pJDJnS+rE63PXr+A4o3N4cPmtvXMrP/+u+mu561dfbZfVei b9uv4NQRykLgxgXg6yYIkvi7b4WqfV/XHY497yFmcPKBDKEgYtTACYSxs/wz2hC4nehJYVHjv4q 4BXJeHWy64mN2/TvmeLaa35InP2zUoHhf+W97cdZLnkebbTnUOp7vGOGhNuBJ95/D2qVLW9JFOw QYQYA
X-Developer-Key: i=conor.dooley@microchip.com; a=openpgp; fpr=F9ECA03CF54F12CD01F1655722E2C55B37CF380C
Content-Transfer-Encoding: 8bit

From: Conor Dooley <conor.dooley@microchip.com>

pic64gx has an identical sysreg syscon to mpfs, add it using a fallback.

Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
---
 .../microchip/microchip,mpfs-mss-top-sysreg.yaml   | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/soc/microchip/microchip,mpfs-mss-top-sysreg.yaml b/Documentation/devicetree/bindings/soc/microchip/microchip,mpfs-mss-top-sysreg.yaml
index 44e4a50c3155..2c1efcdf59b7 100644
--- a/Documentation/devicetree/bindings/soc/microchip/microchip,mpfs-mss-top-sysreg.yaml
+++ b/Documentation/devicetree/bindings/soc/microchip/microchip,mpfs-mss-top-sysreg.yaml
@@ -15,10 +15,16 @@ description:
 
 properties:
   compatible:
-    items:
-      - const: microchip,mpfs-mss-top-sysreg
-      - const: syscon
-      - const: simple-mfd
+    oneOf:
+      - items:
+          - const: microchip,mpfs-mss-top-sysreg
+          - const: syscon
+          - const: simple-mfd
+      - items:
+          - const: microchip,pic64gx-mss-top-sysreg
+          - const: microchip,mpfs-mss-top-sysreg
+          - const: syscon
+          - const: simple-mfd
 
   reg:
     maxItems: 1
-- 
2.51.0


