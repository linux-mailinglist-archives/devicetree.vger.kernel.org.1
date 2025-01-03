Return-Path: <devicetree+bounces-135386-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 361FDA00CF6
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 18:40:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7FE681881ABF
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 17:40:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CAFF51FC107;
	Fri,  3 Jan 2025 17:39:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="Uy08DM/J"
X-Original-To: devicetree@vger.kernel.org
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com [198.47.19.141])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5AEA1FBEBF;
	Fri,  3 Jan 2025 17:39:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.19.141
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735925989; cv=none; b=UxFSW4NJt+/qQICjEgGcG6cgzHuecanuvuFG4za7r7JWmib+2EBjZe5ADpSDqYZjTKzgPRovaYw4veTaAYa98mq57ZXjgacWl3Ubqq8VMS5oq/VFoe6NvSrJZl0tjSspLlTRNs2TX2iTsiw6W03UyDKWU8fWJPtNWdZf/MnEkRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735925989; c=relaxed/simple;
	bh=WGgglUyn/+KJCiEEIT1uDq6V5Sj6OtzE9IBSgFAMuHk=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=RiLV/a5dhxM9lEOjRGcK3c/2ye8vclfCXyF+/GJNUoSKyabygi++o2mlFlLoA4lnqDuhwkq/OTH4VfCsOHQ61pMs9KsuZyFkBZFYDRSDD5AtvYC2dVftsNmkmz247CZk+rzXghkQhtqJhJzES+kl0AXZA4RAoVzVi48y94YFiBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=Uy08DM/J; arc=none smtp.client-ip=198.47.19.141
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 503HdbWt015782;
	Fri, 3 Jan 2025 11:39:37 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1735925977;
	bh=fptPCwPjdKizxHW5MXrKt4CJ85onmBBu2gqPBTAicbY=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=Uy08DM/JVilBjzdvjXwQA02VXb//lcy58vdgg0lAq5OEECZZs9l9xiOYZGoTcEbFk
	 wTLwObzqscTHwkTVJveMC0NU1cDrgtt6YuSEYEg3HLAMKgScgnhtDP4asa5XcdUjUf
	 90JaXrw2tXLAohRB19j6aQkFKIMUPLE+J7tM/8Fk=
Received: from DLEE104.ent.ti.com (dlee104.ent.ti.com [157.170.170.34])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTP id 503HdbhR017972;
	Fri, 3 Jan 2025 11:39:37 -0600
Received: from DLEE100.ent.ti.com (157.170.170.30) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Fri, 3
 Jan 2025 11:39:36 -0600
Received: from lelvsmtp5.itg.ti.com (10.180.75.250) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Fri, 3 Jan 2025 11:39:36 -0600
Received: from fllvsmtp8.itg.ti.com ([10.249.42.149])
	by lelvsmtp5.itg.ti.com (8.15.2/8.15.2) with ESMTP id 503HdZKU060939;
	Fri, 3 Jan 2025 11:39:36 -0600
From: Andrew Davis <afd@ti.com>
To: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof
 Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Siddharth
 Vadapalli <s-vadapalli@ti.com>,
        Kevin Hilman <khilman@baylibre.com>,
        Romain
 Naour <romain.naour@skf.com>,
        AngeloGioacchino Del Regno
	<angelogioacchino.delregno@collabora.com>
CC: <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        Andrew Davis
	<afd@ti.com>
Subject: [PATCH 3/3] dt-bindings: mfd: syscon: Fix al,alpine-sysfabric-service compatible
Date: Fri, 3 Jan 2025 11:39:34 -0600
Message-ID: <20250103173934.27892-3-afd@ti.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20250103173934.27892-1-afd@ti.com>
References: <20250103173934.27892-1-afd@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea

This compatible seems to be missing the last 'e', looks to be a typo
when creating this file. Noticed this when diff'ing the two compatible
lists (which should stay in sync).

Fixes: f97b0435c857 ("dt-bindings: mfd: syscon: Split and enforce documenting MFD children")
Signed-off-by: Andrew Davis <afd@ti.com>
---
 Documentation/devicetree/bindings/mfd/syscon.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/mfd/syscon.yaml b/Documentation/devicetree/bindings/mfd/syscon.yaml
index dda489916bc54..acdc001c296ef 100644
--- a/Documentation/devicetree/bindings/mfd/syscon.yaml
+++ b/Documentation/devicetree/bindings/mfd/syscon.yaml
@@ -27,7 +27,7 @@ select:
     compatible:
       contains:
         enum:
-          - al,alpine-sysfabric-servic
+          - al,alpine-sysfabric-service
           - allwinner,sun8i-a83t-system-controller
           - allwinner,sun8i-h3-system-controller
           - allwinner,sun8i-v3s-system-controller
-- 
2.39.2


