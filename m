Return-Path: <devicetree+bounces-3485-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BB417AF106
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 18:44:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 80FEC1C204FC
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 16:44:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B7BC12E655;
	Tue, 26 Sep 2023 16:44:12 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A868F1FA1
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 16:44:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9CAE7C433C8;
	Tue, 26 Sep 2023 16:44:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695746652;
	bh=ctKEScjla5NGO0X3e5QFF7G0OrRljAFnMXyX4H25Oyw=;
	h=From:To:Cc:Subject:Date:From;
	b=H2gLaC4YPBRroqQ/fVEPrIAR9cwiCU/58OtIk2xUoqfShDUqevF5nC6/eF30ajZbo
	 LGv6b9YKLV9RmrpAOWouMtAcVONPDQGUdBPsgHaVoNM5xKZGRMrPLPXTzsdmSlSRku
	 YdZc1TFbWBXes3JVO07NtJVTnpYPDjM+99Xlndnf9INyjQhSvs/2caS1x8Q1N7EGG5
	 +N+vW4A65/q7dSDbFsge6BFcapqQpCkuTLBIV74MK5iVK5zLcSmERdF75K/dVJldqK
	 iQxDpmA1qTVhABuGpTH9hcc9WJtPMrl13+I/6VyzDt9zfo5LzquPcCi++bfe8AM40L
	 +kFK6viJRjRiQ==
Received: (nullmailer pid 100735 invoked by uid 1000);
	Tue, 26 Sep 2023 16:44:09 -0000
From: Rob Herring <robh@kernel.org>
To: Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, Marcelo Schmitt <marcelo.schmitt1@gmail.com>, Jonathan Cameron <jic23@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: iio: adc: adi,ad7292: Fix additionalProperties on channel nodes
Date: Tue, 26 Sep 2023 11:43:50 -0500
Message-Id: <20230926164357.100325-1-robh@kernel.org>
X-Mailer: git-send-email 2.40.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

"additionalProperties: true" is only for incomplete schemas such as bus
child nodes in a bus's schema. That doesn't apply to the "channel" nodes
in the adi,ad7292 binding, so fix additionalProperties to be false.

Signed-off-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/iio/adc/adi,ad7292.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ad7292.yaml b/Documentation/devicetree/bindings/iio/adc/adi,ad7292.yaml
index 7cc4ddc4e9b7..2aa1f4b063eb 100644
--- a/Documentation/devicetree/bindings/iio/adc/adi,ad7292.yaml
+++ b/Documentation/devicetree/bindings/iio/adc/adi,ad7292.yaml
@@ -61,7 +61,7 @@ patternProperties:
     required:
       - reg
 
-    additionalProperties: true
+    additionalProperties: false
 
 allOf:
   - $ref: /schemas/spi/spi-peripheral-props.yaml#
-- 
2.40.1


