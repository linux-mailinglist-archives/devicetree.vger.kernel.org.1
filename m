Return-Path: <devicetree+bounces-3286-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ED077AE17E
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 00:05:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 5B9661C2034C
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 22:05:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B861825112;
	Mon, 25 Sep 2023 22:05:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7C14241E0
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 22:05:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5F298C433C8;
	Mon, 25 Sep 2023 22:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695679524;
	bh=H4jPOTCta7deecGCFZSg91gHO4eF5tZipTzNxDka1fc=;
	h=From:To:Cc:Subject:Date:From;
	b=YsiWcjhPsQdx8BhkOak0BQnIP6/PyKjreGSE1FoJowCn7x4tkGxL2IJWJyN3ePum1
	 zV9eMnG9xI95nOvPD/AoP3K1bSM+v7jO27cVG0ORvNdYcXiFGRu4GQ98JlBe/3woRl
	 gov+dtq00vnipriX/C4L9TPpr3hVZvNvxc9u/YuVWz+9WnAsfkUahXTJckCrs+ISmI
	 S/1dsZHwd+GjRPHm+YVM9wi3s5a4J/uQSkIo1SVavDbW+GXEfLtpM23hiQ/MSEg7dn
	 U2KXurs33xuWywDZ2mi25KX8oMN8Hs6CbCeWocgqmsJxCDMd8FryfwjR2Dm5X/vd+g
	 nYyKFr3JYWv1w==
Received: (nullmailer pid 2026838 invoked by uid 1000);
	Mon, 25 Sep 2023 22:05:20 -0000
From: Rob Herring <robh@kernel.org>
To: Suzuki K Poulose <suzuki.poulose@arm.com>, Mike Leach <mike.leach@linaro.org>, James Clark <james.clark@arm.com>, Leo Yan <leo.yan@linaro.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>
Cc: coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: arm,coresight-cti: Drop type for 'cpu' property
Date: Mon, 25 Sep 2023 17:05:05 -0500
Message-Id: <20230925220511.2026514-1-robh@kernel.org>
X-Mailer: git-send-email 2.40.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

'cpu' has been added as a single phandle type to dtschema, so drop the
type here.

Signed-off-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/arm/arm,coresight-cti.yaml | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/arm/arm,coresight-cti.yaml b/Documentation/devicetree/bindings/arm/arm,coresight-cti.yaml
index 6216cfb0a188..b9bdfc8969cd 100644
--- a/Documentation/devicetree/bindings/arm/arm,coresight-cti.yaml
+++ b/Documentation/devicetree/bindings/arm/arm,coresight-cti.yaml
@@ -92,7 +92,6 @@ properties:
     maxItems: 1
 
   cpu:
-    $ref: /schemas/types.yaml#/definitions/phandle
     description:
       Handle to cpu this device is associated with. This must appear in the
       base cti node if compatible string arm,coresight-cti-v8-arch is used,
-- 
2.40.1


