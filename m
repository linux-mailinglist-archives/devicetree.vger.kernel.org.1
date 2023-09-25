Return-Path: <devicetree+bounces-3280-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 028607AE0BC
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 23:27:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 01BDAB2098A
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 21:27:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CAC98241EB;
	Mon, 25 Sep 2023 21:27:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA29F224F0
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 21:27:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AE6C8C433C7;
	Mon, 25 Sep 2023 21:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695677229;
	bh=DZR9A6i6MwZpSmPkTpv4+vnnZyXwO69lbomCiTiEecY=;
	h=From:To:Cc:Subject:Date:From;
	b=X+B17qpBompApV7KxIhHfy+meUzhWUyN3D/zDSR9w/zRL95v+FAIszzOjjdczfqab
	 VStE7VYs0w06r/+FMBKwxyeHHf5GQ8eQNbnxhC8IF+Kxr0iQPowksivDGSXZESBgnq
	 N3JyMP10zNEQfxSm7RkXiPlZior10Snuuhe/nBUcGwUJMRYDxVOmfK7KIogPnEBZTp
	 5dW/RWXEEmfT/JmJ5sCLLkOySsrJ1wf2T5a66F47RUSfCTFs+a6poKz4ObwPZTnL5Y
	 bs5LxS4RQaFWZMBCHcAalufd7E22drMc9ay43ZIqOnrK2r9y2Nexvmix18jcm7sj5O
	 3BJzFL2cCgyKw==
Received: (nullmailer pid 1975725 invoked by uid 1000);
	Mon, 25 Sep 2023 21:27:06 -0000
From: Rob Herring <robh@kernel.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Iskren Chernev <me@iskren.info>, Christoph Fritz <chf.fritz@googlemail.com>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH] regulator: dt-bindings: Add missing unevaluatedProperties on child node schemas
Date: Mon, 25 Sep 2023 16:26:53 -0500
Message-Id: <20230925212658.1975419-1-robh@kernel.org>
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
 Documentation/devicetree/bindings/regulator/maxim,max20086.yaml | 1 +
 Documentation/devicetree/bindings/regulator/maxim,max77826.yaml | 2 ++
 Documentation/devicetree/bindings/regulator/onnn,fan53880.yaml  | 2 ++
 3 files changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/regulator/maxim,max20086.yaml b/Documentation/devicetree/bindings/regulator/maxim,max20086.yaml
index 05f72391185e..7394c0a339c5 100644
--- a/Documentation/devicetree/bindings/regulator/maxim,max20086.yaml
+++ b/Documentation/devicetree/bindings/regulator/maxim,max20086.yaml
@@ -43,6 +43,7 @@ properties:
       "^OUT[1-4]$":
         type: object
         $ref: regulator.yaml#
+        unevaluatedProperties: false
 
     additionalProperties: false
 
diff --git a/Documentation/devicetree/bindings/regulator/maxim,max77826.yaml b/Documentation/devicetree/bindings/regulator/maxim,max77826.yaml
index 78c0b63243f7..6d6bbfbd26d4 100644
--- a/Documentation/devicetree/bindings/regulator/maxim,max77826.yaml
+++ b/Documentation/devicetree/bindings/regulator/maxim,max77826.yaml
@@ -30,10 +30,12 @@ properties:
       "^LDO([1-9]|1[0-5])$":
         type: object
         $ref: regulator.yaml#
+        unevaluatedProperties: false
 
       "^BUCK|BUCKBOOST$":
         type: object
         $ref: regulator.yaml#
+        unevaluatedProperties: false
 
     additionalProperties: false
 
diff --git a/Documentation/devicetree/bindings/regulator/onnn,fan53880.yaml b/Documentation/devicetree/bindings/regulator/onnn,fan53880.yaml
index eb61e04ef852..b5181719daa1 100644
--- a/Documentation/devicetree/bindings/regulator/onnn,fan53880.yaml
+++ b/Documentation/devicetree/bindings/regulator/onnn,fan53880.yaml
@@ -48,10 +48,12 @@ properties:
       "^LDO[1-4]$":
         type: object
         $ref: regulator.yaml#
+        unevaluatedProperties: false
 
       "^BUCK|BOOST$":
         type: object
         $ref: regulator.yaml#
+        unevaluatedProperties: false
 
     additionalProperties: false
 
-- 
2.40.1


