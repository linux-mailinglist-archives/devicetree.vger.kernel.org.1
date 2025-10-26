Return-Path: <devicetree+bounces-231104-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A3062C0A693
	for <lists+devicetree@lfdr.de>; Sun, 26 Oct 2025 12:18:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BE9C13AEAB5
	for <lists+devicetree@lfdr.de>; Sun, 26 Oct 2025 11:18:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D548D24C66F;
	Sun, 26 Oct 2025 11:18:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YIYTrkkq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3083D23EA95
	for <devicetree@vger.kernel.org>; Sun, 26 Oct 2025 11:18:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761477500; cv=none; b=Hcvp5qkr+zDPbuYaNyG4nvp0yOo0N0/njSQTSZciuvZsfHWQy8BeoczJDOLbglaKWsMILoaajCfIf5amJGaCgzs5jOT63wNhYxfFEWpk6Cp1l8NKTKHxvwLqc0SJ1qYXkyfPafhNR254ETMxq5pjcLXeWQagycRAF3KuQde9zqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761477500; c=relaxed/simple;
	bh=C/mzAdKj9p2NBL5behIIeU4VW6x/8wdOWx0ygFMKadw=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=m0kLDcrwiUBU7G2sKxkA9KYnjoyMk2sE1YLHoh0aEqNiMOKQ6fYB5zPAEznqeGoY01StSWs1k3DlWoAcduhnB5dYkq4w4Uz/GevYrvwmD6x7QUi44IxjLKoHBvXQPH0nHJCw+RrZTllGyCzIy5YBbQDvUQ3JHotgtFejtdKtEzc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YIYTrkkq; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59Q9n30K3689756
	for <devicetree@vger.kernel.org>; Sun, 26 Oct 2025 11:18:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=7jLxKwoNFQj
	q1lJvQT1jXcSCqEfte10mO1geLsDRQbE=; b=YIYTrkkqtTO7r9LneiqdO4XwwO1
	9Dz6QBf44yCaJcPwFXhoUZVW3JMCNqIQJszFQY7OJvuGWc/krTCE1914b0St+nzX
	0JT6IPG3Xf3g3tpsvTu72BwMZT+1/eHNf0OfpELXkyiC0T/keHDh5iPC6ONsbnk1
	yoJrn0tWnbh15vLrN/4uL4Bhcskg3H8p9bKcQg8CtFWjVg5+65w10jJDj8/mDvOx
	BkEJZ7MmeJ2TyMvtwOi4tnLT4aZnjeo+0d/WGOzx1HpFSOGULhynwC1S3nVEi5oQ
	xj9EY8ZWO731gz9WTyHOjXnuSYma+ksdHPR+R+BdGcskjLeX4EZbR5VKnjQ==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a0px6hwat-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 26 Oct 2025 11:18:18 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b551608c167so788081a12.1
        for <devicetree@vger.kernel.org>; Sun, 26 Oct 2025 04:18:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761477497; x=1762082297;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7jLxKwoNFQjq1lJvQT1jXcSCqEfte10mO1geLsDRQbE=;
        b=tb6DM5NKsolR3ToKwFSFMIjSKbaWCCr95xjCXvSxFXO7jZvX31DEfi2VjfPkldTnTP
         gajj6DrZSXoqC/c2F5zsIq94vo4iaXucEyrs8lsY+luD/4HgJQLr1HGWM5n8eF55RCBg
         W9SGv5gNIP7UmEUBEUOt1hFpdpHEWHQOjnP44Td2AoRmcm/FPvWBWFI14rKddFFcq1E/
         7DamwVts7NO/Muv6jnntWbUiV6i+4xOTDdNG7pF7yb5R/Xb1Zi7CCFz1OpjFQEekjUOk
         0miq4HgkWNlxtt5cQbGFerxJ5CY/1D0PqDsQY2Y41SjlKJA68hyHng6x1bYaynla8qlt
         Njfg==
X-Forwarded-Encrypted: i=1; AJvYcCVSiFfw2w0jouNBv92GMggF+zOCPv7vfoS+nNdMx8VIQXRnJzpnjumlVmSzwyQDj8PaTvXtnZ8MZ+Me@vger.kernel.org
X-Gm-Message-State: AOJu0YxnD3C9lRU3AhhOW2voNEW5g36VzezdmZskKRgt7GHuLMb3ZYeG
	h4puuIigPC3dtHvw2IvGrTaXv4hai9Af5BjMByiivVPQbhULQSLqX9rQXMF2p59JPjIiU4nzFGj
	QCCjOZlxZEXg7+xh48xHN1vMuylgSUriNdgc3PtYEFx7euM9L44Qi8/7VkOjdFGY=
X-Gm-Gg: ASbGncsv83NTDmKONdGsuLi49s89EidD+q4wlXrzKrjK6nUz0F9y3usNtxw8Xs6S4GW
	uUSqHHLQcVqyvdoxsgO1JfTgQPDvqG7e1og1T+5N7FnBRLNCHf2F4a6w7hb1hH5vVOKWbdlzrVe
	kR99F1l9/LNE0bFXWIC794wzar6k9+UAcI2kXCg6KxLMQvlTcgbF2LkxKKT8/6qupXtW8NYCqBe
	wmtavRfmGSA4KfKGw+RUlEn4YKgRyZvYb+6QKg0GBqJH7zu4QApOGbMP6y153jQ0IJvRbv5L2a1
	vWtKrZvJunfctNe16gmz0IrhNorIGiFlPAlA8LpU9N8QfiWXmRfsZlk6V1Dnp8xs9WkD/SCODj/
	CFNQzaZ4g+dmeckflPcgBriq5r4gTpA==
X-Received: by 2002:a05:6a00:23d6:b0:77e:543e:3f3d with SMTP id d2e1a72fcca58-7a2572e9cc8mr11929451b3a.5.1761477497162;
        Sun, 26 Oct 2025 04:18:17 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG0dyq8Eivf0xBXlxNRCp8A/VA4HRYeY2i97iZL+D05JSiymfI9SA8yPxamV3ZrXVWE7D8acw==
X-Received: by 2002:a05:6a00:23d6:b0:77e:543e:3f3d with SMTP id d2e1a72fcca58-7a2572e9cc8mr11929439b3a.5.1761477496668;
        Sun, 26 Oct 2025 04:18:16 -0700 (PDT)
Received: from hu-sartgarg-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7a4140301f7sm4707829b3a.19.2025.10.26.04.18.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Oct 2025 04:18:16 -0700 (PDT)
From: Sarthak Garg <sarthak.garg@oss.qualcomm.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        quic_nguyenb@quicinc.com, quic_rampraka@quicinc.com,
        quic_pragalla@quicinc.com, quic_sayalil@quicinc.com,
        quic_nitirawa@quicinc.com, quic_bhaskarv@quicinc.com,
        kernel@oss.qualcomm.com, Sarthak Garg <sarthak.garg@oss.qualcomm.com>
Subject: [PATCH V3 2/4] arm64: dts: qcom: sm8750: Add SDC2 nodes for sm8750 soc
Date: Sun, 26 Oct 2025 16:47:44 +0530
Message-Id: <20251026111746.3195861-3-sarthak.garg@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251026111746.3195861-1-sarthak.garg@oss.qualcomm.com>
References: <20251026111746.3195861-1-sarthak.garg@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI2MDEwNyBTYWx0ZWRfXylnDpmp6SJxI
 eeT6D7IJlr5WDF/VaA57Zkt7mFLRVrTIIvXQQHe4UuDHQL+GdIyzC5rwNXq2WfpbgJgs//a9pLw
 e1Eg6EQpkSBP27S1tT/sNQ6N8DRgYCaDtqFZhme6Ct6Mf03H/Cd89+6uufYUpqW6I6/OoOpnuhr
 k18mdbb07MPY4x5iUNlRdvPsfYe72Vhe9P0TI0r5phWR9bmVom4kDt1Lu9N/Tymn8dXVq+3RBLX
 PqMSMiiIypFhuY/UdT+mDV4vw+kdywPm9Q0jJp+WuiIF1v6wJpNk0Ron56u69Y3+bJDHOHG/+hR
 cRNzNz4Uf2H1zciZPhsek9iZr+Lhl4KO0vY0wT8t5XPCcNXy1WbuWLsi84SLioiM0zt5UsKEdgq
 VgGsb+6C5wn2ItHNwgR6i3Y9zk/K8Q==
X-Proofpoint-ORIG-GUID: ogh0UGHXIjnbn6HmT2l99FZl_qVJlU2W
X-Proofpoint-GUID: ogh0UGHXIjnbn6HmT2l99FZl_qVJlU2W
X-Authority-Analysis: v=2.4 cv=WqMm8Nfv c=1 sm=1 tr=0 ts=68fe037a cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=AsSGxY1rZHGoL8xKvT8A:9 a=pcaSXIDp9BJpxWmU:21 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-26_04,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 impostorscore=0 spamscore=0 phishscore=0
 suspectscore=0 lowpriorityscore=0 malwarescore=0 adultscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510020000 definitions=main-2510260107

Add SD Card host controller for sm8750 soc.

Signed-off-by: Sarthak Garg <sarthak.garg@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sm8750.dtsi | 54 ++++++++++++++++++++++++++++
 1 file changed, 54 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8750.dtsi b/arch/arm64/boot/dts/qcom/sm8750.dtsi
index a82d9867c7cb..50e1fa67c093 100644
--- a/arch/arm64/boot/dts/qcom/sm8750.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8750.dtsi
@@ -2060,6 +2060,60 @@ ice: crypto@1d88000 {
 			clocks = <&gcc GCC_UFS_PHY_ICE_CORE_CLK>;
 		};
 
+		sdhc_2: mmc@8804000 {
+			compatible = "qcom,sm8750-sdhci", "qcom,sdhci-msm-v5";
+			reg = <0 0x08804000 0 0x1000>;
+
+			interrupts = <GIC_SPI 207 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 223 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "hc_irq",
+					  "pwr_irq";
+
+			clocks = <&gcc GCC_SDCC2_AHB_CLK>,
+				 <&gcc GCC_SDCC2_APPS_CLK>,
+				 <&rpmhcc RPMH_CXO_CLK>;
+			clock-names = "iface",
+				      "core",
+				      "xo";
+
+			interconnects = <&aggre2_noc MASTER_SDCC_2 QCOM_ICC_TAG_ALWAYS
+					&mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
+					<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+					&config_noc SLAVE_SDCC_2 QCOM_ICC_TAG_ACTIVE_ONLY>;
+			interconnect-names = "sdhc-ddr",
+					     "cpu-sdhc";
+
+			power-domains = <&rpmhpd RPMHPD_CX>;
+			operating-points-v2 = <&sdhc2_opp_table>;
+
+			qcom,dll-config = <0x0007442c>;
+			qcom,ddr-config = <0x80040868>;
+
+			iommus = <&apps_smmu 0x540 0x0>;
+			dma-coherent;
+
+			bus-width = <4>;
+			max-sd-hs-hz = <37500000>;
+
+			resets = <&gcc GCC_SDCC2_BCR>;
+
+			status = "disabled";
+
+			sdhc2_opp_table: opp-table {
+				compatible = "operating-points-v2";
+
+				opp-100000000 {
+					opp-hz = /bits/ 64 <100000000>;
+					required-opps = <&rpmhpd_opp_low_svs>;
+				};
+
+				opp-202000000 {
+					opp-hz = /bits/ 64 <202000000>;
+					required-opps = <&rpmhpd_opp_svs_l1>;
+				};
+			};
+		};
+
 		cryptobam: dma-controller@1dc4000 {
 			compatible = "qcom,bam-v1.7.4", "qcom,bam-v1.7.0";
 			reg = <0x0 0x01dc4000 0x0 0x28000>;
-- 
2.34.1


