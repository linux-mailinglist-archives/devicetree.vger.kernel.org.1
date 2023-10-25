Return-Path: <devicetree+bounces-11654-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E22127D64D4
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 10:22:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9A11D281C0F
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 08:22:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0DE5B1CAA9;
	Wed, 25 Oct 2023 08:22:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bmT1mOF5"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B1571CA8F
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 08:22:02 +0000 (UTC)
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 30BB412A
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 01:22:00 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-40859c464daso33134455e9.1
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 01:22:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698222118; x=1698826918; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=rf68NS6OhKdAoq7Nr2DOohFZ1XuTX3phqx5UwdSkIGU=;
        b=bmT1mOF5ZiY1YcvM4CLuGQJhEBEdFnWqMYBLggoWhkpHHxZvrm8rIsni6GdZJeDTZL
         UQbJsSXbMS+j6M01nmH2Gw3W5RyQZaoVxvR8N3Y6tpY5A2ARkTRS49on+JWVQNVPFFaj
         v2mC7zRTCdWmsdEfX6zeiaUOjDxYtlWnSBSylJsTedRJMJNgI6Y1OpBrTIFACfbLzIVn
         2Yq6YUXXmZLj+A7OBgKeKKLt2bmGKuCIEhfcAv6qvUw9F+u+2mdKxdL6dilK7Ty/2bBq
         E4+Afo7YvssSn5tAAnDR1PEf4TGNMA6IfOL9H6d9Jnn1RtUU+3MBIqZjjAEC2knF4hy6
         iG8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698222118; x=1698826918;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rf68NS6OhKdAoq7Nr2DOohFZ1XuTX3phqx5UwdSkIGU=;
        b=M/bRuzUtPUl7o2wxbbsQNTNmmhM4qMeXmM/pX7YijELlRs8aVYcxXn8xRo7GsTwqU9
         RvkZznfs+mwt1hNogfHCLC91IuGALGY2uBDUC+wbz1yWL1Q/6LkKoaIsnP4jkKLBcW+s
         bZ+qSRyJlAKtVF4WJOLDI+H8QLnB50JK2diIgXYPcLYdivWPlSXULJ6WDYMmGTcEI2E/
         IEPT6fhuzT0EXoY7N0HZN+JEX2qj8l3leZ8Ln3FGxVEhz0td4WFw47FF0ddLb5BgX2nU
         3+owDdIk5wfOhIYeYh5efJw0pDOLUizVHyWVnWCLxS4yS0/80QAEeXmveY9cqf8lDZYT
         o1Wg==
X-Gm-Message-State: AOJu0YyHz1LXlv4AraB+tmTLpdJkeSZCYybcZf8Z6abn1kPVmgmOc3Pz
	eMeBOl342yEz39s5MJWkPIoy+A==
X-Google-Smtp-Source: AGHT+IEw8ZnCAzlQ01MU1ATBnbQEo2pvwhGTgrnAmX41IpWDQXpkNwWBetLJ/tY+gittKCOFA5ab1w==
X-Received: by 2002:a05:600c:4f94:b0:408:404b:dc2d with SMTP id n20-20020a05600c4f9400b00408404bdc2dmr11854660wmq.30.1698222118342;
        Wed, 25 Oct 2023 01:21:58 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id u3-20020a05600c138300b003fc0505be19sm14160601wmf.37.2023.10.25.01.21.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Oct 2023 01:21:57 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Wed, 25 Oct 2023 10:21:56 +0200
Subject: [PATCH v2] dt-bindings: firmware: qcom,scm: document SM8650 SCM
 Firmware Interface
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231025-topic-sm8650-upstream-bindings-scm-v2-1-68a8db7ae434@linaro.org>
X-B4-Tracking: v=1; b=H4sIACPQOGUC/42NQQ6CMBAAv0J6dg0tFMGT/zAcStnCJtKSLhIN4
 e9W4gM8zhxmNsEYCVlcs01EXIkp+ATqlAk7Gj8gUJ9YqFwVMpcVLGEmCzzVlc7hOfMS0UzQke/
 JDwxsJ1BlaV3fqBqdFik0R3T0Oib3NvFIvIT4Pp6r/NpfXul/8qsECa6qL502prAN3h7kTQznE
 AfR7vv+AY5TKgTVAAAA
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Robert Marko <robimarko@gmail.com>, 
 Das Srinagesh <quic_gurus@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1764;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=ROMOj22FH9/6K7UKEKa6t8Zg6CvRWtXdFnoULIFUA1Q=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlONAkZRRNsP0+EY7Rav4gW0cCwoAsr6mBR7PsEsiF
 C3wdGJGJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZTjQJAAKCRB33NvayMhJ0dGdD/
 41cZ7HR3Lmcv8J/7vjvLkHCLJhUsjCBOukrxs2fseFBqhswl3XCO0LhszGQrh/gPzxe9AHWGp3vNbe
 Zb7LfHvgtCgt2waH69274afJ4AbPa6yWpmcZL+E7f7gmidZf60Ht6WJAD7AzCLZRnSev9qR7W8XM5S
 WFS4bRaNWU4C+/wOtdqSzSGbjxiOQVpC/DUdLxTAGGNQksw2NQditYSVwHTeSck3HxN0HaY3S6z6qe
 pevxHrvFqHpq/a9RwwkK2fGP+9/8/JbU5oOTjhsAAUlCAOrRCk7OpI1h1F01r+qrCUtpz0C0EygM3g
 5cBMN+PniPCa5FlD6yfDqT0RTrF8NQajRsNPQrECt12row+xJ21CMAYHrsm3mHR3tQsGcAPhu51k4u
 Dq6dP44IS6UBa1NwW+UIzctQosgdTCMDdU7xNXZ6lxKcCuVAAeVAt4zX3zK7aPmNG5Nuw4sXifYgRE
 Xxxrf+ci6MCF+Is1dURCYxalakQUOITAl5PkugqK+AsslIrVOn+/wFzU+c+MOijo4QzZZe7AZvHFve
 5VFdh4edjpjXVQB/RCrawZOnTX9Ov0aHq2C951/Zpp9jLrmGMR0vPx73zYUv7kVkT/pOiIRsm+0e31
 pasRHmx2MVYM4lhth7FZId+xhQB2BGQ81V2CXGYDPaoUmsaGjhLkGOLSVwDg==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Document the SCM Firmware Interface on the SM8650 Platform.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
For convenience, a regularly refreshed linux-next based git tree containing
all the SM8650 related work is available at:
https://git.codelinaro.org/neil.armstrong/linux/-/tree/topic/sm85650/upstream/integ
---
Changes in v2:
- Fixed typo in subject
- Link to v1: https://lore.kernel.org/r/20231025-topic-sm8650-upstream-bindings-scm-v1-1-f687b5aa3c9e@linaro.org
---
 Documentation/devicetree/bindings/firmware/qcom,scm.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/firmware/qcom,scm.yaml b/Documentation/devicetree/bindings/firmware/qcom,scm.yaml
index 0613a37a851a..3212c8b30ed9 100644
--- a/Documentation/devicetree/bindings/firmware/qcom,scm.yaml
+++ b/Documentation/devicetree/bindings/firmware/qcom,scm.yaml
@@ -63,6 +63,7 @@ properties:
           - qcom,scm-sm8350
           - qcom,scm-sm8450
           - qcom,scm-sm8550
+          - qcom,scm-sm8650
           - qcom,scm-qcs404
       - const: qcom,scm
 
@@ -189,6 +190,7 @@ allOf:
                 - qcom,scm-sc8280xp
                 - qcom,scm-sm8450
                 - qcom,scm-sm8550
+                - qcom,scm-sm8650
     then:
       properties:
         interconnects: false
@@ -202,6 +204,7 @@ allOf:
               enum:
                 - qcom,scm-sm8450
                 - qcom,scm-sm8550
+                - qcom,scm-sm8650
     then:
       properties:
         interrupts: false

---
base-commit: fe1998aa935b44ef873193c0772c43bce74f17dc
change-id: 20231016-topic-sm8650-upstream-bindings-scm-244cfd928ef5

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


