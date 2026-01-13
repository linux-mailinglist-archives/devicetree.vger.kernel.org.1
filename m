Return-Path: <devicetree+bounces-254378-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E8B88D17928
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 10:21:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 6799E3003182
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 09:21:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3CE1C3876DD;
	Tue, 13 Jan 2026 09:21:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="knrQRz5S";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ZQMFl5w7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BA5138A701
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 09:20:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768296065; cv=none; b=i2UBipiqy4dZi5ofSie5W7ToruCqX8SffkEAFp8POV8X3vJwwWJruiLLBgtWMoXOxcAr3JBcafim+VKhUcKwWxqHlEZUG1I0yQU7ypvE+cMeb0mwFwpSeuSLm/SIg7m6n/qCuE1YOguL3osPbP2X59SFL2rmk9zuSMEcsK0Q7cg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768296065; c=relaxed/simple;
	bh=blcX1nouYNXC6ol/gZDD5PA42jcTWn6mTJAJP1lU+68=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=qgVfeb9UUI+hC/eCyAxDCUa5qGuNtBTHzqjQcAlmqHRZiF9BAxzFHFFaJ/1YbrTq4mej+cpnnBeemFKO7xthFIrTi7dGVZwVCENyyYyqEgsu1Wqga6ptrSwAXyTqdur9ArwYbSZ0b06OaeCQDyXF4DbXY6Qzv9r4HGJ+t/IErP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=knrQRz5S; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ZQMFl5w7; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60D5SvVF3869220
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 09:20:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=JegHHkHOmY4
	/gMghUonjYHVmA1DHiOImuLkaeQyWjyA=; b=knrQRz5Se8lpMa9M39xxrtP0JkI
	UQwQwrJCw6bgKLpQ/v2U8TOBRHTTrMU412FjzG6HRfGOWweSsf5nMf9GO09jjmfm
	w70RTEb+n1tyibgo11/uvdI6VLRQqc9kDgbUxPdJXCN71XD2fvMv+HyH/uGLRJ6R
	3N4HRiwrvBV8fpAC816R4prj1+m06cNnMWxsKUqQ+gAEr/H3xARwWHNeDd0Zbd6j
	fVJrZCoR5hB7VktyQz8+cYFr4ISNTZJtEqKfwsfnk6YDDJtMlNOKIsxvQ0t34Fdx
	SAGm9gZ4tQH/RAy0A0uPdNrh05X6hNFk0phByDF1Kl1c0ZH6cEoDA/Lvh9A==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bnfxk8n8v-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 09:20:45 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2a0e9e0fd49so53944955ad.0
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 01:20:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768296045; x=1768900845; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JegHHkHOmY4/gMghUonjYHVmA1DHiOImuLkaeQyWjyA=;
        b=ZQMFl5w7g6eN3WGaMN8ePEj0J7Rm6ptDk8x3n05W+ubd+VFBUBhlOZdQMZWG1JvCFH
         E8xZPB8Pu0/2cd6Kahv4o3d6GA4xFDsqGq/CJTOOZMz1UHNe6fPHPLu0Sc/S1FnNLCjL
         D2WqUrL3ZYtzMncEJ2vqLBysFfBRMHXRvL2yz4mVf7fe46EULxMouEt4jWyCikNUQj68
         uk1ASoFPIQOnbZrQIAhDLljk36utU6OuO7eDXyMLKNQNHI1Ge/ypj1Yvn/oAHPJUg7y0
         YFWDhAVq267G3cIiv3X6bV46r8OE5XXL6hC0Oo6cKrkve1kEnVPr10tjmZRii5laAx3W
         2Cxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768296045; x=1768900845;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=JegHHkHOmY4/gMghUonjYHVmA1DHiOImuLkaeQyWjyA=;
        b=cr0wlO5ByS9NfnYj5x8bu+0E5FxSIWmKEvx9Mh7GuIpqIlh4mPmSwMdml3eH/prgpq
         Zvrct3+Bak5evx3EUlFuuVKv7dIYQKhhu2S8luLCcCyTjKFesDEGmxXuJuNWktE4O8UO
         EkCdXRN0Jt02dDjgoZJj26Yany8TiYboiB+KnrEfvbu+ZalabrvjD+k2P9HnHBAl62ec
         ZlGypLDti556IQyEPtq0JB2cPsEV6WH95wMVeBjt6WBOYRpHwKPeXMoluqzv9R7UC2+F
         Ymp2tgds+PrXOSX9iBcs0QHc6kPLlxK2JGiypMxZp/UvZTghR8gGFjdu8aLp46NPXNJP
         xq4w==
X-Forwarded-Encrypted: i=1; AJvYcCXQfpEmHnInKNj/JaACZqJKpJatSGqmrj/N/ZRvUhxVsiTWyGJZprfSHoGMu3U4jlIP1BFgD2oMn2it@vger.kernel.org
X-Gm-Message-State: AOJu0YwR0D5ozhF41BPLGMBQ6yFDfCXsV2+SQZVCvSYefRlz72qBB13O
	lzGA/Hr9k+q4PBZJ/ySapLleRO6Hxma42lsjnP5iPQi4e1NMlvf5y4NNFY0ncFm39Dy1a0/6N9B
	fzSegEBXyuihCJlaLlDnZo2pdM+4qH+a7mPAlV2ri1Fl08GEgqk+uGCCsTfhGI6c8
X-Gm-Gg: AY/fxX4ttyDjthxX8iElksYSXE8qgNzcL3ZJNk1iX3QnKQX7vVpQ/PtBJ/O3EnlYOOL
	JU5dihV0RrznYEbWBr3BNWhJosbuGwtjL/Wa5kmmYVrz6XULvX0yMpJ5T6NNdZ+IzLgial6ku+t
	mqD7ltlDL4D11aOtJD33XRijGcKnh3be8w8XyDKR1Dlckp0VqDuMVKH8JoSp+OsJ2j/JwZehCNf
	Z4MSgj/nh6vPi9hEv+orFOuC/NpSTvBqXGPbltG0T68Wq2+TFB7woxu7afeox5WajNMjvfXayKj
	0oglVfWSLILn0ex8AZHZYDg2cOu/rqBVaSANIfPM7unSCnZ9Vzvd37FCFOwhXTqRePQFGRdRVv/
	AKBIf395++lG1RVWC8bqFNLDm6X3C6rmRBnQCavOCYDxharIHcwZU+8JfYJ/KV7FbZbWgzEtPms
	M7CZDF0fGIhDDU5ZYQKdBpArOzGVMcJ4+eI8U/Zmo=
X-Received: by 2002:a17:903:2344:b0:2a3:ccfc:4de5 with SMTP id d9443c01a7336-2a58b49e424mr23819865ad.5.1768296044709;
        Tue, 13 Jan 2026 01:20:44 -0800 (PST)
X-Received: by 2002:a17:903:2344:b0:2a3:ccfc:4de5 with SMTP id d9443c01a7336-2a58b49e424mr23819515ad.5.1768296044238;
        Tue, 13 Jan 2026 01:20:44 -0800 (PST)
Received: from hu-varada-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3cc794asm196314945ad.70.2026.01.13.01.20.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jan 2026 01:20:43 -0800 (PST)
From: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
To: andersson@kernel.org, mathieu.poirier@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, konradybcio@kernel.org,
        quic_mmanikan@quicinc.com, linux-arm-msm@vger.kernel.org,
        linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc: George Moussalem <george.moussalem@outlook.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
Subject: [PATCH v10 4/6] arm64: dts: qcom: ipq5018: add nodes to bring up q6
Date: Tue, 13 Jan 2026 14:50:19 +0530
Message-Id: <20260113092021.1887980-5-varadarajan.narayanan@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260113092021.1887980-1-varadarajan.narayanan@oss.qualcomm.com>
References: <20260113092021.1887980-1-varadarajan.narayanan@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: Be-_PnWXjiWGDLXHtUsbyl-VQZJ0S8cV
X-Proofpoint-GUID: Be-_PnWXjiWGDLXHtUsbyl-VQZJ0S8cV
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEzMDA3OCBTYWx0ZWRfX0Ia/V9ZqDVfz
 vnuGg3ovLywRAtOsC5IpvtlPhPuTHyaVhvbtSw+kCJbUU5uxS/nWZFFC72mC35F7YW2IiWiqScS
 hNiL2U/GDUPcyquEunOWJbYmIB4m5SA/FettaJo2wOgD0Vj39SSa+h056PqBtPprc25sYYGvHgI
 iJKqUbik29sXpxyTatfVLvtOSejxBxVhrFlgIZNmCmhVxwa4YtrE3nUA7+sH+rr4NVVf4v45TD9
 PPeg0ZbZzu62dDu2AhKO/vlRXqQtgV3ziDy3BGZ4K1goOxrP35l5I7fyNbLvhxvUgXjBs9/jnE/
 q8MFxPzGJ6vQZo+BxqdJDP20Q3VdP/kgiIPP30nJ7Ufh738o/HtiETxRQd+2AQseTR0Bl16uiya
 Oer6SkJahJ224obXX4m9ikBiB+4elZ882TyzHjhX87XH4CV7mYpAVjeAJNHsNcK+9s95t3V0i4M
 8L/2WS/OCX2J0n6E6Wg==
X-Authority-Analysis: v=2.4 cv=PvSergM3 c=1 sm=1 tr=0 ts=69660e6d cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=UqCG9HQmAAAA:8 a=EUspDBNiAAAA:8 a=etOpb5xliKOozrl2HNYA:9
 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-13_01,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 malwarescore=0 lowpriorityscore=0
 adultscore=0 spamscore=0 clxscore=1015 impostorscore=0 suspectscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601130078

From: George Moussalem <george.moussalem@outlook.com>

Enable nodes required for q6 remoteproc bring up.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: George Moussalem <george.moussalem@outlook.com>
[ Change 'qcom,smem-state-names' order to resolve dt-bindings-check error ]
Signed-off-by: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
---
v8: Swap the order of the items in 'qcom,smem-state-names" to resolve dt-bindings-check error
---
 arch/arm64/boot/dts/qcom/ipq5018.dtsi | 64 +++++++++++++++++++++++++++
 1 file changed, 64 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/ipq5018.dtsi b/arch/arm64/boot/dts/qcom/ipq5018.dtsi
index f024b3cba33f..d077f0ed9e46 100644
--- a/arch/arm64/boot/dts/qcom/ipq5018.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq5018.dtsi
@@ -158,6 +158,35 @@ tz_region: tz@4ac00000 {
 			reg = <0x0 0x4ac00000 0x0 0x200000>;
 			no-map;
 		};
+
+		q6_region: wcss@4b000000 {
+			no-map;
+			reg = <0x0 0x4b000000 0x0 0x1b00000>;
+		};
+	};
+
+	wcss: smp2p-wcss {
+		compatible = "qcom,smp2p";
+		qcom,smem = <435>, <428>;
+
+		interrupt-parent = <&intc>;
+		interrupts = <GIC_SPI 177 IRQ_TYPE_EDGE_RISING>;
+
+		mboxes = <&apcs_glb 9>;
+
+		qcom,local-pid = <0>;
+		qcom,remote-pid = <1>;
+
+		wcss_smp2p_out: master-kernel {
+			qcom,entry-name = "master-kernel";
+			#qcom,smem-state-cells = <1>;
+		};
+
+		wcss_smp2p_in: slave-kernel {
+			qcom,entry-name = "slave-kernel";
+			interrupt-controller;
+			#interrupt-cells = <2>;
+		};
 	};
 
 	soc: soc@0 {
@@ -717,6 +746,41 @@ frame@b128000 {
 			};
 		};
 
+		q6v5_wcss: remoteproc@cd00000 {
+			compatible = "qcom,ipq5018-wcss-sec-pil";
+			reg = <0x0cd00000 0x10000>;
+			firmware-name = "ath11k/IPQ5018/hw1.0/q6_fw.mbn";
+			interrupts-extended = <&intc GIC_SPI 291 IRQ_TYPE_EDGE_RISING>,
+					      <&wcss_smp2p_in 0 IRQ_TYPE_NONE>,
+					      <&wcss_smp2p_in 1 IRQ_TYPE_NONE>,
+					      <&wcss_smp2p_in 2 IRQ_TYPE_NONE>,
+					      <&wcss_smp2p_in 3 IRQ_TYPE_NONE>;
+			interrupt-names = "wdog",
+					  "fatal",
+					  "ready",
+					  "handover",
+					  "stop-ack";
+
+			clocks = <&gcc GCC_SLEEP_CLK_SRC>,
+				 <&gcc GCC_SYS_NOC_WCSS_AHB_CLK>;
+			clock-names = "sleep",
+				      "interconnect";
+
+			qcom,smem-states = <&wcss_smp2p_out 1>,
+					   <&wcss_smp2p_out 0>;
+			qcom,smem-state-names = "stop",
+						"shutdown";
+
+			memory-region = <&q6_region>;
+
+			glink-edge {
+				interrupts = <GIC_SPI 179 IRQ_TYPE_EDGE_RISING>;
+				label = "rtr";
+				qcom,remote-pid = <1>;
+				mboxes = <&apcs_glb 8>;
+			};
+		};
+
 		pcie1: pcie@80000000 {
 			compatible = "qcom,pcie-ipq5018";
 			reg = <0x80000000 0xf1d>,
-- 
2.34.1


