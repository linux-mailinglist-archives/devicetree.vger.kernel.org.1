Return-Path: <devicetree+bounces-4910-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D7F597B4473
	for <lists+devicetree@lfdr.de>; Sun,  1 Oct 2023 00:19:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id B9DC6281E93
	for <lists+devicetree@lfdr.de>; Sat, 30 Sep 2023 22:19:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 497BF199B6;
	Sat, 30 Sep 2023 22:19:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBB7C199A9
	for <devicetree@vger.kernel.org>; Sat, 30 Sep 2023 22:19:34 +0000 (UTC)
Received: from out-195.mta0.migadu.com (out-195.mta0.migadu.com [IPv6:2001:41d0:1004:224b::c3])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 34F5010F
	for <devicetree@vger.kernel.org>; Sat, 30 Sep 2023 15:19:32 -0700 (PDT)
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ansari.sh; s=key1;
	t=1696112019;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=2+imvZevtdeyWbERrADU6uxT9kurAQz3gVjIdweK2A4=;
	b=MRVZoPFasgFFhYXOz/HqTRKJf3g7eJTbQWK3dJh/ltHHTRY3X25mryPvw4DjUq1w9pwhic
	VsGtduBVpPlCndVh1sPk8Rju+U7mImCvCC96RxtLNR7MZ78ule8la5kZmGXeRWwVTZCIb9
	PVNnK9oxstx61Rr7VONAjPXf1c2ENd8=
From: Rayyan Ansari <rayyan@ansari.sh>
To: linux-arm-msm@vger.kernel.org
Cc: ~postmarketos/upstreaming@lists.sr.ht,
	Rayyan Ansari <rayyan@ansari.sh>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-kernel@vger.kernel.org,
	Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v3 1/6] dt-bindings: arm: qcom: Document MSM8x26-based Lumia phones
Date: Sat, 30 Sep 2023 23:07:56 +0100
Message-ID: <20230930221323.101289-2-rayyan@ansari.sh>
In-Reply-To: <20230930221323.101289-1-rayyan@ansari.sh>
References: <20230930221323.101289-1-rayyan@ansari.sh>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Document MSM8226 and MSM8926 Lumias.

Signed-off-by: Rayyan Ansari <rayyan@ansari.sh>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index adbfaea32343..2a607b1595c9 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -184,9 +184,19 @@ properties:
 
       - items:
           - enum:
+              - microsoft,dempsey
+              - microsoft,makepeace
+              - microsoft,moneypenny
               - samsung,s3ve3g
           - const: qcom,msm8226
 
+      - items:
+          - enum:
+              - microsoft,superman-lte
+              - microsoft,tesla
+          - const: qcom,msm8926
+          - const: qcom,msm8226
+
       - items:
           - enum:
               - samsung,a7
-- 
2.42.0


