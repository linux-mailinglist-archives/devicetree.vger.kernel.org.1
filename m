Return-Path: <devicetree+bounces-60225-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id D6B158A87CE
	for <lists+devicetree@lfdr.de>; Wed, 17 Apr 2024 17:37:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 63684B2751B
	for <lists+devicetree@lfdr.de>; Wed, 17 Apr 2024 15:37:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F1F071487D6;
	Wed, 17 Apr 2024 15:35:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=aruba.it header.i=@aruba.it header.b="NJvKJUDe"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpcmd13146.aruba.it (smtpcmd13146.aruba.it [62.149.156.146])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 965EF147C8D
	for <devicetree@vger.kernel.org>; Wed, 17 Apr 2024 15:35:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=62.149.156.146
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713368146; cv=none; b=TF7k+QPnyTcX4uagL0611Zc80LsReRO/X4DGnQEJu5wh+Jwp27r1ZA1M3235+H7ONn8dVAMGLRhRsZSEFadvQ5wDZI455NJsuQkXr7c86yYKE+1j1IQZhzZlC7wX3Ve60blcg3+pXvl6lSVIO/sRBahQQyXl77kVV/QrPyyyHzE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713368146; c=relaxed/simple;
	bh=BPnGJTtrBvdVCZOyJP7914EN0dAiey74ztwFVJtarM4=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=EjLnYpgXpqEwTP4B1QniYlat0uo/kDb1Ux7TWhu6MZnIUPLQuiqrhTbNmaL+z36DNzRrzDj/svBnHq0Zq1lEN2j/A/sKeWhZl64i0oBJokJaIURHv4riXjpKmSO0Vm76YfjlhxKpSqpmXUNaJe3EakqrvrJ6dh3hu+9XPQHmwcg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=engicam.com; spf=pass smtp.mailfrom=engicam.com; dkim=pass (2048-bit key) header.d=aruba.it header.i=@aruba.it header.b=NJvKJUDe; arc=none smtp.client-ip=62.149.156.146
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=engicam.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=engicam.com
Received: from engicam.com ([77.32.9.15])
	by Aruba Outgoing Smtp  with ESMTPSA
	id x7JrrIqgbiznzx7JtrXavP; Wed, 17 Apr 2024 17:35:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=aruba.it; s=a1;
	t=1713368133; bh=BPnGJTtrBvdVCZOyJP7914EN0dAiey74ztwFVJtarM4=;
	h=From:To:Subject:Date:MIME-Version;
	b=NJvKJUDezl7yGMEMbcQPTXuJIv8Yk/7ra8eoQrXuSta3WFwdMwiM7/WgUpt73KNBm
	 k6f27c8qsOrBFet1Q09uQ/5C1XjKczlbLMFkT4Lv7Ceaw9/fSWB/zmWkyx4eQ0xmAN
	 eY2jf/5LeQICU5Sqhc/zv2uICdIVgH7RZ7hXLTGNBPOFKwaZI+pOp92BqeE4DiFrsC
	 /39tQfgWv9KmIDn9Sh97T1SsAwbLY2OjBB9nIkYWq+0bMYz5lHwMOZVEz4lxjTF72m
	 +RFd/gDJy/c44OiIMmavmm6E0Pn/s92ML2ret9E0/RSzg1gNegldybYqvaBRq0sKmG
	 BSzD7W7eZYTeA==
From: Fabio Aiuto <fabio.aiuto@engicam.com>
To: Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>
Cc: devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Fabio Aiuto <fabio.aiuto@engicam.com>,
	Matteo Lisi <matteo.lisi@engicam.com>,
	Mirko Ardinghi <mirko.ardinghi@engicam.com>
Subject: [PATCH 1/4] dt-bindings: arm: fsl: add Engicam i.Core MX93 EDIMM 2.0 Starter Kit
Date: Wed, 17 Apr 2024 17:35:25 +0200
Message-Id: <20240417153528.7838-2-fabio.aiuto@engicam.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240417153528.7838-1-fabio.aiuto@engicam.com>
References: <20240417153528.7838-1-fabio.aiuto@engicam.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CMAE-Envelope: MS4xfKf54hZLWy+EqOg5Nqgc0goNOHAhokwMzcseEGM/md4Kj+Xk6iBWYxM59JqOzXCKNRty4XULab5exIS2u3izr6RaljxgtYxGjR+musWIS2kHsPo2muOv
 cx3OAN2qTT04yrI0jQJ3OV8U1pF/afILEFA0/d7zFBvgcVEz5Nx518soLXLny+ldQw49oho1qyj4eKC+4AF4Z1iD9qBQ1zGnFHERv6SiQjFIY9tgDophvfUD
 4mMNTQbiNHKMD6AmNx9es0KWvdA/uT5wt+i1xRnIXcQZUNwggHWuZD1K0lYwnlZrx+sHYc9IXgt+BuSlbLAsmQiGwbGUxUiJTRgVD/6H7SI9BMNVVjPs782U
 9/w8yInSr6n3d8+2zhEl//TKWBGE0LsZgxnf+sgkg92CE+JCzCZJ05XNxvFdx5dn45pii8xZkNv3OL+ZaYF56OWRHgKI5zbTSNdDNgMhJPVBcc/INEXOdp9K
 kmSiqqc1+RUrSL0rS61VTWk/lZImefrPW1dB+dDf0z+DOlB4176R1ms5m5SvfQmGvgmMdBkBmOpXKyMiByQQLP6KWurJpxtBMpr751Lipco7K3MY4KLjL4zc
 RbGc5sFewGiye+2qrlOD0Kn4jf/HBUDGy/4cp5UsWTq/OA==

i.Core MX93 is a NXP i.MX93 based EDIMM SoM by Engicam.

EDIMM 2.0 Starter Kit is an EDIMM 2.0 Form Factor Capacitive
Evaluation Board by Engicam.

i.Core MX93 needs to be mounted on top of EDIMM 2.0 Starter Kit
to get the full i.Core MX93 EDIMM 2.0 Starter Kit board.

Add bindings for this board.

Cc: Matteo Lisi <matteo.lisi@engicam.com>
Cc: Mirko Ardinghi <mirko.ardinghi@engicam.com>
Signed-off-by: Fabio Aiuto <fabio.aiuto@engicam.com>
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 0027201e19f8..b497a01c7418 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -1265,6 +1265,13 @@ properties:
               - fsl,imx93-11x11-evk       # i.MX93 11x11 EVK Board
           - const: fsl,imx93
 
+      - description: Engicam i.Core MX93 based Boards
+        items:
+          - enum:
+              - engicam,icore-mx93-edimm2         # i.MX93 Engicam i.Core MX93 EDIMM 2.0 Starter Kit
+          - const: engicam,icore-mx93             # i.MX93 Engicam i.Core MX93 Som
+          - const: fsl,imx93
+
       - description: i.MXRT1050 based Boards
         items:
           - enum:
-- 
2.34.1


