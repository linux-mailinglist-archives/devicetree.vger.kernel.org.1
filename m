Return-Path: <devicetree+bounces-11942-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 043897D71EA
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 18:51:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 60EFDB2115D
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 16:51:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E72428DC3;
	Wed, 25 Oct 2023 16:50:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="a+O1GJgS"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C3DDF50A
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 16:50:56 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 983D9129
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 09:50:55 -0700 (PDT)
Received: from pendragon.ideasonboard.com (213-243-189-158.bb.dnainternet.fi [213.243.189.158])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id B9B78BD1;
	Wed, 25 Oct 2023 18:50:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1698252640;
	bh=Xfn5YGrUx9bY+m3/mrRiFHDwaEdr35B00yVcirxymAQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=a+O1GJgStXRS9k6J+bBhT+KLXfi1VQowpq2F+NUttLHK0VWay3GBTL8eLH84oLroy
	 sCaeuQaM5peNSDDZRHs9LQ1W3I5VKhGI2xTkd1zzxfPoE1XY61I4ZcSk5l58M93Ubo
	 k6LhppPwSF41XcOA6jrvJO29Y/kD3JBDJU6yW2i8=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-arm-kernel@lists.infradead.org,
	imx@lists.linux.dev
Cc: devicetree@vger.kernel.org,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Li Yang <leoyang.li@nxp.com>,
	Marco Contenti <marco.c@variscite.com>,
	Nate Drude <nate.d@variscite.com>,
	FrancescoFerraro <francesco.f@variscite.com>,
	Harshesh Valera <harshesh.v@variscite.com>
Subject: [PATCH v2 1/4] dt-bindings: arm: fsl: Add Variscite DT8MCustomBoard with DART MX8M-PLUS
Date: Wed, 25 Oct 2023 19:50:55 +0300
Message-ID: <20231025165058.31697-2-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231025165058.31697-1-laurent.pinchart@ideasonboard.com>
References: <20231025165058.31697-1-laurent.pinchart@ideasonboard.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The DT8MCustomBoard is a carrier board from Variscite compatible with
the family ox i.MX8M DART modules (i.MX8MM, i.MX8MN and i.MX8MP). Add an
entry for the DT8MCustomBoard v2 mounted with a DART MX8M-PLUS module.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 9450b2c8a678..65f848a8155d 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -1116,6 +1116,12 @@ properties:
           - const: tq,imx8mp-tqma8mpql       # TQ-Systems GmbH i.MX8MP TQMa8MPQL SOM
           - const: fsl,imx8mp
 
+      - description: Variscite DT8MCustomBoard with DART i.MX8MP module
+        items:
+          - const: variscite,dart-mx8mp-dt8mcustomboard-v2 # Variscite DART-MX8M-PLUS on DT8MCustomBoard 2.x
+          - const: variscite,dart-mx8mp                    # Variscite i.MX8MP DART-MX8M-PLUS module
+          - const: fsl,imx8mp
+
       - description: i.MX8MQ based Boards
         items:
           - enum:
-- 
Regards,

Laurent Pinchart


