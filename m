Return-Path: <devicetree+bounces-202925-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 19468B1F3FA
	for <lists+devicetree@lfdr.de>; Sat,  9 Aug 2025 12:01:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 866501888823
	for <lists+devicetree@lfdr.de>; Sat,  9 Aug 2025 10:01:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D77025D535;
	Sat,  9 Aug 2025 10:00:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LbIg18zH"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D103D26E707
	for <devicetree@vger.kernel.org>; Sat,  9 Aug 2025 10:00:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754733610; cv=none; b=X4heKZWI2QfDl+KNWqrrVyVHWtnLTLTuVi6Vx7YsfVH6UNPz92NnwOm6wPjZf/PZCFzb444jQFqG7MobG/Kh3AASsyhYXsF0l1lOhqzA6orXfeyika3CozlWItJobc5X/WSr71DPL6jpwa5pbR5/TaYc9QIHd8A4ekKnl4wU4WI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754733610; c=relaxed/simple;
	bh=GpGvaCXgyV/HzzH3H2kGZzDRJpcu2NiuY/Il8jkwfI8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=NYHL1sEQzjvgVi5IN+MIVvdps/jz/m+23eG+9L1g7xmiOFSu7e9aSy+qQUlTBJQvAdi1fKEhS5ESq32IC3I7EUMRRJSfVLJcYg2rdFRohpaz40Xpt+Y8Qc0+SQRQzYqOcCuUMTjz+SaDeiue1PO0pU1NtcMHgUD+n3RQerE2IXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LbIg18zH; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5798sUsV023493
	for <devicetree@vger.kernel.org>; Sat, 9 Aug 2025 10:00:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	3DzTfzNGU9TUNj8yG+LjHihLJBg2bD1OBKZ3ujvNs7U=; b=LbIg18zHA0SJf6rN
	edgjpjjhYs1xnlmKCjs5j1ZiTcpQQ4cpPJFlMGqn2XTZF0oKecmwkE3lZ8pJPzEA
	TJEfbkwwh392XpMnnu7U7sNWRtFeHp2IBk4X4KjMMJ78iAmPwjI07TUtnfi+iWFF
	HIjRtB/a7R0UYXxF2+GFm/by5JZ6e92wyaLqrNFqwjiX5Z8D0PDaEPxFVRlrNUJJ
	tG9c0964js3iPbuf3g57NlN64WVAm9EB+YiQ487bZlr/JzStbub2Zjf80ZKg9eby
	IXI5gJ38EcjDZLSEYnMZs/CkH9/NKlg/RGgv419jaT0Jgj+1B/RXLcNqeuN1yN9K
	CaWsMw==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48dwb70h8q-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 09 Aug 2025 10:00:07 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-242abac2cb4so34964345ad.0
        for <devicetree@vger.kernel.org>; Sat, 09 Aug 2025 03:00:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754733605; x=1755338405;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3DzTfzNGU9TUNj8yG+LjHihLJBg2bD1OBKZ3ujvNs7U=;
        b=Oa+ouhvI1uNVBPS5pNLhxCIQ5AqmakLU3aSf5/WuX9lAq/eft9Bntux15/8d2o4DQw
         KRTh+6rWokb8DCFMdimf0YgnspVoS+v+MZFZvqHdLUcJs0/VufFNOKooRQM7XdrIHKWE
         qKQYmLT4XgW/6ruikdxk9qt4y5VqGDTbbrf7c6YCWCS3bmB84d6JMW51c1mxIGUYU0JT
         pofKW0DndfdA/4D1e+9aGnaZkM8yzphq8Y4dejy34YLfcsIczD09UEs1WttTJTtSsF+2
         v0zsECTw9ABiZrrEm3JjvRm8hq5CCohsYvANL7j7IFDyxGU2IxuT0bkrwtHluOk1w1f2
         GxGw==
X-Forwarded-Encrypted: i=1; AJvYcCX8GWvP0BBBh3hLO/0skTYHlsqCv0gY0lPhHJRcdJFB8ofiZYdUooJ9jo7iU9hIJli54hyi8AhwuEKb@vger.kernel.org
X-Gm-Message-State: AOJu0YyYLRizANhG5XkWa1qNcSlWpGpbwv+fQArvmCtTcDNID+ihjUCu
	9MuO/9ZT5VGKHKnEb3E2+v86TLcTtwLAJE0RQeZ6V540mQDMX5uppBorHUBw7FjfaLnCQiedXlI
	PYeuUTCj5MOlBWziJQ7Is/Il6p3vp1z1bvRSfWKflpRm4zy3qU4d/52KuEaDxARu9
X-Gm-Gg: ASbGncsWU2CPISlK53ud/tV0l+iJolEpZN4Nche93GXKr2IaGlMIIVanl9E9d67hHjl
	Kc4ems/q6SqbpdnImpAdH8XNLPtBUa8qTfRRDwCf27FLBcTsKFkkCKAE4nglnz86EXaBZrmm7q4
	xj2cEqtW985/KDQK46TVwhyxUT53+ib4SfFbYkmU5lHrCBMPMQasyJlpDilyslQU4E1O27/k364
	uAITWlE/Qx/SEjDlNEflFLjKvdV+umxtjIaTU06NtIyvJi6fUuQEyIbwNIGWQYRvqtScWV2a+EO
	CyuDEAwF5rJ6H3GY/ibFz0U7llT7HbW9mKn8ZjCEKRFpqQ6VYDt+S80muq7wPzsGqspMDZnOJqw
	=
X-Received: by 2002:a17:902:ccd2:b0:242:d4a4:bba1 with SMTP id d9443c01a7336-242d4a4bcc3mr20365185ad.30.1754733604625;
        Sat, 09 Aug 2025 03:00:04 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHZhff6fQ6+7IqKvsqZxiXZ1luTL0i0xHU9ilWAXrb/w8hSkrSgYMxl2NvJxbHAFEJQ1Jj/3g==
X-Received: by 2002:a17:902:ccd2:b0:242:d4a4:bba1 with SMTP id d9443c01a7336-242d4a4bcc3mr20364905ad.30.1754733604138;
        Sat, 09 Aug 2025 03:00:04 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-241e899b783sm225962845ad.133.2025.08.09.02.59.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 09 Aug 2025 03:00:03 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Sat, 09 Aug 2025 15:29:19 +0530
Subject: [PATCH 4/4] arm64: dts: qcom: sm8750: Add PCIe PHY and controller
 node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250809-pakala-v1-4-abf1c416dbaa@oss.qualcomm.com>
References: <20250809-pakala-v1-0-abf1c416dbaa@oss.qualcomm.com>
In-Reply-To: <20250809-pakala-v1-0-abf1c416dbaa@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org, quic_vbadigan@quicinc.com,
        quic_mrana@quicinc.com,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1754733575; l=5708;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=GpGvaCXgyV/HzzH3H2kGZzDRJpcu2NiuY/Il8jkwfI8=;
 b=4GGlUFFSmItIMt6I2GbZA5lOJbDl3EdfWvW8ROo42hcOiNwyEv0NwYwVhYrn7/9Uo7SQs/Nxl
 Jc+MkOUSjCdB4cfsTLw/8zCAYL+X/KfagxoH/4n4/XUabnkn0KW2Onn
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Authority-Analysis: v=2.4 cv=K6oiHzWI c=1 sm=1 tr=0 ts=68971c27 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=hNZP5i6h11z2s_4BSHIA:9
 a=nnkZQxyVfnTQnip0:21 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-GUID: iLQPqtc1rQbtCX-fk0p8RQ-a0EISB1HV
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA5MDAxMyBTYWx0ZWRfX6RuAc/gUf3YB
 rpXFR7LNBgWdPj/tNc+qsYqEczNF1CJb6ndlICo/wEKjtnPcp2zJvnd35RfGc47gDPCQnC9wGLB
 LgzG0z0BiXR0/ngmCD48q2g8W6jhJhTPUhwE0+xSb9VClkEaAyoRXWIbu8McQ2F+Z5Hdr09gPd0
 ONpxOfhzUoaTvN1D0+0bxkD8C6M3/FH7rl+2DK1+zKfIX+TXpcASZ/jqlaMm8xCIe+wO7buJPXj
 pNA3kUgcixr8Jn4gEzVp0E7S3jgBWiUx3EYKAVxGXRDfY0TKf/XXoBvr/OQ3heEqUcB4GXu2btI
 z6M/i/OV2mn2IVFYB5+pfQcSF0EF3uSVcsqCsSOTGF5TZ0DEtEwzEwNhx5CUposFwOnebVIVeUd
 iaZiEJ9Y
X-Proofpoint-ORIG-GUID: iLQPqtc1rQbtCX-fk0p8RQ-a0EISB1HV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-09_03,2025-08-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 spamscore=0 phishscore=0 adultscore=0
 bulkscore=0 clxscore=1015 malwarescore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508090013

Add PCIe controller and PHY nodes which supports data rates of 8GT/s
and x2 lane.

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sm8750.dtsi | 174 ++++++++++++++++++++++++++++++++++-
 1 file changed, 173 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8750.dtsi b/arch/arm64/boot/dts/qcom/sm8750.dtsi
index 4643705021c6ca095a16d8d7cc3adac920b21e82..866c1eb8729953f6cb27c7cf995a1a8d55140e40 100644
--- a/arch/arm64/boot/dts/qcom/sm8750.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8750.dtsi
@@ -631,7 +631,7 @@ gcc: clock-controller@100000 {
 			clocks = <&bi_tcxo_div2>,
 				 <0>,
 				 <&sleep_clk>,
-				 <0>,
+				 <&pcie0_phy>,
 				 <0>,
 				 <0>,
 				 <0>,
@@ -3304,6 +3304,178 @@ gic_its: msi-controller@16040000 {
 			};
 		};
 
+		pcie0: pcie@1c00000 {
+			device_type = "pci";
+			compatible = "qcom,pcie-sm8750", "qcom,pcie-sm8550";
+			reg = <0 0x01c00000 0 0x3000>,
+			      <0 0x40000000 0 0xf1d>,
+			      <0 0x40000f20 0 0xa8>,
+			      <0 0x40001000 0 0x1000>,
+			      <0 0x40100000 0 0x100000>;
+			reg-names = "parf", "dbi", "elbi", "atu", "config";
+
+			interrupts = <GIC_SPI 141 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 142 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 143 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 144 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 145 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 146 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 147 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 148 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 140 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "msi0",
+					  "msi1",
+					  "msi2",
+					  "msi3",
+					  "msi4",
+					  "msi5",
+					  "msi6",
+					  "msi7",
+					  "global";
+
+			clocks = <&gcc GCC_PCIE_0_AUX_CLK>,
+				 <&gcc GCC_PCIE_0_CFG_AHB_CLK>,
+				 <&gcc GCC_PCIE_0_MSTR_AXI_CLK>,
+				 <&gcc GCC_PCIE_0_SLV_AXI_CLK>,
+				 <&gcc GCC_PCIE_0_SLV_Q2A_AXI_CLK>,
+				 <&gcc GCC_DDRSS_PCIE_SF_QTB_CLK>,
+				 <&gcc GCC_AGGRE_NOC_PCIE_AXI_CLK>,
+				 <&gcc GCC_CNOC_PCIE_SF_AXI_CLK>;
+			clock-names = "aux",
+				      "cfg",
+				      "bus_master",
+				      "bus_slave",
+				      "slave_q2a",
+				      "ddrss_sf_tbu",
+				      "noc_aggr",
+				      "cnoc_sf_axi";
+
+			resets = <&gcc GCC_PCIE_0_BCR>;
+			reset-names = "pci";
+
+			interconnects = <&pcie_noc MASTER_PCIE_0 QCOM_ICC_TAG_ALWAYS
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
+					<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
+					 &cnoc_main SLAVE_PCIE_0 QCOM_ICC_TAG_ALWAYS>;
+			interconnect-names = "pcie-mem",
+					     "cpu-pcie";
+
+			power-domains = <&gcc GCC_PCIE_0_GDSC>;
+
+			iommu-map = <0     &apps_smmu 0x1400 0x1>,
+				    <0x100 &apps_smmu 0x1401 0x1>;
+
+			interrupt-map = <0 0 0 1 &intc 0 0 0 149 IRQ_TYPE_LEVEL_HIGH>,
+					<0 0 0 2 &intc 0 0 0 150 IRQ_TYPE_LEVEL_HIGH>,
+					<0 0 0 3 &intc 0 0 0 151 IRQ_TYPE_LEVEL_HIGH>,
+					<0 0 0 4 &intc 0 0 0 152 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-map-mask = <0 0 0 0x7>;
+			#interrupt-cells = <1>;
+
+			msi-map = <0x0 &gic_its 0x1400 0x1>,
+				  <0x100 &gic_its 0x1401 0x1>;
+			msi-map-mask = <0xff00>;
+
+			linux,pci-domain = <0>;
+			num-lanes = <2>;
+			bus-range = <0 0xff>;
+
+			phys = <&pcie0_phy>;
+			phy-names = "pciephy";
+
+			#address-cells = <3>;
+			#size-cells = <2>;
+			ranges = <0x01000000 0 0x00000000 0 0x40200000 0 0x100000>,
+				 <0x02000000 0 0x60300000 0 0x40300000 0 0x3d00000>;
+
+			dma-coherent;
+
+			operating-points-v2 = <&pcie0_opp_table>;
+
+			status = "disabled";
+
+			pcie0_opp_table: opp-table {
+				compatible = "operating-points-v2";
+
+				/* GEN 1 x1 */
+				opp-2500000 {
+					opp-hz = /bits/ 64 <2500000>;
+					required-opps = <&rpmhpd_opp_low_svs>;
+					opp-peak-kBps = <250000 1>;
+				};
+
+				/* GEN 1 x2 and GEN 2 x1 */
+				opp-5000000 {
+					opp-hz = /bits/ 64 <5000000>;
+					required-opps = <&rpmhpd_opp_low_svs>;
+					opp-peak-kBps = <500000 1>;
+				};
+
+				/* GEN 2 x2 */
+				opp-10000000 {
+					opp-hz = /bits/ 64 <10000000>;
+					required-opps = <&rpmhpd_opp_low_svs>;
+					opp-peak-kBps = <1000000 1>;
+				};
+
+				/* GEN 3 x1 */
+				opp-8000000 {
+					opp-hz = /bits/ 64 <8000000>;
+					required-opps = <&rpmhpd_opp_nom>;
+					opp-peak-kBps = <984500 1>;
+				};
+
+				/* GEN 3 x2 */
+				opp-16000000 {
+					opp-hz = /bits/ 64 <16000000>;
+					required-opps = <&rpmhpd_opp_nom>;
+					opp-peak-kBps = <1969000 1>;
+				};
+
+			};
+
+			pcieport0: pcie@0 {
+				device_type = "pci";
+				reg = <0x0 0x0 0x0 0x0 0x0>;
+				bus-range = <0x01 0xff>;
+
+				#address-cells = <3>;
+				#size-cells = <2>;
+				ranges;
+			};
+		};
+
+		pcie0_phy: phy@1c06000 {
+			compatible = "qcom,sm8750-qmp-gen3x2-pcie-phy";
+			reg = <0 0x01c06000 0 0x2000>;
+
+			clocks = <&gcc GCC_PCIE_0_AUX_CLK>,
+				 <&gcc GCC_PCIE_0_CFG_AHB_CLK>,
+				 <&tcsrcc TCSR_PCIE_0_CLKREF_EN>,
+				 <&gcc GCC_PCIE_0_PHY_RCHNG_CLK>,
+				 <&gcc GCC_PCIE_0_PIPE_CLK>;
+			clock-names = "aux",
+				      "cfg_ahb",
+				      "ref",
+				      "rchng",
+				      "pipe";
+
+			assigned-clocks = <&gcc GCC_PCIE_0_PHY_RCHNG_CLK>;
+			assigned-clock-rates = <100000000>;
+
+			resets = <&gcc GCC_PCIE_0_PHY_BCR>;
+			reset-names = "phy";
+
+			power-domains = <&gcc GCC_PCIE_0_PHY_GDSC>;
+
+			#clock-cells = <0>;
+			clock-output-names = "pcie0_pipe_clk";
+
+			#phy-cells = <0>;
+
+			status = "disabled";
+		};
+
 		ufs_mem_phy: phy@1d80000 {
 			compatible = "qcom,sm8750-qmp-ufs-phy";
 			reg = <0x0 0x01d80000 0x0 0x2000>;

-- 
2.34.1


