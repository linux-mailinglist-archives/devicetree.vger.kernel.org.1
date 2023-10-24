Return-Path: <devicetree+bounces-11450-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 375577D5CC6
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 22:58:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CB17AB2106D
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 20:58:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CBF903CCF9;
	Tue, 24 Oct 2023 20:58:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=z3ntu.xyz header.i=@z3ntu.xyz header.b="dzzxvIbA"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55CDE3C691
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 20:58:35 +0000 (UTC)
Received: from mail.z3ntu.xyz (mail.z3ntu.xyz [128.199.32.197])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 055C710FA;
	Tue, 24 Oct 2023 13:58:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=z3ntu.xyz; s=z3ntu;
	t=1698181080; bh=KK22/PFKiW+cdv+uyafrjwn6iM6Voz742G5RcEr3vVg=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc;
	b=dzzxvIbA/FXuQdq5LGOymTPMYewK2604GPtCyPzp+/Zoztx7nD0vawm95ZZMQnMbC
	 EI+VWKVJvfhKq+XnjNF7A+sxdLkfGixJYr/ldSWveTUU2rCYd5myid0gUIAWlIX8N1
	 n1YCjjz2gDJn/cUbkwewXvmgK1IgskifHeDwHFxM=
From: Luca Weiss <luca@z3ntu.xyz>
Date: Tue, 24 Oct 2023 22:57:50 +0200
Subject: [PATCH v2 2/3] dt-bindings: arm: qcom: Add HTC One Mini 2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231024-htc-memul-v2-2-8912940b6f95@z3ntu.xyz>
References: <20231024-htc-memul-v2-0-8912940b6f95@z3ntu.xyz>
In-Reply-To: <20231024-htc-memul-v2-0-8912940b6f95@z3ntu.xyz>
To: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Andy Gross <agross@kernel.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 Luca Weiss <luca@z3ntu.xyz>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=768; i=luca@z3ntu.xyz;
 h=from:subject:message-id; bh=KK22/PFKiW+cdv+uyafrjwn6iM6Voz742G5RcEr3vVg=;
 b=owEBbQKS/ZANAwAIAXLYQ7idTddWAcsmYgBlOC/VTLLV5aRTe4d2Wbhl6v+xh9BSamJwXOSy3
 YNQTt49oMaJAjMEAAEIAB0WIQQ5utIvCCzakboVj/py2EO4nU3XVgUCZTgv1QAKCRBy2EO4nU3X
 VqY2EADXm7ru3JRpMhGxOfSeKBgIgIvldXqzQiPwJ1+ArWJgtwS4VwlanCsMH2BqES/BwqdguHd
 lR60tZQ3SzpCE/YwSaAHbTKV2hiNgowEo5bTuaMjCCH2MugFBXZqMYppugmPFPOrmX5gZH2r4Ee
 LLdAZHzKNmE3nJSBW/DJNny04INRSy8VMvPsV1Q6Q93/fCeHswA8YGkzh2vpef5BIFu3l6sKBSu
 9mUYRuENxVwyJLryeStnlIlhspHHJ/YT4VKxt17KINv9nT8BmzKlSZanTtkr5faKqws06qhqnw2
 W0/OO9+wGyG3H6h81aAma52ZbtwsrTq01E/68iHrCNf25Kr/qaH1mtHTRR7xYqGajoR1hdVUYKx
 PdVj1fPFZTSmi5iGcLkCbMa4CKQrLj7ZwRQHbyh9vYFDcKVX6pHeaLzKkFDqcVMjt6bD6bwm8JY
 O+F8ehFkQEikgz0xog4Rlw0JNOYuSHxMaQkH3hcezsiEoKMU5mHsRS5ObTf4/aA08P68xqcnOXe
 O7jsUkFQqwfpcl9s6trwxSEhI2L2LeMAL26sAvNsAPTRMDznu3XPBb86nKjDGo40na1b1I5of37
 OOTVrxduclqdxRkq9UqqpD8Woh3jJASDbHe/8wieTwWeKzbzkChhsQsLe+WMcoGCsRdgO/N4U8K
 qSt0rE9EZCAfrdg==
X-Developer-Key: i=luca@z3ntu.xyz; a=openpgp;
 fpr=BD04DA24C971B8D587B2B8D7FAF69CF6CD2D02CD

Document the compatible for the MSM8926-based HTC One Mini 2 smartphone.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Luca Weiss <luca@z3ntu.xyz>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index 88b84035e7b1..60605f2d237b 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -194,6 +194,7 @@ properties:
 
       - items:
           - enum:
+              - htc,memul
               - microsoft,superman-lte
               - microsoft,tesla
           - const: qcom,msm8926

-- 
2.42.0


