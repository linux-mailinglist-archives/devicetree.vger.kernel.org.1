Return-Path: <devicetree+bounces-194240-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DAE77AFD60E
	for <lists+devicetree@lfdr.de>; Tue,  8 Jul 2025 20:07:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2E193585CFE
	for <lists+devicetree@lfdr.de>; Tue,  8 Jul 2025 18:07:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 331BF2E9745;
	Tue,  8 Jul 2025 18:05:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BUnf7h8+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 047472E88A3
	for <devicetree@vger.kernel.org>; Tue,  8 Jul 2025 18:05:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751997950; cv=none; b=pEwwlozOd9t2sl9QowH01fcp69Jtb5mRzOTnefs2jKivImMjWrX/GaxZ9FkUHVQhWOSjgmYqpxIXJ9DFqr+ZIUMpFVJ0LZ7mqcb0d/uDRxgN9d/Qyk1h97TIuS2aep/MNYmu1yzC1zDVl9fVuYmfZW8tNzGNdO9qVj95P22MHUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751997950; c=relaxed/simple;
	bh=tI4EJY+AX+r+95HyElw6Y87H6Z+WIIFID7OrbHLVJ9g=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=N72Yj4rkHXUEKDkUqbOk9306loZUfgNmxva0CWmyMXBRbLXtbCpEQ4NJwWOKHMhjZYA12pd77XHUpYSq4t5WYO606VmT/C2kDV2StfxYgGFT4OhCek1X7ZZMTR9rjSK1jfKNglvEQkda+hIYUZhQsyyFoPW0EAsMlRSrE07jlY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BUnf7h8+; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 568AAPbp001196
	for <devicetree@vger.kernel.org>; Tue, 8 Jul 2025 18:05:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=cDNJIT1X4FF
	Dqpcezls1gtG8Nez0pdy1Boer2Zl4v9A=; b=BUnf7h8+6hrNC84fDdN0IO1GkwR
	PeXIA+vSQXhOmnsfjzqfOwDfWIGeYSg7S4ifBLd/tuKTn20Lial6OwOGX6jrcDIe
	svEog8j/AHeZN3FHIAoxQ+kBTlqPtowYpW9+3YAc9zuhm5gPnkCe5fZAe6nXnGBm
	MMud135PvcPMmCoSFlwjxJSQibGMwCVAlb6W7MVF4nen5aRlCy43RQ+XkA6Wkh5a
	2jVCm/vq0hMqY1ZzzIhGyjyjj2NjUIwPFK1bvv7mtLFvf4MGNuUNh6C4VHgFm66a
	0No5At4suLzPksLo8IqBhbFEtqmU33646pGn3DiV8awJ7FlgeAroKWC34Xg==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47psdr1ac0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 08 Jul 2025 18:05:46 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4a581009dc5so3160921cf.0
        for <devicetree@vger.kernel.org>; Tue, 08 Jul 2025 11:05:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751997946; x=1752602746;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cDNJIT1X4FFDqpcezls1gtG8Nez0pdy1Boer2Zl4v9A=;
        b=ZTeJzqF40GGJQpKUjA5BbSRgmDK++RK8F3/MTj135wO/Q8HLHqbMxDjAufbhbPQuDa
         +Hd7Ff9R/abV7XH62Pki1bOFtxOcfn3DdWga+6DRIekXe/k3RrK3D+2zkFKBr3dtH6wt
         QB2N+rsR12EiKtDmhLmzsQT9pF5dAfC8p4/UAZMzQKT8Z2kJeuYB0r6RSPAImPbpfD1o
         75TXElOShAA4mJEl2mdOJGTPfVaUrSwPJc705FOLrJqulIXeHar/pZ+q3Gtygt7rVaRb
         PxbeiBN1dddeeWaV57XWj/kS2TqhLlrdz+tuWeYCstehpu4T/6StbV6/iSyUgpiki/Ii
         0x3w==
X-Forwarded-Encrypted: i=1; AJvYcCVart9y4I3NzQbn7nC27EKWhmzhfRVAk927bDeHh/rif+d5m4QNevAJsd1IvW6Hr9IcmEVhNK3lOWC+@vger.kernel.org
X-Gm-Message-State: AOJu0Yxzwk45hqXYYz4DPfwtqurFXa12VeJobNKfF0eQJ23qwJueG0zH
	B0AKrO85bSKRoBJ9EJVsAlwupTkB5S5q+tDbbO+9dscWpMLZJb1UlzR5XAYQsmET0poGJHMo4N9
	GLWuC56PIbrt7iuAbEpnRQNqShqrsMVjFRcXjOmz9njwA7fKcBvpbrGh54bxSULQ9
X-Gm-Gg: ASbGnctvxfa5V11ymjsJp62NUxhDtBW95v2u+yzu6DKNRznv3rVaQm61yYQshhX4r9b
	06Qlf1FPfSrj5z/yNHmB76+W7kWHkFLIbdjxB/6xUdq1vxxI0iQ0UC9uOZt6gSvMbgN7eTOLEWr
	Ddr10ru3tk82J5sL74l5JMZYAbU3xiXjt2YkCP9g7Y89Qut6EEyAdGa2BitwWm5T9GxfFGiZoEN
	onPwKi3KN5MfBwDO+ZH/c8is+7xHfk/W+wxaayq9fusLbQ3N0mD4fXkyYdTjK+EHtQIMKHNRm17
	grKBUPOx3bWdFfBBfSor2OERTvkjMlTXONSnK0xUM2DKmp8ifoDSl+UchOL6wiyQi0XbTvQSJA=
	=
X-Received: by 2002:a05:622a:98f:b0:4a9:8232:cb35 with SMTP id d75a77b69052e-4a9ce5bb4c0mr58062771cf.15.1751997945804;
        Tue, 08 Jul 2025 11:05:45 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFyZT+HkJfTBrHl4+ei128F1dpD9omDu73cUZfR3tgtwSTp3pRdVUTSJ1irJwghrB5U2HsgJw==
X-Received: by 2002:a05:622a:98f:b0:4a9:8232:cb35 with SMTP id d75a77b69052e-4a9ce5bb4c0mr58061991cf.15.1751997945129;
        Tue, 08 Jul 2025 11:05:45 -0700 (PDT)
Received: from trex.. (97.red-79-144-186.dynamicip.rima-tde.net. [79.144.186.97])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b4708d0a5csm13394906f8f.29.2025.07.08.11.05.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Jul 2025 11:05:44 -0700 (PDT)
From: Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>
To: jorge.ramirez@oss.qualcomm.com, bryan.odonoghue@linaro.org,
        quic_vgarodia@quicinc.com, quic_dikshita@quicinc.com,
        krzk+dt@kernel.org, konradybcio@kernel.org, mchehab@kernel.org,
        robh@kernel.org, conor+dt@kernel.org, andersson@kernel.org,
        amit.kucheria@oss.qualcomm.com
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v6 6/7] arm64: dts: qcom: qcm2290: Add Venus video node
Date: Tue,  8 Jul 2025 20:05:29 +0200
Message-Id: <20250708180530.1384330-7-jorge.ramirez@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250708180530.1384330-1-jorge.ramirez@oss.qualcomm.com>
References: <20250708180530.1384330-1-jorge.ramirez@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=ffSty1QF c=1 sm=1 tr=0 ts=686d5dfa cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=oX6B8lV6/A+qF9mARCc04Q==:17
 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=KD12_Wl4P5iJQNenjFgA:9
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-ORIG-GUID: bxbS9tEZN57kllC7CDBVn41koqx-nUq4
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzA4MDE1MSBTYWx0ZWRfX2dVH2wuKnrn+
 SpE4IQ0L423X/HvjyxdiAHBWEErWRaWpXkncWDD4aVaYkwv2LFwU8gOhKyXt0OM0pc87WLBqtN7
 RnJbpXDj9MK4B6HvqbKJP9CMs84NGdM5jPiCe+bVe7whcAHAqHTQmqKH1Qmrq66MP5FInoBjrXd
 gnVfGHO2VwPgvGZ3zHuU8pGzfq/1UuUlTQrS8BHviNiGDxoV9V6WIi6geNmOdMHXfKSYM0PPPzZ
 fxdRNpHi24b5H54qUE94K5mKq+TTlb9GlGsmlJ70g8p1F72SE4TCU/Wgu3hej1CprLS8Qkew99g
 2sZGrqX912kLzlcgxrjDTT44xfht/QsHKdvqJ51GtNd84krKQcG7LfJRC3/we6LKCTICOFTK26s
 Y/L1mb1aEDW4hxkmra9dVHCcAMslng5VRhfnasfChhOXftKGOr5mkiKb3NLrCHuwx3z0NiLx
X-Proofpoint-GUID: bxbS9tEZN57kllC7CDBVn41koqx-nUq4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-08_05,2025-07-08_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 mlxlogscore=999 mlxscore=0 bulkscore=0 priorityscore=1501
 phishscore=0 clxscore=1015 suspectscore=0 impostorscore=0 lowpriorityscore=0
 spamscore=0 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507080151

Add DT entries for the qcm2290 Venus encoder/decoder.

Co-developed-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
Signed-off-by: Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
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


