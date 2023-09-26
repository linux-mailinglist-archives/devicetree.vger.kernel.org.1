Return-Path: <devicetree+bounces-3489-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D9B17AF116
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 18:45:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 678D21C20833
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 16:45:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE6A933980;
	Tue, 26 Sep 2023 16:45:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E002D5386
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 16:45:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C8626C433C8;
	Tue, 26 Sep 2023 16:45:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695746742;
	bh=aLLqkdKFCxYcXITRkqjnjOM4U5KU00Rw+HhFRqy0ov0=;
	h=From:To:Cc:Subject:Date:From;
	b=NdCFrlkgfWfiMlPk83uqy45Vrb9+sQxddQSbpd9jnPWw+FcwGE9rVML7eU3aZb+Jm
	 NYsgPUKVl9eRoCYDsSDt/ZHteAqW4BzDvBuvwlMal/DbwPt1tBeOwn//8WozUBOFxz
	 mSMFmlggL3k7k2lAJMVq4GDAVRKf9fJqD3Iqz7pvDwdN2skzTB08WNXBNMs81o5Wha
	 R9EFGdqY1uxTci6c84UevqJJauz9xYs/djLmESlIZwmIDirZWmn9ZpbZL77bY18SVo
	 okdC9gV/5iKpcpjphy4DWvkt6L5JEx7rEv1xFU2xmrIJYQKWvs5EgvIjpT/cf6fWQg
	 E4r+/8Ftm/yMQ==
Received: (nullmailer pid 102861 invoked by uid 1000);
	Tue, 26 Sep 2023 16:45:40 -0000
From: Rob Herring <robh@kernel.org>
To: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>, Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: nvmem: u-boot,env: Add missing additionalProperties on child node schemas
Date: Tue, 26 Sep 2023 11:45:25 -0500
Message-Id: <20230926164529.102427-1-robh@kernel.org>
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
 Documentation/devicetree/bindings/nvmem/u-boot,env.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/nvmem/u-boot,env.yaml b/Documentation/devicetree/bindings/nvmem/u-boot,env.yaml
index 36d97fb87865..9c36afc7084b 100644
--- a/Documentation/devicetree/bindings/nvmem/u-boot,env.yaml
+++ b/Documentation/devicetree/bindings/nvmem/u-boot,env.yaml
@@ -51,6 +51,8 @@ properties:
   ethaddr:
     type: object
     description: Ethernet interfaces base MAC address.
+    additionalProperties: false
+
     properties:
       "#nvmem-cell-cells":
         description: The first argument is a MAC address offset.
-- 
2.40.1


