Return-Path: <devicetree+bounces-3487-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 09BEA7AF10D
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 18:45:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id C12CC281BCE
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 16:45:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 84E0D30F81;
	Tue, 26 Sep 2023 16:45:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 755E71FA1
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 16:45:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 66410C433C7;
	Tue, 26 Sep 2023 16:45:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695746709;
	bh=NLDXpZvaFQNHIhUvBJFKAVrrZdic9lys/WgPWvzaSa8=;
	h=From:To:Cc:Subject:Date:From;
	b=awUPCHvX89TNdhiQI/PIhXg0GM/ClTHd8530cIF+XNPJEepM9m3LsaOT7s1saJ5Kr
	 kJU/V/ODgcGbK86avt6X+rCfStP/6DQApu4bOGXI+PCZxycD+iccBeTi9t5I8X0RQ3
	 oc6YL5CvJcDr8BkZrvZyBxqkUGNJUsutl9DiOVBpuxWWlGJXzrdx/MvuViSFAk922N
	 lVYEBd7ZXkpMlvDV9jx7XlFScPhzTdXMX74sFjvufktD8RZH9PzjA0Bwtzpdpc5inF
	 LXkwycxA2eXJliKYIjJOoLbaIgOgh0g7Mkqd1mB9oZkxdLfSmNx8MW6xrWCrrQqu6H
	 HtTcmtF3ndZGA==
Received: (nullmailer pid 101904 invoked by uid 1000);
	Tue, 26 Sep 2023 16:45:05 -0000
From: Rob Herring <robh@kernel.org>
To: "Rafael J. Wysocki" <rafael@kernel.org>, Daniel Lezcano <daniel.lezcano@linaro.org>, Amit Kucheria <amitk@kernel.org>, Zhang Rui <rui.zhang@intel.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>, Jonathan Hunter <jonathanh@nvidia.com>
Cc: linux-pm@vger.kernel.org, devicetree@vger.kernel.org, linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: thermal: nvidia,tegra124-soctherm: Add missing unevaluatedProperties on child node schemas
Date: Tue, 26 Sep 2023 11:44:52 -0500
Message-Id: <20230926164500.101593-1-robh@kernel.org>
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

Add unevaluatedProperties as needed, and then add any missing properties
flagged by the addition.

Signed-off-by: Rob Herring <robh@kernel.org>
---
 .../bindings/thermal/nvidia,tegra124-soctherm.yaml           | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/thermal/nvidia,tegra124-soctherm.yaml b/Documentation/devicetree/bindings/thermal/nvidia,tegra124-soctherm.yaml
index 04a2ba1aa946..b0237d236021 100644
--- a/Documentation/devicetree/bindings/thermal/nvidia,tegra124-soctherm.yaml
+++ b/Documentation/devicetree/bindings/thermal/nvidia,tegra124-soctherm.yaml
@@ -68,7 +68,12 @@ properties:
     patternProperties:
       "^(light|heavy|oc1)$":
         type: object
+        additionalProperties: false
+
         properties:
+          "#cooling-cells":
+            const: 2
+
           nvidia,priority:
             $ref: /schemas/types.yaml#/definitions/uint32
             minimum: 1
-- 
2.40.1


