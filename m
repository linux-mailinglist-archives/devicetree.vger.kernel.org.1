Return-Path: <devicetree+bounces-18504-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B1C997F6F57
	for <lists+devicetree@lfdr.de>; Fri, 24 Nov 2023 10:21:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 515F8B20F52
	for <lists+devicetree@lfdr.de>; Fri, 24 Nov 2023 09:21:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E44155676;
	Fri, 24 Nov 2023 09:20:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JHSYC1Gh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 96758D72
	for <devicetree@vger.kernel.org>; Fri, 24 Nov 2023 01:20:52 -0800 (PST)
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-40b36339549so10463675e9.1
        for <devicetree@vger.kernel.org>; Fri, 24 Nov 2023 01:20:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700817651; x=1701422451; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WxpSuXDoom2RWs6bn/SJPon0BVz9GrlE7SEKe7RDhZw=;
        b=JHSYC1GhDBEUCTORRk+gxm6FFYFAEFZq9KyxxJdpzwYUd8v+N1NfPGAhLBbJ9/OWe6
         yzHY6j/X1FYxqluwXHs6XEJ2Jm7JfTCZLchnHqk8zHXUgBhyCecJ380CNbw44NxdnuZI
         vPNc8S+1d0vi8QydBJ5lNnTuH7J0aQVPayVM9Xz5GerReiID6MeS7/Sq0Ukzbi+tam6I
         6VaDnd2AcsUXy9N6PsJoe/+euPrAK6VgtdzsD86uaaOfLuoAhzdUwIa2HV+Ocx5tWQI9
         YlMhUEeI2qMStb2Up4UiJsyH79pdx3dE8CcdEJ/4u5PxkWMfwW3cZV1MzQM4w45Jr+5D
         n4qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700817651; x=1701422451;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WxpSuXDoom2RWs6bn/SJPon0BVz9GrlE7SEKe7RDhZw=;
        b=CIE9ZfSjZ2hoZYfWIyvXU6kU3Xk+SuImypy6kZhO0gm/4FR7r4tu818o5xA88Q0wom
         EnS0L9Bx4Rta5URSaorEOJnefB/Ymky25tviBx7u++3YDBC+sLijg51D2DD7JIqrWiw2
         nok/B1G6VC77tgbJg8gJ4SpIN9+tIBt7WHZrPOWf4XiDI6okbY5O0gfroaNTUVGGDAdh
         ODaWOKnQphn+Ekpe7/l9UckHeZKhEjWf/AcUe76v6/6HxYqtZt6Swbt2YSkqay7HJcU4
         WQbltsC3Px5eAjKzl4vX4lnCJBzvPMoDqVsTl2pxvEJrF8hr7jblpw+lbQM/n24QI6Ni
         WEbQ==
X-Gm-Message-State: AOJu0YyzX/5yiF321Wr9hHTCZqV5WZO2iAMN/tf2gXQWwGlkgVh703jz
	367EYjZFH8tFli9GI5y98ptaDqPvNqljT7W7kuiNUcjO
X-Google-Smtp-Source: AGHT+IFMP8BfZyXX2mht24DR3ovRL97JXamTDBqjV98urQ72jOk1rHbV+T/39Hoh2HfNfpwu3e5xXg==
X-Received: by 2002:a5d:58d3:0:b0:32d:89b5:7fd9 with SMTP id o19-20020a5d58d3000000b0032d89b57fd9mr1608129wrf.56.1700817650723;
        Fri, 24 Nov 2023 01:20:50 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id m23-20020a056000025700b00332ce0d7300sm3805755wrz.92.2023.11.24.01.20.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Nov 2023 01:20:50 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Fri, 24 Nov 2023 10:20:38 +0100
Subject: [PATCH v4 1/8] dt-bindings: arm: qcom: document SM8650 and the
 reference boards
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231124-topic-sm8650-upstream-dt-v4-1-e402e73cc5f0@linaro.org>
References: <20231124-topic-sm8650-upstream-dt-v4-0-e402e73cc5f0@linaro.org>
In-Reply-To: <20231124-topic-sm8650-upstream-dt-v4-0-e402e73cc5f0@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1087;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=UZ2eQGqqiWNvOpQYnbzT/mou5C8lbL9c01Zc1IvQLo0=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlYGrtHhQ9naPVHKInEeE6SEnLpSLGWf6oYyKHBTz+
 YKxy2l6JAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZWBq7QAKCRB33NvayMhJ0SMBEA
 CX6qMZWSY+ttvQgILnvPJTQoQD+C4A0GfzQ6bUhUe0opoPVra5LJnLsPRa9DWyriy8FMqPtniGBRtd
 zvJ2AzHAanCgOrqD/iMycATSDdKCe4IjYqyZZkD78ynqvTtMwvvMZvih7Z9Ey3twkv9sh8P/5FCzvM
 J4z+2QuI/lERcc1fDtvv6yJ1+5O0VghULr3sK0tV8BRs6zyldAtLdpqcU6epuViLca+fvuCJmFckiE
 695GeIOxinqITFkzenKNnsap5pQZ0kj6+f3tKocUzi1cTxPhyo6KyJ/yVtEziB9bJYl1cGv+XpdP23
 rSq7IPMgdr1JVem3a+jVRzW/KvKZfey3UxrRqClJL25RDR81hHzV7jmuSPcACuksfI260ohEcqzzuQ
 70DkkEFq6U0+idkwRcr4Po3kqmAt/znWHR8YNUt/QkB/5G4c1/ICTHhaHixPBTH+91uyQgHCo1adDG
 8TUVVmnPuDOvSgt4axT56dX5yUZwHYDHquG/jiQiAiqW0uz5nnGZHe4HP4zBx5fdfazRBYQhqe7Leu
 MGW3KGmemnSoKAYSc+gPOfH50gGndqFIPieVZoO2vpYuGRZY6Ok3/IpljbJAnsMMDvlDFgAd8ui5MJ
 nUB7T7TMfw05djgIXXXhod1cTLbHokkU2wC9M2ameNEegPIaSnaQ8ocVadIQ==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Document the SM8650 SoC and based MTP (Mobile Test Platforms) and QRD
(Qualcomm Reference Device) boards.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index 88b84035e7b1..c5b6518973d8 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -87,6 +87,7 @@ description: |
         sm8350
         sm8450
         sm8550
+        sm8650
 
   The 'board' element must be one of the following strings:
 
@@ -1044,6 +1045,12 @@ properties:
               - qcom,sm8550-qrd
           - const: qcom,sm8550
 
+      - items:
+          - enum:
+              - qcom,sm8650-mtp
+              - qcom,sm8650-qrd
+          - const: qcom,sm8650
+
   # Board compatibles go above
 
   qcom,msm-id:

-- 
2.34.1


