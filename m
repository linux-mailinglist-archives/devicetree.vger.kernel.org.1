Return-Path: <devicetree+bounces-192988-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E7F2AF8BCE
	for <lists+devicetree@lfdr.de>; Fri,  4 Jul 2025 10:34:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 078F0B439EA
	for <lists+devicetree@lfdr.de>; Fri,  4 Jul 2025 08:25:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ACA822FD889;
	Fri,  4 Jul 2025 08:15:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hymfw/nb"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 335FE2FD86B
	for <devicetree@vger.kernel.org>; Fri,  4 Jul 2025 08:15:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751616957; cv=none; b=KsX7XuVHwz0cTF0U9OwbFaN9Kyn5JkbeCV/IteyOMjGBAGH1Z9xmuAYY3ynzAGGBIDgbpdDL0NfOt2BgDFKTPnlZrz1lEx1LkafhwgAq8X9io8tzI41ySGfKmNQAOiUa1jHV8WpEDzbSXUpYThBYnN8DFIURBFIaHpTz/uYv8AA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751616957; c=relaxed/simple;
	bh=AQsk5HGL1cTLvqzegLJTtVvKhFQvhlYQZzqT4Jp3BOM=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Kdngii8BdZemoP55kFtc3VGakWMbWImBtymetY8uaYduIr2AYTpy8Q4IZITTkNHHYDyKXtaJ3NXkjpQJ017OkXjsZsB8h0nLEbeHfb+rf4jh/pM1ZBGsuZwR19e3lJclPhjYaTXR6Xx17Nis1O4Kllres9Mn2KJu72FTP5VL61g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hymfw/nb; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5644MNpN001575
	for <devicetree@vger.kernel.org>; Fri, 4 Jul 2025 08:15:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=LKUn/tSBYDo
	cSWcjJpS1PF3pbgMhX9NtkoC9jsqfYt8=; b=hymfw/nbhDr5fCJ2SAurhNXyOyV
	+Dg3yibx2Flh+e6rvjto/iGuimafFBEwE0NBOpmo6tizxyofxniBW48zhnPtiRBy
	AaIanBfdFFTvVJKCqgNXZZx+TLibNoSJODYBiC7RhaZpMPwk5SO2BBs+Q2BB6FP/
	HJVzxVR1EPiD2ESHCBc5n8EboVN4HeEDhMfPcf+10dw8nZ6RKO+z9x1mJ+VTydNm
	8lX+IEH57Zz280r09AUnySJdrGVS6dXwCUB6+FnFE9V7PDMvUSknEI5M4gUe+6Mx
	r1VCi2DwWDLwEg11s/nFviqexx7lnM/rJn2BR59O1fYjJQDx44UuthubjSg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47p7ut0m8g-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 04 Jul 2025 08:15:55 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7d40f335529so279762585a.0
        for <devicetree@vger.kernel.org>; Fri, 04 Jul 2025 01:15:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751616954; x=1752221754;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LKUn/tSBYDocSWcjJpS1PF3pbgMhX9NtkoC9jsqfYt8=;
        b=HRmYSEqWpgSS+eoD6iiQnUj1jyiwrC4GPYQN6kuzeoC0iaXzYumk9W2BAYndx0bT/l
         xzuZlujWB5e2tClykFfTXg4BIfkG4nQ3b9uCXg5q+IHd1d2Syqi1DIdylp/4Jc2vwhgN
         726rDBnPW1zpuYCRKbZQ9j9ekbGBuWfyLILJ4aRuqGym6kBPjjhkEphDRkXq5LbqFZ/b
         doL84qg1ZO6S7D6rsBSvZpGR+xhy5UXxaG3ywL6aUjVoESPM8+ohOtNHrtdo8TpAFBRm
         mOh5rXhJ7LlLy359Ytxd6+xX88nLYfyr1k/upI8pGnraNJSO55eCsBlwfoOdWbvlB+qJ
         MTEw==
X-Forwarded-Encrypted: i=1; AJvYcCWXt/QesitPSagGr9uAY/7rwoxl9by03BiDJnyE9NkaUGqEBlPQrZTk4OF+rF6+yomfPxCVNXvkriOc@vger.kernel.org
X-Gm-Message-State: AOJu0YyeDrRvO0ZGg/bcleTl7ZJ7gVqNupsn0AAOrLjtRgaRm0BnI4Ri
	k3x/z6YgKz6nTKgnoUeMRlYOTXq6hCm1BiIIN0VuFE5wwDie8XiADIcGgEVC3I3M+LMVHoy4uip
	2E/xNAR8pfkoLo0yRikBmlsu5UV5sHNiVSbCq+HqPRPPeoURmtyS/49//6eb0Zy+s
X-Gm-Gg: ASbGncuMiRulAH2K1mDf+S5RRZsHrYil9UK4JRFTVGuMm7+BjyJNlFXFkaLSbTorNyM
	Y1te/Jh+9TA0tk95wCP0kMhQZFVONmGXkPPOqLoOwtWJVOxNvJLK7Y7XNV28sK2OLanRRkpTOx1
	a0f9miYHVDjajyI72GmFjQFh5Z16g8oqbDliot5CgVw8fOq6cOvWmOezm0zGAhjKy/mseGxU3cC
	e8f6tCGA8fcT5AzVw1i5Dnw7ueMfQd2t8ob9smWvwCReKxNsS4MlZ0QYuSK5rb1k3mXa39Smipk
	z7CYuJAZpfIbntkMFrhLoxxfPk+u5gnuHlTBuUQ0ZjmRvtDYwb0560iBBw==
X-Received: by 2002:a05:620a:40d3:b0:7d3:acfa:de46 with SMTP id af79cd13be357-7d5dc6d1439mr312052685a.21.1751616953832;
        Fri, 04 Jul 2025 01:15:53 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGq6nBL9gyKL/TQEFqXUg7y5EuP0gJZZaLq9JfE1oBIpr7tAGHMyavKDWb0x0KC36yEQYDYKg==
X-Received: by 2002:a05:620a:40d3:b0:7d3:acfa:de46 with SMTP id af79cd13be357-7d5dc6d1439mr312050285a.21.1751616953377;
        Fri, 04 Jul 2025 01:15:53 -0700 (PDT)
Received: from QCOM-eG0v1AUPpu.qualcomm.com ([2a01:e0a:82c:5f0:e0ed:c3b0:c674:7c4b])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-454a9989fcesm47991835e9.16.2025.07.04.01.15.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Jul 2025 01:15:52 -0700 (PDT)
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
To: bryan.odonoghue@linaro.org, rfoss@kernel.org, konradybcio@kernel.org,
        krzk+dt@kernel.org, robh@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, dmitry.baryshkov@oss.qualcomm.com,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: [PATCH v5 6/6] arm64: dts: qcom: qcm2290: Add CAMSS node
Date: Fri,  4 Jul 2025 10:15:37 +0200
Message-Id: <20250704081537.1716613-7-loic.poulain@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250704081537.1716613-1-loic.poulain@oss.qualcomm.com>
References: <20250704081537.1716613-1-loic.poulain@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzA0MDA2NCBTYWx0ZWRfXzBMQvYZJFy2s
 k7+XHHzRprhOuc5FsGPq8JeKjNEAO2AnjvAEhFHrWJJOKLY3V7CbMArlPmy5KJAv2xWLnDK/gME
 8n8RsUZ9OQc91H7AtokKyuZ/FAmKWuRWCHI+I0/e/UH8R/50gqTxIZ6g4WZkabdo62cyphrk6iW
 UGfl3A/9fAKjIZmAFIHFEooKo1OY1Q1AvFeDyawCI1bNGFMaMyebHU4UPXpMCMYcWno7wpkEevc
 NWtFfhH9UEBtbDcwT+ArGHBCXZVkLxsDUJvXntTqqbUamZu3HRxmzS3IniF4aM4zs3vDy/DTR3b
 b02EADBXaqC7Q+m3RXySUOEdL3IkxDhCJb3aZ9DqTDaae5v5G5kY7EqnzAwo/AH7bHTNQOrC5+h
 HC9zvxBf+SqY72Fxn5p7tOZTc0KXvZ4kR28M3y3pxvRzeFP5x2irs+4PyEq1ryozQkByF4m5
X-Proofpoint-GUID: rtdLPhAbhGBCixH9DncyFbZ6MMqUQpqu
X-Authority-Analysis: v=2.4 cv=Ncfm13D4 c=1 sm=1 tr=0 ts=68678dbb cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=Wb1JkmetP80A:10
 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=0Y5dpRjIoD8_tdedxaUA:9
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: rtdLPhAbhGBCixH9DncyFbZ6MMqUQpqu
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-04_03,2025-07-02_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 clxscore=1015 impostorscore=0 lowpriorityscore=0
 suspectscore=0 priorityscore=1501 mlxlogscore=999 spamscore=0 malwarescore=0
 adultscore=0 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507040064

Add node for the QCM2290 camera subsystem.

Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 arch/arm64/boot/dts/qcom/qcm2290.dtsi | 103 ++++++++++++++++++++++++++
 1 file changed, 103 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcm2290.dtsi b/arch/arm64/boot/dts/qcom/qcm2290.dtsi
index f49ac1c1f8a3..fa24b77a31a7 100644
--- a/arch/arm64/boot/dts/qcom/qcm2290.dtsi
+++ b/arch/arm64/boot/dts/qcom/qcm2290.dtsi
@@ -1628,6 +1628,109 @@ adreno_smmu: iommu@59a0000 {
 			#iommu-cells = <2>;
 		};
 
+		camss: camss@5c6e000 {
+			compatible = "qcom,qcm2290-camss";
+
+			reg = <0x0 0x5c6e000 0x0 0x1000>,
+			      <0x0 0x5c75000 0x0 0x1000>,
+			      <0x0 0x5c52000 0x0 0x1000>,
+			      <0x0 0x5c53000 0x0 0x1000>,
+			      <0x0 0x5c66000 0x0 0x400>,
+			      <0x0 0x5c68000 0x0 0x400>,
+			      <0x0 0x5c11000 0x0 0x1000>,
+			      <0x0 0x5c6f000 0x0 0x4000>,
+			      <0x0 0x5c76000 0x0 0x4000>;
+			reg-names = "csid0",
+				    "csid1",
+				    "csiphy0",
+				    "csiphy1",
+				    "csitpg0",
+				    "csitpg1",
+				    "top",
+				    "vfe0",
+				    "vfe1";
+
+			clocks = <&gcc GCC_CAMERA_AHB_CLK>,
+				 <&gcc GCC_CAMSS_AXI_CLK>,
+				 <&gcc GCC_CAMSS_NRT_AXI_CLK>,
+				 <&gcc GCC_CAMSS_RT_AXI_CLK>,
+				 <&gcc GCC_CAMSS_TFE_0_CSID_CLK>,
+				 <&gcc GCC_CAMSS_TFE_1_CSID_CLK>,
+				 <&gcc GCC_CAMSS_CPHY_0_CLK>,
+				 <&gcc GCC_CAMSS_CSI0PHYTIMER_CLK>,
+				 <&gcc GCC_CAMSS_CPHY_1_CLK>,
+				 <&gcc GCC_CAMSS_CSI1PHYTIMER_CLK>,
+				 <&gcc GCC_CAMSS_TOP_AHB_CLK>,
+				 <&gcc GCC_CAMSS_TFE_0_CLK>,
+				 <&gcc GCC_CAMSS_TFE_0_CPHY_RX_CLK>,
+				 <&gcc GCC_CAMSS_TFE_1_CLK>,
+				 <&gcc GCC_CAMSS_TFE_1_CPHY_RX_CLK> ;
+			clock-names = "ahb",
+				      "axi",
+				      "camnoc_nrt_axi",
+				      "camnoc_rt_axi",
+				      "csi0",
+				      "csi1",
+				      "csiphy0",
+				      "csiphy0_timer",
+				      "csiphy1",
+				      "csiphy1_timer",
+				      "top_ahb",
+				      "vfe0",
+				      "vfe0_cphy_rx",
+				      "vfe1",
+				      "vfe1_cphy_rx";
+
+			interrupts = <GIC_SPI 210 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 212 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 72 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 73 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 309 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 310 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 211 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 213 IRQ_TYPE_EDGE_RISING>;
+			interrupt-names = "csid0",
+					  "csid1",
+					  "csiphy0",
+					  "csiphy1",
+					  "csitpg0",
+					  "csitpg1",
+					  "vfe0",
+					  "vfe1";
+
+			interconnects = <&bimc MASTER_APPSS_PROC RPM_ACTIVE_TAG
+					 &config_noc SLAVE_CAMERA_CFG RPM_ACTIVE_TAG>,
+					<&mmrt_virt MASTER_CAMNOC_HF RPM_ALWAYS_TAG
+					 &bimc SLAVE_EBI1 RPM_ALWAYS_TAG>,
+					<&mmnrt_virt MASTER_CAMNOC_SF RPM_ALWAYS_TAG
+					 &bimc SLAVE_EBI1 RPM_ALWAYS_TAG>;
+			interconnect-names = "ahb",
+					     "hf_mnoc",
+					     "sf_mnoc";
+
+			iommus = <&apps_smmu 0x400 0x0>,
+				 <&apps_smmu 0x800 0x0>,
+				 <&apps_smmu 0x820 0x0>,
+				 <&apps_smmu 0x840 0x0>;
+
+			power-domains = <&gcc GCC_CAMSS_TOP_GDSC>;
+
+			status = "disabled";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+				};
+
+				port@1 {
+					reg = <1>;
+				};
+			};
+		};
+
 		mdss: display-subsystem@5e00000 {
 			compatible = "qcom,qcm2290-mdss";
 			reg = <0x0 0x05e00000 0x0 0x1000>;
-- 
2.34.1


