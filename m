Return-Path: <devicetree+bounces-202641-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EC39B1E4C2
	for <lists+devicetree@lfdr.de>; Fri,  8 Aug 2025 10:50:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 560E5584832
	for <lists+devicetree@lfdr.de>; Fri,  8 Aug 2025 08:50:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 44BD52701D6;
	Fri,  8 Aug 2025 08:49:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ePhFp+3J"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCE4A26B76F
	for <devicetree@vger.kernel.org>; Fri,  8 Aug 2025 08:49:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754642983; cv=none; b=lGfXGizXwXW7mWLIYwek9KEsPBSfkQ9lCJBSMNb7ZC4FiPzEA4glyfjflDkJ0x0I782GgPe2LPkWikMQRCVmej8YmWVbvGzwukqACToB6Kx9nI8IwPeTsYAwOXxXJ3/4gH0GYCkuM/H2SL5okX5NyKiqUL1VHiaGwt4orQ0xatk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754642983; c=relaxed/simple;
	bh=23E2L3+GM5Ne5G69gtx+iV/0DudIvZsRZTXNlVujEsM=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=sx4pyuYWEFp/Hz2T42Z87tzmrWTBbXDv5RelAYYQbxFEbFFOGpUFFXKTlpcpfQP7+w5fP//uWuDGjchbUEqMQVWH9DBOI1+Z/NL3UIqd45ze6vrGy7ZpKHTOKtDROtGt7qQElRw6j9nA15LziTNBwGXlZsBL5nUWqLvAk5Uv2Cg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ePhFp+3J; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5787DZVC020307
	for <devicetree@vger.kernel.org>; Fri, 8 Aug 2025 08:49:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=WFXsE/Pq/OO
	0HhZLOEUiCFKFRSimd89W5kjcE0yBaHY=; b=ePhFp+3J2AxulnJ0tRa7EH8+nlp
	o6OyCZuHRYAWinKlnqgWs4l9TJQWCpVPoW8tqcLhbELiVJ3Ydmx5CVNOa4CvpD8G
	E/e/IcMy9Bmle2GDTppOh2CzNzdaowot41jM5sw2/TYrjjd1117Q/AqQ2ZFOnAGJ
	KuL9rgQhSj6u6S9EIg9O+Mn5z6CFqhUo796IkKNHDCdoGDO/g8jlO4dI03m55sGt
	HlzVyGdli3lJzOpgPSM8DDnObDLkJDxyDzetyOKuYp1BsAEbV0md4d1p5KCMCoiV
	1Ao/GyS4Kt/45NTFBC2c8e2GzPNZGfu08Cs9mVXDEgSdrAFez1HryuapVhw==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48bpy8hd3y-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 08 Aug 2025 08:49:41 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4b092c12825so54277641cf.1
        for <devicetree@vger.kernel.org>; Fri, 08 Aug 2025 01:49:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754642980; x=1755247780;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WFXsE/Pq/OO0HhZLOEUiCFKFRSimd89W5kjcE0yBaHY=;
        b=XxlJSS4h9LEZinXMBuVJrP3brZWL/kHQjxXiwW2NdifvNQezCydiTY46Scsfhzwmmu
         FlE3iFyCecNPnt6xZZHTZH6FVfKI4qT5eSpv2IzQ2M5vxxzAi3QhL2DZOfBq6JYgPqq+
         BlvMaQ6ztLWjbm/IH1O27Wbd3kFvVVAwFps3SieZLUxzz7beZD7AkggWsO5r8UPVm6Qp
         ulcrA8bhgDGfro411b0rsvuYUitUfLjZLeCOwwxGMEOtGFNiVdwUDWELHjTmk8fdrEzo
         yyI5nXyaeKXxwuVNG4FGgHcnqXb6qapOOtqnB9QUWRFkC3drAvILBj8IVePB5AhMqnFJ
         yiUA==
X-Forwarded-Encrypted: i=1; AJvYcCXmPFhVOQRH103NwruNpC/OQb0ASWdyMMPkiLnrcN0P+sGTIzYKu+2eSxApGwpe4GsuAzFvB/Zt0h4Z@vger.kernel.org
X-Gm-Message-State: AOJu0YyriShkH9zzwQ9qIX4CsuBwvRlmxW6KCqn8oJ4fAMsLTnWQlJAr
	asKE+KUqk8wASK+pDClvn2nQyHbtulP6XDYVPpGMUTXsQN5PPdxnilZl/dOuC8vDpUU8jWouxcC
	dyE8ZLCDoCdN/Li6foEwif+vh1fPuFHhwZDUg/0yT4G/nrjApVXbrwsvqjoEPXQPH
X-Gm-Gg: ASbGncuqBM0ZemHkR1EqpRn8xlbB5fHW0LWpnaxXuP9Umz9LxP+vwod8qK/Zp3Xjsli
	Elj4OuLkKZkfphUbVwY7FbJTUN9XnUgu+uCt8qFxdtqU2y/fnfny/IxkCYs/CRl3caqyaiDbTvG
	ufAQGqR4bgCAu1FtRrh5wD3fRDqtU64BUDTTGTnaHlfHbKrSBvuu5PmIj197kLGloyck0SpeWES
	UtUGHXytDB19qx3J9ZbG1lDxyPj2zM6V1bFsiV0IaoYCxo3B5PofgX3mE74ajnuft17bF1PuC3e
	zR4ATmoBxlWGJ9Q26ofJmqNTRaUzzboNvofxqAcVld94KbqzE6OxS+GHqRzKYN2id1Di8cksPlR
	uzSNo2snY7XBQ
X-Received: by 2002:a05:622a:1a93:b0:4b0:8e1c:d87d with SMTP id d75a77b69052e-4b0aec59704mr30866401cf.2.1754642979764;
        Fri, 08 Aug 2025 01:49:39 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGPMIXHPPD1tdceQhbz+B4qpGQUoHEbS4Q68Djht2hs0DqD2kW+fYFCxOmTWJ4VNIBaNufslA==
X-Received: by 2002:a05:622a:1a93:b0:4b0:8e1c:d87d with SMTP id d75a77b69052e-4b0aec59704mr30865781cf.2.1754642978561;
        Fri, 08 Aug 2025 01:49:38 -0700 (PDT)
Received: from trex.. (205.red-83-60-94.dynamicip.rima-tde.net. [83.60.94.205])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-459e58400f5sm122904295e9.2.2025.08.08.01.49.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Aug 2025 01:49:38 -0700 (PDT)
From: Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>
To: jorge.ramirez@oss.qualcomm.com, quic_vgarodia@quicinc.com,
        quic_dikshita@quicinc.com, bryan.odonoghue@linaro.org,
        krzk+dt@kernel.org, konradybcio@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, mchehab@kernel.org, robh@kernel.org,
        andersson@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v9 7/8] arm64: dts: qcom: qcm2290: Add Venus video node
Date: Fri,  8 Aug 2025 10:49:22 +0200
Message-Id: <20250808084923.1402617-8-jorge.ramirez@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250808084923.1402617-1-jorge.ramirez@oss.qualcomm.com>
References: <20250808084923.1402617-1-jorge.ramirez@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: QsT3guNxMytHQKD24KTtJdM6FZzSuT8g
X-Proofpoint-ORIG-GUID: QsT3guNxMytHQKD24KTtJdM6FZzSuT8g
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA2MDAwOSBTYWx0ZWRfXzO5pvwZh1PS8
 bzXbRGSiTzOjTflIbhYe3YuUa4WmnfNjrM90tjOJ8+dQpGp6ALBnnmYcLQpR4g+oFOhJRHcKQnr
 5gL2+MoONP9wUZFU0I/6vmMXgYxOZ/g3tn5kxxPPkFW70vDbQ35p8jBmjh5LNOfJ4yKL/ALKKlj
 QA4GcHqiFk3WbjiOEZXnJm51MgsiSTsMkGKrbqrrT95CrLacMrmzZC8VZkCZj2gNwHYe7d32EPg
 VOq277TIE651zx0bpfNZCEPiQkBbicKMg3xMUZd0dEdsmZwRC/qoVpBr403XOWjhufA2CqrB6sD
 fRSXNk3oHHWGVAposWCgJVzM+lHlz9JzInCz9uD3MUh6nPD/MlEiU18UCbGU+mZJbalrr2EMy0W
 3MZjRaI6
X-Authority-Analysis: v=2.4 cv=GrlC+l1C c=1 sm=1 tr=0 ts=6895ba25 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=Rr2dNH5/fcnoRoBmcVUeRg==:17
 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=KD12_Wl4P5iJQNenjFgA:9
 a=a_PwQJl-kcHnX1M80qC6:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-08_02,2025-08-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 malwarescore=0 clxscore=1015 suspectscore=0 priorityscore=1501
 phishscore=0 adultscore=0 bulkscore=0 impostorscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508060009

Add DT entries for the qcm2290 Venus encoder/decoder.

Co-developed-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
Signed-off-by: Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 arch/arm64/boot/dts/qcom/qcm2290.dtsi | 55 +++++++++++++++++++++++++++
 1 file changed, 55 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcm2290.dtsi b/arch/arm64/boot/dts/qcom/qcm2290.dtsi
index f49ac1c1f8a3..7cfacd189a10 100644
--- a/arch/arm64/boot/dts/qcom/qcm2290.dtsi
+++ b/arch/arm64/boot/dts/qcom/qcm2290.dtsi
@@ -1628,6 +1628,61 @@ adreno_smmu: iommu@59a0000 {
 			#iommu-cells = <2>;
 		};
 
+		venus: video-codec@5a00000 {
+			compatible = "qcom,qcm2290-venus";
+			reg = <0 0x5a00000 0 0xf0000>;
+			interrupts = <GIC_SPI 225 IRQ_TYPE_LEVEL_HIGH>;
+
+			power-domains = <&gcc GCC_VENUS_GDSC>,
+					<&gcc GCC_VCODEC0_GDSC>,
+					<&rpmpd QCM2290_VDDCX>;
+			power-domain-names = "venus",
+					     "vcodec0",
+					     "cx";
+			operating-points-v2 = <&venus_opp_table>;
+
+			clocks = <&gcc GCC_VIDEO_VENUS_CTL_CLK>,
+				 <&gcc GCC_VIDEO_AHB_CLK>,
+				 <&gcc GCC_VENUS_CTL_AXI_CLK>,
+				 <&gcc GCC_VIDEO_THROTTLE_CORE_CLK>,
+				 <&gcc GCC_VIDEO_VCODEC0_SYS_CLK>,
+				 <&gcc GCC_VCODEC0_AXI_CLK>;
+			clock-names = "core",
+				      "iface",
+				      "bus",
+				      "throttle",
+				      "vcodec0_core",
+				      "vcodec0_bus";
+
+			memory-region = <&pil_video_mem>;
+			iommus = <&apps_smmu 0x860 0x0>,
+				 <&apps_smmu 0x880 0x0>,
+				 <&apps_smmu 0x861 0x04>,
+				 <&apps_smmu 0x863 0x0>,
+				 <&apps_smmu 0x804 0xe0>;
+
+			interconnects = <&mmnrt_virt MASTER_VIDEO_P0 RPM_ALWAYS_TAG
+					 &bimc SLAVE_EBI1 RPM_ALWAYS_TAG>,
+					<&bimc MASTER_APPSS_PROC RPM_ACTIVE_TAG
+					 &config_noc SLAVE_VENUS_CFG RPM_ACTIVE_TAG>;
+			interconnect-names = "video-mem",
+					     "cpu-cfg";
+
+			venus_opp_table: opp-table {
+				compatible = "operating-points-v2";
+
+				opp-133333333 {
+					opp-hz = /bits/ 64 <133333333>;
+					required-opps = <&rpmpd_opp_low_svs>;
+				};
+
+				opp-240000000 {
+					opp-hz = /bits/ 64 <240000000>;
+					required-opps = <&rpmpd_opp_svs>;
+				};
+			};
+		};
+
 		mdss: display-subsystem@5e00000 {
 			compatible = "qcom,qcm2290-mdss";
 			reg = <0x0 0x05e00000 0x0 0x1000>;
-- 
2.34.1


