Return-Path: <devicetree+bounces-190430-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 92DD8AEBBB2
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 17:28:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 85B01645B2A
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 15:27:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A0F492EA15C;
	Fri, 27 Jun 2025 15:27:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b="PbFQWfjG"
X-Original-To: devicetree@vger.kernel.org
Received: from out-171.mta0.migadu.com (out-171.mta0.migadu.com [91.218.175.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFEA62EA148
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 15:27:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751038038; cv=none; b=XxChRLt87FuFvtStMQLrpdlOuZQiYi6Qa7kYzt3VUwW+wXEsnHpPPJZmU0OR7pXU2EF5KtE8gXxcL6QOjKHbyX1towODgu2G6Ksu2OLOfeHvWgG9Rk4VAtBnFNBSaYfJ/GsGvn8loQ32b1kC+ila9LFNGxIuZD5+XBclM5usDwc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751038038; c=relaxed/simple;
	bh=ROFq9xtzXOdmqMZ7ZCjIaDyNS7DKkayyoX8QkeXIndE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ldeHpiFKoSfK8eJLBH5RTPecrcf/bcJDHOyN+4pKV1JkJEBQbhHoYkg4eylIn/2pWA2wwGYakrLRcRs+qNriclnQUZ1rr0gcj9QjBmNJxM6E9m3GXwCC7JosxDhy/kY9u0dkBpR6aQYJHT9vwGarKj5tZNssdkQ7RPQGSgnwZl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org; spf=pass smtp.mailfrom=cknow.org; dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b=PbFQWfjG; arc=none smtp.client-ip=91.218.175.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cknow.org
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1751038034;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=FvDG6tIe9cP6E3SSgrjHunQaCLP0z6lp3rhIo96W2Gg=;
	b=PbFQWfjGA5g4dUGelEC6LcLrD46714RJX3ckSPui+8o/i+vQ8KweBZKS5nHxKNaZeTfrvo
	xCFC2wEt3pPWbkhTxpFk/7eEX9DNMSorvpbGpUlzeQkfuyg+uPKfKDQ1Ttp3PFVmrV7aNj
	sbDWC2aRgTG+kcXWDvB7Zta/HupK8rIYAsC4cMVa/bZb2FOX6jrUWLqsFgEoO+0QN1OJhY
	omlK4ARAHUlW2t92vbGnj2O2Yg4IvNV+eXKl0CGZ5k870UtKYvkNSu2UC0DtERgEWD4F8U
	7C7pA5kuLUfW2wnxlEqpdapqtt97a/XSQiDrj8Y8Qx5NP3o8uWuakhOCOTVkug==
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
Subject: [PATCH 3/8] dt-bindings: display: rockchip,dw-mipi-dsi: Drop address/size cells
Date: Fri, 27 Jun 2025 17:16:22 +0200
Message-ID: <20250627152645.740981-4-didi.debian@cknow.org>
In-Reply-To: <20250627152645.740981-1-didi.debian@cknow.org>
References: <20250627152645.740981-1-didi.debian@cknow.org>
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


