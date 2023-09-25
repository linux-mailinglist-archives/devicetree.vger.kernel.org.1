Return-Path: <devicetree+bounces-3275-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 81E8D7AE0A6
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 23:25:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 330AE281673
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 21:25:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 88158241E2;
	Mon, 25 Sep 2023 21:24:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78066224F7
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 21:24:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2EF48C433C8;
	Mon, 25 Sep 2023 21:24:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695677098;
	bh=lG0yL+eeYGuTlpkLttZs74ATqRMRX0Pu1q2jQdiN/BM=;
	h=From:To:Cc:Subject:Date:From;
	b=Tm61ldPqTCtxDXjiWNw+TTkbyOgJdeNdv0E/dtI4RAOOeskTn1xbn+aHJqLtBYelB
	 VvV4eDnlAnedgpP6dl+EsQIeoyoUGx0e2fIXc7jUINHvwao24+B14CaMdOffTjcAmH
	 cS0KnQhpKI7ljPBwjbLCZJGrO4C73bzAiEDYpDbfkjDbt4tAWSeXze3/8lzVNFwOvA
	 6iYQkEQ3sYJeRm/T5m36AjbRcyD/JolsgUdmON0wE/ckV26gqcaznnIDtdV8jhmfql
	 aVh6ffpaeRG1/DPOHE/L1Uy5svEKD6P4O0+yqxfFDFpH7ZG7Nv97dUWwiNCYzR90xx
	 6NzwToDKkDk0Q==
Received: (nullmailer pid 1972777 invoked by uid 1000);
	Mon, 25 Sep 2023 21:24:46 -0000
From: Rob Herring <robh@kernel.org>
To: Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Kuogee Hsieh <quic_khsieh@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: display: msm: Add missing unevaluatedProperties on child node schemas
Date: Mon, 25 Sep 2023 16:24:24 -0500
Message-Id: <20230925212434.1972368-1-robh@kernel.org>
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
 Documentation/devicetree/bindings/display/msm/dp-controller.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
index f12558960cd8..dbe398f84ffb 100644
--- a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
@@ -114,6 +114,7 @@ properties:
 
       port@1:
         $ref: /schemas/graph.yaml#/$defs/port-base
+        unevaluatedProperties: false
         description: Output endpoint of the controller
         properties:
           endpoint:
-- 
2.40.1


