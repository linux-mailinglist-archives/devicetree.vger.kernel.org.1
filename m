Return-Path: <devicetree+bounces-3014-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F197C7AD199
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 09:25:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id E6A942811B9
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 07:25:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F06010967;
	Mon, 25 Sep 2023 07:25:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72582EAE2
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 07:25:54 +0000 (UTC)
Received: from mickerik.phytec.de (mickerik.phytec.de [91.26.50.163])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 19A00C2
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 00:25:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a4; c=relaxed/simple;
	q=dns/txt; i=@phytec.de; t=1695626746; x=1698218746;
	h=From:Sender:Reply-To:Subject:Date:Message-ID:To:CC:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=UMryubw7V40Kt0s10wEsoKfNlmmVbfF67vz5HBs/8t0=;
	b=coB/qOdIXpKB5JdLrBsV0Z3UwxYAQljV5kQ3uQnPqGvlcEX2oQUkc9KYjAYOhMXk
	oJKBpLmYtIo6k5v/ohIe5RZgG2zpbpGSe7mtESyBIeGu+6xaLJYKDSgGOSw0lhEY
	ofiauyPYr57KEBHO8T/AKmaPh+rrG9YH8W0G6xSoWGY=;
X-AuditID: ac14000a-6e25770000001e37-4f-651135fa1706
Received: from berlix.phytec.de (Unknown_Domain [172.25.0.12])
	(using TLS with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(Client did not present a certificate)
	by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id 51.5C.07735.AF531156; Mon, 25 Sep 2023 09:25:46 +0200 (CEST)
Received: from lws-moog.phytec.de (172.25.0.11) by Berlix.phytec.de
 (172.25.0.12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.18; Mon, 25 Sep
 2023 09:25:45 +0200
From: Yannic Moog <y.moog@phytec.de>
Date: Mon, 25 Sep 2023 09:25:18 +0200
Subject: [PATCH v2 1/2] dt-bindings: arm: fsl: add phyGATE-Tauri-L board
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20230925-tauri_upstream_support-v2-1-62a6dfc48e31@phytec.de>
References: <20230925-tauri_upstream_support-v2-0-62a6dfc48e31@phytec.de>
In-Reply-To: <20230925-tauri_upstream_support-v2-0-62a6dfc48e31@phytec.de>
To: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>, Sascha Hauer
	<s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>
CC: <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <upstream@lists.phytec.de>, Yannic
 Moog <y.moog@phytec.de>, Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.12.3
X-Originating-IP: [172.25.0.11]
X-ClientProxiedBy: Florix.phytec.de (172.25.0.13) To Berlix.phytec.de
 (172.25.0.12)
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprKIsWRmVeSWpSXmKPExsWyRpKBR/eXqWCqwbEPHBZr9p5jspiyaQe7
	xfwj51gtHl71t1g1dSeLRd+Lh8wWh5oPMFlsenyN1aLr10pmi8u75rBZtO49wm7xd/smFosX
	W8Qtut+pO/B57Jx1l91j06pONo871/aweWxeUu/R393C6nHnx1JGj43vdjB59P818Pi8SS6A
	M4rLJiU1J7MstUjfLoEr4+Sa86wF0zgqHn09wdrAuIuti5GTQ0LARGLNukb2LkYuDiGBJUwS
	DZdusUI4jxglDr86wgRSxSagIvH4xT1WEJtFQFVi4fnNjCC2sICHxJp3M8Am8QoISpyc+YSl
	i5GDg1lAU2L9Ln2QMLOAvMT2t3OYIUo8JV7v/w82RgjI7tv8G2w8p4CXxM293Ywge0UEXjBJ
	HJv2A+wIZoHLjBK/369hhzhVWKJ90S0miG5ZiRfne6Hi8hLTzr1mhrBDJY5sWs00gVFoFpKb
	ZiHcNAvJTQsYmVcxCuVmJmenFmVm6xVkVJakJuulpG5iBEWdCAPXDsa+OR6HGJk4GA8xSnAw
	K4nw/nrGlyrEm5JYWZValB9fVJqTWnyIUZqDRUmc934PU6KQQHpiSWp2ampBahFMlomDU6qB
	caF2psf3fN6ZERmmW+89rr4hcOkKl/WFF9LmR1sYjupprZiU8vNTS9Mq5aATnH+VZ2u0y2Sv
	+Xxiu6v2m1+nW8qUyg1urxfe9MNFeqM47+sj9s+3+jp2nRF/KT277S2f5SvFde4FrNraj4+y
	/k+7dVE3+rmz+7Hpj42mX3GoKzAUMPfiet/Io8RSnJFoqMVcVJwIAO1PtoeoAgAA
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add dt compatible for the phyGATE-Tauri-L board. It uses the
phyCORE-i.MX8MM SoM

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Yannic Moog <y.moog@phytec.de>
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 2510eaa8906d..570794ce2813 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -974,7 +974,9 @@ properties:
 
       - description: PHYTEC phyCORE-i.MX8MM SoM based boards
         items:
-          - const: phytec,imx8mm-phyboard-polis-rdk # phyBOARD-Polis RDK
+          - enum:
+              - phytec,imx8mm-phyboard-polis-rdk # phyBOARD-Polis RDK
+              - phytec,imx8mm-phygate-tauri-l    # phyGATE-Tauri-L Gateway
           - const: phytec,imx8mm-phycore-som        # phyCORE-i.MX8MM SoM
           - const: fsl,imx8mm
 

-- 
2.34.1


