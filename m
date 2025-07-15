Return-Path: <devicetree+bounces-196633-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 03029B06805
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 22:49:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3F2347AD9D1
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 20:48:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28BB32D5C7C;
	Tue, 15 Jul 2025 20:48:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IGCFEoEX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 593E127280F
	for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 20:48:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752612492; cv=none; b=Ta3Sv9BFV8FCEzd7wFyhW9QFUzTCExO6rFNgRwPspxJEczCFjOvtxB3u08agKF4NauLEFLAnrAgIo/qy2tGgE0uyk5syizcJ9zg7QFxL2gCJDB8B6DW//t4Rk9DI6GjsRuD8uuthl2xgsH2IlyY0RFCmvsgzl2x0daDGv61riHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752612492; c=relaxed/simple;
	bh=tI4EJY+AX+r+95HyElw6Y87H6Z+WIIFID7OrbHLVJ9g=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=s9IIxMR9tXN/dAZfUfDdnm0vaNkB0iucx58Hb2pGReQTmrZZZ01PWqzx0YCdB9bhU5C792KCWXLIbzTptIL6QiYPQukgBuVToEF3r7xfjAKeISzKK+6SzeZKQMWSpchA9Xas5nBMS2XTlMM76kfqzbr3s3X8LLMzLdL/Veele7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IGCFEoEX; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56FGDSv6008209
	for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 20:48:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=cDNJIT1X4FF
	Dqpcezls1gtG8Nez0pdy1Boer2Zl4v9A=; b=IGCFEoEX1vwkNIi2yy0zlJ7Fz5h
	l7dIhVb1c9VmrXrQdIF7h7Myi3T5Ri4DKi6ADTuweG2/6STM3cJlhL89n5u8ZFb/
	chpfpGo3VDZO9ufFSahvQ+sZ1IE/HzWBkt4Cy8t1eTIYonVkq7F5Ry66SBjfyJ0I
	6ZKgnfcmvSk8lmnZpVY3uCJyAOW9ZS1jF5lt9JDmGuoE+tsHEJGZsshGUtCXk5ob
	i1suKOBCnZY5LUvPcUmYaeMslEbQsKrVtm/IvQOUmn4i+sKAz5s6N72Ak04oUCVL
	5WcTWFVOpcD9s9rOqzudoPX1NHiY1bLUItmdlN97b6UvOfM/BSd7kQJ7OvQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47wnh5srft-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 20:48:08 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7e1fb57a7adso265794785a.2
        for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 13:48:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752612487; x=1753217287;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cDNJIT1X4FFDqpcezls1gtG8Nez0pdy1Boer2Zl4v9A=;
        b=SV8U1lZ0ESiDpl7oSuroJd8RR0Ub2KBv0fTudOINumbpwxv6npv9ezEHI789dmkKAK
         stNX5qu832T87bZFi7/tBZGe3MxluKhCmnGQnBYQJRRdGKreqfvRuNCzf/iiaq//2M/I
         XEg5lnotPBPHa8Dl8Rf/EPCWMurKBVW7erMDK86AbifGucUK9t8puwAt+p3l6uBxRCeV
         h3P4GF+D2q4i5JmTXa2qzX0Moen51IdMIAoQ6F6J9CuGnSbXby/S08XhTvfeTazJOciB
         bKDGCxOt6ZEYDuGIXkZN3kEsOgR7TS1Au2v4ZqYDnffO2AauS8eYdVmCwPdci6QDNI4v
         bK4Q==
X-Forwarded-Encrypted: i=1; AJvYcCXelsqt8yHN3LD5Bv+ItQIW6rcCPiA72fzqrY3IoVtG4nBVKtcUMdcPwOqh9PPw40s1VShTMaiTKfrR@vger.kernel.org
X-Gm-Message-State: AOJu0Yw8JC4uppplXUaBllasvaWTX8EectIrut2ataC5bRDSC2tS7L+s
	3swLthz6O4dDC+KZcC7nkzLPr30ApXmRn8uFEqPZgzjOJ6eCdFzZ/JELdTrbWvs99h1uh3B7ZAH
	pNcTVGnPh89/uA1io+RcEnVO/M//DYdEAfcjdY8hDH6g5CAj3nqsA+erP3tk+J57b
X-Gm-Gg: ASbGnct2u+bBWnyMCbntMRVQFZWP77yRmVAvbiTYs0ZuQ0ZPEWQN39Q5ZUi3XhKlwRx
	CLVaZ7UI9sPBv3wSPahh5UqzekKCiHbxitiW6bg9iCBQfrzmA6uy/Ag9f/BJmAjTzbXswyfqpVe
	kY+wGpFhqslN1pcLAuwq7gVe8sIl4LY9jAZby85gH+lojUwVv1S9b4AqUY/NaiXeJC7Hm0QIIJp
	61KPQ+Etwg/42I0yxQcnzfHt8mgM0JEkMj+bDaSlM2GY6Lmi264ienny9q5W58WD9BJ8cpP7pZm
	lh3j0l9ebBYSZA1kJPo6i7//Hs3YOf2kHK6FPNA/U8BsRfYwHGGXc3BbJNPlr1OdMzPUK4UwfWP
	Rt9JShsdPlkqO9fOLVA==
X-Received: by 2002:a05:620a:1794:b0:7e3:320b:437 with SMTP id af79cd13be357-7e343351613mr46873485a.1.1752612486937;
        Tue, 15 Jul 2025 13:48:06 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHaeqOjGAPeWkJ+TUoENrlyBUvMJ4sXuXZS39RAbxA2XpPfqiQ58OtzuOP9EGEQ7JHQRLcPCw==
X-Received: by 2002:a05:620a:1794:b0:7e3:320b:437 with SMTP id af79cd13be357-7e343351613mr46867985a.1.1752612486325;
        Tue, 15 Jul 2025 13:48:06 -0700 (PDT)
Received: from trex.. (153.red-79-144-197.dynamicip.rima-tde.net. [79.144.197.153])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b5e8dc2464sm16331877f8f.38.2025.07.15.13.48.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Jul 2025 13:48:05 -0700 (PDT)
From: Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>
To: jorge.ramirez@oss.qualcomm.com, quic_vgarodia@quicinc.com,
        quic_dikshita@quicinc.com, bryan.odonoghue@linaro.org,
        krzk+dt@kernel.org, konradybcio@kernel.org, mchehab@kernel.org,
        andersson@kernel.org, conor+dt@kernel.org,
        amit.kucheria@oss.qualcomm.com
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v7 6/7] arm64: dts: qcom: qcm2290: Add Venus video node
Date: Tue, 15 Jul 2025 22:47:48 +0200
Message-Id: <20250715204749.2189875-7-jorge.ramirez@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250715204749.2189875-1-jorge.ramirez@oss.qualcomm.com>
References: <20250715204749.2189875-1-jorge.ramirez@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=dKimmPZb c=1 sm=1 tr=0 ts=6876be88 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=Ki5fnJvzvo7yLsyA0quaxQ==:17
 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=KD12_Wl4P5iJQNenjFgA:9
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-GUID: tQHmwgLtUaJRcaj05nHfRtndzWhpgpZE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE1MDE5MSBTYWx0ZWRfX6JQ0SQXOF2IS
 SEVCvR+2ujTXx0TBQAbpNoxXw1gfpQbYM1AtIfgCUSlxztQJunWkc/ca+2GaRwEuymaL/e8yJ3s
 e8BIfY+e6MuBG44hwiAGGFoCK8uE1NM5VNrNMjNsNk28MyfgePM4O0jBBbKTqbxwq8P2g14Y6yE
 SMOSHfuNuaezScFpCwJx9soRrf3DIQ/H3StInVuFk20xbNvvOllZu4+GWyl5lPnxVBQo+Wlaco+
 wQNAHggU4qq3WmtEyGfmNSJv/u6j1QI6AsH1UzqNn4toMRcsjIJt1JnRmZHJ4HHofwmA2kSN/Hn
 6XHqJBD/Uj37kPJM87vHtxiSLLWvV+84d60U2a42pYxshucQrasD1vh3vymYW3jVkbq8GuOHbW0
 cgLGr4vAgGf2EmmjlkZN5gvFJ+AN9gHdYkehyqXVEJQRtcAWC0GqxqO+lq+fzp6vYJ476642
X-Proofpoint-ORIG-GUID: tQHmwgLtUaJRcaj05nHfRtndzWhpgpZE
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-15_05,2025-07-15_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 mlxlogscore=999 mlxscore=0 spamscore=0
 adultscore=0 impostorscore=0 priorityscore=1501 suspectscore=0 bulkscore=0
 phishscore=0 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507150191

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


