Return-Path: <devicetree+bounces-3488-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 27B107AF113
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 18:45:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 193E4281E12
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 16:45:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B89A34196;
	Tue, 26 Sep 2023 16:45:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B0C01FA1
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 16:45:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 62842C433C7;
	Tue, 26 Sep 2023 16:45:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695746725;
	bh=aYyNkcYVEy5iUmtkKozylsTv6tDrVJnDNQ3yWacAOpE=;
	h=From:To:Cc:Subject:Date:From;
	b=qq2tfooTqqPYFON0eSeyQI07FZu1DUcA8mcw4uBpxv1/cgJOQRnZ93YtiKi/61vKS
	 UAYcUWY/ICSiL+GOadHAG2K5n5KfxIxdfUG9ho7TLRoc33/bpFVx4qq6m+waAyh/n9
	 HpcjGSw6bDZ9LkKqz6EtET7UqIpCeML9hecUhZJ9IW0tBP9qZ91PhMoJHjO8pLe45x
	 zb1JyUuu/h1CApqiBKjopN4PmYLLQlbAA7VLLCK/veDYnoCJ4dHpkwJwoZEQTAVsPE
	 f2wL1UboIZ/WN2yO43riAsOtVxN7efRf1RP0q+Ko+gHgNyTxz6JBW3NsKHOqzLsyv3
	 wFfYrCigx4ctQ==
Received: (nullmailer pid 102369 invoked by uid 1000);
	Tue, 26 Sep 2023 16:45:22 -0000
From: Rob Herring <robh@kernel.org>
To: Bjorn Andersson <andersson@kernel.org>, Mathieu Poirier <mathieu.poirier@linaro.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Tinghan Shen <tinghan.shen@mediatek.com>
Cc: linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org
Subject: [PATCH] dt-bindings: remoteproc: mtk,scp: Add missing additionalProperties on child node schemas
Date: Tue, 26 Sep 2023 11:45:08 -0500
Message-Id: <20230926164513.101958-1-robh@kernel.org>
X-Mailer: git-send-email 2.40.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Just as unevaluatedProperties or additionalProperties are required at
the top level of schemas, they should (and will) also be required for
child node schemas. That ensures only documented properties are
present for any node.

Signed-off-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/remoteproc/mtk,scp.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/remoteproc/mtk,scp.yaml b/Documentation/devicetree/bindings/remoteproc/mtk,scp.yaml
index 895415772d1d..24422fd56e83 100644
--- a/Documentation/devicetree/bindings/remoteproc/mtk,scp.yaml
+++ b/Documentation/devicetree/bindings/remoteproc/mtk,scp.yaml
@@ -91,6 +91,7 @@ allOf:
 
 additionalProperties:
   type: object
+  additionalProperties: false
   description:
     Subnodes of the SCP represent rpmsg devices. The names of the devices
     are not important. The properties of these nodes are defined by the
-- 
2.40.1


