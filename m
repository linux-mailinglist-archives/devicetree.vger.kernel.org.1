Return-Path: <devicetree+bounces-2012-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 940E07A975F
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 19:23:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4DA4028204B
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 17:23:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B8124168B5;
	Thu, 21 Sep 2023 17:05:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1397D171AC
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 17:05:39 +0000 (UTC)
Received: from mx07-00178001.pphosted.com (mx07-00178001.pphosted.com [185.132.182.106])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9522A7D92;
	Thu, 21 Sep 2023 10:05:26 -0700 (PDT)
Received: from pps.filterd (m0369458.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 38L515tv001809;
	Thu, 21 Sep 2023 10:03:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding:content-type; s=
	selector1; bh=RHf2NhhC5DGUUvcRPpqOUIJnJSzscldTFHRSIoHliKE=; b=rc
	HJQ9t9Orer1bLYljsg5WzNXISB+Y6R4qv2dL71k5JASJ/RX2MqbJsV6bDhLsuifn
	b2gFKNLJJKvTUIuYIexonG7aFRqYQmjN7Y8wabLbCb4+9iG1PTrxfhv5mraPRKDs
	sXwgU5ogMDv42k/VBr+xQojKLUNaTLFXOPpxG2PE7eKIEfLpm8ioybZNkHXDfL11
	/d1TKLNEz1GqyTRXBda/0K8xdAC7hnS5oxjhfGn09MqvhHB3dxxCYOBZYR5Jz90O
	FvVdMvkRGFHL5yXqrozHqX5PiiD/WlWP4Z7KwEsEbJ3/awD6Dc+xUd/+C4f7jR3Q
	gicRpynVA2vn8UVt69ZA==
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3t5nx0sb5h-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 21 Sep 2023 10:03:11 +0200 (MEST)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id BC633100064;
	Thu, 21 Sep 2023 10:03:08 +0200 (CEST)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id B43DD2115F0;
	Thu, 21 Sep 2023 10:03:08 +0200 (CEST)
Received: from localhost (10.201.20.32) by SHFDAG1NODE1.st.com (10.75.129.69)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Thu, 21 Sep
 2023 10:03:08 +0200
From: Gatien Chevallier <gatien.chevallier@foss.st.com>
To: Olivia Mackall <olivia@selenic.com>,
        Herbert Xu
	<herbert@gondor.apana.org.au>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Maxime Coquelin
	<mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>
CC: Lionel Debieve <lionel.debieve@foss.st.com>,
        <linux-crypto@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-stm32@st-md-mailman.stormreply.com>,
        <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        Gatien Chevallier <gatien.chevallier@foss.st.com>
Subject: [PATCH v3 1/9] dt-bindings: rng: introduce new compatible for STM32MP13x
Date: Thu, 21 Sep 2023 10:02:53 +0200
Message-ID: <20230921080301.253563-2-gatien.chevallier@foss.st.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230921080301.253563-1-gatien.chevallier@foss.st.com>
References: <20230921080301.253563-1-gatien.chevallier@foss.st.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.201.20.32]
X-ClientProxiedBy: SHFCAS1NODE1.st.com (10.75.129.72) To SHFDAG1NODE1.st.com
 (10.75.129.69)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.601,FMLib:17.11.176.26
 definitions=2023-09-21_06,2023-09-20_01,2023-05-22_02

Introduce st,stm32mp13-rng compatible and add st,rng-lock-conf.

If st,rng-lock-conf is set, the RNG configuration in RNG_CR, RNG_HTCR
and RNG_NSCR will be locked. It is supported starting from the RNG
version present in the STM32MP13

Signed-off-by: Gatien Chevallier <gatien.chevallier@foss.st.com>
---

Changes in V3:
	- Squashed with: patch [V2 07/10]
	- Declare st,rng-lock-conf at top level and restrain its uses
	  depending on the compatible. I discarded Rob's tag as for
	  the modifications.	

 .../devicetree/bindings/rng/st,stm32-rng.yaml | 20 ++++++++++++++++++-
 1 file changed, 19 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/rng/st,stm32-rng.yaml b/Documentation/devicetree/bindings/rng/st,stm32-rng.yaml
index 187b172d0cca..717f6b321f88 100644
--- a/Documentation/devicetree/bindings/rng/st,stm32-rng.yaml
+++ b/Documentation/devicetree/bindings/rng/st,stm32-rng.yaml
@@ -15,7 +15,9 @@ maintainers:
 
 properties:
   compatible:
-    const: st,stm32-rng
+    enum:
+      - st,stm32-rng
+      - st,stm32mp13-rng
 
   reg:
     maxItems: 1
@@ -30,11 +32,27 @@ properties:
     type: boolean
     description: If set enable the clock detection management
 
+  st,rng-lock-conf:
+    type: boolean
+    description: If set, the RNG configuration in RNG_CR, RNG_HTCR and
+                  RNG_NSCR will be locked.
+
 required:
   - compatible
   - reg
   - clocks
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - st,stm32-rng
+    then:
+      properties:
+        st,rng-lock-conf: false
+
 additionalProperties: false
 
 examples:
-- 
2.25.1


