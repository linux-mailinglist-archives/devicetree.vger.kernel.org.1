Return-Path: <devicetree+bounces-2391-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E23897AAB16
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 09:59:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 948972833B5
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 07:59:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 575691A728;
	Fri, 22 Sep 2023 07:59:55 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AE421A72F;
	Fri, 22 Sep 2023 07:59:48 +0000 (UTC)
Received: from relay8-d.mail.gandi.net (relay8-d.mail.gandi.net [217.70.183.201])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9FF8019A;
	Fri, 22 Sep 2023 00:59:45 -0700 (PDT)
Received: by mail.gandi.net (Postfix) with ESMTPA id D2D861BF206;
	Fri, 22 Sep 2023 07:59:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1695369584;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=p22HMMIKMFQbh6/HiMaCltDimc7HD++LcS5qhfEDNEc=;
	b=GArN93DC6ebpUcayIauic4k2/hoEj0gjXkRPPq8wqjroVH5E2GFc+0US01hZa3b3A2sN8t
	ObxRu0gLctVJl+NamgiWsqyNwZm8z570Uoq3igB6jQofcPQ9iiwL1t0dah5h8VLYfj2NHb
	8DBEf3pQ3u8Ma1ia042rcnZ3ItlgdyXeRbjQpFEYB3O11icDqu7CrlYgKFLZIDjElWAyX1
	0KB5zNcd2RB49N4GvAFLbza/Yx0hxvwXeEZ2mvaE5HMbsmQU8HmO2FEh0z3xwMThFQ9krQ
	5AeWz/llwvxLcZWzyid3P/ZVx1YZGW+njLgAl5D8Qrz4md2ngmcK3JAU/FRu9w==
From: Herve Codina <herve.codina@bootlin.com>
To: Herve Codina <herve.codina@bootlin.com>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Andrew Lunn <andrew@lunn.ch>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Lee Jones <lee@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Qiang Zhao <qiang.zhao@nxp.com>,
	Li Yang <leoyang.li@nxp.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	Shengjiu Wang <shengjiu.wang@gmail.com>,
	Xiubo Li <Xiubo.Lee@gmail.com>,
	Fabio Estevam <festevam@gmail.com>,
	Nicolin Chen <nicoleotsuka@gmail.com>,
	Christophe Leroy <christophe.leroy@csgroup.eu>,
	Randy Dunlap <rdunlap@infradead.org>
Cc: netdev@vger.kernel.org,
	linuxppc-dev@lists.ozlabs.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	alsa-devel@alsa-project.org,
	Simon Horman <horms@kernel.org>,
	Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Conor Dooley <conor.dooley@microchip.com>,
	Rob Herring <robh@kernel.org>
Subject: [PATCH v6 06/30] dt-bindings: soc: fsl: cpm_qe: cpm1-scc-qmc: Fix example property name
Date: Fri, 22 Sep 2023 09:58:41 +0200
Message-ID: <20230922075913.422435-7-herve.codina@bootlin.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230922075913.422435-1-herve.codina@bootlin.com>
References: <20230922075913.422435-1-herve.codina@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-GND-Sasl: herve.codina@bootlin.com
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_PASS,
	URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

The given example mentions the 'fsl,mode' property whereas the
correct property name, the one described, is 'fsl,operational-mode'.

Fix the example to use the correct property name.

Fixes: a9b121327c93 ("dt-bindings: soc: fsl: cpm_qe: Add QMC controller")
Signed-off-by: Herve Codina <herve.codina@bootlin.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
Acked-by: Rob Herring <robh@kernel.org>
---
 .../bindings/soc/fsl/cpm_qe/fsl,cpm1-scc-qmc.yaml           | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/soc/fsl/cpm_qe/fsl,cpm1-scc-qmc.yaml b/Documentation/devicetree/bindings/soc/fsl/cpm_qe/fsl,cpm1-scc-qmc.yaml
index ec888f48cac8..450a0354cb1d 100644
--- a/Documentation/devicetree/bindings/soc/fsl/cpm_qe/fsl,cpm1-scc-qmc.yaml
+++ b/Documentation/devicetree/bindings/soc/fsl/cpm_qe/fsl,cpm1-scc-qmc.yaml
@@ -137,7 +137,7 @@ examples:
         channel@16 {
             /* Ch16 : First 4 even TS from all routed from TSA */
             reg = <16>;
-            fsl,mode = "transparent";
+            fsl,operational-mode = "transparent";
             fsl,reverse-data;
             fsl,tx-ts-mask = <0x00000000 0x000000aa>;
             fsl,rx-ts-mask = <0x00000000 0x000000aa>;
@@ -146,7 +146,7 @@ examples:
         channel@17 {
             /* Ch17 : First 4 odd TS from all routed from TSA */
             reg = <17>;
-            fsl,mode = "transparent";
+            fsl,operational-mode = "transparent";
             fsl,reverse-data;
             fsl,tx-ts-mask = <0x00000000 0x00000055>;
             fsl,rx-ts-mask = <0x00000000 0x00000055>;
@@ -155,7 +155,7 @@ examples:
         channel@19 {
             /* Ch19 : 8 TS (TS 8..15) from all routed from TSA */
             reg = <19>;
-            fsl,mode = "hdlc";
+            fsl,operational-mode = "hdlc";
             fsl,tx-ts-mask = <0x00000000 0x0000ff00>;
             fsl,rx-ts-mask = <0x00000000 0x0000ff00>;
         };
-- 
2.41.0


