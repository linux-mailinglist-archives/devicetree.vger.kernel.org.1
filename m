Return-Path: <devicetree+bounces-190828-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EA2CAECC89
	for <lists+devicetree@lfdr.de>; Sun, 29 Jun 2025 14:39:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9F4591896E65
	for <lists+devicetree@lfdr.de>; Sun, 29 Jun 2025 12:39:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 844D5221F30;
	Sun, 29 Jun 2025 12:38:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b="mlPpIbMx"
X-Original-To: devicetree@vger.kernel.org
Received: from out-185.mta0.migadu.com (out-185.mta0.migadu.com [91.218.175.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97FDF21FF55
	for <devicetree@vger.kernel.org>; Sun, 29 Jun 2025 12:38:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.185
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751200737; cv=none; b=kqwrfPLTxx1VZzxl5M2o6DyAcYLM22FOWYgBW7QcBb+1LdEPru2G+ASqjCm9n/apTI6QjDA1OZwUPvqjcAEB+MRZkT/LA2EKwZUBkMwHfoFuZfqsYmuLOjhs6uPtku9BlE2DUTd0cUKUhnkYbGn1BxDZA9zfzOmSwr7Lbtih4FY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751200737; c=relaxed/simple;
	bh=ROFq9xtzXOdmqMZ7ZCjIaDyNS7DKkayyoX8QkeXIndE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=N7hu7jjCnqrue5wDHfSDVR7oeOjrISSYU+FSstpl/zT6LlD8d9KhKXic0RGyNtxNJQVA7vfMFOwgJaIpoNqWEFcAE0B23ZLsTeZO6n+CnahnX6eEsTh8h+ijJjbeocyIKnVGGsTmSb5nm/1hvfDDljNfNUHIiCjwSnCO+E+lAVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org; spf=pass smtp.mailfrom=cknow.org; dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b=mlPpIbMx; arc=none smtp.client-ip=91.218.175.185
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cknow.org
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1751200733;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=FvDG6tIe9cP6E3SSgrjHunQaCLP0z6lp3rhIo96W2Gg=;
	b=mlPpIbMxczq+HF4S7dBEtez0pCckZ4hAlaXYFIlYcXvzdeX3HJeF9W677OCRPgf0Ngj9Ao
	X6rVDLoN1UK+9HUeZDpgZHEzalUl445iekUUp7GoMuxLqHygoRMC7ff7SAON9ylE8f0f6r
	MJAiCDKdzSYmV4sNX9lsYCyC+NjNZFID3e6MOotW+8CiDMGICUjKEUhVP5od+XXah1gWEn
	zgINgZh3/UnJ6iU7OI5cNLm3n8COqRjQ6alSSyvQ8f6iBLE6VkmIeCfOBrL5zbc7Cemqdb
	s1z+i+Q4FR+wOcad8cE0asR8mS91mm6mPadayM4VChvlUTY29U56hlDHgM8OQg==
From: Diederik de Haas <didi.debian@cknow.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Dragan Simic <dsimic@manjaro.org>,
	Quentin Schulz <quentin.schulz@cherry.de>,
	Johan Jonker <jbx6244@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Diederik de Haas <didi.debian@cknow.org>
Subject: [PATCH v3 03/10] dt-bindings: display: rockchip,dw-mipi-dsi: Drop address/size cells
Date: Sun, 29 Jun 2025 14:34:44 +0200
Message-ID: <20250629123840.34948-4-didi.debian@cknow.org>
In-Reply-To: <20250629123840.34948-1-didi.debian@cknow.org>
References: <20250629123840.34948-1-didi.debian@cknow.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT

When the dw-mipi-dsi binding was initially added in commit
a20d86e7f964 ("Documentation: dt-bindings: Add bindings for rk3288 DW MIPI DSI driver")
the #address-cells and #size-cells were added as required properties.

When the binding was converted to yaml format in commit
0dac2102cf6b ("dt-bindings: display: rockchip: convert dw_mipi_dsi_rockchip.txt to yaml")
those properties were demoted to optional and removed from the binding
example.

As for the compatibles:
- rockchip,px30-mipi-dsi      removed in this patch set
- rockchip,rk3128-mipi-dsi    never used
- rockchip,rk3288-mipi-dsi    added (invalid); later removed [1]
- rockchip,rk3399-mipi-dsi    removed in this patch set
- rockchip,rk3568-mipi-dsi    never used
- rockchip,rv1126-mipi-dsi    proposed (invalid); never accepted [2]

[1] 282e2e078ba5 ("ARM: dts: rockchip: Remove #address/#size-cells from rk3288 mipi_dsi")
[2] https://lore.kernel.org/all/20230731110012.2913742-12-jagan@edgeble.ai/

The #address-cells and #size-cells are useful (and required) in the
ports node and for panel(s), but those properties are declared in their
schemas already. Now that there are no remaining users, remove these
properties from the Rockchip specific extensions of the Synopsys
DesignWare MIPI DSI host controller.

Signed-off-by: Diederik de Haas <didi.debian@cknow.org>
---
 .../bindings/display/rockchip/rockchip,dw-mipi-dsi.yaml     | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-mipi-dsi.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-mipi-dsi.yaml
index ccd71c5324af..0881e82deb11 100644
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-mipi-dsi.yaml
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-mipi-dsi.yaml
@@ -58,12 +58,6 @@ properties:
   power-domains:
     maxItems: 1
 
-  "#address-cells":
-    const: 1
-
-  "#size-cells":
-    const: 0
-
 required:
   - compatible
   - clocks
-- 
2.50.0


