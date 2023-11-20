Return-Path: <devicetree+bounces-16987-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 957B07F0C86
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 08:09:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 12D28B2104B
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 07:09:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 704FE539C;
	Mon, 20 Nov 2023 07:09:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Hg3I7frs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EC6FBAF
	for <devicetree@vger.kernel.org>; Sun, 19 Nov 2023 23:09:15 -0800 (PST)
Received: by mail-ed1-x529.google.com with SMTP id 4fb4d7f45d1cf-548ce39b101so401176a12.2
        for <devicetree@vger.kernel.org>; Sun, 19 Nov 2023 23:09:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700464154; x=1701068954; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=JUN834VVYK8twG3IjVN0msVN67LU5krCVdfvSAdrwLI=;
        b=Hg3I7frsuLENJtX+y9x9+s7jWtb7aqcQhiXaJh4XTMCMTyq8SzWijI7ylw/rMgDh6Y
         TksFm7BlZaeLvXDcW6oUxEYIQ1ZRmolmUAEW4xvZkOOjW2dEmXOC/S7/UldcM34OKC1B
         sUgjv7z1RV/wq2P702pq9lQN9VMhCND7jafnQBUe6F1csyR2edYW8/tdg6L8RqsN88J3
         L5Wz0RvjsMmTklYMZcuDvbmvlLwtlzPHK+Y+P8Td/6luybJWKIxUn6gUotWQc0Q8r79t
         GdA5aq5Ax5XFFfcb2N8VaW1lq5ZzXHIcHUFcYrcW6Zb0t4aKrJ0pbFtSg4/2bbJFOav0
         sOHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700464154; x=1701068954;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JUN834VVYK8twG3IjVN0msVN67LU5krCVdfvSAdrwLI=;
        b=iVshz5M7cmqzVxpMtlrmAhlgi0X1wDVG6rTtiMTIHaDAWhodjOjK1gGMrWl0SWb5YS
         4IsnBWYxJwVcRyhrzyN1BNrM4zFiXsx/EZhOwsIq0cVUvAHE1VDGblzBs/sHf/+Xz1Vc
         A8xcTwASza64gklz4e5dbhE5uw9NKTbe8txpYUzTUfb13Ov7Tjhku0PTgts5Hrz8GTsj
         v1u+rsHn/4kczslhPLwrfr8mgjTtLo+mBXEtzekEcZF/wi/igV8Ael5ZceFx33Bzciu2
         0YLVbW44CnRy99qCkmQwIYLg5xa/G9WzZ7ZOgqcxA1sXlfElOm1mBqlAp3xSH3gG218I
         4d+A==
X-Gm-Message-State: AOJu0YyJocJZhRktwb4evsXSQheldaaTgDcayS54mvUPd+qPVdoisLJK
	7G5okR4dgB/DYhNO/wQOeSl8zg==
X-Google-Smtp-Source: AGHT+IHD/fU6exyVMz9nsgS1Ig6AMjkjbTGjfVno4m2blpUBrKjRBDPq4opvk3Uukz62fuDYhrwh0w==
X-Received: by 2002:a17:907:3c10:b0:9fe:5d39:41c1 with SMTP id gh16-20020a1709073c1000b009fe5d3941c1mr1408033ejc.52.1700464154360;
        Sun, 19 Nov 2023 23:09:14 -0800 (PST)
Received: from krzk-bin.. ([178.197.222.11])
        by smtp.gmail.com with ESMTPSA id d2-20020a170906640200b0099bd7b26639sm3570500ejm.6.2023.11.19.23.09.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Nov 2023 23:09:13 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v2 1/2] dt-bindings: PCI: qcom: adjust iommu-map for different SoC
Date: Mon, 20 Nov 2023 08:09:09 +0100
Message-Id: <20231120070910.16697-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The PCIe controller on SDX55 has five entries in its iommu-map, MSM8998
has one and SDM845 has sixteen, so allow wider number of items to fix
dtbs_check warnings like:

  qcom-sdx55-mtp.dtb: pcie@1c00000: iommu-map: [[0, 21, 512, 1], [256, 21, 513, 1],
    [512, 21, 514, 1], [768, 21, 515, 1], [1024, 21, 516, 1]] is too long

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Changes in v2:
1. Add Acs/Rb.
---
 Documentation/devicetree/bindings/pci/qcom,pcie.yaml | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
index 8bfae8eb79a3..14d25e8a18e4 100644
--- a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
@@ -62,7 +62,8 @@ properties:
     maxItems: 8
 
   iommu-map:
-    maxItems: 2
+    minItems: 1
+    maxItems: 16
 
   # Common definitions for clocks, clock-names and reset.
   # Platform constraints are described later.
-- 
2.34.1


