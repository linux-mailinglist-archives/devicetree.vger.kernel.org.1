Return-Path: <devicetree+bounces-1325-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 557A27A5EEE
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 11:59:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0E2C9281F88
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 09:59:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B8AA5110B;
	Tue, 19 Sep 2023 09:59:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CE8A538C
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 09:59:47 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E9A7A116;
	Tue, 19 Sep 2023 02:59:45 -0700 (PDT)
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 6F1056607079;
	Tue, 19 Sep 2023 10:59:43 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1695117584;
	bh=diaOf6EmUGm6l+mxt6/O1nJ6UjZ2yPHfhRpfvuoUEnU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=mC4nCTkI8xE1emA5TZ+ruqLSdx6SsDSZr/hQPbMf+x8/LojiaCNdOZAE/lJtkbGiS
	 CNUHOzPfB2+drbHy5k2qndZVUq/8y07M3DbtEL3thwEVA6pVILz7Gv9qk4d8uMibqc
	 P9R4xgpHISMt0jYQwNcn21lsyBuc5QmMTK5uOdUPOJF7wvN9TYV/Fh387v3WBNXhr1
	 IuhiQoYvqpaq4KLeJ6ezOOOIiQeHMhpZyFWOgx8rsMeFuGpfWFuHHB6xt7ub4fkM/o
	 mmyNVEf97IhPEOPC1xJyfmRCBtxBCPPegaiSC2Fp70rJ87l82J6/hyHedHpXhEWWG6
	 SfSeuGQc0x5EA==
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: mchehab@kernel.org
Cc: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com,
	moudy.ho@mediatek.com,
	hverkuil-cisco@xs4all.nl,
	sakari.ailus@linux.intel.com,
	u.kleine-koenig@pengutronix.de,
	linqiheng@huawei.com,
	linux-media@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	kernel@collabora.com,
	wenst@chromium.org
Subject: [PATCH 1/2] media: dt-bindings: mediatek: Add phandle to mediatek,scp on MDP3 RDMA
Date: Tue, 19 Sep 2023 11:59:37 +0200
Message-ID: <20230919095938.70679-2-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230919095938.70679-1-angelogioacchino.delregno@collabora.com>
References: <20230919095938.70679-1-angelogioacchino.delregno@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

The MDP3 RDMA needs to communicate with the SCP remote processor: allow
specifying a phandle to a SCP core.

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 .../devicetree/bindings/media/mediatek,mdp3-rdma.yaml       | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/media/mediatek,mdp3-rdma.yaml b/Documentation/devicetree/bindings/media/mediatek,mdp3-rdma.yaml
index d639a1461143..0e5ce2e77e99 100644
--- a/Documentation/devicetree/bindings/media/mediatek,mdp3-rdma.yaml
+++ b/Documentation/devicetree/bindings/media/mediatek,mdp3-rdma.yaml
@@ -46,6 +46,11 @@ properties:
       include/dt-bindings/gce/<chip>-gce.h of each chips.
     $ref: /schemas/types.yaml#/definitions/uint32-array
 
+  mediatek,scp:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      Phandle to the System Control Processor (SCP) node
+
   power-domains:
     oneOf:
       - items:
@@ -98,6 +103,7 @@ examples:
         mediatek,gce-client-reg = <&gce SUBSYS_1400XXXX 0x1000 0x1000>;
         mediatek,gce-events = <CMDQ_EVENT_MDP_RDMA0_SOF>,
                               <CMDQ_EVENT_MDP_RDMA0_EOF>;
+        mediatek,scp = <&scp>;
         power-domains = <&spm MT8183_POWER_DOMAIN_DISP>;
         clocks = <&mmsys CLK_MM_MDP_RDMA0>,
                  <&mmsys CLK_MM_MDP_RSZ1>;
-- 
2.42.0


