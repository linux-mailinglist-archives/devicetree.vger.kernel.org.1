Return-Path: <devicetree+bounces-11593-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FFA67D633C
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 09:35:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 06677281CBB
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 07:35:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 63C9818B08;
	Wed, 25 Oct 2023 07:35:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="z8ix1Ck2"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11BF21864B
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 07:35:05 +0000 (UTC)
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E8CB9198
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 00:34:34 -0700 (PDT)
Received: by mail-wr1-x434.google.com with SMTP id ffacd0b85a97d-32d80ae19f8so3707784f8f.2
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 00:34:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698219272; x=1698824072; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pVlwiJkgEOptZyxgmNkYyImFRkPkiQTz9Ix32yztC1Q=;
        b=z8ix1Ck2fa8YzN2xhqPKqa+BUKyJIXVyd1DPRZMSfqaGgVWBNHyEDjIdokUUwKEnZD
         MYmuSDdGb/t9yyMgTZK0Y5y0UJzs+KhZhvSiDsoG+asoNA+F1JkJY6P30CTkSDE0R7+C
         j6nBStyGJEgEyRCtmKgz9XpP/7r9oXprsFV7x60Re9OvQdS72kRAsWhksu0ssc+NiOaD
         4QbdlTQJzOFNbcGBRVSnI3KlPvhfaClh34sIc/Vv27m0IeyAEiGuOdKft+X8ymDS1OFw
         ZGcuWlr1/sFfUcDF0uJxbqPioK99VbDh2gk1V7SUxNvnNSB/ceQxu936oFUezFYhRXnb
         b1xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698219272; x=1698824072;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pVlwiJkgEOptZyxgmNkYyImFRkPkiQTz9Ix32yztC1Q=;
        b=nh4HzSijItXVAOGQ4oPVo+npVfYHtI0mbr0Xuqcmkom3NsygSOjohNrc58431yQMlB
         BxnBPScSNQKxFzFPrEkLsPMRg5iOe7M3K6/VzSf+hG0RbGCgu61evx1hDG4x/ha/VEXw
         YdvMPLvHyDxm3M2Ygi7qUCti8B+gH8pyMmSf4S8JSRA6D/O4O+CLqI8x6MmvUiFLWSzK
         nb0Muwvh0UVbqIBtG7rVEF3LWOqJFYpdAoNPviVRCmzhHN/pcniiVd2NsgPlcd9EFbOP
         dGUYAoxEmZ+1pnBVsdDmSOpJ7pDIayO7PEVFHyN4oddDjshWxBK4dMSSkN3D+hFYHKLL
         lxaA==
X-Gm-Message-State: AOJu0YwMyxdF7eRu9FEGJqLdkVeggx6ZcFH849U5EfFJP1jt4t8AzL7z
	nsNAMyPzRzc+ytLhY4VY1fyL+A==
X-Google-Smtp-Source: AGHT+IHAGjKxePRM19PhYeF3oCHG3b9njF0cJVMtL4PGOHKkoPvn68B6+gWqFkZVzVFHyq/HzEnKkQ==
X-Received: by 2002:a5d:4e06:0:b0:32d:a686:dedf with SMTP id p6-20020a5d4e06000000b0032da686dedfmr9812039wrt.57.1698219271597;
        Wed, 25 Oct 2023 00:34:31 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id y7-20020a5d4ac7000000b0032dde679398sm11431392wrs.8.2023.10.25.00.34.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Oct 2023 00:34:31 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Wed, 25 Oct 2023 09:34:24 +0200
Subject: [PATCH 2/7] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: document
 the SM8650 QMP PCIe PHYs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231025-topic-sm8650-upstream-phy-v1-2-6137101520c4@linaro.org>
References: <20231025-topic-sm8650-upstream-phy-v1-0-6137101520c4@linaro.org>
In-Reply-To: <20231025-topic-sm8650-upstream-phy-v1-0-6137101520c4@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1420;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=Yg0TVyiYsosBLzL1a2yrBPOz0lVUOibz3FSYURBPVy8=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlOMUCUf8sE0aibMiV0kIEPpnQdLNqym/SMs4a7+z3
 YBq+aDaJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZTjFAgAKCRB33NvayMhJ0dorD/
 4ge+60cPByERIZrdK4nSqpOR2twsY54BM1cNi25fPEnXeQ1WZ48honBLxai5rHSee554jueYW5JoUq
 pLIrM8s36DszEGrAc7S60rQ1yHLiuCYqHPN9Ctdz39xLourEQx7rxtvaGcvZh85rnQm/n0/fhTYox4
 ea4YoTlsV5tUYKEiAh8pkN1/ZDBirFWFKOO+UTUhDDnum0+yxZyvsRGYmzkH5TyFV+sK+hjJWGRKwM
 Z3oyrcHMuoVME4Wr0LQw3gRWv2XBiuYy4vScNd2OpZx4pIRJriM7LHuZRAAlAPAWQl7WOb5l1hTkl4
 BkcTbH0K95N9uQ7QoY9vyEFb/cM4pUfDNU+WRbZW3DVtlMI1tjTHW9waNKGKPClmAHkIPeMUefND1r
 VYZ5eB8eMb5RQufIECd5EoDRS1fsdx+9SLwVLQ5DdiyO3MOuu5U1dm1sakb1RZ8QGPlV5HZCpYaI+1
 UZ8sXCyaa3UDaRWk7P4ecZzkXEuIojHzrWxgdjdhVvBPkyqexJXjD/jsVCX/absJmtcij54THx7WgT
 UMkw/22VomDx7hl2h6OaGnFqN2s5JH++RpeaKOK4q7v2HOgMNU76wPZjOIOSMBq5OZj8cRoHh0+Q/i
 FjKnCAZLpcsrnefQvYx5EuS4L9qO4BXNd6CQyMlA7hOMuVKz6Qk9xy6NXWLA==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Document the QMP PCIe PHYs on the SM8650 Platform.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml          | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
index 2c3d6553a7ba..6c03f2d5fca3 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
@@ -36,6 +36,8 @@ properties:
       - qcom,sm8450-qmp-gen4x2-pcie-phy
       - qcom,sm8550-qmp-gen3x2-pcie-phy
       - qcom,sm8550-qmp-gen4x2-pcie-phy
+      - qcom,sm8650-qmp-gen3x2-pcie-phy
+      - qcom,sm8650-qmp-gen4x2-pcie-phy
 
   reg:
     minItems: 1
@@ -147,6 +149,8 @@ allOf:
               - qcom,sm8450-qmp-gen3x2-pcie-phy
               - qcom,sm8550-qmp-gen3x2-pcie-phy
               - qcom,sm8550-qmp-gen4x2-pcie-phy
+              - qcom,sm8650-qmp-gen3x2-pcie-phy
+              - qcom,sm8650-qmp-gen4x2-pcie-phy
     then:
       properties:
         clocks:
@@ -189,6 +193,7 @@ allOf:
           contains:
             enum:
               - qcom,sm8550-qmp-gen4x2-pcie-phy
+              - qcom,sm8650-qmp-gen4x2-pcie-phy
     then:
       properties:
         resets:

-- 
2.34.1


