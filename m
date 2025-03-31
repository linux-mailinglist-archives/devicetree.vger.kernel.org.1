Return-Path: <devicetree+bounces-162007-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A631AA765CC
	for <lists+devicetree@lfdr.de>; Mon, 31 Mar 2025 14:27:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 66BBC16953F
	for <lists+devicetree@lfdr.de>; Mon, 31 Mar 2025 12:27:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F9441E5210;
	Mon, 31 Mar 2025 12:27:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from relmlie6.idc.renesas.com (relmlor2.renesas.com [210.160.252.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C6B681E520E;
	Mon, 31 Mar 2025 12:27:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=210.160.252.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743424049; cv=none; b=a1qnVcC2zdBxg4ADFg1CDqgPBvhRz8eR94jgEzttWadOwCdhqDAcXaiJVc1D26LW1f89PAFD2fmbsQjIgQelH8bqcotxGzISGyQOs1IkELXzKDxLjfJ9tYxn4WHKTic8Ln6kPoNR5PUl9GgggCUodeWduJ8/DAcieqvIFQ35gSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743424049; c=relaxed/simple;
	bh=v34Aj5sqA+iY7qxM8OovDqXrYthcCeYas4+k48WdidY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=F47NoibfX9RLwMDiYsaPDjBj6CtYo6pSuoby1Z0i+mHz44hP2vxhkKP0o9WVeaZGC2yEC7YEfa/vhcgThcpsR9vLyfl1jkm2apOgzParjnctambDg3ySRbweg0YdDDdqPgdsr33qwfpS3SvsePAHcvlk/XDkRBZ37+ihKNWcxXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=bp.renesas.com; spf=pass smtp.mailfrom=bp.renesas.com; arc=none smtp.client-ip=210.160.252.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=bp.renesas.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bp.renesas.com
X-CSE-ConnectionGUID: i47Yu38GRd6SxDXqy7jWeQ==
X-CSE-MsgGUID: YX5EEFQfSVurDQHlBgVaVA==
Received: from unknown (HELO relmlir6.idc.renesas.com) ([10.200.68.152])
  by relmlie6.idc.renesas.com with ESMTP; 31 Mar 2025 21:27:26 +0900
Received: from superbuilder.administration.lan (unknown [10.226.93.144])
	by relmlir6.idc.renesas.com (Postfix) with ESMTP id 1BA0241F57EE;
	Mon, 31 Mar 2025 21:27:22 +0900 (JST)
From: Thierry Bultel <thierry.bultel.yh@bp.renesas.com>
To: thierry.bultel@linatsea.fr
Cc: linux-renesas-soc@vger.kernel.org,
	geert@linux-m68k.org,
	paul.barker.ct@bp.renesas.com,
	Thierry Bultel <thierry.bultel.yh@bp.renesas.com>,
	Rob Herring <robh@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v6 01/13] dt-bindings: soc: Add Renesas RZ/T2H (R9A09G077) SoC
Date: Mon, 31 Mar 2025 14:26:42 +0200
Message-ID: <20250331122657.3390355-2-thierry.bultel.yh@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250331122657.3390355-1-thierry.bultel.yh@bp.renesas.com>
References: <20250331122657.3390355-1-thierry.bultel.yh@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add RZ/T2H (R9A09G077), its variants, and the rt2h-evk evaluation board in
documentation.

Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Thierry Bultel <thierry.bultel.yh@bp.renesas.com>
---
Changes v5->v6: rebased on next-20250331
Changes v4->v5: none
Changes v3->v4: none
---
 .../devicetree/bindings/soc/renesas/renesas.yaml       | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/renesas/renesas.yaml b/Documentation/devicetree/bindings/soc/renesas/renesas.yaml
index 51a4c48eea6d..6874f425bf1f 100644
--- a/Documentation/devicetree/bindings/soc/renesas/renesas.yaml
+++ b/Documentation/devicetree/bindings/soc/renesas/renesas.yaml
@@ -570,6 +570,16 @@ properties:
           - const: renesas,r9a09g057h48
           - const: renesas,r9a09g057
 
+      - description: RZ/T2H (R9A09G077)
+        items:
+          - enum:
+              - renesas,rzt2h-evk # RZ/T2H Evaluation Board
+          - enum:
+              - renesas,r9a09g077m04 # RZ/T2H with Single Cortex-A55 + Dual Cortex-R52 - no security
+              - renesas,r9a09g077m24 # RZ/T2H with Dual Cortex-A55 + Dual Cortex-R52 - no security
+              - renesas,r9a09g077m44 # RZ/T2H with Quad Cortex-A55 + Dual Cortex-R52 - no security
+          - const: renesas,r9a09g077
+
 additionalProperties: true
 
 ...
-- 
2.43.0


