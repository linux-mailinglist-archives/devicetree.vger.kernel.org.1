Return-Path: <devicetree+bounces-147598-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D070EA38BB4
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 19:57:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4CD1C189497C
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 18:57:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D72523956B;
	Mon, 17 Feb 2025 18:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xd8eOiZI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82453239070
	for <devicetree@vger.kernel.org>; Mon, 17 Feb 2025 18:56:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739818593; cv=none; b=jOBRmOoWdr2rS7ic+KPkufs3hDCpcv06/m2dmdpk8K8Z0tEAQfAmFjaLl70gD9MtGMLEY6HFd3KrRspzYMQeRep2idoaWVjE5udidx4+Di3KQ1qb581H78FhtdXcv999kDnv4D3kABFhTyaW/Fbni5ioiSywkW7YjDdGbT4aVZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739818593; c=relaxed/simple;
	bh=0x/IfIzQT4GRcmYt63ztDRrOia/9PgQl3I9hd35sLvo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=TBspmb2QIw5XBYFw8H4MxVmjhcHQ7yr7nddNkyjukCwmeQvKBMlVWLVDLwqN5NI5eaUDVKb/ESTKhzMp7onsXuwJZBx4xyKt6rIWAKZoyltYhNQ611qecmuqUPpRjN+6dE2q3sKix/GPhKlnuqXsV/u9zVmMUqKA97FR+yMugOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xd8eOiZI; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-5452efeb87aso3368501e87.3
        for <devicetree@vger.kernel.org>; Mon, 17 Feb 2025 10:56:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739818590; x=1740423390; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0pGxWBE0LI66StEABXqnTLUKp08JqsNxrWQIe7D1/Nw=;
        b=xd8eOiZI9gRCUwW7RcdT7LCFz8CzimTSvscg3aeeqKzNoI4Bj5XpQIhGRBfNXR9poE
         Q4Efn/JYmU4+St6M0irT7ElvyIq6+QG+Rl3EDzt8iD5usHOED6445gizTuxqBcKdzDQz
         Fw3iwXVcR5q1XkGXbS2UX0W74dsViWSuGbXsKQbqf/xoCp12Xr6S8b1/lUfZXxgzzeUb
         0EzX1D+kOYnW87bTT58zgw4jMkBQkPuly+Vdz1DuMtZjUaY1hp7Zl7s8aWQujPtAePW/
         Yc3KNCOW3lXF+LMYED/63HMYGaMPXuOWXk6nHJ6XkatbxJNghUUWii3648SsL8m+EV2Z
         D6NQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739818590; x=1740423390;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0pGxWBE0LI66StEABXqnTLUKp08JqsNxrWQIe7D1/Nw=;
        b=gvHDGCcgOrxAj4UbzpBl/yvrI8tDSd4j1IZyLjHguKwC3URP0HUk5ujJoqxrAgAtNQ
         EPVrLIjcVbbfzupPsMPGV91CwRYVjFfGJYITO4blASLGCU/77p4pdp6hzzrJWE9bgNmD
         yjLWel4JhWdHOnh06UqOdt3Ld7CgaSNy+4e10l/svSRI5efgz4kWdHSez79MRdqW5E3X
         yvPGXZJXmuTSDGmdyx/nANEJArY5mJJC+jgOYPF8u7ZYTr0gXn9ip5JmLhHTK6bJ2cir
         8D1zz7R51Fd3t6J8AGicGJpeK80aNgSCnjryMjyVgrRzwIz65EaheKxrNuSpYG+R/bJw
         3C3g==
X-Forwarded-Encrypted: i=1; AJvYcCUoh6+9WrmeGQmLCGdy6cJzdzgiYQGHPmRl2Y8oC2BwGycRSr5TwrxQL1Pas64nv/ftMB7fYzlhJOXy@vger.kernel.org
X-Gm-Message-State: AOJu0YwHz+0dyNmaOJT7YLwD6FyknAgV2e3zNA0Mu1WoxrFt76fPTcX+
	XOMfmNYbzk5S8w/UR9/tZBMzk88tDVRe6vcU5zBStMS5ewogmo314rz5+/P6Q5Q=
X-Gm-Gg: ASbGncs11z1Lzar1766Am5hiohXUR6Hmi4ww6g+fwtmdtHLmxjOlVYMIVm+8H01RY9a
	hmfKXNQBRe9s44jjYNmvNa5SRQ/ZO3dDUxqy8hHZImuOAit13VTaxDlqOW9Zmhlw6VxOdN61iVX
	rwKYnbj8FgOhfBZvFyO090cfi8a1LnPeQAZ6JASV6oUCagJVRmQI1vjmP7AVl8+A3NwapRwaGXH
	tVsQNzjXOqM2ryhrkZeMlld7vFqNom2o+Ev5RiyUi6F34zp+Jqpj1WEcb4+3dEfZY8MJK8s+n87
	7OW759GcxXqjzqKqLnoTLqhr8HyBiHNJflDq87LUtuWEueZuQJfMZ+c12J0=
X-Google-Smtp-Source: AGHT+IGwajw4FID+0z/8qxhOVpr1zTF6htKM/XbP6E5mrWtDvi+U2GyBKKs6xRrI34pempDMxcTtqQ==
X-Received: by 2002:a05:6512:ba6:b0:545:2fa7:5a8b with SMTP id 2adb3069b0e04-5452fe3aaafmr3831896e87.27.1739818589746;
        Mon, 17 Feb 2025 10:56:29 -0800 (PST)
Received: from [127.0.1.1] (2001-14ba-a0c3-3a00--782.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::782])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5462006b0ecsm559806e87.160.2025.02.17.10.56.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Feb 2025 10:56:28 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 17 Feb 2025 20:56:17 +0200
Subject: [PATCH 5/6] arm64: dts: qcom: sar2130p: add PCIe EP device nodes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250217-sar2130p-pci-v1-5-94b20ec70a14@linaro.org>
References: <20250217-sar2130p-pci-v1-0-94b20ec70a14@linaro.org>
In-Reply-To: <20250217-sar2130p-pci-v1-0-94b20ec70a14@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2579;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=0x/IfIzQT4GRcmYt63ztDRrOia/9PgQl3I9hd35sLvo=;
 b=owEBbQKS/ZANAwAKARTbcu2+gGW4AcsmYgBns4ZRXOd9ZqtUphIXC4hj+NDEExWJk57dly67s
 WwCzIKxQISJAjMEAAEKAB0WIQRdB85SOKWMgfgVe+4U23LtvoBluAUCZ7OGUQAKCRAU23LtvoBl
 uKfjEACvUBBHL0bgMi6vB2fzerFZ4siCzVDda/rqN+4TVy+rQjSQg5uDKRE6bh1IUnMcrdaoKTa
 zKQr4mG4Fm7LrgE7qpSzbhlOT/klwvSksaiZ54EAcRIQSCga27OFcSBhL29Z79JM3OK0WVEyW0S
 3sHjS6fNmVuTPJozCkkDHUJxekWEasBDiQ+uiAdszvHgr/FpQxM64yCqAwUPuJJdtMom/H2nGZ9
 I2JnNKxN4Gt7x4rkAXVEkxWqHwgLTNa49k3d7uiTCDwxNhQNMZVUtZw0gKjuVtLH0b2FOZWJyFx
 aXs13tHp2kQ+UK2DI33L7bDy6D0GomI37ix93DRji/MVDxgsetKuuDQOhH1f09Bq8FlTa7XGZAm
 jdpKnho0SqkjoQQq7q3j3eZ6zjQopoXpkrCxt59937K9lzmijfIytB0lvnmaSjorsoSJ8V5ZjYh
 yCa/SEsof+zY0qpsyNwg+VJSS97SuKoVtwuGuHXAoQXvwSCg7osKZDZfv/7DvFto/vvZpQajijH
 ww+gx3Jh/0x6yh7+IkcAlJS5Cm3iMHYILGudJnSQDHeKkcJB6U7wXicr9rTfGmJa4jdkv2pD8d9
 IcXmiYDxC1DNQDQ5dedVQropnZcxuYdWLaqizy5eMzrj6RbcFLjYzHWxCPdLduIzWCL90ZcPN5i
 y5LRF21DHZ+lmVw==
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

On the Qualcomm AR2 Gen1 platform the second PCIe host can be used
either as an RC or as an EP device. Add device node for the PCIe EP.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sar2130p.dtsi | 53 ++++++++++++++++++++++++++++++++++
 1 file changed, 53 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sar2130p.dtsi b/arch/arm64/boot/dts/qcom/sar2130p.dtsi
index dd832e6816be85817fd1ecc853f8d4c800826bc4..7f007fad6eceebac1b2a863d9f85f2ce3dfb926a 100644
--- a/arch/arm64/boot/dts/qcom/sar2130p.dtsi
+++ b/arch/arm64/boot/dts/qcom/sar2130p.dtsi
@@ -1474,6 +1474,59 @@ pcie@0 {
 			};
 		};
 
+		pcie1_ep: pcie-ep@1c08000 {
+			compatible = "qcom,sar2130p-pcie-ep";
+			reg = <0x0 0x01c08000 0x0 0x3000>,
+			      <0x0 0x40000000 0x0 0xf1d>,
+			      <0x0 0x40000f20 0x0 0xa8>,
+			      <0x0 0x40001000 0x0 0x1000>,
+			      <0x0 0x40200000 0x0 0x1000000>,
+			      <0x0 0x01c0b000 0x0 0x1000>,
+			      <0x0 0x40002000 0x0 0x2000>;
+			reg-names = "parf", "dbi", "elbi", "atu", "addr_space",
+				    "mmio", "dma";
+
+			clocks = <&gcc GCC_PCIE_1_AUX_CLK>,
+				 <&gcc GCC_PCIE_1_CFG_AHB_CLK>,
+				 <&gcc GCC_PCIE_1_MSTR_AXI_CLK>,
+				 <&gcc GCC_PCIE_1_SLV_AXI_CLK>,
+				 <&gcc GCC_PCIE_1_SLV_Q2A_AXI_CLK>,
+				 <&gcc GCC_DDRSS_PCIE_SF_CLK>,
+				 <&gcc GCC_AGGRE_NOC_PCIE_1_AXI_CLK>,
+				 <&gcc GCC_CFG_NOC_PCIE_ANOC_AHB_CLK>,
+				 <&gcc GCC_QMIP_PCIE_AHB_CLK>;
+			clock-names = "aux",
+				      "cfg",
+				      "bus_master",
+				      "bus_slave",
+				      "slave_q2a",
+				      "ddrss_sf_tbu",
+				      "aggre_noc_axi",
+				      "cnoc_sf_axi",
+				      "qmip_pcie_ahb";
+
+			interrupts = <GIC_SPI 306 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 440 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 263 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "global", "doorbell", "dma";
+
+			interconnects = <&pcie_noc MASTER_PCIE_1 QCOM_ICC_TAG_ALWAYS
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
+					<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
+					 &config_noc SLAVE_PCIE_1 QCOM_ICC_TAG_ALWAYS>;
+			interconnect-names = "pcie-mem", "cpu-pcie";
+			iommus = <&apps_smmu 0x1e00 0x1>;
+			resets = <&gcc GCC_PCIE_1_BCR>;
+			reset-names = "core";
+			power-domains = <&gcc PCIE_1_GDSC>;
+			phys = <&pcie1_phy>;
+			phy-names = "pciephy";
+
+			num-lanes = <2>;
+
+			status = "disabled";
+		};
+
 		pcie1_phy: phy@1c0e000 {
 			compatible = "qcom,sar2130p-qmp-gen3x2-pcie-phy";
 			reg = <0x0 0x01c0e000 0x0 0x2000>;

-- 
2.39.5


