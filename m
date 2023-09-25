Return-Path: <devicetree+bounces-2915-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DE457ACDF6
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 04:11:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id D9DA928137F
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 02:11:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 806F41107;
	Mon, 25 Sep 2023 02:11:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2228A10E2
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 02:11:50 +0000 (UTC)
Received: from out-199.mta0.migadu.com (out-199.mta0.migadu.com [91.218.175.199])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C62F51B1
	for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 19:11:48 -0700 (PDT)
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1695607907;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=y2D4ndlv6XBBNSayv9WpZm/nwIasLD85Z8EivmdKgzU=;
	b=RdHDtsbNWCx1JNGGXeTjSeIrNZQoqQW+PvoAHMK/bTVzCRQz9N2Ko7b2JjzGNCgHuVykRT
	jjz+hYVGJseB65cDSUekskVuddOUOmrTgbmlPsujCCaaRchDeTnZPPLzHQPfKjnp3blQj5
	Qfgfy+coT6QiFYy/LPmyC87ykXYRwPY3yyqJG/+m/7rk3JPPWYzER3sZEvEKWpPQb7uwZi
	VMT2lGSsGYgiWsb0sYEmVqPjclgB09g3/76/Wl9wsbYLWkwn304xpkO2qbXlL+WyxO4tOX
	dCO33TvpNWfxNn4+fTv03UDQE1OXXg9+x3Nx1KhqIm9SfRXAkF6ozbh09kzsJA==
From: John Watts <contact@jookia.org>
To: dri-devel@lists.freedesktop.org
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <quic_jesszhan@quicinc.com>,
	Sam Ravnborg <sam@ravnborg.org>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Chris Morgan <macromorgan@hotmail.com>,
	Jagan Teki <jagan@edgeble.ai>,
	John Watts <contact@jookia.org>,
	Paul Cercueil <paul@crapouillou.net>,
	Christophe Branchereau <cbranchereau@gmail.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Rob Herring <robh@kernel.org>
Subject: [RFC PATCH v3 5/7] dt-bindings: display: panel: Clean up leadtek,ltk035c5444t properties
Date: Mon, 25 Sep 2023 12:10:56 +1000
Message-ID: <20230925021059.451019-6-contact@jookia.org>
In-Reply-To: <20230925021059.451019-1-contact@jookia.org>
References: <20230925021059.451019-1-contact@jookia.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Remove common properties listed in common yaml files.
Add required properties needed to describe the panel.

Signed-off-by: John Watts <contact@jookia.org>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 .../bindings/display/panel/leadtek,ltk035c5444t.yaml      | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/panel/leadtek,ltk035c5444t.yaml b/Documentation/devicetree/bindings/display/panel/leadtek,ltk035c5444t.yaml
index ebdca5f5a001..7a55961e1a3d 100644
--- a/Documentation/devicetree/bindings/display/panel/leadtek,ltk035c5444t.yaml
+++ b/Documentation/devicetree/bindings/display/panel/leadtek,ltk035c5444t.yaml
@@ -18,16 +18,12 @@ properties:
   compatible:
     const: leadtek,ltk035c5444t
 
-  backlight: true
-  port: true
-  power-supply: true
-  reg: true
-  reset-gpios: true
-
   spi-3wire: true
 
 required:
   - compatible
+  - reg
+  - port
   - power-supply
   - reset-gpios
 
-- 
2.42.0


