Return-Path: <devicetree+bounces-188310-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C65CAE3786
	for <lists+devicetree@lfdr.de>; Mon, 23 Jun 2025 09:54:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F17253B553A
	for <lists+devicetree@lfdr.de>; Mon, 23 Jun 2025 07:51:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 81F991DF977;
	Mon, 23 Jun 2025 07:50:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EBez9FuS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67F98221DB7
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 07:50:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750665004; cv=none; b=RbNvlBkLdFguSLCsLNIU62bWUzii1I6C4l0PoQHDDDH2hBJj9kSNyBGRtESCDy/yOKhxMpAveeA+M2aVvoyBJThZh7IdFCdkIGyG2ueNqQSNENLQCo0MEzc/olFfA8sa/jSs4f23s6sKX1mN2d6iv9HKblrj8kvuNQoPV2Z8k4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750665004; c=relaxed/simple;
	bh=Nn1SUHbdtz+bHl8aKw5FbLQmxNDmU9kBm/3nok286Wg=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Whgrw02dve3j2mKA1uqVW1vMnsqaiqTSdrQ8eCkCJ4l/Dsan44403Sj9BfnDXTyxYh1jPpCAIhk2+RRoMs0e1j2n15QtumIL6ApK/eVDtsc11kxu0V47weaKo+Zj0oSn831EKSeqz9PQIIg5oVCKNJpO/EFgPPS0XZ8AXyMKgdw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EBez9FuS; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55MNY7ax032591
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 07:50:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=jQR+8/Rp8f5
	ejzW/Cs4Zyl6AAG5h3mREu2uxrmhGHwM=; b=EBez9FuSEVbHFpoqoUqxiFce1Pt
	/9GhnirYjPfI3CNpTeMzlBO76W/EbZpFFVZYs12I/8heO65FP7OZ5YhuQ6E4LdF9
	k/DxdsPyPlGPKOvsCDvrM279RwmfRKGvom1/11LyQO2BFFDvsvAQAhbWzxjYzO7c
	ZnZG/2sSsfv2npB21neTTjeeqx64/lGFHZuGHBxoKpD4q/5XwYUFgpEE9u8tYjro
	7qQjQaI8nHQrd+Ex6DGpq4QxkhALfS4k+THR4v9tNhMOhGpu0pQwg6IXDu0TtYge
	6lyZHe5JIMHWDc4RG65llPXC9kTTdhq3ksZFG2yhYEHtNvf0F258FGn5eNQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47eah7t332-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 07:50:01 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7d38f565974so658560185a.1
        for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 00:50:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750665000; x=1751269800;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jQR+8/Rp8f5ejzW/Cs4Zyl6AAG5h3mREu2uxrmhGHwM=;
        b=nEvNEflhN5rz5+4xkP4TPTmTnBV/fl6rvbHqn2rN0rPx7iILj1E3vEMqicjmnUrU47
         BzW4YxRJJCd+8jOi496ASdL7HK05A2ge6r28xtw0wgJsgVGeANc2w4oCVoay618tFQmM
         cM9RJAKxMxR+39zM8HfUanXne7wUug8cHJ6igpToy2nI3cqIwHKxGAps+novKrhLWwV2
         GwoMLZYa2vHOcOzk3OfwB4g4nS5H6OQIzFFGMX3jXKnoq+UlN2qPUpa0pOSwhXvunNbZ
         Jd+tMR4sAeyYQ/fLtXoXmP/ua/GD2ycsaywd/jyInFAQtXpTbAlZLN6/MDbvL3L2pEnG
         uZRw==
X-Forwarded-Encrypted: i=1; AJvYcCV4LXqMLh0EVOn2hTB9hL8PZ92vpHuWC2EqXp+/wTWJ1EQ4b43lMucefr2hxeg5jCqXXZccVdHoQsMU@vger.kernel.org
X-Gm-Message-State: AOJu0Yx5iqXR9+3+W5E1EmgxCidJUJM7bjpEEHpCNLewhzoayI5iKnZN
	UhYJDtSnngfcTmNkaNy8fUPAhkSWyA2O52CAHIvngTsjU07l6EaBslX6X6F7HAYFQys9Fog4d4u
	pi66j5kVrCTog8MngAfrR57aaeh9rJfvaKrRMf3vYa48wrxQ3klSiOlrltviIDcPs
X-Gm-Gg: ASbGncua9faxPRl9PnMz6Gg+t8We5Q/NEXpeYBFEpLYTwZv9xNPFHbtOjkfVZTo49JJ
	XtYB9edWsvj4aWe7bcgFhAkh4pO+XYBHi4HGVFGztnrjRRSVFWHi2cBP8Jyt4JhohnOBCa8qIEa
	PQxfpG2W6la4TXKKikAlvMoNHSOflw35RmUJ+i1JYPPmUvvHWXqAvDhp9eC/KkGDaYzNeuadMpn
	MtVjbyh5SaCaoPSRezK8o7Y3P5ig+UEqSPcyO0xF5j7/WbQGFyuvsnoiDLGIUn7R/ZUzuLx1qoK
	Rpnpn+vm4Y7FoRWEyRn665GPw49JTx0rf2gdwIJBDk6Z30wjD1RJmypIv+jr6zQricKW83N0sLp
	C
X-Received: by 2002:a05:620a:460d:b0:7d3:e648:5f5 with SMTP id af79cd13be357-7d3fbf760acmr1548209585a.1.1750665000175;
        Mon, 23 Jun 2025 00:50:00 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGbmKUcg/kFZe3QXuKKB+2EpQOW/AczTl6L69ib3vwtTOg8rRVszsHDWIaLVlARzjyBpTaLQA==
X-Received: by 2002:a05:620a:460d:b0:7d3:e648:5f5 with SMTP id af79cd13be357-7d3fbf760acmr1548207285a.1.1750664999780;
        Mon, 23 Jun 2025 00:49:59 -0700 (PDT)
Received: from trex.. (132.red-79-144-190.dynamicip.rima-tde.net. [79.144.190.132])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a6d0f17ac7sm8755313f8f.23.2025.06.23.00.49.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Jun 2025 00:49:59 -0700 (PDT)
From: Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>
To: jorge.ramirez@oss.qualcomm.com, quic_vgarodia@quicinc.com,
        quic_dikshita@quicinc.com, bryan.odonoghue@linaro.org,
        mchehab@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, andersson@kernel.org, konradybcio@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v3 5/5] arm64: dts: qcom: qcm2290: Add venus video node
Date: Mon, 23 Jun 2025 09:49:40 +0200
Message-Id: <20250623074940.3445115-6-jorge.ramirez@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250623074940.3445115-1-jorge.ramirez@oss.qualcomm.com>
References: <20250613140402.3619465-1-jorge.ramirez@oss.qualcomm.com>
 <20250623074940.3445115-1-jorge.ramirez@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: nVGgkysuyBisocxM-HklxKj5rcORfkBf
X-Authority-Analysis: v=2.4 cv=PpWTbxM3 c=1 sm=1 tr=0 ts=68590729 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=wjE3nLva0YkvARyJ+Gfmxg==:17
 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=6cNYJS_lEeBOaWCNo2sA:9
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjIzMDA0NSBTYWx0ZWRfX4wffjvRb3vOV
 Xgf6dwYqF2yFVlzkSwEUhkWAPbxMVN1k70kDFCProcbCP1gUlOB/SM3FN9kxZCBx1sAEqaJNC2a
 WxVCtBw2yGS7kp+iV+DeC8US7629R+DfJUp3Tl4uFPI6cNM7zFEgBc0ag9bVRMOwN1dbMSDTSJk
 Qn/H3ByfMVpyNVmfNdBsFG3xuTVlbG6/FhwNHZ1yzrLeVysYLeH9LwLpI7qQvlguvQJjS5S7nz2
 ebkcuYOKTlUpsbMcFj3MHAFLPoRJmeNdclmG8XOir4cDy3FMgnjJM1sTqgJJPQiAo/iQH3oyBBg
 JhlRQq19XOkPHO3bhLr409ZNiPEkj1180GIwfq5VAMAke8j4Hka9aRjohwrETbjDROpyXh3bwCT
 yb2AdnsgCMJLzxMhMP6gOQwNhpSvnjhJlBDFFyDgt05vbeX89vsUelVdzUcj0S+eilW01qh0
X-Proofpoint-GUID: nVGgkysuyBisocxM-HklxKj5rcORfkBf
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-23_02,2025-06-20_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=999 clxscore=1015 adultscore=0 mlxscore=0 priorityscore=1501
 impostorscore=0 lowpriorityscore=0 suspectscore=0 malwarescore=0 spamscore=0
 bulkscore=0 phishscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506230045

Add DT entries for the qcm2290 venus encoder/decoder.

Signed-off-by: Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>
Co-developed-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/qcm2290.dtsi | 45 +++++++++++++++++++++++++++
 1 file changed, 45 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcm2290.dtsi b/arch/arm64/boot/dts/qcom/qcm2290.dtsi
index f49ac1c1f8a3..b7e789d1f639 100644
--- a/arch/arm64/boot/dts/qcom/qcm2290.dtsi
+++ b/arch/arm64/boot/dts/qcom/qcm2290.dtsi
@@ -1628,6 +1628,51 @@ adreno_smmu: iommu@59a0000 {
 			#iommu-cells = <2>;
 		};
 
+		venus: video-codec@5a00000 {
+			compatible = "qcom,qcm2290-venus";
+			reg = <0 0x5a00000 0 0xff000>;
+			interrupts = <GIC_SPI 225 IRQ_TYPE_LEVEL_HIGH>;
+
+			power-domains = <&gcc GCC_VENUS_GDSC>,
+					<&gcc GCC_VCODEC0_GDSC>,
+					<&rpmpd QCM2290_VDDCX>;
+			power-domain-names = "venus", "vcodec0", "cx";
+			operating-points-v2 = <&venus_opp_table>;
+
+			clocks = <&gcc GCC_VIDEO_VENUS_CTL_CLK>,
+				 <&gcc GCC_VIDEO_AHB_CLK>,
+				 <&gcc GCC_VENUS_CTL_AXI_CLK>,
+				 <&gcc GCC_VIDEO_THROTTLE_CORE_CLK>,
+				 <&gcc GCC_VIDEO_VCODEC0_SYS_CLK>,
+				 <&gcc GCC_VCODEC0_AXI_CLK>;
+			clock-names = "core", "iface", "bus", "throttle",
+				      "vcodec0_core", "vcodec0_bus";
+
+			memory-region = <&pil_video_mem>;
+			iommus = <&apps_smmu 0x860 0x0>,
+				 <&apps_smmu 0x880 0x0>,
+				 <&apps_smmu 0x861 0x04>,
+				 <&apps_smmu 0x863 0x0>,
+				 <&apps_smmu 0x804 0xE0>;
+
+			interconnects = <&mmnrt_virt MASTER_VIDEO_P0 0 &bimc SLAVE_EBI1 0>,
+					<&bimc MASTER_APPSS_PROC 0 &config_noc SLAVE_VENUS_CFG 0>;
+			interconnect-names = "video-mem", "cpu-cfg";
+
+			venus_opp_table: opp-table {
+				compatible = "operating-points-v2";
+				opp-133000000 {
+					opp-hz = /bits/ 64 <133000000>;
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


