Return-Path: <devicetree+bounces-7895-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 618897C5FC3
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 23:59:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1AB342825A8
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 21:59:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EFB553F4B3;
	Wed, 11 Oct 2023 21:59:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=xff.cz header.i=@xff.cz header.b="E5Ef/3d5"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 379563E47F
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 21:59:06 +0000 (UTC)
Received: from vps.xff.cz (vps.xff.cz [195.181.215.36])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0BC66BA;
	Wed, 11 Oct 2023 14:59:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xff.cz; s=mail;
	t=1697061541; bh=FcSaXpgQugUavyg7HRKXSvvgQNzH7q5WbnBTnWUJw30=;
	h=From:To:Cc:Subject:Date:References:From;
	b=E5Ef/3d5n6dykqvrjokPoXVgXLMnmTpFaa2N9YUmZK49wapNlJ3NUC3ZBGYe+fAjX
	 h4mUIYcnC/bfJGwROjLaSo2et9kB52hzHCXpue0VQHN36LRZUq06D9t4Q99N9NpXc5
	 scsD3yFyHxlVBviAMc7yC21VBJkOYcIJ/61bl+mw=
From: =?UTF-8?q?Ond=C5=99ej=20Jirman?= <megi@xff.cz>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Ondrej Jirman <megi@xff.cz>,
	Jagan Teki <jagan@edgeble.ai>,
	Jonas Karlman <jonas@kwiboo.se>,
	Chris Morgan <macromorgan@hotmail.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 1/2] dt-bindings: arm: rockchip: Add Pine64 QuarzPro64
Date: Wed, 11 Oct 2023 23:58:44 +0200
Message-ID: <20231011215856.2082241-2-megi@xff.cz>
In-Reply-To: <20231011215856.2082241-1-megi@xff.cz>
References: <20231011215856.2082241-1-megi@xff.cz>
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

Add devicetree binding documentation for Pine64 QuartzPro64 SBC.

Signed-off-by: Ondrej Jirman <megi@xff.cz>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index ca5389862887..0bd51ba0d6a8 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -660,6 +660,11 @@ properties:
               - pine64,quartz64-b
           - const: rockchip,rk3566
 
+      - description: Pine64 QuartzPro64
+        items:
+          - const: pine64,quartzpro64
+          - const: rockchip,rk3588
+
       - description: Pine64 SoQuartz SoM
         items:
           - enum:
-- 
2.42.0


