Return-Path: <devicetree+bounces-35462-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C277E83D7F7
	for <lists+devicetree@lfdr.de>; Fri, 26 Jan 2024 11:24:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 70536280FDA
	for <lists+devicetree@lfdr.de>; Fri, 26 Jan 2024 10:24:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 357295F57E;
	Fri, 26 Jan 2024 10:00:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="k8HNnxZp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BBF05C5ED
	for <devicetree@vger.kernel.org>; Fri, 26 Jan 2024 10:00:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706263247; cv=none; b=u0b9t6tcI5qyXiTN9TqQHCZPHwF69/JxJaAL8P136t/PZcJ0EJa3al/E7XuWTvS4Az7ngTYci/kkpmUySk1TmHS9YRt4l22bbkscKJUm1fdFA+7FnAHQnk2j1Jfx38Eh5Xp6F04efKRyO6isKRAaE058W/KWlTG46p+mNOf4yOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706263247; c=relaxed/simple;
	bh=C+kyR7l7a6HR2OGK95PrX0eZepqv9KsgpOrW2UZtSBA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Rf2r56bUn7uhwb4a1shuXqUAulJVR4eeaXzV0wSecs7b1Z+wEfJ7hScJFv/mFgFctjvdd4fY+ctCC1lWax2OvS0zYMZHIqVADFHuLusb7wkjcFyXhdDK/68Lywjvzce+ifwmEOJ5XNNugEgHdCQYbUHY/YdH0b17UC72n5ldMpk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=k8HNnxZp; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-a2f22bfb4e6so72494066b.0
        for <devicetree@vger.kernel.org>; Fri, 26 Jan 2024 02:00:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706263243; x=1706868043; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DoLr9okIEwV2u/vnDBp17r8Rcfq4WtHXtpq5Shlfi4M=;
        b=k8HNnxZp2YMSYOJmhIRrln8TWX7X4p2MCevabd1JVVOeP9E98l0AIoNO5mjczuBi6U
         BDOcD8kKSb8ptILg8Y9tYMihM/QkmTDhTn4C2CZLJUSVNRWZmqHV2Am4Ri3BTo/QyQ8R
         yBEILHBCLYY1cvNoItNAW+NcFuAieNu1jXnjq/zDDfcN1vgSkrbhhZJa+XSnfwz8GYl2
         1wboqolAXAWL5FuNQ6miiFOcyX+5V/bwoCyquZvZ1RIdIj7DU/0Xnui+i9nwGPcBBR6a
         CnUvky7ERZdzlmV2sUMag6yQnqBS6rCl+MXnLBz2DiKzlxfUjR2dzaJQDo2jQn0zka+P
         PTUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706263243; x=1706868043;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DoLr9okIEwV2u/vnDBp17r8Rcfq4WtHXtpq5Shlfi4M=;
        b=q4vMtAHS004Cxvn80//svyjfFGOqBbuwQQEeGrmAoaMFE4vfZPwk+fv2+9g/RW6HNy
         TdjosmiPjEtelLfabti4a9aAkDV/bUgmKldH/0dUdk6FFY+tb3pXGxN+773QnnUbh55n
         jZh+9vV5kBC0Txx//PqHHWOSTwcgT0Eq0Etm7b9i55/X6BvWjAI2FHiGNETJyG9UUNmY
         Hke+B27ySIG/3SmI1kEjMlUZYNiZMp35SxbewboFzdD1fTMJNdk1EBMFRL8yO6lhTpfF
         7sJw+3CAljANzLiORoNMqYeCjle2PlI7ICYalArdVcjRmnhSe0gW1eMZ4G3syrgzM7VF
         j8Tw==
X-Gm-Message-State: AOJu0YwMJOfM/BXv+gwChKE0pfE058m+kuU3T1xSNahNb5TW9KMqWnB7
	lJ9PbyAhW8yeIbBDeOC1X9QGXUij0RJm/Im49ofr8tuI+0unoGX35Kw9g+Wm6y4=
X-Google-Smtp-Source: AGHT+IGK6N87utCu+pvoyvaOtbLf/A7inD+fmad4qsX6qP/9yuS/c0FsYK54+Py6IFrEDbL/ubaAYQ==
X-Received: by 2002:a17:906:168f:b0:a30:fb95:9387 with SMTP id s15-20020a170906168f00b00a30fb959387mr1086791ejd.75.1706263243425;
        Fri, 26 Jan 2024 02:00:43 -0800 (PST)
Received: from [127.0.1.1] ([79.115.23.25])
        by smtp.gmail.com with ESMTPSA id ox27-20020a170907101b00b00a3221b95ce8sm448494ejb.77.2024.01.26.02.00.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Jan 2024 02:00:43 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Fri, 26 Jan 2024 12:00:18 +0200
Subject: [PATCH v5 07/11] arm64: dts: qcom: x1e80100: Add PCIe nodes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240126-x1e80100-dts-missing-nodes-v5-7-3bb716fb2af9@linaro.org>
References: <20240126-x1e80100-dts-missing-nodes-v5-0-3bb716fb2af9@linaro.org>
In-Reply-To: <20240126-x1e80100-dts-missing-nodes-v5-0-3bb716fb2af9@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Sibi Sankar <quic_sibis@quicinc.com>, 
 Rajendra Nayak <quic_rjendra@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=7290; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=C+kyR7l7a6HR2OGK95PrX0eZepqv9KsgpOrW2UZtSBA=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBls4K8zUECQIHIBXWs3bpidH/HopHIEitB/T3o9
 BsmzDQXTKqJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZbOCvAAKCRAbX0TJAJUV
 Vja0D/43QRBdRT+td5KKR/dkpFQ34i3mXTAODDzdBB/iUwO++URFynZ8q0qLPqTNX3QI8+30nDs
 Txp80mHPszl48txCVtQl0yR2ZcB/TN4ssHhzpaXRKPZgv1vDCFBUa4jkJj8vLjsmbiof5grpjLl
 sP/XjupvWaLhapO25x3/RQq2tIYz8tCybolv8YrHjUykZrIp06dGAb1JzyqMUCKaD8Hg5UqGjXF
 OsHBSLcXEK4EHNPOP3Q085EjeaOS8HIhLgM+QTtMRVbkxi7Feoh7lZf9wgz3rm7HB5l/8mt7W78
 jrW93tXZPnIVvxUCpvf2+ZdvsU1N6JX3UPxY0KAU9LqESSIp1UYP6qLTGJmkAINpDvYv4sEP8T3
 yCxgYWOG8SQ+jGqS2Wv+gDcWUu2LeqpCqfH2p8eCFuenUi9sScI+WXSh670tEez8FYwNEALCFo9
 ezvmaESrxRl8rS4hi4DoSt7qX1u9E8tPN5gYD039PmAQEqeevP+bfUSy6mZlH32lzxJJn50nbkJ
 N7i6RBX4YQiAdvTuUlEB1AmVF0wi7MV1k8u7RRpZKY8Mpv7uKci9CqIPSE6kJJ1IUnD68JkajBW
 iitfjVtuqYIhunIqr3im1dp2ikDg5JC7OcJbGohm9GQVp5FyCWqPDW8O2I8aQ+O9nvu1WW9Xl5/
 Q2wR2CfnXD0S4lw==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

Add nodes for PCIe 4 and 6 controllers and their PHYs for X1E80100 platform.

Co-developed-by: Sibi Sankar <quic_sibis@quicinc.com>
Signed-off-by: Sibi Sankar <quic_sibis@quicinc.com>
Co-developed-by: Rajendra Nayak <quic_rjendra@quicinc.com>
Signed-off-by: Rajendra Nayak <quic_rjendra@quicinc.com>
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e80100.dtsi | 214 ++++++++++++++++++++++++++++++++-
 1 file changed, 212 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
index ddf2e6e44e7e..b06577b66a86 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
@@ -732,9 +732,9 @@ gcc: clock-controller@100000 {
 			clocks = <&bi_tcxo_div2>,
 				 <&sleep_clk>,
 				 <0>,
+				 <&pcie4_phy>,
 				 <0>,
-				 <0>,
-				 <0>,
+				 <&pcie6a_phy>,
 				 <0>,
 				 <&usb_1_ss0_qmpphy QMP_USB43DP_USB3_PIPE_CLK>,
 				 <&usb_1_ss1_qmpphy QMP_USB43DP_USB3_PIPE_CLK>,
@@ -2722,6 +2722,216 @@ mmss_noc: interconnect@1780000 {
 			#interconnect-cells = <2>;
 		};
 
+		pcie6a: pci@1bf8000 {
+			device_type = "pci";
+			compatible = "qcom,pcie-x1e80100";
+			reg = <0 0x01bf8000 0 0x3000>,
+			      <0 0x70000000 0 0xf1d>,
+			      <0 0x70000f20 0 0xa8>,
+			      <0 0x70001000 0 0x1000>,
+			      <0 0x70100000 0 0x100000>;
+			reg-names = "parf",
+				    "dbi",
+				    "elbi",
+				    "atu",
+				    "config";
+			#address-cells = <3>;
+			#size-cells = <2>;
+			ranges = <0x01000000 0 0x00000000 0 0x70200000 0 0x100000>,
+				 <0x02000000 0 0x70300000 0 0x70300000 0 0x3d00000>;
+			bus-range = <0 0xff>;
+
+			dma-coherent;
+
+			linux,pci-domain = <7>;
+			num-lanes = <2>;
+
+			interrupts = <GIC_SPI 773 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "msi";
+
+			#interrupt-cells = <1>;
+			interrupt-map-mask = <0 0 0 0x7>;
+			interrupt-map = <0 0 0 1 &intc 0 0 0 843 IRQ_TYPE_LEVEL_HIGH>,
+					<0 0 0 2 &intc 0 0 0 844 IRQ_TYPE_LEVEL_HIGH>,
+					<0 0 0 3 &intc 0 0 0 845 IRQ_TYPE_LEVEL_HIGH>,
+					<0 0 0 4 &intc 0 0 0 772 IRQ_TYPE_LEVEL_HIGH>;
+
+			clocks = <&gcc GCC_PCIE_6A_AUX_CLK>,
+				 <&gcc GCC_PCIE_6A_CFG_AHB_CLK>,
+				 <&gcc GCC_PCIE_6A_MSTR_AXI_CLK>,
+				 <&gcc GCC_PCIE_6A_SLV_AXI_CLK>,
+				 <&gcc GCC_PCIE_6A_SLV_Q2A_AXI_CLK>,
+				 <&gcc GCC_CNOC_PCIE_SOUTH_SF_AXI_CLK>;
+			clock-names = "aux",
+				      "cfg",
+				      "bus_master",
+				      "bus_slave",
+				      "slave_q2a",
+				      "noc_aggr_south_sf";
+
+			assigned-clocks = <&gcc GCC_PCIE_6A_AUX_CLK>;
+			assigned-clock-rates = <19200000>;
+
+			interconnects = <&pcie_south_anoc MASTER_PCIE_6A QCOM_ICC_TAG_ALWAYS
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
+					<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
+					 &cnoc_main SLAVE_PCIE_6A QCOM_ICC_TAG_ALWAYS>;
+			interconnect-names = "pcie-mem",
+					     "cpu-pcie";
+
+			resets = <&gcc GCC_PCIE_6A_BCR>,
+				 <&gcc GCC_PCIE_6A_LINK_DOWN_BCR>;
+			reset-names = "pci",
+				      "link_down";
+
+			power-domains = <&gcc GCC_PCIE_6A_GDSC>;
+
+			phys = <&pcie6a_phy>;
+			phy-names = "pciephy";
+
+			status = "disabled";
+		};
+
+		pcie6a_phy: phy@1bfc000 {
+			compatible = "qcom,x1e80100-qmp-gen4x2-pcie-phy";
+			reg = <0 0x01bfc000 0 0x2000>;
+
+			clocks = <&gcc GCC_PCIE_6A_PHY_AUX_CLK>,
+				 <&gcc GCC_PCIE_6A_CFG_AHB_CLK>,
+				 <&rpmhcc RPMH_CXO_CLK>,
+				 <&gcc GCC_PCIE_6A_PHY_RCHNG_CLK>,
+				 <&gcc GCC_PCIE_6A_PIPE_CLK>;
+			clock-names = "aux",
+				      "cfg_ahb",
+				      "ref",
+				      "rchng",
+				      "pipe";
+
+			resets = <&gcc GCC_PCIE_6A_PHY_BCR>,
+				 <&gcc GCC_PCIE_6A_NOCSR_COM_PHY_BCR>;
+			reset-names = "phy",
+				      "phy_nocsr";
+
+			assigned-clocks = <&gcc GCC_PCIE_6A_PHY_RCHNG_CLK>;
+			assigned-clock-rates = <100000000>;
+
+			power-domains = <&gcc GCC_PCIE_6_PHY_GDSC>;
+
+			#clock-cells = <0>;
+			clock-output-names = "pcie6a_pipe_clk";
+
+			#phy-cells = <0>;
+
+			status = "disabled";
+		};
+
+		pcie4: pci@1c08000 {
+			device_type = "pci";
+			compatible = "qcom,pcie-x1e80100";
+			reg = <0 0x01c08000 0 0x3000>,
+			      <0 0x7c000000 0 0xf1d>,
+			      <0 0x7c000f40 0 0xa8>,
+			      <0 0x7c001000 0 0x1000>,
+			      <0 0x7c100000 0 0x100000>,
+			      <0 0x01c0b000 0 0x1000>;
+			reg-names = "parf",
+			            "dbi",
+				    "elbi",
+				    "atu",
+				    "config",
+				    "mhi";
+			#address-cells = <3>;
+			#size-cells = <2>;
+			ranges = <0x01000000 0 0x00000000 0 0x7c200000 0 0x100000>,
+				 <0x02000000 0 0x7c300000 0 0x7c300000 0 0x3d00000>;
+			bus-range = <0x00 0xff>;
+
+			dma-coherent;
+
+			linux,pci-domain = <5>;
+			num-lanes = <2>;
+
+			interrupts = <GIC_SPI 141 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 142 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 143 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 144 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "msi0",
+					  "msi1",
+					  "msi2",
+					  "msi3";
+
+			#interrupt-cells = <1>;
+			interrupt-map-mask = <0 0 0 0x7>;
+			interrupt-map = <0 0 0 1 &intc 0 0 0 149 IRQ_TYPE_LEVEL_HIGH>,
+					<0 0 0 2 &intc 0 0 0 150 IRQ_TYPE_LEVEL_HIGH>,
+					<0 0 0 3 &intc 0 0 0 151 IRQ_TYPE_LEVEL_HIGH>,
+					<0 0 0 4 &intc 0 0 0 152 IRQ_TYPE_LEVEL_HIGH>;
+
+			clocks = <&gcc GCC_PCIE_4_AUX_CLK>,
+				 <&gcc GCC_PCIE_4_CFG_AHB_CLK>,
+				 <&gcc GCC_PCIE_4_MSTR_AXI_CLK>,
+				 <&gcc GCC_PCIE_4_SLV_AXI_CLK>,
+				 <&gcc GCC_PCIE_4_SLV_Q2A_AXI_CLK>,
+				 <&gcc GCC_CNOC_PCIE_NORTH_SF_AXI_CLK>;
+			clock-names = "aux",
+				      "cfg",
+				      "bus_master",
+				      "bus_slave",
+				      "slave_q2a",
+				      "noc_aggr_south_sf";
+
+			assigned-clocks = <&gcc GCC_PCIE_4_AUX_CLK>;
+			assigned-clock-rates = <19200000>;
+
+			interconnects = <&pcie_south_anoc MASTER_PCIE_4 QCOM_ICC_TAG_ALWAYS
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
+					<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
+					 &cnoc_main SLAVE_PCIE_4 QCOM_ICC_TAG_ALWAYS>;
+			interconnect-names = "pcie-mem",
+					     "cpu-pcie";
+
+			resets = <&gcc GCC_PCIE_4_BCR>;
+			reset-names = "pci";
+
+			power-domains = <&gcc GCC_PCIE_4_GDSC>;
+
+			phys = <&pcie4_phy>;
+			phy-names = "pciephy";
+
+			status = "disabled";
+		};
+
+		pcie4_phy: phy@1c0e000 {
+			compatible = "qcom,x1e80100-qmp-gen3x2-pcie-phy";
+			reg = <0 0x01c0e000 0 0x2000>;
+
+			clocks = <&gcc GCC_PCIE_4_AUX_CLK>,
+				 <&gcc GCC_PCIE_4_CFG_AHB_CLK>,
+				 <&rpmhcc RPMH_CXO_CLK>,
+				 <&gcc GCC_PCIE_4_PHY_RCHNG_CLK>,
+				 <&gcc GCC_PCIE_4_PIPE_CLK>;
+			clock-names = "aux",
+				      "cfg_ahb",
+				      "ref",
+				      "rchng",
+				      "pipe";
+
+			resets = <&gcc GCC_PCIE_4_PHY_BCR>;
+			reset-names = "phy";
+
+			assigned-clocks = <&gcc GCC_PCIE_4_PHY_RCHNG_CLK>;
+			assigned-clock-rates = <100000000>;
+
+			power-domains = <&gcc GCC_PCIE_4_PHY_GDSC>;
+
+			#clock-cells = <0>;
+			clock-output-names = "pcie4_pipe_clk";
+
+			#phy-cells = <0>;
+
+			status = "disabled";
+		};
+
 		tcsr_mutex: hwlock@1f40000 {
 			compatible = "qcom,tcsr-mutex";
 			reg = <0 0x01f40000 0 0x20000>;

-- 
2.34.1


