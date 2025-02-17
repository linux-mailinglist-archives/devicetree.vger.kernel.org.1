Return-Path: <devicetree+bounces-147593-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DD8CA38BA2
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 19:56:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 45D8C3B09D8
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 18:56:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 666B4236442;
	Mon, 17 Feb 2025 18:56:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DUdfwXWD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34C3B233D7B
	for <devicetree@vger.kernel.org>; Mon, 17 Feb 2025 18:56:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739818584; cv=none; b=Y8qRtCjIIt9JMoiCQNBqDcQJWlF+dG3lbHbABhzSkC30Y0B2KXth1Mi/Ab1XRJaBu1cYBqiDiFgXr5cHsXlpgwpeDUkveVJqEzve+/X7EE8kk0UtRCKGlx2LlYzg8b5Xsc1ZJn6697PNU1GNYdvKEKvEjlzvh4aNdQN0DV81urg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739818584; c=relaxed/simple;
	bh=21GINV+jTT0ljh6iGdE46yNUcUdBiV7LkViktY34c6I=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=lkY6Ixqyza39cDUlwJGbe2gQBOyvKTtX11i83w9Znqeiwcc/gkdqFxucRq2QsE7IphGg7WAvxJB1R6ijWF2/k8bp7I3a6lDttAGvh7QHpSmiG7jBpA1P94WYlt2Dw/eZTU+icgjl3NCUxroYybcpxvOfN5/C9+5YIf6SpqdqFu8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DUdfwXWD; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-54605bfcc72so2129266e87.0
        for <devicetree@vger.kernel.org>; Mon, 17 Feb 2025 10:56:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739818580; x=1740423380; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=BAW81WUtaGDrpjLpQFuAf8r7igrxWydrW/CS4LG6Lcw=;
        b=DUdfwXWDXbJ3zRHYRYMQzfEGUnTzfpMardaJCnn6vjoCU8Cs6fEha0dWus6Z+XEJqQ
         MR7V8it4014lTyV51JazCh7RDTICk30uhF/B54wo6nnCt68e2b3LStm5NDCVZ79VBETW
         Xjb4ogk0u40EeLXZeoe7BYfFkZi9wU7INzpqg7mS8169yrwt6oT7Tz0Y80rtfy89x1gx
         IMk1A3Z0zGFan+GKzfdloX27bxwB7VGRi3VTKD9CNnNOeug7AwxeZPoQ9xRmtdbiTx5n
         lHIoXnUhkAVT4F3pQghdrbNy0+LkVcxRds3C3FC6VCepHg+f1vxRAipp6hHHSb0k9Ek9
         RwaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739818580; x=1740423380;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BAW81WUtaGDrpjLpQFuAf8r7igrxWydrW/CS4LG6Lcw=;
        b=Q4jtLYCr7vPc2sSvDXXp/IF5LoBkX2w94io8e3OLPAZCh1YYIGumsETYzE+KepBtyO
         LgFD6IpFx58wgrEe+X49Qn75xXIsQ+TVxBSGTawaoprDZijtsAHRWJXIfP4BbJF2WGVS
         9lSbu+589L3vgP4uAYNGkKCtG/7fORu0r7tDJTRlwsnMQRF/f9stc2EqLAP7jTzs+NXu
         bGsPMMthxLBDDm25a7cydP+BJvNPVl65kZ42Vz4BymhR6Yrp3fQNSe3QT3DfqcmxQp6C
         DjqPJSNQDD3deegD5DbFbFO+rfiaPVTa+tl9oqTadvfX7+ZU8Ji8yOPXQmY2LhB7AsRg
         WTqQ==
X-Forwarded-Encrypted: i=1; AJvYcCXC+0T129ciUSyr3pUy+oE/0+sycHA5tTZfWXfyIObAmzaHKXCwCDKk1++geJl8Q0umZblzD6RBoZTQ@vger.kernel.org
X-Gm-Message-State: AOJu0YwAbxRp3euUqxcUnwqnrSQmTS5C2QGW7L8l0MR3QgP3eY5Gs/sK
	NYHufevNGPCQzWtp8l3Z5IY+8qFj0kePQ+gBF1mzTsCSURHZEMTuOonQM6eeVZo=
X-Gm-Gg: ASbGnct5+6k0idbkvQDpPc1Iy8Ho8MlnHm521L/izYllvT4YGalDOF5gCi439ZK8TPz
	p2iZzYVGOvuwwNtpVuU1L9wRbr8U47Hi8pS67OVE5XM9LhSMVv1bz1N08bI1NxRb92IimIdMxlc
	3s/8UEU1XktQ0Bi4UI09HRqrlg4Spdmx604Qm3C8FbSS1fEDpoY10mcUEKAfRA5BQcG9jsyDFuo
	IAMB2TbDITGRFHBS2k8g5D7P3shwvye/+qzrHg8yGDrfitKBwamDYd3p9T7s/v2mWKBiFykyz8A
	UrartT7eX89HCQlbHzgjk9F7Pq8T86MAQoSCXJ+2gRPmEBC9p2+uzF1TEp8=
X-Google-Smtp-Source: AGHT+IG63ghCxYPnwVWx4j5CKiVfpEwlnjS1CxJrziNrE6kVkwoM1IgOqX0WRSrlQIdssIrnOIfZtw==
X-Received: by 2002:a05:6512:3c86:b0:545:31d8:f384 with SMTP id 2adb3069b0e04-54531d8f982mr2456362e87.10.1739818580218;
        Mon, 17 Feb 2025 10:56:20 -0800 (PST)
Received: from [127.0.1.1] (2001-14ba-a0c3-3a00--782.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::782])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5462006b0ecsm559806e87.160.2025.02.17.10.56.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Feb 2025 10:56:18 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Subject: [PATCH 0/6] PCI: qcom-ep: add support for using the EP on SAR2130P
 and SM8450
Date: Mon, 17 Feb 2025 20:56:12 +0200
Message-Id: <20250217-sar2130p-pci-v1-0-94b20ec70a14@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAEyGs2cC/x3MQQqAIBBA0avErBMcrZSuEi1Ep5qNiUIE4t2Tl
 m/xf4VCmanAOlTI9HDhO3bgOIC/XDxJcOgGJdWEEo0oLivUMonkWVgZHOnZLYYs9CRlOvj9d9v
 e2gdugY24XgAAAA==
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1086;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=21GINV+jTT0ljh6iGdE46yNUcUdBiV7LkViktY34c6I=;
 b=owEBbQKS/ZANAwAKARTbcu2+gGW4AcsmYgBns4ZP0jFRqK6qM7lWJy6cx2BjsR04fO27y4jOd
 r9Hus3kApOJAjMEAAEKAB0WIQRdB85SOKWMgfgVe+4U23LtvoBluAUCZ7OGTwAKCRAU23LtvoBl
 uEBcEACuIgxA9prRR/xwlBxoo3AZmYE8/63IIPLOGRh7R7tcaHvJdytVxWaZhqcOlvqZf4okNP5
 5Z1UOE6tOd/FU7rJPT+xUOXlcUZTH9EfThdlN/vVRqUIiKWQhmOh6bAc5c+ABLsyQwzRIxtFUMM
 PuIoC5w/IFZ7Bb+wCEVlV6dOmiItiVKjoFRtDXabZCu10h3KlIQ2wEqCKg/L2aUtd8GjiV6Nrpd
 rvcayMWA7kQ5dem+kdho1Ya6QYeDJr0nCohNTkQhEPV/9VO+vtel+bE8+o0k1wxaWxn3zNrDjy8
 264bEYvFSkmmsltk7hssijQsHpujUpYQXoiGJX82vSiZFLMGepdhYIpCv22cIjKYZ4qEbkNehpx
 r1fZInrtPsvvulmrxBz5A5S1IutG0rHqQVBU2NHTcCrIOxeEpgRQxC9oGsCT74BPnWwvN4g2wJE
 CP5PpobZWDBAvLSs2VmTwE0duE1NYFQDgrx0w+J/4rptKjtdWUPBa0H/dxidHb8gloWtwPUuLSR
 xP48B+MYUuWF6H1UMTAGKEgdYkpVDVGjgoeZNoNcS/FTDTkPYxg1rDt3EiYTJO02M96vSFyAs/y
 9zoRm+S5ddy6EH9tpwEaMvM9jHsKP0H7UMLGQW8zRhw/KAZctK6RmHSzyNDLo+pUYjkum5tPIZy
 QM3Nusena5oU6Uw==
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

Update the incomplete SM8450 support and bring in SAR2130P support for
the PCIe1 controller to be used in EP mode.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
Dmitry Baryshkov (6):
      dt-bindings: PCI: qcom-ep: describe optional IOMMU
      dt-bindings: PCI: qcom-ep: enable DMA for SM8450
      dt-bindings: PCI: qcom-ep: add SAR2130P compatible
      PCI: dwc: pcie-qcom-ep: enable EP support for SAR2130P
      arm64: dts: qcom: sar2130p: add PCIe EP device nodes
      arm64: dts: qcom: sm8450: add PCIe EP device nodes

 .../devicetree/bindings/pci/qcom,pcie-ep.yaml      | 69 ++++++++++++++++++++--
 arch/arm64/boot/dts/qcom/sar2130p.dtsi             | 53 +++++++++++++++++
 arch/arm64/boot/dts/qcom/sm8450.dtsi               | 52 ++++++++++++++++
 drivers/pci/controller/dwc/pcie-qcom-ep.c          |  1 +
 4 files changed, 169 insertions(+), 6 deletions(-)
---
base-commit: 34598f5b38950c59f15caa5194cfccbf6ec03c99
change-id: 20241017-sar2130p-pci-80dae35a67e8

Best regards,
-- 
Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


