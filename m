Return-Path: <devicetree+bounces-11547-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CFEEC7D6287
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 09:27:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0CF9F1C20D75
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 07:27:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 25CA4171B2;
	Wed, 25 Oct 2023 07:27:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FB0HW+oh"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5FDC2D60B
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 07:27:19 +0000 (UTC)
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CB5D1138
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 00:27:17 -0700 (PDT)
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-4083ac51d8aso41930455e9.2
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 00:27:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698218836; x=1698823636; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ndvlHffn+v+7jRpIhr2PQ0zOxK49/EI25GTkz7n0JYg=;
        b=FB0HW+ohyDlyGtumlPgCG38fGZYf9V0fYxb2Xk9bS9GOoS4bpuL5NermwQJudUUPoq
         bkm9Tf6egAEPXNy61aQh1bHFJK0vSMQ9JvaWozo6P3Il2SA/2qbg0RxY5NXUXSXFAJCz
         guF99CPq2abLhuIe5w7/HemMLJ3rURGDD55IrIcEPZOrSxesbxgdxEdaoSsbU3ZKnXcE
         qACo9QP2XzAfqaZN90LPUhd23Pov3Z7sADTz2oGx2L7z2+uT3pViWPKMDVOfYC6fTuMG
         VflzPukagiuFlOGPN+SEQJqAaGAEawPxI53+ILp34Z/RxnNRvsqXiKKikoDxlekaGbJj
         rb+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698218836; x=1698823636;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ndvlHffn+v+7jRpIhr2PQ0zOxK49/EI25GTkz7n0JYg=;
        b=UG2Zit7xP+eGPyB97o0YJIMFvLTVtQMDyvkD1sSuPlrTUDYd86nUhqr+7La+ubMCn5
         XqyyAfHwgDpfK057egF4awZEGRr0CF36yoCnxvgG6xqnlhOXei7OzQ8LGg3F9ZGFkJTR
         dg8A3FRTQEhMAUdBJXrR83tNQoFBfbiHLUy1RZy9ayh7fQI20Jq8dsb+GNROF9hlFRLs
         R0GsTTl3LN6PmdLpo3VyYrtB4z3VLXqMDqCE76IkeNCCC7fXNmBL3ykjnGGbob9IQq2I
         x7+gShSdu+AjXqpJyevHcKBmL9xB3HS+Y5wWy02tzWm9P6I6uEz2UYDlLfeeEnaaIvsI
         Qkvg==
X-Gm-Message-State: AOJu0YxIaPyJISt1GygBlxCr60jm8qato9m5O5SkmxnLZ1+1krnJlrb/
	x3eYe9Q9WiH/g9ZYFJM+rY77FQ==
X-Google-Smtp-Source: AGHT+IGGuTVPCQcnTnNzNxlcAHMi13LFGMnlST+B6XUzSFqU2ksPBCTq0J5I8vLDy4C4uHzHH8iUxA==
X-Received: by 2002:a05:600c:15c1:b0:3fc:dd9:91fd with SMTP id v1-20020a05600c15c100b003fc0dd991fdmr10370800wmf.40.1698218836271;
        Wed, 25 Oct 2023 00:27:16 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 6-20020a05600c230600b004083bc9ac90sm13673640wmo.24.2023.10.25.00.27.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Oct 2023 00:27:15 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Wed, 25 Oct 2023 09:27:14 +0200
Subject: [PATCH] dt-bindings: PCI: qcom: document the SM8650 PCIe
 Controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231025-topic-sm8650-upstream-bindings-pcie-v1-1-0e3d6f0c5827@linaro.org>
X-B4-Tracking: v=1; b=H4sIAFHDOGUC/x3NQQqDMBBG4avIrB1IIgm2VykubJzaf2EMGRVBv
 HtDl9/mvYtUCkTp2VxU5IBiTRW2bSh+xzQLY6omZ1xnjQ28rRmRdemDN7xn3YqMC7+RJqRZOUc
 I+yAP47sQne+plnKRD87/5TXc9w/qQVHodQAAAA==
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Bjorn Helgaas <bhelgaas@google.com>, 
 Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
 Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1300;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=9202tyaMMRdGcdJf/JRZ0vhX+oG3wOQczHTXpC7CSu8=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlOMNSl4BZKLCPeISlXs1vISGMx8P2mdsBwv3I0Ued
 6XhRlW6JAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZTjDUgAKCRB33NvayMhJ0fdrEA
 C4zeGdd7qlPGgQ4TVO4O6a6XDood7tXDbpcoFFZA7Kb+tH5XCT/dHioPiKTWNg3trYjBJ2lfU6LB6M
 IHGR9NFhkOxnkAwO2/P1y6aMptlf+xIu48osJJzD56wn21n01uBozVGRGBcaESjf+BdGwh3tmW2diT
 SM5I3ChTsd65VuZUs18Wk8wvC8mIdKAhPU3taTUENsnEbeIXmXbPvpF3mp5yJecOXKGQwWkHq6ERhf
 jtnnPGXSWFl6CcYuo4EM9bi1VqRLBe6mKynaQHfWTliAGkeshcgeNxMIDWASqioWCGxWNIANXW0yKH
 y39cmAGJHxzgalHqzdR4HBEa7YupLE2FviR9yGYANOX7rY0EC9MDvG3czgXRSYxtnbGBWHcgOvAXRs
 Vt7EOoi7vhlkHP5MRb27zuXO+NJv6jLZ5QJ/LD0s80moybhabixqx7RYUdbRBxYeh5t0oYEhJVzkkZ
 f1+tAKadZ9SKyGI8HGc4/Nn2VFqjO0z0Kzhi/BmJkrFHwxOm8Y+U/sX3hTOwjYjoiYLZfFbA979NOP
 Z8Gzoz45LDOr1xpQhSiqbGqnFVrlX+VixWcQs2NQkEU9t9mI9ABnmT0Fjom6ZfMD0PKf+DrLmkcA7u
 WVGciGnF2iDEHDxvjexdrLF2CCZKlQNKTuH84jNvJOhUWkd2eQvIY9JDIdKw==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Document the PCIe Controller on the SM8650 platform by using the
SM8550 bindings as a fallback.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
For convenience, a regularly refreshed linux-next based git tree containing
all the SM8650 related work is available at:
https://git.codelinaro.org/neil.armstrong/linux/-/tree/topic/sm85650/upstream/integ
---
 Documentation/devicetree/bindings/pci/qcom,pcie.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
index eadba38171e1..af537732ded6 100644
--- a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
@@ -41,6 +41,10 @@ properties:
           - qcom,pcie-sm8450-pcie0
           - qcom,pcie-sm8450-pcie1
           - qcom,pcie-sm8550
+      - items:
+          - enum:
+              - qcom,pcie-sm8650
+          - const: qcom,pcie-sm8550
       - items:
           - const: qcom,pcie-msm8998
           - const: qcom,pcie-msm8996

---
base-commit: fe1998aa935b44ef873193c0772c43bce74f17dc
change-id: 20231016-topic-sm8650-upstream-bindings-pcie-56e90536c258

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


