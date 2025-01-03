Return-Path: <devicetree+bounces-135389-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E73AA00D1C
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 18:47:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 963777A03CC
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 17:47:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B8B661FCCF6;
	Fri,  3 Jan 2025 17:45:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="qSPoBGRU"
X-Original-To: devicetree@vger.kernel.org
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com [198.47.19.141])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0DF51FC7F1;
	Fri,  3 Jan 2025 17:45:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.19.141
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735926339; cv=none; b=LXLf0C9b6Ff5Ey1cGPr7cBmieQyBT+7YIz/R2yxJwFWFH63wz1zhfvWJEpxlSRcSM/vpfjqDJLoSYjnt8KRHRgogiAi1NnOIFMiiw11zTLXHgdkD8Y8/4ja9PVx1e+vfdsdx4DrNArVhAHsFfSw6lEVO9D1v/o1hCpj2yncRRbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735926339; c=relaxed/simple;
	bh=7xX62jYhSrGKaWSppgTe3vtSFrIM7BlwQ+jHBLSY5VQ=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=tfGGXSRxD3udghfztIduxh3wJcud5MhTRNwnym9cPDvf/WeeQ1eNWHf+z6QEuJdurmhHBX1EFk1mhtdp8rtuvyKmHzI19DnsAE8ibkwxCCvhV+CZSdgdCj5ot6bQSG6gh8O1GL0V/YL3lb16xnQxjOTPz2kiYch1Upt+Qy4Mfe0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=qSPoBGRU; arc=none smtp.client-ip=198.47.19.141
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 503HjRWs017149;
	Fri, 3 Jan 2025 11:45:27 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1735926327;
	bh=pkFnA2AhllC7mdfIvl+LdKrnOMNLADlVJ+rCI8n8oFY=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=qSPoBGRUxhv3NCmBg5BYYID0jAxibR7NEiXxWzeTfVpD+8R73QpSIJ6UV2SPpdIjn
	 41KigQR8fL1UkAUQLOeu28eQJywI/6kZaBvykF3mGxN8ZY/aAGuNGR74srESXwAA47
	 NYFXJ76R97+3aD9BUbwfYFLA/IznyrTCoIjhznlc=
Received: from DLEE103.ent.ti.com (dlee103.ent.ti.com [157.170.170.33])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 503HjRgt096005
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 3 Jan 2025 11:45:27 -0600
Received: from DLEE100.ent.ti.com (157.170.170.30) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Fri, 3
 Jan 2025 11:45:26 -0600
Received: from lelvsmtp6.itg.ti.com (10.180.75.249) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Fri, 3 Jan 2025 11:45:26 -0600
Received: from lelvsmtp5.itg.ti.com ([10.249.42.149])
	by lelvsmtp6.itg.ti.com (8.15.2/8.15.2) with ESMTP id 503HjPcE053135;
	Fri, 3 Jan 2025 11:45:26 -0600
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
Subject: [PATCH 2/3] dt-bindings: mfd: syscon: Fix ti,j721e-acspcie-proxy-ctrl compatible
Date: Fri, 3 Jan 2025 11:45:23 -0600
Message-ID: <20250103174524.28768-3-afd@ti.com>
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

Fixes: 8dfc4a014086 ("dt-bindings: mfd: syscon: Add ti,j721e-acspcie-proxy-ctrl compatible")
Signed-off-by: Andrew Davis <afd@ti.com>
---
 Documentation/devicetree/bindings/mfd/syscon.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/mfd/syscon.yaml b/Documentation/devicetree/bindings/mfd/syscon.yaml
index 717b616349e3d..1f3e67f432e7b 100644
--- a/Documentation/devicetree/bindings/mfd/syscon.yaml
+++ b/Documentation/devicetree/bindings/mfd/syscon.yaml
@@ -214,6 +214,7 @@ properties:
           - ti,am625-dss-oldi-io-ctrl
           - ti,am62p-cpsw-mac-efuse
           - ti,am654-dss-oldi-io-ctrl
+          - ti,j721e-acspcie-proxy-ctrl
           - ti,j784s4-acspcie-proxy-ctrl
           - ti,j784s4-pcie-ctrl
           - ti,keystone-pllctrl
-- 
2.39.2


