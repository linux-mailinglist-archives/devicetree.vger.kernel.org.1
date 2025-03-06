Return-Path: <devicetree+bounces-154829-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 78A5BA54A3B
	for <lists+devicetree@lfdr.de>; Thu,  6 Mar 2025 13:03:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A336F188C7BE
	for <lists+devicetree@lfdr.de>; Thu,  6 Mar 2025 12:03:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3346120B1EB;
	Thu,  6 Mar 2025 12:03:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="RZe83yYN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1320E201022
	for <devicetree@vger.kernel.org>; Thu,  6 Mar 2025 12:03:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741262607; cv=none; b=nOZFLOIm4zsvXXOqBMkJQktJcgInS3jrn26h4jy6UQj+Imh9jbpxrdMuTGD5eQ39Eh5MgT4SUxIAX5MH/MMSaEMHoLegXO9TvoF6wLaiGo3EnXbTMNEvriCHRRa+01z8YPuKHtknup46Yq6fXBFouOy6yc1wMnhEbeciaqQ3twY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741262607; c=relaxed/simple;
	bh=gGxnmraNZe8Q/xOLQH6kZuR8AkdvqJ9awxgGCS31jpQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=hcZdUav/3WtDQ+ZfErYImrqCoKUWmzo1uus/17IbZ55P6qLG+Ic8XSNYqZMNQdGEWEsxbp36d/uVu11uqU8utSaXePTHHnAfQvVQe8xY9TuBgVTq4R8SWfmho2rkzYH+l4BICEKMA030KH/4McnPcsBv8q4wAMGecDEwj4jcoOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=RZe83yYN; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-39127effa72so91091f8f.2
        for <devicetree@vger.kernel.org>; Thu, 06 Mar 2025 04:03:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741262602; x=1741867402; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=FGk2GIgwQpiYu5Yel4uNS+HbqVhI6i7/CI1/SuQv8FE=;
        b=RZe83yYN8/PlXWjqejKOzfvoewsqHIvyVOhCUFf5RrDILogNLW6jP0YTAAND7sZWUX
         8BDyBCg3R/Y8hkvnGoZik/+7+SM/bG2rjonuNOovMlOj7kPRl4C5ThIRifJmetWPGm8Q
         C3QUvOSI5CYPzk8KNjHpcLFaDSYTjr6RTiNyKdQ+Mu+KSsC0Q0FSPaAeJ91iSLwKbQ0L
         lZBI42YuQZ7yvAdPqEXCblgbv31Ze0ktrEjRY5zLMW9jysBYZkzPu1QaA0wUGBwfKN9R
         qlK4iee1r85zFD90RKjfSG2YPFg4QPaiZDfUdjljiRbfyt1gWw2hXU3KquMbWG1JDkQN
         rJvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741262602; x=1741867402;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FGk2GIgwQpiYu5Yel4uNS+HbqVhI6i7/CI1/SuQv8FE=;
        b=tLKXcVA1vgCnPyGvo6NwajFnrCU6+CiKUX7SFGlWXugcDVruVfeC+V/JgN+LmQNcQN
         x92OqCo79zvXYud/7OpFM4bz4BIhdqJxbliqpjzswcQC0TjJH4C4SXxYnFL0uVQrPY+S
         jpxfyxEkhHu+WOZunV0hzj1xdwOGS9Ul8if+6duhl60fnsZq7tVFIBMCIx6UmcXF/3mJ
         e7bd2sjK7BEHXZ2gBJdTF/dRM/c+EqcWKLI8tPeWZ/VTmzysvFxr94EKjnlZ6rVL8j9b
         9HUvvUjAlvC8zfkgMzCq5nFKNViHz9EAbyN33xxw20l4Z9MOLFrY4rERQtRTBzURnQYT
         Ahxw==
X-Forwarded-Encrypted: i=1; AJvYcCV5MqpKUyJTfdtGyf1ouoWjbA7+vIXXC/yTQJv72QYzgSdOyugeBjyQAgSpsVnqE128wvk6t3d7HIIW@vger.kernel.org
X-Gm-Message-State: AOJu0Yxymsao3r74BOwFKneg0XV0GI9hhb/SPKIgK5KQ+7Nto6kWOySU
	X/+7+JcAs+nOk91pxrny7oD7A8YPwDIthD9hOZdlO6eDWmevNsx8iy1nR3EvqGA=
X-Gm-Gg: ASbGncuUW+VsN84MEOpVuoUXdE7Rxoh0a+yc5JP13EsTJKztdgE7Kxzf7duJtRMjFJt
	DLjw/vazFpv31OTAXZeEByrnAcgePiXhJU/8XONvDRdyxqePKO1pZgSV/YNWMfUCfDOYreEe741
	7ZwQibe7Fzo3MVRLMWOoPObxS2FcZXBlFCW2SgfrWW0tC5d0OguZGUjW0YjDzt9O/XyrHwbrY5H
	m8Yc1BsNc06HTFke9otl43DjNPI5Y/qekVXGB3vaifg2fm7fSPeLCA5PFiM6Vs69KOT3Vq6eGdw
	Uv8zRsrRVrhMjm1GVTIISdECraskiJeYT7am2+cyNixqS2xaozE+mtB9X60=
X-Google-Smtp-Source: AGHT+IHWVCk6Fgh5QuVOuSqxO+Qal21JaZ2TqyoYfqoerG0z/hBOKoduA4Dwpb7zBfJiHhjp0wyWRw==
X-Received: by 2002:a5d:6486:0:b0:38d:d69e:1316 with SMTP id ffacd0b85a97d-3911f72725bmr2118733f8f.1.1741262602316;
        Thu, 06 Mar 2025 04:03:22 -0800 (PST)
Received: from krzk-bin.. ([178.197.206.225])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3912c0e2eafsm1886661f8f.68.2025.03.06.04.03.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Mar 2025 04:03:21 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Varadarajan Narayanan <quic_varada@quicinc.com>,
	linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: [PATCH] dt-bindings: PCI:: Revert "dt-bindings: PCI: qcom: Use SDX55 'reg' definition for IPQ9574"
Date: Thu,  6 Mar 2025 13:03:18 +0100
Message-ID: <20250306120318.200177-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Revert commit 829aa3693f8d ("dt-bindings: PCI: qcom: Use SDX55 'reg'
definition for IPQ9574") because it affected existing DTS (already
released), without any valid reason and without explanation.

Reverted commit 829aa3693f8d ("dt-bindings: PCI: qcom: Use SDX55 'reg'
definition for IPQ9574") also introduces new warnings:

  ipq9574-rdp449.dtb: pcie@10000000: reg-names:0: 'parf' was expected

Reported-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Fixes: 829aa3693f8d ("dt-bindings: PCI: qcom: Use SDX55 'reg' definition for IPQ9574")
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/pci/qcom,pcie.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
index 6696a36009da..8f628939209e 100644
--- a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
@@ -170,6 +170,7 @@ allOf:
             enum:
               - qcom,pcie-ipq6018
               - qcom,pcie-ipq8074-gen3
+              - qcom,pcie-ipq9574
     then:
       properties:
         reg:
@@ -210,7 +211,6 @@ allOf:
         compatible:
           contains:
             enum:
-              - qcom,pcie-ipq9574
               - qcom,pcie-sdx55
     then:
       properties:
-- 
2.43.0


