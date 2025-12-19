Return-Path: <devicetree+bounces-248049-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 75330CCE573
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 04:13:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B1D55305A60A
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 03:10:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BAB302C0323;
	Fri, 19 Dec 2025 03:10:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="haGVi3PP";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="CMuGkYsE"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34A852BEFE5
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 03:10:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766113848; cv=none; b=CKjQtES4yZcMIYZcG7GUisKdLjTe/yYe+mIdONvVirXsP0FEmArk9+aHmiGrd0PcZHHJ7G9tZF4t70r3DXRkCDT8Wm02G6bbWH5np1eE9vclD1ktkgHFj/CiN0fO0zN3FqaKrIixJBbY8DD5XAfrpg7HP45hs8ELZpf6Nd3WYLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766113848; c=relaxed/simple;
	bh=AgxqPzERPznA7XOgOuHTeNGG17DW+S/GQccxahQAN9o=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=SfGRI200mjMLnMvL22B0pqDqx19Q0vxVP6q/f+KQrbUsOqhlx5xREluXyUHYgHOP/E+k+26QwOc/i0af5G18/0MjIWTT8cQGz3Ewuv3DvDO29vKed1//8ab/gD4cHiGqVinAqYVCHF+BN6ZL6l/MeKu9ebMUMMKQkR0dlHulB9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=haGVi3PP; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=CMuGkYsE; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BJ2OaNd3656012
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 03:10:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=V/XvB+rW0dI
	ZY+v+oMfEJE4kW9BQqd3uRtvcynh9tNI=; b=haGVi3PP5gj1vt5Bn3xZnXnT/LQ
	MNDQcvLuSxhJLPLZwuTCb/Yik+Z69lRf4a9K+BjPGTidMWHB48oVHwQ3kNsQNkgD
	og8c5b8WbKVIHpCeyp3arF0xc2f5T0CXwDvxBHI+PuJmXq4D8IBf5er7e/QfXk96
	jy3tdA5N2g5IxMx6Ib8HdzLSyE3RBIaOt1Ov8bze5UUeNZplJ+B8pTzK2FLpaKnU
	XCzWTu3mz2rfJffmPIPIk9u0bUSQ5C+jlcxA84xPTediM/JN6Fwf6lU0NMdbKg0O
	x2ra/nYCAYovWkqXM6Tg4X+VOtPTrAlsAiQKj5f+FEyxWXcSYILixsgt1Lw==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b4r2c1121-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 03:10:46 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-34e70e2e363so2645481a91.1
        for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 19:10:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766113846; x=1766718646; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=V/XvB+rW0dIZY+v+oMfEJE4kW9BQqd3uRtvcynh9tNI=;
        b=CMuGkYsEeYfw5M/DWzc26+CynMa+l6vmn9iAUMbGJwMR8YCcZKf54ds1f7Jeh/ptTa
         cyGLP/SUp9lGm42AGPZKTLBL7pFz/U3FWjiJTZQ2rZ1gpWQ6xEmBuO6bNxAghUrjuLBJ
         ZztcOFeubii4PbLkcgZWTMoYu+G5RSW/uhy2WAgKPIU5z7GbmqSz8hH1AMyo0byLX2gF
         B0RwdzjRDaaH/tNDsmkwV/48eDLDLYj7FLuI5xYF30f9w30qIRC8niEi6nPSMY8JNECM
         +q0yIuf+f2Rn7sD4oRH19NZkzcPgiYkQl4HHbMYeO57htHkS8zM1VyhOEEkV9ag7Hmqs
         XCfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766113846; x=1766718646;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=V/XvB+rW0dIZY+v+oMfEJE4kW9BQqd3uRtvcynh9tNI=;
        b=spmq4CWLu83MkY8Hj8y7T66s/cBYkMon5Yd3Mp/UJ8yMbq0JjrLzP3FDpKtlDwjYU6
         SbDmSJf9QGkHhVY+7XmTr/TjkjiTUZcV7xQWKwpbitxr3tQQPtf+4RAdBh5cC5OesY9C
         l/o7Gocdj+Wjx2TC5cz+cE/IhziX4m2hcgibKDIi1PwTHuRxRy1zjIQcLqXZPlm+DfpP
         zy3WCUMeY4xZSKCbYALZQcjI6vkIJ3WDljDxBMNsw8P4jqFzIWMl2vIjEIh5lsfRZfrV
         3m/FOs9cn9BgJTG6Sq3AsoKjOAMf2zZrtN7u29IcvDB9/ZYJW0dbigYFdR7JeIIuSVDe
         XshA==
X-Forwarded-Encrypted: i=1; AJvYcCVciSs/pdx5Wwy9VNphwI29bh6qcGrjDRUBohII1yLjorfkXqcsezCb8C6f0FBv06rEMvz5uOvGqyj/@vger.kernel.org
X-Gm-Message-State: AOJu0Yyr0bm6/TJz+p+eYypjYa+8cx7vaeoR2NP1KMmDrDF4s+lwfmVE
	XMgQauPQGmluMrPpEkFBHEk8YrSwfI4gkrOV8jlyigJMVZU9mRgHvX0HIi+Nzzx593YEiFBVb7D
	sEINHMuKqO033RSqDQM7zv4OMaiiqAxQwt0HlAI7cVM5RNBo3ucsKiFnAaa1DBiC7
X-Gm-Gg: AY/fxX4uPb8hSVbjZGcWPmcbpQrqdEPSC4GjEaGTjFY1/0tWh8Uz5Vk4YW6mOO4bl1h
	6yKik3euLPrlfArxZHy3+qU1HOlCaG6Ky8aV52BNL4p/I+0+FfcjM1ZvlEvxrKftkGTEtrIUCt0
	77JohIlHtFVAFGovQiCeh2m/Xl8Iw7I+HSUU/L1qb3bgsDN3yWSEX+KO4laqO3hYNvZgUrC0U3e
	Yq1581c/lGwjM64y7xi+FAtUPY+cpdwaPfyVxp8sGrTw6Z4Jd1k3JlkqkQA2VTU1uDE/aC2u5Iz
	vvcDWNQxoxzww3yj2mZ/LTguXNJ1uegC6IfsEdfTPJTrBOp6k9Gn6BhvZxyAoAfbiPhuuGHr8yq
	EagDqB+s6l/Bh1Sla0YAZ9C4tN5xNXzCbmsTLltPVPG78yIt/OA5ulUH2IRLS4JYgu+zGLVLPGt
	PfMHzrGoNAjoxB1H3hKwAabumcQEVbSNJO1Hn9veM=
X-Received: by 2002:a17:90b:17d0:b0:32e:a10b:ce33 with SMTP id 98e67ed59e1d1-34e921b7386mr1127311a91.21.1766113845767;
        Thu, 18 Dec 2025 19:10:45 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFRzRHMsWMc2GtmMs14LTf0+nKhYLUbSbd9caEr1MqvD5I4eQU51a4bnShWX1gu6YqW5BMMfA==
X-Received: by 2002:a17:90b:17d0:b0:32e:a10b:ce33 with SMTP id 98e67ed59e1d1-34e921b7386mr1127289a91.21.1766113845283;
        Thu, 18 Dec 2025 19:10:45 -0800 (PST)
Received: from hu-varada-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34e70d656casm3737867a91.7.2025.12.18.19.10.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Dec 2025 19:10:44 -0800 (PST)
From: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
To: andersson@kernel.org, mathieu.poirier@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, konradybcio@kernel.org,
        quic_mmanikan@quicinc.com, linux-arm-msm@vger.kernel.org,
        linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Gokul Sriram Palanisamy <gokul.sriram.p@oss.qualcomm.com>,
        George Moussalem <george.moussalem@outlook.com>
Subject: [PATCH v8 6/6] arm64: dts: qcom: ipq9574: add nodes to bring up q6
Date: Fri, 19 Dec 2025 08:40:10 +0530
Message-Id: <20251219031010.2919875-7-varadarajan.narayanan@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251219031010.2919875-1-varadarajan.narayanan@oss.qualcomm.com>
References: <20251219031010.2919875-1-varadarajan.narayanan@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: gCM4Tapd8aeSbBn5t__X_yyEiktrphEJ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE5MDAyNSBTYWx0ZWRfX19EEDyvepEE2
 bvez240g3Tj75kRCFbkd6FvPzTUy4CDAkHYYfA+aecdHevDS0LlhYH+OPFb9rZ9oos92+stKBq1
 bLo4Ii+T1gWJNECxJ14SMZqSyjeolwcLQuyoctUSumZTi8IZy9G+wRjd8mvWvLuyXCknS/fJoXP
 T9XDfz05+dRDTC/WT6JcaAzPoL3ohHhcQ178yBqpCWNI+6x20DzMPdAENVwS7YL5d60RIGZ+qJD
 i/SKQQn62y/Aq+gUETWyKwp6bLQu+2Dgk0d04x765jZwLxkP4lmcojuGEgG+VPtjMgvSHMvHSeL
 H9qgmJmBBOhvVs6YGyaUsGgcCSNUGHvPjBkwPUXr10m/nKwpsGR7hcJM5UNFF8TNgAh3qwsvs9w
 sAEXN7LUzvI8UmIiNnxmwIKFKAAv7/SgYHL56MymfhR6ng3FofsYbAHMHFzaTQISWdBMa7HAXof
 MnxxOtjlAX8JWELR07A==
X-Authority-Analysis: v=2.4 cv=feSgCkQF c=1 sm=1 tr=0 ts=6944c236 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=UqCG9HQmAAAA:8 a=XZDXhZPjwrZnrKVJ4rAA:9
 a=iS9zxrgQBfv6-_F4QbHw:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: gCM4Tapd8aeSbBn5t__X_yyEiktrphEJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-19_01,2025-12-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 priorityscore=1501 malwarescore=0 suspectscore=0
 spamscore=0 lowpriorityscore=0 adultscore=0 bulkscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512190025

From: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>

Enable nodes required for q6 remoteproc bring up.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>
Signed-off-by: Gokul Sriram Palanisamy <gokul.sriram.p@oss.qualcomm.com>
Signed-off-by: George Moussalem <george.moussalem@outlook.com>
---
 arch/arm64/boot/dts/qcom/ipq9574.dtsi | 60 ++++++++++++++++++++++++++-
 1 file changed, 59 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/ipq9574.dtsi b/arch/arm64/boot/dts/qcom/ipq9574.dtsi
index 86c9cb9fffc9..6d513fe6ad58 100644
--- a/arch/arm64/boot/dts/qcom/ipq9574.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq9574.dtsi
@@ -3,7 +3,7 @@
  * IPQ9574 SoC device tree source
  *
  * Copyright (c) 2020-2021 The Linux Foundation. All rights reserved.
- * Copyright (c) 2023-2024, Qualcomm Innovation Center, Inc. All rights reserved.
+ * Copyright (c) 2023-2025, Qualcomm Innovation Center, Inc. All rights reserved.
  */
 
 #include <dt-bindings/clock/qcom,apss-ipq.h>
@@ -226,6 +226,35 @@ smem@4aa00000 {
 			hwlocks = <&tcsr_mutex 3>;
 			no-map;
 		};
+
+		q6_region: wcss@4ab00000 {
+			reg = <0x0 0x4ab00000 0x0 0x2b00000>;
+			no-map;
+		};
+	};
+
+	wcss: smp2p-wcss {
+		compatible = "qcom,smp2p";
+		qcom,smem = <435>, <428>;
+
+		interrupt-parent = <&intc>;
+		interrupts = <GIC_SPI 322 IRQ_TYPE_EDGE_RISING>;
+
+		mboxes = <&apcs_glb 9>;
+
+		qcom,local-pid = <0>;
+		qcom,remote-pid = <1>;
+
+		smp2p_wcss_out: master-kernel {
+			qcom,entry-name = "master-kernel";
+			#qcom,smem-state-cells = <1>;
+		};
+
+		smp2p_wcss_in: slave-kernel {
+			qcom,entry-name = "slave-kernel";
+			interrupt-controller;
+			#interrupt-cells = <2>;
+		};
 	};
 
 	soc: soc@0 {
@@ -903,6 +932,35 @@ frame@b128000 {
 			};
 		};
 
+		q6v5_wcss: remoteproc@cd00000 {
+			compatible = "qcom,ipq9574-wcss-sec-pil";
+			reg = <0x0cd00000 0x10000>;
+			firmware-name = "ath11k/IPQ9574/hw1.0/q6_fw.mbn";
+			interrupts-extended = <&intc GIC_SPI 325 IRQ_TYPE_EDGE_RISING>,
+					      <&smp2p_wcss_in 0 IRQ_TYPE_NONE>,
+					      <&smp2p_wcss_in 1 IRQ_TYPE_NONE>,
+					      <&smp2p_wcss_in 2 IRQ_TYPE_NONE>,
+					      <&smp2p_wcss_in 3 IRQ_TYPE_NONE>;
+			interrupt-names = "wdog",
+					  "fatal",
+					  "ready",
+					  "handover",
+					  "stop-ack";
+
+			qcom,smem-states = <&smp2p_wcss_out 1>,
+					   <&smp2p_wcss_out 0>;
+			qcom,smem-state-names = "stop",
+						"shutdown";
+			memory-region = <&q6_region>;
+
+			glink-edge {
+				interrupts = <GIC_SPI 321 IRQ_TYPE_EDGE_RISING>;
+				label = "rtr";
+				qcom,remote-pid = <1>;
+				mboxes = <&apcs_glb 8>;
+			};
+		};
+
 		pcie1: pcie@10000000 {
 			compatible = "qcom,pcie-ipq9574";
 			reg = <0x10000000 0xf1d>,
-- 
2.34.1


