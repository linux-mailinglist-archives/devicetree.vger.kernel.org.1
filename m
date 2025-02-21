Return-Path: <devicetree+bounces-149469-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id AE52BA3F971
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 16:53:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 668187A9291
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 15:51:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5CBB91E1C36;
	Fri, 21 Feb 2025 15:52:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WokrI6x8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E2D31DE4D5
	for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 15:52:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740153128; cv=none; b=ds/QZY023JatgNeM45nTpwNGxnD4FKK3GgXkoiUVejsdpqB/6IHkDrwTDNmeEe0KnnTDuOUte18iXRBBuwUrHPq7XVBY0KcC+4FQQjDohOogvSJyC/8Sy9gX3RnSi00ut0Syqc/Sc0XWb7yLKo3TcO+Z4oIyOP7SeBUE8w6mr6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740153128; c=relaxed/simple;
	bh=JahFK35Qr0Io9347nU+Txx7gAacIFQAoJak3GUjm8gE=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=YqIEQ7BFWCgvOHNykEtM8C8RjSKd0Wk3fztfYo7wrKeARlMTTa2G/9Yugfl3DiVOLI55UNp6hK/WFY/Xuif5f6a2YnmN2kvVDZfeSTBjf0urWfAqqv+8q+FZkmYlxi52OnULcaedVXYbttXpXxaOnxL5r/AQ0779gZUkKD4k5sw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=WokrI6x8; arc=none smtp.client-ip=209.85.208.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-3076262bfc6so22990161fa.3
        for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 07:52:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740153124; x=1740757924; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=2ZtA6gER0t3smsGWjpoDMnkV2uURH+P/8hvhROLXvN8=;
        b=WokrI6x8tZsFN10C8M9gENzzx3oh3JnWF/JCR3Zy6WmBjprZFB14PwIDWbTtzAdX1l
         ZdYeoGK+qy0EMKrAGlHL6BXFJMne37IBx2OfRSqp3+0J7lL2biokYoQDnOfMtRZxWLE3
         UIN0vEJthwzgl6W/A97ETISA/v8A26ORTqphvkLrgyvJaGlvQiLtrPDPy4GS0urYYZ3q
         69ZBOz21fe7j4piWKqdcg8wWEmPmv4tu01jQeiyM/6+V2vsO4q0uHLPu96/mn+GCVOFk
         o1z4In0voLnT1b0HEFuckdR4jxRlMzsxII/qYAyv9zOZjSAanBlBs+QuxbxEHYci7iJl
         JPtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740153124; x=1740757924;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2ZtA6gER0t3smsGWjpoDMnkV2uURH+P/8hvhROLXvN8=;
        b=ZfEel1YGXXAY7mGlTbBiXEeGhlYfPFFsljTRUNbwbnTGdCJm4gP7Xxdmcgd9JjuruR
         7a7op3ZG+S3cVOt02uxgHf0FlAkPyQ3oJgoGsDprvPW+mo8z2eQyS6D+cbeSbMp/wRMe
         5651Acv/qzH0HMtA/Q3mybfp7IN/SI/U/6jGQnNcnpy8ZbODuwUspekJ3Ed2O/StCDoT
         wXfuGv59QY+nr0duPh5XeehbDFneyTtkZafVRPP9NGDEhOY3k6rAWJYHOvgj/cpq3vfF
         wCQcNNdzMq27M/u1tqg+ndbR26cMiaW3MwOsCp7us+jp8J3ygN+8OV3T3/d3RTrMZYhS
         aegA==
X-Forwarded-Encrypted: i=1; AJvYcCWfe7gCNWXucCFt0ghZhcXHyUmuyZTOknZvL54iCH9VYLvQ1AuGwHybOAtDAl66/lhQQmoeRCuNPYhz@vger.kernel.org
X-Gm-Message-State: AOJu0YzluAeRnHSDPt1+CSpknEtwkpCJRzh3JWDVc8FrbO2+YM/YkkMO
	druRyUEcTvDiNmZ8zfnRjCEOe7IKi1P3g4DfAl7QQZh7rkq+mUAxkZHsDYYdzi4=
X-Gm-Gg: ASbGncsw2tmPGGIxyjMbHHZGc4jZ339Fpp8ZmaE860pyMf0AjvX01k0MJEqf3SrmKFI
	4GbQUyatyBAC3kF1Sz8uE8m+2TUMkYd2z8axhiV98v5CalW9HZgwhL21sIrr/E9w7h21LYPL76R
	TDoAUPSK/YY2BQUustvj/C5QEvPaySRnZNX0NOIVcrMX/LVeCTiWICnU/Z7Dv7xzn/oya4fVC9T
	qbmORGazixDV28+lxvcBJ8ejml/Jdrvt8H4BPAVdgW3YYh+d7m6dfjhB3B9xEMdQ5K0lJMp33VQ
	PNf1q+2Y6lFBBGbia7XtVsU6haqL90mHdsgtxsI40NvZAzEH5PmxDf4pB2GfmYBuwJ0tCA==
X-Google-Smtp-Source: AGHT+IH24nj/+JcB3IdIVoSNCh56OHj1lA8DaTNMuTacAa8nbrWyfCud7p9RZVdo/FpZKbuFg1GvZA==
X-Received: by 2002:a05:6512:6cd:b0:545:cc5:be90 with SMTP id 2adb3069b0e04-54838f5b069mr1508800e87.35.1740153124193;
        Fri, 21 Feb 2025 07:52:04 -0800 (PST)
Received: from [127.0.1.1] (2001-14ba-a0c3-3a00--782.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::782])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54816a55851sm287643e87.27.2025.02.21.07.52.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Feb 2025 07:52:03 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Subject: [PATCH v3 0/8] PCI: qcom-ep: add support for using the EP on
 SAR2130P and SM8450
Date: Fri, 21 Feb 2025 17:51:58 +0200
Message-Id: <20250221-sar2130p-pci-v3-0-61a0fdfb75b4@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAB6huGcC/13MQQ6CMBCF4auQrq2ZDmDBlfcwLkoZYBJDm9Y0G
 sLdLayU5XvJ/y0iUmCK4losIlDiyG7OozwVwk5mHklyn7dAwEqB0jKagKoEL71l2UBvqKzNRVM
 jcuIDDfzeufsj74njy4XPrie1vRtUAx6hpCTItuoQyGowqro9eTbBnV0YxSYl/KlRHWrMtbWNr
 lsYho66v3pd1y/TdxnB5wAAAA==
X-Change-ID: 20241017-sar2130p-pci-80dae35a67e8
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
 Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
 Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Mrinmay Sarkar <quic_msarkar@quicinc.com>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1997;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=JahFK35Qr0Io9347nU+Txx7gAacIFQAoJak3GUjm8gE=;
 b=owEBbQKS/ZANAwAKARTbcu2+gGW4AcsmYgBnuKEfg9XRcaDauK2KK12W62KTWukdFCVlmoefv
 kSDMvE8QzSJAjMEAAEKAB0WIQRdB85SOKWMgfgVe+4U23LtvoBluAUCZ7ihHwAKCRAU23LtvoBl
 uDXjD/0aZ67KX/EaGS0bBaOPZQlG7Bv6xwpHwPggPuT8tq5ghFcWqw5wMLnjXSp9vXHNxXQtikQ
 jAwXoZ/LpI9MttQfxwL3Sn57iayMqc3tdSNLFPpVJHdHK1UX/ytwFd+RGIcjqaR/x14k7QdmEsu
 eF07m8gvYzKPugGpZoYReovIunZTRrvXWcmyMN/kLchijxK++U2K5988hXieWORxieLBR3/oZ6F
 INuXFa6gc9HdkQ2I2yddSAZRaHN/eiOmI+C/+pRsJBLvJq7EM5ih9PYJ4+ZyfMF/7TYRiQUnXuO
 0tWagzgpVDwtQK4AbkRxY68PfdOJBStWKo0P5yzHbhdRgYhkVYcEX5k6xRWwvZYmI6RPU3Tci8C
 17HY29j6EkrjL+mmKAjG29JjlrzomGpLYWznIXYXk2eKHsIfSGQugOIo2TssTLfJsxIXXorkOJV
 80aYMeYQmAYaiefMWFFmppguCJ+QbjwPr/LyluNwLoXLsSqd1w8vCxnkdsowYCqgBnZLevhWj6V
 sQ+hF/QuQpbPqCB5HDtzKSByA8647b46I4k3unaTW8MEqiMaB3Vv7EiAwX76EcAHWUE5406J2CP
 gRpnO9fTTN89TRO9lZYY+ddUQIkTjhJfg2zBu9XwVq6rYppYI9eKgZ/ueFxS8FXeasEKuk3N8PE
 O+qL8I0Mz2XD6Bw==
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

Update the incomplete SM8450 support and bring in SAR2130P support for
the PCIe1 controller to be used in EP mode.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
Changes in v3:
- Rephrased commit messages, adding notes regarding ABI breaks
  (Krzysztof)
- Added missing minTems (Krzysztof)
- Reworked schema, merging reg/-names and interrupts/-names to a single
  conditional clause.
- Added dma-coherent to the list of allowed properties.
- Link to v2: https://lore.kernel.org/r/20250221-sar2130p-pci-v2-0-cc87590ffbeb@linaro.org

Changes in v2:
- Rephrase IOMMU commit message to stop mentioning eDMA (Mani)
- Explain why it is impossible to use fallback compatibles (Mani)
- Reformat names to vertical lists (Konrad)
- Use ACTIVE_ONLY for cpu-pcie interconnect (Konrad)
- Use tags for sm8450 interconnects (Konrad)
- Link to v1: https://lore.kernel.org/r/20250217-sar2130p-pci-v1-0-94b20ec70a14@linaro.org

---
Dmitry Baryshkov (8):
      dt-bindings: PCI: qcom-ep: describe optional dma-coherent property
      dt-bindings: PCI: qcom-ep: describe optional IOMMU
      dt-bindings: PCI: qcom-ep: enable DMA for SM8450
      dt-bindings: PCI: qcom-ep: consolidate DMA vs non-DMA usecases
      dt-bindings: PCI: qcom-ep: add SAR2130P compatible
      PCI: dwc: pcie-qcom-ep: enable EP support for SAR2130P
      arm64: dts: qcom: sar2130p: add PCIe EP device nodes
      arm64: dts: qcom: sm8450: add PCIe EP device nodes

 .../devicetree/bindings/pci/qcom,pcie-ep.yaml      | 100 +++++++++++++++------
 arch/arm64/boot/dts/qcom/sar2130p.dtsi             |  61 +++++++++++++
 arch/arm64/boot/dts/qcom/sm8450.dtsi               |  62 +++++++++++++
 drivers/pci/controller/dwc/pcie-qcom-ep.c          |   1 +
 4 files changed, 198 insertions(+), 26 deletions(-)
---
base-commit: 6b063ae40049a93bc662cb0c1653a691424b11a1
change-id: 20241017-sar2130p-pci-80dae35a67e8

Best regards,
-- 
Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


