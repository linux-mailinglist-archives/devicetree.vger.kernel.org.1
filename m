Return-Path: <devicetree+bounces-234418-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A03FC2CCFC
	for <lists+devicetree@lfdr.de>; Mon, 03 Nov 2025 16:40:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B4BF3460768
	for <lists+devicetree@lfdr.de>; Mon,  3 Nov 2025 15:22:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B805325491;
	Mon,  3 Nov 2025 15:15:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BQW/6Q8B"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DD03324B3F
	for <devicetree@vger.kernel.org>; Mon,  3 Nov 2025 15:14:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762182901; cv=none; b=HdPLvjkd7h1FRg6B968VHlq2MYtNugxDh9sWVgVTb502m5uxdLwpGRqW+oCBbdoB/mRP7uvO7iz4c+x0TQBFdn2Q1zIYIoHeNXfON8R3h91x5w0+GGIhPLihC6nfwjdwIIC2DYVvAaSo+GDt37pxCoYSn8PAZblRklHLAfc0Muo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762182901; c=relaxed/simple;
	bh=8NBFLjzMEgjTDyxAIQC0mdB6Oa7ms21UQ+blpDKfkTA=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=dE9Ff7GCQP+O4HbpP/lp+TpjVFBstUvEJ5mLrxzeTAWOIGu1/NUmer8dk+fcWSyfRhlgS8Xgnt8rn+GXnx3B04xeG8g3PawZo9g2o0RdPN7cXv8+nH2OH8/c3sedEgCSB4efvFM3tKvYy+21iCk+IKhD7/6vob6pjJIlkS0mcuU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=BQW/6Q8B; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-b70b2cfc032so7856666b.0
        for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 07:14:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1762182897; x=1762787697; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=eGi4/MumABrJMjqvBNuWbmBgVsY5VFid+04xGbYF4nU=;
        b=BQW/6Q8BCVStHUZL1yr1fIVexirXkOb78K8WKxV3UrUy8uHfQ4LV1tpVmR7c8Pj/To
         86C6CW7mME4Svm9J4HsE2VSQrbtiMMgoWPZUxpvWVd1DDYd2kR7cGNE0ZAUXWr8Sw3OL
         Tw7it0JyQBIW9WNtuMTWqvyagmrMBpCpgayCyiYeSVyNxGQfgF0KQWEA27373LaKrVC1
         6yh2es0JDRobtw61VUi/TIPIgsQCV3dg1gxE8h3B9fYedRWo0fmo2GyfZw2eQDs/gOCR
         3HDqayLcX6PTrKDyg8nz/+ZW3i05K3FDFWmDdeP1LE+ta/lrkCIYcFDmHS0TptgMnT7m
         JS6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762182897; x=1762787697;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eGi4/MumABrJMjqvBNuWbmBgVsY5VFid+04xGbYF4nU=;
        b=eYhxj3ATVdQULhKEnCGrwe+fqfeleX7PWj20PnDgnd3ojkNdFrpmOmIz7oYb645UKP
         EjbrxQETVJlKnDg+6tEAdn2WDI2MEcR3buuguDaYnA39UW1E+arB0AoWUUesJXUMDaS0
         OcB4wyHoIKmnhqxQk30WQmLk4UzeIJMiXV/x8Y3WKQbqv561TJYT7B0LvnwOnNOnrqEl
         mFi6A7ChKVZj4qRYcNWTfh7aamDQ55edQFuZMEQuy70CN4VSzpFE6/CjHi54p6yIiHaV
         BZ6hb7J2Ro0bS1Si7sw/IMAEFE8UVeB1e6TlsgO//Kjqj7eNV1u1WbKGnbRyzn1WOm2v
         N7qQ==
X-Forwarded-Encrypted: i=1; AJvYcCUMeWbujpiOVS4PVU/3rELpr1uDp53E9eQUwGiDHEXedk3YLJ5Bhq05pE9GfYOjqoulTCH4uxxd+DWY@vger.kernel.org
X-Gm-Message-State: AOJu0Yx8vgkcGr7riCCRwGT8tBkkP6WHdQ9y6t2awKLdDUlpxx/7+RvT
	zjx2rXYOKsRkuje69CzyxiIZ4xADcSq/21Bi82dZcfRLUvRdBgXNcGOCQ8UWSkiPHrYiA1ZvQ1X
	Cs2g+
X-Gm-Gg: ASbGncuCnIXloqlq/GWHQ32xRVJ/of0U6PGJ0fpC1BC1PAC5impagv0CtCU3otlZFdU
	a8giKq5UIrOTNVOAorB7H5sLL/J2OdV/TRhfFTOnhDSCeNAJ2Hj4FJl/dB5WfHBIsWGyUMB+NyQ
	8PQ2IZzxBM1pobW5GYgXJVvcNjwI3EXoSltzuSSkAc2TY6CmO8kAEgtQOMg/lXlGF/tcjQ2QrMj
	pthJ8NcfTGL5DKa1BbBoBD1/4Q7SOn5aFA2G3M7gy7rOlkPcGC6ff+EQejHhNrcgLyyl3nfpetJ
	l4/6d5qHclzN8CpH4pF7L/sj5dKJQCngLoYdHZWzhnWLpKUY476EUoKvupNdxBiL9oaIV84jCot
	Q5JNEylmxMd5E+uLPOwgKZnLUr4KtCzuR1DxRR7YZ2jLQ+ozCAIvyU9vMDFB44oc4LnM7GxC82k
	1zCDrwtS6KWG1bmb7Y
X-Google-Smtp-Source: AGHT+IEt8D2L4/c6q1jdTDxYKJlbkQpEhxwOFjDzoJ6qunqS5xAMVH0vozm3Ngjbg+T611/Y2L59WQ==
X-Received: by 2002:a17:906:f9da:b0:b70:b6f5:4239 with SMTP id a640c23a62f3a-b70b6f546e4mr200213666b.3.1762182897081;
        Mon, 03 Nov 2025 07:14:57 -0800 (PST)
Received: from [127.0.1.1] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b7077975dfdsm1045203066b.13.2025.11.03.07.14.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Nov 2025 07:14:56 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 00/12] dt-bindings: PCI: qcom: Move remaining devices to
 dedicated schema
Date: Mon, 03 Nov 2025 16:14:40 +0100
Message-Id: <20251103-dt-bindings-pci-qcom-v1-0-c0f6041abf9b@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAODGCGkC/x3MQQqAIBBA0avErBsoMbCuEi1ynGwWWWlEIN09a
 fkW/2dIHIUTDFWGyLck2UNBW1dA6xw8o7hiUI3q2kb16C60EpwEn/AgwZP2DYm0NqzNbDsDJT0
 iL/L823F63w+cKLA9ZgAAAA==
X-Change-ID: 20251029-dt-bindings-pci-qcom-cc448e48ab58
To: Bjorn Helgaas <bhelgaas@google.com>, 
 Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2392;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=8NBFLjzMEgjTDyxAIQC0mdB6Oa7ms21UQ+blpDKfkTA=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpCMbjt3er7ucG129PkdA5E8TLG29nLG+vnZR7D
 FnhP5yHZIqJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaQjG4wAKCRDBN2bmhouD
 1y63D/9Avm0LvO4w9yYE/ebFsc+SFal8QNN9EOvj9Onab7bqIUuXswJh4jSHnZIL9O+WP3XqGAH
 CypktuH1H+6phnXh/FEWgzjHg+xlLWB8hcQNSSVDnDhlZ/fLyN4e8dRWbaMgYJSOf2Wg66jhsPC
 jDIy6gjxc8D5O9aHnrXH1bZxRAT4U87MGWkDiaUQG4hGmJad80rb1KJdqDkbipf1qH+VjfpQLcM
 1DGT40+XbLt0w2hxR2bRxP6lhfORQUe4BRpmmGeabenn6/KDPBTLT52nA0XccYOvHIKl16Nd3nv
 zRfOspsR8OtjRr2vJ+mxaZrZwhvgFNOJ8ftagWprDSuBv9rzGCxakqV4BuxbN4JyDu8HrGygCc0
 6sp06nz/MS+MtHQBMCegd4niQTKrlHezUoa7N457fU6zM9LPWB5RnO4P17k2CRcjgAAIbXqaqWN
 qA9uXE0UYOetER3cjGZi77ntvxGeJYwMIJa7oiKW35fP26SR2jJEZTCToGgMhx2/E30h/dxGdRx
 zff2ZK4RcEpEPuD8d67ZlG5K3NzvCxqTBwbqVOMstonmyhlbUYgMBMSe3uk+weVAcqWL0yAI33n
 1JneDZXFrF4kzL/DiIsljKxLvN8QtNZzrGpnZL/XuPfJbYAtAEQ/KgB8PpM1uWHzg9upc/tB7pq
 R7ImR3USL2MNCgA==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Some time ago I already moved several devices from qcom,pcie.yaml
binding to a dedicated binding files for easier reviewing and
maintenance.

Move the remaining one which makes the qcom,pcie.yaml empty thus can be
entirely removed.

Best regards,
Krzysztof

---
Krzysztof Kozlowski (12):
      dt-bindings: PCI: qcom,pcie-sm8150: Merge SC8180x into SM8150
      dt-bindings: PCI: qcom,pcie-sdx55: Move SDX55 to dedicated schema
      dt-bindings: PCI: qcom,pcie-sdm845: Move SDM845 to dedicated schema
      dt-bindings: PCI: qcom,pcie-qcs404: Move QCS404 to dedicated schema
      dt-bindings: PCI: qcom,pcie-ipq5018: Move IPQ5018 to dedicated schema
      dt-bindings: PCI: qcom,pcie-ipq6018: Move IPQ6018 and IPQ8074 Gen3 to dedicated schema
      dt-bindings: PCI: qcom,pcie-ipq8074: Move IPQ8074 to dedicated schema
      dt-bindings: PCI: qcom,pcie-ipq4019: Move IPQ4019 to dedicated schema
      dt-bindings: PCI: qcom,pcie-ipq9574: Move IPQ9574 to dedicated schema
      dt-bindings: PCI: qcom,pcie-apq8064: Move APQ8064 to dedicated schema
      dt-bindings: PCI: qcom,pcie-msm8996: Move MSM8996 to dedicated schema
      dt-bindings: PCI: qcom,pcie-apq8084: Move APQ8084 to dedicated schema

 .../devicetree/bindings/pci/qcom,pcie-apq8064.yaml | 170 +++++
 .../devicetree/bindings/pci/qcom,pcie-apq8084.yaml | 109 +++
 .../devicetree/bindings/pci/qcom,pcie-ipq4019.yaml | 146 ++++
 .../devicetree/bindings/pci/qcom,pcie-ipq5018.yaml | 189 +++++
 .../devicetree/bindings/pci/qcom,pcie-ipq6018.yaml | 179 +++++
 .../devicetree/bindings/pci/qcom,pcie-ipq8074.yaml | 165 +++++
 .../devicetree/bindings/pci/qcom,pcie-ipq9574.yaml | 183 +++++
 .../devicetree/bindings/pci/qcom,pcie-msm8996.yaml | 156 ++++
 .../devicetree/bindings/pci/qcom,pcie-qcs404.yaml  | 131 ++++
 .../devicetree/bindings/pci/qcom,pcie-sc8180x.yaml | 168 -----
 .../devicetree/bindings/pci/qcom,pcie-sdm845.yaml  | 190 +++++
 .../devicetree/bindings/pci/qcom,pcie-sdx55.yaml   | 172 +++++
 .../devicetree/bindings/pci/qcom,pcie-sm8150.yaml  |   1 +
 .../devicetree/bindings/pci/qcom,pcie.yaml         | 782 ---------------------
 14 files changed, 1791 insertions(+), 950 deletions(-)
---
base-commit: 503fcb70f99075032f5bbf528cec4650cb7dd7d0
change-id: 20251029-dt-bindings-pci-qcom-cc448e48ab58

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


