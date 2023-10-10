Return-Path: <devicetree+bounces-7120-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 382A47BF4B2
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 09:48:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6390F1C20CC4
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 07:48:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD03B134AB;
	Tue, 10 Oct 2023 07:48:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=xff.cz header.i=@xff.cz header.b="OVGqOL1D"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B4AD10A3E
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 07:48:43 +0000 (UTC)
Received: from vps.xff.cz (vps.xff.cz [195.181.215.36])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 49030B0;
	Tue, 10 Oct 2023 00:48:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xff.cz; s=mail;
	t=1696924120; bh=ln9yaefbuYCFpEUdZH05ypyuihDVslY8QNysNZk0VAI=;
	h=From:To:Cc:Subject:Date:References:From;
	b=OVGqOL1D2lPuYKrJV5D3YzES4tLaB0CMn+21BQdQenid+125weodPr02i4cV7vn3y
	 dLu+rDxnClYX1bzea7W0JNg9N2KCyVlxzEz1Kp7HzH3OyPYVXg/cdlww/rfI97A9IP
	 TNVvyQjgtV3nwaipHvX9juVS+ASsCO/CQGaX+vRk=
From: =?UTF-8?q?Ond=C5=99ej=20Jirman?= <megi@xff.cz>
To: Lee Jones <lee@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Ondrej Jirman <megi@xff.cz>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/2] dt-bindings: mfd: rk806: Allow rockchip,system-power-controller property
Date: Tue, 10 Oct 2023 09:48:20 +0200
Message-ID: <20231010074826.1791942-2-megi@xff.cz>
In-Reply-To: <20231010074826.1791942-1-megi@xff.cz>
References: <20231010074826.1791942-1-megi@xff.cz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: Ondrej Jirman <megi@xff.cz>

Declare support for this property.

Signed-off-by: Ondrej Jirman <megi@xff.cz>
---
 Documentation/devicetree/bindings/mfd/rockchip,rk806.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/rockchip,rk806.yaml b/Documentation/devicetree/bindings/mfd/rockchip,rk806.yaml
index cf2500f2e9a0..e8c9f17f6ea8 100644
--- a/Documentation/devicetree/bindings/mfd/rockchip,rk806.yaml
+++ b/Documentation/devicetree/bindings/mfd/rockchip,rk806.yaml
@@ -29,6 +29,11 @@ properties:
   '#gpio-cells':
     const: 2
 
+  rockchip,system-power-controller:
+    type: boolean
+    description:
+      Telling whether or not this PMIC is controlling the system power.
+
   vcc1-supply:
     description:
       The input supply for dcdc-reg1.
-- 
2.42.0


