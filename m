Return-Path: <devicetree+bounces-162878-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 26027A7A0EB
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 12:23:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F27F1174BC5
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 10:23:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EEFB9242928;
	Thu,  3 Apr 2025 10:23:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="i2FvaMvO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 553FC1F12FD
	for <devicetree@vger.kernel.org>; Thu,  3 Apr 2025 10:23:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743675795; cv=none; b=s537S4EKr4UJdc9cLaBAfyVGgPFyHTGGsBBuUKCwCryoz4PXBbVjCagC8Z0gefJ52AU9/MwAZZ8e5CfAZRE3wxWkjke2+27pf5vncd3+S6yaAjMnLymYasuwW9VhNNrYIgY4obCJpAb09TE/129ytbi1O9Ns50+8FLj2UrmH0yY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743675795; c=relaxed/simple;
	bh=OgmuY+9gK7Zxye0FCVivtyxTg2eXe945MXokov3t1NA=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=iWsfNe84PMsS7bGHpLCgv7OVy1HmEpr6SacCp811LnTXoh8nRsKzKIfXSpZTrc+l6pWTx9/sETgJvzYEm/Byseq/xu2ec2Llz9LMbPSARhHpBcmVEnEoYyV3We1Z8gxBdEpX/+3HQTJ6Om4vwdihDpV4C8MNy5ySyLMZfd9YFYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=i2FvaMvO; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5339s6u7013812
	for <devicetree@vger.kernel.org>; Thu, 3 Apr 2025 10:23:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=V0fCPlE4421
	yS+N65g1yDItni+UxnP4zNHvJ+576O2Y=; b=i2FvaMvO24s+k2LBGnpAzLFdJDd
	E7zeBL3LBjQ3NFe1pFKKW8W7gix0JjkR0evKB5CLHQF53jCU295hbnXaMTBtpcWf
	56iR+/qUQz86GHQxngY5pVp8B3zJAMyC5/SBP4ezbHjPsF8/xUISqCsp1Btey47f
	qaRff3+46OQLgL6RBUg//or08X/0y6gxDcz5tjIN+v4ECPmhBz6w2GDPxpMf/rgx
	7zRPR1Ba4okYcOvjNQxSHj+njsXELSH9tiUzhz+YPI9CQzLjlSaSFT78EiKSpbvD
	A6ITRfTMS6bpcg1jD/RvLcYBGoJi2beFli8oP+5GW0VzRQCxmx2hNI+Qnhg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45spnp0by3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 03 Apr 2025 10:23:12 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c3c8f8ab79so99300185a.2
        for <devicetree@vger.kernel.org>; Thu, 03 Apr 2025 03:23:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743675792; x=1744280592;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=V0fCPlE4421yS+N65g1yDItni+UxnP4zNHvJ+576O2Y=;
        b=G+CkEVtDKHaCMscZhOAiECJVKZATyOUiaQJX+4HoF3Yh8WKNaXLwWwlYPcJeK7BuN4
         esYyhVF2e3tiLycHBqzugxKTr0jXYpfJQUSuALN6z7/Yk8E51j7N3SIHm/pyV3pBfnlF
         td6hfJM9SxQ0k9z1cbr6rg+khAujmN/rb7xErGYHfu9x5NpEVGYbNPhrxAevd8cnxoaJ
         zQvvjK96QIhwnc+j9LDiBfk45uHfjEcefG1RSUkYx74uApPjVBCXcs8yRyO4LBU3NtPr
         70DzaGTLjxr5AmQvA6YNUO8P76c2UpGC2Y1WQBDEC5J+RZFDMyM7wpzGETyNBxjbS9y8
         8AAA==
X-Forwarded-Encrypted: i=1; AJvYcCVKb6M3kcoKhaVD3bdOx0oHdyLXIqZjq6G7LcZpxAdhTL9NI+iHecVJdI9YRqm4v6YQGeFZX/HJUiKw@vger.kernel.org
X-Gm-Message-State: AOJu0YxK8jFOgW+PXCwjPHKXpUPK1KsjqfDnwXF3s3Pl5308pOejisUC
	ZfkEBTrI8bSyAVfRUCip22MIyke1Q6tvSX2Rc57SylGFyN+d2Dx+Xa2vKXl4tqt0nFiMQBwoj9A
	406Bhoxw8NKEethEqiQgvDlSTAhXC8GwjuJlO1A263hoVf1oUT3VIdFJGfHZZ
X-Gm-Gg: ASbGncvUy+kbZfjE1KS2TxnW/mMXuZy9rZThd7w1Jdy3N5TqC73vn23zWwBIrJUp+N0
	GPBVBrF7aSFldlriC8Mmfa8Ez39zfTMHLTWBMjKzIEgE5lmScd6WDI+QhWci7o0o2in1+JRXjwN
	D/v3112BNMbcQhYpZSBfOuuV2xrLwGPgEEd11j+NsLHKhohTr/suI0ltHCXbCMBqK3DVTiNRGt5
	C1XlMe9DQEJateqp2q7rp5wz7fbf2osuAaZzDU14zVh7iFLJ/G85G9yyfyPvquNeHbxGdClAugt
	EjSx2VHE1Sne3JC622NUR3j41dOuLO1fgu4lMup1vvClO1qdGQ==
X-Received: by 2002:a05:620a:3181:b0:7c5:4014:c8a with SMTP id af79cd13be357-7c7664d7237mr937130485a.45.1743675792152;
        Thu, 03 Apr 2025 03:23:12 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHMzOruQpDcQXrSkgc6QaMcXICOLe5FHEShKgR0/M7w0ecOAp+hZcoUWcG6RuMSPHztJ5zc3w==
X-Received: by 2002:a05:620a:3181:b0:7c5:4014:c8a with SMTP id af79cd13be357-7c7664d7237mr937127685a.45.1743675791838;
        Thu, 03 Apr 2025 03:23:11 -0700 (PDT)
Received: from QCOM-eG0v1AUPpu.qualcomm.com ([2a01:e0a:82c:5f0:3450:ba3:21fc:7d2b])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac7c0186566sm69201166b.131.2025.04.03.03.23.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Apr 2025 03:23:11 -0700 (PDT)
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        krzk+dt@kernel.org, robh@kernel.org,
        Loic Poulain <loic.poulain@oss.qualcomm.com>
Subject: [PATCH v3 2/2] arm64: dts: qcom: qcm2290: Add CCI node
Date: Thu,  3 Apr 2025 12:22:56 +0200
Message-Id: <20250403102256.101217-2-loic.poulain@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250403102256.101217-1-loic.poulain@oss.qualcomm.com>
References: <20250403102256.101217-1-loic.poulain@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: CKOSalEhnG1d4jDe_dRq-6NqTbF9oACC
X-Authority-Analysis: v=2.4 cv=N/gpF39B c=1 sm=1 tr=0 ts=67ee6190 cx=c_pps a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=XR8D0OoHHMoA:10 a=QcRrIoSkKhIA:10 a=EUspDBNiAAAA:8 a=6k4BM0uUCjRUaVwtoScA:9 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: CKOSalEhnG1d4jDe_dRq-6NqTbF9oACC
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-03_04,2025-04-02_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 clxscore=1015 adultscore=0 mlxscore=0 lowpriorityscore=0 bulkscore=0
 impostorscore=0 spamscore=0 phishscore=0 suspectscore=0 mlxlogscore=999
 malwarescore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504030036

Add Camera Control Interface (CCI), supporting two I2C masters.

Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
---
 v2: Reorder commits; Update dts properties order and style
 v3: No change for this patch

 arch/arm64/boot/dts/qcom/qcm2290.dtsi | 50 +++++++++++++++++++++++++++
 1 file changed, 50 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcm2290.dtsi b/arch/arm64/boot/dts/qcom/qcm2290.dtsi
index 7fb5de92bc4c..43fcb4f40a8c 100644
--- a/arch/arm64/boot/dts/qcom/qcm2290.dtsi
+++ b/arch/arm64/boot/dts/qcom/qcm2290.dtsi
@@ -557,6 +557,20 @@ qup_uart4_default: qup-uart4-default-state {
 				bias-disable;
 			};
 
+			cci0_default: cci0-default-state {
+				pins = "gpio22", "gpio23";
+				function = "cci_i2c";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
+			cci1_default: cci1-default-state {
+				pins = "gpio29", "gpio30";
+				function = "cci_i2c";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
 			sdc1_state_on: sdc1-on-state {
 				clk-pins {
 					pins = "sdc1_clk";
@@ -1603,6 +1617,42 @@ adreno_smmu: iommu@59a0000 {
 			#iommu-cells = <2>;
 		};
 
+		cci: cci@5c1b000 {
+			compatible = "qcom,qcm2290-cci", "qcom,msm8996-cci";
+			reg = <0x0 0x5c1b000 0x0 0x1000>;
+
+			interrupts = <GIC_SPI 206 IRQ_TYPE_EDGE_RISING>;
+
+			clocks = <&gcc GCC_CAMSS_TOP_AHB_CLK>, <&gcc GCC_CAMSS_CCI_0_CLK>;
+			clock-names = "camss_top_ahb", "cci";
+			assigned-clocks = <&gcc GCC_CAMSS_CCI_0_CLK>;
+			assigned-clock-rates = <37500000>;
+
+			power-domains = <&gcc GCC_CAMSS_TOP_GDSC>;
+
+			pinctrl-0 = <&cci0_default &cci1_default>;
+			pinctrl-names = "default";
+
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			status = "disabled";
+
+			cci_i2c0: i2c-bus@0 {
+				reg = <0>;
+				clock-frequency = <400000>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+			};
+
+			cci_i2c1: i2c-bus@1 {
+				reg = <1>;
+				clock-frequency = <400000>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+			};
+		};
+
 		mdss: display-subsystem@5e00000 {
 			compatible = "qcom,qcm2290-mdss";
 			reg = <0x0 0x05e00000 0x0 0x1000>;
-- 
2.34.1


