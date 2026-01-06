Return-Path: <devicetree+bounces-251884-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AFFACF7E59
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 11:54:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 8FBFF3023D76
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 10:54:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3405F331A5B;
	Tue,  6 Jan 2026 10:54:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CzEVWMFM";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="NZ8+JGJS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B9F8328B44
	for <devicetree@vger.kernel.org>; Tue,  6 Jan 2026 10:54:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767696879; cv=none; b=DAGuzM+xsaKLTcAD1NVj6lKWavcdHl0gr9Zrpeo02TtjTVEjYwLOoHZrHvqr+2Y0fvUnJKKpeX+E3/esBlK5ITanAFMbly+JQVcJMGcmaaNoTeYYlc7KTxK9EQb4o8L+Kh6AZj/qTdrJKJ/SRGe4586RAE15QhIeVE6tVMpYeJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767696879; c=relaxed/simple;
	bh=blcX1nouYNXC6ol/gZDD5PA42jcTWn6mTJAJP1lU+68=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Wv9rRNjNMnNFyrom32EHdO1gxsGk75lTFgSAguKbymAzOBTskPE7Tqf3OMl4qvYzIqp2yuPQBZRXcxCA7pDEDdwju/1AEpJgUcBWZCQctViF1yP8vofyNupcR88mt6+dYhpZazu7Bb2aoOySSMpr+gRpEC24LP2gmDaIYvDQuY0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CzEVWMFM; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=NZ8+JGJS; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 606AUI5D3055161
	for <devicetree@vger.kernel.org>; Tue, 6 Jan 2026 10:54:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=JegHHkHOmY4
	/gMghUonjYHVmA1DHiOImuLkaeQyWjyA=; b=CzEVWMFMICO8/Q4bAgMAeAWytfS
	ATkn3VB7Qwj+LwpOqaX4fWxDTT3bGbnJuyfxYAaTuw7S2EWcKZLbfR+BERoJXzll
	FmPH5rbdGSgklxK/kYJHNC/mRdaAntLIICbl/S610yKkbMh7J3xgtGB4C2G0zI77
	OtVDBCgSRCFFcvSzwOXakbMcmigUqTcQ9WWZAWa8s7I0USA0J2uucDhKzGqYbh5/
	OUZhRwK2E6BsojNEzSiCq9usdl3sEtEsaDwP32rkks52N/F/0wXqfvvtKz13J/7P
	lwiwyJAlBOvPP90YMJkO4+9zHajWSahoJE36zDOCWB8QaXESzspja8ey1Hg==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bgpn9srn7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 10:54:36 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-34ab8693a2cso2696376a91.0
        for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 02:54:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767696875; x=1768301675; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JegHHkHOmY4/gMghUonjYHVmA1DHiOImuLkaeQyWjyA=;
        b=NZ8+JGJS5uX2zKwKkQnXwe4XEU0Jvs6bHCz77DPH6m00a1W1BIq5d/dZxIsop7k/2I
         zqW5evHVfCLtMx4bxdMPZBpQoDfzHYaDRmd86dH6fgnHGzmlfZaxAMFQ35UeNHnMnx8E
         Nxm76avdgTtfHXWdrvCArudGnQu4tu0FxVmM7DpvLBExktGVNo386vCrLEM5EolmKSgJ
         XETEH8ZQAOVKIATwJEk5vgo2/PpK3OuD/LiVoJ4V30gvYXvL5UkuH2P/hzkYvq9ypfCu
         gf0QYBI2OqIsYvdNvu7pN0lai6ube/sQ5H34TZnFaF3AIQKC8cn2m+7JqsxxisWv1XGp
         FbMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767696875; x=1768301675;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=JegHHkHOmY4/gMghUonjYHVmA1DHiOImuLkaeQyWjyA=;
        b=DMmulqqfN7AI27tHmdkAqUrZmEsnLUHhtboePa9ho7zl+//eDVCNUjzBd3kMQ+kbGB
         xmbqhjagbSKCMt/g+Ednoca2VgdBoT8WLw+QFNH1unhwZblmCOWtgbetgzWq6no47NRm
         1nd+toIbIGcEstiAFxJB8WYka9XGqMGGymfCU61Os3HK8FZNVgXol5RONN+ndAGyHo+n
         rvMnLUG8NT9OlXVlgu8ZSy+t6SvLrk+so5or1UHr1EOybhClOUsciBYmWlWf2NX+EJIn
         yapl0N8CUVPefy4IUqOWqgsHJZSrfnl1R58L0SAufZgPN61I1sS433gtaD9I95WPnDIy
         DrzA==
X-Forwarded-Encrypted: i=1; AJvYcCXFmo7oPZ6vM6tnm9UvuuJQRr/8yj4ROUPIRXrvh6LJ+oJiAyc4WORsfx1bPVIJiElqqcNLmCNGd4VU@vger.kernel.org
X-Gm-Message-State: AOJu0YwmHlzgUcFKhAme8/GbLUL9Zdsfynbw7nIdcpRgpju4hYKycFL4
	gOuudkGsHRI+eCr9BUouuC7UaosQqoc8NuraZJZaWlEQ9x7a5yzqIb6omFJios85aAykZO3rHAY
	Gqj9Cj1tb2TBHTagb8tzxKqw8UhxGdMURLTR/XqDwBSor+5uyY5jtKGFRwkgUpjj8
X-Gm-Gg: AY/fxX4X42ky/ahuQozVpOhQtK2weECoM7JExCgkpGzN5oClL2zx+rUSRXI0qOv9nDg
	ho1uKVZ7dFuqpodJRbIFNFE8wMuvOWbWSB91tT10tRip3aOg3IuPUhMhmDkL5auUvD1h33jkB/k
	Zl6oWGT19o8XGNsoR4w0OBVbCrCsPD/AFlxZh0Pu5GOTmZ1FzKy8UOJwZFlQMbGzK3bYrcP504Y
	ThBQwJCLa9Ohlhjros/kCIS0eajI2Xficucnwufg9wGVq0AWC2VI7XbE3clFMcfLWeP+rUqxVAr
	ASZnGg3JRoWlSptRDRqmlrJoPTcFdnkkmDFe8SMPIC93shG7i2YrCVeGlm6ymAZbabAj/Hj3XZ+
	Pm+cuYI4XiKeI2bBMoDJjUYWtxUYZ40v3Em+t/7bwaukc0YFD7fPRS16Jhwf2JnTcNulE5cjkHe
	jKpNsbgyzoCJJDTzXHSpHB2SJoZFgxVl+bYO9hAg0=
X-Received: by 2002:a17:90b:254b:b0:336:9dcf:ed14 with SMTP id 98e67ed59e1d1-34f5f2fb28emr1979026a91.23.1767696875167;
        Tue, 06 Jan 2026 02:54:35 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH24Y+VI2/JRT98gY42T5Rh/eAzRgd2+jme58pQ62UuGpcFMVyizG4IRQNsPYhUzhuBi3wREw==
X-Received: by 2002:a17:90b:254b:b0:336:9dcf:ed14 with SMTP id 98e67ed59e1d1-34f5f2fb28emr1978998a91.23.1767696874693;
        Tue, 06 Jan 2026 02:54:34 -0800 (PST)
Received: from hu-varada-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-819bafe9b98sm1855121b3a.20.2026.01.06.02.54.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jan 2026 02:54:34 -0800 (PST)
From: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
To: andersson@kernel.org, mathieu.poirier@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, konradybcio@kernel.org,
        quic_mmanikan@quicinc.com, linux-arm-msm@vger.kernel.org,
        linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc: George Moussalem <george.moussalem@outlook.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
Subject: [PATCH v9 4/6] arm64: dts: qcom: ipq5018: add nodes to bring up q6
Date: Tue,  6 Jan 2026 16:24:10 +0530
Message-Id: <20260106105412.3529898-5-varadarajan.narayanan@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260106105412.3529898-1-varadarajan.narayanan@oss.qualcomm.com>
References: <20260106105412.3529898-1-varadarajan.narayanan@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: DVmJW3SlL79soab-pBNdZMFWHGHtiqGf
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA2MDA5MyBTYWx0ZWRfX/xBy3dDG1lsp
 VV0q919v1yRIwsNioiW6o7Wt2rPsPbM05MVvrzvFenumv+iQsNqbP1QgCnSj3WkDcE8IGHLLZBB
 c0m4yKXufea3qszsYPjmtsOY/B8VYEXS++1jXp7nLF+yQ3o0jSTdktmOiLaPWaXWsEGTbUDyCUP
 z5Q9w7ei3D8Ry4r07SdEaZX+nWVERAqqioXA/4KbdpO+4ReLa4F+i3/H4T5kxHGc6NZ1BwO9nMm
 nq9U7i1dHdeGr/zCVGRdCx6San4YzSddgX/Owk/w2Ehy3JlmWIdnSZAIt+iR0OXJaFDONFgATJ3
 D+NXeha289+0f7Ublu1va8ONzJ3q0VabIov9jJA+7Sey30NZir7SL5KyqoOaluQW/sybH3QIxbw
 E3BwxmDSB3hZv8aKKQnQ1svWfO4qMytq7qZPKkWgXh7Py+N5CCPjeOPiJJ2CPa1iK5kYuNu9VY/
 KFgFgeiZUWFkH5/wJbQ==
X-Proofpoint-GUID: DVmJW3SlL79soab-pBNdZMFWHGHtiqGf
X-Authority-Analysis: v=2.4 cv=KfnfcAYD c=1 sm=1 tr=0 ts=695ce9ec cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=UqCG9HQmAAAA:8 a=EUspDBNiAAAA:8 a=etOpb5xliKOozrl2HNYA:9
 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-05_02,2026-01-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 clxscore=1015 spamscore=0 adultscore=0
 suspectscore=0 malwarescore=0 impostorscore=0 bulkscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601060093

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


