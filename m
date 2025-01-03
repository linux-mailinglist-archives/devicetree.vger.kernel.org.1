Return-Path: <devicetree+bounces-135390-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 184E3A00D1E
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 18:47:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AF44716165A
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 17:47:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E93B11FCCF4;
	Fri,  3 Jan 2025 17:45:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="j38BErbx"
X-Original-To: devicetree@vger.kernel.org
Received: from fllvem-ot03.ext.ti.com (fllvem-ot03.ext.ti.com [198.47.19.245])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC4191FCCF1;
	Fri,  3 Jan 2025 17:45:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.19.245
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735926343; cv=none; b=IhZ2lFFDibR4zJ3aA0fdaLk20DgNkfedFZs80XAqL5f8zAgBPNqFfOh34nAhDCmeU6230gl7nZEziyQQtC6ti7zNOOhrY68fYL5CgTxdGdMcW/0gGt7hYpVn2ZIWqBf3e9qRCtQTzuT8TR+1itJLHKPxilotvY2xV47Sse31tAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735926343; c=relaxed/simple;
	bh=47Q51kTMrzcEwrprt1bLLe3NV/uZbyc6pRHilHQeqzI=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=FLIXXNOazZ8wa9zLrAZYUXBEHezhRf9zTsQdzkv3HmBQe0Q97lUMcXQLyORYskVpWe9YJc/CjZtMuGvKv6lIAJQGqoxXKpljm5S8MolpG554iwqFRQ/lPMSckHJBueoI4XW/euiZAZ/DkuhZcBGReCIVfhA+2yNOfUBG9f3UqVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=j38BErbx; arc=none smtp.client-ip=198.47.19.245
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by fllvem-ot03.ext.ti.com (8.15.2/8.15.2) with ESMTPS id 503HjQ0x2063517
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
	Fri, 3 Jan 2025 11:45:26 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1735926326;
	bh=9UQdk3IkQTbzIxCKA7P0DTyRsrQsfu6B+j6RdULPRDI=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=j38BErbxDrGC6Gdmv7VrS9fr1dWfW/gnDDUymvpFXLi+ckxdcPdj3StMPClo0x/jJ
	 0SF4WsfPnTJvWpIGHH3Li4ojqDIJqcxyLzWlCqtMsPhfO9E02KidcPi/YC7HMyuQ84
	 gQhT2/Oou6e4k1i5tR74n4Va9Dqe5TvUldk+GmNM=
Received: from DFLE115.ent.ti.com (dfle115.ent.ti.com [10.64.6.36])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTP id 503HjQ66020917;
	Fri, 3 Jan 2025 11:45:26 -0600
Received: from DFLE106.ent.ti.com (10.64.6.27) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Fri, 3
 Jan 2025 11:45:26 -0600
Received: from lelvsmtp6.itg.ti.com (10.180.75.249) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Fri, 3 Jan 2025 11:45:26 -0600
Received: from lelvsmtp5.itg.ti.com ([10.249.42.149])
	by lelvsmtp6.itg.ti.com (8.15.2/8.15.2) with ESMTP id 503HjPcD053135;
	Fri, 3 Jan 2025 11:45:25 -0600
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
Subject: [PATCH 1/3] dt-bindings: mfd: syscon: Fix ti,j784s4-acspcie-proxy-ctrl compatible
Date: Fri, 3 Jan 2025 11:45:22 -0600
Message-ID: <20250103174524.28768-2-afd@ti.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20250103174524.28768-1-afd@ti.com>
References: <20250103174524.28768-1-afd@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea

This compatible was only added to the list for compatibility with older
dtschema (<2024.02). Add it to the other list also so both new and old
tools work.

Fixes: 0d078d47cd3e ("dt-bindings: mfd: syscon: Add ti,j784s4-acspcie-proxy-ctrl compatible")
Signed-off-by: Andrew Davis <afd@ti.com>
---
 Documentation/devicetree/bindings/mfd/syscon.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/mfd/syscon.yaml b/Documentation/devicetree/bindings/mfd/syscon.yaml
index 032cdd30d95f1..717b616349e3d 100644
--- a/Documentation/devicetree/bindings/mfd/syscon.yaml
+++ b/Documentation/devicetree/bindings/mfd/syscon.yaml
@@ -214,6 +214,7 @@ properties:
           - ti,am625-dss-oldi-io-ctrl
           - ti,am62p-cpsw-mac-efuse
           - ti,am654-dss-oldi-io-ctrl
+          - ti,j784s4-acspcie-proxy-ctrl
           - ti,j784s4-pcie-ctrl
           - ti,keystone-pllctrl
       - const: syscon
-- 
2.39.2


