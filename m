Return-Path: <devicetree+bounces-136074-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 454DEA03B86
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 10:50:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id EB1257A2724
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 09:50:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF7A61E3DF7;
	Tue,  7 Jan 2025 09:50:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b="LxKLmY7W";
	dkim=fail reason="key not found in DNS" (0-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="Z5smUcNp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C72001E47A6;
	Tue,  7 Jan 2025 09:50:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=93.104.207.81
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736243422; cv=none; b=UvhsQguaf+2T0TtPLpFYBHanaAF+hMoUT90m8IppFaYhUGeF9V779/OzCJ5CNmHP49Jo/KwvNP5PpjgWtQZB5t4p/ldKpQwnr+wSYJT0r5jPwC7T9ZbiSk+LPVgnY7fk2pe5lwmxeylvngDhXe/coNZsyZbfrjQiG4y9TytwJko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736243422; c=relaxed/simple;
	bh=z8bjPKsOwW01zmWSLOle1qUmNaf3478HQau+chSZ2VA=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=X0Oep2wwSdQXfjKChbQfNXUD2e7QV48rfL3d03/RYLzxImuJC4ikZupBb5vb74wixcHR54W8mES9WckYDY2Oj6wM83moR5wt0JnU6pVoJYoqDe1PqiFEhjqeNS189L/bQ7cD0wV/t0H4ZXXUmoGJnq0KxIWtmONNZE3AviPI4xw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b=LxKLmY7W; dkim=fail (0-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=Z5smUcNp reason="key not found in DNS"; arc=none smtp.client-ip=93.104.207.81
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1736243418; x=1767779418;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=QzP2L75tY0s4FayK+dDFBr6ag0IirIKPS04LmEz6Ta8=;
  b=LxKLmY7Wf3k4MIk5c98KStITxDOU4g2Ty3WxxmY38nbpYwlgHyxnDDMh
   9a2kv0SbuDzZ++xt+5hhkZJ6kJIooROHdbNcPafvQmDxQItOuBRpO6KO/
   GmmlntdJ45nY4JSOkeDOVuLTNCsx+d0bGoSalWDUKSgjC61pdTy1e98mZ
   RLu1D4UgKEz2fKHtg78axj3tJfcA32P8siV//6/x+Y7rIOOQgVbIg9zIf
   0wxZh+ye0rvFkG+hSEQRdW01nLPEdUVFjMnIyJQt5E36IlrszgXttZQck
   8YsALl+OHclxiOFZjk2qU8n5fi1WF1rIHf+aDFVKXRHCOYN58DRRU2RgJ
   g==;
X-CSE-ConnectionGUID: Kew2XeO4QOOMJUerIB5xZA==
X-CSE-MsgGUID: G9WjVQx0RXG03kFOLwwcrA==
X-IronPort-AV: E=Sophos;i="6.12,295,1728943200"; 
   d="scan'208";a="40889027"
Received: from vmailcow01.tq-net.de ([10.150.86.48])
  by mx1.tq-group.com with ESMTP; 07 Jan 2025 10:50:17 +0100
X-CheckPoint: {677CF8D9-8-DDBC2A76-F469E51C}
X-MAIL-CPID: 0A25C61B0BAAEF839FD7A44E474FE128_0
X-Control-Analysis: str=0001.0A682F26.677CF8D9.007F,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 50C2F163CCE;
	Tue,  7 Jan 2025 10:50:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ew.tq-group.com;
	s=dkim; t=1736243412;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=QzP2L75tY0s4FayK+dDFBr6ag0IirIKPS04LmEz6Ta8=;
	b=Z5smUcNpRQkb2oKHkcLoUQXNeYAtAEovHnKQNFM1HxqwL5Uw2iJvL+tBjPS2tQZ/tJpCn6
	DyIYhmaOKTo33GTAj8GacS1ig3QgACh8TcMf1uVQRWueIn3M5gCEiEUCUsTOIpGyqDqLXA
	dT1p+vO3Oz25GBoG8d/Yjb4JfEzG0tUaT71FoUYliRRdaUVkGPD3OAv+l1c4ui2LUMZaGL
	VqC1S1abM3VqDQGoDAXCFCNZ58yy9DVvtJ6QPmemR/CWJ2MeDm+YEsJ4NN5IP2094gc18b
	xb0U4tp/TDIGqCahr0gRDQ5aPKk60MdooTdkiZp6K05q0Ju2SZ/kmgbx5/ml4A==
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Inki Dae <inki.dae@samsung.com>,
	Jagan Teki <jagan@amarulasolutions.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/2] dt-bindings: samsung,mipi-dsim: Add imx7d specific compatible
Date: Tue,  7 Jan 2025 10:49:42 +0100
Message-Id: <20250107094943.518474-3-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250107094943.518474-1-alexander.stein@ew.tq-group.com>
References: <20250107094943.518474-1-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.3

This add a imx7(d) specific compatible which is compatible to imx8mm.
This silences the dtbs_check warning:
arch/arm/boot/dts/nxp/imx/imx7s-mba7.dtb: dsi@30760000: compatible: 'oneOf' conditional failed, one must be fixed:
 ['fsl,imx7d-mipi-dsim', 'fsl,imx8mm-mipi-dsim'] is too long

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 .../devicetree/bindings/display/bridge/samsung,mipi-dsim.yaml | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/bridge/samsung,mipi-dsim.yaml b/Documentation/devicetree/bindings/display/bridge/samsung,mipi-dsim.yaml
index 4ed7a799ba26b..e43fec5609417 100644
--- a/Documentation/devicetree/bindings/display/bridge/samsung,mipi-dsim.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/samsung,mipi-dsim.yaml
@@ -27,7 +27,9 @@ properties:
           - fsl,imx8mm-mipi-dsim
           - fsl,imx8mp-mipi-dsim
       - items:
-          - const: fsl,imx8mn-mipi-dsim
+          - enum:
+              - fsl,imx7d-mipi-dsim
+              - fsl,imx8mn-mipi-dsim
           - const: fsl,imx8mm-mipi-dsim
 
   reg:
-- 
2.34.1


